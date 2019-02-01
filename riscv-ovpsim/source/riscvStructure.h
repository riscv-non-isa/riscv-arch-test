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

#pragma once

// VMI header files
#include "vmi/vmiTypes.h"
#include "vmi/vmiPorts.h"

// model header files
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
#define RISCV_DISASSEMBLE_MASK  0x00000001
#define RISCV_DEBUG_MMU_MASK    0x00000002
#define RISCV_DEBUG_EXCEPT_MASK 0x00000004

//
// Processor flag selection macros
//
#define RISCV_DISASSEMBLE(_P)  ((_P)->flags & RISCV_DISASSEMBLE_MASK)
#define RISCV_DEBUG_MMU(_P)    ((_P)->flags & RISCV_DEBUG_MMU_MASK)
#define RISCV_DEBUG_EXCEPT(_P) ((_P)->flags & RISCV_DEBUG_EXCEPT_MASK)

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
#define NUM_TEMPS 4

//
// Container for net values
//
typedef struct riscvNetValueS {
    Uns64 ip;       // bitmask of driven interrupt signals
    Bool  reset;    // level of reset signal
    Bool  nmi;      // level of NMI signal
    Bool  _u1[6];   // (for alignment)
} riscvNetValue;

//
// Number of PMP registers
//
#define NUM_PMPS 16

//
// Container for PMP configuration registers
//
typedef union riscvPMPCFGU {
    Uns8  u8 [NUM_PMPS];    // when viewed as bytes
    Uns32 u32[NUM_PMPS/4];  // when viewed as words
    Uns64 u64[NUM_PMPS/8];  // when viewed as double words
} riscvPMPCFG;

//
// This holds all state contributing to an interrupt (for debug messages)
//
typedef struct riscvIntStateS {
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
} riscvIntState;

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
    Bool               verbose;         // whether verbose output enabled
    Bool               artifactAccess;  // whether current access is an artifact
    Bool               externalActive;  // whether external CSR access active
    Bool               inSaveRestore;   // is save/restore active?
    Uns32              flags;           // model control flags
    Uns32              flagsRestore;    // saved flags during restore
    riscvConfig        configInfo;      // model configuration
    memEndian          dendian;         // data endianness
    memEndian          iendian;         // instruction endianness
    riscvRMDesc        fpActiveRM;      // active floating-point rounding mode
    vmiFPFlags         fpFlags;         // floating point flags
    Uns64              jumpBase;        // address of jump instruction
    Uns32              writtenXMask;    // mask of written X registers

    // Configuration and parameter definitions
    riscvParamValuesP  paramValues;     // specified parameters (construction only)

    // Interrupt and exception control
    Uns32              swip;            // software interrupt pending bits
    Uns64              exceptionMask;   // mask of all implemented exceptions
    Uns64              interruptMask;   // mask of all implemented interrupts
    riscvException     exception : 16;  // last activated exception
    Uns8               MIMode    :  2;  // custom M interrupt mode
    Uns8               SIMode    :  2;  // custom S interrupt mode
    Uns8               HIMode    :  2;  // custom H interrupt mode
    Uns8               UIMode    :  2;  // custom U interrupt mode
    riscvAccessFault   AFErrorIn :  2;  // input access fault error subtype
    riscvAccessFault   AFErrorOut:  2;  // latched access fault error subtype

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
    riscvNetValue      netValue;        // net port values

    // CSR support
    vmiRangeTableP     csrTable;        // per-CSR lookup table
    vmiRangeTableP     csrUIMessage;    // per-CSR unimplemented messages
    riscvBusPortP      csrPort;         // externally-implemented CSR port

    // Memory management support
    memDomainP         vmDomains[RISCV_MODE_LAST][2];   // mapped domains
    memDomainP         pmpDomains [RISCV_MODE_LAST][2]; // pmp domains
    memDomainP         physDomains[RISCV_MODE_LAST][2]; // physical domains
    riscvPMPCFG        pmpcfg;              // pmpcfg registers
    Uns64              pmpaddr[NUM_PMPS];   // pmpaddr registers
    riscvTLBP          tlb;                 // TLB cache
    Uns8               extBits    :  8;     // bit size of external domains
    Bool               PTWActive  :  1;     // page table walk active
    Bool               PTWBadAddr :  1;     // page table walk address was bad

    // Messages
    riscvIntState      intState;        // for exception debug

    // JIT code translation control
    riscvBlockStateP   blockState;      // active block state

    // Enhanced model support callbacks
    riscvModelCB       cb;

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


