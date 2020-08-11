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

// Imperas header files
#include "hostapi/impTypes.h"

// VMI header files
#include "vmi/vmiTypes.h"

// model header files
#include "riscvTypeRefs.h"
#include "riscvVariant.h"


////////////////////////////////////////////////////////////////////////////////
// CSR ACCESS FUNCTION TYPES
////////////////////////////////////////////////////////////////////////////////

//
// Function type to read a 64-bit CSR
//
#define RISCV_CSR_READFN(_NAME) Uns64 _NAME( \
    riscvCSRAttrsCP attrs,      \
    riscvP          riscv       \
)
typedef RISCV_CSR_READFN((*riscvCSRReadFn));

//
// Function type to write a CSR
//
#define RISCV_CSR_WRITEFN(_NAME) Uns64 _NAME( \
    riscvCSRAttrsCP attrs,      \
    riscvP          riscv,      \
    Uns64           newValue    \
)
typedef RISCV_CSR_WRITEFN((*riscvCSRWriteFn));


////////////////////////////////////////////////////////////////////////////////
// CSR JIT CODE MAINTENANCE CALLBACKS
////////////////////////////////////////////////////////////////////////////////

//
// Function called to adjust JIT code generator state after a CSR write
//
#define RISCV_CSR_WSTATEFN(_NAME) void _NAME( \
    riscvMorphStateP state,     \
    Bool             useRS1     \
)
typedef RISCV_CSR_WSTATEFN((*riscvCSRWStateFn));


////////////////////////////////////////////////////////////////////////////////
// CSR SUPPORT FUNCTION TYPE
////////////////////////////////////////////////////////////////////////////////

//
// Function called to indicate CSR presence
//
#define RISCV_CSR_PRESENTFN(_NAME) Bool _NAME( \
    riscvCSRAttrsCP attrs,      \
    riscvP          riscv       \
)
typedef RISCV_CSR_PRESENTFN((*riscvCSRPresentFn));


////////////////////////////////////////////////////////////////////////////////
// CSR DEFINITION TYPE
////////////////////////////////////////////////////////////////////////////////

//
// This structure records information about each CSR
//
typedef struct riscvCSRAttrsS {
    const char       *name;             // register name
    const char       *desc;             // register description
    void             *object;           // client-specific object
    Uns32             csrNum;           // CSR number (includes privilege and r/w access)
    riscvArchitecture arch;             // required architecture (presence)
    riscvArchitecture access;           // required architecture (access)
    riscvPrivVer      version;          // minimum specification version
    Bool              wEndBlock;        // whether write terminates this block
    Bool              wEndRM;           // whether write invalidates RM assumption
    Bool              noSaveRestore;    // whether to exclude from save/restore
    Bool              noTraceChange;    // whether to exclude from trace change
    Bool              TVMT;             // whether trapped by mstatus.TVM
    Bool              writeRd;          // whether write updates Rd
    Bool              aliasV;           // whether CSR has virtual alias
    riscvCSRPresentFn presentCB;        // CSR present callback
    riscvCSRReadFn    readCB;           // read callback
    riscvCSRReadFn    readWriteCB;      // read callback (in r/w context)
    riscvCSRWriteFn   writeCB;          // write callback
    riscvCSRWStateFn  wstateCB;         // adjust JIT code generator state
    vmiReg            reg;              // register
    vmiReg            writeMaskV;       // variable write mask
    Uns32             writeMaskC32;     // constant 32-bit write mask
    Uns64             writeMaskC64;     // constant 64-bit write mask
} riscvCSRAttrs;

