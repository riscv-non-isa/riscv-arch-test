/*
 * Copyright (c) 2005-2019 Imperas Software Ltd., www.imperas.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied.
 *
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

// Standard header files
#include <stdio.h>      // for sprintf

// Imperas header files
#include "hostapi/impAlloc.h"
#include "hostapi/typeMacros.h"

// VMI header files
#include "vmi/vmiAttrs.h"
#include "vmi/vmiMessage.h"
#include "vmi/vmiRt.h"
#include "vmi/vmiTypes.h"

// Model header files
#include "riscvExceptions.h"
#include "riscvFunctions.h"
#include "riscvMessage.h"
#include "riscvStructure.h"
#include "riscvUtils.h"
#include "riscvVM.h"
#include "riscvVMConstants.h"

//
// This is the highest possible address
//
#define RISCV_MAX_ADDR (-1)

//
// tlbEntry opaque type pointer
//
DEFINE_S(tlbEntry);

//
// Union representing simulated ASID (including bits depending on MSTATUS
// register settings)
//
typedef union riscvSimASIDU {

    // field view
    struct {
        Uns16 ASID : 16; // ASID
        Bool  MXR  :  1; // MSTATUS make-executable-readable
        Bool  SUM  :  1; // MSTATUS supervisor-user-access
        Uns32 _u1  : 14; // padding bits
    } f;

    // full simulated ASID view
    Uns32 u32;

} riscvSimASID;

//
// Structure representing a single TLB entry
//
typedef struct tlbEntryS {

    // entry virtual address range
    Uns64 lowVA;        // entry low virtual address
    Uns64 highVA;       // entry high virtual address

    // entry low physical address
    Uns64 PA;

    // simulated ASID when mapped (including MSTATUS bits that affect it)
    riscvSimASID simASID;

    // entry attributes
    Uns8  isMapped :  4;    // TLB entry mapped (per mode)
    Uns32 priv     :  3;    // access privilege
    Uns32 U        :  1;    // user accessible?
    Uns32 G        :  1;    // global bit
    Uns32 A        :  1;    // accessed bit (read or written)
    Uns32 D        :  1;    // dirty bit (written)
    Bool  artifact :  1;    // entry created by artifact lookup (do not match)
    Uns32 _u1      : 20;    // spare bits

    // range LUT entry (for fast lookup by address)
    union {
        struct tlbEntryS *nextFree; // when in free list
        vmiRangeEntryP    lutEntry; // equivalent range entry when mapped
        Uns64             _size;    // for 32/64-bit host compatibility
    };

} tlbEntry;

//
// Structure representing a TLB
//
typedef struct riscvTLBS {
    vmiRangeTableP lut;     // range LUT entry (for fast lookup by address)
    tlbEntryP      free;    // list of free TLB entries available for reuse
} riscvTLB;

//
// Structure describing mapping constraints for TLB entry
//
typedef struct tlbMapInfoS {
    Uns64   lowVA;          // low virtual address mapped
    Uns64   highVA;         // high virtual address mapped
    memPriv priv;           // effective privilege
} tlbMapInfo, *tlbMapInfoP;

//
// Enumeration of supported translation modes
//
typedef enum VAModeE {
    VAM_Sv32 = 1,   // Sv32 translation (32-bit VA)
    VAM_Sv39 = 8,   // Sv39 translation (39-bit VA)
    VAM_Sv48 = 9,   // Sv48 translation (48-bit VA)
} VAMode;


////////////////////////////////////////////////////////////////////////////////
// UTILITIES
////////////////////////////////////////////////////////////////////////////////

//
// This macro implements an iterator to traverse all TLB entries in a range
//
#define ITER_TLB_ENTRY_RANGE(_RISCV, _TLB, _LOWVA, _HIGHVA, _ENTRY, _B) { \
                                                                    \
    tlbEntryP _ENTRY;                                               \
    Uns64     _lowVA  = _LOWVA;                                     \
    Uns64     _highVA = _HIGHVA;                                    \
                                                                    \
    for(                                                            \
        _ENTRY = firstTLBEntryRange(_RISCV, _TLB, _lowVA, _highVA); \
        _ENTRY;                                                     \
        _ENTRY = nextTLBEntryRange(_RISCV, _TLB, _lowVA, _highVA)   \
    ) {                                                             \
        _B;                                                         \
    }                                                               \
}

//
// Return current program counter
//
static Uns64 getPC(riscvP riscv) {
    return vmirtGetPC((vmiProcessorP)riscv);
}

//
// Return table entry implied global state
//
inline static Bool getG(riscvP riscv, Bool G) {
    return G || !getASIDMask(riscv);
}

//
// Is hardware update of PTE A bit supported?
//
inline static Bool updatePTEA(riscvP riscv) {
    return riscv->configInfo.updatePTEA;
}

//
// Is hardware update of PTE D bit supported?
//
inline static Bool updatePTED(riscvP riscv) {
    return riscv->configInfo.updatePTED;
}

//
// Return TLB entry ASID
//
inline static Uns32 getEntryASID(tlbEntryP entry) {
    return entry->simASID.f.ASID;
}

//
// Given a TLB entry, return the corresponding simulated ASID including MSTATUS
// bits that affect whether entries are used that wee in force when the entry
// was created
//
inline static Uns32 getEntrySimASID(tlbEntryP entry) {
    return entry->simASID.u32;
}

//
// Return TLB entry low VA
//
inline static Uns64 getEntryLowVA(tlbEntryP entry) {
    return entry->lowVA;
}

//
// Return TLB entry high VA
//
inline static Uns64 getEntryHighVA(tlbEntryP entry) {
    return entry->highVA;
}

//
// Return TLB entry low PA
//
inline static Uns64 getEntryLowPA(tlbEntryP entry) {
    return entry->PA;
}

//
// Return TLB entry high PA
//
inline static Uns64 getEntryHighPA(tlbEntryP entry) {
    return entry->PA + entry->highVA - entry->lowVA;
}

//
// Return TLB entry ASID mask
//
inline static Uns32 getEntryASIDMask(tlbEntryP entry, riscvMode mode) {

    riscvSimASID ASIDMask = {f:{MXR:1}};

    // include ASID field only if this entry is not global
    if(!entry->G) {
        ASIDMask.f.ASID = -1;
    }

    // include U field only if this entry is user-accessible and in Supervisor
    // mode
    if(entry->U && (mode==RISCV_MODE_SUPERVISOR)) {
        ASIDMask.f.SUM = 1;
    }

    return ASIDMask.u32;
}

//
// Get effective value of MSTATUS.MXR
//
inline static Bool getMXR(riscvP riscv) {
    return RD_CSR_FIELD(riscv, mstatus, MXR);
}

//
// Get effective value of MSTATUS.SUM
//
inline static Bool getSUM(riscvP riscv) {
    return RD_CSR_FIELD(riscv, mstatus, SUM);
}

//
// Get effective value of MSTATUS.MPRV
//
inline static Bool getMPRV(riscvP riscv) {
    return RD_CSR_FIELD(riscv, mstatus, MPRV);
}

//
// Get effective value of MSTATUS.MPP
//
inline static riscvMode getMPP(riscvP riscv) {
    return RD_CSR_FIELD(riscv, mstatus, MPP);
}

//
// Get effective value of MSTATUS.SUM
//
static Uns32 getActiveASID(riscvP riscv) {
    return RD_CSR_FIELD(riscv, satp, ASID);
}

//
// Return address mask for the given number of bits
//
inline static Uns64 getAddressMask(Uns32 bits) {
    return (bits==64) ? -1 : ((1ULL<<bits)-1);
}

//
// Is code demain required for the passed privilege?
//
inline static Bool isFetch(memPriv priv) {
    return (priv & MEM_PRIV_X) && True;
}

//
// Does the entry ASID match the given TLB ASID? (always true for global
// entries)
//
inline static Bool matchASID(Uns32 ASID, tlbEntryP entry) {
    return entry->G || (ASID==getEntryASID(entry));
}

//
// Return the current simulated ASID, taking into account MSTATUS bits that
// affect whether entries are used
//
static riscvSimASID getSimASID(riscvP riscv) {
    return (riscvSimASID){
        f: {
            ASID : getActiveASID(riscv),
            MXR  : getMXR(riscv),
            SUM  : getSUM(riscv)
        }
    };
}

//
// Get root page table address
//
inline static Uns64 getPTETableAddress(Uns64 PPN) {
    return PPN << RISCV_PAGE_SHIFT;
}

//
// Get root page table address
//
static Uns64 getRootTableAddress(riscvP riscv) {
    return getPTETableAddress(RD_CSR_FIELD(riscv, satp, PPN));
}

//
// Validate entry access permissions
//
static memPriv checkEntryPermission(
    riscvP    riscv,
    riscvMode mode,
    tlbEntryP entry,
    memPriv   requiredPriv
) {
    memPriv priv = entry->priv;

    // add read permission if executable and MSTATUS.MXR=1 (must be done
    // *before* mode-specific check below to correctly handle version-specific
    // SUM behavior)
    if((priv&MEM_PRIV_X) && getMXR(riscv)) {
        priv |= MEM_PRIV_R;
    }

    if(mode==RISCV_MODE_USER) {

        // no access in user mode unless U=1
        if(!entry->U) {
            priv = MEM_PRIV_NONE;
        }

    } else if(entry->U) {

        // no access in supervisor mode if U=1 unless MSTATUS.SUM=1
        if(!getSUM(riscv)) {
            priv = MEM_PRIV_NONE;
        } else if(RISCV_PRIV_VERSION(riscv) >= RVPV_1_11) {
            // behavior from privileged architecture 1.11 only - never
            // executable in Supervisor mode if U=1
            priv &= ~MEM_PRIV_X;
        }
    }

    // indicate whether permission is allowed
    return ((priv & requiredPriv) == requiredPriv) ? priv : MEM_PRIV_NONE;
}

//
// Is the VA valid? (VPNextend must extend VPN)
//
static Bool validVA(Int64 VPN, Int32 VPNextend) {
    return (VPN>=0) ? (VPNextend==0) : (VPNextend==-1);
}

//
// Return the PMP memory domain to use for the passed memory access type
//
static memDomainP getPMPDomainPriv(riscvP riscv, riscvMode mode, memPriv priv) {
    return riscv->pmpDomains[mode][isFetch(priv)];
}

//
// Return the memory domain to use for page table walk accesses
//
inline static memDomainP getPTWDomain(riscvP riscv) {
    return getPMPDomainPriv(riscv, RISCV_MODE_SUPERVISOR, MEM_PRIV_RW);
}

//
// Read an entry from a page table (returning invalid all-zero entry if the
// lookup fails)
//
static Uns64 readPageTableEntry(
    riscvP         riscv,
    memDomainP     domain,
    Uns64          PTEAddr,
    Uns32          entryBytes,
    memAccessAttrs attrs
) {
    memEndian endian = riscv->dendian;
    Uns64     result;

    // enter PTW context
    riscv->PTWActive  = True;
    riscv->PTWBadAddr = False;

    // read 4-byte or 8-byte entry
    if(entryBytes==4) {
        result = vmirtRead4ByteDomain(domain, PTEAddr, endian, attrs);
    } else {
        result = vmirtRead8ByteDomain(domain, PTEAddr, endian, attrs);
    }

    // exit PTW context
    riscv->PTWActive = False;

    return result;
}

//
// Write an entry in a page table
//
static void writePageTableEntry(
    riscvP         riscv,
    memDomainP     domain,
    Uns64          PTEAddr,
    Uns32          entryBytes,
    memAccessAttrs attrs,
    Uns64          value
) {
    memEndian endian = riscv->dendian;

    // enter PTW context
    riscv->PTWActive  = True;
    riscv->PTWBadAddr = False;

    // write 4-byte or 8-byte entry
    if(riscv->artifactAccess) {
        // no action if an artifact access (e.g. page table walk initiated by
        // pseudo-register write)
    } else if(entryBytes==4) {
        vmirtWrite4ByteDomain(domain, PTEAddr, endian, value, attrs);
    } else {
        vmirtWrite8ByteDomain(domain, PTEAddr, endian, value, attrs);
    }

    // exit PTW context
    riscv->PTWActive = False;
}


////////////////////////////////////////////////////////////////////////////////
// PAGE TABLE WALK ERROR HANDLING AND REPORTING
////////////////////////////////////////////////////////////////////////////////

//
// This enumerates page table walk errors
//
typedef enum pteErrorE {
    PTEE_VAEXTEND,          // page table entry VA has invalid extension
    PTEE_READ,              // page table entry load failed
    PTEE_WRITE,             // page table entry store failed
    PTEE_V0,                // page table entry V=0
    PTEE_R0W1,              // page table entry R=0 W=1
    PTEE_LEAF,              // page table entry must be leaf level
    PTEE_ALIGN,             // page table entry is a misaligned superpage
    PTEE_PRIV,              // page table entry does not allow access
    PTEE_A0,                // page table entry A=0
    PTEE_D0,                // page table entry D=0
} pteError;

//
// Return character corresponding to privilege
//
static char getAccessChar(memPriv requiredPriv) {

    char result = 0;

    switch(requiredPriv) {
        case MEM_PRIV_R:
            result = 'R' ;
            break;
        case MEM_PRIV_W:
            result = 'W' ;
            break;
        case MEM_PRIV_X:
            result = 'X' ;
            break;
        default:
            VMI_ABORT("Invalid privilege %u", requiredPriv); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Handle a specific error arising during a page table walk
//
static riscvException handlePTWException(
    riscvP         riscv,
    riscvMode      mode,
    tlbEntryP      entry,
    memPriv        requiredPriv,
    Uns64          PTEAddr,
    pteError       error
) {
    // this enumerates generated exceptions
    typedef enum pteExceptionE {
        PTX_LOAD_ACCESS,        // load access fault
        PTX_STORE_ACCESS,       // store access fault
        PTX_PAGE,               // page fault
    } pteException;

    // structure holding information about a specific error
    typedef struct pteErrorDescS {
        Bool         warn;      // whether to generate warning (otherwise, info)
        pteException exception; // exception description
        const char  *desc;      // description
    } pteErrorDesc;

    // exception table
    static const pteErrorDesc map[] = {
        [PTEE_VAEXTEND] = {1, PTX_PAGE,         "VA has invalid extension" },
        [PTEE_READ]     = {1, PTX_LOAD_ACCESS,  "load failed"              },
        [PTEE_WRITE]    = {1, PTX_STORE_ACCESS, "store failed"             },
        [PTEE_V0]       = {0, PTX_PAGE,         "V=0"                      },
        [PTEE_R0W1]     = {1, PTX_PAGE,         "R=0 and W=1"              },
        [PTEE_LEAF]     = {1, PTX_PAGE,         "must be leaf level"       },
        [PTEE_ALIGN]    = {1, PTX_PAGE,         "is a misaligned superpage"},
        [PTEE_PRIV]     = {0, PTX_PAGE,         "does not allow access"    },
        [PTEE_A0]       = {0, PTX_PAGE,         "A=0"                      },
        [PTEE_D0]       = {0, PTX_PAGE,         "D=0"                      },
    };

    // get description for this error
    const pteErrorDesc *desc     = &map[error];
    const char         *severity = 0;

    // determine whether PTW exception should be reported, and with what
    // severity
    if(desc->warn) {
        severity = "W";
    } else if(RISCV_DEBUG_MMU(riscv)) {
        severity = "I";
    }

    // generate message for error if required
    if(severity) {
        vmiMessage(severity, CPU_PREFIX "_PTWE",
            NO_SRCREF_FMT "Page table entry %s "
            "[VA=0x"FMT_Ax" PTEAddress=0x"FMT_Ax" access=%c]",
            NO_SRCREF_ARGS(riscv),
            desc->desc,
            entry->lowVA,
            PTEAddr,
            getAccessChar(requiredPriv)
        );
    }

    // return appropriate exception
    if(desc->exception==PTX_LOAD_ACCESS) {
        return riscv_E_LoadAccessFault;
    } else if(desc->exception==PTX_STORE_ACCESS) {
        return riscv_E_StoreAMOAccessFault;
    } else if(requiredPriv==MEM_PRIV_R) {
        return riscv_E_LoadPageFault;
    } else if(requiredPriv==MEM_PRIV_W) {
        return riscv_E_StoreAMOPageFault;
    } else {
        return riscv_E_InstructionPageFault;
    }
}

//
// Macro encapsulating PTW error generation
//
#define PTE_ERROR(_CODE) return handlePTWException( \
    riscv, mode, entry, requiredPriv, PTEAddr, PTEE_##_CODE \
)


////////////////////////////////////////////////////////////////////////////////
// Sv32 PAGE TABLE WALK
////////////////////////////////////////////////////////////////////////////////

//
// This is the VPN page size in bits
//
#define SV32_VPN_SHIFT 10

//
// This is the VPN page mask
//
#define SV32_VPN_MASK ((1<<SV32_VPN_SHIFT)-1)

//
// Sv32 VA
//
typedef union Sv32VAU {
    Uns32 raw;
    struct {
        Uns32 pageOffset : 12;
        Uns32 VPN        : 20;
    } fields;
} Sv32VA;

//
// Sv32 PA
//
typedef union Sv32PAU {
    Uns64 raw;
    struct {
        Uns64 pageOffset : 12;
        Uns64 PPN        : 52;
    } fields;
} Sv32PA;

//
// Sv32 entry
//
typedef union Sv32EntryU {
    Uns32 raw;
    struct {
        Uns32 V    :  1;
        Uns32 priv :  3;
        Uns32 U    :  1;
        Uns32 G    :  1;
        Uns32 A    :  1;
        Uns32 D    :  1;
        Uns32 RSW  :  2;
        Uns32 PPN  : 22;
    } fields;
} Sv32Entry;

//
// Return Sv32 VPN[level]
//
static Uns32 getSv32VPNi(Sv32VA VA, Uns32 level) {
    return (VA.fields.VPN >> (level*SV32_VPN_SHIFT)) & SV32_VPN_MASK;
}

//
// Look up any TLB entry for the passed address using Sv32 mode and fill byref
// argument 'entry' with the details.
//
static riscvException tlbLookupSv32(
    riscvP         riscv,
    riscvMode      mode,
    tlbEntryP      entry,
    memPriv        requiredPriv,
    memAccessAttrs attrs
) {
    memDomainP domain = getPTWDomain(riscv);
    Sv32VA     VA     = {raw : entry->lowVA};
    Sv32PA     PA;
    Sv32Entry  PTE;
    Addr       PTEAddr;
    Addr       a;
    Int32      i;

    // clear page offset bits (not relevant for entry creation)
    VA.fields.pageOffset = 0;

    // do table walk to find ultimate PTE
    for(
        i=1, a=getRootTableAddress(riscv);
        i>=0;
        i--, a=getPTETableAddress(PTE.fields.PPN)
    ) {
        // get next page table entry address
        PTEAddr = a + getSv32VPNi(VA, i)*4;

        // read entry from memory
        PTE.raw = readPageTableEntry(riscv, domain, PTEAddr, 4, attrs);

        // return with page-fault exception if an invalid entry or entry with
        // permission combination that is reserved, or break from the loop if
        // a leaf entry is found
        if(riscv->PTWBadAddr) {
            PTE_ERROR(READ);
        } else if(!PTE.fields.V) {
            PTE_ERROR(V0);
        } else if((PTE.fields.priv&MEM_PRIV_RW) == MEM_PRIV_W) {
            PTE_ERROR(R0W1);
        } else if(PTE.fields.priv) {
            break;
        }
    }

    // return with page-fault exception if leaf entry was not found
    if(i<0) {
        PTE_ERROR(LEAF);
    }

    // construct entry low PA
    PA.fields.PPN        = PTE.fields.PPN;
    PA.fields.pageOffset = 0;

    // calculate entry size
    Uns32 size = 1 << ((i*SV32_VPN_SHIFT) + RISCV_PAGE_SHIFT);

    // return with page-fault exception if invalid page alignment
    if(PA.raw & (size-1)) {
        PTE_ERROR(ALIGN);
    }

    // fill TLB entry virtual address range
    entry->lowVA  = VA.raw & -size;
    entry->highVA = entry->lowVA + size - 1;

    // fill TLB entry low physical address
    entry->PA = PA.raw;

    // fill TLB entry attributes
    entry->priv = PTE.fields.priv;
    entry->U    = PTE.fields.U;
    entry->G    = getG(riscv, PTE.fields.G);
    entry->A    = PTE.fields.A;
    entry->D    = PTE.fields.D;

    // return with page-fault exception if permissions are invalid
    if(!checkEntryPermission(riscv, mode, entry, requiredPriv)) {
        PTE_ERROR(PRIV);
    }

    // update entry A/D bits if required
    Bool doWrite = False;

    if(entry->A) {
        // A bit is already set
    } else if(!updatePTEA(riscv)) {
        // A bit not yet set, no hardware support
        PTE_ERROR(A0);
    } else {
        // A bit is set on any access
        entry->A = PTE.fields.A = 1;
        doWrite  = True;
    }

    // D bit is set on any write
    if(entry->D || !(requiredPriv & MEM_PRIV_W)) {
        // D bit is already set or not required
    } else if(!updatePTED(riscv)) {
        // D bit not yet set, no hardware support
        PTE_ERROR(D0);
    } else {
        entry->D = PTE.fields.D = 1;
        doWrite  = True;
    }

    // write PTE if it has changed
    if(doWrite) {

        writePageTableEntry(riscv, domain, PTEAddr, 4, attrs, PTE.raw);

        // error if entry is not writable
        if(riscv->PTWBadAddr) {
            PTE_ERROR(WRITE);
        }
    }

    // entry is valid
    return 0;
}


////////////////////////////////////////////////////////////////////////////////
// Sv39 PAGE TABLE WALK
////////////////////////////////////////////////////////////////////////////////

//
// This is the VPN page size in bits
//
#define SV39_VPN_SHIFT 9

//
// This is the VPN page mask
//
#define SV39_VPN_MASK ((1<<SV39_VPN_SHIFT)-1)

//
// Sv39 VA
//
typedef union Sv39VAU {
    Uns64 raw;
    struct {
        Uns32 pageOffset : 12;
        Int64 VPN        : 27;
        Int32 VPNextend  : 25;
    } fields;
} Sv39VA;

//
// Sv39 PA
//
typedef union Sv39PAU {
    Uns64 raw;
    struct {
        Uns64 pageOffset : 12;
        Uns64 PPN        : 52;
    } fields;
} Sv39PA;

//
// Sv39 entry
//
typedef union Sv39EntryU {
    Uns64 raw;
    struct {
        Uns32 V    :  1;
        Uns32 priv :  3;
        Uns32 U    :  1;
        Uns32 G    :  1;
        Uns32 A    :  1;
        Uns32 D    :  1;
        Uns32 RSW  :  2;
        Uns64 PPN  : 44;
        Uns32 _u1  : 10;
    } fields;
} Sv39Entry;

//
// Return Sv39 VPN[level]
//
static Uns32 getSv39VPNi(Sv39VA VA, Uns32 level) {
    return (VA.fields.VPN >> (level*SV39_VPN_SHIFT)) & SV39_VPN_MASK;
}

//
// Look up any TLB entry for the passed address using Sv39 mode and fill byref
// argument 'entry' with the details.
//
static riscvException tlbLookupSv39(
    riscvP         riscv,
    riscvMode      mode,
    tlbEntryP      entry,
    memPriv        requiredPriv,
    memAccessAttrs attrs
) {
    memDomainP domain  = getPTWDomain(riscv);
    Sv39VA     VA      = {raw : entry->lowVA};
    Addr       PTEAddr = 0;
    Sv39PA     PA;
    Sv39Entry  PTE;
    Addr       a;
    Int32      i;

    // validate VPNextend correctly extends VPN
    if(!validVA(VA.fields.VPN, VA.fields.VPNextend)) {
        PTE_ERROR(VAEXTEND);
    }

    // clear page offset bits (not relevant for entry creation)
    VA.fields.pageOffset = 0;

    // do table walk to find ultimate PTE
    for(
        i=2, a=getRootTableAddress(riscv);
        i>=0;
        i--, a=getPTETableAddress(PTE.fields.PPN)
    ) {
        // get next page table entry address
        PTEAddr = a + getSv39VPNi(VA, i)*8;

        // read entry from memory
        PTE.raw = readPageTableEntry(riscv, domain, PTEAddr, 8, attrs);

        // return with page-fault exception if an invalid entry or entry with
        // permission combination that is reserved, or break from the loop if
        // a leaf entry is found
        if(riscv->PTWBadAddr) {
            PTE_ERROR(READ);
        } else if(!PTE.fields.V) {
            PTE_ERROR(V0);
        } else if((PTE.fields.priv&MEM_PRIV_RW) == MEM_PRIV_W) {
            PTE_ERROR(R0W1);
        } else if(PTE.fields.priv) {
            break;
        }
    }

    // return with page-fault exception if leaf entry was not found
    if(i<0) {
        PTE_ERROR(LEAF);
    }

    // construct entry low PA
    PA.fields.PPN        = PTE.fields.PPN;
    PA.fields.pageOffset = 0;

    // calculate entry size
    Uns64 size = 1ULL << ((i*SV39_VPN_SHIFT) + RISCV_PAGE_SHIFT);

    // return with page-fault exception if invalid page alignment
    if(PA.raw & (size-1)) {
        PTE_ERROR(ALIGN);
    }

    // fill TLB entry virtual address range
    entry->lowVA  = VA.raw & -size;
    entry->highVA = entry->lowVA + size - 1;

    // fill TLB entry low physical address
    entry->PA = PA.raw;

    // fill TLB entry attributes
    entry->priv = PTE.fields.priv;
    entry->U    = PTE.fields.U;
    entry->G    = getG(riscv, PTE.fields.G);
    entry->A    = PTE.fields.A;
    entry->D    = PTE.fields.D;

    // return with page-fault exception if permissions are invalid
    if(!checkEntryPermission(riscv, mode, entry, requiredPriv)) {
        PTE_ERROR(PRIV);
    }

    // update entry A/D bits if required
    Bool doWrite = False;

    if(entry->A) {
        // A bit is already set
    } else if(!updatePTEA(riscv)) {
        // A bit not yet set, no hardware support
        PTE_ERROR(A0);
    } else {
        // A bit is set on any access
        entry->A = PTE.fields.A = 1;
        doWrite  = True;
    }

    // D bit is set on any write
    if(entry->D || !(requiredPriv & MEM_PRIV_W)) {
        // D bit is already set or not required
    } else if(!updatePTED(riscv)) {
        // D bit not yet set, no hardware support
        PTE_ERROR(D0);
    } else {
        entry->D = PTE.fields.D = 1;
        doWrite  = True;
    }

    // write PTE if it has changed
    if(doWrite) {

        writePageTableEntry(riscv, domain, PTEAddr, 8, attrs, PTE.raw);

        // error if entry is not writable
        if(riscv->PTWBadAddr) {
            PTE_ERROR(WRITE);
        }
    }

    // entry is valid
    return 0;
}


////////////////////////////////////////////////////////////////////////////////
// Sv48 PAGE TABLE WALK
////////////////////////////////////////////////////////////////////////////////

//
// This is the VPN page size in bits
//
#define SV48_VPN_SHIFT 9

//
// This is the VPN page mask
//
#define SV48_VPN_MASK ((1<<SV48_VPN_SHIFT)-1)

//
// Sv48 VA
//
typedef union Sv48VAU {
    Uns64 raw;
    struct {
        Uns32 pageOffset : 12;
        Int64 VPN        : 36;
        Int32 VPNextend  : 16;
    } fields;
} Sv48VA;

//
// Sv48 PA
//
typedef union Sv48PAU {
    Uns64 raw;
    struct {
        Uns64 pageOffset : 12;
        Uns64 PPN        : 52;
    } fields;
} Sv48PA;

//
// Sv48 entry
//
typedef union Sv48EntryU {
    Uns64 raw;
    struct {
        Uns32 V    :  1;
        Uns32 priv :  3;
        Uns32 U    :  1;
        Uns32 G    :  1;
        Uns32 A    :  1;
        Uns32 D    :  1;
        Uns32 RSW  :  2;
        Uns64 PPN  : 44;
        Uns32 _u1  : 10;
    } fields;
} Sv48Entry;

//
// Return Sv48 VPN[level]
//
static Uns32 getSv48VPNi(Sv48VA VA, Uns32 level) {
    return (VA.fields.VPN >> (level*SV48_VPN_SHIFT)) & SV48_VPN_MASK;
}

//
// Look up any TLB entry for the passed address using Sv48 mode and fill byref
// argument 'entry' with the details.
//
static riscvException tlbLookupSv48(
    riscvP         riscv,
    riscvMode      mode,
    tlbEntryP      entry,
    memPriv        requiredPriv,
    memAccessAttrs attrs
) {
    memDomainP domain  = getPTWDomain(riscv);
    Sv48VA     VA      = {raw : entry->lowVA};
    Addr       PTEAddr = 0;
    Sv48PA     PA;
    Sv48Entry  PTE;
    Addr       a;
    Int32      i;

    // validate VPNextend correctly extends VPN
    if(!validVA(VA.fields.VPN, VA.fields.VPNextend)) {
        PTE_ERROR(VAEXTEND);
    }

    // clear page offset bits (not relevant for entry creation)
    VA.fields.pageOffset = 0;

    // do table walk to find ultimate PTE
    for(
        i=3, a=getRootTableAddress(riscv);
        i>=0;
        i--, a=getPTETableAddress(PTE.fields.PPN)
    ) {
        // get next page table entry address
        PTEAddr = a + getSv48VPNi(VA, i)*8;

        // read entry from memory
        PTE.raw = readPageTableEntry(riscv, domain, PTEAddr, 8, attrs);

        // return with page-fault exception if an invalid entry or entry with
        // permission combination that is reserved, or break from the loop if
        // a leaf entry is found
        if(riscv->PTWBadAddr) {
            PTE_ERROR(READ);
        } else if(!PTE.fields.V) {
            PTE_ERROR(V0);
        } else if((PTE.fields.priv&MEM_PRIV_RW) == MEM_PRIV_W) {
            PTE_ERROR(R0W1);
        } else if(PTE.fields.priv) {
            break;
        }
    }

    // return with page-fault exception if leaf entry was not found
    if(i<0) {
        PTE_ERROR(LEAF);
    }

    // construct entry low PA
    PA.fields.PPN        = PTE.fields.PPN;
    PA.fields.pageOffset = 0;

    // calculate entry size
    Uns64 size = 1ULL << ((i*SV48_VPN_SHIFT) + RISCV_PAGE_SHIFT);

    // return with page-fault exception if invalid page alignment
    if(PA.raw & (size-1)) {
        PTE_ERROR(ALIGN);
    }

    // fill TLB entry virtual address range
    entry->lowVA  = VA.raw & -size;
    entry->highVA = entry->lowVA + size - 1;

    // fill TLB entry low physical address
    entry->PA = PA.raw;

    // fill TLB entry attributes
    entry->priv = PTE.fields.priv;
    entry->U    = PTE.fields.U;
    entry->G    = getG(riscv, PTE.fields.G);
    entry->A    = PTE.fields.A;
    entry->D    = PTE.fields.D;

    // return with page-fault exception if permissions are invalid
    if(!checkEntryPermission(riscv, mode, entry, requiredPriv)) {
        PTE_ERROR(PRIV);
    }

    // update entry A/D bits if required
    Bool doWrite = False;

    if(entry->A) {
        // A bit is already set
    } else if(!updatePTEA(riscv)) {
        // A bit not yet set, no hardware support
        PTE_ERROR(A0);
    } else {
        // A bit is set on any access
        entry->A = PTE.fields.A = 1;
        doWrite  = True;
    }

    // D bit is set on any write
    if(entry->D || !(requiredPriv & MEM_PRIV_W)) {
        // D bit is already set or not required
    } else if(!updatePTED(riscv)) {
        // D bit not yet set, no hardware support
        PTE_ERROR(D0);
    } else {
        entry->D = PTE.fields.D = 1;
        doWrite  = True;
    }

    // write PTE if it has changed
    if(doWrite) {

        writePageTableEntry(riscv, domain, PTEAddr, 8, attrs, PTE.raw);

        // error if entry is not writable
        if(riscv->PTWBadAddr) {
            PTE_ERROR(WRITE);
        }
    }

    // entry is valid
    return 0;
}


////////////////////////////////////////////////////////////////////////////////
// GENERAL TLB MANAGEMENT
////////////////////////////////////////////////////////////////////////////////

//
// Return mask for current mode
//
inline static Uns32 getModeMask(riscvMode mode) {
    return 1<<mode;
}

//
// Remove memory mappings for a TLB entry in the given mode
//
static void deleteTLBEntryMappingsMode(
    riscvP    riscv,
    tlbEntryP entry,
    riscvMode mode
) {
    Uns32 modeMask = getModeMask(mode);

    // action is only needed if the TLB entry is mapped in this mode
    if(entry->isMapped & modeMask) {

        memDomainP dataDomain = riscv->vmDomains[mode][0];
        memDomainP codeDomain = riscv->vmDomains[mode][1];
        Uns64      lowVA      = getEntryLowVA(entry);
        Uns64      highVA     = getEntryHighVA(entry);
        Uns32      fullASID   = getEntrySimASID(entry);
        Uns32      ASIDMask   = getEntryASIDMask(entry, mode);

        if(dataDomain) {
            vmirtUnaliasMemoryVM(dataDomain, lowVA, highVA, ASIDMask, fullASID);
        }

        if(codeDomain && (codeDomain!=dataDomain)) {
            vmirtUnaliasMemoryVM(codeDomain, lowVA, highVA, ASIDMask, fullASID);
        }

        // indicate entry is no longer mapped in this mode
        entry->isMapped &= ~modeMask;
    }
}

//
// Unmap a TLB entry
//
static void unmapTLBEntry(riscvP riscv, tlbEntryP entry) {

    riscvMode mode;

    // delete mappings in all privilege levels
    for(mode=0; mode<RISCV_MODE_LAST; mode++) {
        deleteTLBEntryMappingsMode(riscv, entry, mode);
    }
}

//
// Unmap a TLB entry when the simulated ASID changes in domains affected by
// that change
//
static void unmapTLBEntryNewASID(
    riscvP       riscv,
    tlbEntryP    entry,
    riscvSimASID newASID
) {
    riscvMode mode;

    for(mode=0; mode<RISCV_MODE_LAST; mode++) {

        Uns32 ASIDMask   = getEntryASIDMask(entry, mode);
        Uns32 oldASIDU32 = ASIDMask & getEntrySimASID(entry);
        Uns32 newASIDU32 = ASIDMask & newASID.u32;

        // action is only needed if effective ASID in the given mode changes
        if(oldASIDU32 != newASIDU32) {
            deleteTLBEntryMappingsMode(riscv, entry, mode);
        }
    }
}

//
// Return privilege name for the given privilege
//
static const char *privName(Uns32 priv) {

    static const char *map[] = {
        "---", "r--", "-w-", "rw-", "--x", "r-x", "-wx", "rwx"
    };

    // sanity check given privilege
    VMI_ASSERT(priv<8, "unexpected privilege %u", priv);

    return map[priv];
}

//
// Dump contents of the TLB entry
//
static void dumpTLBEntry(riscvP riscv, tlbEntryP entry) {

    // get entry bounds
    Uns64 entryLowVA  = getEntryLowVA(entry);
    Uns64 entryHighVA = getEntryHighVA(entry);
    Uns64 entryLowPA  = getEntryLowPA(entry);
    Uns64 entryHighPA = getEntryHighPA(entry);
    char  asidString[32];

    // construct ASID string for non-global entries
    if(entry->G) {
        asidString[0] = 0;
    } else {
        sprintf(asidString, " ASID=%u", getEntryASID(entry));
    }

    vmiPrintf(
        "VA 0x"FMT_6408x":0x"FMT_6408x" PA 0x"FMT_6408x":0x"FMT_6408x
        " %s U=%u G=%u A=%u D=%u%s\n",
        entryLowVA, entryHighVA, entryLowPA, entryHighPA,
        privName(entry->priv), entry->U, entry->G, entry->A, entry->D,
        asidString
    );
}

//
// Report TLB entry deletion
//
inline static void reportDeleteTLBEntry(riscvP riscv, tlbEntryP entry) {
    if(!entry->artifact && RISCV_DEBUG_MMU(riscv)) {
        vmiPrintf("DELETE TLB ENTRY:\n");
        dumpTLBEntry(riscv, entry);
    }
}

//
// Delete a TLB entry
//
static void deleteTLBEntry(riscvP riscv, riscvTLBP tlb, tlbEntryP entry) {

    // remove entry mappings if required
    if(entry->isMapped) {
        unmapTLBEntry(riscv, entry);
    }

    // emit debug if required
    reportDeleteTLBEntry(riscv, entry);

    // remove the TLB entry from the range LUT
    vmirtRemoveRangeEntry(&tlb->lut, entry->lutEntry);
    entry->lutEntry = 0;

    // add the TLB entry to the free list
    entry->nextFree = tlb->free;
    tlb->free       = entry;
}

//
// Enumeration describing which TLB entries match a given ASID
//
typedef enum matchModeE {
    MM_ANY,     // any TLB entry
    MM_ASID,    // any non-global entry with ASID
} matchMode;

//
// Delete TLB entry if required by the passed matchMode
//
static void deleteTLBEntryMode(
    riscvP    riscv,
    riscvTLBP tlb,
    tlbEntryP entry,
    matchMode mode,
    Uns32     ASID
) {
    Bool delete = False;

    if(mode==MM_ANY) {

        // delete entry irrespective of ASID
        delete = True;

    } else if(!getASIDMask(riscv)) {

        // ASID not implemented - all entries are global
        delete = True;

    } else if(!entry->G && matchASID(ASID, entry)) {

        // ASID-mapped entry with matching ASID
        delete = True;
    }

    if(delete) {
        deleteTLBEntry(riscv, tlb, entry);
    }
}

//
// Allocate a new TLB entry
//
static tlbEntryP newTLBEntry(riscvTLBP tlb) {

    tlbEntryP entry;

    if((entry=tlb->free)) {
        tlb->free = entry->nextFree;
    } else {
        entry = STYPE_ALLOC(tlbEntry);
    }

    return entry;
}

//
// Insert the TLB entry into the processor range table
//
inline static void insertTLBEntry(riscvTLBP tlb, tlbEntryP entry) {
    entry->lutEntry = vmirtInsertRangeEntry(
        &tlb->lut, entry->lowVA, entry->highVA, (UnsPS)entry
    );
}

//
// Allocate a new TLB entry, filling it from the base object
//
static tlbEntryP allocateTLBEntry(
    riscvP         riscv,
    riscvTLBP      tlb,
    tlbEntryP      base,
    memAccessAttrs attrs
) {
    // get new entry structure
    tlbEntryP entry = newTLBEntry(tlb);

    // artifact accesses must be marked as such
    base->artifact = riscv->artifactAccess;

    // fill entry from base object
    *entry = *base;

    // insert it into the processor TLB table
    insertTLBEntry(tlb, entry);

    // emit debug if required
    if(!entry->artifact && RISCV_DEBUG_MMU(riscv)) {
        entry->simASID = getSimASID(riscv);
        vmiPrintf("CREATE TLB ENTRY:\n");
        dumpTLBEntry(riscv, entry);
    }

    // return the new entry
    return entry;
}

//
// Return TLB entry for vmiRangeEntryP object (note that any entries created by
// artifact accesses are deleted and ignored, so that these do not perturb
// simulation state)
//
static tlbEntryP getTLBEntryForRange(
    riscvP         riscv,
    riscvTLBP      tlb,
    Uns64          lowVA,
    Uns64          highVA,
    vmiRangeEntryP lutEntry
) {
    while(lutEntry) {

        union {Uns64 u64; tlbEntryP entry;} u = {
            vmirtGetRangeEntryUserData(lutEntry)
        };

        if(!u.entry->artifact) {
            return u.entry;
        }

        deleteTLBEntry(riscv, tlb, u.entry);

        lutEntry = vmirtGetNextRangeEntry(&tlb->lut, lowVA, highVA);
    }

    return 0;
}

//
// Return the first TLB entry overlapping the passed range, ignoring ASID
//
static tlbEntryP firstTLBEntryRange(
    riscvP    riscv,
    riscvTLBP tlb,
    Uns64     lowVA,
    Uns64     highVA
) {
    vmiRangeEntryP lutEntry = vmirtGetFirstRangeEntry(&tlb->lut, lowVA, highVA);

    return getTLBEntryForRange(riscv, tlb, lowVA, highVA, lutEntry);
}

//
// Return the next TLB entry overlapping the passed range, ignoring ASID
//
static tlbEntryP nextTLBEntryRange(
    riscvP    riscv,
    riscvTLBP tlb,
    Uns64     lowVA,
    Uns64     highVA
) {
    vmiRangeEntryP lutEntry = vmirtGetNextRangeEntry(&tlb->lut, lowVA, highVA);

    return getTLBEntryForRange(riscv, tlb, lowVA, highVA, lutEntry);
}

//
// Delete TLB entries that overlap the passed range in the TLB
//
// If mode is MM_ANY, then any matching entry is deleted, irrespective of ASID.
// If mode is MM_ASID, then any matching non-global entry is deleted
//
static void invalidateTLBEntriesRange(
    riscvP    riscv,
    riscvTLBP tlb,
    Uns64     lowVA,
    Uns64     highVA,
    matchMode mode,
    Uns32     ASID
) {
    if(tlb) {
        ITER_TLB_ENTRY_RANGE(
            riscv, tlb, lowVA, highVA, entry,
            deleteTLBEntryMode(riscv, tlb, entry, mode, ASID)
        );
    }
}

//
// Allocate TLB structure
//
static riscvTLBP newTLB(riscvP riscv) {

    riscvTLBP tlb = STYPE_CALLOC(riscvTLB);

    // allocate range table for fast TLB entry search
    vmirtNewRangeTable(&tlb->lut);

    return tlb;
}

//
// Free TLB structure
//
static void freeTLB(riscvP riscv, riscvTLBP tlb) {

    if(tlb) {

        tlbEntryP entry;

        // delete all entries in the TLB (puts them in the free list)
        invalidateTLBEntriesRange(riscv, tlb, 0, RISCV_MAX_ADDR, MM_ANY, 0);

        // release entries in the free list
        while((entry=tlb->free)) {
            tlb->free = entry->nextFree;
            STYPE_FREE(entry);
        }

        // free the range table
        vmirtFreeRangeTable(&tlb->lut);

        // free the TLB structure
        STYPE_FREE(tlb);
    }
}

//
// Dump contents of the TLB
//
static void dumpTLB(riscvP riscv, riscvTLBP tlb) {

    if(tlb) {

        vmiPrintf("TLB CONTENTS:\n");

        ITER_TLB_ENTRY_RANGE(
            riscv, tlb, 0, RISCV_MAX_ADDR, entry,
            dumpTLBEntry(riscv, entry)
        );
    }
}

//
// Fill domain name for mode and type
//
static void getDomainName(
    char       *result,
    riscvMode   mode,
    const char *type,
    Bool        isCode,
    Bool        unified
) {
    sprintf(
        result,
        "%s %s %s",
        riscvGetModeName(mode),
        type,
        unified ? "unified" : isCode ? "code" : "data"
    );
}

//
// Create new domain
//
static memDomainP createDomain(
    riscvMode   mode,
    const char *type,
    Uns32       bits,
    Bool        isCode,
    Bool        unified
) {
    char name[32];

    // fill domain name
    getDomainName(name, mode, type, isCode, unified);

    // create the domain
    return vmirtNewDomain(name, bits);
}

//
// Create new PMP domain for the given mode
//
static void createPMPDomain(
    riscvP     riscv,
    riscvMode  mode,
    Bool       isCode,
    Bool       unified,
    memDomainP extDomain
) {
    Uns32 pmpBits = 64;
    Uns32 numRegs = riscv->configInfo.PMP_registers;
    Uns64 pmpMask = getAddressMask(pmpBits);
    Uns64 extMask = getAddressMask(riscv->extBits);

    // create domain of width pmpBits
    memDomainP pmpDomain = createDomain(
        mode, "PMP", pmpBits, isCode, unified
    );

    // create mapping to external domain
    vmirtAliasMemory(extDomain, pmpDomain, 0, extMask, 0, 0);

    // protect PMP domain if PMP registers are implemented
    if(numRegs) {
        vmirtProtectMemory(pmpDomain, 0, pmpMask, MEM_PRIV_RWX, MEM_PRIV_SUB);
    }

    // save domain
    riscv->pmpDomains[mode][isCode] = pmpDomain;
}

//
// Create new physical domain for the given mode
//
static void createPhysicalDomain(
    riscvP    riscv,
    riscvMode mode,
    Bool      isCode,
    Bool      unified
) {
    memDomainP pmpDomain = riscv->pmpDomains[mode][isCode];
    Uns32      physBits  = riscvGetXlenArch(riscv);
    Uns64      physMask  = getAddressMask(physBits);

    // create domain of width physBits
    memDomainP physDomain = createDomain(
        mode, "Physical", physBits, isCode, unified
    );

    // create mapping to PMP domain
    vmirtAliasMemory(pmpDomain, physDomain, 0, physMask, 0, 0);

    // save domain
    riscv->physDomains[mode][isCode] = physDomain;
}

//
// Create new virtual domain for the given mode
//
static void createVirtualDomain(
    riscvP     riscv,
    riscvMode  mode,
    Bool       isCode,
    Bool       unified
) {
    Uns32 xlenBits = riscvGetXlenArch(riscv);

    riscv->vmDomains[mode][isCode] = createDomain(
        mode, "Virtual", xlenBits, isCode, unified
    );
}

//
// Dump the contents of the TLBs
//
static VMIRT_COMMAND_PARSE_FN(dumpTLBCommand) {

    riscvP riscv = (riscvP)processor;

    dumpTLB(riscv, riscv->tlb);

    return "1";
}

//
// Virtual memory initialization
//
VMI_VMINIT_FN(riscvVMInit) {

    riscvP     riscv      = (riscvP)processor;
    memDomainP codeDomain = codeDomains[0];
    memDomainP dataDomain = dataDomains[0];
    Bool       unified    = (codeDomain==dataDomain);
    Uns32      codeBits   = vmirtGetDomainAddressBits(codeDomain);
    Uns32      dataBits   = vmirtGetDomainAddressBits(dataDomain);
    riscvMode  mode;

    // use core context for domain creation
    vmirtSetCreateDomainContext(processor);

    // save size of physical domain
    riscv->extBits = (codeBits<dataBits) ? codeBits : dataBits;

    for(mode=RISCV_MODE_SUPERVISOR; mode<RISCV_MODE_LAST; mode++) {

        // create PMP data domain for this mode
        createPMPDomain(riscv, mode, False, unified, dataDomain);

        // create PMP code domain for this mode
        if(unified) {
            riscv->pmpDomains[mode][1] = riscv->pmpDomains[mode][0];
        } else {
            createPMPDomain(riscv, mode, True, unified, codeDomain);
        }

        // create physical data domain for this mode
        createPhysicalDomain(riscv, mode, False, unified);

        // create physical code domain for this mode
        if(unified) {
            riscv->physDomains[mode][1] = riscv->physDomains[mode][0];
        } else {
            createPhysicalDomain(riscv, mode, True, unified);
        }

        // initialize physical domains
        dataDomains[mode] = riscv->physDomains[mode][0];
        codeDomains[mode] = riscv->physDomains[mode][1];
    }

    for(mode=0; mode<RISCV_MODE_SUPERVISOR; mode++) {

        // use Supervisor-mode PMP domains
        riscv->pmpDomains [mode][0] = riscv->pmpDomains [RISCV_MODE_SUPERVISOR][0];
        riscv->pmpDomains [mode][1] = riscv->pmpDomains [RISCV_MODE_SUPERVISOR][1];
        riscv->physDomains[mode][0] = riscv->physDomains[RISCV_MODE_SUPERVISOR][0];
        riscv->physDomains[mode][1] = riscv->physDomains[RISCV_MODE_SUPERVISOR][1];

        // initialize physical domains
        dataDomains[mode] = riscv->physDomains[mode][0];
        codeDomains[mode] = riscv->physDomains[mode][1];
    }

    for(mode=0; mode<RISCV_MODE_LAST; mode++) {

        riscvDMode dMode = mode | RISCV_DMODE_VM;

        // only handle dictionary modes that allow virtual mappings
        if(dMode<RISCV_DMODE_LAST) {

            // create virtual data domain for this mode
            createVirtualDomain(riscv, mode, False, unified);

            // create virtual code domain for this mode
            if(unified) {
                riscv->vmDomains[mode][1] = riscv->vmDomains[mode][0];
            } else {
                createVirtualDomain(riscv, mode, True, unified);
            }

            // initialize virtual domains
            dataDomains[dMode] = riscv->vmDomains[mode][0];
            codeDomains[dMode] = riscv->vmDomains[mode][1];
        }
    }

    if(riscvHasMode(riscv, RISCV_MODE_SUPERVISOR)) {

        // initialize TLB
        riscv->tlb = newTLB(riscv);

        // dumpTLB command
        vmirtAddCommandParse(
            processor,
            "dumpTLB",
            "show TLB contents",
            dumpTLBCommand,
            VMI_CT_QUERY|VMI_CO_TLB|VMI_CA_QUERY
        );
    }
}

//
// Return any TLB entry for the passed address which matches the current ASID
//
static tlbEntryP findTLBEntry(riscvP riscv, riscvTLBP tlb, Uns64 VA) {

    Uns32 ASID = getActiveASID(riscv);

    // return any entry with matching MVA, ASID and VMID
    ITER_TLB_ENTRY_RANGE(
        riscv, tlb, VA, VA, entry,
        if(matchASID(ASID, entry)) {
            return entry;
        }
    );

    // here if there is no match
    return 0;
}

//
// Initialize TLB entry fields before TLB lookup
//
static void initialEntry(tlbEntryP entry, riscvP riscv, Uns64 VA) {
    *entry = (tlbEntry){lowVA:VA};
}

//
// Look up any TLB entry for the passed address and fill byref argument 'entry'
// with the details.
//
static riscvException tlbLookup(
    riscvP         riscv,
    riscvMode      mode,
    tlbEntryP      entry,
    memPriv        requiredPriv,
    memAccessAttrs attrs
) {
    VAMode         vaMode = RD_CSR_FIELD(riscv, satp, MODE);
    riscvException result = 0;

    if(vaMode==VAM_Sv32) {
        result = tlbLookupSv32(riscv, mode, entry, requiredPriv, attrs);
    } else if(vaMode==VAM_Sv39) {
        result = tlbLookupSv39(riscv, mode, entry, requiredPriv, attrs);
    } else if(vaMode==VAM_Sv48) {
        result = tlbLookupSv48(riscv, mode, entry, requiredPriv, attrs);
    } else {
        VMI_ABORT("Invalid VA mode"); // LCOV_EXCL_LINE
    }

    return result;
}

//
// Take exception on invalid access
//
static void handleInvalidAccess(
    riscvP         riscv,
    Uns64          VA,
    memAccessAttrs attrs,
    riscvException exception
) {
    if(!MEM_AA_IS_ARTIFACT_ACCESS(attrs)) {
        riscvTakeException(riscv, exception, VA);
    }
}

//
// Validate that the TLB entry has sufficient permissions
//
static tlbEntryP validateTLBEntryPriv(
    riscvP         riscv,
    riscvMode      mode,
    tlbEntryP      entry,
    memPriv        requiredPriv,
    memAccessAttrs attrs,
    tlbMapInfoP    miP
) {
    memPriv priv;

    if(!entry) {

        // no entry given

    } else if(!(priv=checkEntryPermission(riscv, mode, entry, requiredPriv))) {

        // specified permissions are inadequate
        entry = NULL;

    } else if((requiredPriv&MEM_PRIV_W) && !entry->D) {

        // writing using an entry not marked as dirty: discard the entry and
        // reload it (will write the entry marked as dirty)
        deleteTLBEntry(riscv, riscv->tlb, entry);
        entry = NULL;

    } else {

        // record privilege with which entry should be mapped, discarding write
        // privilege if the entry is not dirty
        if(!entry->D) {
            priv &= ~MEM_PRIV_W;
        }

        miP->priv = priv;
    }

    return entry;
}

//
// Find or create a TLB entry for the passed VA
//
static tlbEntryP findOrCreateTLBEntry(
    riscvP         riscv,
    riscvMode      mode,
    memAccessAttrs attrs,
    tlbMapInfoP    miP
) {
    riscvTLBP tlb          = riscv->tlb;
    Uns64     VA           = miP->lowVA;
    memPriv   requiredPriv = miP->priv;

    // get any existing entry for this VA
    tlbEntryP entry = findTLBEntry(riscv, tlb, VA);

    // if entry exists, validate permissions (NOTE: this may delete the entry
    // if a write and D=0)
    entry = validateTLBEntryPriv(
        riscv, mode, entry, requiredPriv, attrs, miP
    );

    // to table walk to find entry if required
    if(!entry) {

        tlbEntry tmp;

        // seed temporary entry
        initialEntry(&tmp, riscv, VA);

        // do table walk
        riscvException exception = tlbLookup(
            riscv, mode, &tmp, requiredPriv, attrs
        );

        // do lookup
        if(exception) {
            handleInvalidAccess(riscv, VA, attrs, exception);
        } else {
            entry = allocateTLBEntry(riscv, tlb, &tmp, attrs);
        }

        // validate permissions
        entry = validateTLBEntryPriv(
            riscv, mode, entry, requiredPriv, attrs, miP
        );
    }

    return entry;
}


////////////////////////////////////////////////////////////////////////////////
// PHYSICAL MEMORY MANAGEMENT
////////////////////////////////////////////////////////////////////////////////

//
// PMP configuration entry mode
//
typedef enum pmpcfgModeE {
    PMPM_OFF,
    PMPM_TOR,
    PMPM_NA4,
    PMPM_NAPOT,
} pmpcfgMode;

//
// PMP configuration entry structure
//
typedef union pmpcfgElemU {
    Uns8 u8;
    struct {
        Uns8       priv : 3;
        pmpcfgMode mode : 2;
        Uns8       _u1  : 2;
        Bool       L    : 1;
    };
} pmpcfgElem;

//
// Read the indexed PMP configuration register (internal routine)
//
inline static Uns64 readPMPCFGInt(riscvP riscv, Uns32 index) {

    riscvArchitecture arch = riscv->currentArch;

    // return either 32-bit or 64-bit view
    if(arch & ISA_XLEN_64) {
        return riscv->pmpcfg.u64[index/2];
    } else {
        return riscv->pmpcfg.u32[index];
    }
}

//
// Return the indexed PMP configuration register
//
inline static pmpcfgElem getPMPCFGElem(riscvP riscv, Uns8 index) {
    return (pmpcfgElem){u8:riscv->pmpcfg.u8[index]};
}

//
// Is a PMP entry controlled by the given element locked?
//
inline static Bool pmpLocked(riscvP riscv, Uns8 index) {
    return !riscv->artifactAccess && getPMPCFGElem(riscv,index).L;
}

//
// Return the effective value of a PMP address register, taking into account
// grain size
//
static Uns64 getEffectivePMPAddr(riscvP riscv, Uns8 index) {

    pmpcfgElem e      = getPMPCFGElem(riscv, index);
    Uns32      G      = riscv->configInfo.PMP_grain;
    Uns64      result = riscv->pmpaddr[index];

    if((G>=2) && (e.mode==PMPM_NAPOT)) {

        // when G>=2 and pmpcfgi.A[1] is set, i.e. the mode is NAPOT, then bits
        // pmpaddri[G-2:0] read as all ones
        result |= ((1ULL << (G-1)) - 1);

    } else if((G>=1) && (e.mode!=PMPM_NAPOT)) {

        // when G>=1 and pmpcfgi.A[1] is clear, i.e. the mode is OFF or TOR,
        // then bits pmpaddri[G-1:0] read as all zeros
        result &= (-1ULL << G);
    }

    return result;
}

//
// Is the indexed PMP region active?
//
static Bool getPMPRegionActive(riscvP riscv, pmpcfgElem e, Uns8 index) {

    if(e.mode==PMPM_OFF) {

        // region is disabled
        return False;

    } else if(e.mode!=PMPM_TOR) {

        // region is enabled with no range constraint
        return True;

    } else {

        // TOR region is effectively enabled only if the associated address is
        // non-zero (a zero address will always fail the bounds check)
        return getEffectivePMPAddr(riscv, index);
    }
}

//
// Is a PMP entry controlled by the given element a locked TOR entry?
//
static Bool pmpLockedTOR(riscvP riscv, Uns8 index) {

    Bool locked = False;

    if(index<NUM_PMPS) {

        pmpcfgElem e = getPMPCFGElem(riscv, index);

        locked = (e.mode==PMPM_TOR) && pmpLocked(riscv, index);
    }

    return locked;
}

//
// Set privileges in PMP domain for the given mode
//
static void setPMPPriv(
    riscvP    riscv,
    riscvMode mode,
    Uns64     low,
    Uns64     high,
    memPriv   priv
) {
    memDomainP dataDomain = riscv->pmpDomains[mode][0];
    memDomainP codeDomain = riscv->pmpDomains[mode][1];

    // emit debug if required
    if(RISCV_DEBUG_MMU(riscv)) {
        vmiPrintf(
            "PMP PRIV=%s 0x"FMT_6408x":0x"FMT_6408x" (mode %s)\n",
            privName(priv), low, high, riscvGetModeName(mode)
        );
    }

    if(dataDomain==codeDomain) {

        // set permissions in unified domain
        vmirtProtectMemory(dataDomain, low, high, priv, MEM_PRIV_SET);

    } else {

        // set permissions in data domain if required
        if((priv==MEM_PRIV_NONE) || (priv&MEM_PRIV_RW)) {
            vmirtProtectMemory(dataDomain, low, high, priv, priv&MEM_PRIV_RW);
        }

        // set permissions in code domain if required
        if((priv==MEM_PRIV_NONE) || (priv&MEM_PRIV_X)) {
            vmirtProtectMemory(codeDomain, low, high, priv, priv&MEM_PRIV_X);
        }
    }
}

//
// Return the bounds of the indexed PMP entry
//
static void getPMPEntryBounds(
    riscvP riscv,
    Uns32  index,
    Uns64 *lowP,
    Uns64 *highP
) {
    pmpcfgElem e   = getPMPCFGElem(riscv, index);
    Uns64      low = getEffectivePMPAddr(riscv, index)<<2;
    Uns64      high;

    if(e.mode==PMPM_NA4) {

        // 4-byte range
        high = low + 3;

    } else if(e.mode==PMPM_NAPOT) {

        // naturally-aligned power of two range
        Uns64 notLow = ~(low+3);
        Uns64 mask   = ((notLow & -notLow) << 1) - 1;

        low  = low & ~mask;
        high = low |  mask;

    } else {

        // top-of-range
        high = low-1;
        low  = index ? riscv->pmpaddr[index-1]<<2 : 0;

        // mask low address to implemented grain size
        low &= (-4ULL << riscv->configInfo.PMP_grain);
    }

    // assign results
    *lowP  = low;
    *highP = high;
}

//
// Are any lower-priority PMP entries than the indexed entry locked?
//
static Bool lowerPriorityPMPEntryLocked(riscvP riscv, Uns32 index) {

    Uns32 i;

    for(i=index+1; i<NUM_PMPS; i++) {

        pmpcfgElem e = getPMPCFGElem(riscv, i);

        if(e.L && (e.mode!=PMPM_OFF)) {
            return True;
        }
    }

    return False;
}

//
// Invalidate PMP entry 'index'
//
static void invalidatePMPEntry(riscvP riscv, Uns32 index) {

    pmpcfgElem e = getPMPCFGElem(riscv, index);

    if(getPMPRegionActive(riscv, e, index)) {

        Uns64 low;
        Uns64 high;

        // get the entry bounds
        getPMPEntryBounds(riscv, index, &low, &high);

        // ignore TOR entries with low>high
        if(low<=high) {

            // remove access in Supervisor address space
            setPMPPriv(riscv, RISCV_MODE_SUPERVISOR, low, high, MEM_PRIV_NONE);

            // remove access in Machine address space if the entry is locked
            // or if any lower-priority entry is locked (enabling or disabling
            // this region may reveal or conceal that region)
            if(e.L || lowerPriorityPMPEntryLocked(riscv, index)) {
                setPMPPriv(riscv, RISCV_MODE_MACHINE, low, high, MEM_PRIV_NONE);
            }
        }
    }
}

//
// Read the indexed PMP configuration register
//
Uns64 riscvVMReadPMPCFG(riscvP riscv, Uns32 index) {
    return readPMPCFGInt(riscv, index);
}

//
// Write the indexed PMP configuration register with the new value and return
// the new effective value
//
Uns64 riscvVMWritePMPCFG(riscvP riscv, Uns32 index, Uns64 newValue) {

    riscvArchitecture arch          = riscv->currentArch;
    Uns32             entriesPerCFG = (arch & ISA_XLEN_64) ? 8 : 4;
    Uns32             numPMP        = riscv->configInfo.PMP_registers;
    Uns32             G             = riscv->configInfo.PMP_grain;
    Uns32             numCFG        = ((numPMP+entriesPerCFG-1)/entriesPerCFG);

    // get offset into PMP bank allowing for the fact that when in 64-bit mode
    // the second set of PMP registers are controlled by pmpcfg2 (not pmpcfg1,
    // which is unimplemented)
    Uns32 offset = (arch & ISA_XLEN_64) ? index/2 : index;

    if(offset<numCFG) {

        Uns32             numBytes = numPMP-(offset*entriesPerCFG);
        Uns64             mask     = (numBytes>=8) ? -1 : (1ULL<<(numBytes*8))-1;
        riscvPMPCFG       oldValue = riscv->pmpcfg;
        Uns32             i;

        // mask writable bits
        newValue &= (WM64_pmpcfg & mask);

        // update register
        if(arch & ISA_XLEN_64) {
            riscv->pmpcfg.u64[offset] = newValue;
        } else {
            riscv->pmpcfg.u32[offset] = newValue;
        }

        // invalidate any modified entries
        for(i=0; i<NUM_PMPS; i++) {

            // get old and new values
            pmpcfgElem oldCFG = {u8:oldValue.u8[i]};
            pmpcfgElem newCFG = {u8:riscv->pmpcfg.u8[i]};

            // when G>=1, the NA4 mode is not selectable
            if(G && (newCFG.mode==PMPM_NA4)) {
                newCFG.mode = oldCFG.mode;
                riscv->pmpcfg.u8[i] = newCFG.u8;
            }

            if(oldCFG.u8!=newCFG.u8) {

                // revert value (perhaps temporarily)
                riscv->pmpcfg.u8[i] = oldCFG.u8;

                if(!pmpLocked(riscv, i)) {

                    // invalidate entry using its original specification
                    invalidatePMPEntry(riscv, i);

                    // set new value
                    riscv->pmpcfg.u8[i] = newCFG.u8;

                    // invalidate entry using its new specification
                    invalidatePMPEntry(riscv, i);
                }
            }
        }
    }

    // return updated value
    return readPMPCFGInt(riscv, index);
}

//
// Read the indexed PMP address register
//
Uns64 riscvVMReadPMPAddr(riscvP riscv, Uns32 index) {

    return getEffectivePMPAddr(riscv, index);
}

//
// Write the indexed PMP address register with the new value and return
// the new effective value
//
Uns64 riscvVMWritePMPAddr(riscvP riscv, Uns32 index, Uns64 newValue) {

    Uns32 numRegs = riscv->configInfo.PMP_registers;
    Uns32 G       = riscv->configInfo.PMP_grain;

    // mask writable bits to implemented external bits
    newValue &= (getAddressMask(riscv->extBits) >> 2);

    // also mask writable bits if grain is set
    if(G) {
        newValue &= (-1ULL << (G-1));
    }

    if((index<numRegs) && (riscv->pmpaddr[index]!=newValue)) {

        if(pmpLocked(riscv, index)) {

            // entry index is locked

        } else if(pmpLockedTOR(riscv, index+1)) {

            // next entry is a locked TOR entry

        } else {

            // invalidate entry using its original specification
            invalidatePMPEntry(riscv, index);

            // set new value
            riscv->pmpaddr[index] = newValue;

            // invalidate entry using its new specification
            invalidatePMPEntry(riscv, index);
        }
    }

    return getEffectivePMPAddr(riscv, index);
}

//
// Reset PMP unit
//
void riscvVMResetPMP(riscvP riscv) {

    Uns32 numRegs = riscv->configInfo.PMP_registers;
    Uns32 i;

    for(i=0; i<numRegs; i++) {

        if(riscv->pmpaddr[i] || riscv->pmpcfg.u8[i]) {

            // invalidate entry using its current specification
            invalidatePMPEntry(riscv, i);

            // reset entry fields
            riscv->pmpaddr[i]   = 0;
            riscv->pmpcfg.u8[i] = 0;
        }
    }
}

//
// Update the bounds in lowPAP/highPAP and privilege to reflect the affect of
// region i
//
static void refinePMPRegionRange(
    riscvP    riscv,
    riscvMode mode,
    Uns64    *lowPAP,
    Uns64    *highPAP,
    Uns64     PA,
    Uns32     index,
    memPriv  *privP
) {
    pmpcfgElem e = getPMPCFGElem(riscv, index);

    // only handle active regions
    if(getPMPRegionActive(riscv, e, index)) {

        Uns64 lowPAEntry;
        Uns64 highPAEntry;

        // get bounds of the entry
        getPMPEntryBounds(riscv, index, &lowPAEntry, &highPAEntry);

        if(lowPAEntry>highPAEntry) {

            // ignore TOR region with low bound > high bound

        } else if((lowPAEntry<=PA) && (PA<=highPAEntry)) {

            // match in this region
            *lowPAP  = lowPAEntry;
            *highPAP = highPAEntry;

            // refine privilege
            if((mode!=RISCV_MODE_MACHINE) || e.L) {
                *privP = e.priv;
            } else {
                *privP = MEM_PRIV_RWX;
            }

        } else if((lowPAEntry>PA) && (lowPAEntry<*highPAP)) {

            // remove part of region ABOVE matching address
            *highPAP = lowPAEntry-1;

        } else if((highPAEntry<PA) && (highPAEntry>*lowPAP)) {

            // remove part of region BELOW matching address
            *lowPAP = highPAEntry+1;
        }
    }
}

//
// Map region starting at lowPA, hopefully extending to highPA
//
static void mapPMPInt(
    riscvP    riscv,
    riscvMode mode,
    memPriv   requiredPriv,
    Uns64    *lowPAP,
    Uns64    *highPAP
) {
    Uns64   PA   = *lowPAP;
    memPriv priv = (mode==RISCV_MODE_MACHINE) ? MEM_PRIV_RWX : MEM_PRIV_NONE;
    Int32   i;

    // set widest possible range initially
    *lowPAP = 0;

    // handle all regions in lowest-to-highest priority order
    for(i=riscv->configInfo.PMP_registers-1; i>=0; i--) {
        refinePMPRegionRange(riscv, mode, lowPAP, highPAP, PA, i, &priv);
    }

    // indicate PMP failure if required
    if((priv&requiredPriv) != requiredPriv) {
        riscv->AFErrorIn = riscv_AFault_PMP;
    }

    // update PMP privileges
    setPMPPriv(riscv, mode, *lowPAP, *highPAP, priv);
}

//
// Refresh physical mappings for the given physical address range and mode
//
static void mapPMP(
    riscvP    riscv,
    riscvMode mode,
    memPriv   requiredPriv,
    Uns64     lowPA,
    Uns64     highPA
) {
    Uns32 numRegs = riscv->configInfo.PMP_registers;

    if(numRegs) {

        Uns64 lastPA = highPA;
        Uns64 mask   = getAddressMask(riscv->extBits);

        highPA = lowPA-1;

        // iterate while unprocessed regions remain
        do {

            // get next region bounds to try
            lowPA  = highPA+1;
            highPA = mask;

            // attempt PMP privilege change for regions in implemented range
            if(lowPA<=highPA) {
                mapPMPInt(riscv, mode, requiredPriv, &lowPA, &highPA);
            } else {
                highPA = lastPA;
            }

        } while(highPA<lastPA);
    }
}


////////////////////////////////////////////////////////////////////////////////
// TLB / PMP UPDATE
////////////////////////////////////////////////////////////////////////////////

//
// Map memory virtual addresses in virtual domain to the specified range in the
// corresponding PMP domain
//
static void mapTLBEntry(
    riscvP      riscv,
    tlbEntryP   entry,
    memDomainP  domainV,
    riscvMode   mode,
    memPriv     requiredPriv,
    tlbMapInfoP miP
) {
    memDomainP domainP    = getPMPDomainPriv(riscv, mode, requiredPriv);
    Uns64      lowPA      = getEntryLowPA(entry);
    Uns64      highPA     = getEntryHighPA(entry);
    Uns64      lowVA      = getEntryLowVA(entry);
    Uns32      ASIDMask   = getEntryASIDMask(entry, mode);
    Uns32      ASID       = getEntrySimASID(entry);
    memPriv    priv       = miP->priv;
    Uns64      size       = highPA-lowPA+1;
    Uns64      vmiPageMax = 0x100000000ULL;

    // restrict mapping size to VMI maximum (4Gb)
    if(size>vmiPageMax) {

        Uns64 VAtoPA = lowPA-lowVA;

        size   = vmiPageMax;
        lowVA  = miP->lowVA & -size;
        lowPA  = lowVA + VAtoPA;
        highPA = lowPA + size - 1;
    }

    // create virtual mapping
    vmirtAliasMemoryVM(
        domainP, domainV, lowPA, highPA, lowVA, 0, priv, ASIDMask, ASID
    );

    // update PMP mapping if required
    mapPMP(riscv, mode, requiredPriv, lowPA, highPA);

    // indicate entry is mapped in this mode
    entry->isMapped |= getModeMask(mode);

    // indicate mapped range
    miP->lowVA  = lowVA;
    miP->highVA = lowVA + size - 1;
}

//
// Try mapping memory at the passed address for the specified access type and
// return a status code indicating whether the mapping succeeded
//
static Bool tlbMiss(
    riscvP         riscv,
    memDomainP     domain,
    riscvMode      mode,
    tlbMapInfoP    miP,
    memAccessAttrs attrs
) {
    memPriv requiredPriv = miP->priv;

    // do TLB mapping
    tlbEntryP entry = findOrCreateTLBEntry(riscv, mode, attrs, miP);

    // handle absent entries
    if(!entry) {
        return True;
    }

    // create full simulated ASID (including MSTATUS bits)
    riscvSimASID simASID = getSimASID(riscv);

    // if the entry was previously mapped with a different simulated ASID,
    // unmap it in affected domains (handles changes in MSTATUS bits)
    unmapTLBEntryNewASID(riscv, entry, simASID);

    // save full simulated ASID for use when the entry is unmapped
    entry->simASID = simASID;

    // create entry mapping
    mapTLBEntry(riscv, entry, domain, mode, requiredPriv, miP);

    // indicate TLB entry permissions are ok
    return False;
}


////////////////////////////////////////////////////////////////////////////////
// PUBLIC FUNCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// this identifies the domain type that is being accessed
//
typedef enum domainTypeE {
    DT_NONE,    // not a match
    DT_PHYS,    // physical domain
    DT_VIRT,    // virtual domain
    DT_PMP      // PMP domain
} domainType;

//
// If the domain is one for the given mode and code/data type, return its class
//
static domainType getDomainType(
    riscvP     riscv,
    memDomainP domain,
    riscvMode  mode,
    Bool       isCode
) {
    domainType dt = DT_NONE;

    if(domain==riscv->physDomains[mode][isCode]) {
        dt = DT_PHYS;
    } else if(domain==riscv->vmDomains[mode][isCode]) {
        dt = DT_VIRT;
    } else if(domain==riscv->pmpDomains[mode][isCode]) {
        dt = DT_PMP;
    }

    return dt;
}

//
// Try mapping memory at the passed address for the specified access type and
// return a status code indicating if virtual mapping failed
//
Bool riscvVMMiss(
    riscvP         riscv,
    memDomainP     domain,
    memPriv        requiredPriv,
    Uns64          address,
    Uns32          bytes,
    memAccessAttrs attrs
) {
    Bool       miss = False;
    domainType dt   = DT_NONE;
    Int32      mode;
    Uns32      isCode;

    // assume any Access Fault error generated here will be a Bus Error
    riscv->AFErrorIn = riscv_AFault_Bus;

    // identify access to a mapped domain
    for(isCode=0; !dt && (isCode<2); isCode++) {

        for(mode=RISCV_MODE_LAST-1; !dt && (mode>=0); mode--) {

            dt = getDomainType(riscv, domain, mode, isCode);

            if(dt==DT_VIRT) {

                // access to virtually-mapped domain
                Uns64      lastVA = address+bytes-1;
                tlbMapInfo mi     = {lowVA:address, highVA:address-1};

                // iterate while unprocessed regions remain
                do {

                    mi.lowVA  = mi.highVA+1;
                    mi.highVA = lastVA;
                    mi.priv   = requiredPriv;

                    miss = tlbMiss(riscv, domain, mode, &mi, attrs);

                } while(!miss && ((lastVA<mi.lowVA) || (lastVA>mi.highVA)));

            } else if(dt) {

                // update PMP mapping if required (either a physical access or
                // a page table walk using the PMP domain directly)
                mapPMP(riscv, mode, requiredPriv, address, address+bytes-1);
            }
        }
    }

    // return value indicates whether this was a TLB miss that has now been
    // resolved
    return miss;
}

//
// Free structures used for virtual memory management
//
void riscvVMFree(riscvP riscv) {
    freeTLB(riscv, riscv->tlb);
}

//
// Perform any required memory mapping updates on an ASID change
//
void riscvVMSetASID(riscvP riscv) {
    vmirtSetProcessorASID((vmiProcessorP)riscv, getSimASID(riscv).u32);
}

//
// Mask given ASID to implemented ASID bits
//
static Uns32 maskASID(riscvP riscv, Uns32 ASID) {

    CSR_REG_DECL(satp);

    // mask ASID to current XLEN width
    if(riscvGetXlenArch(riscv)==32) {
        satp.u32.fields.ASID = ASID;
        ASID = satp.u32.fields.ASID;
    } else {
        satp.u64.fields.ASID = ASID;
        ASID = satp.u64.fields.ASID;
    }

    // mask ASID to implemented width (may be bigger or smaller than current
    // width above)
    return ASID & getASIDMask(riscv);
}

//
// Invalidate entire TLB
//
void riscvVMInvalidateAll(riscvP riscv) {
    invalidateTLBEntriesRange(riscv, riscv->tlb, 0, RISCV_MAX_ADDR, MM_ANY, 0);
}

//
// Invalidate entire TLB with matching ASID
//
void riscvVMInvalidateAllASID(riscvP riscv, Uns32 ASID) {
    ASID = maskASID(riscv, ASID);
    invalidateTLBEntriesRange(riscv, riscv->tlb, 0, RISCV_MAX_ADDR, MM_ASID, ASID);
}

//
// Invalidate TLB entries for the given address
//
void riscvVMInvalidateVA(riscvP riscv, Uns64 VA) {
    invalidateTLBEntriesRange(riscv, riscv->tlb, VA, VA, MM_ANY, 0);
}

//
// Invalidate TLB entries with matching address and ASID
//
void riscvVMInvalidateVAASID(riscvP riscv, Uns64 VA, Uns32 ASID) {
    ASID = maskASID(riscv, ASID);
    invalidateTLBEntriesRange(riscv, riscv->tlb, VA, VA, MM_ASID, ASID);
}

//
// Refresh the current data domain to reflect current mstatus.MPRV setting
//
void riscvVMRefreshMPRVDomain(riscvP riscv) {

    // get current VM enable and mode
    Bool       VM     = RD_CSR_FIELD(riscv, satp, MODE);
    riscvMode  mode   = getCurrentMode(riscv);
    memDomainP domain = 0;

    // if mstatus.MPRV is set, use that mode
    if(getMPRV(riscv)) {

        // get raw value of mstatus.MPP
        riscvMode modeMPP = getMPP(riscv);

        // clamp to implemented mode
        if(!riscvHasMode(riscv, modeMPP)) {
            modeMPP = riscvGetMinMode(riscv);
        }

        // if modeMPP > mode, this is suspicious
        if(modeMPP > mode) {
            vmiMessage("W", CPU_PREFIX "_SMPPM",
                SRCREF_FMT "Suspicious execution in %s mode with mstatus.MPRV=1 "
                "and mstatus.MPP=%u (indicating %s mode)",
                SRCREF_ARGS(riscv, getPC(riscv)),
                riscvGetModeName(mode),
                modeMPP,
                riscvGetModeName(modeMPP)
            );
        }

        mode = modeMPP;
    }

    // look for virtual domain for this mode if required
    if(VM) {
        domain = riscv->vmDomains[mode][0];
    }

    // look for physical domain for this mode if MMU is not enabled or the
    // domain is not VM-managed
    if(!domain) {
        domain = riscv->physDomains[mode][0];
    }

    // switch to the indicated domain if it is not current
    if(domain && (domain!=vmirtGetProcessorDataDomain((vmiProcessorP)riscv))) {
        vmirtSetProcessorDataDomain((vmiProcessorP)riscv, domain);
    }
}


////////////////////////////////////////////////////////////////////////////////
// TLB SAVE/RESTORE SUPPORT
////////////////////////////////////////////////////////////////////////////////

#define RISCV_TLB_ENTRY "TLB_ENTRY"
#define RISCV_TLB_END   "TLB_END"

//
// Save contents of one TLB entry
//
static void saveTLBEntry(vmiSaveContextP cxt, tlbEntryP entry) {

    // save entry
    tlbEntry entryS = *entry;

    // clear down properties used to manage mapping
    entryS.isMapped = 0;
    entryS.lutEntry = 0;

    vmirtSaveElement(
        cxt, RISCV_TLB_ENTRY, RISCV_TLB_END, &entryS, sizeof(entryS)
    );
}

//
// Restore contents of one TLB entry
//
static void restoreTLBEntry(riscvTLBP tlb, tlbEntryP new) {

    tlbEntryP entry = newTLBEntry(tlb);

    // copy entry contents
    *entry = *new;

    // insert it into the processor TLB table
    insertTLBEntry(tlb, entry);
}

//
// Save contents of the TLB
//
static void saveTLB(riscvP riscv, riscvTLBP tlb, vmiSaveContextP cxt) {

    // save all non-artifact TLB entries
    ITER_TLB_ENTRY_RANGE(
        riscv, tlb, 0, RISCV_MAX_ADDR, entry,
        if(!entry->artifact) {
            saveTLBEntry(cxt, entry);
        }
    );

    // save terminator
    vmirtSaveElement(cxt, RISCV_TLB_ENTRY, RISCV_TLB_END, 0, 0);
}

//
// Restore contents of the TLB
//
static void restoreTLB(riscvP riscv, riscvTLBP tlb, vmiRestoreContextP cxt) {

    tlbEntry new;

    // restore all TLB entries
    while(
        vmirtRestoreElement(
            cxt, RISCV_TLB_ENTRY, RISCV_TLB_END, &new, sizeof(new)
        ) == SRS_OK
    ) {
        restoreTLBEntry(tlb, &new);
    }
}

//
// Save VM state
//
static void saveVM(riscvP riscv, vmiSaveContextP cxt) {

    riscvTLBP tlb = riscv->tlb;

    if(tlb) {
        saveTLB(riscv, tlb, cxt);
    }
}

//
// Restore VM state
//
static void restoreVM(riscvP riscv, vmiRestoreContextP cxt) {

    riscvTLBP tlb = riscv->tlb;

    if(tlb) {
        invalidateTLBEntriesRange(riscv, tlb, 0, RISCV_MAX_ADDR, MM_ANY, 0);
        restoreTLB(riscv, tlb, cxt);
    }
}

//
// Save VM state not covered by register read/write API
//
void riscvVMSave(
    riscvP              riscv,
    vmiSaveContextP     cxt,
    vmiSaveRestorePhase phase
) {
    if(phase==SRT_END_CORE) {
        saveVM(riscv, cxt);
    }
}

//
// Restore VM state not covered by register read/write API
//
void riscvVMRestore(
    riscvP              riscv,
    vmiRestoreContextP  cxt,
    vmiSaveRestorePhase phase
) {
    if(phase==SRT_END_CORE) {
        restoreVM(riscv, cxt);
    }
}


