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
#include "vmi/vmiDbg.h"
#include "vmi/vmiTypes.h"

// model header files
#include "riscvMode.h"
#include "riscvRegisters.h"
#include "riscvTypeRefs.h"
#include "riscvTypes.h"
#include "riscvVariant.h"


////////////////////////////////////////////////////////////////////////////////
// CSR ENUMERATION
////////////////////////////////////////////////////////////////////////////////

//
// Construct enumeration member name from register name
//
#define CSR_ID(_R) CSR_ID_##_R

//
// Construct enumeration member names from the given base and indices 0..9
//
#define CSR_ID_0_9(_R) \
    CSR_ID(_R##0),      \
    CSR_ID(_R##1),      \
    CSR_ID(_R##2),      \
    CSR_ID(_R##3),      \
    CSR_ID(_R##4),      \
    CSR_ID(_R##5),      \
    CSR_ID(_R##6),      \
    CSR_ID(_R##7),      \
    CSR_ID(_R##8),      \
    CSR_ID(_R##9)

//
// Construct enumeration member names from the given base and indices 3..31
//
#define CSR_ID_3_31(_R) \
    CSR_ID(_R##3),      \
    CSR_ID(_R##4),      \
    CSR_ID(_R##5),      \
    CSR_ID(_R##6),      \
    CSR_ID(_R##7),      \
    CSR_ID(_R##8),      \
    CSR_ID(_R##9),      \
    CSR_ID_0_9(_R##1),  \
    CSR_ID_0_9(_R##2),  \
    CSR_ID(_R##30),     \
    CSR_ID(_R##31)

//
// Construct enumeration member names from the given base and indices 0..3
//
#define CSR_ID_0_3(_R) \
    CSR_ID(_R##0),      \
    CSR_ID(_R##1),      \
    CSR_ID(_R##2),      \
    CSR_ID(_R##3)

//
// Construct enumeration member names from the given base and indices 0..15
//
#define CSR_ID_0_15(_R) \
    CSR_ID_0_9(_R),     \
    CSR_ID(_R##10),     \
    CSR_ID(_R##11),     \
    CSR_ID(_R##12),     \
    CSR_ID(_R##13),     \
    CSR_ID(_R##14),     \
    CSR_ID(_R##15)

//
// Construct enumeration member names from the given base and indices 0..63
//
#define CSR_ID_0_63(_R) \
    CSR_ID_0_9(_R),     \
    CSR_ID_0_9(_R##1),  \
    CSR_ID_0_9(_R##2),  \
    CSR_ID_0_9(_R##3),  \
    CSR_ID_0_9(_R##4),  \
    CSR_ID_0_9(_R##5),  \
    CSR_ID(_R##60),     \
    CSR_ID(_R##61),     \
    CSR_ID(_R##62),     \
    CSR_ID(_R##63)

//
// Identifiers for each implemented CSR
//
typedef enum riscvCSRIdE {

    CSR_ID      (ustatus),      // 0x000
    CSR_ID      (fflags),       // 0x001
    CSR_ID      (frm),          // 0x002
    CSR_ID      (fcsr),         // 0x003
    CSR_ID      (uie),          // 0x004
    CSR_ID      (utvec),        // 0x005
    CSR_ID      (utvt),         // 0x007
    CSR_ID      (vstart),       // 0x008
    CSR_ID      (vxsat),        // 0x009
    CSR_ID      (vxrm),         // 0x00A
    CSR_ID      (vcsr),         // 0x00F
    CSR_ID      (uscratch),     // 0x040
    CSR_ID      (uepc),         // 0x041
    CSR_ID      (ucause),       // 0x042
    CSR_ID      (utval),        // 0x043
    CSR_ID      (uip),          // 0x044
    CSR_ID      (unxti),        // 0x045
    CSR_ID      (uintstatus),   // 0x046
    CSR_ID      (uintthresh),   // 0x047
    CSR_ID      (uscratchcswl), // 0x049

    CSR_ID      (cycle),        // 0xC00
    CSR_ID      (time),         // 0xC01
    CSR_ID      (instret),      // 0xC02
    CSR_ID_3_31 (hpmcounter),   // 0xC03-0xC1F
    CSR_ID      (vl),           // 0xC20
    CSR_ID      (vtype),        // 0xC21
    CSR_ID      (vlenb),        // 0xC22
    CSR_ID      (cycleh),       // 0xC80
    CSR_ID      (timeh),        // 0xC80
    CSR_ID      (instreth),     // 0xC80
    CSR_ID_3_31 (hpmcounterh),  // 0xC83-0xC9F

    CSR_ID      (sstatus),      // 0x100
    CSR_ID      (sedeleg),      // 0x102
    CSR_ID      (sideleg),      // 0x103
    CSR_ID      (sie),          // 0x104
    CSR_ID      (stvec),        // 0x105
    CSR_ID      (scounteren),   // 0x106
    CSR_ID      (stvt),         // 0x107
    CSR_ID      (sscratch),     // 0x140
    CSR_ID      (sepc),         // 0x141
    CSR_ID      (scause),       // 0x142
    CSR_ID      (stval),        // 0x143
    CSR_ID      (sip),          // 0x144
    CSR_ID      (snxti),        // 0x145
    CSR_ID      (sintstatus),   // 0x146
    CSR_ID      (sintthresh),   // 0x147
    CSR_ID      (sscratchcsw),  // 0x148
    CSR_ID      (sscratchcswl), // 0x149
    CSR_ID      (satp),         // 0x180

    CSR_ID      (hstatus),      // 0x600
    CSR_ID      (hedeleg),      // 0x602
    CSR_ID      (hideleg),      // 0x603
    CSR_ID      (hie),          // 0x604
    CSR_ID      (hcounteren),   // 0x606
    CSR_ID      (hgeie),        // 0x607
    CSR_ID      (htval),        // 0x643
    CSR_ID      (hip),          // 0x644
    CSR_ID      (hvip),         // 0x645
    CSR_ID      (htinst),       // 0x64A
    CSR_ID      (hgeip),        // 0xE12
    CSR_ID      (hgatp),        // 0x680
    CSR_ID      (htimedelta),   // 0x605
    CSR_ID      (htimedeltah),  // 0x615

    CSR_ID      (vsstatus),     // 0x200
    CSR_ID      (vsie),         // 0x204
    CSR_ID      (vstvec),       // 0x205
    CSR_ID      (vsscratch),    // 0x240
    CSR_ID      (vsepc),        // 0x241
    CSR_ID      (vscause),      // 0x242
    CSR_ID      (vstval),       // 0x243
    CSR_ID      (vsip),         // 0x244
    CSR_ID      (vsatp),        // 0x280

    CSR_ID      (mvendorid),    // 0xF11
    CSR_ID      (marchid),      // 0xF12
    CSR_ID      (mimpid),       // 0xF13
    CSR_ID      (mhartid),      // 0xF14
    CSR_ID      (mstatus),      // 0x300
    CSR_ID      (misa),         // 0x301
    CSR_ID      (medeleg),      // 0x302
    CSR_ID      (mideleg),      // 0x303
    CSR_ID      (mie),          // 0x304
    CSR_ID      (mtvec),        // 0x305
    CSR_ID      (mcounteren),   // 0x306
    CSR_ID      (mtvt),         // 0x307
    CSR_ID      (mstatush),     // 0x310
    CSR_ID      (mcountinhibit),// 0x320
    CSR_ID      (mscratch),     // 0x340
    CSR_ID      (mepc),         // 0x341
    CSR_ID      (mcause),       // 0x342
    CSR_ID      (mtval),        // 0x343
    CSR_ID      (mip),          // 0x344
    CSR_ID      (mnxti),        // 0x345
    CSR_ID      (mintstatus),   // 0x346
    CSR_ID      (mintthresh),   // 0x347
    CSR_ID      (mscratchcsw),  // 0x348
    CSR_ID      (mscratchcswl), // 0x349
    CSR_ID      (mclicbase),    // 0x34B
    CSR_ID_0_15 (pmpcfg),       // 0x3A0-0x3AF
    CSR_ID_0_63 (pmpaddr),      // 0x3B0-0x3EF
    CSR_ID      (mcycle),       // 0xB00
    CSR_ID      (minstret),     // 0xB02
    CSR_ID_3_31 (mhpmcounter),  // 0xB03-0xB1F
    CSR_ID      (mcycleh),      // 0xB80
    CSR_ID      (minstreth),    // 0xB82
    CSR_ID_3_31 (mhpmcounterh), // 0xB83-0xB9F
    CSR_ID_3_31 (mhpmevent),    // 0x323-0x33F

    CSR_ID      (tselect),      // 0x7A0
    CSR_ID      (tdata1),       // 0x7A1
    CSR_ID      (tdata2),       // 0x7A2
    CSR_ID      (tdata3),       // 0x7A3

    CSR_ID      (dcsr),         // 0x7B0
    CSR_ID      (dpc),          // 0x7B1
    CSR_ID      (dscratch0),    // 0x7B2
    CSR_ID      (dscratch1),    // 0x7B3

    // keep last (used to define size of the enumeration)
    CSR_ID      (LAST)

} riscvCSRId;

//
// CSRs in this range are accessible only in debug mode
//
#define CSR_DEGUG_START     0x7B0
#define CSR_DEGUG_END       0x7BF
#define IS_DEBUG_CSR(_NUM)  (((_NUM)>=CSR_DEGUG_START) && ((_NUM)<=CSR_DEGUG_END))


////////////////////////////////////////////////////////////////////////////////
// INITIALIZATION
////////////////////////////////////////////////////////////////////////////////

//
// Initialize CSR state
//
void riscvCSRInit(riscvP riscv, Uns32 index);

//
// Free CSR state
//
void riscvCSRFree(riscvP riscv);

//
// Reset CSR state
//
void riscvCSRReset(riscvP riscv);

//
// Allocate CSR remap list
//
void riscvNewCSRRemaps(riscvP riscv, const char *remaps);


////////////////////////////////////////////////////////////////////////////////
// DISASSEMBLER INTERFACE ACCESS FUNCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Return CSR name for the given index number (or NULL if undefined)
//
const char *riscvGetCSRName(riscvP riscv, Uns32 csrNum);


////////////////////////////////////////////////////////////////////////////////
// DEBUG INTERFACE ACCESS FUNCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Read a CSR given its id
//
Bool riscvReadCSR(riscvCSRAttrsCP attrs, riscvP riscv, void *buffer);

//
// Write a CSR given its id
//
Bool riscvWriteCSR(riscvCSRAttrsCP attrs, riscvP riscv, const void *buffer);


////////////////////////////////////////////////////////////////////////////////
// LINKED MODEL ACCESS FUNCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Read a CSR in the model given its number
//
Uns64 riscvReadCSRNum(riscvP riscv, Uns32 csrNum);

//
// Write a CSR in the model given its number
//
Uns64 riscvWriteCSRNum(riscvP riscv, riscvCSRId csrNum, Uns64 newValue);

//
// Read a CSR in the base model given its id
//
Uns64 riscvReadBaseCSR(riscvP riscv, riscvCSRId id);

//
// Write a CSR in the base model given its id
//
Uns64 riscvWriteBaseCSR(riscvP riscv, riscvCSRId id, Uns64 newValue);


////////////////////////////////////////////////////////////////////////////////
// MORPH-TIME INTERFACE ACCESS FUNCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Validate CSR with the given index can be accessed for read or write in the
// current processor mode, and return either a true CSR id or an error code id
//
riscvCSRAttrsCP riscvValidateCSRAccess(
    riscvP riscv,
    Uns32  csrNum,
    Bool   read,
    Bool   write
);

//
// Emit code to read a CSR
//
void riscvEmitCSRRead(
    riscvCSRAttrsCP attrs,
    riscvP          riscv,
    vmiReg          rd,
    Bool            isWrite
);

//
// Emit code to write a CSR
//
void riscvEmitCSRWrite(
    riscvCSRAttrsCP attrs,
    riscvP          riscv,
    vmiReg          rd,
    vmiReg          rs,
    vmiReg          tmp
);


////////////////////////////////////////////////////////////////////////////////
// CSR ITERATOR AND REGISTRATION
////////////////////////////////////////////////////////////////////////////////

//
// Structure filled with CSR register details by riscvGetCSRDetails
//
typedef struct riscvCSRDetailsS {
    riscvCSRAttrsCP attrs;
    riscvMode       mode;
    Bool            rdRaw;
    Bool            wrRaw;
    Bool            extension;
    vmiReg          raw;
    vmiRegAccess    access;
} riscvCSRDetails, *riscvCSRDetailsP;

//
// Iterator filling 'details' with the next CSR register details -
// 'details.name' should be initialized to NULL prior to the first call
//
Bool riscvGetCSRDetails(
    riscvP           riscv,
    riscvCSRDetailsP details,
    Uns32           *csrNumP,
    Bool             normal
);

//
// Register new externally-implemented CSR
//
void riscvNewCSR(
    riscvCSRAttrsP  attrs,
    riscvCSRAttrsCP src,
    riscvP          riscv,
    vmiosObjectP    object
);


////////////////////////////////////////////////////////////////////////////////
// COUNTER INHIBIT
////////////////////////////////////////////////////////////////////////////////

//
// Structure used when updating state when inhibit values change
//
typedef struct riscvCountStateS {
    Bool  inhibitCycle;     // old value of cycle count inhibit
    Bool  inhibitInstret;   // old value of retired instruction inhibit
    Uns64 cycle;            // cycle count before update
    Uns64 instret;          // retired instruction count before update
} riscvCountState, *riscvCountStateP;

//
// Get state before possible inhibit update
//
void riscvPreInhibit(riscvP riscv, riscvCountStateP state);

//
// Update state after possible inhibit update
//
void riscvPostInhibit(riscvP riscv, riscvCountStateP state, Bool preIncrement);

//
// Is cycle count inhibited?
//
Bool riscvInhibitCycle(riscvP riscv);

//
// Is retired instruction count inhibited?
//
Bool riscvInhibitInstret(riscvP riscv);


////////////////////////////////////////////////////////////////////////////////
// SAVE/RESTORE SUPPORT
////////////////////////////////////////////////////////////////////////////////

//
// Save CSR state not covered by register read/write API
//
void riscvCSRSave(
    riscvP              riscv,
    vmiSaveContextP     cxt,
    vmiSaveRestorePhase phase
);

//
// Restore CSR state not covered by register read/write API
//
void riscvCSRRestore(
    riscvP              riscv,
    vmiRestoreContextP  cxt,
    vmiSaveRestorePhase phase
);


////////////////////////////////////////////////////////////////////////////////
// POLYMORPHIC VECTOR BLOCK CONTROL
////////////////////////////////////////////////////////////////////////////////

//
// Refresh the vector polymorphic block key
//
void riscvRefreshVectorPMKey(riscvP riscv);

//
// Update vtype CSR
//
void riscvSetVType(riscvP riscv, Bool vill, riscvVType vtype);

//
// Update vl CSR and aliases of it
//
void riscvSetVL(riscvP riscv, Uns64 vl);


////////////////////////////////////////////////////////////////////////////////
// FLAG MANAGEMENT
////////////////////////////////////////////////////////////////////////////////

//
// Consolidate floating point and fixed point flags on CSR view
//
void riscvConsolidateFPFlags(riscvP riscv);


////////////////////////////////////////////////////////////////////////////////
// REGISTER DEFINITIONS
////////////////////////////////////////////////////////////////////////////////

//
// Use this to declare a 32-bit register type name
//
#define CSR_REG_TYPE_32(_N) riscvCSR32_##_N

//
// Use this to declare a 64-bit register type name
//
#define CSR_REG_TYPE_64(_N) riscvCSR64_##_N

//
// Use this to declare a register type name
//
#define CSR_REG_TYPE(_N)    riscvCSR_##_N

//
// Use this to declare a register with 32-bit view only (zero-extended to 64)
//
#define CSR_REG_STRUCT_DECL_32(_N) typedef union { \
    union {                             \
        Uns32               bits;       \
        CSR_REG_TYPE_32(_N) fields;     \
    } u32;                              \
    union {                             \
        Uns64               bits;       \
        CSR_REG_TYPE_32(_N) fields;     \
    } u64;                              \
} CSR_REG_TYPE(_N)

//
// Use this to declare a register with 32-bit view equivalent to lower half of
// 64-bit view
//
#define CSR_REG_STRUCT_DECL_64(_N) typedef union { \
    union {                             \
        Uns32               bits;       \
        CSR_REG_TYPE_64(_N) fields;     \
    } u32;                              \
    union {                             \
        Uns64               bits;       \
        CSR_REG_TYPE_64(_N) fields;     \
    } u64;                              \
} CSR_REG_TYPE(_N)

//
// Use this to declare a register with distinct 32/64 bit views
//
#define CSR_REG_STRUCT_DECL_32_64(_N) typedef union { \
    union {                             \
        Uns32               bits;       \
        CSR_REG_TYPE_32(_N) fields;     \
    } u32;                              \
    union {                             \
        Uns64               bits;       \
        CSR_REG_TYPE_64(_N) fields;     \
    } u64;                              \
} CSR_REG_TYPE(_N)


// -----------------------------------------------------------------------------
// generic 32-bit register
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 value;
} CSR_REG_TYPE_32(generic32);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(generic32);

// -----------------------------------------------------------------------------
// generic XLEN-width register
// -----------------------------------------------------------------------------

// 64-bit view
typedef struct {
    Uns64 value;
} CSR_REG_TYPE_64(genericXLEN);

// define 32/64 bit type
CSR_REG_STRUCT_DECL_64(genericXLEN);

// -----------------------------------------------------------------------------
// ustatus      (id 0x000)
// sstatus      (id 0x100)
// vsstatus     (id 0x200)
// mstatus      (id 0x300)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 UIE  : 1;         // User mode interrupt enable, N only
    Uns32 SIE  : 1;         // Supervisor mode interrupt enable
    Uns32 _u0  : 1;
    Uns32 MIE  : 1;         // Machine mode interrupt enable
    Uns32 UPIE : 1;         // User mode interrupt enable (stacked), N only
    Uns32 SPIE : 1;         // Supervisor mode interrupt enable (stacked)
    Uns32 UBE  : 1;         // User mode big-endian
    Uns32 MPIE : 1;         // Machine mode interrupt enable (stacked)
    Uns32 SPP  : 1;         // Supervisor previous mode
    Uns32 VS_9 : 2;         // Vector Extension dirty state (version 0.9)
    Uns32 MPP  : 2;         // Machine previous mode
    Uns32 FS   : 2;         // Floating point dirty state
    Uns32 XS   : 2;         // User extension dirty state
    Uns32 MPRV : 1;         // Modify privilege (requires U extension)
    Uns32 SUM  : 1;         // Permit Supervisor User access (requires S extension)
    Uns32 MXR  : 1;         // Make executable readable (requires S extension)
    Uns32 TVM  : 1;         // Trap virtual memory (requires S extension)
    Uns32 TW   : 1;         // Timeout wait (requires S extension)
    Uns32 TSR  : 1;         // Trap SRET (requires S extension)
    Uns32 VS_8 : 2;         // Vector Extension dirty state (version 0.8)
    Uns32 _u3  : 6;
    Uns32 SD   : 1;         // Dirty state summary bit (read only)
} CSR_REG_TYPE_32(status);

// 64-bit view
typedef struct {
    Uns64 UIE  :  1;        // User mode interrupt enable, N only
    Uns64 SIE  :  1;        // Supervisor mode interrupt enable
    Uns64 _u0  :  1;
    Uns64 MIE  :  1;        // Machine mode interrupt enable
    Uns64 UPIE :  1;        // User mode interrupt enable (stacked), N only
    Uns64 SPIE :  1;        // Supervisor mode interrupt enable (stacked)
    Uns64 UBE  :  1;        // User mode big-endian
    Uns64 MPIE :  1;        // Machine mode interrupt enable (stacked)
    Uns64 SPP  :  1;        // Supervisor previous mode
    Uns32 VS_9 :  2;        // Vector Extension dirty state (version 0.9)
    Uns64 MPP  :  2;        // Machine previous mode
    Uns64 FS   :  2;        // Floating point dirty state
    Uns64 XS   :  2;        // User extension dirty state
    Uns64 MPRV :  1;        // Modify privilege (requires U extension)
    Uns64 SUM  :  1;        // Permit Supervisor User access (requires S extension)
    Uns64 MXR  :  1;        // Make executable readable (requires S extension)
    Uns64 TVM  :  1;        // Trap virtual memory (requires S extension)
    Uns64 TW   :  1;        // Timeout wait (requires S extension)
    Uns64 TSR  :  1;        // Trap SRET (requires S extension)
    Uns32 VS_8 :  2;        // Vector Extension dirty state (version 0.8)
    Uns64 _u3  :  7;
    Uns64 UXL  :  2;        // TODO: User mode XLEN
    Uns64 SXL  :  2;        // TODO: Supervisor mode XLEN
    Uns64 SBE  :  1;        // Supervisor mode big-endian
    Uns64 MBE  :  1;        // Machine mode big-endian
    Uns64 GVA  :  1;        // Guest virtual address
    Uns64 MPV  :  1;        // Machine previous virtualization mode
    Uns64 _u4  : 23;
    Uns64 SD   :  1;        // Dirty state summary bit (read only)
} CSR_REG_TYPE_64(status);

// define 32/64 bit type
CSR_REG_STRUCT_DECL_32_64(status);

// define alias types
typedef CSR_REG_TYPE(status) CSR_REG_TYPE(ustatus);
typedef CSR_REG_TYPE(status) CSR_REG_TYPE(sstatus);
typedef CSR_REG_TYPE(status) CSR_REG_TYPE(mstatus);

// define alias masks (include sstatus.VS field in both 0.8 and 0.9 positions)
#define sstatus_AMASK 0x80000003818de773ULL
#define ustatus_AMASK 0x0000000000000011ULL

// define bit masks
#define WM_mstatus_FS   (3<<13)
#define WM_mstatus_TVM  (1<<20)
#define WM_mstatus_TW   (1<<21)
#define WM_mstatus_TSR  (1<<22)
#define WM_mstatus_VS_8 (3<<23)
#define WM_mstatus_VS_9 (3<<9)
#define WM_mstatus_IE   0xf
#define WM_mstatus_UBE  (1<<6)
#define WM_mstatus_SBE  (1ULL<<36)
#define WM_mstatus_MBE  (1ULL<<37)
#define WM_mstatus_BE   (WM_mstatus_UBE|WM_mstatus_SBE|WM_mstatus_MBE)
#define WM_mstatus_GVA  (1ULL<<38)
#define WM_mstatus_MPV  (1ULL<<39)

// -----------------------------------------------------------------------------
// mstatush     (id 0x310)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 _u0 :  4;
    Uns32 SBE :  1;        // Supervisor mode big-endian
    Uns32 MBE :  1;        // Machine mode big-endian
    Uns32 GVA :  1;        // Guest virtual address
    Uns32 MPV :  1;        // Machine previous virtualization mode
    Uns32 _u1 : 24;
} CSR_REG_TYPE_32(mstatush);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(mstatush);

// define write masks
#define WM_mstatush_SBE (1<<4)
#define WM_mstatush_MBE (1<<5)
#define WM_mstatush_BE  (WM_mstatush_SBE|WM_mstatush_MBE)
#define WM_mstatush_GVA (1<<6)
#define WM_mstatush_MPV (1<<7)

// -----------------------------------------------------------------------------
// hstatus      (id 0x600)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 _u1   : 5;
    Uns32 VSBE  : 1;        // VS mode big-endian
    Uns32 GVA   : 1;        // TODO: Guest virtual address
    Uns32 SPV   : 1;        // Supervisor previous virtualization mode
    Uns32 SPVP  : 1;        // Supervisor previous virtual privilege
    Uns32 HU    : 1;        // Hypervisor user mode
    Uns32 _u2   : 2;
    Uns32 VGEIN : 6;        // TODO: Virtual guest external interrupt number
    Uns32 _u3   : 2;
    Uns32 VTVM  : 1;        // Trap virtual memory
    Uns32 VTW   : 1;        // Timeout wait
    Uns32 VTSR  : 1;        // Trap SRET
    Uns32 _u4   : 9;
} CSR_REG_TYPE_32(hstatus);

// 64-bit view
typedef struct {
    Uns64 _u1   :  5;
    Uns64 VSBE  :  1;       // VS mode big-endian
    Uns64 GVA   :  1;       // TODO: Guest virtual address
    Uns64 SPV   :  1;       // Supervisor previous virtualization mode
    Uns64 SPVP  :  1;       // Supervisor previous virtual privilege
    Uns64 HU    :  1;       // Hypervisor user mode
    Uns64 _u2   :  2;
    Uns64 VGEIN :  6;       // TODO: Virtual guest external interrupt number
    Uns64 _u3   :  2;
    Uns64 VTVM  :  1;       // Trap virtual memory
    Uns64 VTW   :  1;       // Timeout wait
    Uns64 VTSR  :  1;       // Trap SRET
    Uns64 _u4   :  9;
    Uns64 VSXL  :  2;       // TODO: VS mode XLEN
    Uns64 _u5   : 30;
} CSR_REG_TYPE_64(hstatus);

// define 32/64 bit type
CSR_REG_STRUCT_DECL_32_64(hstatus);

// define write masks
#define WM_hstatus 0x007003c0

// define bit masks
#define WM_hstatus_VSBE (1<<5)
#define WM_hstatus_SPV  (1<<7)
#define WM_hstatus_HU   (1<<9)
#define WM_hstatus_TW   (1<<21)

// -----------------------------------------------------------------------------
// fflags       (id 0x001)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 NX  :  1;
    Uns32 UF  :  1;
    Uns32 OF  :  1;
    Uns32 DZ  :  1;
    Uns32 NV  :  1;
    Uns32 _u0 : 27;
} CSR_REG_TYPE_32(fflags);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(fflags);

// define write masks
#define WM32_fflags 0x1f

// -----------------------------------------------------------------------------
// frm          (id 0x002)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 frm :  3;
    Uns32 _u0 : 29;
} CSR_REG_TYPE_32(frm);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(frm);

// define write masks
#define WM32_frm 0x7

// -----------------------------------------------------------------------------
// fcsr         (id 0x003)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 NX    :  1;
    Uns32 UF    :  1;
    Uns32 OF    :  1;
    Uns32 DZ    :  1;
    Uns32 NV    :  1;
    Uns32 frm   :  3;
    Uns32 vxsat :  1;   // Vector Version 0.8 only
    Uns32 vxrm  :  2;   // Vector Version 0.8 only
    Uns32 _u0   : 21;
} CSR_REG_TYPE_32(fcsr);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(fcsr);

// define write masks
#define WM32_fcsr_f       0x0ff
#define WM32_fcsr_v       0x700
#define WM32_fcsr_frm_msb 0x080

// -----------------------------------------------------------------------------
// misa         (id 0x301)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns64 Extensions : 26;
    Uns64 _u1        :  4;
    Uns64  MXL       :  2;
} CSR_REG_TYPE_32(isa);

// 64-bit view
typedef struct {
    Uns64 Extensions : 26;
    Uns64 _u1        : 36;
    Uns64  MXL       :  2;
} CSR_REG_TYPE_64(isa);

// define 32/64 bit type
CSR_REG_STRUCT_DECL_32_64(isa);

// define alias types
typedef CSR_REG_TYPE(isa) CSR_REG_TYPE(misa);

// -----------------------------------------------------------------------------
// sedeleg      (id 0x102)
// hedeleg      (id 0x602)
// medeleg      (id 0x302)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 SynchronousExceptions;
} CSR_REG_TYPE_32(edeleg);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(edeleg);

// define alias types
typedef CSR_REG_TYPE(edeleg) CSR_REG_TYPE(sedeleg);
typedef CSR_REG_TYPE(edeleg) CSR_REG_TYPE(hedeleg);
typedef CSR_REG_TYPE(edeleg) CSR_REG_TYPE(medeleg);

// -----------------------------------------------------------------------------
// sideleg      (id 0x103)
// hideleg      (id 0x603)
// mideleg      (id 0x303)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 Interrupts;
} CSR_REG_TYPE_32(ideleg);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(ideleg);

// define alias types
typedef CSR_REG_TYPE(ideleg) CSR_REG_TYPE(sideleg);
typedef CSR_REG_TYPE(ideleg) CSR_REG_TYPE(hideleg);
typedef CSR_REG_TYPE(ideleg) CSR_REG_TYPE(mideleg);

// -----------------------------------------------------------------------------
// uie          (id 0x004)
// sie          (id 0x104)
// vsie         (id 0x204)
// hie          (id 0x604)
// mie          (id 0x304)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 USIE  : 1;
    Uns32 SSIE  : 1;
    Uns32 VSSIE : 1;
    Uns32 MSIE  : 1;
    Uns32 UTIE  : 1;
    Uns32 STIE  : 1;
    Uns32 VSTIE : 1;
    Uns32 MTIE  : 1;
    Uns32 UEIE  : 1;
    Uns32 SEIE  : 1;
    Uns32 VSEIE : 1;
    Uns32 MEIE  : 1;
} CSR_REG_TYPE_32(ie);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(ie);

// define alias types
typedef CSR_REG_TYPE(ie) CSR_REG_TYPE(uie);
typedef CSR_REG_TYPE(ie) CSR_REG_TYPE(sie);
typedef CSR_REG_TYPE(ie) CSR_REG_TYPE(mie);

// define write masks
#define WM32_hie 0x1444

// -----------------------------------------------------------------------------
// utvec        (id 0x005)
// stvec        (id 0x105)
// vstvec       (id 0x205)
// mtvec        (id 0x305)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 MODE :  2;
    Uns32 BASE : 30;
} CSR_REG_TYPE_32(tvec);

// 64-bit view
typedef struct {
    Uns64 MODE :  2;
    Uns64 BASE : 62;
} CSR_REG_TYPE_64(tvec);

// define 32/64 bit type
CSR_REG_STRUCT_DECL_32_64(tvec);

// define alias types
typedef CSR_REG_TYPE(tvec) CSR_REG_TYPE(utvec);
typedef CSR_REG_TYPE(tvec) CSR_REG_TYPE(stvec);
typedef CSR_REG_TYPE(tvec) CSR_REG_TYPE(mtvec);

// define write masks
#define WM64_tvec_orig -3
#define WM64_tvec_clic -2

// -----------------------------------------------------------------------------
// scounteren   (id 0x106)
// hcounteren   (id 0x606)
// mcounteren   (id 0x306)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 CY  : 1;
    Uns32 TM  : 1;
    Uns32 IR  : 1;
    Uns32 HPM : 29;
} CSR_REG_TYPE_32(counteren);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(counteren);

// define alias types
typedef CSR_REG_TYPE(counteren) CSR_REG_TYPE(scounteren);
typedef CSR_REG_TYPE(counteren) CSR_REG_TYPE(hcounteren);
typedef CSR_REG_TYPE(counteren) CSR_REG_TYPE(mcounteren);

// define write masks
#define WM32_counteren_CY  0x00000001
#define WM32_counteren_TM  0x00000002
#define WM32_counteren_IR  0x00000004
#define WM32_counteren_HPM 0xfffffff8

// -----------------------------------------------------------------------------
// utvt         (id 0x007)
// stvt         (id 0x107)
// mtvt         (id 0x307)
// -----------------------------------------------------------------------------

typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(utvt);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(stvt);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(mtvt);

// define write masks
#define WM64_tvt -0x40

// -----------------------------------------------------------------------------
// mcountinhibit (id 0x320)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(counteren) CSR_REG_TYPE(mcountinhibit);

// -----------------------------------------------------------------------------
// mhpmevent    (id 0x323-0x33F)
// -----------------------------------------------------------------------------

typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(mhpmevent);

// -----------------------------------------------------------------------------
// uscratch     (id 0x040)
// sscratch     (id 0x140)
// vsscratch    (id 0x240)
// mscratch     (id 0x340)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(uscratch);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(sscratch);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(mscratch);

// -----------------------------------------------------------------------------
// uepc         (id 0x041)
// sepc         (id 0x141)
// vsepc        (id 0x241)
// mepc         (id 0x341)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(uepc);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(sepc);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(mepc);

// -----------------------------------------------------------------------------
// ucause       (id 0x042)
// scause       (id 0x142)
// vscause      (id 0x242)
// mcause       (id 0x342)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 ExceptionCode : 16;
    Uns32 pil           : 8;
    Uns32 _u1           : 3;
    Uns32 pie           : 1;
    Uns32 pp            : 2;
    Uns32 inhv          : 1;
    Uns32 Interrupt     : 1;
} CSR_REG_TYPE_32(cause);

// 64-bit view
typedef struct {
    Uns64 ExceptionCode : 16;
    Uns64 pil           : 8;
    Uns64 _u1           : 3;
    Uns64 pie           : 1;
    Uns64 pp            : 2;
    Uns64 inhv          : 1;
    Uns64 _u2           : 32;
    Uns64 Interrupt     : 1;
} CSR_REG_TYPE_64(cause);

// define 32/64 bit type
CSR_REG_STRUCT_DECL_32_64(cause);

// define alias types
typedef CSR_REG_TYPE(cause) CSR_REG_TYPE(ucause);
typedef CSR_REG_TYPE(cause) CSR_REG_TYPE(scause);
typedef CSR_REG_TYPE(cause) CSR_REG_TYPE(mcause);

// -----------------------------------------------------------------------------
// utval        (id 0x043)
// stval        (id 0x143)
// vstval       (id 0x243)
// mtval        (id 0x343)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(utval);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(stval);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(mtval);

// -----------------------------------------------------------------------------
// uip          (id 0x044)
// sip          (id 0x144)
// vsip         (id 0x244)
// hip          (id 0x644)
// hvip         (id 0x645)
// mip          (id 0x344)
// -----------------------------------------------------------------------------

// 64-bit view
typedef struct {
    Uns32 USIP  :  1;
    Uns32 SSIP  :  1;
    Uns32 VSSIP :  1;
    Uns32 MSIP  :  1;
    Uns32 UTIP  :  1;
    Uns32 STIP  :  1;
    Uns32 VSTIP :  1;
    Uns32 MTIP  :  1;
    Uns32 UEIP  :  1;
    Uns32 SEIP  :  1;
    Uns32 VSEIP :  1;
    Uns32 MEIP  :  1;
    Uns32 SGEIP :  1;
    Uns32 _u3   :  3;
    Uns64 LI    : 48;
} CSR_REG_TYPE_64(ip);

// define 32 bit type
CSR_REG_STRUCT_DECL_64(ip);

// define alias types
typedef CSR_REG_TYPE(ip) CSR_REG_TYPE(uip);
typedef CSR_REG_TYPE(ip) CSR_REG_TYPE(sip);
typedef CSR_REG_TYPE(ip) CSR_REG_TYPE(vsip);
typedef CSR_REG_TYPE(ip) CSR_REG_TYPE(hip);
typedef CSR_REG_TYPE(ip) CSR_REG_TYPE(hvip);
typedef CSR_REG_TYPE(ip) CSR_REG_TYPE(mip);

// define write masks
#define WM32_ip   0x00000fff
#define WM32_uip  0x00000001
#define WM32_sip  0x00000103
#define WM32_vsip 0x00000002
#define WM32_hip  0x00000004
#define WM32_hvip 0x00000222
#define WM32_mip  0x00000337

// -----------------------------------------------------------------------------
// hgeip (id 0xE12)
// hgeie (id 0x607)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(hgeip);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(hgeie);

// define write masks
#define WM32_hgeip 0x00000000
#define WM64_hgeip 0x00000000

// -----------------------------------------------------------------------------
// uintstatus   (id 0x046)
// sintstatus   (id 0x146)
// mintstatus   (id 0x346)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 uil  : 8;
    Uns32 sil  : 8;
    Uns32 _u1  : 8;
    Uns32 mil  : 8;
} CSR_REG_TYPE_32(mintstatus);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(mintstatus);

// define write masks
#define WM32_mintstatus 0x00000000
#define WM64_mintstatus 0x00000000
#define WM32_sintstatus 0x00000000
#define WM64_sintstatus 0x00000000
#define WM32_uintstatus 0x00000000
#define WM64_uintstatus 0x00000000

// define read masks
#define RM32_sintstatus 0x0000ffff
#define RM32_uintstatus 0x000000ff

// -----------------------------------------------------------------------------
// uintthresh   (id 0x047)
// sintthresh   (id 0x147)
// mintthresh   (id 0x347)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 th  :  8;
    Uns32 _u1 : 24;
} CSR_REG_TYPE_32(intthresh);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(intthresh);

// define alias types
typedef CSR_REG_TYPE(intthresh) CSR_REG_TYPE(uintthresh);
typedef CSR_REG_TYPE(intthresh) CSR_REG_TYPE(sintthresh);
typedef CSR_REG_TYPE(intthresh) CSR_REG_TYPE(mintthresh);

// -----------------------------------------------------------------------------
// sscratchcsw (id 0x148)
// mscratchcsw (id 0x348)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(sscratchcsw);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(mscratchcsw);

// -----------------------------------------------------------------------------
// uscratchcswl (id 0x049)
// sscratchcswl (id 0x149)
// mscratchcswl (id 0x349)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(uscratchcswl);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(sscratchcswl);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(mscratchcswl);

// -----------------------------------------------------------------------------
// mclicbase    (id 0x34B)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(mclicbase);

// define write masks
#define WM32_mclicbase 0x00000000
#define WM64_mclicbase 0x00000000

// -----------------------------------------------------------------------------
// pmpcfg       (id 0x3A0-0x3A3)
// -----------------------------------------------------------------------------

// define write masks
#define WM64_pmpcfg 0x9f9f9f9f9f9f9f9fULL

// -----------------------------------------------------------------------------
// pmpaddr      (id 0x3B0-0x3BF)
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
// satp         (id 0x180)
// vsatp        (id 0x280)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 PPN  : 22;
    Uns32 ASID :  9;
    Uns32 MODE :  1;
} CSR_REG_TYPE_32(atp);

// 64-bit view
typedef struct {
    Uns64 PPN  : 44;
    Uns64 ASID : 16;
    Uns64 MODE :  4;
} CSR_REG_TYPE_64(atp);

// define 32/64 bit type
CSR_REG_STRUCT_DECL_32_64(atp);

// define alias types
typedef CSR_REG_TYPE(atp) CSR_REG_TYPE(satp);

// -----------------------------------------------------------------------------
// mcycle       (id 0xB00)
// cycle        (id 0xC00)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(mcycle);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(cycle);

// -----------------------------------------------------------------------------
// time         (id 0xC01)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(time);

// -----------------------------------------------------------------------------
// minstret     (id 0xB02)
// instret      (id 0xC02)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(minstret);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(instret);

// -----------------------------------------------------------------------------
// mhpmcounter  (id 0xB03-0xB1F)
// hpmcounter   (id 0xC03-0xC1F)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(mhpmcounter);
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(hpmcounter);

// -----------------------------------------------------------------------------
// mcycleh      (id 0xB80)
// cycleh       (id 0xC80)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(generic32) CSR_REG_TYPE(mcycleh);
typedef CSR_REG_TYPE(generic32) CSR_REG_TYPE(cycleh);

// -----------------------------------------------------------------------------
// timeh        (id 0xC81)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(generic32) CSR_REG_TYPE(timeh);

// -----------------------------------------------------------------------------
// minstreth    (id 0xB82)
// instreth     (id 0xC82)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(generic32) CSR_REG_TYPE(minstreth);
typedef CSR_REG_TYPE(generic32) CSR_REG_TYPE(instreth);

// -----------------------------------------------------------------------------
// mhpmcounterh (id 0xB83-0xB9F)
// hpmcounterh  (id 0xC83-0xC9F)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(generic32) CSR_REG_TYPE(mhpmcounterh);
typedef CSR_REG_TYPE(generic32) CSR_REG_TYPE(hpmcounterh);

// -----------------------------------------------------------------------------
// mvendorid    (id 0xF11)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 Offset :  7;
    Uns32 Bank   : 25;
} CSR_REG_TYPE_32(vendorid);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(vendorid);

// define alias types
typedef CSR_REG_TYPE(vendorid) CSR_REG_TYPE(mvendorid);

// -----------------------------------------------------------------------------
// marchid      (id 0xF12)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 ArchitectureID;
} CSR_REG_TYPE_32(archid);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(archid);

// define alias types
typedef CSR_REG_TYPE(archid) CSR_REG_TYPE(marchid);

// -----------------------------------------------------------------------------
// mimpid       (id 0xF13)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 Implementation;
} CSR_REG_TYPE_32(impid);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(impid);

// define alias types
typedef CSR_REG_TYPE(impid) CSR_REG_TYPE(mimpid);

// -----------------------------------------------------------------------------
// mhartid      (id 0xF14)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 HartID;
} CSR_REG_TYPE_32(hartid);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(hartid);

// define alias types
typedef CSR_REG_TYPE(hartid) CSR_REG_TYPE(mhartid);

// -----------------------------------------------------------------------------
// tselect      (id 0x7A0)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(tselect);

// -----------------------------------------------------------------------------
// tdata        (id 0x7A1-0x7A3)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(tdata);

// -----------------------------------------------------------------------------
// dcsr         (id 0x7B0)
// -----------------------------------------------------------------------------

// cause for entry to Debug mode
typedef enum dmCauseE {
    DMC_NONE         = 0,
    DMC_EBREAK       = 1,
    DMC_TRIGGER      = 2,
    DMC_HALTREQ      = 3,
    DMC_STEP         = 4,
    DMC_RESETHALTREQ = 5,
    DMC_HALTGROUP    = 6,
} dmCause;

// 32-bit view
typedef struct {
    Uns32   prv       :  2;
    Uns32   step      :  1;
    Uns32   nmip      :  1;
    Uns32   mprven    :  1;
    Uns32   _u0       :  1;
    dmCause cause     :  3;
    Uns32   stoptime  :  1;
    Uns32   stopcount :  1;
    Uns32   stepie    :  1;
    Uns32   ebreaku   :  1;
    Uns32   ebreaks   :  1;
    Uns32   _u1       :  1;
    Uns32   ebreakm   :  1;
    Uns32   _u2       : 12;
    Uns32   xdebugver :  4;
} CSR_REG_TYPE_32(dcsr);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(dcsr);

#define WM32_dcsr_nmip  0x008
#define WM32_dcsr_cause 0x1c0

// -----------------------------------------------------------------------------
// dpc          (id 0x7B1)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(dpc);

// define write masks
#define WM32_dpc -2
#define WM64_dpc -2

// -----------------------------------------------------------------------------
// dscratch0    (id 0x7B2)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(dscratch0);

// define write masks
#define WM32_dscratch0 -1
#define WM64_dscratch0 -1

// -----------------------------------------------------------------------------
// dscratch1    (id 0x7B3)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(dscratch1);

// define write masks
#define WM32_dscratch1 -1
#define WM64_dscratch1 -1

// -----------------------------------------------------------------------------
// vstart       (id 0x008)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(vstart);

// -----------------------------------------------------------------------------
// vxsat        (id 0x009)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 sat :  1;
    Uns32 _u1 : 31;
} CSR_REG_TYPE_32(vxsat);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(vxsat);

// define write masks
#define WM32_vxsat  0x00000001
#define WM64_vxsat  0x00000001

// -----------------------------------------------------------------------------
// vxrm         (id 0x00A)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 rm  :  2;
    Uns32 _u1 : 30;
} CSR_REG_TYPE_32(vxrm);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(vxrm);

// define write masks
#define WM32_vxrm   0x00000003
#define WM64_vxrm   0x00000003

// -----------------------------------------------------------------------------
// vcsr         (id 0x00F)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 vxsat :  1;
    Uns32 vxrm  :  2;
    Uns32 _u0   : 29;
} CSR_REG_TYPE_32(vcsr);

// define 32 bit type
CSR_REG_STRUCT_DECL_32(vcsr);

// define write masks
#define WM32_vcsr   0x00000007

// -----------------------------------------------------------------------------
// vl           (id 0xC20)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(vl);

// define write masks
#define WM32_vl     0x00000000

// -----------------------------------------------------------------------------
// vtype        (id 0xC21)
// -----------------------------------------------------------------------------

// 32-bit view
typedef struct {
    Uns32 _u1    : 31;
    Uns32 vill   :  1;
} CSR_REG_TYPE_32(vtype);

// 64-bit view
typedef struct {
    Uns64 _u1    : 63;
    Uns64 vill   :  1;
} CSR_REG_TYPE_64(vtype);

// define 32/64 bit type
CSR_REG_STRUCT_DECL_32_64(vtype);

// define write masks
#define WM32_vtype  0x00000000
#define WM64_vtype  0x00000000

// -----------------------------------------------------------------------------
// vlenb        (id 0xC22)
// -----------------------------------------------------------------------------

// define alias types
typedef CSR_REG_TYPE(genericXLEN) CSR_REG_TYPE(vlenb);

// define write masks
#define WM32_vlenb  0x00000000


////////////////////////////////////////////////////////////////////////////////
// SYSTEM REGISTER CONTAINER
////////////////////////////////////////////////////////////////////////////////

//
// Use this to define a register entry in riscvCSRs below
//
#define CSR_REG_DECL(_N)    CSR_REG_TYPE(_N) _N

//
// Use this to define a register entry in riscvCSRs below with normal and
// virtual aliases
//
#define CSR_REG_DECL_V(_N) CSR_REG_TYPE(_N) _N, v##_N

//
// Use this to define a register entry in riscvCSRs below with virtual alias
// only
//
#define CSR_REG_DECL_v(_N) CSR_REG_TYPE(_N) v##_N

//
// This type defines the CSRs implemented as true registers in the processor
// structure
//
typedef struct riscvCSRsS {

    // USER MODE CSRS
    CSR_REG_DECL  (fcsr);           // 0x003
    CSR_REG_DECL  (utvec);          // 0x005
    CSR_REG_DECL  (utvt);           // 0x007
    CSR_REG_DECL  (vstart);         // 0x008
    CSR_REG_DECL  (vxsat);          // 0x009
    CSR_REG_DECL  (vxrm);           // 0x00A
    CSR_REG_DECL  (vcsr);           // 0x00E
    CSR_REG_DECL  (uscratch);       // 0x040
    CSR_REG_DECL  (uepc);           // 0x041
    CSR_REG_DECL  (ucause);         // 0x042
    CSR_REG_DECL  (utval);          // 0x043
    CSR_REG_DECL  (uintthresh);     // 0x04A
    CSR_REG_DECL  (vl);             // 0xC20
    CSR_REG_DECL  (vtype);          // 0xC21
    CSR_REG_DECL  (vlenb);          // 0xC22

    // SUPERVISOR MODE CSRS
    CSR_REG_DECL  (sedeleg);        // 0x102
    CSR_REG_DECL  (sideleg);        // 0x103
    CSR_REG_DECL_V(stvec);          // 0x105
    CSR_REG_DECL  (scounteren);     // 0x106
    CSR_REG_DECL  (stvt);           // 0x107
    CSR_REG_DECL_V(sscratch);       // 0x140
    CSR_REG_DECL_V(sepc);           // 0x141
    CSR_REG_DECL_V(scause);         // 0x142
    CSR_REG_DECL_V(stval);          // 0x143
    CSR_REG_DECL  (sintthresh);     // 0x14A
    CSR_REG_DECL_V(satp);           // 0x180

    // HYPERVISOR MODE CSRS
    CSR_REG_DECL  (hstatus);        // 0x600
    CSR_REG_DECL  (hedeleg);        // 0x602
    CSR_REG_DECL  (hideleg);        // 0x603
    CSR_REG_DECL  (hcounteren);     // 0x606
    CSR_REG_DECL  (hgeie);          // 0x607
    CSR_REG_DECL  (hgeip);          // 0xE12

    // VIRTUAL MODE CSRS
    CSR_REG_DECL_v(sstatus);        // 0x600

    // MACHINE MODE CSRS
    CSR_REG_DECL  (mvendorid);      // 0xF11
    CSR_REG_DECL  (marchid);        // 0xF12
    CSR_REG_DECL  (mimpid);         // 0xF13
    CSR_REG_DECL  (mhartid);        // 0xF14
    CSR_REG_DECL  (mstatus);        // 0x300
    CSR_REG_DECL  (misa);           // 0x301
    CSR_REG_DECL  (medeleg);        // 0x302
    CSR_REG_DECL  (mideleg);        // 0x303
    CSR_REG_DECL  (mie);            // 0x304
    CSR_REG_DECL  (mtvec);          // 0x305
    CSR_REG_DECL  (mcounteren);     // 0x306
    CSR_REG_DECL  (mtvt);           // 0x307
    CSR_REG_DECL  (mstatush);       // 0x310
    CSR_REG_DECL  (mcountinhibit);  // 0x320
    CSR_REG_DECL  (mscratch);       // 0x340
    CSR_REG_DECL  (mepc);           // 0x341
    CSR_REG_DECL  (mcause);         // 0x342
    CSR_REG_DECL  (mtval);          // 0x343
    CSR_REG_DECL  (mip);            // 0x344
    CSR_REG_DECL  (mintstatus);     // 0x346
    CSR_REG_DECL  (mintthresh);     // 0x34A
    CSR_REG_DECL  (mclicbase);      // 0x34B

    // DEBUG MODE CSRS
    CSR_REG_DECL  (dcsr);           // 0x7B0
    CSR_REG_DECL  (dpc);            // 0x7B1
    CSR_REG_DECL  (dscratch0);      // 0x7B2
    CSR_REG_DECL  (dscratch1);      // 0x7B3

} riscvCSRs;


////////////////////////////////////////////////////////////////////////////////
// SYSTEM REGISTER WRITE MASKS
////////////////////////////////////////////////////////////////////////////////

//
// This type defines write masks for CSRs
//
typedef struct riscvCSRMasksS {

    // USER MODE CSRS
    CSR_REG_DECL  (fcsr);           // 0x003
    CSR_REG_DECL  (utvec);          // 0x005
    CSR_REG_DECL  (utvt);           // 0x007
    CSR_REG_DECL  (vstart);         // 0x008
    CSR_REG_DECL  (uepc);           // 0x041
    CSR_REG_DECL  (ucause);         // 0x042
    CSR_REG_DECL  (utval);          // 0x043

    // SUPERVISOR MODE CSRS
    CSR_REG_DECL  (sedeleg);        // 0x102
    CSR_REG_DECL  (sideleg);        // 0x103
    CSR_REG_DECL_V(stvec);          // 0x105
    CSR_REG_DECL  (stvt);           // 0x107
    CSR_REG_DECL  (scounteren);     // 0x106
    CSR_REG_DECL_V(sepc);           // 0x141
    CSR_REG_DECL  (scause);         // 0x142
    CSR_REG_DECL_V(stval);          // 0x143

    // HYPERVISOR MODE CSRS
    CSR_REG_DECL  (hstatus);        // 0x600
    CSR_REG_DECL  (hedeleg);        // 0x602
    CSR_REG_DECL  (hideleg);        // 0x603
    CSR_REG_DECL  (hcounteren);     // 0x606

    // MACHINE MODE CSRS
    CSR_REG_DECL  (mstatus);        // 0x300
    CSR_REG_DECL  (misa);           // 0x301
    CSR_REG_DECL  (medeleg);        // 0x302
    CSR_REG_DECL  (mideleg);        // 0x303
    CSR_REG_DECL  (mie);            // 0x304
    CSR_REG_DECL  (mtvec);          // 0x305
    CSR_REG_DECL  (mtvt);           // 0x307
    CSR_REG_DECL  (mcounteren);     // 0x306
    CSR_REG_DECL  (mstatush);       // 0x310
    CSR_REG_DECL  (mcountinhibit);  // 0x320
    CSR_REG_DECL  (mepc);           // 0x341
    CSR_REG_DECL  (mcause);         // 0x342
    CSR_REG_DECL  (mtval);          // 0x343

    // DEBUG MODE CSRS
    CSR_REG_DECL  (dcsr);           // 0x7B0

} riscvCSRMasks;


////////////////////////////////////////////////////////////////////////////////
// SYSTEM REGISTER ACCESS MACROS
////////////////////////////////////////////////////////////////////////////////

// get CSR value using current XLEN
#define RD_CSR(_CPU, _RNAME) ( \
    (RISCV_XLEN_IS_32(_CPU) ?                               \
        (_CPU)->csr._RNAME.u32.bits :                       \
        (_CPU)->csr._RNAME.u64.bits)                        \
)

// set CSR value using current XLEN
#define WR_CSR(_CPU, _RNAME, _VALUE) \
    if(RISCV_XLEN_IS_32(_CPU)) {                            \
        (_CPU)->csr._RNAME.u32.bits = _VALUE;               \
    } else {                                                \
        (_CPU)->csr._RNAME.u64.bits = _VALUE;               \
    }

// get raw field using current XLEN
#define RD_RAW_FIELD(_CPU, _R, _FIELD) ( \
    (RISCV_XLEN_IS_32(_CPU) ?                               \
        _R.u32.fields._FIELD :                              \
        _R.u64.fields._FIELD)                               \
)

// set raw field using current XLEN
#define WR_RAW_FIELD(_CPU, _R, _FIELD, _VALUE) \
    if(RISCV_XLEN_IS_32(_CPU)) {                            \
        _R.u32.fields._FIELD = _VALUE;                      \
    } else {                                                \
        _R.u64.fields._FIELD = _VALUE;                      \
    }

// get CSR field using current XLEN
#define RD_CSR_FIELD(_CPU, _RNAME, _FIELD) \
    RD_RAW_FIELD(_CPU, (_CPU)->csr._RNAME, _FIELD)

// set CSR field using current XLEN
#define WR_CSR_FIELD(_CPU, _RNAME, _FIELD, _VALUE) \
    WR_RAW_FIELD(_CPU, (_CPU)->csr._RNAME, _FIELD, _VALUE)

// get CSR field in XLEN=64 view
#define RD_CSR_FIELD64(_CPU, _RNAME, _FIELD) \
    (_CPU)->csr._RNAME.u64.fields._FIELD

// set raw field in XLEN=32 view
#define WR_RAW_FIELD32(_R, _FIELD, _VALUE) \
    _R.u32.fields._FIELD = _VALUE

// set raw field in XLEN=64 view
#define WR_RAW_FIELD64(_R, _FIELD, _VALUE) \
    _R.u64.fields._FIELD = _VALUE

// set CSR field in XLEN=32 view
#define WR_CSR_FIELD32(_CPU, _RNAME, _FIELD, _VALUE) \
    WR_RAW_FIELD32((_CPU)->csr._RNAME, _FIELD, _VALUE)

// set CSR field in XLEN=64 view
#define WR_CSR_FIELD64(_CPU, _RNAME, _FIELD, _VALUE) \
    WR_RAW_FIELD64((_CPU)->csr._RNAME, _FIELD, _VALUE)

// get raw field using current XLEN from 32/64 bit alternate registers
#define RD_RAW_FIELD_ALT(_CPU, _R32, _R64, _FIELD) ( \
    (RISCV_XLEN_IS_32(_CPU) ?                               \
        _R32.u32.fields._FIELD :                            \
        _R64.u64.fields._FIELD)                             \
)

// set raw field using current XLEN from 32/64 bit alternate registers
#define WR_RAW_FIELD_ALT(_CPU, _R32, _R64, _FIELD, _VALUE) \
    if(RISCV_XLEN_IS_32(_CPU)) {                            \
        _R32.u32.fields._FIELD = _VALUE;                    \
    } else {                                                \
        _R64.u64.fields._FIELD = _VALUE;                    \
    }

// get CSR field using current XLEN from 32/64 bit alternate registers
#define RD_CSR_FIELD_ALT(_CPU, _RNAME32, _RNAME64, _FIELD) \
    RD_RAW_FIELD_ALT(                                       \
        _CPU,                                               \
        (_CPU)->csr._RNAME32,                               \
        (_CPU)->csr._RNAME64,                               \
        _FIELD                                              \
    )

// set CSR field using current XLEN from 32/64 bit alternate registers
#define WR_CSR_FIELD_ALT(_CPU, _RNAME32, _RNAME64, _FIELD, _VALUE) \
    WR_RAW_FIELD_ALT(                                       \
        _CPU,                                               \
        (_CPU)->csr._RNAME32,                               \
        (_CPU)->csr._RNAME64,                               \
        _FIELD,                                             \
        _VALUE                                              \
    )

// get CSR mask
#define RD_CSR_MASK(_CPU, _RNAME) \
    (_CPU)->csrMask._RNAME.u64.bits

// get CSR mask field using current XLEN
#define RD_CSR_MASK_FIELD(_CPU, _RNAME, _FIELD) ( \
    (RISCV_XLEN_IS_32(_CPU) ?                               \
        (_CPU)->csrMask._RNAME.u32.fields._FIELD :          \
        (_CPU)->csrMask._RNAME.u64.fields._FIELD)           \
)

// mask CSR using variable mask
#define MASK_CSR(_CPU, _RNAME) \
    (_CPU)->csr._RNAME.u64.bits &= (_CPU)->csrMask._RNAME.u64.bits


////////////////////////////////////////////////////////////////////////////////
// SYSTEM REGISTER ACCESS MACROS (NORMAL OR VIRTUAL ALIAS)
////////////////////////////////////////////////////////////////////////////////

// get CSR value using current XLEN
#define RD_CSR_V(_CPU, _RNAME, _V) ( \
    (_V) ?                                                  \
        RD_CSR(_CPU, v##_RNAME) :                           \
        RD_CSR(_CPU, _RNAME)                                \
)

// set CSR value using current XLEN
#define WR_CSR_V(_CPU, _RNAME, _V, _VALUE) \
    if(_V) {                                                \
        WR_CSR(_CPU, v##_RNAME, _VALUE);                    \
    } else {                                                \
        WR_CSR(_CPU, _RNAME, _VALUE);                       \
    }

// get CSR field using current XLEN
#define RD_CSR_FIELD_V(_CPU, _RNAME, _V, _FIELD) ( \
    (_V) ?                                                  \
        RD_CSR_FIELD(_CPU, v##_RNAME, _FIELD) :             \
        RD_CSR_FIELD(_CPU, _RNAME, _FIELD)                  \
)

// set CSR field using current XLEN
#define WR_CSR_FIELD_V(_CPU, _RNAME, _V, _FIELD, _VALUE) \
    if(_V) {                                                \
        WR_CSR_FIELD(_CPU, v##_RNAME, _FIELD, _VALUE);      \
    } else {                                                \
        WR_CSR_FIELD(_CPU, _RNAME, _FIELD, _VALUE);         \
    }


////////////////////////////////////////////////////////////////////////////////
// MORPH-TIME SYSTEM REGISTER ACCESS MACROS
////////////////////////////////////////////////////////////////////////////////

//
// Morph-time macros to access a CSR register by id
//
#define CSR_REG_MT(_ID)     RISCV_CPU_REG(csr._ID)

//
// Morph-time macros to access a CSR register mask by id
//
#define CSR_MASK_MT(_ID)    RISCV_CPU_REG(csrMask._ID)

