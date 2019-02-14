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
// CSR DEFINITION TYPE
////////////////////////////////////////////////////////////////////////////////

//
// This structure records information about each CSR
//
typedef struct riscvCSRAttrsS {
                                        // COMMON FIELDS
    const char       *name;             // register name
    const char       *desc;             // register description
    void             *object;           // client-specific object
    Uns32             csrNum;           // CSR number (includes privilege and r/w access)
    riscvArchitecture arch;             // required architecture
    Bool              wEndBlock;        // whether write terminates this block
    Bool              wEndRM;           // whether write invalidates RM assumption
    Bool              noTraceChange;    // whether to exclude from trace change
    Bool              TVMT;             // whether trapped by mstatus.TVM
    riscvCSRReadFn    readCB;           // read callback
    riscvCSRReadFn    readWriteCB;      // read callback (in r/w context)
    riscvCSRWriteFn   writeCB;          // write callback

                                        // 32-BIT FIELDS
    vmiReg            reg32;            // register
    vmiReg            writeMaskV32;     // variable write mask
    Uns32             writeMaskC32;     // constant write mask

                                        // 64-BIT FIELDS
    vmiReg            reg64;            // register
    vmiReg            writeMaskV64;     // variable writable bit mask
    Uns64             writeMaskC64;     // constant writable bit mask

} riscvCSRAttrs;

