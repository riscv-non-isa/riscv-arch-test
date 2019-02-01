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

// VMI header files
#include "vmi/vmiCxt.h"
#include "vmi/vmiDecode.h"
#include "vmi/vmiMessage.h"

// model header files
#include "riscvDecode.h"
#include "riscvDecodeTypes.h"
#include "riscvDisassembleFormats.h"
#include "riscvInstructionInfo.h"
#include "riscvMessage.h"
#include "riscvStructure.h"
#include "riscvUtils.h"


////////////////////////////////////////////////////////////////////////////////
// UTILITIES
////////////////////////////////////////////////////////////////////////////////

//
// Fetch two bytes from the given address
//
inline static Uns16 fetch2(riscvP riscv, riscvAddr thisPC) {
    return vmicxtFetch2Byte((vmiProcessorP)riscv, thisPC);
}

//
// Fetch four bytes from the given address
//
inline static Uns32 fetch4(riscvP riscv, riscvAddr thisPC) {
    return vmicxtFetch4Byte((vmiProcessorP)riscv, thisPC);
}

//
// Is the instruction a 4-byte instruction?
//
inline static Bool is4ByteInstruction(Uns32 instruction) {
    return ((instruction & 3) == 3);
}

//
// Are compressed instructions present?
//
inline static Bool compressedPresent(riscvP riscv) {
    return riscv->configInfo.arch & ISA_C;
}

//
// Return size of the instruction at address thisPC
//
static Uns32 getInstructionSize(riscvP riscv, riscvAddr thisPC) {

    Uns32 result;

    if(!compressedPresent(riscv)) {
        result = 4;
    } else if(is4ByteInstruction(fetch2(riscv, thisPC))) {
        result = 4;
    } else {
        result = 2;
    }

    return result;
}

//
// Return current XLEN bits
//
inline static Uns32 getXLenBits(riscvP riscv) {
    return riscvGetXlenMode(riscv);
}

//
// Return current XLEN architecture
//
static riscvArchitecture getXLenArch(riscvP riscv) {
    return getXLenBits(riscv)==32 ? ISA_XLEN_32 : ISA_XLEN_64;
}


////////////////////////////////////////////////////////////////////////////////
// FIELD EXTRACTION MACROS
////////////////////////////////////////////////////////////////////////////////

//
// Extract _BITS from _ARG, zero-extending left
//
#define UBITS(_BITS, _ARG)  ((_ARG)&((1<<(_BITS))-1))

//
// Extract _BITS from _ARG, sign-extending left
//
#define SBITS(_BITS, _ARG)  (((Int32)((_ARG)<<(32-_BITS)))>>(32-_BITS))

// unsigned field extraction macros
#define U_2(_I)             UBITS(1, (_I)>> 2)
#define U_3(_I)             UBITS(1, (_I)>> 3)
#define U_3_2(_I)           UBITS(2, (_I)>> 2)
#define U_4_2(_I)           UBITS(3, (_I)>> 2)
#define U_4_3(_I)           UBITS(2, (_I)>> 3)
#define U_5(_I)             UBITS(1, (_I)>> 5)
#define U_5_3(_I)           UBITS(3, (_I)>> 3)
#define U_6(_I)             UBITS(1, (_I)>> 6)
#define U_6_2(_I)           UBITS(5, (_I)>> 2)
#define U_6_4(_I)           UBITS(3, (_I)>> 4)
#define U_6_5(_I)           UBITS(2, (_I)>> 5)
#define U_7(_I)             UBITS(1, (_I)>> 7)
#define U_8(_I)             UBITS(1, (_I)>> 8)
#define U_8_7(_I)           UBITS(2, (_I)>> 7)
#define U_9_7(_I)           UBITS(3, (_I)>> 7)
#define U_10_7(_I)          UBITS(4, (_I)>> 7)
#define U_10_9(_I)          UBITS(2, (_I)>> 9)
#define U_11(_I)            UBITS(1, (_I)>>11)
#define U_11_7(_I)          UBITS(5, (_I)>> 7)
#define U_11_8(_I)          UBITS(4, (_I)>> 8)
#define U_11_10(_I)         UBITS(2, (_I)>>10)
#define U_12(_I)            UBITS(1, (_I)>>12)
#define U_12_9(_I)          UBITS(4, (_I)>> 9)
#define U_12_10(_I)         UBITS(3, (_I)>>10)
#define U_12_11(_I)         UBITS(2, (_I)>>11)
#define U_13_12(_I)         UBITS(2, (_I)>>12)
#define U_14(_I)            UBITS(1, (_I)>>14)
#define U_14_12(_I)         UBITS(3, (_I)>>12)
#define U_19_12(_I)         UBITS(8, (_I)>>12)
#define U_19_15(_I)         UBITS(5, (_I)>>15)
#define U_20(_I)            UBITS(1, (_I)>>20)
#define U_21(_I)            UBITS(1, (_I)>>21)
#define U_23_20(_I)         UBITS(4, (_I)>>20)
#define U_24_20(_I)         UBITS(5, (_I)>>20)
#define U_25(_I)            UBITS(1, (_I)>>25)
#define U_25_20(_I)         UBITS(6, (_I)>>20)
#define U_26_25(_I)         UBITS(2, (_I)>>25)
#define U_27_24(_I)         UBITS(4, (_I)>>24)
#define U_30_21(_I)         UBITS(10,(_I)>>21)
#define U_30_25(_I)         UBITS(6, (_I)>>25)
#define U_31_20(_I)         UBITS(12,(_I)>>20)
#define U_31_27(_I)         UBITS(5, (_I)>>27)

// signed field extraction macros
#define S_12(_I)            SBITS(1, (_I)>>12)
#define S_31_12(_I)         SBITS(20,(_I)>>12)
#define S_31_20(_I)         SBITS(12,(_I)>>20)
#define S_31_25(_I)         SBITS(7, (_I)>>25)
#define S_31(_I)            SBITS(1, (_I)>>31)


////////////////////////////////////////////////////////////////////////////////
// INSTRUCTION DESCRIPTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Define the encoding of a CSR index in an instruction
//
typedef enum csrUpdateSpecE {
    CSRUS_NA,           // instruction has no CSR update specification
    CSRUS_13_12,        // update specification in bits 13:12
} csrUpdateSpec;

//
// Define the encoding of a CSR index in an instruction
//
typedef enum csrSpecE {
    CSRS_NA,            // instruction has no CSR
    CSRS_31_20,         // CSR in bits 31:20
} csrSpec;

//
// Define the encoding of a fence description in an instruction
//
typedef enum fenceSpecE {
    FENCES_NA,          // instruction has no fence
    FENCES_23_20,       // fence specification in bits 23:20
    FENCES_27_24,       // fence specification in bits 27:24
} fenceSpec;

//
// Define the encoding of memory bit size in an instruction
//
typedef enum memBitsSpecE {
    MBS_NA,             // instruction has no memory bit size
    MBS_12,             // memory bit size in bit 12
    MBS_13_12,          // memory bit size in bits 13:12
    MBS_W,              // memory bit size 32 (word)
    MBS_D,              // memory bit size 64 (double)
} memBitsSpec;

//
// Define the encoding of unsigned extend boolean in an instruction
//
typedef enum unsExtSpecE {
    USX_NA,             // instruction has no extension specification
    USX_14,             // extension specification in bit 14
} unsExtSpec;

//
// Define the encoding of a constant in an instruction
//
typedef enum constSpecE {
    CS_NA,              // instruction has no constant
    CS_U_19_15,         // unsigned value in 19:15
    CS_S_31_20,         // signed value in 31:20
    CS_S_31_25_11_7,    // signed value in 31:25,11:7
    CS_SHAMT_25_20,     // shift amount in 25:20 (or 24:20 when XLEN==32)
    CS_AUIPC,           // signed value in 31:12 << 12 (AUIPC encoding)
    CS_J,               // target address in 31:12 (J encoding)
    CS_B,               // target address in 31:25 and 11:6 (B encoding)
    CS_C_ADDI,          // signed value in 12,6:2 (C.ADDI encoding)
    CS_C_SLLI,          // unsigned value in 12,6:2 (C.SLLI encoding)
    CS_C_ADDI16SP,      // signed value in 12,6:2 (C.ADDI16SP encoding)
    CS_C_ADDI4SPN,      // signed value in 12:5 (C.ADDI4SPN encoding)
    CS_C_LUI,           // signed value in 12,6:2 (C.LUI encoding)
    CS_C_LW,            // unsigned value in 12:10,6:5 (C.LW encoding)
    CS_C_LD,            // unsigned value in 12:10,6:5 (C.LD encoding)
    CS_C_LWSP,          // unsigned value in 12,6:2 (C.LWSP encoding)
    CS_C_LDSP,          // unsigned value in 12,6:2 (C.LDSP encoding)
    CS_C_SWSP,          // unsigned value in 12:7 (C.SWSP encoding)
    CS_C_SDSP,          // unsigned value in 12:7 (C.SDSP encoding)
    CS_C_B,             // target address in 12:10 and 6:2 (C.B encoding)
    CS_C_J,             // target address in 12:2 (C.J encoding)
} constSpec;

//
// Define the encoding of register in an instruction
//
typedef enum rSpecE {
    R_NA,               // no register
    RS_X_ZERO,          // zero register
    RS_X_LR,            // lr register
    RS_X_SP,            // sp register
    RS_X_4_2_P8,        // X register in 4:2 + 8
    RS_X_6_2,           // X register in 6:2
    RS_X_11_7,          // X register in 11:7
    RS_X_19_15,         // X register in 19:15
    RS_X_24_20,         // X register in 24:20
    RS_X_9_7_P8,        // X register in 9:7 + 8
    RS_XWL_11_7,        // X register in 11:7 (use W/L name)
    RS_XWL_19_15,       // X register in 19:15 (use W/L name)
    RS_XX_11_7,         // X register in 11:7 (use X name)
    RS_XX_19_15,        // X register in 19:15 (use X name)
    RS_F_4_2_P8,        // floating point register in 4:2 + 8
    RS_F_6_2,           // floating point register in 6:2
    RS_F_11_7,          // floating point register in 11:7
    RS_F_19_15,         // floating point register in 19:15
    RS_F_24_20,         // floating point register in 24:20
    RS_F_31_27,         // floating point register in 31:27
    RS_S_19_15,         // single-precision floating point register in 19:15
    RS_D_19_15,         // double-precision floating point register in 19:15
} rSpec;

//
// Define the encoding of X register width specifier in an instruction
//
typedef enum wxSpecE {
    WX_NA,              // no width
    WX_3,               // W in bit 3 (implicit in disassembly)
    WX_12,              // !W in bit 12 (explicit in disassembly)
    WX_25,              // !W in bit 25 (implicit in disassembly)
    WX_21_U_20,         // !W in bit 21 and unsigned in bit 20
    WX_W1,              // W=1 (implicit in disassembly)
} wxSpec;

//
// Define the encoding of F register width specifier in an instruction
//
typedef enum wfSpecE {
    WF_NA,              // no width
    WF_25,              // !W in bit 25 (explicit in disassembly)
    WF_MEM,             // width matches memBits
} wfSpec;

//
// Define the encoding of acquire/release specifier in an instruction
//
typedef enum aqrlSpecE {
    AQRL_NA,            // no width
    AQRL_26_25,         // acquire/release in bits 26:25
} aqrlSpec;

//
// Define the encoding of rounding mode specifier in an instruction
//
typedef enum rmSpecE {
    RM_NA,              // no rounding mode
    RM_14_12,           // rounding mode in bits 14:12
} rmSpec;

//
// Structure defining characteristics of each opcode type
//
typedef struct opAttrsS {
    const char       *opcode;           // opcode name
    const char       *pattern;          // decode pattern
    const char       *format;           // format string
    riscvArchitecture arch;             // architectural requirements
    riscvIType        type     :  8;    // equivalent generic instruction
    rSpec             r1       :  8;    // specification of r1
    rSpec             r2       :  8;    // specification of r2
    rSpec             r3       :  8;    // specification of r3
    rSpec             r4       :  8;    // specification of r4
    constSpec         cs       :  8;    // location of constant
    csrSpec           csr      :  4;    // location of CSR
    csrUpdateSpec     csrUpdate:  4;    // location of CSR update specification
    wxSpec            wX       :  4;    // X register width specification
    wfSpec            wF       :  4;    // F register width specification
    aqrlSpec          aqrl     :  4;    // acquire/release specification
    fenceSpec         pred     :  4;    // predecessor fence specification
    fenceSpec         succ     :  4;    // successor fence specification
    memBitsSpec       memBits  :  4;    // load/store size specification
    unsExtSpec        unsExt   :  4;    // unsigned extend specification
    rmSpec            rm       :  4;    // rounding mode specification
    Uns32             priDelta :  4;    // decode priority delta
    Bool              csrInOp  :  1;    // whether to emit CSR as part of opcode
    Bool              xQuiet   :  1;    // are X registers type-quiet?
} opAttrs;

typedef const struct opAttrsS *opAttrsCP;


////////////////////////////////////////////////////////////////////////////////
// 32-BIT INSTRUCTION TYPES
////////////////////////////////////////////////////////////////////////////////

//
// Instruction type enumeration
//
typedef enum riscvIType32E {

    // base R-type instructions
    IT32_ADD_R,
    IT32_AND_R,
    IT32_OR_R,
    IT32_NEG_R,
    IT32_SGTZ_R,
    IT32_SLL_R,
    IT32_SLT_R,
    IT32_SLTU_R,
    IT32_SLTZ_R,
    IT32_SNEZ_R,
    IT32_SRA_R,
    IT32_SRL_R,
    IT32_SUB_R,
    IT32_XOR_R,

    // M-extension R-type instructions
    IT32_DIV_R,
    IT32_DIVU_R,
    IT32_MUL_R,
    IT32_MULH_R,
    IT32_MULHSU_R,
    IT32_MULHU_R,
    IT32_REM_R,
    IT32_REMU_R,

    // base I-type instructions
    IT32_ADDI_I,
    IT32_ANDI_I,
    IT32_JR_I,
    IT32_JR0_I,
    IT32_JALR_I,
    IT32_JALR0_I,
    IT32_MV_I,
    IT32_NOP_I,
    IT32_NOT_I,
    IT32_ORI_I,
    IT32_RET_I,
    IT32_SEQZ_I,
    IT32_SEXTW_I,
    IT32_SLLI_I,
    IT32_SLTI_I,
    IT32_SLTIU_I,
    IT32_SRAI_I,
    IT32_SRLI_I,
    IT32_XORI_I,

    // base I-type instructions for load
    IT32_LB_I,
    IT32_LBU_I,
    IT32_LH_I,
    IT32_LHU_I,
    IT32_LW_I,
    IT32_LWU_I,
    IT32_LD_I,

    // base S-type instructions for store
    IT32_SB_I,
    IT32_SH_I,
    IT32_SW_I,
    IT32_SD_I,

    // base I-type instructions for CSR access (register)
    IT32_CSRRC_I,
    IT32_CSRRS_I,
    IT32_CSRRW_I,
    IT32_CSRR_I,
    IT32_CSRC_I,
    IT32_CSRS_I,
    IT32_CSRW_I,
    IT32_RDX1_I,
    IT32_RDX2_I,

    // base I-type instructions for CSR access (constant)
    IT32_CSRRCI_I,
    IT32_CSRRSI_I,
    IT32_CSRRWI_I,
    IT32_CSRCI_I,
    IT32_CSRSI_I,
    IT32_CSRWI_I,

    // miscellaneous system I-type instructions
    IT32_EBREAK_I,
    IT32_ECALL_I,
    IT32_FENCEI_I,
    IT32_MRET_I,
    IT32_SRET_I,
    IT32_URET_I,
    IT32_WFI_I,

    // system fence I-type instruction
    IT32_FENCE_I,

    // system fence R-type instruction
    IT32_FENCE_VMA_R,

    // base U-type instructions
    IT32_AUIPC_U,
    IT32_LUI_U,

    // base B-type instructions
    IT32_BEQ_B,
    IT32_BEQZ_B,
    IT32_BGE_B,
    IT32_BGEZ_B,
    IT32_BLEZ_B,
    IT32_BGEU_B,
    IT32_BLT_B,
    IT32_BLTZ_B,
    IT32_BGTZ_B,
    IT32_BLTU_B,
    IT32_BNE_B,
    IT32_BNEZ_B,

    // base J-type instructions
    IT32_J_J,
    IT32_JAL_J,

    // A-extension R-type instructions
    IT32_AMOADD_R,
    IT32_AMOAND_R,
    IT32_AMOMAX_R,
    IT32_AMOMAXU_R,
    IT32_AMOMIN_R,
    IT32_AMOMINU_R,
    IT32_AMOOR_R,
    IT32_AMOSWAP_R,
    IT32_AMOXOR_R,
    IT32_LR_R,
    IT32_SC_R,

    // F-extension and D-extension R-type instructions
    IT32_FADD_R,
    IT32_FCLASS_R,
    IT32_FCVT_F_X_R,
    IT32_FCVT_X_F_R,
    IT32_FCVT_D_S_R,
    IT32_FCVT_S_D_R,
    IT32_FDIV_R,
    IT32_FEQ_R,
    IT32_FLE_R,
    IT32_FLT_R,
    IT32_FMAX_R,
    IT32_FMIN_R,
    IT32_FMUL_R,
    IT32_FMVFX_R,
    IT32_FMVXF_R,
    IT32_FSGNJ_R,
    IT32_FSGNJN_R,
    IT32_FSGNJX_R,
    IT32_FSQRT_R,
    IT32_FSUB_R,

    // F-extension and D-extension R4-type instructions
    IT32_FMADD_R4,
    IT32_FMSUB_R4,
    IT32_FNMADD_R4,
    IT32_FNMSUB_R4,

    // F-extension and D-extension I-type instructions
    IT32_FL_I,
    IT32_FS_I,

    // F-extension and D-extension I-type instructions for CSR access
    IT32_FRSR_I,
    IT32_FRFLAGS_I,
    IT32_FRRM_I,
    IT32_FSSR_I,
    IT32_FSFLAGS_I,
    IT32_FSRM_I,

    // Custom instructions
    IT32_CUSTOM1,
    IT32_CUSTOM2,
    IT32_CUSTOM3,
    IT32_CUSTOM4,

    // KEEP LAST
    IT32_LAST

} riscvIType32;

//
// This specifies attributes for each 32-bit opcode
//
const static opAttrs attrsArray32[] = {

    // base R-type                                                     | funct7|  rs2|  rs1|fun|   rd| opcode|
    ATTR32_ADD       (      ADD_R,       ADD_R, RVANY,  "add",        "|0000000|.....|.....|000|.....|011.011|"),
    ATTR32_ADD       (      AND_R,       AND_R, RVANY,  "and",        "|0000000|.....|.....|111|.....|0110011|"),
    ATTR32_NEG       (      NEG_R,       SUB_R, RVANY,  "neg",        "|0100000|.....|00000|000|.....|011.011|"),
    ATTR32_ADD       (       OR_R,        OR_R, RVANY,  "or",         "|0000000|.....|.....|110|.....|0110011|"),
    ATTR32_NEG       (     SGTZ_R,       SLT_R, RVANY,  "sgtz",       "|0000000|.....|00000|010|.....|0110011|"),
    ATTR32_ADD       (      SLL_R,       SLL_R, RVANY,  "sll",        "|0000000|.....|.....|001|.....|011.011|"),
    ATTR32_ADD       (      SLT_R,       SLT_R, RVANY,  "slt",        "|0000000|.....|.....|010|.....|0110011|"),
    ATTR32_ADD       (     SLTU_R,      SLTU_R, RVANY,  "sltu",       "|0000000|.....|.....|011|.....|0110011|"),
    ATTR32_SLTZ      (     SLTZ_R,       SLT_R, RVANY,  "sltz",       "|0000000|00000|.....|010|.....|0110011|"),
    ATTR32_NEG       (     SNEZ_R,      SLTU_R, RVANY,  "snez",       "|0000000|.....|00000|011|.....|0110011|"),
    ATTR32_ADD       (      SRA_R,       SRA_R, RVANY,  "sra",        "|0100000|.....|.....|101|.....|011.011|"),
    ATTR32_ADD       (      SRL_R,       SRL_R, RVANY,  "srl",        "|0000000|.....|.....|101|.....|011.011|"),
    ATTR32_ADD       (      SUB_R,       SUB_R, RVANY,  "sub",        "|0100000|.....|.....|000|.....|011.011|"),
    ATTR32_ADD       (      XOR_R,       XOR_R, RVANY,  "xor",        "|0000000|.....|.....|100|.....|0110011|"),

    // M-extension R-type                                              | funct7|  rs2|  rs1|fun|   rd| opcode|
    ATTR32_ADD       (      DIV_R,       DIV_R, RVANYM, "div",        "|0000001|.....|.....|100|.....|011.011|"),
    ATTR32_ADD       (     DIVU_R,      DIVU_R, RVANYM, "divu",       "|0000001|.....|.....|101|.....|011.011|"),
    ATTR32_ADD       (      MUL_R,       MUL_R, RVANYM, "mul",        "|0000001|.....|.....|000|.....|011.011|"),
    ATTR32_ADD       (     MULH_R,      MULH_R, RVANYM, "mulh",       "|0000001|.....|.....|001|.....|0110011|"),
    ATTR32_ADD       (   MULHSU_R,    MULHSU_R, RVANYM, "mulhsu",     "|0000001|.....|.....|010|.....|0110011|"),
    ATTR32_ADD       (    MULHU_R,     MULHU_R, RVANYM, "mulhu",      "|0000001|.....|.....|011|.....|0110011|"),
    ATTR32_ADD       (      REM_R,       REM_R, RVANYM, "rem",        "|0000001|.....|.....|110|.....|011.011|"),
    ATTR32_ADD       (     REMU_R,      REMU_R, RVANYM, "remu",       "|0000001|.....|.....|111|.....|011.011|"),

    // base I-type                                                     |       imm32|  rs1|fun|   rd| opcode|
    ATTR32_ADDI      (     ADDI_I,      ADDI_I, RVANY,  "addi",       "|............|.....|000|.....|001.011|"),
    ATTR32_ADDI      (     ANDI_I,      ANDI_I, RVANY,  "andi",       "|............|.....|111|.....|0010011|"),
    ATTR32_JR        (       JR_I,      JALR_I, RVANY,  "jr",         "|............|.....|000|00000|1100111|"),
    ATTR32_JR0       (      JR0_I,      JALR_I, RVANY,  "jr",         "|000000000000|.....|000|00000|1100111|"),
    ATTR32_JALR      (     JALR_I,      JALR_I, RVANY,  "jalr",       "|............|.....|000|.....|1100111|"),
    ATTR32_NOT       (    JALR0_I,      JALR_I, RVANY,  "jalr",       "|000000000000|.....|000|.....|1100111|"),
    ATTR32_NOT       (       MV_I,        MV_R, RVANY,  "mv",         "|000000000000|.....|000|.....|0010011|"),
    ATTR32_NOPI      (      NOP_I,      ADDI_I, RVANY,  "nop",        "|000000000000|00000|000|00000|0010011|"),
    ATTR32_NOT       (      NOT_I,      XORI_I, RVANY,  "not",        "|111111111111|.....|100|.....|0010011|"),
    ATTR32_ADDI      (      ORI_I,       ORI_I, RVANY,  "ori",        "|............|.....|110|.....|0010011|"),
    ATTR32_NOPI      (      RET_I,      JALR_I, RVANY,  "ret",        "|000000000000|00001|000|00000|1100111|"),
    ATTR32_NOT       (     SEQZ_I,     SLTIU_I, RVANY,  "seqz",       "|000000000001|.....|011|.....|0010011|"),
    ATTR32_NOT       (    SEXTW_I,      ADDI_I, RVANY,  "sext.",      "|000000000000|.....|000|.....|0011011|"),
    ATTR32_SLLI      (     SLLI_I,      SLLI_I, RVANY,  "slli",       "|000000......|.....|001|.....|001.011|"),
    ATTR32_ADDI      (     SLTI_I,      SLTI_I, RVANY,  "slti",       "|............|.....|010|.....|0010011|"),
    ATTR32_ADDI      (    SLTIU_I,     SLTIU_I, RVANY,  "sltiu",      "|............|.....|011|.....|0010011|"),
    ATTR32_SLLI      (     SRAI_I,      SRAI_I, RVANY,  "srai",       "|010000......|.....|101|.....|001.011|"),
    ATTR32_SLLI      (     SRLI_I,      SRLI_I, RVANY,  "srli",       "|000000......|.....|101|.....|001.011|"),
    ATTR32_ADDI      (     XORI_I,      XORI_I, RVANY,  "xori",       "|............|.....|100|.....|0010011|"),

    // base I-type instructions for load                               |       imm32|  rs1|fun|   rd| opcode|
    ATTR32_LB        (       LB_I,         L_I, RVANY,  "l",          "|............|.....|000|.....|0000011|"),
    ATTR32_LB        (      LBU_I,         L_I, RVANY,  "l",          "|............|.....|100|.....|0000011|"),
    ATTR32_LB        (       LH_I,         L_I, RVANY,  "l",          "|............|.....|001|.....|0000011|"),
    ATTR32_LB        (      LHU_I,         L_I, RVANY,  "l",          "|............|.....|101|.....|0000011|"),
    ATTR32_LB        (       LW_I,         L_I, RVANY,  "l",          "|............|.....|010|.....|0000011|"),
    ATTR32_LB        (      LWU_I,         L_I, RV64,   "l",          "|............|.....|110|.....|0000011|"),
    ATTR32_LB        (       LD_I,         L_I, RV64,   "l",          "|............|.....|011|.....|0000011|"),

    // base S-type instructions for store                              |  imm32|  rs2|  rs1|fun|imm32| opcode|
    ATTR32_SB        (       SB_I,         S_I, RVANY,  "s",          "|.......|.....|.....|000|.....|0100011|"),
    ATTR32_SB        (       SH_I,         S_I, RVANY,  "s",          "|.......|.....|.....|001|.....|0100011|"),
    ATTR32_SB        (       SW_I,         S_I, RVANY,  "s",          "|.......|.....|.....|010|.....|0100011|"),
    ATTR32_SB        (       SD_I,         S_I, RV64,   "s",          "|.......|.....|.....|011|.....|0100011|"),

    // base I-type instructions for CSR access (register)              |         CSR|  rs1|fun|   rd| opcode|
    ATTR32_CSRRC     (    CSRRC_I,      CSRR_I, RVANY,  "csrrc",      "|............|.....|011|.....|1110011|"),
    ATTR32_CSRRC     (    CSRRS_I,      CSRR_I, RVANY,  "csrrs",      "|............|.....|010|.....|1110011|"),
    ATTR32_CSRRC     (    CSRRW_I,      CSRR_I, RVANY,  "csrrw",      "|............|.....|001|.....|1110011|"),
    ATTR32_CSRR      (     CSRR_I,      CSRR_I, RVANY,  "csrr",       "|............|00000|010|.....|1110011|"),
    ATTR32_CSRC      (     CSRC_I,      CSRR_I, RVANY,  "csrc",       "|............|.....|011|00000|1110011|"),
    ATTR32_CSRC      (     CSRS_I,      CSRR_I, RVANY,  "csrs",       "|............|.....|010|00000|1110011|"),
    ATTR32_CSRC      (     CSRW_I,      CSRR_I, RVANY,  "csrw",       "|............|.....|001|00000|1110011|"),
    ATTR32_RDX1      (     RDX1_I,      CSRR_I, RVANY,  "rd",         "|1100.000000.|00000|010|.....|1110011|"),
    ATTR32_RDX1      (     RDX2_I,      CSRR_I, RVANY,  "rd",         "|1100.0000010|00000|010|.....|1110011|"),

    // base I-type instructions for CSR access (constant)              |         CSR| uimm|fun|   rd| opcode|
    ATTR32_CSRRCI    (   CSRRCI_I,     CSRRI_I, RVANY,  "csrrci",     "|............|.....|111|.....|1110011|"),
    ATTR32_CSRRCI    (   CSRRSI_I,     CSRRI_I, RVANY,  "csrrsi",     "|............|.....|110|.....|1110011|"),
    ATTR32_CSRRCI    (   CSRRWI_I,     CSRRI_I, RVANY,  "csrrwi",     "|............|.....|101|.....|1110011|"),
    ATTR32_CSRCI     (    CSRCI_I,     CSRRI_I, RVANY,  "csrci",      "|............|.....|111|00000|1110011|"),
    ATTR32_CSRCI     (    CSRSI_I,     CSRRI_I, RVANY,  "csrsi",      "|............|.....|110|00000|1110011|"),
    ATTR32_CSRCI     (    CSRWI_I,     CSRRI_I, RVANY,  "csrwi",      "|............|.....|101|00000|1110011|"),

    // miscellaneous system I-type instructions                        |          SY|b10_0|fun|b10_0| opcode|
    ATTR32_NOP       (   EBREAK_I,    EBREAK_I, RVANY,  "ebreak",     "|000000000001|00000|000|00000|1110011|"),
    ATTR32_NOP       (    ECALL_I,     ECALL_I, RVANY,  "ecall",      "|000000000000|00000|000|00000|1110011|"),
    ATTR32_NOP       (   FENCEI_I,    FENCEI_I, RVANY,  "fence.i",    "|000000000000|00000|001|00000|0001111|"),
    ATTR32_NOP       (     MRET_I,      MRET_I, RVANY,  "mret",       "|001100000010|00000|000|00000|1110011|"),
    ATTR32_NOP       (     SRET_I,      SRET_I, RVANY,  "sret",       "|000100000010|00000|000|00000|1110011|"),
    ATTR32_NOP       (     URET_I,      URET_I, RVANYN, "uret",       "|000000000010|00000|000|00000|1110011|"),
    ATTR32_NOP       (      WFI_I,       WFI_I, RVANY,  "wfi",        "|000100000101|00000|000|00000|1110011|"),

    // system fence I-type instruction                                 |  FE|pred|succ|           FE| opcode|
    ATTR32_FENCE     (    FENCE_I,     FENCE_I, RVANY,  "fence",      "|0000|....|....|0000000000000|0001111|"),

    // system fence R-type instruction                                 | funct7|  rs2|  rs1|fun|   rd| opcode|
    ATTR32_FENCE_VMA (FENCE_VMA_R, FENCE_VMA_R, RVANY,  "sfence.vma", "|0001001|.....|.....|000|00000|1110011|"),

    // base U-type                                                     |               imm32|   rd| opcode|
    ATTR32_AUIPC     (    AUIPC_U,     AUIPC_U, RVANY,  "auipc",      "|....................|.....|0010111|"),
    ATTR32_AUIPC     (      LUI_U,        MV_C, RVANY,  "lui",        "|....................|.....|0110111|"),

    // base B-type                                                     |i| imm32|  rs2|  rs1|fun|imm3|i| opcode|
    ATTR32_BEQ       (      BEQ_B,       BEQ_B, RVANY,  "beq",        "|.|......|.....|.....|000|....|.|1100011|"),
    ATTR32_BEQZ      (     BEQZ_B,       BEQ_B, RVANY,  "beqz",       "|.|......|00000|.....|000|....|.|1100011|"),
    ATTR32_BEQ       (      BGE_B,       BGE_B, RVANY,  "bge",        "|.|......|.....|.....|101|....|.|1100011|"),
    ATTR32_BEQZ      (     BGEZ_B,       BGE_B, RVANY,  "bgez",       "|.|......|00000|.....|101|....|.|1100011|"),
    ATTR32_BGTZ      (     BLEZ_B,       BGE_B, RVANY,  "blez",       "|.|......|.....|00000|101|....|.|1100011|"),
    ATTR32_BEQ       (     BGEU_B,      BGEU_B, RVANY,  "bgeu",       "|.|......|.....|.....|111|....|.|1100011|"),
    ATTR32_BEQ       (      BLT_B,       BLT_B, RVANY,  "blt",        "|.|......|.....|.....|100|....|.|1100011|"),
    ATTR32_BEQZ      (     BLTZ_B,       BLT_B, RVANY,  "bltz",       "|.|......|00000|.....|100|....|.|1100011|"),
    ATTR32_BGTZ      (     BGTZ_B,       BLT_B, RVANY,  "bgtz",       "|.|......|.....|00000|100|....|.|1100011|"),
    ATTR32_BEQ       (     BLTU_B,      BLTU_B, RVANY,  "bltu",       "|.|......|.....|.....|110|....|.|1100011|"),
    ATTR32_BEQ       (      BNE_B,       BNE_B, RVANY,  "bne",        "|.|......|.....|.....|001|....|.|1100011|"),
    ATTR32_BEQZ      (     BNEZ_B,       BNE_B, RVANY,  "bnez",       "|.|......|00000|.....|001|....|.|1100011|"),

    // base J-type                                                     |i|     imm32|i|   imm32|   rd| opcode|
    ATTR32_J         (        J_J,       JAL_J, RVANY,  "j",          "|.|..........|.|........|00000|1101111|"),
    ATTR32_JAL       (      JAL_J,       JAL_J, RVANY,  "jal",        "|.|..........|.|........|.....|1101111|"),

    // A-extension R-type                                              | funct7|  rs2|  rs1|fun|   rd| opcode|
    ATTR32_AMOADD    (   AMOADD_R,    AMOADD_R, RVANYA, "amoadd",     "|00000..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (   AMOAND_R,    AMOAND_R, RVANYA, "amoand",     "|01100..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (   AMOMAX_R,    AMOMAX_R, RVANYA, "amomax",     "|10100..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (  AMOMAXU_R,   AMOMAXU_R, RVANYA, "amomaxu",    "|11100..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (   AMOMIN_R,    AMOMIN_R, RVANYA, "amomin",     "|10000..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (  AMOMINU_R,   AMOMINU_R, RVANYA, "amominu",    "|11000..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (    AMOOR_R,     AMOOR_R, RVANYA, "amoor",      "|01000..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (  AMOSWAP_R,   AMOSWAP_R, RVANYA, "amoswap",    "|00001..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (   AMOXOR_R,    AMOXOR_R, RVANYA, "amoxor",     "|00100..|.....|.....|01.|.....|0101111|"),
    ATTR32_LR        (       LR_R,        LR_R, RVANYA, "lr",         "|00010..|00000|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (       SC_R,        SC_R, RVANYA, "sc",         "|00011..|.....|.....|01.|.....|0101111|"),

    // F-extension and D-extension R-type instructions                 | funct7|  rs2|  rs1|drm|   rd| opcode|
    ATTR32_FADD      (     FADD_R,      FADD_R, RVANY,  "fadd",       "|000000.|.....|.....|...|.....|1010011|"),
    ATTR32_FCLASS    (   FCLASS_R,    FCLASS_R, RVANY,  "fclass",     "|111000.|00000|.....|001|.....|1010011|"),
    ATTR32_FCVT      ( FCVT_F_X_R,      FCVT_R, RVANY,  "fcvt",       "|110100.|000..|.....|...|.....|1010011|", F,   XWL),
    ATTR32_FCVT      ( FCVT_X_F_R,      FCVT_R, RVANY,  "fcvt",       "|110000.|000..|.....|...|.....|1010011|", XWL, F  ),
    ATTR32_FCVT      ( FCVT_D_S_R,      FCVT_R, RVANY,  "fcvt",       "|0100001|00000|.....|...|.....|1010011|", F,   S  ),
    ATTR32_FCVT      ( FCVT_S_D_R,      FCVT_R, RVANY,  "fcvt",       "|0100000|00001|.....|...|.....|1010011|", F,   D  ),
    ATTR32_FADD      (     FDIV_R,      FDIV_R, RVANY,  "fdiv",       "|000110.|.....|.....|...|.....|1010011|"),
    ATTR32_FEQ       (      FEQ_R,       FEQ_R, RVANY,  "feq",        "|101000.|.....|.....|010|.....|1010011|"),
    ATTR32_FEQ       (      FLE_R,       FLE_R, RVANY,  "fle",        "|101000.|.....|.....|000|.....|1010011|"),
    ATTR32_FEQ       (      FLT_R,       FLT_R, RVANY,  "flt",        "|101000.|.....|.....|001|.....|1010011|"),
    ATTR32_FMAX      (     FMAX_R,      FMAX_R, RVANY,  "fmax",       "|001010.|.....|.....|001|.....|1010011|"),
    ATTR32_FMAX      (     FMIN_R,      FMIN_R, RVANY,  "fmin",       "|001010.|.....|.....|000|.....|1010011|"),
    ATTR32_FADD      (     FMUL_R,      FMUL_R, RVANY,  "fmul",       "|000100.|.....|.....|...|.....|1010011|"),
    ATTR32_FMAX      (    FSGNJ_R,     FSGNJ_R, RVANY,  "fsgnj",      "|001000.|.....|.....|000|.....|1010011|"),
    ATTR32_FMAX      (   FSGNJN_R,    FSGNJN_R, RVANY,  "fsgnjn",     "|001000.|.....|.....|001|.....|1010011|"),
    ATTR32_FMAX      (   FSGNJX_R,    FSGNJX_R, RVANY,  "fsgnjx",     "|001000.|.....|.....|010|.....|1010011|"),
    ATTR32_FMVFX     (    FMVFX_R,        MV_R, RVANY,  "fmv",        "|111100.|00000|.....|000|.....|1010011|"),
    ATTR32_FMVXF     (    FMVXF_R,        MV_R, RVANY,  "fmv",        "|111000.|00000|.....|000|.....|1010011|"),
    ATTR32_FSQRT     (    FSQRT_R,     FSQRT_R, RVANY,  "fsqrt",      "|010110.|00000|.....|...|.....|1010011|"),
    ATTR32_FADD      (     FSUB_R,      FSUB_R, RVANY,  "fsub",       "|000010.|.....|.....|...|.....|1010011|"),

    // F-extension and D-extension R4-type instructions                |  rs3|fu|  rs2|  rs1| rm|   rd| opcode|
    ATTR32_FMADD     (   FMADD_R4,    FMADD_R4, RVANY,  "fmadd",      "|.....|0.|.....|.....|...|.....|1000011|"),
    ATTR32_FMADD     (   FMSUB_R4,    FMSUB_R4, RVANY,  "fmsub",      "|.....|0.|.....|.....|...|.....|1000111|"),
    ATTR32_FMADD     (  FNMADD_R4,   FNMADD_R4, RVANY,  "fnmadd",     "|.....|0.|.....|.....|...|.....|1001111|"),
    ATTR32_FMADD     (  FNMSUB_R4,   FNMSUB_R4, RVANY,  "fnmsub",     "|.....|0.|.....|.....|...|.....|1001011|"),

    // F-extension and D-extension I-type instructions                 |       imm32|  rs1|fun|   rd| opcode|
    ATTR32_FL        (       FL_I,         L_I, RVANY,  "fl",         "|............|.....|01.|.....|0000111|"),
    ATTR32_FS        (       FS_I,         S_I, RVANY,  "fs",         "|............|.....|01.|.....|0100111|"),

    // F-extension and D-extension I-type instructions for CSR access  |         CSR|  rs1|fun|   rd| opcode|
    ATTR32_FRSR      (     FRSR_I,      CSRR_I, RVANY,  "frsr",       "|000000000011|00000|010|.....|1110011|"),
    ATTR32_FRSR      (  FRFLAGS_I,      CSRR_I, RVANY,  "frflags",    "|000000000001|00000|010|.....|1110011|"),
    ATTR32_FRSR      (     FRRM_I,      CSRR_I, RVANY,  "frrm",       "|000000000010|00000|010|.....|1110011|"),
    ATTR32_FSSR      (     FSSR_I,      CSRR_I, RVANY,  "fssr",       "|000000000011|.....|001|.....|1110011|"),
    ATTR32_FSSR      (  FSFLAGS_I,      CSRR_I, RVANY,  "fsflags",    "|000000000001|.....|001|.....|1110011|"),
    ATTR32_FSSR      (     FSRM_I,      CSRR_I, RVANY,  "fsrm",       "|000000000010|.....|001|.....|1110011|"),

    // X-extension Type, custom instructions
    ATTR32_CUSTOM    (    CUSTOM1,      CUSTOM, RVANY,  "custom1",    "|............|.....|...|.....|0001011|"),
    ATTR32_CUSTOM    (    CUSTOM2,      CUSTOM, RVANY,  "custom2",    "|............|.....|...|.....|0101011|"),
    ATTR32_CUSTOM    (    CUSTOM3,      CUSTOM, RVANY,  "custom3",    "|............|.....|...|.....|1011011|"),
    ATTR32_CUSTOM    (    CUSTOM4,      CUSTOM, RVANY,  "custom4",    "|............|.....|...|.....|1111011|"),

    // dummy entry for undecoded instruction
    ATTR32_LAST      (       LAST,      LAST,           "undef")
};

//
// Create the 32-bit instruction decode table
//
static vmidDecodeTableP createDecodeTable32(void) {

    // create the table
    vmidDecodeTableP table = vmidNewDecodeTable(32, IT32_LAST);
    riscvIType32     i;

    for(i=0; i<IT32_LAST; i++) {

        opAttrsCP entry = &attrsArray32[i];

        VMI_ASSERT(entry->opcode, "invalid attribute entry (index %u)", i);

        vmidNewEntryFmtBin(
            table,
            entry->opcode,
            i,
            entry->pattern,
            VMID_DERIVE_PRIORITY + entry->priDelta
        );
    }

    return table;
}

//
// Classify 32-bit instruction
//
static riscvIType32 getInstructionType32(riscvP riscv, riscvInstrInfoP info) {

    static vmidDecodeTableP decodeTable;

    // create instruction decode table if required
    if(!decodeTable) {
        decodeTable = createDecodeTable32();
    }

    // decode the instruction using decode table
    return vmidDecode(decodeTable, info->instruction);
}


////////////////////////////////////////////////////////////////////////////////
// 16-BIT INSTRUCTION TYPES
////////////////////////////////////////////////////////////////////////////////

//
// Instruction type enumeration
//
typedef enum riscvIType16E {

    // base R-type instructions
    IT16_ADD_R,
    IT16_ADDW_R,
    IT16_AND_R,
    IT16_MV_R,
    IT16_OR_R,
    IT16_SUB_R,
    IT16_SUBW_R,
    IT16_XOR_R,

    // base I-type instructions
    IT16_ADDI_I,
    IT16_ADDI16SP_I,
    IT16_ADDI4SPN_I,
    IT16_ADDIW_I,
    IT16_ANDI_I,
    IT16_SLLI_I,
    IT16_SRAI_I,
    IT16_SRLI_I,
    IT16_LI_I,
    IT16_LUI_I,
    IT16_JR_I,
    IT16_JALR_I,
    IT16_LD_I,
    IT16_LDSP_I,
    IT16_LW_I,
    IT16_LWSP_I,
    IT16_SD_I,
    IT16_SDSP_I,
    IT16_SW_I,
    IT16_SWSP_I,

    // miscellaneous system instructions
    IT16_EBREAK_I,

    // base B-type instructions
    IT16_BEQZ_B,
    IT16_BNEZ_B,

    // base J-type instructions
    IT16_J_J,
    IT16_JAL_J,

    // F-extension and D-extension I-type instructions
    IT16_FLD_I,
    IT16_FLDSP_I,
    IT16_FLW_I,
    IT16_FLWSP_I,
    IT16_FSD_I,
    IT16_FSDSP_I,
    IT16_FSW_I,
    IT16_FSWSP_I,

    // explicitly undefined and reserved instructions
    IT16_UD1,
    IT16_RES1,  // c.addi4spn/c.addi16sp when nzuimm=0
    IT16_RES2,  // c.lui when nzimm=0
    IT16_RES3,  // c.jr when rs=0
    IT16_RES4,  // c.addiw when rd=0
    IT16_RES5,  // c.lwsp when rd=0
    IT16_RES6,  // c.ldsp when rd=0

    // KEEP LAST
    IT16_LAST

} riscvIType16;

//
// This specifies attributes for each 16-bit opcode
//
const static opAttrs attrsArray16[] = {

    // base R-type instructions
    ATTR16_ADD      (      ADD_R,    ADD_R, RVANYC,  "add",     "|100|1|.....|.....|10|"),
    ATTR16_ADDW     (     ADDW_R,    ADD_R, RV64C,   "add",     "|100111|...|01|...|01|"),
    ATTR16_AND      (      AND_R,    AND_R, RVANYC,  "and",     "|100011|...|11|...|01|"),
    ATTR16_MV       (       MV_R,     MV_R, RVANYC,  "mv",      "|100|0|.....|.....|10|"),
    ATTR16_AND      (       OR_R,     OR_R, RVANYC,  "or",      "|100011|...|10|...|01|"),
    ATTR16_AND      (      SUB_R,    SUB_R, RVANYC,  "sub",     "|100011|...|00|...|01|"),
    ATTR16_ADDW     (     SUBW_R,    SUB_R, RV64C,   "sub",     "|100111|...|00|...|01|"),
    ATTR16_AND      (      XOR_R,    XOR_R, RVANYC,  "xor",     "|100011|...|01|...|01|"),

    // base I-type instructions
    ATTR16_ADDI     (     ADDI_I,   ADDI_I, RVANYC,  "addi",    "|000|.|.....|.....|01|"),
    ATTR16_ADDI16SP ( ADDI16SP_I,   ADDI_I, RVANYC,  "addi",    "|011|.|00010|.....|01|"),
    ATTR16_ADDI4SPN ( ADDI4SPN_I,   ADDI_I, RVANYC,  "addi",    "|000|........|...|00|"),
    ATTR16_ADDIW    (    ADDIW_I,   ADDI_I, RV64C,   "addi",    "|001|.|.....|.....|01|"),
    ATTR16_ANDI     (     ANDI_I,   ANDI_I, RVANYC,  "andi",    "|100|.|10...|.....|01|"),
    ATTR16_SLLI     (     SLLI_I,   SLLI_I, RVANYC,  "slli",    "|000|.|.....|.....|10|"),
    ATTR16_SRAI     (     SRAI_I,   SRAI_I, RVANYC,  "srai",    "|100|.|01...|.....|01|"),
    ATTR16_SRAI     (     SRLI_I,   SRLI_I, RVANYC,  "srli",    "|100|.|00...|.....|01|"),
    ATTR16_LI       (       LI_I,   ADDI_I, RVANYC,  "li",      "|010|.|.....|.....|01|"),
    ATTR16_LUI      (      LUI_I,   ADDI_I, RVANYC,  "lui",     "|011|.|.....|.....|01|"),
    ATTR16_JR       (       JR_I,   JALR_I, RVANYC,  "jr",      "|100|0|.....|00000|10|"),
    ATTR16_JALR     (     JALR_I,   JALR_I, RVANYC,  "jalr",    "|100|1|.....|00000|10|"),
    ATTR16_LD       (       LD_I,      L_I, RV64C,   "l",       "|011|...|...|..|...|00|"),
    ATTR16_LDSP     (     LDSP_I,      L_I, RV64C,   "l",       "|011|.|.....|.....|10|"),
    ATTR16_LW       (       LW_I,      L_I, RVANYC,  "l",       "|010|...|...|..|...|00|"),
    ATTR16_LWSP     (     LWSP_I,      L_I, RVANYC,  "l",       "|010|.|.....|.....|10|"),
    ATTR16_LD       (       SD_I,      S_I, RV64C,   "s",       "|111|...|...|..|...|00|"),
    ATTR16_SDSP     (     SDSP_I,      S_I, RV64C,   "s",       "|111|.|.....|.....|10|"),
    ATTR16_LW       (       SW_I,      S_I, RVANYC,  "s",       "|110|...|...|..|...|00|"),
    ATTR16_SWSP     (     SWSP_I,      S_I, RVANYC,  "s",       "|110|.|.....|.....|10|"),

    // miscellaneous system instructions
    ATTR16_NOP      (   EBREAK_I, EBREAK_I, RVANYC,  "ebreak",  "|100|1|00000|00000|10|"),

    // base B-type instructions
    ATTR16_BEQZ     (     BEQZ_B,    BEQ_B, RVANYC,  "beqz",    "|110|...|...|.....|01|"),
    ATTR16_BEQZ     (     BNEZ_B,    BNE_B, RVANYC,  "bnez",    "|111|...|...|.....|01|"),

    // base J-type instructions
    ATTR16_J        (        J_J,    JAL_J, RVANYC,  "j",       "|101|...........|01|"),
    ATTR16_JAL      (      JAL_J,    JAL_J, RV32C,   "jal",     "|001|...........|01|"),

    // F-extension and D-extension I-type instructions
    ATTR16_FLD      (      FLD_I,      L_I, RVANYCD, "fl",      "|001|...|...|..|...|00|"),
    ATTR16_FLDSP    (    FLDSP_I,      L_I, RVANYCD, "fl",      "|001|.|.....|.....|10|"),
    ATTR16_FLW      (      FLW_I,      L_I, RV32CF,  "fl",      "|011|...|...|..|...|00|"),
    ATTR16_FLWSP    (    FLWSP_I,      L_I, RV32CF,  "fl",      "|011|.|.....|.....|10|"),
    ATTR16_FLD      (      FSD_I,      S_I, RVANYCD, "fs",      "|101|...|...|..|...|00|"),
    ATTR16_FSDSP    (    FSDSP_I,      S_I, RVANYCD, "fs",      "|101|......|.....|10|"),
    ATTR16_FLW      (      FSW_I,      S_I, RV32CF,  "fs",      "|111|...|...|..|...|00|"),
    ATTR16_FSWSP    (    FSWSP_I,      S_I, RV32CF,  "fs",      "|111|......|.....|10|"),

    // explicitly undefined and reserved instructions
    ATTR16_NOP      (        UD1,     LAST, RVANYC,  "illegal", "|000|0|00000|00000|00|"),
    ATTR16_NOP      (       RES1,     LAST, RVANYC,  "res",     "|000|00000000|...|00|"),
    ATTR16_NOP      (       RES2,     LAST, RVANYC,  "res",     "|011|0|.....|00000|01|"),
    ATTR16_NOP      (       RES3,     LAST, RVANYC,  "res",     "|100|0|00000|00000|10|"),
    ATTR16_NOP      (       RES4,     LAST, RV64C,   "res",     "|001|.|00000|.....|01|"),
    ATTR16_NOP      (       RES5,     LAST, RVANYC,  "res",     "|010|.|00000|.....|10|"),
    ATTR16_NOP      (       RES6,     LAST, RV64C,   "res",     "|011|.|00000|.....|10|"),

    // dummy entry for undecoded instruction
    ATTR16_LAST     (       LAST,     LAST,          "undef")
};

//
// Create the 16-bit instruction decode table
//
static vmidDecodeTableP createDecodeTable16(Bool is64BitMode) {

    // get architecture for the current XLEN
    riscvArchitecture XLENarch = is64BitMode ? ISA_XLEN_64 : ISA_XLEN_32;

    // create the table
    vmidDecodeTableP table = vmidNewDecodeTable(16, IT16_LAST);
    riscvIType16     i;

    for(i=0; i<IT16_LAST; i++) {

        opAttrsCP entry = &attrsArray16[i];

        VMI_ASSERT(entry->opcode, "invalid attribute entry (index %u)", i);

        // only add entries that apply to the current XLEN (patterns are reused)
        if(entry->arch & XLENarch) {
            vmidNewEntryFmtBin(
                table,
                entry->opcode,
                i,
                entry->pattern,
                VMID_DERIVE_PRIORITY + entry->priDelta
            );
        }
    }

    return table;
}

//
// Classify 16-bit instruction
//
static riscvIType16 getInstructionType16(riscvP riscv, riscvInstrInfoP info) {

    static vmidDecodeTableP decodeTables[2];

    // select decode table depending on instruction size (patterns are reused)
    Bool is64BitMode = (getXLenBits(riscv)==64);

    // create instruction decode table if required
    if(!decodeTables[is64BitMode]) {
        decodeTables[is64BitMode] = createDecodeTable16(is64BitMode);
    }

    // decode the instruction using decode table
    return vmidDecode(decodeTables[is64BitMode], info->instruction);
}


////////////////////////////////////////////////////////////////////////////////
// INSTRUCTION INTERPRETATION
////////////////////////////////////////////////////////////////////////////////

//
// Force register width to 32 (when XLEN is 64 only)
//
static riscvRegDesc forceWidth32(riscvInstrInfoP info) {

    info->arch     &= ~ISA_XLEN_32;
    info->explicitW = True;

    return RV_RD_32;
}

//
// Return X register width specifier encoded in the instruction
//
static riscvRegDesc getXWidth(riscvP riscv, riscvInstrInfoP info, wxSpec w) {

    Uns32        instr   = info->instruction;
    riscvRegDesc current = (getXLenBits(riscv)==32) ? RV_RD_32 : RV_RD_64;
    riscvRegDesc result;

    switch(w) {
        case WX_NA:
            result = current;
            break;
        case WX_3:
            result = !U_3(instr) ? current : forceWidth32(info);
            break;
        case WX_12:
            result = U_12(instr) ? RV_RD_64 : RV_RD_32;
            // explicitly show operand types
            info->explicitType = True;
            break;
        case WX_25:
            result = U_25(instr) ? RV_RD_64 : RV_RD_32;
            break;
        case WX_21_U_20:
            result = U_21(instr) ? RV_RD_64 : RV_RD_32;
            // include signed/unsigned indication
            result += U_20(instr) ? RV_RD_U : 0;
            // explicitly show operand types
            info->explicitType = True;
            break;
        case WX_W1:
            result = forceWidth32(info);
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return F register width specifier encoded in the instruction
//
static riscvRegDesc getFWidth(riscvP riscv, riscvInstrInfoP info, wfSpec w) {

    Uns32        instr = info->instruction;
    riscvRegDesc result;

    switch(w) {
        case WF_NA:
            result = RV_RD_NA;
            break;
        case WF_25:
            result = U_25(instr) ? RV_RD_64 : RV_RD_32;
            // explicitly show operand types
            info->explicitType = True;
            break;
        case WF_MEM:
            result = (info->memBits==64) ? RV_RD_64 : RV_RD_32;
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return a CSR index encoded within the instruction
//
static Uns32 getCSR(riscvP riscv, riscvInstrInfoP info, csrSpec csr) {

    Uns32 result = 0;
    Uns32 instr  = info->instruction;

    switch(csr) {
        case CSRS_NA:
            break;
        case CSRS_31_20:
            result = U_31_20(instr);
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return a CSR update specification encoded within the instruction
//
static riscvCSRUDesc getCSRUpdate(
    riscvP          riscv,
    riscvInstrInfoP info,
    csrUpdateSpec   csrUpdate
) {
    riscvCSRUDesc result = RV_CSR_NA;
    Uns32         instr  = info->instruction;

    switch(csrUpdate) {
        case CSRUS_NA:
            break;
        case CSRUS_13_12:
            result = U_13_12(instr);
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Force result to be undefined if shift amount >= XLEN or register size
//
static void validateShift(
    riscvP          riscv,
    riscvInstrInfoP info,
    Uns32           shift,
    riscvRegDesc    wX
) {
    if(shift>=getXLenBits(riscv)) {
        info->arch &= ~getXLenArch(riscv);
    } else if(shift>=getRBits(wX)) {
        info->type = RV_IT_LAST;
    }
}

//
// Return a constant encoded within the instruction
//
static Uns64 getConstant(
    riscvP          riscv,
    riscvInstrInfoP info,
    constSpec       c,
    riscvRegDesc    wX
) {
    Uns64 result = 0;
    Uns32 instr  = info->instruction;

    switch(c) {
        case CS_NA:
            break;
        case CS_U_19_15:
            result = U_19_15(instr);
            break;
        case CS_S_31_20:
            result = S_31_20(instr);
            break;
        case CS_S_31_25_11_7:
            result  = S_31_25(instr) << 5;
            result += U_11_7(instr);
            break;
        case CS_SHAMT_25_20:
            result = U_25_20(instr);
            validateShift(riscv, info, result, wX);
            break;
        case CS_AUIPC:
            result = S_31_12(instr) << 12;
            break;
        case CS_J:
            result  = S_31(instr)    << 20;
            result += U_19_12(instr) << 12;
            result += U_20(instr)    << 11;
            result += U_30_21(instr) <<  1;
            result += info->thisPC;
            break;
        case CS_B:
            result  = S_31(instr)    << 12;
            result += U_7(instr)     << 11;
            result += U_30_25(instr) <<  5;
            result += U_11_8(instr)  <<  1;
            result += info->thisPC;
            break;
        case CS_C_ADDI:
            result  = S_12(instr) << 5;
            result += U_6_2(instr);
            break;
        case CS_C_SLLI:
            result  = U_12(instr) << 5;
            result += U_6_2(instr);
            validateShift(riscv, info, result, wX);
            break;
        case CS_C_ADDI16SP:
            result  = S_12(instr)  << 9;
            result += U_4_3(instr) << 7;
            result += U_5(instr)   << 6;
            result += U_2(instr)   << 5;
            result += U_6(instr)   << 4;
            break;
        case CS_C_ADDI4SPN:
            result  = U_10_7(instr)  << 6;
            result += U_12_11(instr) << 4;
            result += U_5(instr)     << 3;
            result += U_6(instr)     << 2;
            break;
        case CS_C_LUI:
            result  = S_12(instr)  << 17;
            result += U_6_2(instr) << 12;
            break;
        case CS_C_LW:
            result  = U_5(instr)     << 6;
            result += U_12_10(instr) << 3;
            result += U_6(instr)     << 2;
            break;
        case CS_C_LD:
            result  = U_6_5(instr)   << 6;
            result += U_12_10(instr) << 3;
            break;
        case CS_C_LWSP:
            result  = U_3_2(instr) << 6;
            result += U_12(instr)  << 5;
            result += U_6_4(instr) << 2;
            break;
        case CS_C_LDSP:
            result  = U_4_2(instr) << 6;
            result += U_12(instr)  << 5;
            result += U_6_5(instr) << 3;
            break;
        case CS_C_SWSP:
            result  = U_8_7(instr)  << 6;
            result += U_12_9(instr) << 2;
            break;
        case CS_C_SDSP:
            result  = U_9_7(instr)   << 6;
            result += U_12_10(instr) << 3;
            break;
        case CS_C_B:
            result  = S_12(instr)    << 8;
            result += U_6_5(instr)   << 6;
            result += U_2(instr)     << 5;
            result += U_11_10(instr) << 3;
            result += U_4_3(instr)   << 1;
            result += info->thisPC;
            break;
        case CS_C_J:
            result  = S_12(instr)    << 11;
            result += U_8(instr)     << 10;
            result += U_10_9(instr)  <<  8;
            result += U_6(instr)     <<  7;
            result += U_7(instr)     <<  6;
            result += U_2(instr)     <<  5;
            result += U_11(instr)    <<  4;
            result += U_5_3(instr)   <<  1;
            result += info->thisPC;
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return register index encoded in the instruction
//
static riscvRegDesc getRegister(
    riscvP          riscv,
    riscvInstrInfoP info,
    rSpec           r,
    riscvRegDesc    wX,
    riscvRegDesc    wF,
    Bool            xQuiet
) {
    riscvRegDesc result  = RV_RD_NA;
    Uns32        instr  = info->instruction;

    switch(r) {
        case R_NA:
            break;
        case RS_X_ZERO:
            result = RV_RD_X | 0;
            break;
        case RS_X_LR:
            result = RV_RD_X | 1;
            break;
        case RS_X_SP:
            result = RV_RD_X | 2;
            break;
        case RS_X_4_2_P8:
            result = RV_RD_X | (U_4_2(instr)+8);
            break;
        case RS_X_6_2:
            result = RV_RD_X | U_6_2(instr);
            break;
        case RS_X_11_7:
            result = RV_RD_X | U_11_7(instr);
            break;
        case RS_X_19_15:
            result = RV_RD_X | U_19_15(instr);
            break;
        case RS_X_24_20:
            result = RV_RD_X | U_24_20(instr);
            break;
        case RS_X_9_7_P8:
            result = RV_RD_X | (U_9_7(instr)+8);
            break;
        case RS_XWL_11_7:
            result = RV_RD_X | U_11_7(instr) | RV_RD_WL;
            break;
        case RS_XWL_19_15:
            result = RV_RD_X | U_19_15(instr) | RV_RD_WL;
            break;
        case RS_XX_11_7:
            result = RV_RD_X | U_11_7(instr) | RV_RD_FX;
            break;
        case RS_XX_19_15:
            result = RV_RD_X | U_19_15(instr) | RV_RD_FX;
            break;
        case RS_F_4_2_P8:
            result = RV_RD_F | (U_4_2(instr)+8);
            break;
        case RS_F_6_2:
            result = RV_RD_F | U_6_2(instr);
            break;
        case RS_F_11_7:
            result = RV_RD_F | U_11_7(instr);
            break;
        case RS_F_19_15:
            result = RV_RD_F | U_19_15(instr);
            break;
        case RS_F_24_20:
            result = RV_RD_F | U_24_20(instr);
            break;
        case RS_F_31_27:
            result = RV_RD_F | U_31_27(instr);
            break;
        case RS_S_19_15:
            result = RV_RD_F | U_19_15(instr) | RV_RD_32;
            break;
        case RS_D_19_15:
            result = RV_RD_F | U_19_15(instr) | RV_RD_64;
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    // fill register widths using width encoded in instruction
    if(result && !getRBits(result)) {

        // indicate that this register is type-quiet if required
        if(xQuiet && isXReg(result) && !isXWLReg(result)) {
            result |= RV_RD_Q;
        }

        // include width appropriate to the register type
        result |= isXReg(result) ? wX : wF;
    }

    // validate X register width if required (floating-point registers require
    // dynamic width validation)
    if(isXReg(result) && (getRBits(result)>getXLenBits(riscv))) {
        info->arch &= ~getXLenArch(riscv);
    }

    return result;
}

//
// Return width specifier encoded in the instruction
//
static riscvAQRLDesc getAQRL(riscvInstrInfoP info, aqrlSpec aqrl) {

    riscvAQRLDesc result = RV_AQRL_NA;
    Uns32         instr  = info->instruction;

    switch(aqrl) {
        case AQRL_NA:
            break;
        case AQRL_26_25:
            result = U_26_25(instr);
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return width specifier encoded in the instruction
//
static riscvFenceDesc getFence(riscvInstrInfoP info, fenceSpec fence) {

    riscvFenceDesc result = RV_FENCE_NA;
    Uns32          instr  = info->instruction;

    switch(fence) {
        case FENCES_NA:
            break;
        case FENCES_23_20:
            result = U_23_20(instr);
            break;
        case FENCES_27_24:
            result = U_27_24(instr);
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;

}

//
// Return width specifier encoded in the instruction
//
static Uns32 getMemBits(riscvInstrInfoP info, memBitsSpec memBits) {

    Uns32 result = 0;
    Uns32 instr  = info->instruction;

    switch(memBits) {
        case MBS_NA:
            break;
        case MBS_12:
            result = 32<<U_12(instr);
            break;
        case MBS_13_12:
            result = 8<<U_13_12(instr);
            break;
        case MBS_W:
            result = 32;
            break;
        case MBS_D:
            result = 64;
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return unsigned extend specifier encoded in the instruction
//
static Bool getUnsExt(riscvInstrInfoP info, unsExtSpec unsExt) {

    Bool  result = False;
    Uns32 instr  = info->instruction;

    switch(unsExt) {
        case USX_NA:
            break;
        case USX_14:
            result = U_14(instr);
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return rounding mode encoded in the instruction
//
static riscvRMDesc getRM(riscvInstrInfoP info, rmSpec rm) {

    riscvRMDesc result = RV_RM_NA;
    Uns32       instr  = info->instruction;

    const static riscvRMDesc map[] = {
        RV_RM_RTE, RV_RM_RTZ,  RV_RM_RDN,  RV_RM_RUP,
        RV_RM_RMM, RV_RM_BAD5, RV_RM_BAD6, RV_RM_CURRENT
    };

    switch(rm) {
        case RM_NA:
            break;
        case RM_14_12:
            result = map[U_14_12(instr)];
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Fix floating point instructions that cannot be determined by decode alone
//
static void fixFPPseudoInstructions(riscvInstrInfoP info) {

    switch(info->type) {

        case RV_IT_FSGNJX_R:
            if(info->r[1]==info->r[2]) {
                info->type   = RV_IT_FABS_R;
                info->opcode = "fabs";
                info->format = FMT_R1_R2;
            }
            break;

        case RV_IT_FSGNJ_R:
            if(info->r[1]==info->r[2]) {
                info->type   = RV_IT_FMV_R;
                info->opcode = "fmv";
                info->format = FMT_R1_R2;
            }
            break;

        case RV_IT_FSGNJN_R:
            if(info->r[1]==info->r[2]) {
                info->type   = RV_IT_FNEG_R;
                info->opcode = "fneg";
                info->format = FMT_R1_R2;
            }
            break;

        default:
            break;
    }
}

//
// Interpret an instruction using the given attributes
//
static void interpretInstruction(
    riscvP          riscv,
    riscvInstrInfoP info,
    opAttrsCP       attrs
) {
    // fill fields from decoded instruction type
    info->type   = attrs->type;
    info->opcode = attrs->opcode;
    info->format = attrs->format;
    info->arch   = attrs->arch;

    // indicate whether operand types should be explicitly listed
    info->explicitType = False;
    info->explicitW    = False;

    // some attributes are copied directly
    info->csrInOp = attrs->csrInOp;

    // get memory width encoded in instruction (prerequisite for getFWidth)
    info->memBits = getMemBits(info, attrs->memBits);

    // get register widths encoded in instruction
    riscvRegDesc wX = getXWidth(riscv, info, attrs->wX);
    riscvRegDesc wF = getFWidth(riscv, info, attrs->wF);

    // fill other fields from instruction
    info->unsExt    = getUnsExt(info, attrs->unsExt);
    info->csr       = getCSR(riscv, info, attrs->csr);
    info->csrUpdate = getCSRUpdate(riscv, info, attrs->csrUpdate);
    info->c         = getConstant(riscv, info, attrs->cs, wX);
    info->r[0]      = getRegister(riscv, info, attrs->r1, wX, wF, attrs->xQuiet);
    info->r[1]      = getRegister(riscv, info, attrs->r2, wX, wF, attrs->xQuiet);
    info->r[2]      = getRegister(riscv, info, attrs->r3, wX, wF, attrs->xQuiet);
    info->r[3]      = getRegister(riscv, info, attrs->r4, wX, wF, attrs->xQuiet);
    info->aqrl      = getAQRL(info, attrs->aqrl);
    info->pred      = getFence(info, attrs->pred);
    info->succ      = getFence(info, attrs->succ);
    info->rm        = getRM(info, attrs->rm);

    // fix up floating point pseudo-instructions
    fixFPPseudoInstructions(info);
}

//
// Decode a 32-bit instruction at the given address
//
static void decode32(riscvP riscv, riscvInstrInfoP info) {

    // decode the instruction using decode table
    riscvIType32 type = getInstructionType32(riscv, info);

    // interpret instruction fields
    interpretInstruction(riscv, info, &attrsArray32[type]);
}

//
// Decode a 16-bit instruction at the given address
//
static void decode16(riscvP riscv, riscvInstrInfoP info) {

    // decode the instruction using decode table
    riscvIType16 type = getInstructionType16(riscv, info);

    // interpret instruction fields
    interpretInstruction(riscv, info, &attrsArray16[type]);
}

//
// Decode instruction at the given address
//
void riscvDecode(
    riscvP          riscv,
    riscvAddr       thisPC,
    riscvInstrInfoP info
) {
    info->type        = RV_IT_LAST;
    info->thisPC      = thisPC;
    info->instruction = riscvGetInstruction(riscv, info->thisPC);
    info->bytes       = is4ByteInstruction(info->instruction) ? 4 : 2;

    // decode based on instruction size
    if(info->bytes==4) {
        decode32(riscv, info);
    } else {
        decode16(riscv, info);
    }
}

//
// Return instruction at address thisPC
//
Uns32 riscvGetInstruction(riscvP riscv, riscvAddr thisPC) {

    Uns32 result;

    if(!compressedPresent(riscv)) {

        // compressed instructions absent: all instructions are 4 bytes, fetched
        // in a single 4-byte operation
        result = fetch4(riscv, thisPC);

    } else if(is4ByteInstruction(result=fetch2(riscv, thisPC))) {

        // compressed instructions present: instructions are 2 or 4 bytes,
        // fetched in 2-byte parts
        riscvAddr highPC = thisPC + 2;

        // allow for highPC wrapping if XLEN is 32
        if(getXLenBits(riscv)==32) {
            highPC &= 0xffffffff;
        }

        // get full instruction pattern
        result |= (fetch2(riscv, highPC) << 16);
    }

    return result;
}

//
// Return size of the instruction at address thisPC
//
Uns32 riscvGetInstructionSize(riscvP riscv, riscvAddr thisPC) {
    return getInstructionSize(riscv, thisPC);
}


