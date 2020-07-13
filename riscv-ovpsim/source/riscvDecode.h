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
#include "hostapi/impTypes.h"

// model header files
#include "riscvModelCallbackTypes.h"
#include "riscvTypes.h"
#include "riscvTypeRefs.h"


//
// Return instruction at address thisPC
//
Uns32 riscvFetchInstruction(riscvP riscv, riscvAddr thisPC, Uns8 *bytesP);

//
// Return size of the instruction at address thisPC
//
Uns32 riscvGetInstructionSize(riscvP riscv, riscvAddr thisPC);

//
// Decode instruction at the given address
//
void riscvDecode(
    riscvP          riscv,
    riscvAddr       thisPC,
    riscvInstrInfoP info
);

//
// Fetch an instruction at the given simulated address and if it matches a
// decode pattern in the given instruction table unpack the instruction fields
// into 'info'
//
Uns32 riscvExtFetchInstruction(
    riscvP               riscv,
    riscvAddr            thisPC,
    riscvExtInstrInfoP   info,
    vmidDecodeTablePP    tableP,
    riscvExtInstrAttrsCP attrs,
    Uns32                last,
    Uns32                bits
);
