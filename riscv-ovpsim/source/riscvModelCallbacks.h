/*
 * Copyright (c) 2005-2018 Imperas Software Ltd., www.imperas.com
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

// basic number types
#include "hostapi/impTypes.h"

// model header files
#include "riscvRegisterTypes.h"
#include "riscvTypeRefs.h"
#include "riscvVariant.h"


//
// Return the current XLEN
//
#define RISCV_GET_XLEN_FN(_NAME) Uns32 _NAME(riscvP riscv)
typedef RISCV_GET_XLEN_FN((*riscvGetXlenFn));

//
// Return the indexed X register name
//
#define RISCV_GET_XREG_NAME_FN(_NAME) const char *_NAME(Uns32 index)
typedef RISCV_GET_XREG_NAME_FN((*riscvGetXRegNameFn));

//
// Take Illegal Instruction exception
//
#define RISCV_ILLEGAL_INSTRUCTION_FN(_NAME) void _NAME(riscvP riscv)
typedef RISCV_ILLEGAL_INSTRUCTION_FN((*riscvIllegalInstructionFn));

//
// Validate that the instruction is supported and enabled and take an Illegal
// Instruction exception if not
//
#define RISCV_INSTRUCTION_ENABLED_FN(_NAME) Bool _NAME( \
    riscvP            riscv,            \
    riscvArchitecture requiredVariant   \
)
typedef RISCV_INSTRUCTION_ENABLED_FN((*riscvInstructionEnabledFn));

//
// Return VMI register for the given abstract register
//
#define RISCV_GET_VMI_REG_FN(_NAME) vmiReg _NAME(riscvP riscv, riscvRegDesc r)
typedef RISCV_GET_VMI_REG_FN((*riscvGetVMIRegFn));

//
// Return VMI register for the given abstract register which may require a NaN
// box test if it is floating point
//
#define RISCV_GET_VMI_REG_FS_FN(_NAME) vmiReg _NAME( \
    riscvBlockStateP blockState,    \
    riscvP           riscv,         \
    riscvRegDesc     r,             \
    vmiReg           tmp            \
)
typedef RISCV_GET_VMI_REG_FS_FN((*riscvGetVMIRegFSFn));

//
// Do actions when a register is written (sign extending or NaN boxing, if
// required)
//
#define RISCV_WRITE_REG_SIZE_FN(_NAME) void _NAME( \
    riscvBlockStateP blockState,    \
    riscvP           riscv,         \
    riscvRegDesc     r,             \
    Uns32            srcBits        \
)
typedef RISCV_WRITE_REG_SIZE_FN((*riscvWriteRegSizeFn));

//
// Do actions when a register is written (sign extending or NaN boxing, if
// required) using the derived register size
//
#define RISCV_WRITE_REG_FN(_NAME) void _NAME( \
    riscvBlockStateP blockState,    \
    riscvP           riscv,         \
    riscvRegDesc     r              \
)
typedef RISCV_WRITE_REG_FN((*riscvWriteRegFn));

//
// Register new CSR
//
#define RISCV_NEW_CSR_FN(_NAME) void _NAME(riscvCSRAttrsCP attrs, riscvP riscv)
typedef RISCV_NEW_CSR_FN((*riscvNewCSRFn));


//
// Container structure for all model callbacks
//
typedef struct riscvModelCBS {

    // from riscvUtils.h
    riscvGetXlenFn            getXlenMode;
    riscvGetXlenFn            getXlenArch;
    riscvGetXRegNameFn        getXRegName;

    // from riscvExceptions.h
    riscvIllegalInstructionFn illegalInstruction;

    // from riscvMorph.h
    riscvInstructionEnabledFn instructionEnabled;
    riscvGetVMIRegFn          getVMIReg;
    riscvGetVMIRegFSFn        getVMIRegFS;
    riscvWriteRegSizeFn       writeRegSize;
    riscvWriteRegFn           writeReg;

    // from riscvCSR.h
    riscvNewCSRFn             newCSR;

} riscvModelCB;

