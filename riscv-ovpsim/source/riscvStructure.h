/*
 * Copyright (c) 2005-2020 Imperas Software Ltd., www.imperas.com
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

#pragma once

// VMI header files
#include "vmi/vmiTypes.h"
#include "vmi/vmiPorts.h"

// model header files
#include "riscvCLICTypes.h"
#include "riscvConfig.h"
#include "riscvCSR.h"
#include "riscvExceptionTypes.h"
#include "riscvMode.h"
#include "riscvModelCallbacks.h"
#include "riscvTypes.h"
#include "riscvTypeRefs.h"
#include "riscvVariant.h"


//
// Processor debug flags
//
#define RISCV_DISASSEMBLE_MASK      0x00000001
#define RISCV_DEBUG_MMU_MASK        0x00000002
#define RISCV_DEBUG_EXCEPT_MASK     0x00000004

//
// Processor flag selection macros
//
#define RISCV_DISASSEMBLE(_P)   ((_P)->flags & RISCV_DISASSEMBLE_MASK)
#define RISCV_DEBUG_MMU(_P)     ((_P)->flags & RISCV_DEBUG_MMU_MASK)
#define RISCV_DEBUG_EXCEPT(_P)  ((_P)->flags & RISCV_DEBUG_EXCEPT_MASK)

//
// Debug flags that should be disabled during save/restore
//
#define RISCV_DEBUG_UPDATE_MASK ( \
    RISCV_DEBUG_MMU_MASK |  \
    RISCV_DEBUG_EXCEPT_MASK \
)

//
// Number of temporaries
//
#define NUM_TEMPS 6

//
// Container for net values
//
typedef struct riscvNetValueS {
    Bool reset;         // level of reset signal
    Bool haltreq;       // haltreq (Debug mode)
    Bool resethaltreq;  // resethaltreq (Debug mode)
    Bool resethaltreqS; // resethaltreq (Debug mode, sampled at reset)
    Bool deferint;      // defer taking interrupts (artifact)
    Bool enableCLIC;    // is CLIC enabled?
    Bool irq_ack;       // IRQ acknowledge (output)
    Bool _u2;           // (for alignment)
} riscvNetValue;

//
// Container for PMP configuration registers
//
typedef union riscvPMPCFGU {
    Uns8  *u8;          // when viewed as bytes
    Uns32 *u32;         // when viewed as words
    Uns64 *u64;         // when viewed as double words
} riscvPMPCFG;

//
// This code indicates no interrupt is pending
//
#define RV_NO_INT -1

//
// This holds information about a pending-and-enabled interrupt
//
typedef struct riscvPendEnabS {
    riscvMode priv;     // mode to which taken
    Int32     id;       // interrupt id
    Uns8      level;    // interrupt level
    Bool      isCLIC;   // whether CLIC mode interrupt
} riscvPendEnab;

//
// This holds all state contributing to a basic mode interrupt (for debug)
//
typedef struct riscvBasicIntStateS {
    Uns64 pendingEnabled;       // pending-and-enabled state
    Uns64 pending;              // pending state
    Uns64 pendingExternal;      // pending external interrupts
    Uns32 pendingInternal;      // pending internal (software) interrupts
    Uns32 mideleg;              // mideleg register value
    Uns32 sideleg;              // sideleg register value
    Bool  mie;                  // mstatus.mie
    Bool  sie;                  // mstatus.sie
    Bool  uie;                  // mstatus.uie
    Bool  _u1;                  // (for alignment)
} riscvBasicIntState;

//
// This holds processor and vector information for an interrupt
//
typedef struct riscvInterruptInfoS {
    riscvP hart;
    Uns32  userData;
} riscvInterruptInfo, *riscvInterruptInfoP;

//
// Structure describing a port
//
typedef struct riscvNetPortS {
    vmiNetPort         desc;
    riscvInterruptInfo ii;
    riscvNetPortP      next;
} riscvNetPort;

//
// Set of domains of a particular type
//
typedef memDomainP riscvDomainSet [RISCV_MODE_LAST][2];
typedef riscvDomainSet *riscvDomainSetP;

//
// Maximum supported value of VLEN and number of vector registers (vector
// extension)
//
#define VLEN_MAX        65536
#define VREG_NUM        32
#define ELEN_MIN        32
#define ELEN_MAX        64
#define SLEN_MIN        32
#define ELEN_DEFAULT    64
#define SLEN_DEFAULT    64
#define VLEN_DEFAULT    512
#define SEW_MIN         8
#define LMUL_MAX        8
#define NUM_BASE_REGS   4

//
// Processor model structure
//
typedef struct riscvS {

    // True processor registers
    Uns64              x[32];           // GPR bank
    Uns64              f[32];           // FPR bank
    riscvCSRs          csr;             // system register values
    riscvCSRMasks      csrMask;         // system register masks

    // Model control
    Uns64              TMP[NUM_TEMPS];  // temporaries
    riscvP             smpRoot;         // root of SMP cluster
    riscvP             parent;          // parent (if not root)
    riscvArchitecture  currentArch;     // current enabled features
    riscvDMode         mode;            // current processor mode
    riscvDisableReason disable;         // reason why processor is disabled
    Uns32              numHarts;        // number of hart contexts in container
    Bool               verbose       :1;// whether verbose output enabled
    Bool               artifactAccess:1;// whether current access is an artifact
    Bool               externalActive:1;// whether external CSR access active
    Bool               inSaveRestore :1;// is save/restore active?
    Bool               useTMode      :1;// has transaction mode been enabled?
    Bool               rmCheckValid  :1;// whether RM valid check required
    Bool               checkEndian   :1;// whether endian check required
    riscvVTypeFmt      vtypeFormat   :1;// vtype format (vector extension)
    Uns16              pmKey;           // polymorphic key
    Uns8               fpFlagsMT;       // flags set by JIT instructions
    Uns8               fpFlagsCSR;      // flags set by CSR write
    Uns8               SFMT;            // SF set by JIT instructions
    Uns8               SFCSR;           // SF set by CSR write
    Uns8               SF;              // operation saturation flag
    Bool               DM;              // whether in Debug mode
    Bool               DMStall;         // whether stalled in Debug mode
    Bool               commercial;      // whether commercial feature in use
    Uns32              flags;           // model control flags
    Uns32              flagsRestore;    // saved flags during restore
    riscvConfig        configInfo;      // model configuration
    riscvMode          dmode;           // mode in which to access data
    memEndian          dendian;         // data endianness
    memEndian          iendian;         // instruction endianness
    Uns64              jumpBase;        // address of jump instruction
    Uns32              writtenXMask;    // mask of written X registers

    // Configuration and parameter definitions
    riscvParamValuesP  paramValues;     // specified parameters (construction only)

    // Interrupt and exception control
    vmiExceptionInfoCP exceptions;      // all exceptions (including extensions)
    Uns32              nonLocalNum;     // number of exceptions except local int
    Uns32              swip;            // software interrupt pending bits
    Uns64              exceptionMask;   // mask of all implemented exceptions
    Uns64              interruptMask;   // mask of all implemented interrupts
    riscvPendEnab      pendEnab;        // pending and enabled interrupt
    Uns32              extInt[RISCV_MODE_LAST]; // external interrupt override
    riscvCLIC          clic;            // source interrupt indicated from CLIC
    riscvException     exception : 16;  // last activated exception
    riscvICMode        MIMode    :  2;  // custom M interrupt mode
    riscvICMode        SIMode    :  2;  // custom S interrupt mode
    riscvICMode        HIMode    :  2;  // custom H interrupt mode
    riscvICMode        UIMode    :  2;  // custom U interrupt mode
    riscvAccessFault   AFErrorIn :  3;  // input access fault error subtype
    riscvAccessFault   AFErrorOut:  3;  // latched access fault error subtype

    // LR/SC support
    Uns64              exclusiveTag;    // tag for active exclusive access
    Uns64              exclusiveTagMask;// mask for active exclusive access

    // Counter/timer support
    Uns64              baseCycles;      // base cycle count
    Uns64              baseInstructions;// base instruction count

    // Debug
    vmiRegInfoP        regInfo[2];      // register views (normal and debug)

    // Parameters
    vmiEnumParameterP  variantList;     // supported variants
    vmiParameterP      parameters;      // parameter definition

    // Ports
    riscvBusPortP      busPorts;        // bus ports
    riscvNetPortP      netPorts;        // net ports
    riscvNetValue      netValue;        // special net port values
    Uns32              ipDWords;        // size of ip in words
    Uns64             *ip;              // interrupt port values
    Uns32              DMPortHandle;    // DM port handle (debug mode)
    Uns32              LRAddressHandle; // LR address port handle (locking)
    Uns32              SCAddressHandle; // SC address port handle (locking)
    Uns32              AMOActiveHandle; // active AMO operation
    Uns32              irq_ack_Handle;  // interrupt acknowledge
    Uns32              irq_id_Handle;   // interrupt id
    Uns32              sec_lvl_Handle;  // security level

    // Timers
    vmiModelTimerP     stepTimer;       // Debug mode single-step timer

    // CSR support
    vmiRangeTableP     csrTable;        // per-CSR lookup table
    vmiRangeTableP     csrUIMessage;    // per-CSR unimplemented messages
    riscvBusPortP      csrPort;         // externally-implemented CSR port
    riscvCSRRemapP     csrRemap;        // CSR remap list

    // Memory management support
    riscvDomainSet     pmaDomains;      // pma domains
    riscvDomainSet     pmpDomains;      // pmp domains
    riscvDomainSet     physDomains;     // physical domains
    riscvDomainSet     vmDomains;       // mapped domains
    memDomainP         CLICDomain;      // CLIC domain
    riscvPMPCFG        pmpcfg;          // pmpcfg registers
    Uns64             *pmpaddr;         // pmpaddr registers
    riscvTLBP          tlb;             // TLB cache
    Uns8               extBits    :  8; // bit size of external domains
    Bool               PTWActive  :  1; // page table walk active
    Bool               PTWBadAddr :  1; // page table walk address was bad

    // Messages
    riscvBasicIntState intState;        // basic interrupt state
    riscvCLICOutState  clicState;       // CLIC interrupt state

    // JIT code translation control
    riscvBlockStateP   blockState;      // active block state

    // Enhanced model support callbacks
    riscvModelCB       cb;				// implemented by base model
    riscvExtCBP        extCBs;   		// implemented in extension

    // Vector extension
    Uns8               vFieldMask;          	// vector field mask
    Uns8               vActiveMask;         	// vector active element mask
    Bool               vFirstFault;          	// vector first fault active?
    Uns64              vTmp;                 	// vector operation temporary
    UnsPS              vBase[NUM_BASE_REGS];  	// indexed base registers
    Uns32             *v;                     	// vector registers (configurable size)

} riscv;

//
// This tag value is used to specify that there is no active LR/SC
//
#define RISCV_NO_TAG -1

//
// Return current operating mode
//
inline static riscvMode getCurrentMode(riscvP riscv) {
    return riscv->mode & RISCV_MODE_MACHINE;
}

//
// Return mask of implemented ASID bits
//
inline static Uns32 getASIDMask(riscvP riscv) {
    return (1<<riscv->configInfo.ASID_bits)-1;
}

//
// Return address mask for the given number of bits
//
inline static Uns64 getAddressMask(Uns32 bits) {
    return (bits==64) ? -1 : ((1ULL<<bits)-1);
}

//
// Is the processor in Debug mode?
//
inline static Bool inDebugMode(riscvP riscv) {
    return riscv->DM;
}

//
// Is CLIC interrupt controller present?
//
inline static Bool CLICPresent(riscvP riscv) {
    return riscv->configInfo.CLICLEVELS;
}

//
// Is CLIC interrupt controller present and implemented internally?
//
inline static Bool CLICInternal(riscvP riscv) {
    return CLICPresent(riscv) && !riscv->configInfo.externalCLIC;
}

//
// Is CLIC interrupt controller present and implemented externally?
//
inline static Bool CLICExternal(riscvP riscv) {
    return CLICPresent(riscv) && riscv->configInfo.externalCLIC;
}

//
// Is basic interrupt controller present?
//
inline static Bool basicICPresent(riscvP riscv) {
    return !CLICPresent(riscv) || riscv->configInfo.CLICANDBASIC;
}

//
// Should CLIC be used for M-mode interrupts?
//
inline static Bool useCLICM(riscvP riscv) {
    return RD_CSR_FIELD(riscv, mtvec, MODE)==riscv_int_CLIC;
}

//
// Should CLIC be used for S-mode interrupts?
//
inline static Bool useCLICS(riscvP riscv) {
    return RD_CSR_FIELD(riscv, stvec, MODE)==riscv_int_CLIC;
}

//
// Should CLIC be used for U-mode interrupts?
//
inline static Bool useCLICU(riscvP riscv) {
    return RD_CSR_FIELD(riscv, utvec, MODE)==riscv_int_CLIC;
}

//
// Compose vtype
//
inline static riscvVType composeVType(riscvP riscv, Uns32 vtypeBits) {
    riscvVType vtype = {format : riscv->vtypeFormat, u : {u32 : vtypeBits}};
    return vtype;
}

//
// Return current vtype
//
inline static riscvVType getCurrentVType(riscvP riscv) {
    return composeVType(riscv, RD_CSR(riscv, vtype));
}

//
// Return current SEW
//
inline static Uns32 getCurrentSEW(riscvP riscv) {
    return getVTypeSEW(getCurrentVType(riscv));
}

//
// Return current vector signed vlmul
//
inline static Int32 getCurrentSVLMUL(riscvP riscv) {
    return getVTypeSVLMUL(getCurrentVType(riscv));
}


