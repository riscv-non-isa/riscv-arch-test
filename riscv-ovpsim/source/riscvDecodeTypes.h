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

// basic number types
#include "hostapi/impTypes.h"

// model header files
#include "riscvRegisterTypes.h"
#include "riscvTypes.h"
#include "riscvTypeRefs.h"
#include "riscvVariant.h"


//
// This enumerates generic instructions
//
typedef enum riscvITypeE {

    // move pseudo-instructions (register and constant source)
    RV_IT_MV_R,
    RV_IT_MV_C,

    // base R-type instructions
    RV_IT_ADD_R,
    RV_IT_AND_R,
    RV_IT_OR_R,
    RV_IT_SLL_R,
    RV_IT_SLT_R,
    RV_IT_SLTU_R,
    RV_IT_SRA_R,
    RV_IT_SRL_R,
    RV_IT_SUB_R,
    RV_IT_XOR_R,

    // M-extension R-type instructions
    RV_IT_DIV_R,
    RV_IT_DIVU_R,
    RV_IT_MUL_R,
    RV_IT_MULH_R,
    RV_IT_MULHSU_R,
    RV_IT_MULHU_R,
    RV_IT_REM_R,
    RV_IT_REMU_R,

    // base I-type instructions
    RV_IT_ADDI_I,
    RV_IT_ANDI_I,
    RV_IT_JALR_I,
    RV_IT_ORI_I,
    RV_IT_SLTI_I,
    RV_IT_SLTIU_I,
    RV_IT_SLLI_I,
    RV_IT_SRAI_I,
    RV_IT_SRLI_I,
    RV_IT_XORI_I,

    // base I-type instructions for load and store
    RV_IT_L_I,
    RV_IT_S_I,

    // base I-type instructions for CSR access (register)
    RV_IT_CSRR_I,

    // base I-type instructions for CSR access (constant)
    RV_IT_CSRRI_I,

    // miscellaneous system I-type instructions
    RV_IT_EBREAK_I,
    RV_IT_ECALL_I,
    RV_IT_FENCEI_I,
    RV_IT_MRET_I,
    RV_IT_SRET_I,
    RV_IT_URET_I,
    RV_IT_WFI_I,

    // system fence I-type instruction
    RV_IT_FENCE_I,

    // system fence R-type instruction
    RV_IT_FENCE_VMA_R,

    // base U-type instructions
    RV_IT_AUIPC_U,
    RV_IT_LUI_U,

    // base B-type instructions
    RV_IT_BEQ_B,
    RV_IT_BGE_B,
    RV_IT_BGEU_B,
    RV_IT_BLT_B,
    RV_IT_BLTU_B,
    RV_IT_BNE_B,

    // base J-type instructions
    RV_IT_JAL_J,

    // A-extension R-type instructions
    RV_IT_AMOADD_R,
    RV_IT_AMOAND_R,
    RV_IT_AMOMAX_R,
    RV_IT_AMOMAXU_R,
    RV_IT_AMOMIN_R,
    RV_IT_AMOMINU_R,
    RV_IT_AMOOR_R,
    RV_IT_AMOSWAP_R,
    RV_IT_AMOXOR_R,
    RV_IT_LR_R,
    RV_IT_SC_R,

    // F-extension and D-extension R-type instructions
    RV_IT_FMV_R,
    RV_IT_FABS_R,
    RV_IT_FADD_R,
    RV_IT_FCLASS_R,
    RV_IT_FCVT_R,
    RV_IT_FDIV_R,
    RV_IT_FEQ_R,
    RV_IT_FLE_R,
    RV_IT_FLT_R,
    RV_IT_FMAX_R,
    RV_IT_FMIN_R,
    RV_IT_FMUL_R,
    RV_IT_FNEG_R,
    RV_IT_FSGNJ_R,
    RV_IT_FSGNJN_R,
    RV_IT_FSGNJX_R,
    RV_IT_FSQRT_R,
    RV_IT_FSUB_R,

    // F-extension and D-extension R4-type instructions
    RV_IT_FMADD_R4,
    RV_IT_FMSUB_R4,
    RV_IT_FNMADD_R4,
    RV_IT_FNMSUB_R4,

    // X-extension instructions
    RV_IT_CUSTOM,

    // KEEP LAST
    RV_IT_LAST

} riscvIType;

//
// This is used to categorize acquire/release semantics
//
typedef enum riscvAQRLDescE {

    RV_AQRL_NA,     // no acquire/release specification
    RV_AQRL_RL,     // release
    RV_AQRL_AQ,     // acquire
    RV_AQRL_AQRL,   // acquire and release

} riscvAQRLDesc;

//
// This is used to categorize fence semantics
//
typedef enum riscvFenceDescE {

    RV_FENCE_NA   = 0x0,    // no fence
    RV_FENCE_W    = 0x1,    // write fence
    RV_FENCE_R    = 0x2,    // read fence
    RV_FENCE_O    = 0x4,    // output fence
    RV_FENCE_I    = 0x8,    // input fence
    RV_FENCE_IOWR = RV_FENCE_I|RV_FENCE_O|RV_FENCE_R|RV_FENCE_W

} riscvFenceDesc;

//
// This is used to categorize CSR update semantics
//
typedef enum riscvCSRUDescE {

    RV_CSR_NA,      // no update semantics
    RV_CSR_RW,      // read/write
    RV_CSR_RS,      // read/set
    RV_CSR_RC,      // read/clear

} riscvCSRUDesc;

//
// This defines the maximum number of argument registers
//
#define RV_MAX_AREGS 4

//
// This structure is filled with information extracted from the decoded
// instruction
//
typedef struct riscvInstrInfoS {

    const char       *opcode;           // opcode name
    const char       *format;           // disassembly format string
    riscvAddr         thisPC;           // instruction address
    Uns32             instruction;      // instruction word
    Uns8              bytes;            // instruction size in bytes (2 or 4)
    riscvIType        type;             // instruction type
    riscvArchitecture arch;             // architecture requirements
    Bool              explicitType;     // whether types are explicit in opcode
    Bool              explicitW;        // whether 'w' explicit in opcode
    Bool              unsExt;           // whether to extend unsigned
    Bool              csrInOp;          // whether to emit CSR as part of opcode
    Uns32             memBits;          // load/store size

    Uns64             c;                // constant value
    riscvRegDesc      r[RV_MAX_AREGS];  // argument registers
    riscvAQRLDesc     aqrl;             // acquire/release specifier
    riscvFenceDesc    pred;             // predecessor fence
    riscvFenceDesc    succ;             // successor fence
    riscvRMDesc       rm;               // rounding mode
    riscvCSRUDesc     csrUpdate;        // CSR update semantics
    Uns32             csr;              // CSR index

} riscvInstrInfo;

