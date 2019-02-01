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


////////////////////////////////////////////////////////////////////////////////
// DATA FOR 32-BIT INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Attribute entries for 32-bit instructions like ADD
//
#define ATTR32_ADD(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2_R3,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_X_24_20,          \
    wX       : WX_3,                \
}

//
// Attribute entries for 32-bit instructions like ADDI
//
#define ATTR32_ADDI(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2_SIMM,      \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
    wX       : WX_3,                \
}

//
// Attribute entries for 32-bit instructions like NOPI
//
#define ATTR32_NOPI(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_NONE,            \
    type     : RV_IT_##_GENERIC,    \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
    arch     : _ARCH,               \
}

//
// Attribute entries for 32-bit instructions like NEG
//
#define ATTR32_NEG(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R3,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_X_24_20,          \
    wX       : WX_3,                \
}

//
// Attribute entries for 32-bit instructions like SLTZ
//
#define ATTR32_SLTZ(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_X_24_20,          \
    wX       : WX_3,                \
    priDelta : 1,                   \
}

//
// Attribute entries for 32-bit instructions like NOP
//
#define ATTR32_NOP(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_NONE,            \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
}

//
// Attribute entries for 32-bit instructions like NOT
//
#define ATTR32_NOT(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
    wX       : WX_3,                \
}

//
// Attribute entries for 32-bit instructions like LB
//
#define ATTR32_LB(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_OFF_R2,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
    memBits  : MBS_13_12,           \
    unsExt   : USX_14,              \
}

//
// Attribute entries for 32-bit instructions like SB
//
#define ATTR32_SB(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_OFF_R2,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_24_20,          \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_25_11_7,     \
    memBits  : MBS_13_12,           \
}

//
// Attribute entries for 32-bit instructions like JR with non-zero offset
//
#define ATTR32_JR(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_OFF_R2,          \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
}

//
// Attribute entries for 32-bit instructions like JR with zero offset
//
#define ATTR32_JR0(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R2,              \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
}

//
// Attribute entries for 32-bit instructions like JALR with non-zero offset
//
#define ATTR32_JALR(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_OFF_R2,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
}

//
// Attribute entries for 32-bit instructions like SLLI
//
#define ATTR32_SLLI(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2_XIMM,      \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_SHAMT_25_20,      \
    wX       : WX_3,                \
}

//
// Attribute entries for 32-bit instructions like CSRRC
//
#define ATTR32_CSRRC(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_CSR_R2,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
    r2       : RS_X_19_15,          \
}

//
// Attribute entries for 32-bit instructions like CSRR
//
#define ATTR32_CSRR(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_CSR,          \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
    r2       : RS_X_19_15,          \
    priDelta : 1,                   \
}

//
// Attribute entries for 32-bit instructions like CSRC
//
#define ATTR32_CSRC(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_CSR_R2,          \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
    r2       : RS_X_19_15,          \
}

//
// Attribute entries for 32-bit instructions like CSRRCI
//
#define ATTR32_CSRRCI(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_CSR_SIMM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
    cs       : CS_U_19_15,          \
}

//
// Attribute entries for 32-bit instructions like CSRCI
//
#define ATTR32_CSRCI(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_CSR_SIMM,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
    cs       : CS_U_19_15,          \
}

//
// Attribute entries for 32-bit instructions like RDCYCLE
//
#define ATTR32_RDX1(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1,              \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
    r2       : RS_X_19_15,          \
    csrInOp  : True,                \
}

//
// Attribute entries for 32-bit instructions like FENCE
//
#define ATTR32_FENCE(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_PRED_SUCC,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    pred     : FENCES_27_24,        \
    succ     : FENCES_23_20,        \
}

//
// Attribute entries for 32-bit instructions like AUIPC
//
#define ATTR32_AUIPC(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_UI,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    cs       : CS_AUIPC,            \
}

//
// Attribute entries for 32-bit instructions like BEQ
//
#define ATTR32_BEQ(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2_TGT,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_19_15,          \
    r2       : RS_X_24_20,          \
    cs       : CS_B,                \
}

//
// Attribute entries for 32-bit instructions like BEQZ
//
#define ATTR32_BEQZ(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_TGT,          \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_19_15,          \
    r2       : RS_X_24_20,          \
    cs       : CS_B,                \
}

//
// Attribute entries for 32-bit instructions like BGTZ
//
#define ATTR32_BGTZ(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R2_TGT,          \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_19_15,          \
    r2       : RS_X_24_20,          \
    cs       : CS_B,                \
    priDelta : 1,                   \
}

//
// Attribute entries for 32-bit instructions like JAL
//
#define ATTR32_J(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_TGT,             \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    cs       : CS_J,                \
}

//
// Attribute entries for 32-bit instructions like JAL
//
#define ATTR32_JAL(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_TGT,          \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    cs       : CS_J,                \
}

//
// Attribute entries for 32-bit instructions like AMOADD
//
#define ATTR32_AMOADD(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2_MEM3,      \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_24_20,          \
    r3       : RS_X_19_15,          \
    wX       : WX_12,               \
    aqrl     : AQRL_26_25,          \
}

//
// Attribute entries for 32-bit instructions like LR
//
#define ATTR32_LR(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_MEM2,         \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    wX       : WX_12,               \
    aqrl     : AQRL_26_25,          \
}

//
// Attribute entries for 32-bit instructions like SFENCE.VMA
//
#define ATTR32_FENCE_VMA(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_19_15,          \
    r2       : RS_X_24_20,          \
}

//
// Attribute entries for 32-bit instructions like FSQRT
//
#define ATTR32_FSQRT(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_F_11_7,           \
    r2       : RS_F_19_15,          \
    wF       : WF_25,               \
    rm       : RM_14_12,            \
}

//
// Attribute entries for 32-bit instructions like FADD
//
#define ATTR32_FADD(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2_R3,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_F_11_7,           \
    r2       : RS_F_19_15,          \
    r3       : RS_F_24_20,          \
    wF       : WF_25,               \
    rm       : RM_14_12,            \
}

//
// Attribute entries for 32-bit instructions like FMADD
//
#define ATTR32_FMADD(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2_R3_R4,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_F_11_7,           \
    r2       : RS_F_19_15,          \
    r3       : RS_F_24_20,          \
    r4       : RS_F_31_27,          \
    wF       : WF_25,               \
    rm       : RM_14_12,            \
}

//
// Attribute entries for 32-bit instructions like FCLASS
//
#define ATTR32_FCLASS(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_F_19_15,          \
    wF       : WF_25,               \
    xQuiet   : True,                \
}

//
// Attribute entries for 32-bit instructions like FMAX
//
#define ATTR32_FMAX(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2_R3,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_F_11_7,           \
    r2       : RS_F_19_15,          \
    r3       : RS_F_24_20,          \
    wF       : WF_25,               \
}

//
// Attribute entries for 32-bit instructions like FCVT
//
#define ATTR32_FCVT(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN, _DST, _SRC) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_##_DST##_11_7,    \
    r2       : RS_##_SRC##_19_15,   \
    wX       : WX_21_U_20,          \
    wF       : WF_25,               \
    rm       : RM_14_12,            \
}

//
// Attribute entries for 32-bit instructions like FEQ
//
#define ATTR32_FEQ(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2_R3,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_F_19_15,          \
    r3       : RS_F_24_20,          \
    wF       : WF_25,               \
    xQuiet   : True,                \
}

//
// Attribute entries for 32-bit instructions like FLD
//
#define ATTR32_FL(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_OFF_R2,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_F_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
    memBits  : MBS_12,              \
    wF       : WF_MEM,              \
    xQuiet   : True,                \
}

//
// Attribute entries for 32-bit instructions like FSD
//
#define ATTR32_FS(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_OFF_R2,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_F_24_20,          \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_25_11_7,     \
    memBits  : MBS_12,              \
    wF       : WF_MEM,              \
    xQuiet   : True,                \
}

//
// Attribute entries for 32-bit instructions like FMV.D.X
//
#define ATTR32_FMVFX(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_F_11_7,           \
    r2       : RS_XX_19_15,         \
    wF       : WF_25,               \
    wX       : WX_25                \
}

//
// Attribute entries for 32-bit instructions like FMV.X.D
//
#define ATTR32_FMVXF(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_XX_11_7,          \
    r2       : RS_F_19_15,          \
    wF       : WF_25,               \
    wX       : WX_25                \
}

//
// Attribute entries for 32-bit instructions like FRSR
//
#define ATTR32_FRSR(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1,              \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
    r2       : RS_X_19_15,          \
}

//
// Attribute entries for 32-bit instructions like FSSR
//
#define ATTR32_FSSR(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R1NZ_R2,         \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
    r2       : RS_X_19_15,          \
}

//
// Attribute entries for 32-bit custom instructions
//
#define ATTR32_CUSTOM(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_NONE,            \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
}

//
// Attribute entries for 32-bit instructions like LAST
//
#define ATTR32_LAST(_NAME, _GENERIC, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_NONE,            \
    type     : RV_IT_##_GENERIC     \
}


////////////////////////////////////////////////////////////////////////////////
// DATA FOR 16-BIT INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Attribute entries for 16-bit instructions like NOP
//
#define ATTR16_NOP(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_NONE,          \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
}

//
// Attribute entries for 16-bit instructions like ADD
//
#define ATTR16_ADD(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_R2_R3,      \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_11_7,         \
    r3     : RS_X_6_2,          \
}

//
// Attribute entries for 16-bit instructions like AND
//
#define ATTR16_AND(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_R2_R3,      \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_9_7_P8,       \
    r2     : RS_X_9_7_P8,       \
    r3     : RS_X_4_2_P8,       \
}

//
// Attribute entries for 16-bit instructions like ADDW
//
#define ATTR16_ADDW(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_R2_R3,      \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_9_7_P8,       \
    r2     : RS_X_9_7_P8,       \
    r3     : RS_X_4_2_P8,       \
    wX     : WX_W1,             \
}

//
// Attribute entries for 16-bit instructions like MV
//
#define ATTR16_MV(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_R2,         \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_6_2,          \
}

//
// Attribute entries for 16-bit instructions like ADDI
//
#define ATTR16_ADDI(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_R2_SIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_11_7,         \
    cs     : CS_C_ADDI,         \
}

//
// Attribute entries for 16-bit instructions like ADDI16SP
//
#define ATTR16_ADDI16SP(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_R2_SIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_SP,           \
    r2     : RS_X_SP,           \
    cs     : CS_C_ADDI16SP,     \
}

//
// Attribute entries for 16-bit instructions like ADDI4SPN
//
#define ATTR16_ADDI4SPN(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_R2_SIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_4_2_P8,       \
    r2     : RS_X_SP,           \
    cs     : CS_C_ADDI4SPN,     \
}

//
// Attribute entries for 16-bit instructions like ADDIW
//
#define ATTR16_ADDIW(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_R2_SIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_11_7,         \
    cs     : CS_C_ADDI,         \
    wX     : WX_W1,             \
}

//
// Attribute entries for 16-bit instructions like ANDI
//
#define ATTR16_ANDI(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_R2_SIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_9_7_P8,       \
    r2     : RS_X_9_7_P8,       \
    cs     : CS_C_ADDI,         \
}

//
// Attribute entries for 16-bit instructions like SLLI
//
#define ATTR16_SLLI(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_R2_XIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_11_7,         \
    cs     : CS_C_SLLI,         \
}

//
// Attribute entries for 16-bit instructions like SRAI
//
#define ATTR16_SRAI(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_R2_XIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_9_7_P8,       \
    r2     : RS_X_9_7_P8,       \
    cs     : CS_C_SLLI,         \
}

//
// Attribute entries for 16-bit instructions like BEQZ
//
#define ATTR16_BEQZ(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_TGT,        \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_9_7_P8,       \
    r2     : RS_X_ZERO,         \
    cs     : CS_C_B,            \
}

//
// Attribute entries for 16-bit instructions like J
//
#define ATTR16_J(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_TGT,           \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_ZERO,         \
    cs     : CS_C_J,            \
}

//
// Attribute entries for 16-bit instructions like JAL
//
#define ATTR16_JAL(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_TGT,        \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_LR,           \
    cs     : CS_C_J,            \
}

//
// Attribute entries for 16-bit instructions like JR
//
#define ATTR16_JR(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R2,              \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_ZERO,           \
    r2       : RS_X_11_7,           \
}

//
// Attribute entries for 16-bit instructions like JALR
//
#define ATTR16_JALR(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode   : _OPCODE,             \
    pattern  : _PATTERN,            \
    format   : FMT_R2,              \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_LR,             \
    r2       : RS_X_11_7,           \
}

//
// Attribute entries for 16-bit instructions like LI
//
#define ATTR16_LI(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_SIMM,       \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_ZERO,         \
    cs     : CS_C_ADDI,         \
}

//
// Attribute entries for 16-bit instructions like LUI
//
#define ATTR16_LUI(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_UI,         \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_ZERO,         \
    cs     : CS_C_LUI,          \
}

//
// Attribute entries for 16-bit instructions like LD
//
#define ATTR16_LD(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_4_2_P8,       \
    r2     : RS_X_9_7_P8,       \
    cs     : CS_C_LD,           \
    memBits: MBS_D,             \
}

//
// Attribute entries for 16-bit instructions like LDSP
//
#define ATTR16_LDSP(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_SP,           \
    cs     : CS_C_LDSP,         \
    memBits: MBS_D,             \
}

//
// Attribute entries for 16-bit instructions like SDSP
//
#define ATTR16_SDSP(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_6_2,          \
    r2     : RS_X_SP,           \
    cs     : CS_C_SDSP,         \
    memBits: MBS_D,             \
}

//
// Attribute entries for 16-bit instructions like LW
//
#define ATTR16_LW(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_4_2_P8,       \
    r2     : RS_X_9_7_P8,       \
    cs     : CS_C_LW,           \
    memBits: MBS_W,             \
    wF     : WF_MEM,            \
    xQuiet : True,              \
}

//
// Attribute entries for 16-bit instructions like LWSP
//
#define ATTR16_LWSP(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_SP,           \
    cs     : CS_C_LWSP,         \
    memBits: MBS_W,             \
    wF     : WF_MEM,            \
    xQuiet : True,              \
}

//
// Attribute entries for 16-bit instructions like SWSP
//
#define ATTR16_SWSP(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_6_2,          \
    r2     : RS_X_SP,           \
    cs     : CS_C_SWSP,         \
    memBits: MBS_W,             \
}

//
// Attribute entries for 16-bit instructions like FLD
//
#define ATTR16_FLD(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_F_4_2_P8,       \
    r2     : RS_X_9_7_P8,       \
    cs     : CS_C_LD,           \
    memBits: MBS_D,             \
    wF     : WF_MEM,            \
    xQuiet : True,              \
}

//
// Attribute entries for 16-bit instructions like FLDSP
//
#define ATTR16_FLDSP(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_F_11_7,         \
    r2     : RS_X_SP,           \
    cs     : CS_C_LDSP,         \
    memBits: MBS_D,             \
    wF     : WF_MEM,            \
    xQuiet : True,              \
}

//
// Attribute entries for 16-bit instructions like FSDSP
//
#define ATTR16_FSDSP(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_F_6_2,          \
    r2     : RS_X_SP,           \
    cs     : CS_C_SDSP,         \
    memBits: MBS_D,             \
    wF     : WF_MEM,            \
    xQuiet : True,              \
}

//
// Attribute entries for 16-bit instructions like FLW
//
#define ATTR16_FLW(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_F_4_2_P8,       \
    r2     : RS_X_9_7_P8,       \
    cs     : CS_C_LW,           \
    memBits: MBS_W,             \
    wF     : WF_MEM,            \
    xQuiet : True,              \
}

//
// Attribute entries for 16-bit instructions like FLWSP
//
#define ATTR16_FLWSP(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_F_11_7,         \
    r2     : RS_X_SP,           \
    cs     : CS_C_LWSP,         \
    memBits: MBS_W,             \
    wF     : WF_MEM,            \
    xQuiet : True,              \
}

//
// Attribute entries for 16-bit instructions like FSWSP
//
#define ATTR16_FSWSP(_NAME, _GENERIC, _ARCH, _OPCODE, _PATTERN) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    pattern: _PATTERN,          \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_F_6_2,          \
    r2     : RS_X_SP,           \
    cs     : CS_C_SWSP,         \
    memBits: MBS_W,             \
    wF     : WF_MEM,            \
    xQuiet : True,              \
}

//
// Attribute entries for 16-bit instructions like LAST
//
#define ATTR16_LAST(_NAME, _GENERIC, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_NONE,          \
    type   : RV_IT_##_GENERIC   \
}

