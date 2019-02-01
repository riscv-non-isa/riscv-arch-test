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

// model header files
#include "riscvRegisterTypes.h"
#include "riscvTypeRefs.h"


////////////////////////////////////////////////////////////////////////////////
// MESSAGES
////////////////////////////////////////////////////////////////////////////////

//
// This holds an Illegal Instruction description
//
typedef struct illegalDescS {
    const char *id;     // message ID
    const char *detail; // detailed description
} illegalDesc, *illegalDescP;

//
// Macro used to define illegalDesc structure and emit an Illegal Instruction
// using it
//
#define ILLEGAL_INSTRUCTION_MESSAGE(_RISCV, _ID, _DETAIL) { \
    static illegalDesc _DESC = { .id=CPU_PREFIX"_"_ID, .detail=_DETAIL};    \
    riscvEmitIllegalInstructionMessageDesc(_RISCV, &_DESC);                 \
}

//
// Emit Illegal Instruction because the current mode has insufficient
// privilege
//
void riscvEmitIllegalInstructionMode(riscvP riscv);

//
// Emit Illegal Instruction message and take Illegal Instruction exception
//
void riscvEmitIllegalInstructionMessageDesc(riscvP riscv, illegalDescP desc);

//
// Validate that the given required feature is present and enabled (using
// blockMask if necessary)
//
Bool riscvRequireArchPresentMT(riscvP riscv, riscvArchitecture feature);

//
// Validate that the given required feature is absent
//
Bool riscvRequireArchAbsentMT(riscvP riscv, riscvArchitecture feature);


////////////////////////////////////////////////////////////////////////////////
// EXTENSION LIBRARY CALLBACKS
////////////////////////////////////////////////////////////////////////////////

//
// Validate that the instruction is supported and enabled and take an Illegal
// Instruction exception if not
//
Bool riscvInstructionEnabled(riscvP riscv, riscvArchitecture requiredVariant);

//
// Return VMI register for the given abstract register
//
vmiReg riscvGetVMIReg(riscvP riscv, riscvRegDesc r);

//
// Return VMI register for the given abstract register which may require a NaN
// box test if it is floating point
//
vmiReg riscvGetVMIRegFS(riscvP riscv, riscvRegDesc r, vmiReg tmp);

//
// Do actions when a register is written (sign extending or NaN boxing, if
// required)
//
void riscvWriteRegSize(riscvP riscv, riscvRegDesc r, Uns32 srcBits);

//
// Do actions when a register is written (sign extending or NaN boxing, if
// required) using the derived register size
//
void riscvWriteReg(riscvP riscv, riscvRegDesc r);


////////////////////////////////////////////////////////////////////////////////
// FPU
////////////////////////////////////////////////////////////////////////////////

//
// Configure FPU
//
void riscvConfigureFPU(riscvP riscv);

