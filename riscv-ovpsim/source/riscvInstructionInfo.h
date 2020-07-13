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


////////////////////////////////////////////////////////////////////////////////
// DATA FOR 32-BIT INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// (no arguments)
//
#define ATTR32_NOP(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_NONE,            \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
}

//
// Rd, Rs1, Rs2
//
#define ATTR32_RD_RS1_RS2(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_X_24_20,          \
    wX       : WX_3,                \
}

//
// Rd, Rs1, Rs2 (unsigned extend)
//
#define ATTR32_RD_RS1_RS2_U(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_X_24_20,          \
    wX       : WX_3,                \
    unsExt   : USX_T,               \
}

//
// Rd, Rs1, Rs2 (implied ShN shift)
//
#define ATTR32_RD_RS1_RS2_SHN(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_X_24_20,          \
    wX       : WX_3,                \
    shN      : True,                \
}

//
// Rd, Rs1[, Rs2]
//
#define ATTR32_RD_RS1_rs2(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
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
// Rd[, Rs1], Rs2
//
#define ATTR32_RD_rs1_RS2(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R3,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_X_24_20,          \
    wX       : WX_3,                \
}

//
// Rd, Rs1, Rs2, Rs3
//
#define ATTR32_RD_RS1_RS2_RS3(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_R4,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_X_24_20,          \
    r4       : RS_X_31_27,          \
    wX       : WX_3,                \
}

//
// Rd, Rs1, SIMM
//
#define ATTR32_RD_RS1_SI(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_SIMM,      \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
    wX       : WX_3,                \
}

//
// Rd, Rs1, SIMM (unsigned extend)
//
#define ATTR32_RD_RS1_SI_U(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_SIMM,      \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
    wX       : WX_3,                \
    unsExt   : USX_14,              \
}

//
// Rd, Rs1[, SIMM]
//
#define ATTR32_RD_RS1_si(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
    wX       : WX_3,                \
}

//
// [Rd, Rs1, SHIFT]
//
#define ATTR32_rd_rs1_si(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_NONE,            \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
    wX       : WX_3,                \
}

//
// Rd, Rs1, XSHIFT
//
#define ATTR32_RD_RS1_XSHIFT(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_XIMM,      \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_SHAMT_25_20,      \
    wX       : WX_3,                \
}

//
// Rd, Rs1, SSHIFT
//
#define ATTR32_RD_RS1_SSHIFT(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_SIMM,      \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_SHAMT_25_20,      \
    wX       : WX_3,                \
}

//
// Rd, Rs1, USHIFT
//
#define ATTR32_RD_RS1_USHIFT(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_SIMM,      \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_U_26_20,          \
    wX       : WX_3,                \
}

//
// Rd, Rs1, Rs3, SSHIFT
//
#define ATTR32_RD_RS1_RS3_SSHIFT(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_SIMM,   \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_X_31_27,          \
    cs       : CS_SHAMT_25_20,      \
    wX       : WX_3,                \
}

//
// [Rd,] SIMM(Rs1)
//
#define ATTR32_rd_OFF_RS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_OFF_R2,          \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
}

//
// [Rd, SIMM(]Rs1[)]
//
#define ATTR32_rd_off_RS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R2,              \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
}

//
// Rd, SIMM(Rs1)
//
#define ATTR32_RD_OFF_RS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_OFF_R2,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_20,          \
}

//
// Rd, SIMM(Rs1) (LD)
//
#define ATTR32_RD_MEM_RS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
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
// Rs2, SIMM(Rs1) (ST)
//
#define ATTR32_RS2_MEM_RS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_OFF_R2,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_24_20,          \
    r2       : RS_X_19_15,          \
    cs       : CS_S_31_25_11_7,     \
    memBits  : MBS_13_12,           \
}

//
// Rd, CSR, Rs1
//
#define ATTR32_RD_CSR_RS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_CSR_R2,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
}

//
// Rd, CSR[, Rs1]
//
#define ATTR32_RD_CSR_rs1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_CSR,          \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
    priDelta : 1,                   \
}

//
// [Rd, ]CSR, Rs1
//
#define ATTR32_rd_CSR_RS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_CSR_R2,          \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
}

//
// Rd[, CSR, Rs1]
//
#define ATTR32_RD_csr_rs1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1,              \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
}

//
// RdNZ[, CSR], Rs1
//
#define ATTR32_RDNZ_csr_RS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1NZ_R2,         \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
}

//
// OPCSR Rd[, CSR, Rs1]
//
#define ATTR32_OPCSR_RD_csr_rs1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1,              \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
    csrInOp  : True,                \
}

//
// Rd, CSR, IMM
//
#define ATTR32_RD_CSR_IMM(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_CSR_SIMM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    cs       : CS_U_19_15,          \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
}

//
// [Rd, ]CSR, IMM
//
#define ATTR32_rd_CSR_IMM(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_CSR_SIMM,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    cs       : CS_U_19_15,          \
    csr      : CSRS_31_20,          \
    csrUpdate: CSRUS_13_12,         \
}

//
// Rd, UIPC
//
#define ATTR32_RD_UIPC(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_UI,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    cs       : CS_AUIPC,            \
}

//
// Rs1, Rs2, TGT(B)
//
#define ATTR32_RS1_RS2_TB(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_TGT,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_19_15,          \
    r2       : RS_X_24_20,          \
    cs       : CS_B,                \
}

//
// Rs1[, Rs2], TGT(B)
//
#define ATTR32_RS1_rs2_TB(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_TGT,          \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_19_15,          \
    r2       : RS_X_24_20,          \
    cs       : CS_B,                \
}

//
// [Rs1, ]Rs2, TGT(B)
//
#define ATTR32_rs1_RS2_TB(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R2_TGT,          \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_19_15,          \
    r2       : RS_X_24_20,          \
    cs       : CS_B,                \
    priDelta : 1,                   \
}

//
// [Rd, ]TGT(J)
//
#define ATTR32_rd_TJ(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_TGT,             \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    cs       : CS_J,                \
}

//
// Rd, TGT(J)
//
#define ATTR32_RD_TJ(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_TGT,          \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    cs       : CS_J,                \
}

//
// instructions like FENCE
//
#define ATTR32_FENCE(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_PRED_SUCC,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    pred     : FENCES_27_24,        \
    succ     : FENCES_23_20,        \
}

//
// instructions like AMOADD
//
#define ATTR32_AMOADD(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
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
// instructions like LR
//
#define ATTR32_LR(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_MEM2,         \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    wX       : WX_12,               \
    aqrl     : AQRL_26_25,          \
}

//
// instructions like SFENCE.VMA
//
#define ATTR32_FENCE_VMA(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_19_15,          \
    r2       : RS_X_24_20,          \
}

//
// Fd, Fs1
//
#define ATTR32_FD_FS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_F_11_7,           \
    r2       : RS_F_19_15,          \
    wF       : WF_25,               \
    rm       : RM_14_12,            \
}

//
// Fd, Fs1, Fs2
//
#define ATTR32_FD_FS1_FS2(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_F_11_7,           \
    r2       : RS_F_19_15,          \
    r3       : RS_F_24_20,          \
    wF       : WF_25,               \
}

//
// Fd, Fs1, Fs2, RM
//
#define ATTR32_FD_FS1_FS2_R(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
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
// Fd, Fs1, Fs2, Fs3, RM
//
#define ATTR32_FD_FS1_FS2_FS3_R(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
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
// Rd, Fs1, Fs2
//
#define ATTR32_RD_FS1_FS2(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
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
// Rd, Fs1
//
#define ATTR32_RD_FS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_F_19_15,          \
    wF       : WF_25,               \
    xQuiet   : True,                \
}

//
// instructions like FCVT
//
#define ATTR32_FCVT(_NAME, _GENERIC, _ARCH, _OPCODE, _DST, _SRC) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
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
// instructions like FMV.D.X
//
#define ATTR32_FMVFX(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_F_11_7,           \
    r2       : RS_XX_19_15,         \
    wF       : WF_25,               \
    wX       : WX_25                \
}

//
// Fd, SIMM(Rs1) (FL)
//
#define ATTR32_FD_MEM_RS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
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
// Fs2, SIMM(Rs1) (FS)
//
#define ATTR32_FS2_MEM_RS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
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
// instructions like FMV.X.D
//
#define ATTR32_FMVXF(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_XX_11_7,          \
    r2       : RS_F_19_15,          \
    wF       : WF_25,               \
    wX       : WX_25                \
}

//
// instructions like CRC32
//
#define ATTR32_CRC32(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15_S_21_20,  \
}

//
// instructions like ATTR32_VSETVLI
//
#define ATTR32_VSETVLI(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_VTYPE,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_X_19_15,          \
    vtype    : VTYPE_30_20,         \
    wX       : WX_3,                \
}

//
// instructions like VLB
//
#define ATTR32_VL(_NAME, _GENERIC, _ARCH, _OPCODE, _UNS) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_MEM2_RM,      \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_X_19_15,          \
    mask     : RS_V_M_25,           \
    memBits  : MBS_14_12_V,         \
    unsExt   : _UNS ? USX_28 : 0,   \
    whole    : WR_23,               \
    ff       : FF_24,               \
    nf       : NF_31_29,            \
    VIType   : RV_VIT_V,            \
}

//
// instructions like VLSB
//
#define ATTR32_VLS(_NAME, _GENERIC, _ARCH, _OPCODE, _UNS) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_MEM2_R3_RM,   \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_X_24_20,          \
    mask     : RS_V_M_25,           \
    memBits  : MBS_14_12_V,         \
    unsExt   : _UNS ? USX_28 : 0,   \
    nf       : NF_31_29,            \
    VIType   : RV_VIT_V,            \
}

//
// instructions like VLXB
//
#define ATTR32_VLX(_NAME, _GENERIC, _ARCH, _OPCODE, _UNS) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_MEM2_R3_RM,   \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    memBits  : MBS_14_12_V,         \
    unsExt   : _UNS ? USX_28 : 0,   \
    nf       : NF_31_29,            \
    VIType   : RV_VIT_V,            \
}

//
// instructions like VAMOADD
//
#define ATTR32_VAMOADD(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_MEM2_R3_R4_RM,\
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7_Z26,       \
    r2       : RS_X_19_15,          \
    r3       : RS_V_24_20,          \
    r4       : RS_V_11_7,           \
    mask     : RS_V_M_25,           \
    memBits  : MBS_12_VAMO,         \
    VIType   : RV_VIT_V,            \
}

//
// instructions like VLE8
//
#define ATTR32_VLE(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_MEM2_RM,      \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_X_19_15,          \
    mask     : RS_V_M_25,           \
    memBits  : MBS_EEW,             \
    whole    : WR_23,               \
    ff       : FF_24,               \
    nf       : NF_31_29,            \
    VIType   : RV_VIT_V,            \
    eew      : EEW_28_14_12,        \
}

//
// instructions like VLSE8
//
#define ATTR32_VLSE(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_MEM2_R3_RM,   \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_X_24_20,          \
    mask     : RS_V_M_25,           \
    memBits  : MBS_EEW,             \
    nf       : NF_31_29,            \
    VIType   : RV_VIT_V,            \
    eew      : EEW_28_14_12,        \
}

//
// instructions like VLXEI8
//
#define ATTR32_VLXEI(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_MEM2_R3_RM,   \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    memBits  : MBS_SEW,             \
    nf       : NF_31_29,            \
    VIType   : RV_VIT_V,            \
    eew      : EEW_28_14_12,        \
}

//
// instructions like VAMOADDEI8
//
#define ATTR32_VAMOADDEI(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_MEM2_R3_R4_RM,\
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7_Z26,       \
    r2       : RS_X_19_15,          \
    r3       : RS_V_24_20,          \
    r4       : RS_V_11_7,           \
    mask     : RS_V_M_25,           \
    memBits  : MBS_SEW,             \
    VIType   : RV_VIT_V,            \
    eew      : EEW_14_12,           \
}

//
// Vd, Vs1, Vm (V)
//
#define ATTR32_VD_VS1_M_V(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_RM,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_V,            \
}

//
// Vd, Vs1, Vm (V, rtz)
//
#define ATTR32_VD_VS1_M_V_RTZ(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_RM,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_V,            \
    rm       : RM_RTZ,              \
}

//
// Vd, Vs1, Vm (W, rtz)
//
#define ATTR32_VD_VS1_M_W_RTZ(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_RM,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_W,            \
    rm       : RM_RTZ,              \
}

//
// Vd, Vs1, Vm (W, rod)
//
#define ATTR32_VD_VS1_M_W_ROD(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_RM,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_W,            \
    rm       : RM_ROD,              \
}

//
// Vd, Vs1, Vm (VN)
//
#define ATTR32_VD_VS1_M_VN(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_RM,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VN,           \
}

//
// Vd, Vs1, Vm (VM)
//
#define ATTR32_VD_VS1_M_VM(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_RMR,       \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    mask     : RS_V_19_15,          \
    VIType   : RV_VIT_VM,           \
}

//
// Vd, Vs1, Vs2, Vm (VV)
//
#define ATTR32_VD_VS1_VS2_M_VV(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_V_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VV,           \
}

//
// Vd, Vs2, Vs1, Vm (VV)
//
#define ATTR32_VD_VS2_VS1_M_VV(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_19_15,          \
    r3       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VV,           \
}

//
// Vd, Vs1, Vs2 (VVM)
//
#define ATTR32_VD_VS1_VS2_VVM(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RMR,    \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_V_19_15,          \
    mask     : RS_V0,               \
    VIType   : RV_VIT_VVM,          \
}

//
// Vd, Vs1, Vs2, Vm (VVM)
//
#define ATTR32_VD_VS1_VS2_M_VVM(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RMR,    \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_V_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VVM,          \
}

//
// Vd, Vs1, Vs2, Vm (VVN)
//
#define ATTR32_VD_VS1_VS2_M_VVN(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_V_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VVN,          \
}

//
// Vd, Vs1, Vs2, Vm (VS)
//
#define ATTR32_VD_VS1_VS2_M_VS(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_V_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VS,           \
}

//
// Vd, Vs1, Vs2, Vm (WV)
//
#define ATTR32_VD_VS1_VS2_M_WV(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_V_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_WV,           \
}

//
// Vd, [Vs1, ]Vs2, Vm (V.V)
//
#define ATTR32_VD_vs1_VS2_M_V_V(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R3,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_V_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_V_V,          \
}

//
// Vd, Vs1, Vs2 (MM)
//
#define ATTR32_VD_VS1_VS2_MM(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_V_19_15,          \
    VIType   : RV_VIT_MM,           \
}

//
// Rd, Vs1, Rs2 (V)
//
#define ATTR32_RD_VS1_RS2_V(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_X_19_15,          \
    VIType   : RV_VIT_V,            \
}

//
// Rd, Vs1, Vm (M)
//
#define ATTR32_RD_VS1_M_M(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_RM,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_M,            \
}

//
// Vd, Vs1, Vm (M)
//
#define ATTR32_VD_VS1_M_M(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_RM,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_M,            \
}

//
// Vd, Vm (V)
//
#define ATTR32_VD_M_V(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_RM,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_V,            \
}

//
// Rd, Vs1
//
#define ATTR32_RD_VS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_11_7,           \
    r2       : RS_V_24_20,          \
    VIType   : RV_VIT_NA,           \
}

//
// Vd, Vs1, SIMM, Vm (VI)
//
#define ATTR32_VD_VS1_SI_M_VI(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_SIMM_RM,   \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    cs       : CS_S_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VI,           \
}

//
// Vd, Vs1, UIMM, Vm (VI)
//
#define ATTR32_VD_VS1_UI_M_VI(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_SIMM_RM,   \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    cs       : CS_U_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VI,           \
}

//
// Vd, Vs1, SIMM, V0.M (VIM)
//
#define ATTR32_VD_VS1_SI_M0_VIM(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_SIMM_RMR,  \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    cs       : CS_S_19_15,          \
    mask     : RS_V0,               \
    VIType   : RV_VIT_VIM,          \
}

//
// Vd, Vs1, SIMM, Vm
//
#define ATTR32_VD_VS1_SI_M(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_SIMM,         \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    cs       : CS_S_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_NA,           \
}

//
// Vd, Vs1, UIMM, Vm (VIM)
//
#define ATTR32_VD_VS1_UI_M_VIM(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_SIMM_RMR,  \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    cs       : CS_S_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VIM,          \
}

//
// Vd, Vs1, Vm (V, whole register)
//
#define ATTR32_VD_VS1_M_W_V(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    whole    : WR_T,                \
    nf       : NF_17_15,            \
    VIType   : RV_VIT_V,            \
}

//
// Vd, Vs1, UIMM, Vm (VIN)
//
#define ATTR32_VD_VS1_UI_M_VIN(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_SIMM_RM,   \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    cs       : CS_U_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VIN,          \
}

//
// Vd, Vs1, Rs2, Vm (VX)
//
#define ATTR32_VD_VS1_RS2_M_VX(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_X_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VX,           \
}

//
// Vd, Vs1, Rs2, V0.M (VXM)
//
#define ATTR32_VD_VS1_RS2_M0_VXM(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RMR,    \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_X_19_15,          \
    mask     : RS_V0,               \
    VIType   : RV_VIT_VXM,          \
}

//
// Vd, Vs1, Rs2, Vm (VXM)
//
#define ATTR32_VD_VS1_RS2_M_VXM(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RMR,    \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_X_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VXM,          \
}

//
// Vd, [Vs1, ]Rs2
//
#define ATTR32_VD_vs1_RS2(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R3,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_X_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_NA,           \
}

//
// Vd, Vs1, Rs2, Vm (VXN)
//
#define ATTR32_VD_VS1_RS2_M_VXN(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_X_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VXN,          \
}

//
// Vd, Rs2, Vs1, Vm (VX)
//
#define ATTR32_VD_RS2_VS1_M_VX(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_X_19_15,          \
    r3       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VX,           \
}

//
// Vd, Vs1, Fs2, Vm (VF)
//
#define ATTR32_VD_VS1_FS2_M_VF(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_F_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VF,           \
}

//
// Vd, Vs1, Fs2, Vm (VFM)
//
#define ATTR32_VD_VS1_FS2_M_VFM(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RMR,    \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_F_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VFM,          \
}

//
// Vd[, Vs1], Fs2, Vm
//
#define ATTR32_VD_vs1_FS2_M(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R3,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_F_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_NA,           \
}

//
// Vd, Fs2, Vs1, Vm (VF)
//
#define ATTR32_VD_FS2_VS1_M_VF(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_F_19_15,          \
    r3       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_VF,           \
}

//
// Vd, Vs1, Fs2, Vm (WF)
//
#define ATTR32_VD_VS1_FS2_M_WF(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_F_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_WF,           \
}

//
// Vd, Fs2
//
#define ATTR32_VD_FS2(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_F_19_15,          \
    VIType   : RV_VIT_NA,           \
    wF       : WF_ARCH,             \
}

//
// Vd, Rs2
//
#define ATTR32_VD_RS2(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_X_19_15,          \
    VIType   : RV_VIT_NA,           \
}

//
// Vd, Vs1, Rs2, Vm (WX)
//
#define ATTR32_VD_VS1_RS2_M_WX(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_R3_RM,     \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    r3       : RS_X_19_15,          \
    mask     : RS_V_M_25,           \
    VIType   : RV_VIT_WX,           \
}

//
// Fd, Vs1
//
#define ATTR32_FD_VS1(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2,           \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_F_11_7,           \
    r2       : RS_V_24_20,          \
    VIType   : RV_VIT_NA,           \
    wF       : WF_ARCH,             \
}

//
// instructions like VEXT.V
//
#define ATTR32_VEXT_V(_NAME, _GENERIC, _ARCH, _OPCODE) [IT32_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R1_R2_RM,        \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_V_11_7,           \
    r2       : RS_V_24_20,          \
    mask     : RS_V_M_25,           \
    eewDiv   : EEWD_17_16,          \
    VIType   : RV_VIT_V,            \
}

//
// instructions like LAST
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
// instructions like NOP
//
#define ATTR16_NOP(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_NONE,          \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
}

//
// instructions like ADD
//
#define ATTR16_ADD(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_R2_R3,      \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_11_7,         \
    r3     : RS_X_6_2,          \
}

//
// instructions like AND
//
#define ATTR16_AND(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_R2_R3,      \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_9_7_P8,       \
    r2     : RS_X_9_7_P8,       \
    r3     : RS_X_4_2_P8,       \
}

//
// instructions like ADDW
//
#define ATTR16_ADDW(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_R2_R3,      \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_9_7_P8,       \
    r2     : RS_X_9_7_P8,       \
    r3     : RS_X_4_2_P8,       \
    wX     : WX_W1,             \
}

//
// instructions like MV
//
#define ATTR16_MV(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_R2,         \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_6_2,          \
}

//
// instructions like ADDI
//
#define ATTR16_ADDI(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_R2_SIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_11_7,         \
    cs     : CS_C_ADDI,         \
}

//
// instructions like ADDI16SP
//
#define ATTR16_ADDI16SP(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_R2_SIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_SP,           \
    r2     : RS_X_SP,           \
    cs     : CS_C_ADDI16SP,     \
}

//
// instructions like ADDI4SPN
//
#define ATTR16_ADDI4SPN(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_R2_SIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_4_2_P8,       \
    r2     : RS_X_SP,           \
    cs     : CS_C_ADDI4SPN,     \
}

//
// instructions like ADDIW
//
#define ATTR16_ADDIW(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_R2_SIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_11_7,         \
    cs     : CS_C_ADDI,         \
    wX     : WX_W1,             \
}

//
// instructions like ANDI
//
#define ATTR16_ANDI(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_R2_SIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_9_7_P8,       \
    r2     : RS_X_9_7_P8,       \
    cs     : CS_C_ADDI,         \
}

//
// instructions like SLLI
//
#define ATTR16_SLLI(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_R2_XIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_11_7,         \
    cs     : CS_C_SLLI,         \
}

//
// instructions like SRAI
//
#define ATTR16_SRAI(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_R2_XIMM,    \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_9_7_P8,       \
    r2     : RS_X_9_7_P8,       \
    cs     : CS_C_SLLI,         \
}

//
// instructions like BEQZ
//
#define ATTR16_BEQZ(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_TGT,        \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_9_7_P8,       \
    r2     : RS_X_ZERO,         \
    cs     : CS_C_B,            \
}

//
// instructions like J
//
#define ATTR16_J(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_TGT,           \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_ZERO,         \
    cs     : CS_C_J,            \
}

//
// instructions like JAL
//
#define ATTR16_JAL(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_TGT,        \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_LR,           \
    cs     : CS_C_J,            \
}

//
// instructions like JR
//
#define ATTR16_JR(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R2,              \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_ZERO,           \
    r2       : RS_X_11_7,           \
}

//
// instructions like JALR
//
#define ATTR16_JALR(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode   : _OPCODE,             \
    format   : FMT_R2,              \
    type     : RV_IT_##_GENERIC,    \
    arch     : _ARCH,               \
    r1       : RS_X_LR,             \
    r2       : RS_X_11_7,           \
}

//
// instructions like LI
//
#define ATTR16_LI(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_SIMM,       \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_ZERO,         \
    cs     : CS_C_ADDI,         \
}

//
// instructions like LUI
//
#define ATTR16_LUI(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_UI,         \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_ZERO,         \
    cs     : CS_C_LUI,          \
}

//
// instructions like LD
//
#define ATTR16_LD(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_4_2_P8,       \
    r2     : RS_X_9_7_P8,       \
    cs     : CS_C_LD,           \
    memBits: MBS_D,             \
}

//
// instructions like LDSP
//
#define ATTR16_LDSP(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_11_7,         \
    r2     : RS_X_SP,           \
    cs     : CS_C_LDSP,         \
    memBits: MBS_D,             \
}

//
// instructions like SDSP
//
#define ATTR16_SDSP(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_6_2,          \
    r2     : RS_X_SP,           \
    cs     : CS_C_SDSP,         \
    memBits: MBS_D,             \
}

//
// instructions like LW
//
#define ATTR16_LW(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
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
// instructions like LWSP
//
#define ATTR16_LWSP(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
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
// instructions like SWSP
//
#define ATTR16_SWSP(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_R1_OFF_R2,     \
    type   : RV_IT_##_GENERIC,  \
    arch   : _ARCH,             \
    r1     : RS_X_6_2,          \
    r2     : RS_X_SP,           \
    cs     : CS_C_SWSP,         \
    memBits: MBS_W,             \
}

//
// instructions like FLD
//
#define ATTR16_FLD(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
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
// instructions like FLDSP
//
#define ATTR16_FLDSP(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
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
// instructions like FSDSP
//
#define ATTR16_FSDSP(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
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
// instructions like FLW
//
#define ATTR16_FLW(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
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
// instructions like FLWSP
//
#define ATTR16_FLWSP(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
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
// instructions like FSWSP
//
#define ATTR16_FSWSP(_NAME, _GENERIC, _ARCH, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
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
// instructions like LAST
//
#define ATTR16_LAST(_NAME, _GENERIC, _OPCODE) [IT16_##_NAME] = { \
    opcode : _OPCODE,           \
    format : FMT_NONE,          \
    type   : RV_IT_##_GENERIC   \
}

