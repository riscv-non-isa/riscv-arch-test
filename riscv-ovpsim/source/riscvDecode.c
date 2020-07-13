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
#define U_14_13(_I)         UBITS(2, (_I)>>13)
#define U_17_15(_I)         UBITS(3, (_I)>>15)
#define U_17_16(_I)         UBITS(2, (_I)>>16)
#define U_19_12(_I)         UBITS(8, (_I)>>12)
#define U_19_15(_I)         UBITS(5, (_I)>>15)
#define U_20(_I)            UBITS(1, (_I)>>20)
#define U_21(_I)            UBITS(1, (_I)>>21)
#define U_21_20(_I)         UBITS(2, (_I)>>20)
#define U_23_20(_I)         UBITS(4, (_I)>>20)
#define U_23(_I)            UBITS(1, (_I)>>23)
#define U_24(_I)            UBITS(1, (_I)>>24)
#define U_24_20(_I)         UBITS(5, (_I)>>20)
#define U_25(_I)            UBITS(1, (_I)>>25)
#define U_25_20(_I)         UBITS(6, (_I)>>20)
#define U_26(_I)            UBITS(1, (_I)>>26)
#define U_26_20(_I)         UBITS(7, (_I)>>20)
#define U_26_25(_I)         UBITS(2, (_I)>>25)
#define U_27_24(_I)         UBITS(4, (_I)>>24)
#define U_28(_I)            UBITS(1, (_I)>>28)
#define U_30_20(_I)         UBITS(11,(_I)>>20)
#define U_30_21(_I)         UBITS(10,(_I)>>21)
#define U_30_25(_I)         UBITS(6, (_I)>>25)
#define U_31_20(_I)         UBITS(12,(_I)>>20)
#define U_31_27(_I)         UBITS(5, (_I)>>27)
#define U_31_29(_I)         UBITS(3, (_I)>>29)

// signed field extraction macros
#define S_12(_I)            SBITS(1, (_I)>>12)
#define S_19_15(_I)         SBITS(5, (_I)>>15)
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
// Define the encoding of EEW in an instruction
//
typedef enum eewSpecE {
    EEW_NA,             // instruction has no EEW
    EEW_14_12,          // EEW in bits 14:12 (vector instructions)
    EEW_28_14_12,       // EEW in bits 28,14:12 (vector instructions)
} eewSpec;

//
// Define the encoding of an EEW divisor in an instruction
//
typedef enum eewDivSpecE {
    EEWD_NA,            // instruction has no EEW divisor
    EEWD_17_16,         // EEW divisor in bits 17:16
} eewDivSpec;

//
// Define the encoding of memory bit size in an instruction
//
typedef enum memBitsSpecE {
    MBS_NA,             // instruction has no memory bit size
    MBS_12,             // memory bit size in bit 12
    MBS_12_VAMO,        // memory bit size in bit 12 (vector AMO instructions)
    MBS_13_12,          // memory bit size in bits 13:12
    MBS_14_12_V,        // memory bit size in bits 14:12 (vector instructions)
    MBS_EEW,            // memory bit size in bits 28,14:12 (vector instructions)
    MBS_SEW,            // memory bit size of SEW (vector instructions)
    MBS_W,              // memory bit size 32 (word)
    MBS_D,              // memory bit size 64 (double)
} memBitsSpec;

//
// Define the encoding of unsigned extend boolean in an instruction
//
typedef enum unsExtSpecE {
    USX_NA,             // instruction has no extension specification
    USX_T,              // extension always unsigned
    USX_14,             // extension specification in bit 14
    USX_28,             // extension specification in bit 28
} unsExtSpec;

//
// Define the encoding of a constant in an instruction
//
typedef enum constSpecE {
    CS_NA,              // instruction has no constant
    CS_U_19_15,         // unsigned value in 19:15
    CS_U_26_20,         // unsigned value in 26:20
    CS_S_19_15,         // signed value in 19:15
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
    RS_X_19_15_S_21_20, // X register in 19:15, B/H/W/D in bits 21:20
    RS_X_24_20,         // X register in 24:20
    RS_X_31_27,         // X register in 31:27
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
    RS_V0,              // vector register V0
    RS_V_11_7,          // vector register in 11:7
    RS_V_19_15,         // vector register in 19:15
    RS_V_24_20,         // vector register in 24:20
    RS_V_M_25,          // vector mask register in bit 25
    RS_V_11_7_Z26,      // vector register in 11:7, or zero if bit 26=0
} rSpec;

//
// Define the encoding of X register width specifier in an instruction
//
typedef enum wxSpecE {
    WX_NA,              // no width
    WX_3,               // W in bit 3 (explicit in disassembly)
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
    WF_ARCH,            // width matches architectural register size
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
    RM_NA,              // no rounding mode (or current mode)
    RM_RTZ,             // round to zero
    RM_ROD,             // round to odd
    RM_14_12,           // rounding mode in bits 14:12
} rmSpec;

//
// Define the encoding of vector type specifier in an instruction
//
typedef enum vtypeSpecE {
    VTYPE_NA,            // no vtype
    VTYPE_30_20,         // vtype in bits 30:20
} vtypeSpec;

//
// Define the encoding of vector vlmul specifier in an instruction
//
typedef enum wholeSpecE {
    WR_NA,              // not whole register
    WR_T,               // always whole register
    WR_23,              // whole register in bit 23
} wholeSpec;

//
// Define the encoding of vector vlmul specifier in an instruction
//
typedef enum firstFaultSpecE {
    FF_NA,              // not first-fault
    FF_24,              // first-fault in bit 24
} firstFaultSpec;

//
// Define the encoding of vector nf specifier in an instruction
//
typedef enum numFieldsSpecE {
    NF_NA,              // no nf
    NF_31_29,           // nf in bits 31:29
    NF_17_15,           // nf in bits 17:15
} numFieldsSpec;

//
// Structure defining characteristics of each opcode type
//
typedef struct opAttrsS {
    const char       *opcode;           // opcode name
    const char       *format;           // format string
    riscvArchitecture arch;             // architectural requirements
    riscvIType        type     : 16;    // equivalent generic instruction
    riscvVIType       VIType   :  8;    // vector instruction type
    rSpec             r1       :  8;    // specification of r1
    rSpec             r2       :  8;    // specification of r2
    rSpec             r3       :  8;    // specification of r3
    rSpec             r4       :  8;    // specification of r4
    rSpec             mask     :  8;    // specification of vector mask
    constSpec         cs       :  8;    // location of constant
    csrSpec           csr      :  4;    // location of CSR
    csrUpdateSpec     csrUpdate:  4;    // location of CSR update specification
    wxSpec            wX       :  4;    // X register width specification
    wfSpec            wF       :  4;    // F register width specification
    fenceSpec         pred     :  4;    // predecessor fence specification
    fenceSpec         succ     :  4;    // successor fence specification
    eewSpec           eew      :  4;    // EEW specification
    memBitsSpec       memBits  :  4;    // load/store size specification
    unsExtSpec        unsExt   :  4;    // unsigned extend specification
    Uns32             priDelta :  4;    // decode priority delta
    rmSpec            rm       :  4;    // rounding mode specification
    numFieldsSpec     nf       :  4;    // nf specification
    wholeSpec         whole    :  4;    // whole register specification
    vtypeSpec         vtype    :  4;    // vtype specification
    aqrlSpec          aqrl     :  1;    // acquire/release specification
    firstFaultSpec    ff       :  1;    // first fault specification
    eewDivSpec        eewDiv   :  1;    // EEW divisor specification
    Bool              shN      :  1;    // shN prefix specification
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
    IT32_DRET_I,
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

    // B-extension R-type instructions
    IT32_ANDN_R,
    IT32_ORN_R,
    IT32_XNOR_R,
    IT32_SLO_R,
    IT32_SRO_R,
    IT32_ROL_R,
    IT32_ROR_R,
    IT32_SBCLR_R,
    IT32_SBSET_R,
    IT32_SBINV_R,
    IT32_SBEXT_R,
    IT32_GORC_R,
    IT32_GREV_R,
    IT32_CLZ_R,
    IT32_CTZ_R,
    IT32_PCNT_R,
    IT32_SEXT_R,
    IT32_CRC32_R,
    IT32_CRC32C_R,
    IT32_CLMUL_R,
    IT32_CLMULR_R,
    IT32_CLMULH_R,
    IT32_MIN_R,
    IT32_MAX_R,
    IT32_MINU_R,
    IT32_MAXU_R,
    IT32_SHFL_R,
    IT32_UNSHFL_R,
    IT32_BDEP_R,
    IT32_BEXT_R,
    IT32_PACK_R,
    IT32_PACKH_R,
    IT32_PACKU_R,
    IT32_BMATFLIP_R,
    IT32_BMATOR_R,
    IT32_BMATXOR_R,
    IT32_BFP_R,
    IT32_ADDWU_R,
    IT32_SUBWU_R,
    IT32_ADDU_W_R,
    IT32_SUBU_W_R,
    IT32_SHADD_R,
    IT32_SHADDU_W_R,

    // B-extension I-type instructions
    IT32_SLOI_I,
    IT32_SROI_I,
    IT32_RORI_I,
    IT32_SBCLRI_I,
    IT32_SBSETI_I,
    IT32_SBINVI_I,
    IT32_SBEXTI_I,
    IT32_GORCI_I,
    IT32_GREVI_I,
    IT32_SHFLI_I,
    IT32_UNSHFLI_I,
    IT32_ADDIWU_I,
    IT32_SLLIU_W_I,

    // B-extension R4-type instructions
    IT32_CMIX_R4,
    IT32_CMOV_R4,
    IT32_FSL_R4,
    IT32_FSR_R4,

    // B-extension R3I-type instructions
    IT32_FSRI_R3I,

    // V-extension R-type instructions
    IT32_VSETVL_R,

    // V-extension I-type instructions
    IT32_VSETVL_I,

    // V-extension load/store instructions (pre-0.9)
    IT32_VL_I,
    IT32_VLS_I,
    IT32_VLX_I,
    IT32_VS_I,
    IT32_VSS_I,
    IT32_VSX_I,
    IT32_VSUX_I,

    // V-extension load/store instructions (0.9 and later)
    IT32_VLE_I,
    IT32_VLSE_I,
    IT32_VLXEI_I,
    IT32_VSE_I,
    IT32_VSSE_I,
    IT32_VSXEI_I,
    IT32_VSUXEI_I,

    // V-extension AMO operations (Zvamo, pre-0.9)
    IT32_VAMOADD_R,
    IT32_VAMOAND_R,
    IT32_VAMOMAX_R,
    IT32_VAMOMAXU_R,
    IT32_VAMOMIN_R,
    IT32_VAMOMINU_R,
    IT32_VAMOOR_R,
    IT32_VAMOSWAP_R,
    IT32_VAMOXOR_R,

    // V-extension AMO operations (Zvamo, 0.9 and later)
    IT32_VAMOADDEI_R,
    IT32_VAMOANDEI_R,
    IT32_VAMOMAXEI_R,
    IT32_VAMOMAXUEI_R,
    IT32_VAMOMINEI_R,
    IT32_VAMOMINUEI_R,
    IT32_VAMOOREI_R,
    IT32_VAMOSWAPEI_R,
    IT32_VAMOXOREI_R,

    // V-extension IVV-type instructions
    IT32_VADD_VV,
    IT32_VSUB_VV,
    IT32_VMINU_VV,
    IT32_VMIN_VV,
    IT32_VMAXU_VV,
    IT32_VMAX_VV,
    IT32_VAND_VV,
    IT32_VOR_VV,
    IT32_VXOR_VV,
    IT32_VRGATHER_VV,
    IT32_VADC_VV,
    IT32_VMADC_VV,
    IT32_VSBC_VV,
    IT32_VMSBC_VV,
    IT32_VMERGE_VV,
    IT32_VMV_V_V,
    IT32_VSEQ_VV,
    IT32_VSNE_VV,
    IT32_VSLTU_VV,
    IT32_VSLT_VV,
    IT32_VSLEU_VV,
    IT32_VSLE_VV,
    IT32_VSADDU_VV,
    IT32_VSADD_VV,
    IT32_VSSUBU_VV,
    IT32_VSSUB_VV,
    IT32_VAADDU_VV,
    IT32_VAADD_VV,
    IT32_VSLL_VV,
    IT32_VASUBU_VV,
    IT32_VASUB_VV,
    IT32_VSMUL_VV,
    IT32_VSRL_VV,
    IT32_VSRA_VV,
    IT32_VSSRL_VV,
    IT32_VSSRA_VV,
    IT32_VNSRL_VV,
    IT32_VNSRA_VV,
    IT32_VNCLIPU_VV,
    IT32_VNCLIP_VV,
    IT32_VWREDSUMU_VS,
    IT32_VWREDSUM_VS,
    IT32_VDOTU_VV,
    IT32_VDOT_VV,
    IT32_VWSMACCU_VV,
    IT32_VWSMACC_VV,
    IT32_VWSMACCSU_VV,

    // V-extension FVV-type instructions
    IT32_VFADD_VV,
    IT32_VFREDSUM_VS,
    IT32_VFSUB_VV,
    IT32_VFREDOSUM_VS,
    IT32_VFMIN_VV,
    IT32_VFREDMIN_VS,
    IT32_VFMAX_VV,
    IT32_VFREDMAX_VS,
    IT32_VFSGNJ_VV,
    IT32_VFSGNJN_VV,
    IT32_VFSGNJX_VV,
    IT32_VFMV_F_S,
    IT32_VFEQ_VV,
    IT32_VFLTE_VV,
    IT32_VFORD_VV,
    IT32_VFLT_VV,
    IT32_VFNE_VV,
    IT32_VFDIV_VV,
    IT32_VFCVT_XUF_V,
    IT32_VFCVTRTZ_XUF_V,
    IT32_VFCVT_XF_V,
    IT32_VFCVTRTZ_XF_V,
    IT32_VFCVT_FXU_V,
    IT32_VFCVT_FX_V,
    IT32_VFWCVT_XUF_V,
    IT32_VFWCVTRTZ_XUF_V,
    IT32_VFWCVT_XF_V,
    IT32_VFWCVTRTZ_XF_V,
    IT32_VFWCVT_FXU_V,
    IT32_VFWCVT_FX_V,
    IT32_VFWCVT_FF_V,
    IT32_VFNCVT_XUF_V,
    IT32_VFNCVTRTZ_XUF_V,
    IT32_VFNCVT_XF_V,
    IT32_VFNCVTRTZ_XF_V,
    IT32_VFNCVT_FXU_V,
    IT32_VFNCVT_FX_V,
    IT32_VFNCVT_FF_V,
    IT32_VFNCVTROD_FF_V,
    IT32_VFSQRT_V,
    IT32_VFRSQRTE7_V,
    IT32_VFRECE7_V,
    IT32_VFCLASS_V,
    IT32_VFMUL_VV,
    IT32_VFMADD_VV,
    IT32_VFNMADD_VV,
    IT32_VFMSUB_VV,
    IT32_VFNMSUB_VV,
    IT32_VFMACC_VV,
    IT32_VFNMACC_VV,
    IT32_VFMSAC_VV,
    IT32_VFNMSAC_VV,
    IT32_VFWADD_VV,
    IT32_VFWREDSUM_VS,
    IT32_VFWSUB_VV,
    IT32_VFWREDOSUM_VS,
    IT32_VFWADD_WV,
    IT32_VFWSUB_WV,
    IT32_VFWMUL_VV,
    IT32_VFDOT_VV,
    IT32_VFWMACC_VV,
    IT32_VFWNMACC_VV,
    IT32_VFWMSAC_VV,
    IT32_VFWNMSAC_VV,

    // V-extension MVV-type instructions
    IT32_VREDSUM_VS,
    IT32_VREDAND_VS,
    IT32_VREDOR_VS,
    IT32_VREDXOR_VS,
    IT32_VREDMINU_VS,
    IT32_VREDMIN_VS,
    IT32_VREDMAXU_VS,
    IT32_VREDMAX_VS,
    IT32_VMV_X_S,
    IT32_VEXT_X_V,
    IT32_VPOPC_M,
    IT32_VFIRST_M,
    IT32_VMSBF_M,
    IT32_VMSOF_M,
    IT32_VMSIF_M,
    IT32_VIOTA_M,
    IT32_VID_V,
    IT32_VCOMPRESS_VM,
    IT32_VMANDNOT_MM,
    IT32_VMAND_MM,
    IT32_VMOR_MM,
    IT32_VMXOR_MM,
    IT32_VMORNOT_MM,
    IT32_VMNAND_MM,
    IT32_VMNOR_MM,
    IT32_VMXNOR_MM,
    IT32_VDIVU_VV,
    IT32_VDIV_VV,
    IT32_VREMU_VV,
    IT32_VREM_VV,
    IT32_VMULHU_VV,
    IT32_VMUL_VV,
    IT32_VMULHSU_VV,
    IT32_VMULH_VV,
    IT32_VMADD_VV,
    IT32_VNMSUB_VV,
    IT32_VMACC_VV,
    IT32_VNMSAC_VV,
    IT32_VWADDU_VV,
    IT32_VWADD_VV,
    IT32_VWSUBU_VV,
    IT32_VWSUB_VV,
    IT32_VWADDU_WV,
    IT32_VWADD_WV,
    IT32_VWSUBU_WV,
    IT32_VWSUB_WV,
    IT32_VWMULU_VV,
    IT32_VWMULSU_VV,
    IT32_VWMUL_VV,
    IT32_VWMACCU_VV,
    IT32_VWMACC_VV,
    IT32_VWMACCSU_VV,
    IT32_VQMACCU_VV,
    IT32_VQMACC_VV,
    IT32_VQMACCSU_VV,

    // V-extension IVI-type instructions
    IT32_VADD_VI,
    IT32_VRSUB_VI,
    IT32_VAND_VI,
    IT32_VOR_VI,
    IT32_VXOR_VI,
    IT32_VRGATHER_VI,
    IT32_VSLIDEUP_VI,
    IT32_VSLIDEDOWN_VI,
    IT32_VADC_VI,
    IT32_VMADC_VI,
    IT32_VMERGE_VI,
    IT32_VMV_V_I,
    IT32_VSEQ_VI,
    IT32_VSNE_VI,
    IT32_VSLEU_VI,
    IT32_VSLE_VI,
    IT32_VSGTU_VI,
    IT32_VSGT_VI,
    IT32_VSADDU_VI,
    IT32_VSADD_VI,
    IT32_VAADD_VI,
    IT32_VSLL_VI,
    IT32_VMVR_VI,
    IT32_VSRL_VI,
    IT32_VSRA_VI,
    IT32_VSSRL_VI,
    IT32_VSSRA_VI,
    IT32_VNSRL_VI,
    IT32_VNSRA_VI,
    IT32_VNCLIPU_VI,
    IT32_VNCLIP_VI,

    // V-extension IVX-type instructions
    IT32_VADD_VX,
    IT32_VSUB_VX,
    IT32_VRSUB_VX,
    IT32_VMINU_VX,
    IT32_VMIN_VX,
    IT32_VMAXU_VX,
    IT32_VMAX_VX,
    IT32_VAND_VX,
    IT32_VOR_VX,
    IT32_VXOR_VX,
    IT32_VRGATHER_VX,
    IT32_VSLIDEUP_VX,
    IT32_VSLIDEDOWN_VX,
    IT32_VADC_VX,
    IT32_VMADC_VX,
    IT32_VSBC_VX,
    IT32_VMSBC_VX,
    IT32_VMERGE_VX,
    IT32_VMV_V_X,
    IT32_VSEQ_VX,
    IT32_VSNE_VX,
    IT32_VSLTU_VX,
    IT32_VSLT_VX,
    IT32_VSLEU_VX,
    IT32_VSLE_VX,
    IT32_VSGTU_VX,
    IT32_VSGT_VX,
    IT32_VSADDU_VX,
    IT32_VSADD_VX,
    IT32_VSSUBU_VX,
    IT32_VSSUB_VX,
    IT32_VAADDU_VX,
    IT32_VAADD_VX,
    IT32_VSLL_VX,
    IT32_VASUBU_VX,
    IT32_VASUB_VX,
    IT32_VSMUL_VX,
    IT32_VSRL_VX,
    IT32_VSRA_VX,
    IT32_VSSRL_VX,
    IT32_VSSRA_VX,
    IT32_VNSRL_VX,
    IT32_VNSRA_VX,
    IT32_VNCLIPU_VX,
    IT32_VNCLIP_VX,
    IT32_VWSMACCU_VX,
    IT32_VWSMACC_VX,
    IT32_VWSMACCSU_VX,
    IT32_VWSMACCUS_VX,

    // V-extension FVF-type instructions
    IT32_VFADD_VF,
    IT32_VFSUB_VF,
    IT32_VFMIN_VF,
    IT32_VFMAX_VF,
    IT32_VFSGNJ_VF,
    IT32_VFSGNJN_VF,
    IT32_VFSGNJX_VF,
    IT32_VFSLIDE1UP_VF,
    IT32_VFSLIDE1DOWN_VF,
    IT32_VFMV_S_F,
    IT32_VFMERGE_VF,
    IT32_VFMV_V_F,
    IT32_VFEQ_VF,
    IT32_VFLTE_VF,
    IT32_VFORD_VF,
    IT32_VFLT_VF,
    IT32_VFNE_VF,
    IT32_VFGT_VF,
    IT32_VFGTE_VF,
    IT32_VFDIV_VF,
    IT32_VFRDIV_VF,
    IT32_VFMUL_VF,
    IT32_VFRSUB_VF,
    IT32_VFMADD_VF,
    IT32_VFNMADD_VF,
    IT32_VFMSUB_VF,
    IT32_VFNMSUB_VF,
    IT32_VFMACC_VF,
    IT32_VFNMACC_VF,
    IT32_VFMSAC_VF,
    IT32_VFNMSAC_VF,
    IT32_VFWADD_VF,
    IT32_VFWSUB_VF,
    IT32_VFWADD_WF,
    IT32_VFWSUB_WF,
    IT32_VFWMUL_VF,
    IT32_VFWMACC_VF,
    IT32_VFWNMACC_VF,
    IT32_VFWMSAC_VF,
    IT32_VFWNMSAC_VF,

    // V-extension MVX-type instructions
    IT32_VMV_S_X,
    IT32_VSLIDE1UP_VX,
    IT32_VSLIDE1DOWN_VX,
    IT32_VZEXT_V,
    IT32_VSEXT_V,
    IT32_VDIVU_VX,
    IT32_VDIV_VX,
    IT32_VREMU_VX,
    IT32_VREM_VX,
    IT32_VMULHU_VX,
    IT32_VMUL_VX,
    IT32_VMULHSU_VX,
    IT32_VMULH_VX,
    IT32_VMADD_VX,
    IT32_VNMSUB_VX,
    IT32_VMACC_VX,
    IT32_VNMSAC_VX,
    IT32_VWADDU_VX,
    IT32_VWADD_VX,
    IT32_VWSUBU_VX,
    IT32_VWSUB_VX,
    IT32_VWADDU_WX,
    IT32_VWADD_WX,
    IT32_VWSUBU_WX,
    IT32_VWSUB_WX,
    IT32_VWMULU_VX,
    IT32_VWMULSU_VX,
    IT32_VWMUL_VX,
    IT32_VWMACCU_VX,
    IT32_VWMACC_VX,
    IT32_VWMACCSU_VX,
    IT32_VWMACCUS_VX,
    IT32_VQMACCU_VX,
    IT32_VQMACC_VX,
    IT32_VQMACCSU_VX,
    IT32_VQMACCUS_VX,

    // KEEP LAST
    IT32_LAST

} riscvIType32;

//
// Structure defining one 32-bit decode table entry
//
typedef struct decodeEntry32S {
    riscvIType32 type;      // entry type
    const char  *pattern;   // decode pattern
} decodeEntry32;

//
// Opaque type pointer to decodeEntry32
//
DEFINE_CS(decodeEntry32);

//
// Create one entry in decodeEntries32 table
//
#define DECODE32_ENTRY(_NAME, _PATTERN) { \
    type    : IT32_##_NAME, \
    pattern : _PATTERN      \
}

//
// This specifies decodes for each 32-bit opcode common for all versions
//
const static decodeEntry32 decodeCommon32[] = {

    // base R-type
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(          ADD_R, "|0000000|.....|.....|000|.....|011.011|"),
    DECODE32_ENTRY(          AND_R, "|0000000|.....|.....|111|.....|0110011|"),
    DECODE32_ENTRY(          NEG_R, "|0100000|.....|00000|000|.....|011.011|"),
    DECODE32_ENTRY(           OR_R, "|0000000|.....|.....|110|.....|0110011|"),
    DECODE32_ENTRY(         SGTZ_R, "|0000000|.....|00000|010|.....|0110011|"),
    DECODE32_ENTRY(          SLL_R, "|0000000|.....|.....|001|.....|011.011|"),
    DECODE32_ENTRY(          SLT_R, "|0000000|.....|.....|010|.....|0110011|"),
    DECODE32_ENTRY(         SLTU_R, "|0000000|.....|.....|011|.....|0110011|"),
    DECODE32_ENTRY(         SLTZ_R, "|0000000|00000|.....|010|.....|0110011|"),
    DECODE32_ENTRY(         SNEZ_R, "|0000000|.....|00000|011|.....|0110011|"),
    DECODE32_ENTRY(          SRA_R, "|0100000|.....|.....|101|.....|011.011|"),
    DECODE32_ENTRY(          SRL_R, "|0000000|.....|.....|101|.....|011.011|"),
    DECODE32_ENTRY(          SUB_R, "|0100000|.....|.....|000|.....|011.011|"),
    DECODE32_ENTRY(          XOR_R, "|0000000|.....|.....|100|.....|0110011|"),

    // M-extension R-type
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(          DIV_R, "|0000001|.....|.....|100|.....|011.011|"),
    DECODE32_ENTRY(         DIVU_R, "|0000001|.....|.....|101|.....|011.011|"),
    DECODE32_ENTRY(          MUL_R, "|0000001|.....|.....|000|.....|011.011|"),
    DECODE32_ENTRY(         MULH_R, "|0000001|.....|.....|001|.....|0110011|"),
    DECODE32_ENTRY(       MULHSU_R, "|0000001|.....|.....|010|.....|0110011|"),
    DECODE32_ENTRY(        MULHU_R, "|0000001|.....|.....|011|.....|0110011|"),
    DECODE32_ENTRY(          REM_R, "|0000001|.....|.....|110|.....|011.011|"),
    DECODE32_ENTRY(         REMU_R, "|0000001|.....|.....|111|.....|011.011|"),

    // base I-type
    //                               |       imm32|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(         ADDI_I, "|............|.....|000|.....|001.011|"),
    DECODE32_ENTRY(         ANDI_I, "|............|.....|111|.....|0010011|"),
    DECODE32_ENTRY(           JR_I, "|............|.....|000|00000|1100111|"),
    DECODE32_ENTRY(          JR0_I, "|000000000000|.....|000|00000|1100111|"),
    DECODE32_ENTRY(         JALR_I, "|............|.....|000|.....|1100111|"),
    DECODE32_ENTRY(        JALR0_I, "|000000000000|.....|000|.....|1100111|"),
    DECODE32_ENTRY(           MV_I, "|000000000000|.....|000|.....|0010011|"),
    DECODE32_ENTRY(          NOP_I, "|000000000000|00000|000|00000|0010011|"),
    DECODE32_ENTRY(          NOT_I, "|111111111111|.....|100|.....|0010011|"),
    DECODE32_ENTRY(          ORI_I, "|............|.....|110|.....|0010011|"),
    DECODE32_ENTRY(          RET_I, "|000000000000|00001|000|00000|1100111|"),
    DECODE32_ENTRY(         SEQZ_I, "|000000000001|.....|011|.....|0010011|"),
    DECODE32_ENTRY(        SEXTW_I, "|000000000000|.....|000|.....|0011011|"),
    DECODE32_ENTRY(         SLLI_I, "|000000......|.....|001|.....|001.011|"),
    DECODE32_ENTRY(         SLTI_I, "|............|.....|010|.....|0010011|"),
    DECODE32_ENTRY(        SLTIU_I, "|............|.....|011|.....|0010011|"),
    DECODE32_ENTRY(         SRAI_I, "|010000......|.....|101|.....|001.011|"),
    DECODE32_ENTRY(         SRLI_I, "|000000......|.....|101|.....|001.011|"),
    DECODE32_ENTRY(         XORI_I, "|............|.....|100|.....|0010011|"),

    // base I-type instructions for load
    //                               |       imm32|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(           LB_I, "|............|.....|000|.....|0000011|"),
    DECODE32_ENTRY(          LBU_I, "|............|.....|100|.....|0000011|"),
    DECODE32_ENTRY(           LH_I, "|............|.....|001|.....|0000011|"),
    DECODE32_ENTRY(          LHU_I, "|............|.....|101|.....|0000011|"),
    DECODE32_ENTRY(           LW_I, "|............|.....|010|.....|0000011|"),
    DECODE32_ENTRY(          LWU_I, "|............|.....|110|.....|0000011|"),
    DECODE32_ENTRY(           LD_I, "|............|.....|011|.....|0000011|"),

    // base S-type instructions for store
    //                               |  imm32|  rs2|  rs1|fun|imm32| opcode|
    DECODE32_ENTRY(           SB_I, "|.......|.....|.....|000|.....|0100011|"),
    DECODE32_ENTRY(           SH_I, "|.......|.....|.....|001|.....|0100011|"),
    DECODE32_ENTRY(           SW_I, "|.......|.....|.....|010|.....|0100011|"),
    DECODE32_ENTRY(           SD_I, "|.......|.....|.....|011|.....|0100011|"),

    // base I-type instructions for CSR access (register)
    //                               |         CSR|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(        CSRRC_I, "|............|.....|011|.....|1110011|"),
    DECODE32_ENTRY(        CSRRS_I, "|............|.....|010|.....|1110011|"),
    DECODE32_ENTRY(        CSRRW_I, "|............|.....|001|.....|1110011|"),
    DECODE32_ENTRY(         CSRR_I, "|............|00000|010|.....|1110011|"),
    DECODE32_ENTRY(         CSRC_I, "|............|.....|011|00000|1110011|"),
    DECODE32_ENTRY(         CSRS_I, "|............|.....|010|00000|1110011|"),
    DECODE32_ENTRY(         CSRW_I, "|............|.....|001|00000|1110011|"),
    DECODE32_ENTRY(         RDX1_I, "|1100.000000.|00000|010|.....|1110011|"),
    DECODE32_ENTRY(         RDX2_I, "|1100.0000010|00000|010|.....|1110011|"),

    // base I-type instructions for CSR access (constant)
    //                               |         CSR| uimm|fun|   rd| opcode|
    DECODE32_ENTRY(       CSRRCI_I, "|............|.....|111|.....|1110011|"),
    DECODE32_ENTRY(       CSRRSI_I, "|............|.....|110|.....|1110011|"),
    DECODE32_ENTRY(       CSRRWI_I, "|............|.....|101|.....|1110011|"),
    DECODE32_ENTRY(        CSRCI_I, "|............|.....|111|00000|1110011|"),
    DECODE32_ENTRY(        CSRSI_I, "|............|.....|110|00000|1110011|"),
    DECODE32_ENTRY(        CSRWI_I, "|............|.....|101|00000|1110011|"),

    // miscellaneous system I-type instructions
    //                               |          SY|b10_0|fun|b10_0| opcode|
    DECODE32_ENTRY(       EBREAK_I, "|000000000001|00000|000|00000|1110011|"),
    DECODE32_ENTRY(        ECALL_I, "|000000000000|00000|000|00000|1110011|"),
    DECODE32_ENTRY(       FENCEI_I, "|............|.....|001|.....|0001111|"),
    DECODE32_ENTRY(         MRET_I, "|001100000010|00000|000|00000|1110011|"),
    DECODE32_ENTRY(         SRET_I, "|000100000010|00000|000|00000|1110011|"),
    DECODE32_ENTRY(         URET_I, "|000000000010|00000|000|00000|1110011|"),
    DECODE32_ENTRY(         DRET_I, "|011110110010|00000|000|00000|1110011|"),
    DECODE32_ENTRY(          WFI_I, "|000100000101|00000|000|00000|1110011|"),

    // system fence I-type instruction
    //                               |  fm|pred|succ|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(        FENCE_I, "|....|....|....|.....|000|.....|0001111|"),

    // system fence R-type instruction
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(    FENCE_VMA_R, "|0001001|.....|.....|000|00000|1110011|"),

    // base U-type
    //                               |               imm32|   rd| opcode|
    DECODE32_ENTRY(        AUIPC_U, "|....................|.....|0010111|"),
    DECODE32_ENTRY(          LUI_U, "|....................|.....|0110111|"),

    // base B-type
    //                               |i| imm32|  rs2|  rs1|fun|imm3|i| opcode|
    DECODE32_ENTRY(          BEQ_B, "|.|......|.....|.....|000|....|.|1100011|"),
    DECODE32_ENTRY(         BEQZ_B, "|.|......|00000|.....|000|....|.|1100011|"),
    DECODE32_ENTRY(          BGE_B, "|.|......|.....|.....|101|....|.|1100011|"),
    DECODE32_ENTRY(         BGEZ_B, "|.|......|00000|.....|101|....|.|1100011|"),
    DECODE32_ENTRY(         BLEZ_B, "|.|......|.....|00000|101|....|.|1100011|"),
    DECODE32_ENTRY(         BGEU_B, "|.|......|.....|.....|111|....|.|1100011|"),
    DECODE32_ENTRY(          BLT_B, "|.|......|.....|.....|100|....|.|1100011|"),
    DECODE32_ENTRY(         BLTZ_B, "|.|......|00000|.....|100|....|.|1100011|"),
    DECODE32_ENTRY(         BGTZ_B, "|.|......|.....|00000|100|....|.|1100011|"),
    DECODE32_ENTRY(         BLTU_B, "|.|......|.....|.....|110|....|.|1100011|"),
    DECODE32_ENTRY(          BNE_B, "|.|......|.....|.....|001|....|.|1100011|"),
    DECODE32_ENTRY(         BNEZ_B, "|.|......|00000|.....|001|....|.|1100011|"),

    // base J-type
    //                               |i|     imm32|i|   imm32|   rd| opcode|
    DECODE32_ENTRY(            J_J, "|.|..........|.|........|00000|1101111|"),
    DECODE32_ENTRY(          JAL_J, "|.|..........|.|........|.....|1101111|"),

    // A-extension R-type
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(       AMOADD_R, "|00000..|.....|.....|01.|.....|0101111|"),
    DECODE32_ENTRY(       AMOAND_R, "|01100..|.....|.....|01.|.....|0101111|"),
    DECODE32_ENTRY(       AMOMAX_R, "|10100..|.....|.....|01.|.....|0101111|"),
    DECODE32_ENTRY(      AMOMAXU_R, "|11100..|.....|.....|01.|.....|0101111|"),
    DECODE32_ENTRY(       AMOMIN_R, "|10000..|.....|.....|01.|.....|0101111|"),
    DECODE32_ENTRY(      AMOMINU_R, "|11000..|.....|.....|01.|.....|0101111|"),
    DECODE32_ENTRY(        AMOOR_R, "|01000..|.....|.....|01.|.....|0101111|"),
    DECODE32_ENTRY(      AMOSWAP_R, "|00001..|.....|.....|01.|.....|0101111|"),
    DECODE32_ENTRY(       AMOXOR_R, "|00100..|.....|.....|01.|.....|0101111|"),
    DECODE32_ENTRY(           LR_R, "|00010..|00000|.....|01.|.....|0101111|"),
    DECODE32_ENTRY(           SC_R, "|00011..|.....|.....|01.|.....|0101111|"),

    // F-extension and D-extension R-type instructions
    //                               | funct7|  rs2|  rs1|drm|   rd| opcode|
    DECODE32_ENTRY(         FADD_R, "|000000.|.....|.....|...|.....|1010011|"),
    DECODE32_ENTRY(       FCLASS_R, "|111000.|00000|.....|001|.....|1010011|"),
    DECODE32_ENTRY(     FCVT_F_X_R, "|110100.|000..|.....|...|.....|1010011|"),
    DECODE32_ENTRY(     FCVT_X_F_R, "|110000.|000..|.....|...|.....|1010011|"),
    DECODE32_ENTRY(     FCVT_D_S_R, "|0100001|00000|.....|...|.....|1010011|"),
    DECODE32_ENTRY(     FCVT_S_D_R, "|0100000|00001|.....|...|.....|1010011|"),
    DECODE32_ENTRY(         FDIV_R, "|000110.|.....|.....|...|.....|1010011|"),
    DECODE32_ENTRY(          FEQ_R, "|101000.|.....|.....|010|.....|1010011|"),
    DECODE32_ENTRY(          FLE_R, "|101000.|.....|.....|000|.....|1010011|"),
    DECODE32_ENTRY(          FLT_R, "|101000.|.....|.....|001|.....|1010011|"),
    DECODE32_ENTRY(         FMAX_R, "|001010.|.....|.....|001|.....|1010011|"),
    DECODE32_ENTRY(         FMIN_R, "|001010.|.....|.....|000|.....|1010011|"),
    DECODE32_ENTRY(         FMUL_R, "|000100.|.....|.....|...|.....|1010011|"),
    DECODE32_ENTRY(        FSGNJ_R, "|001000.|.....|.....|000|.....|1010011|"),
    DECODE32_ENTRY(       FSGNJN_R, "|001000.|.....|.....|001|.....|1010011|"),
    DECODE32_ENTRY(       FSGNJX_R, "|001000.|.....|.....|010|.....|1010011|"),
    DECODE32_ENTRY(        FMVFX_R, "|111100.|00000|.....|000|.....|1010011|"),
    DECODE32_ENTRY(        FMVXF_R, "|111000.|00000|.....|000|.....|1010011|"),
    DECODE32_ENTRY(        FSQRT_R, "|010110.|00000|.....|...|.....|1010011|"),
    DECODE32_ENTRY(         FSUB_R, "|000010.|.....|.....|...|.....|1010011|"),

    // F-extension and D-extension R4-type instructions
    //                               |  rs3|fu|  rs2|  rs1| rm|   rd| opcode|
    DECODE32_ENTRY(       FMADD_R4, "|.....|0.|.....|.....|...|.....|1000011|"),
    DECODE32_ENTRY(       FMSUB_R4, "|.....|0.|.....|.....|...|.....|1000111|"),
    DECODE32_ENTRY(      FNMADD_R4, "|.....|0.|.....|.....|...|.....|1001111|"),
    DECODE32_ENTRY(      FNMSUB_R4, "|.....|0.|.....|.....|...|.....|1001011|"),

    // F-extension and D-extension I-type instructions
    //                               |       imm32|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(           FL_I, "|............|.....|01.|.....|0000111|"),
    DECODE32_ENTRY(           FS_I, "|............|.....|01.|.....|0100111|"),

    // F-extension and D-extension I-type instructions for CSR access
    //                               |         CSR|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(         FRSR_I, "|000000000011|00000|010|.....|1110011|"),
    DECODE32_ENTRY(      FRFLAGS_I, "|000000000001|00000|010|.....|1110011|"),
    DECODE32_ENTRY(         FRRM_I, "|000000000010|00000|010|.....|1110011|"),
    DECODE32_ENTRY(         FSSR_I, "|000000000011|.....|001|.....|1110011|"),
    DECODE32_ENTRY(      FSFLAGS_I, "|000000000001|.....|001|.....|1110011|"),
    DECODE32_ENTRY(         FSRM_I, "|000000000010|.....|001|.....|1110011|"),

    // X-extension Type, custom instructions
    DECODE32_ENTRY(        CUSTOM1, "|............|.....|...|.....|0001011|"),
    DECODE32_ENTRY(        CUSTOM2, "|............|.....|...|.....|0101011|"),
    DECODE32_ENTRY(        CUSTOM3, "|............|.....|...|.....|1011011|"),
    DECODE32_ENTRY(        CUSTOM4, "|............|.....|...|.....|1111011|"),

    // B-extension R-type instructions
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(         ANDN_R, "|0100000|.....|.....|111|.....|0110011|"),
    DECODE32_ENTRY(          ORN_R, "|0100000|.....|.....|110|.....|0110011|"),
    DECODE32_ENTRY(         XNOR_R, "|0100000|.....|.....|100|.....|0110011|"),
    DECODE32_ENTRY(          SLO_R, "|0010000|.....|.....|001|.....|011.011|"),
    DECODE32_ENTRY(          SRO_R, "|0010000|.....|.....|101|.....|011.011|"),
    DECODE32_ENTRY(          ROL_R, "|0110000|.....|.....|001|.....|011.011|"),
    DECODE32_ENTRY(          ROR_R, "|0110000|.....|.....|101|.....|011.011|"),
    DECODE32_ENTRY(        SBCLR_R, "|0100100|.....|.....|001|.....|011.011|"),
    DECODE32_ENTRY(        SBSET_R, "|0010100|.....|.....|001|.....|011.011|"),
    DECODE32_ENTRY(        SBINV_R, "|0110100|.....|.....|001|.....|011.011|"),
    DECODE32_ENTRY(        SBEXT_R, "|0100100|.....|.....|101|.....|011.011|"),
    DECODE32_ENTRY(          CLZ_R, "|0110000|00000|.....|001|.....|001.011|"),
    DECODE32_ENTRY(          CTZ_R, "|0110000|00001|.....|001|.....|001.011|"),
    DECODE32_ENTRY(         PCNT_R, "|0110000|00010|.....|001|.....|001.011|"),
    DECODE32_ENTRY(        CRC32_R, "|0110000|100..|.....|001|.....|0010011|"),
    DECODE32_ENTRY(       CRC32C_R, "|0110000|110..|.....|001|.....|0010011|"),
    DECODE32_ENTRY(        CLMUL_R, "|0000101|.....|.....|001|.....|011.011|"),
    DECODE32_ENTRY(       CLMULR_R, "|0000101|.....|.....|010|.....|011.011|"),
    DECODE32_ENTRY(       CLMULH_R, "|0000101|.....|.....|011|.....|011.011|"),
    DECODE32_ENTRY(          MIN_R, "|0000101|.....|.....|100|.....|0110011|"),
    DECODE32_ENTRY(          MAX_R, "|0000101|.....|.....|101|.....|0110011|"),
    DECODE32_ENTRY(         MINU_R, "|0000101|.....|.....|110|.....|0110011|"),
    DECODE32_ENTRY(         MAXU_R, "|0000101|.....|.....|111|.....|0110011|"),
    DECODE32_ENTRY(         SHFL_R, "|0000100|.....|.....|001|.....|011.011|"),
    DECODE32_ENTRY(       UNSHFL_R, "|0000100|.....|.....|101|.....|011.011|"),
    DECODE32_ENTRY(         BEXT_R, "|0000100|.....|.....|110|.....|011.011|"),
    DECODE32_ENTRY(         PACK_R, "|0000100|.....|.....|100|.....|011.011|"),
    DECODE32_ENTRY(     BMATFLIP_R, "|0110000|00011|.....|001|.....|0010011|"),
    DECODE32_ENTRY(       BMATOR_R, "|0000100|.....|.....|011|.....|0110011|"),
    DECODE32_ENTRY(        ADDWU_R, "|0000101|.....|.....|000|.....|0111011|"),
    DECODE32_ENTRY(        SUBWU_R, "|0100101|.....|.....|000|.....|0111011|"),
    DECODE32_ENTRY(       ADDU_W_R, "|0000100|.....|.....|000|.....|0111011|"),
    DECODE32_ENTRY(       SUBU_W_R, "|0100100|.....|.....|000|.....|0111011|"),

    // B-extension I-type instructions
    //                               |       imm32|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(        SLOI_I,  "|001000......|.....|001|.....|001.011|"),
    DECODE32_ENTRY(        SROI_I,  "|001000......|.....|101|.....|001.011|"),
    DECODE32_ENTRY(        RORI_I,  "|011000......|.....|101|.....|001.011|"),
    DECODE32_ENTRY(       SBCLRI_I, "|010010......|.....|001|.....|001.011|"),
    DECODE32_ENTRY(       SBSETI_I, "|001010......|.....|001|.....|001.011|"),
    DECODE32_ENTRY(       SBINVI_I, "|011010......|.....|001|.....|001.011|"),
    DECODE32_ENTRY(       SBEXTI_I, "|010010......|.....|101|.....|0010011|"),
    DECODE32_ENTRY(        SHFLI_I, "|000010......|.....|001|.....|0010011|"),
    DECODE32_ENTRY(      UNSHFLI_I, "|000010......|.....|101|.....|0010011|"),
    DECODE32_ENTRY(       ADDIWU_I, "|............|.....|100|.....|0011011|"),
    DECODE32_ENTRY(      SLLIU_W_I, "|00001.......|.....|001|.....|0011011|"),

    // B-extension R4-type instructions
    //                               | rs3 |f1|  rs2|  rs1|f2 |   rd| opcode|
    DECODE32_ENTRY(        CMIX_R4, "|.....|11|.....|.....|001|.....|0110011|"),
    DECODE32_ENTRY(        CMOV_R4, "|.....|11|.....|.....|101|.....|0110011|"),
    DECODE32_ENTRY(         FSL_R4, "|.....|10|.....|.....|001|.....|011.011|"),
    DECODE32_ENTRY(         FSR_R4, "|.....|10|.....|.....|101|.....|011.011|"),

    // B-extension R3I-type instructions
    //                               | rs3 |f| shift|  rs1|f2 |   rd| opcode|
    DECODE32_ENTRY(       FSRI_R3I, "|.....|1|......|.....|101|.....|001.011|"),

    // V-extension R-type
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(       VSETVL_R, "|1000000|.....|.....|111|.....|1010111|"),

    // V-extension I-type
    //                               |        imm32|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(       VSETVL_I, "|0......|.....|.....|111|.....|1010111|"),

    // V-extension IVV-type instructions
    //                               |funct6|m|  vs2|  vs1|IVV|  vs3| opcode|
    DECODE32_ENTRY(        VADD_VV, "|000000|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VSUB_VV, "|000010|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VMINU_VV, "|000100|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VMIN_VV, "|000101|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VMAXU_VV, "|000110|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VMAX_VV, "|000111|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VAND_VV, "|001001|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(         VOR_VV, "|001010|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VXOR_VV, "|001011|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(    VRGATHER_VV, "|001100|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(      VMERGE_VV, "|010111|0|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VMV_V_V, "|010111|1|00000|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VSEQ_VV, "|011000|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VSNE_VV, "|011001|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VSLTU_VV, "|011010|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VSLT_VV, "|011011|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VSLEU_VV, "|011100|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VSLE_VV, "|011101|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(      VSADDU_VV, "|100000|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VSADD_VV, "|100001|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(      VSSUBU_VV, "|100010|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VSSUB_VV, "|100011|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VSLL_VV, "|100101|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VSMUL_VV, "|100111|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VSRL_VV, "|101000|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VSRA_VV, "|101001|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VSSRL_VV, "|101010|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VSSRA_VV, "|101011|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VNSRL_VV, "|101100|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VNSRA_VV, "|101101|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(     VNCLIPU_VV, "|101110|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(      VNCLIP_VV, "|101111|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(   VWREDSUMU_VS, "|110000|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(    VWREDSUM_VS, "|110001|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VDOTU_VV, "|111000|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VDOT_VV, "|111001|.|.....|.....|000|.....|1010111|"),

    // V-extension FVV-type instructions
    //                               |funct6|m|  vs2|  vs1|FVV|  vs3| opcode|
    DECODE32_ENTRY(       VFADD_VV, "|000000|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(    VFREDSUM_VS, "|000001|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(       VFSUB_VV, "|000010|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(   VFREDOSUM_VS, "|000011|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(       VFMIN_VV, "|000100|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(    VFREDMIN_VS, "|000101|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(       VFMAX_VV, "|000110|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(    VFREDMAX_VS, "|000111|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(      VFSGNJ_VV, "|001000|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(     VFSGNJN_VV, "|001001|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(     VFSGNJX_VV, "|001010|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(        VFEQ_VV, "|011000|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(       VFLTE_VV, "|011001|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(        VFLT_VV, "|011011|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(        VFNE_VV, "|011100|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(       VFDIV_VV, "|100000|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(       VFMUL_VV, "|100100|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(      VFMADD_VV, "|101000|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(     VFNMADD_VV, "|101001|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(      VFMSUB_VV, "|101010|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(     VFNMSUB_VV, "|101011|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(      VFMACC_VV, "|101100|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(     VFNMACC_VV, "|101101|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(      VFMSAC_VV, "|101110|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(     VFNMSAC_VV, "|101111|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(      VFWADD_VV, "|110000|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(   VFWREDSUM_VS, "|110001|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(      VFWSUB_VV, "|110010|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(  VFWREDOSUM_VS, "|110011|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(      VFWADD_WV, "|110100|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(      VFWSUB_WV, "|110110|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(      VFWMUL_VV, "|111000|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(       VFDOT_VV, "|111001|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(     VFWMACC_VV, "|111100|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(    VFWNMACC_VV, "|111101|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(     VFWMSAC_VV, "|111110|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(    VFWNMSAC_VV, "|111111|.|.....|.....|001|.....|1010111|"),

    // V-extension MVV-type instructions
    //                               |funct6|m|  vs2|  vs1|MVV|  vs3| opcode|
    DECODE32_ENTRY(       VWADD_VV, "|110001|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VWADDU_VV, "|110000|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VWSUB_VV, "|110011|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VWSUBU_VV, "|110010|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VWADD_WV, "|110101|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VWADDU_WV, "|110100|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VWSUB_WV, "|110111|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VWSUBU_WV, "|110110|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(        VMUL_VV, "|100101|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VMULH_VV, "|100111|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VMULHU_VV, "|100100|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(     VMULHSU_VV, "|100110|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VWMUL_VV, "|111011|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VWMULU_VV, "|111000|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(     VWMULSU_VV, "|111010|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VMACC_VV, "|101101|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VNMSAC_VV, "|101111|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VMADD_VV, "|101001|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VNMSUB_VV, "|101011|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(     VWMACCU_VV, "|111100|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VWMACC_VV, "|111101|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VDIVU_VV, "|100000|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(        VDIV_VV, "|100001|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VREMU_VV, "|100010|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(        VREM_VV, "|100011|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(     VREDSUM_VS, "|000000|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(     VREDAND_VS, "|000001|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VREDOR_VS, "|000010|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(     VREDXOR_VS, "|000011|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(    VREDMINU_VS, "|000100|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(     VREDMIN_VS, "|000101|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(    VREDMAXU_VS, "|000110|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(     VREDMAX_VS, "|000111|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VMAND_MM, "|011001|1|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VMNAND_MM, "|011101|1|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(    VMANDNOT_MM, "|011000|1|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VMXOR_MM, "|011011|1|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(        VMOR_MM, "|011010|1|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VMNOR_MM, "|011110|1|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(     VMORNOT_MM, "|011100|1|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VMXNOR_MM, "|011111|1|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(   VCOMPRESS_VM, "|010111|1|.....|.....|010|.....|1010111|"),

    // V-extension IVI-type instructions
    //                               |funct6|m|  vs2|simm5|IVI|  vs3| opcode|
    DECODE32_ENTRY(        VADD_VI, "|000000|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(       VRSUB_VI, "|000011|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(        VAND_VI, "|001001|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(         VOR_VI, "|001010|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(        VXOR_VI, "|001011|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(    VRGATHER_VI, "|001100|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(    VSLIDEUP_VI, "|001110|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(  VSLIDEDOWN_VI, "|001111|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(      VMERGE_VI, "|010111|0|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(        VMV_V_I, "|010111|1|00000|.....|011|.....|1010111|"),
    DECODE32_ENTRY(        VSEQ_VI, "|011000|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(        VSNE_VI, "|011001|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(       VSLEU_VI, "|011100|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(        VSLE_VI, "|011101|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(       VSGTU_VI, "|011110|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(        VSGT_VI, "|011111|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(      VSADDU_VI, "|100000|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(       VSADD_VI, "|100001|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(        VSLL_VI, "|100101|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(        VSRL_VI, "|101000|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(        VSRA_VI, "|101001|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(       VSSRL_VI, "|101010|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(       VSSRA_VI, "|101011|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(       VNSRL_VI, "|101100|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(       VNSRA_VI, "|101101|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(     VNCLIPU_VI, "|101110|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(      VNCLIP_VI, "|101111|.|.....|.....|011|.....|1010111|"),

    // V-extension IVX-type instructions
    //                               |funct6|m|  vs2|  rs1|IVX|  vs3| opcode|
    DECODE32_ENTRY(        VADD_VX, "|000000|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VSUB_VX, "|000010|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VRSUB_VX, "|000011|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VMINU_VX, "|000100|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VMIN_VX, "|000101|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VMAXU_VX, "|000110|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VMAX_VX, "|000111|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VAND_VX, "|001001|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(         VOR_VX, "|001010|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VXOR_VX, "|001011|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(    VRGATHER_VX, "|001100|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(    VSLIDEUP_VX, "|001110|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(  VSLIDEDOWN_VX, "|001111|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(      VMERGE_VX, "|010111|0|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VMV_V_X, "|010111|1|00000|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VSEQ_VX, "|011000|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VSNE_VX, "|011001|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VSLTU_VX, "|011010|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VSLT_VX, "|011011|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VSLEU_VX, "|011100|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VSLE_VX, "|011101|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VSGTU_VX, "|011110|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VSGT_VX, "|011111|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(      VSADDU_VX, "|100000|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VSADD_VX, "|100001|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(      VSSUBU_VX, "|100010|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VSSUB_VX, "|100011|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VSLL_VX, "|100101|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VSMUL_VX, "|100111|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VSRL_VX, "|101000|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VSRA_VX, "|101001|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VSSRL_VX, "|101010|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VSSRA_VX, "|101011|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VNSRL_VX, "|101100|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VNSRA_VX, "|101101|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(     VNCLIPU_VX, "|101110|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(      VNCLIP_VX, "|101111|.|.....|.....|100|.....|1010111|"),

    // V-extension FVF-type instructions
    //                               |funct6|m|  vs2|  fs1|FVF|  vs3| opcode|
    DECODE32_ENTRY(       VFADD_VF, "|000000|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(       VFSUB_VF, "|000010|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(       VFMIN_VF, "|000100|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(       VFMAX_VF, "|000110|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(      VFSGNJ_VF, "|001000|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(     VFSGNJN_VF, "|001001|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(     VFSGNJX_VF, "|001010|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(     VFMERGE_VF, "|010111|0|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(       VFMV_V_F, "|010111|1|00000|.....|101|.....|1010111|"),
    DECODE32_ENTRY(        VFEQ_VF, "|011000|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(       VFLTE_VF, "|011001|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(        VFLT_VF, "|011011|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(        VFNE_VF, "|011100|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(        VFGT_VF, "|011101|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(       VFGTE_VF, "|011111|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(       VFDIV_VF, "|100000|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(      VFRDIV_VF, "|100001|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(       VFMUL_VF, "|100100|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(      VFRSUB_VF, "|100111|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(      VFMADD_VF, "|101000|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(     VFNMADD_VF, "|101001|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(      VFMSUB_VF, "|101010|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(     VFNMSUB_VF, "|101011|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(      VFMACC_VF, "|101100|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(     VFNMACC_VF, "|101101|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(      VFMSAC_VF, "|101110|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(     VFNMSAC_VF, "|101111|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(      VFWADD_VF, "|110000|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(      VFWSUB_VF, "|110010|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(      VFWADD_WF, "|110100|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(      VFWSUB_WF, "|110110|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(      VFWMUL_VF, "|111000|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(     VFWMACC_VF, "|111100|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(    VFWNMACC_VF, "|111101|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(     VFWMSAC_VF, "|111110|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(    VFWNMSAC_VF, "|111111|.|.....|.....|101|.....|1010111|"),

    // V-extension MVX-type instructions
    //                               |funct6|m|  vs2|  vs1|MVX|  vs3| opcode|
    DECODE32_ENTRY(   VSLIDE1UP_VX, "|001110|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY( VSLIDE1DOWN_VX, "|001111|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(       VDIVU_VX, "|100000|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(        VDIV_VX, "|100001|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(       VREMU_VX, "|100010|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(        VREM_VX, "|100011|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(      VMULHU_VX, "|100100|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(        VMUL_VX, "|100101|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(     VMULHSU_VX, "|100110|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(       VMULH_VX, "|100111|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(       VMADD_VX, "|101001|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(      VNMSUB_VX, "|101011|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(       VMACC_VX, "|101101|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(      VNMSAC_VX, "|101111|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(      VWADDU_VX, "|110000|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(       VWADD_VX, "|110001|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(      VWSUBU_VX, "|110010|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(       VWSUB_VX, "|110011|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(      VWADDU_WX, "|110100|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(       VWADD_WX, "|110101|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(      VWSUBU_WX, "|110110|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(       VWSUB_WX, "|110111|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(      VWMULU_VX, "|111000|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(     VWMULSU_VX, "|111010|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(       VWMUL_VX, "|111011|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(     VWMACCU_VX, "|111100|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(      VWMACC_VX, "|111101|.|.....|.....|110|.....|1010111|"),
    // table termination entry
    {0}
};

//
// This specifies decodes for 32-bit opcodes for Bit manipulation Extension
// until version 0.90
//
const static decodeEntry32 decodeBitmanipUntilV090[] = {

    // B-extension R-type instructions
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(         GREV_R, "|0100000|.....|.....|001|.....|011.011|"),
    DECODE32_ENTRY(      BMATXOR_R, "|0000100|.....|.....|111|.....|0110011|"),

    // B-extension I-type instructions
    //                               |       imm32|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(        GREVI_I, "|01000.......|.....|001|.....|001.011|"),

    // table termination entry
    {0}
};

//
// This specifies decodes for 32-bit opcodes for Bit manipulation Extension
// after version 0.90
//
const static decodeEntry32 decodeBitmanipPostV090[] = {

    // B-extension R-type instructions
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(         GORC_R, "|0010100|.....|.....|101|.....|011.011|"),
    DECODE32_ENTRY(         GREV_R, "|0110100|.....|.....|101|.....|011.011|"),
    DECODE32_ENTRY(      BMATXOR_R, "|0100100|.....|.....|011|.....|0110011|"),

    // B-extension I-type instructions
    //                               |       imm32|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(        GORCI_I, "|001010......|.....|101|.....|001.011|"),
    DECODE32_ENTRY(        GREVI_I, "|011010......|.....|101|.....|001.011|"),

    // table termination entry
    {0}
};

//
// This specifies decodes for 32-bit opcodes for Bit manipulation Extension
// until version 0.91
//
const static decodeEntry32 decodeBitmanipUntilV091[] = {

    // B-extension R-type instructions
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(         BDEP_R, "|0000100|.....|.....|010|.....|011.011|"),

    // table termination entry
    {0}
};

//
// This specifies decodes for 32-bit opcodes for Bit manipulation Extension 0.91
//
const static decodeEntry32 decodeBitmanipV091[] = {

    // B-extension R-type instructions
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(          BFP_R, "|0000100|.....|.....|111|.....|011.011|"),

    // table termination entry
    {0}
};

//
// This specifies decodes for 32-bit opcodes for Bit manipulation Extension
// after version 0.91
//
const static decodeEntry32 decodeBitmanipPostV091[] = {

    // B-extension R-type instructions
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(         BDEP_R, "|0100100|.....|.....|110|.....|011.011|"),
    DECODE32_ENTRY(        PACKH_R, "|0000100|.....|.....|111|.....|0110011|"),
    DECODE32_ENTRY(        PACKU_R, "|0100100|.....|.....|100|.....|011.011|"),
    DECODE32_ENTRY(          BFP_R, "|0100100|.....|.....|111|.....|011.011|"),
    DECODE32_ENTRY(         SEXT_R, "|0110000|0010.|.....|001|.....|0010011|"),

    // table termination entry
    {0}
};

//
// This specifies decodes for 32-bit opcodes for Bit manipulation Extension
// after version 0.92
//
const static decodeEntry32 decodeBitmanipPostV092[] = {

    // B-extension R-type instructions
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(        SHADD_R, "|0010000|.....|.....|010|.....|0110011|"),
    DECODE32_ENTRY(        SHADD_R, "|0010000|.....|.....|1.0|.....|0110011|"),
    DECODE32_ENTRY(     SHADDU_W_R, "|0010000|.....|.....|010|.....|0111011|"),
    DECODE32_ENTRY(     SHADDU_W_R, "|0010000|.....|.....|1.0|.....|0111011|"),

    // table termination entry
    {0}
};

//
// This specifies decodes for 32-bit opcodes for Vector Extension version 0.8
//
const static decodeEntry32 decodeVectorV08[] = {

    // V-extension MVV-type instructions
    //                               |funct6|m|  vs2|  vs1|MVV|  vs3| opcode|
    DECODE32_ENTRY(        VMV_X_S, "|010000|1|.....|00000|010|.....|1010111|"),
    DECODE32_ENTRY(        VPOPC_M, "|010000|.|.....|10000|010|.....|1010111|"),
    DECODE32_ENTRY(       VFIRST_M, "|010000|.|.....|10001|010|.....|1010111|"),
    DECODE32_ENTRY(        VMSBF_M, "|010100|.|.....|00001|010|.....|1010111|"),
    DECODE32_ENTRY(        VMSOF_M, "|010100|.|.....|00010|010|.....|1010111|"),
    DECODE32_ENTRY(        VMSIF_M, "|010100|.|.....|00011|010|.....|1010111|"),
    DECODE32_ENTRY(        VIOTA_M, "|010100|.|.....|10000|010|.....|1010111|"),
    DECODE32_ENTRY(          VID_V, "|010100|.|00000|10001|010|.....|1010111|"),

    // V-extension FVV-type instructions
    //                               |funct6|m|  vs2|  vs1|FVV|  vs3| opcode|
    DECODE32_ENTRY(       VFMV_F_S, "|010000|1|.....|00000|001|.....|1010111|"),

    // V-extension FVF-type instructions
    //                               |funct6|m|  vs2|  vs1|FVF|  vs3| opcode|
    DECODE32_ENTRY(       VFMV_S_F, "|010000|1|00000|.....|101|.....|1010111|"),

    // V-extension MVX-type instructions
    //                               |funct6|m|  vs2|  vs1|MVX|  vs3| opcode|
    DECODE32_ENTRY(        VMV_S_X, "|010000|1|00000|.....|110|.....|1010111|"),

    // table termination entry
    {0}
};

//
// This specifies decodes for 32-bit opcodes for Vector Extension version 0.7.1
//
const static decodeEntry32 decodeVectorV071[] = {

    // V-extension MVV-type instructions
    //                               |funct6|m|  vs2|  vs1|MVV|  vs3| opcode|
    DECODE32_ENTRY(       VEXT_X_V, "|001100|1|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(        VMV_X_S, "|001100|1|.....|00000|010|.....|1010111|"),
    DECODE32_ENTRY(        VPOPC_M, "|010100|.|.....|00000|010|.....|1010111|"),
    DECODE32_ENTRY(       VFIRST_M, "|010101|.|.....|00000|010|.....|1010111|"),
    DECODE32_ENTRY(        VMSBF_M, "|010110|.|.....|00001|010|.....|1010111|"),
    DECODE32_ENTRY(        VMSOF_M, "|010110|.|.....|00010|010|.....|1010111|"),
    DECODE32_ENTRY(        VMSIF_M, "|010110|.|.....|00011|010|.....|1010111|"),
    DECODE32_ENTRY(        VIOTA_M, "|010110|.|.....|10000|010|.....|1010111|"),
    DECODE32_ENTRY(          VID_V, "|010110|.|00000|10001|010|.....|1010111|"),

    // V-extension FVV-type instructions
    //                               |funct6|m|  vs2|  vs1|FVV|  vs3| opcode|
    DECODE32_ENTRY(       VFORD_VV, "|011010|.|.....|.....|001|.....|1010111|"),
    DECODE32_ENTRY(       VFMV_F_S, "|001100|1|.....|00000|001|.....|1010111|"),

    // V-extension FVF-type instructions
    //                               |funct6|m|  vs2|  fs1|FVF|  vs3| opcode|
    DECODE32_ENTRY(       VFORD_VF, "|011010|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(       VFMV_S_F, "|001101|1|00000|.....|101|.....|1010111|"),

    // V-extension MVX-type instructions
    //                               |funct6|m|  vs2|  vs1|MVX|  vs3| opcode|
    DECODE32_ENTRY(        VMV_S_X, "|001101|1|00000|.....|110|.....|1010111|"),

    // table termination entry
    {0}
};

//
// This specifies decodes for 32-bit opcodes for Vector Extension version 0.8
//
const static decodeEntry32 decodeVectorV071P[] = {

    // V-extension FVV-type instructions
    //                               |funct6|m|  vs2|  vs1|FVV|  vs3| opcode|
    DECODE32_ENTRY( VFNCVTROD_FF_V, "|100010|.|.....|10101|001|.....|1010111|"),

    // table termination entry
    {0}
};

//
// This specifies decodes *after* 6 September 2019
//
const static decodeEntry32 decodePost20190906[] = {

    // V-extension MVV-type instructions
    DECODE32_ENTRY(    VWMACCSU_VV, "|111111|.|.....|.....|010|.....|1010111|"),

    // V-extension MVX-type instructions
    DECODE32_ENTRY(    VWMACCSU_VX, "|111111|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(    VWMACCUS_VX, "|111110|.|.....|.....|110|.....|1010111|"),

    // table termination entry
    {0}
};

//
// This specifies decodes *before* 6 September 2019
//
const static decodeEntry32 decodePre20190906[] = {

    // V-extension IVV-type instructions
    //                               |funct6|m|  vs2|  vs1|IVV|  vs3| opcode|
    DECODE32_ENTRY(   VWSMACCSU_VV, "|111110|.|.....|.....|000|.....|1010111|"),

    // V-extension MVV-type instructions
    DECODE32_ENTRY(    VWMACCSU_VV, "|111110|.|.....|.....|010|.....|1010111|"),

    // V-extension IVX-type instructions
    //                               |funct6|m|  vs2|  rs1|IVX|  vs3| opcode|
    DECODE32_ENTRY(   VWSMACCSU_VX, "|111110|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(   VWSMACCUS_VX, "|111111|.|.....|.....|100|.....|1010111|"),

    // V-extension MVX-type instructions
    DECODE32_ENTRY(    VWMACCSU_VX, "|111110|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(    VWMACCUS_VX, "|111111|.|.....|.....|110|.....|1010111|"),

    // table termination entry
    {0}
};

//
// This specifies decodes for version 20191004 only (deleted thereafter)
//
const static decodeEntry32 decode20191004[] = {

    // V-extension IVV-type instructions
    //                               |funct6|m|  vs2|  vs1|IVV|  vs3| opcode|
    DECODE32_ENTRY(   VWSMACCSU_VV, "|111111|.|.....|.....|000|.....|1010111|"),

    // V-extension IVX-type instructions
    //                               |funct6|m|  vs2|  rs1|IVX|  vs3| opcode|
    DECODE32_ENTRY(   VWSMACCSU_VX, "|111111|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(   VWSMACCUS_VX, "|111110|.|.....|.....|100|.....|1010111|"),

    // table termination entry
    {0}
};

//
// This specifies decodes *after* 4 October 2019
//
const static decodeEntry32 decodePost20191004[] = {

    // V-extension IVV-type instructions
    //                               |funct6|m|  vs2|  vs1|IVV|  vs3| opcode|
    DECODE32_ENTRY(        VADC_VV, "|010000|0|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VMADC_VV, "|010001|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VSBC_VV, "|010010|0|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VMSBC_VV, "|010011|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(     VQMACCU_VV, "|111100|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(      VQMACC_VV, "|111101|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(    VQMACCSU_VV, "|111111|.|.....|.....|000|.....|1010111|"),

    // V-extension MVV-type instructions
    //                               |funct6|m|  vs2|  vs1|MVV|  vs3| opcode|
    DECODE32_ENTRY(      VAADDU_VV, "|001000|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VAADD_VV, "|001001|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(      VASUBU_VV, "|001010|.|.....|.....|010|.....|1010111|"),
    DECODE32_ENTRY(       VASUB_VV, "|001011|.|.....|.....|010|.....|1010111|"),

    // V-extension IVI-type instructions
    //                               |funct6|m|  vs2|simm5|IVI|  vs3| opcode|
    DECODE32_ENTRY(        VADC_VI, "|010000|0|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(       VMADC_VI, "|010001|.|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(        VMVR_VI, "|100111|1|.....|00...|011|.....|1010111|"),

    // V-extension IVX-type instructions
    //                               |funct6|m|  vs2|  rs1|IVX|  vs3| opcode|
    DECODE32_ENTRY(        VADC_VX, "|010000|0|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VMADC_VX, "|010001|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VSBC_VX, "|010010|0|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VMSBC_VX, "|010011|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(     VQMACCU_VX, "|111100|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(      VQMACC_VX, "|111101|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(    VQMACCUS_VX, "|111110|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(    VQMACCSU_VX, "|111111|.|.....|.....|100|.....|1010111|"),

    // V-extension MVX-type instructions
    //                               |funct6|m|  vs2|  rs1|MVX|  vs3| opcode|
    DECODE32_ENTRY(      VAADDU_VX, "|001000|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(       VAADD_VX, "|001001|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(      VASUBU_VX, "|001010|.|.....|.....|110|.....|1010111|"),
    DECODE32_ENTRY(       VASUB_VX, "|001011|.|.....|.....|110|.....|1010111|"),

    // table termination entry
    {0}
};

//
// This specifies decodes *before* 4 October 2019
//
const static decodeEntry32 decodePre20191004[] = {

    // V-extension IVV-type instructions
    //                               |funct6|m|  vs2|  vs1|IVV|  vs3| opcode|
    DECODE32_ENTRY(        VADC_VV, "|010000|1|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VMADC_VV, "|010001|1|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(        VSBC_VV, "|010010|1|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VMSBC_VV, "|010011|1|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VAADD_VV, "|100100|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(       VASUB_VV, "|100110|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(    VWSMACCU_VV, "|111100|.|.....|.....|000|.....|1010111|"),
    DECODE32_ENTRY(     VWSMACC_VV, "|111101|.|.....|.....|000|.....|1010111|"),

    // V-extension IVI-type instructions
    //                               |funct6|m|  vs2|simm5|IVI|  vs3| opcode|
    DECODE32_ENTRY(        VADC_VI, "|010000|1|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(       VMADC_VI, "|010001|1|.....|.....|011|.....|1010111|"),
    DECODE32_ENTRY(       VAADD_VI, "|100100|.|.....|.....|011|.....|1010111|"),

    // V-extension IVX-type instructions
    //                               |funct6|m|  vs2|  rs1|IVX|  vs3| opcode|
    DECODE32_ENTRY(        VADC_VX, "|010000|1|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VMADC_VX, "|010001|1|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(        VSBC_VX, "|010010|1|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VMSBC_VX, "|010011|1|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VAADD_VX, "|100100|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(       VASUB_VX, "|100110|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(    VWSMACCU_VX, "|111100|.|.....|.....|100|.....|1010111|"),
    DECODE32_ENTRY(     VWSMACC_VX, "|111101|.|.....|.....|100|.....|1010111|"),

    // table termination entry
    {0}
};

//
// This specifies decodes specific to late 0.8 versions
//
const static decodeEntry32 decodeLate08[] = {

    // V-extension load/store instructions (whole registers)
    //                               | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(           VL_I, "|...|000|1|01000|.....|111|.....|0000111|"),
    DECODE32_ENTRY(           VS_I, "|...|000|1|01000|.....|111|.....|0100111|"),

    // table termination entry
    {0}
};

//
// This specifies decodes *before* release 0.9
//
const static decodeEntry32 decodePre09[] = {

    // V-extension load/store instructions (byte elements)
    //                               | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(           VL_I, "|...|.00|.|.0000|.....|000|.....|0000111|"),
    DECODE32_ENTRY(          VLS_I, "|...|.10|.|.....|.....|000|.....|0000111|"),
    DECODE32_ENTRY(          VLX_I, "|...|.11|.|.....|.....|000|.....|0000111|"),
    DECODE32_ENTRY(           VS_I, "|...|000|.|00000|.....|000|.....|0100111|"),
    DECODE32_ENTRY(          VSS_I, "|...|010|.|.....|.....|000|.....|0100111|"),
    DECODE32_ENTRY(          VSX_I, "|...|011|.|.....|.....|000|.....|0100111|"),
    DECODE32_ENTRY(         VSUX_I, "|...|111|.|.....|.....|000|.....|0100111|"),

    // V-extension load/store instructions (halfword elements)
    //                               | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(           VL_I, "|...|.00|.|.0000|.....|101|.....|0000111|"),
    DECODE32_ENTRY(          VLS_I, "|...|.10|.|.....|.....|101|.....|0000111|"),
    DECODE32_ENTRY(          VLX_I, "|...|.11|.|.....|.....|101|.....|0000111|"),
    DECODE32_ENTRY(           VS_I, "|...|000|.|00000|.....|101|.....|0100111|"),
    DECODE32_ENTRY(          VSS_I, "|...|010|.|.....|.....|101|.....|0100111|"),
    DECODE32_ENTRY(          VSX_I, "|...|011|.|.....|.....|101|.....|0100111|"),
    DECODE32_ENTRY(         VSUX_I, "|...|111|.|.....|.....|101|.....|0100111|"),

    // V-extension load/store instructions (word elements)
    //                               | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(           VL_I, "|...|.00|.|.0000|.....|110|.....|0000111|"),
    DECODE32_ENTRY(          VLS_I, "|...|.10|.|.....|.....|110|.....|0000111|"),
    DECODE32_ENTRY(          VLX_I, "|...|.11|.|.....|.....|110|.....|0000111|"),
    DECODE32_ENTRY(           VS_I, "|...|000|.|00000|.....|110|.....|0100111|"),
    DECODE32_ENTRY(          VSS_I, "|...|010|.|.....|.....|110|.....|0100111|"),
    DECODE32_ENTRY(          VSX_I, "|...|011|.|.....|.....|110|.....|0100111|"),
    DECODE32_ENTRY(         VSUX_I, "|...|111|.|.....|.....|110|.....|0100111|"),

    // V-extension load/store instructions (SEW elements)
    //                               | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(           VL_I, "|...|000|.|.0000|.....|111|.....|0000111|"),
    DECODE32_ENTRY(          VLS_I, "|...|010|.|.....|.....|111|.....|0000111|"),
    DECODE32_ENTRY(          VLX_I, "|...|011|.|.....|.....|111|.....|0000111|"),
    DECODE32_ENTRY(           VS_I, "|...|000|.|00000|.....|111|.....|0100111|"),
    DECODE32_ENTRY(          VSS_I, "|...|010|.|.....|.....|111|.....|0100111|"),
    DECODE32_ENTRY(          VSX_I, "|...|011|.|.....|.....|111|.....|0100111|"),
    DECODE32_ENTRY(         VSUX_I, "|...|111|.|.....|.....|111|.....|0100111|"),

    // V-extension AMO operations (Zvamo)
    //                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    DECODE32_ENTRY(      VAMOADD_R, "|00000..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(      VAMOAND_R, "|01100..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(      VAMOMAX_R, "|10100..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(     VAMOMAXU_R, "|11100..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(      VAMOMIN_R, "|10000..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(     VAMOMINU_R, "|11000..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(       VAMOOR_R, "|01000..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(     VAMOSWAP_R, "|00001..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(      VAMOXOR_R, "|00100..|.....|.....|11.|.....|0101111|"),

    // V-extension FVV-type instructions
    //                               |funct6|m|  vs2|  vs1|FVV|  vs3| opcode|
    DECODE32_ENTRY(    VFCVT_XUF_V, "|100010|.|.....|00000|001|.....|1010111|"),
    DECODE32_ENTRY(     VFCVT_XF_V, "|100010|.|.....|00001|001|.....|1010111|"),
    DECODE32_ENTRY(    VFCVT_FXU_V, "|100010|.|.....|00010|001|.....|1010111|"),
    DECODE32_ENTRY(     VFCVT_FX_V, "|100010|.|.....|00011|001|.....|1010111|"),
    DECODE32_ENTRY(   VFWCVT_XUF_V, "|100010|.|.....|01000|001|.....|1010111|"),
    DECODE32_ENTRY(    VFWCVT_XF_V, "|100010|.|.....|01001|001|.....|1010111|"),
    DECODE32_ENTRY(   VFWCVT_FXU_V, "|100010|.|.....|01010|001|.....|1010111|"),
    DECODE32_ENTRY(    VFWCVT_FX_V, "|100010|.|.....|01011|001|.....|1010111|"),
    DECODE32_ENTRY(    VFWCVT_FF_V, "|100010|.|.....|01100|001|.....|1010111|"),
    DECODE32_ENTRY(   VFNCVT_XUF_V, "|100010|.|.....|10000|001|.....|1010111|"),
    DECODE32_ENTRY(    VFNCVT_XF_V, "|100010|.|.....|10001|001|.....|1010111|"),
    DECODE32_ENTRY(   VFNCVT_FXU_V, "|100010|.|.....|10010|001|.....|1010111|"),
    DECODE32_ENTRY(    VFNCVT_FX_V, "|100010|.|.....|10011|001|.....|1010111|"),
    DECODE32_ENTRY(    VFNCVT_FF_V, "|100010|.|.....|10100|001|.....|1010111|"),
    DECODE32_ENTRY(       VFSQRT_V, "|100011|.|.....|00000|001|.....|1010111|"),
    DECODE32_ENTRY(      VFCLASS_V, "|100011|.|.....|10000|001|.....|1010111|"),

    // table termination entry
    {0}
};

//
// This specifies decodes *after* release 0.8
//
const static decodeEntry32 decodeInitial09[] = {

    // V-extension load/store instructions (whole registers)
    //                               | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(          VLE_I, "|...|000|1|01000|.....|000|.....|0000111|"),
    DECODE32_ENTRY(          VSE_I, "|...|000|1|01000|.....|000|.....|0100111|"),

    // V-extension load/store instructions (8/128-bit elements)
    //                               | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(          VLE_I, "|...|.00|.|.0000|.....|000|.....|0000111|"),
    DECODE32_ENTRY(         VLSE_I, "|...|.10|.|.....|.....|000|.....|0000111|"),
    DECODE32_ENTRY(        VLXEI_I, "|...|.11|.|.....|.....|000|.....|0000111|"),
    DECODE32_ENTRY(          VSE_I, "|...|.00|.|00000|.....|000|.....|0100111|"),
    DECODE32_ENTRY(         VSSE_I, "|...|.10|.|.....|.....|000|.....|0100111|"),
    DECODE32_ENTRY(        VSXEI_I, "|...|.11|.|.....|.....|000|.....|0100111|"),
    DECODE32_ENTRY(       VSUXEI_I, "|...|.01|.|.....|.....|000|.....|0100111|"),

    // V-extension load/store instructions (16/256-bit elements)
    //                               | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(          VLE_I, "|...|.00|.|.0000|.....|101|.....|0000111|"),
    DECODE32_ENTRY(         VLSE_I, "|...|.10|.|.....|.....|101|.....|0000111|"),
    DECODE32_ENTRY(        VLXEI_I, "|...|.11|.|.....|.....|101|.....|0000111|"),
    DECODE32_ENTRY(          VSE_I, "|...|.00|.|00000|.....|101|.....|0100111|"),
    DECODE32_ENTRY(         VSSE_I, "|...|.10|.|.....|.....|101|.....|0100111|"),
    DECODE32_ENTRY(        VSXEI_I, "|...|.11|.|.....|.....|101|.....|0100111|"),
    DECODE32_ENTRY(       VSUXEI_I, "|...|.01|.|.....|.....|101|.....|0100111|"),

    // V-extension load/store instructions (32/64/512/1024-bit elements)
    //                               | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(          VLE_I, "|...|.00|.|.0000|.....|11.|.....|0000111|"),
    DECODE32_ENTRY(         VLSE_I, "|...|.10|.|.....|.....|11.|.....|0000111|"),
    DECODE32_ENTRY(        VLXEI_I, "|...|.11|.|.....|.....|11.|.....|0000111|"),
    DECODE32_ENTRY(          VSE_I, "|...|.00|.|00000|.....|11.|.....|0100111|"),
    DECODE32_ENTRY(         VSSE_I, "|...|.10|.|.....|.....|11.|.....|0100111|"),
    DECODE32_ENTRY(        VSXEI_I, "|...|.11|.|.....|.....|11.|.....|0100111|"),
    DECODE32_ENTRY(       VSUXEI_I, "|...|.01|.|.....|.....|11.|.....|0100111|"),

    // V-extension AMO operations (8-bit elements, Zvamo)
    //                               |amoop|dm|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(    VAMOADDEI_R, "|00000|..|.....|.....|000|.....|0101111|"),
    DECODE32_ENTRY(    VAMOANDEI_R, "|01100|..|.....|.....|000|.....|0101111|"),
    DECODE32_ENTRY(    VAMOMAXEI_R, "|10100|..|.....|.....|000|.....|0101111|"),
    DECODE32_ENTRY(   VAMOMAXUEI_R, "|11100|..|.....|.....|000|.....|0101111|"),
    DECODE32_ENTRY(    VAMOMINEI_R, "|10000|..|.....|.....|000|.....|0101111|"),
    DECODE32_ENTRY(   VAMOMINUEI_R, "|11000|..|.....|.....|000|.....|0101111|"),
    DECODE32_ENTRY(     VAMOOREI_R, "|01000|..|.....|.....|000|.....|0101111|"),
    DECODE32_ENTRY(   VAMOSWAPEI_R, "|00001|..|.....|.....|000|.....|0101111|"),
    DECODE32_ENTRY(    VAMOXOREI_R, "|00100|..|.....|.....|000|.....|0101111|"),

    // V-extension AMO operations (16-bit elements, Zvamo)
    //                               |amoop|dm|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(    VAMOADDEI_R, "|00000|..|.....|.....|101|.....|0101111|"),
    DECODE32_ENTRY(    VAMOANDEI_R, "|01100|..|.....|.....|101|.....|0101111|"),
    DECODE32_ENTRY(    VAMOMAXEI_R, "|10100|..|.....|.....|101|.....|0101111|"),
    DECODE32_ENTRY(   VAMOMAXUEI_R, "|11100|..|.....|.....|101|.....|0101111|"),
    DECODE32_ENTRY(    VAMOMINEI_R, "|10000|..|.....|.....|101|.....|0101111|"),
    DECODE32_ENTRY(   VAMOMINUEI_R, "|11000|..|.....|.....|101|.....|0101111|"),
    DECODE32_ENTRY(     VAMOOREI_R, "|01000|..|.....|.....|101|.....|0101111|"),
    DECODE32_ENTRY(   VAMOSWAPEI_R, "|00001|..|.....|.....|101|.....|0101111|"),
    DECODE32_ENTRY(    VAMOXOREI_R, "|00100|..|.....|.....|101|.....|0101111|"),

    // V-extension AMO operations (32/64-bit elements, Zvamo)
    //                               |amoop|dm|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(    VAMOADDEI_R, "|00000|..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(    VAMOANDEI_R, "|01100|..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(    VAMOMAXEI_R, "|10100|..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(   VAMOMAXUEI_R, "|11100|..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(    VAMOMINEI_R, "|10000|..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(   VAMOMINUEI_R, "|11000|..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(     VAMOOREI_R, "|01000|..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(   VAMOSWAPEI_R, "|00001|..|.....|.....|11.|.....|0101111|"),
    DECODE32_ENTRY(    VAMOXOREI_R, "|00100|..|.....|.....|11.|.....|0101111|"),

    // V-extension FVV-type instructions
    //                               |funct6|m|  vs2|  vs1|FVV|  vs3| opcode|
    DECODE32_ENTRY(    VFCVT_XUF_V, "|010010|.|.....|00000|001|.....|1010111|"),
    DECODE32_ENTRY(     VFCVT_XF_V, "|010010|.|.....|00001|001|.....|1010111|"),
    DECODE32_ENTRY(    VFCVT_FXU_V, "|010010|.|.....|00010|001|.....|1010111|"),
    DECODE32_ENTRY(     VFCVT_FX_V, "|010010|.|.....|00011|001|.....|1010111|"),
    DECODE32_ENTRY( VFCVTRTZ_XUF_V, "|010010|.|.....|00110|001|.....|1010111|"),
    DECODE32_ENTRY(  VFCVTRTZ_XF_V, "|010010|.|.....|00111|001|.....|1010111|"),
    DECODE32_ENTRY(   VFWCVT_XUF_V, "|010010|.|.....|01000|001|.....|1010111|"),
    DECODE32_ENTRY(    VFWCVT_XF_V, "|010010|.|.....|01001|001|.....|1010111|"),
    DECODE32_ENTRY(   VFWCVT_FXU_V, "|010010|.|.....|01010|001|.....|1010111|"),
    DECODE32_ENTRY(    VFWCVT_FX_V, "|010010|.|.....|01011|001|.....|1010111|"),
    DECODE32_ENTRY(    VFWCVT_FF_V, "|010010|.|.....|01100|001|.....|1010111|"),
    DECODE32_ENTRY(VFWCVTRTZ_XUF_V, "|010010|.|.....|01110|001|.....|1010111|"),
    DECODE32_ENTRY( VFWCVTRTZ_XF_V, "|010010|.|.....|01111|001|.....|1010111|"),
    DECODE32_ENTRY(   VFNCVT_XUF_V, "|010010|.|.....|10000|001|.....|1010111|"),
    DECODE32_ENTRY(    VFNCVT_XF_V, "|010010|.|.....|10001|001|.....|1010111|"),
    DECODE32_ENTRY(   VFNCVT_FXU_V, "|010010|.|.....|10010|001|.....|1010111|"),
    DECODE32_ENTRY(    VFNCVT_FX_V, "|010010|.|.....|10011|001|.....|1010111|"),
    DECODE32_ENTRY(    VFNCVT_FF_V, "|010010|.|.....|10100|001|.....|1010111|"),
    DECODE32_ENTRY( VFNCVTROD_FF_V, "|010010|.|.....|10101|001|.....|1010111|"),
    DECODE32_ENTRY(VFNCVTRTZ_XUF_V, "|010010|.|.....|10110|001|.....|1010111|"),
    DECODE32_ENTRY( VFNCVTRTZ_XF_V, "|010010|.|.....|10111|001|.....|1010111|"),
    DECODE32_ENTRY(       VFSQRT_V, "|010011|.|.....|00000|001|.....|1010111|"),
    DECODE32_ENTRY(      VFCLASS_V, "|010011|.|.....|10000|001|.....|1010111|"),

    // V-extension FVF-type instructions
    //                               |funct6|m|  vs2|  fs1|FVF|  vs3| opcode|
    DECODE32_ENTRY(  VFSLIDE1UP_VF, "|001110|.|.....|.....|101|.....|1010111|"),
    DECODE32_ENTRY(VFSLIDE1DOWN_VF, "|001111|.|.....|.....|101|.....|1010111|"),

    // V-extension MVV-type instructions
    //                               |funct6|m|  vs2|  vs1|MVV|  vs3| opcode|
    DECODE32_ENTRY(        VZEXT_V, "|010010|.|.....|00010|010|.....|1010111|"),
    DECODE32_ENTRY(        VZEXT_V, "|010010|.|.....|001.0|010|.....|1010111|"),
    DECODE32_ENTRY(        VSEXT_V, "|010010|.|.....|00011|010|.....|1010111|"),
    DECODE32_ENTRY(        VSEXT_V, "|010010|.|.....|001.1|010|.....|1010111|"),

    // table termination entry
    {0}
};

//
// This specifies decodes *after* release 0.9
//
const static decodeEntry32 decodeInitial10[] = {

    // V-extension load/store instructions (whole registers, 8/128-bit hint)
    //                               | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(          VLE_I, "|...|.00|1|01000|.....|000|.....|0000111|"),

    // V-extension load/store instructions (whole registers, 16/256-bit hint)
    //                               | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(          VLE_I, "|...|.00|1|01000|.....|101|.....|0000111|"),

    // V-extension load/store instructions (whole registers, 32/64/512/1024-bit hint)
    //                               | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    DECODE32_ENTRY(          VLE_I, "|...|.00|1|01000|.....|11.|.....|0000111|"),

    // V-extension FVV-type instructions
    //                               |funct6|m|  vs2|  vs1|FVV|  vs3| opcode|
    DECODE32_ENTRY(    VFRSQRTE7_V, "|010011|.|.....|00100|001|.....|1010111|"),
    DECODE32_ENTRY(      VFRECE7_V, "|010011|.|.....|00101|001|.....|1010111|"),

    // table termination entry
    {0}
};

//
// This specifies attributes for each 32-bit opcode
//
const static opAttrs attrsArray32[] = {

    // base R-type
    ATTR32_RD_RS1_RS2       (          ADD_R,           ADD_R, RVANY,   "add" ),
    ATTR32_RD_RS1_RS2       (          AND_R,           AND_R, RVANY,   "and" ),
    ATTR32_RD_rs1_RS2       (          NEG_R,           SUB_R, RVANY,   "neg" ),
    ATTR32_RD_RS1_RS2       (           OR_R,            OR_R, RVANY,   "or"  ),
    ATTR32_RD_rs1_RS2       (         SGTZ_R,           SLT_R, RVANY,   "sgtz"),
    ATTR32_RD_RS1_RS2       (          SLL_R,           SLL_R, RVANY,   "sll" ),
    ATTR32_RD_RS1_RS2       (          SLT_R,           SLT_R, RVANY,   "slt" ),
    ATTR32_RD_RS1_RS2       (         SLTU_R,          SLTU_R, RVANY,   "sltu"),
    ATTR32_RD_RS1_rs2       (         SLTZ_R,           SLT_R, RVANY,   "sltz"),
    ATTR32_RD_rs1_RS2       (         SNEZ_R,          SLTU_R, RVANY,   "snez"),
    ATTR32_RD_RS1_RS2       (          SRA_R,           SRA_R, RVANY,   "sra" ),
    ATTR32_RD_RS1_RS2       (          SRL_R,           SRL_R, RVANY,   "srl" ),
    ATTR32_RD_RS1_RS2       (          SUB_R,           SUB_R, RVANY,   "sub" ),
    ATTR32_RD_RS1_RS2       (          XOR_R,           XOR_R, RVANY,   "xor" ),

    // M-extension R-type
    ATTR32_RD_RS1_RS2       (          DIV_R,           DIV_R, RVANYM,  "div"   ),
    ATTR32_RD_RS1_RS2       (         DIVU_R,          DIVU_R, RVANYM,  "divu"  ),
    ATTR32_RD_RS1_RS2       (          MUL_R,           MUL_R, RVANYM,  "mul"   ),
    ATTR32_RD_RS1_RS2       (         MULH_R,          MULH_R, RVANYM,  "mulh"  ),
    ATTR32_RD_RS1_RS2       (       MULHSU_R,        MULHSU_R, RVANYM,  "mulhsu"),
    ATTR32_RD_RS1_RS2       (        MULHU_R,         MULHU_R, RVANYM,  "mulhu" ),
    ATTR32_RD_RS1_RS2       (          REM_R,           REM_R, RVANYM,  "rem"   ),
    ATTR32_RD_RS1_RS2       (         REMU_R,          REMU_R, RVANYM,  "remu"  ),

    // base I-type
    ATTR32_RD_RS1_SI        (         ADDI_I,          ADDI_I, RVANY,   "addi" ),
    ATTR32_RD_RS1_SI        (         ANDI_I,          ANDI_I, RVANY,   "andi" ),
    ATTR32_rd_OFF_RS1       (           JR_I,          JALR_I, RVANY,   "jr"   ),
    ATTR32_rd_off_RS1       (          JR0_I,          JALR_I, RVANY,   "jr"   ),
    ATTR32_RD_OFF_RS1       (         JALR_I,          JALR_I, RVANY,   "jalr" ),
    ATTR32_RD_RS1_si        (        JALR0_I,          JALR_I, RVANY,   "jalr" ),
    ATTR32_RD_RS1_si        (           MV_I,            MV_R, RVANY,   "mv"   ),
    ATTR32_rd_rs1_si        (          NOP_I,          ADDI_I, RVANY,   "nop"  ),
    ATTR32_RD_RS1_si        (          NOT_I,          XORI_I, RVANY,   "not"  ),
    ATTR32_RD_RS1_SI        (          ORI_I,           ORI_I, RVANY,   "ori"  ),
    ATTR32_rd_rs1_si        (          RET_I,          JALR_I, RVANY,   "ret"  ),
    ATTR32_RD_RS1_si        (         SEQZ_I,         SLTIU_I, RVANY,   "seqz" ),
    ATTR32_RD_RS1_si        (        SEXTW_I,          ADDI_I, RVANY,   "sext."),
    ATTR32_RD_RS1_XSHIFT    (         SLLI_I,          SLLI_I, RVANY,   "slli" ),
    ATTR32_RD_RS1_SI        (         SLTI_I,          SLTI_I, RVANY,   "slti" ),
    ATTR32_RD_RS1_SI        (        SLTIU_I,         SLTIU_I, RVANY,   "sltiu"),
    ATTR32_RD_RS1_XSHIFT    (         SRAI_I,          SRAI_I, RVANY,   "srai" ),
    ATTR32_RD_RS1_XSHIFT    (         SRLI_I,          SRLI_I, RVANY,   "srli" ),
    ATTR32_RD_RS1_SI        (         XORI_I,          XORI_I, RVANY,   "xori" ),

    // base I-type instructions for load
    ATTR32_RD_MEM_RS1       (           LB_I,             L_I, RVANY,   "l"),
    ATTR32_RD_MEM_RS1       (          LBU_I,             L_I, RVANY,   "l"),
    ATTR32_RD_MEM_RS1       (           LH_I,             L_I, RVANY,   "l"),
    ATTR32_RD_MEM_RS1       (          LHU_I,             L_I, RVANY,   "l"),
    ATTR32_RD_MEM_RS1       (           LW_I,             L_I, RVANY,   "l"),
    ATTR32_RD_MEM_RS1       (          LWU_I,             L_I, RV64,    "l"),
    ATTR32_RD_MEM_RS1       (           LD_I,             L_I, RV64,    "l"),

    // base S-type instructions for store
    ATTR32_RS2_MEM_RS1      (           SB_I,             S_I, RVANY,   "s"),
    ATTR32_RS2_MEM_RS1      (           SH_I,             S_I, RVANY,   "s"),
    ATTR32_RS2_MEM_RS1      (           SW_I,             S_I, RVANY,   "s"),
    ATTR32_RS2_MEM_RS1      (           SD_I,             S_I, RV64,    "s"),

    // base I-type instructions for CSR access (register)
    ATTR32_RD_CSR_RS1       (        CSRRC_I,          CSRR_I, RVANY,   "csrrc"),
    ATTR32_RD_CSR_RS1       (        CSRRS_I,          CSRR_I, RVANY,   "csrrs"),
    ATTR32_RD_CSR_RS1       (        CSRRW_I,          CSRR_I, RVANY,   "csrrw"),
    ATTR32_RD_CSR_rs1       (         CSRR_I,          CSRR_I, RVANY,   "csrr" ),
    ATTR32_rd_CSR_RS1       (         CSRC_I,          CSRR_I, RVANY,   "csrc" ),
    ATTR32_rd_CSR_RS1       (         CSRS_I,          CSRR_I, RVANY,   "csrs" ),
    ATTR32_rd_CSR_RS1       (         CSRW_I,          CSRR_I, RVANY,   "csrw" ),
    ATTR32_OPCSR_RD_csr_rs1 (         RDX1_I,          CSRR_I, RVANY,   "rd"   ),
    ATTR32_OPCSR_RD_csr_rs1 (         RDX2_I,          CSRR_I, RVANY,   "rd"   ),

    // base I-type instructions for CSR access (constant)
    ATTR32_RD_CSR_IMM       (       CSRRCI_I,         CSRRI_I, RVANY,   "csrrci"),
    ATTR32_RD_CSR_IMM       (       CSRRSI_I,         CSRRI_I, RVANY,   "csrrsi"),
    ATTR32_RD_CSR_IMM       (       CSRRWI_I,         CSRRI_I, RVANY,   "csrrwi"),
    ATTR32_rd_CSR_IMM       (        CSRCI_I,         CSRRI_I, RVANY,   "csrci" ),
    ATTR32_rd_CSR_IMM       (        CSRSI_I,         CSRRI_I, RVANY,   "csrsi" ),
    ATTR32_rd_CSR_IMM       (        CSRWI_I,         CSRRI_I, RVANY,   "csrwi" ),

    // miscellaneous system I-type instructions
    ATTR32_NOP              (       EBREAK_I,        EBREAK_I, RVANY,   "ebreak" ),
    ATTR32_NOP              (        ECALL_I,         ECALL_I, RVANY,   "ecall"  ),
    ATTR32_NOP              (       FENCEI_I,        FENCEI_I, RVANY,   "fence.i"),
    ATTR32_NOP              (         MRET_I,          MRET_I, RVANY,   "mret"   ),
    ATTR32_NOP              (         SRET_I,          SRET_I, RVANY,   "sret"   ),
    ATTR32_NOP              (         URET_I,          URET_I, RVANYN,  "uret"   ),
    ATTR32_NOP              (         DRET_I,          DRET_I, RVANY,   "dret"   ),
    ATTR32_NOP              (          WFI_I,           WFI_I, RVANY,   "wfi"    ),

    // system fence I-type instruction
    ATTR32_FENCE            (        FENCE_I,         FENCE_I, RVANY,   "fence"),

    // system fence R-type instruction
    ATTR32_FENCE_VMA        (    FENCE_VMA_R,     FENCE_VMA_R, RVANY,   "sfence.vma"),

    // base U-type
    ATTR32_RD_UIPC          (        AUIPC_U,         AUIPC_U, RVANY,   "auipc"),
    ATTR32_RD_UIPC          (          LUI_U,            MV_C, RVANY,   "lui"  ),

    // base B-type
    ATTR32_RS1_RS2_TB       (          BEQ_B,           BEQ_B, RVANY,   "beq" ),
    ATTR32_RS1_rs2_TB       (         BEQZ_B,           BEQ_B, RVANY,   "beqz"),
    ATTR32_RS1_RS2_TB       (          BGE_B,           BGE_B, RVANY,   "bge" ),
    ATTR32_RS1_rs2_TB       (         BGEZ_B,           BGE_B, RVANY,   "bgez"),
    ATTR32_rs1_RS2_TB       (         BLEZ_B,           BGE_B, RVANY,   "blez"),
    ATTR32_RS1_RS2_TB       (         BGEU_B,          BGEU_B, RVANY,   "bgeu"),
    ATTR32_RS1_RS2_TB       (          BLT_B,           BLT_B, RVANY,   "blt" ),
    ATTR32_RS1_rs2_TB       (         BLTZ_B,           BLT_B, RVANY,   "bltz"),
    ATTR32_rs1_RS2_TB       (         BGTZ_B,           BLT_B, RVANY,   "bgtz"),
    ATTR32_RS1_RS2_TB       (         BLTU_B,          BLTU_B, RVANY,   "bltu"),
    ATTR32_RS1_RS2_TB       (          BNE_B,           BNE_B, RVANY,   "bne" ),
    ATTR32_RS1_rs2_TB       (         BNEZ_B,           BNE_B, RVANY,   "bnez"),

    // base J-type
    ATTR32_rd_TJ            (            J_J,           JAL_J, RVANY,   "j"  ),
    ATTR32_RD_TJ            (          JAL_J,           JAL_J, RVANY,   "jal"),

    // A-extension R-type
    ATTR32_AMOADD           (       AMOADD_R,        AMOADD_R, RVANYA,  "amoadd" ),
    ATTR32_AMOADD           (       AMOAND_R,        AMOAND_R, RVANYA,  "amoand" ),
    ATTR32_AMOADD           (       AMOMAX_R,        AMOMAX_R, RVANYA,  "amomax" ),
    ATTR32_AMOADD           (      AMOMAXU_R,       AMOMAXU_R, RVANYA,  "amomaxu"),
    ATTR32_AMOADD           (       AMOMIN_R,        AMOMIN_R, RVANYA,  "amomin" ),
    ATTR32_AMOADD           (      AMOMINU_R,       AMOMINU_R, RVANYA,  "amominu"),
    ATTR32_AMOADD           (        AMOOR_R,         AMOOR_R, RVANYA,  "amoor"  ),
    ATTR32_AMOADD           (      AMOSWAP_R,       AMOSWAP_R, RVANYA,  "amoswap"),
    ATTR32_AMOADD           (       AMOXOR_R,        AMOXOR_R, RVANYA,  "amoxor" ),
    ATTR32_LR               (           LR_R,            LR_R, RVANYA,  "lr"     ),
    ATTR32_AMOADD           (           SC_R,            SC_R, RVANYA,  "sc"     ),

    // F-extension and D-extension R-type instructions
    ATTR32_FD_FS1_FS2_R     (         FADD_R,          FADD_R, RVANY,   "fadd"  ),
    ATTR32_RD_FS1           (       FCLASS_R,        FCLASS_R, RVANY,   "fclass"),
    ATTR32_FCVT             (     FCVT_F_X_R,          FCVT_R, RVANY,   "fcvt", F,   XWL),
    ATTR32_FCVT             (     FCVT_X_F_R,          FCVT_R, RVANY,   "fcvt", XWL, F  ),
    ATTR32_FCVT             (     FCVT_D_S_R,          FCVT_R, RVANY,   "fcvt", F,   S  ),
    ATTR32_FCVT             (     FCVT_S_D_R,          FCVT_R, RVANY,   "fcvt", F,   D  ),
    ATTR32_FD_FS1_FS2_R     (         FDIV_R,          FDIV_R, RVANY,   "fdiv"  ),
    ATTR32_RD_FS1_FS2       (          FEQ_R,           FEQ_R, RVANY,   "feq"   ),
    ATTR32_RD_FS1_FS2       (          FLE_R,           FLE_R, RVANY,   "fle"   ),
    ATTR32_RD_FS1_FS2       (          FLT_R,           FLT_R, RVANY,   "flt"   ),
    ATTR32_FD_FS1_FS2       (         FMAX_R,          FMAX_R, RVANY,   "fmax"  ),
    ATTR32_FD_FS1_FS2       (         FMIN_R,          FMIN_R, RVANY,   "fmin"  ),
    ATTR32_FD_FS1_FS2_R     (         FMUL_R,          FMUL_R, RVANY,   "fmul"  ),
    ATTR32_FD_FS1_FS2       (        FSGNJ_R,         FSGNJ_R, RVANY,   "fsgnj" ),
    ATTR32_FD_FS1_FS2       (       FSGNJN_R,        FSGNJN_R, RVANY,   "fsgnjn"),
    ATTR32_FD_FS1_FS2       (       FSGNJX_R,        FSGNJX_R, RVANY,   "fsgnjx"),
    ATTR32_FMVFX            (        FMVFX_R,            MV_R, RVANY,   "fmv"   ),
    ATTR32_FMVXF            (        FMVXF_R,            MV_R, RVANY,   "fmv"   ),
    ATTR32_FD_FS1           (        FSQRT_R,         FSQRT_R, RVANY,   "fsqrt" ),
    ATTR32_FD_FS1_FS2_R     (         FSUB_R,          FSUB_R, RVANY,   "fsub"  ),

    // F-extension and D-extension R4-type instructions
    ATTR32_FD_FS1_FS2_FS3_R (       FMADD_R4,        FMADD_R4, RVANY,   "fmadd" ),
    ATTR32_FD_FS1_FS2_FS3_R (       FMSUB_R4,        FMSUB_R4, RVANY,   "fmsub" ),
    ATTR32_FD_FS1_FS2_FS3_R (      FNMADD_R4,       FNMADD_R4, RVANY,   "fnmadd"),
    ATTR32_FD_FS1_FS2_FS3_R (      FNMSUB_R4,       FNMSUB_R4, RVANY,   "fnmsub"),

    // F-extension and D-extension I-type instructions
    ATTR32_FD_MEM_RS1       (           FL_I,             L_I, RVANY,   "fl"),
    ATTR32_FS2_MEM_RS1      (           FS_I,             S_I, RVANY,   "fs"),

    // F-extension and D-extension I-type instructions for CSR access
    ATTR32_RD_csr_rs1       (         FRSR_I,          CSRR_I, RVANY,   "frsr"   ),
    ATTR32_RD_csr_rs1       (      FRFLAGS_I,          CSRR_I, RVANY,   "frflags"),
    ATTR32_RD_csr_rs1       (         FRRM_I,          CSRR_I, RVANY,   "frrm"   ),
    ATTR32_RDNZ_csr_RS1     (         FSSR_I,          CSRR_I, RVANY,   "fssr"   ),
    ATTR32_RDNZ_csr_RS1     (      FSFLAGS_I,          CSRR_I, RVANY,   "fsflags"),
    ATTR32_RDNZ_csr_RS1     (         FSRM_I,          CSRR_I, RVANY,   "fsrm"   ),

    // X-extension Type, custom instructions
    ATTR32_NOP              (        CUSTOM1,          CUSTOM, RVANY,   "custom1"),
    ATTR32_NOP              (        CUSTOM2,          CUSTOM, RVANY,   "custom2"),
    ATTR32_NOP              (        CUSTOM3,          CUSTOM, RVANY,   "custom3"),
    ATTR32_NOP              (        CUSTOM4,          CUSTOM, RVANY,   "custom4"),

    // B-extension R-type instructions
    ATTR32_RD_RS1_RS2       (         ANDN_R,          ANDN_R, RVANYB,  "andn"    ),
    ATTR32_RD_RS1_RS2       (          ORN_R,           ORN_R, RVANYB,  "orn"     ),
    ATTR32_RD_RS1_RS2       (         XNOR_R,          XNOR_R, RVANYB,  "xnor"    ),
    ATTR32_RD_RS1_RS2       (          SLO_R,           SLO_R, RVANYB,  "slo"     ),
    ATTR32_RD_RS1_RS2       (          SRO_R,           SRO_R, RVANYB,  "sro"     ),
    ATTR32_RD_RS1_RS2       (          ROL_R,           ROL_R, RVANYB,  "rol"     ),
    ATTR32_RD_RS1_RS2       (          ROR_R,           ROR_R, RVANYB,  "ror"     ),
    ATTR32_RD_RS1_RS2       (        SBCLR_R,         SBCLR_R, RVANYB,  "sbclr"   ),
    ATTR32_RD_RS1_RS2       (        SBSET_R,         SBSET_R, RVANYB,  "sbset"   ),
    ATTR32_RD_RS1_RS2       (        SBINV_R,         SBINV_R, RVANYB,  "sbinv"   ),
    ATTR32_RD_RS1_RS2       (        SBEXT_R,         SBEXT_R, RVANYB,  "sbext"   ),
    ATTR32_RD_RS1_RS2       (         GORC_R,          GORC_R, RVANYB,  "gorc"    ),
    ATTR32_RD_RS1_RS2       (         GREV_R,          GREV_R, RVANYB,  "grev"    ),
    ATTR32_RD_RS1_rs2       (          CLZ_R,           CLZ_R, RVANYB,  "clz"     ),
    ATTR32_RD_RS1_rs2       (          CTZ_R,           CTZ_R, RVANYB,  "ctz"     ),
    ATTR32_RD_RS1_rs2       (         PCNT_R,          PCNT_R, RVANYB,  "pcnt"    ),
    ATTR32_CRC32            (         SEXT_R,          SEXT_R, RVANYB,  "sext"    ),
    ATTR32_CRC32            (        CRC32_R,         CRC32_R, RVANYB,  "crc32"   ),
    ATTR32_CRC32            (       CRC32C_R,        CRC32C_R, RVANYB,  "crc32c"  ),
    ATTR32_RD_RS1_RS2       (        CLMUL_R,         CLMUL_R, RVANYB,  "clmul"   ),
    ATTR32_RD_RS1_RS2       (       CLMULR_R,        CLMULR_R, RVANYB,  "clmulr"  ),
    ATTR32_RD_RS1_RS2       (       CLMULH_R,        CLMULH_R, RVANYB,  "clmulh"  ),
    ATTR32_RD_RS1_RS2       (          MIN_R,           MIN_R, RVANYB,  "min"     ),
    ATTR32_RD_RS1_RS2       (          MAX_R,           MAX_R, RVANYB,  "max"     ),
    ATTR32_RD_RS1_RS2       (         MINU_R,          MINU_R, RVANYB,  "minu"    ),
    ATTR32_RD_RS1_RS2       (         MAXU_R,          MAXU_R, RVANYB,  "maxu"    ),
    ATTR32_RD_RS1_RS2       (         SHFL_R,          SHFL_R, RVANYB,  "shfl"    ),
    ATTR32_RD_RS1_RS2       (       UNSHFL_R,        UNSHFL_R, RVANYB,  "unshfl"  ),
    ATTR32_RD_RS1_RS2       (         BDEP_R,          BDEP_R, RVANYB,  "bdep"    ),
    ATTR32_RD_RS1_RS2       (         BEXT_R,          BEXT_R, RVANYB,  "bext"    ),
    ATTR32_RD_RS1_RS2       (         PACK_R,          PACK_R, RVANYB,  "pack"    ),
    ATTR32_RD_RS1_RS2       (        PACKH_R,         PACKH_R, RVANYB,  "packh"   ),
    ATTR32_RD_RS1_RS2       (        PACKU_R,         PACKU_R, RVANYB,  "packu"   ),
    ATTR32_RD_RS1_rs2       (     BMATFLIP_R,      BMATFLIP_R, RV64B,   "bmatflip"),
    ATTR32_RD_RS1_RS2       (       BMATOR_R,        BMATOR_R, RV64B,   "bmator"  ),
    ATTR32_RD_RS1_RS2       (      BMATXOR_R,       BMATXOR_R, RV64B,   "bmatxor" ),
    ATTR32_RD_RS1_RS2       (          BFP_R,           BFP_R, RVANYB,  "bfp"     ),
    ATTR32_RD_RS1_RS2_U     (        ADDWU_R,         ADDWU_R, RVANYB,  "add"     ),
    ATTR32_RD_RS1_RS2_U     (        SUBWU_R,         SUBWU_R, RVANYB,  "sub"     ),
    ATTR32_RD_RS1_RS2       (       ADDU_W_R,        ADDU_W_R, RVANYB,  "addu."   ),
    ATTR32_RD_RS1_RS2       (       SUBU_W_R,        SUBU_W_R, RVANYB,  "subu."   ),
    ATTR32_RD_RS1_RS2_SHN   (        SHADD_R,         SHADD_R, RVANYB,  "add"     ),
    ATTR32_RD_RS1_RS2_SHN   (     SHADDU_W_R,         SHADD_R, RVANYB,  "addu."   ),

    // B-extension I-type instructions
    ATTR32_RD_RS1_SSHIFT    (         SLOI_I,          SLOI_I, RVANYB,  "sloi"    ),
    ATTR32_RD_RS1_SSHIFT    (         SROI_I,          SROI_I, RVANYB,  "sroi"    ),
    ATTR32_RD_RS1_SSHIFT    (         RORI_I,          RORI_I, RVANYB,  "rori"    ),
    ATTR32_RD_RS1_SSHIFT    (       SBCLRI_I,        SBCLRI_I, RVANYB,  "sbclri"  ),
    ATTR32_RD_RS1_SSHIFT    (       SBSETI_I,        SBSETI_I, RVANYB,  "sbseti"  ),
    ATTR32_RD_RS1_SSHIFT    (       SBINVI_I,        SBINVI_I, RVANYB,  "sbinvi"  ),
    ATTR32_RD_RS1_SSHIFT    (       SBEXTI_I,        SBEXTI_I, RVANYB,  "sbexti"  ),
    ATTR32_RD_RS1_USHIFT    (        GORCI_I,         GORCI_I, RVANYB,  "gorci"   ),
    ATTR32_RD_RS1_USHIFT    (        GREVI_I,         GREVI_I, RVANYB,  "grevi"   ),
    ATTR32_RD_RS1_SSHIFT    (        SHFLI_I,         SHFLI_I, RVANYB,  "shfli"   ),
    ATTR32_RD_RS1_SSHIFT    (      UNSHFLI_I,       UNSHFLI_I, RVANYB,  "unshfli" ),
    ATTR32_RD_RS1_SI_U      (       ADDIWU_I,        ADDIWU_I, RVANYB,  "addi"    ),
    ATTR32_RD_RS1_USHIFT    (      SLLIU_W_I,       SLLIU_W_I, RVANYB,  "slliu."  ),

    // B-extension R4-type instructions
    ATTR32_RD_RS1_RS2_RS3   (        CMIX_R4,         CMIX_R4, RVANYB,  "cmix"),
    ATTR32_RD_RS1_RS2_RS3   (        CMOV_R4,         CMOV_R4, RVANYB,  "cmov"),
    ATTR32_RD_RS1_RS2_RS3   (         FSL_R4,          FSL_R4, RVANYB,  "fsl" ),
    ATTR32_RD_RS1_RS2_RS3   (         FSR_R4,          FSR_R4, RVANYB,  "fsr" ),

    // B-extension R3I-type instructions
    ATTR32_RD_RS1_RS3_SSHIFT(       FSRI_R3I,        FSRI_R3I, RVANYB,  "fsri"),

    // V-extension R-type
    ATTR32_RD_RS1_RS2       (       VSETVL_R,        VSETVL_R, RVANYV,  "vsetvl"),

    // V-extension I-type
    ATTR32_VSETVLI          (       VSETVL_I,        VSETVL_I, RVANYV,  "vsetvli"),

    // V-extension load/store instructions (pre-0.9)
    ATTR32_VL               (           VL_I,            VL_I, RVANYV,  "vl",   1),
    ATTR32_VLS              (          VLS_I,           VLS_I, RVANYV,  "vls",  1),
    ATTR32_VLX              (          VLX_I,           VLX_I, RVANYV,  "vlx",  1),
    ATTR32_VL               (           VS_I,            VS_I, RVANYV,  "vs",   0),
    ATTR32_VLS              (          VSS_I,           VSS_I, RVANYV,  "vss",  0),
    ATTR32_VLX              (          VSX_I,           VSX_I, RVANYV,  "vsx",  0),
    ATTR32_VLX              (         VSUX_I,           VSX_I, RVANYV,  "vsux", 0),

    // V-extension load/store instructions (0.9 and later)
    ATTR32_VLE              (          VLE_I,            VL_I, RVANYV,  "vl"  ),
    ATTR32_VLSE             (         VLSE_I,           VLS_I, RVANYV,  "vls" ),
    ATTR32_VLXEI            (        VLXEI_I,           VLX_I, RVANYV,  "vlx" ),
    ATTR32_VLE              (          VSE_I,            VS_I, RVANYV,  "vs"  ),
    ATTR32_VLSE             (         VSSE_I,           VSS_I, RVANYV,  "vss" ),
    ATTR32_VLXEI            (        VSXEI_I,           VSX_I, RVANYV,  "vsx" ),
    ATTR32_VLXEI            (       VSUXEI_I,           VSX_I, RVANYV,  "vsux"),

    // V-extension AMO operations (Zvamo, pre-0.9)
    ATTR32_VAMOADD          (      VAMOADD_R,       VAMOADD_R, RVANYVA, "vamoadd" ),
    ATTR32_VAMOADD          (      VAMOAND_R,       VAMOAND_R, RVANYVA, "vamoand" ),
    ATTR32_VAMOADD          (      VAMOMAX_R,       VAMOMAX_R, RVANYVA, "vamomax" ),
    ATTR32_VAMOADD          (     VAMOMAXU_R,      VAMOMAXU_R, RVANYVA, "vamomaxu"),
    ATTR32_VAMOADD          (      VAMOMIN_R,       VAMOMIN_R, RVANYVA, "vamomin" ),
    ATTR32_VAMOADD          (     VAMOMINU_R,      VAMOMINU_R, RVANYVA, "vamominu"),
    ATTR32_VAMOADD          (       VAMOOR_R,        VAMOOR_R, RVANYVA, "vamoor"  ),
    ATTR32_VAMOADD          (     VAMOSWAP_R,      VAMOSWAP_R, RVANYVA, "vamoswap"),
    ATTR32_VAMOADD          (      VAMOXOR_R,       VAMOXOR_R, RVANYVA, "vamoxor" ),

    // V-extension AMO operations (Zvamo, 0.9 and later)
    ATTR32_VAMOADDEI        (    VAMOADDEI_R,       VAMOADD_R, RVANYVA, "vamoadd" ),
    ATTR32_VAMOADDEI        (    VAMOANDEI_R,       VAMOAND_R, RVANYVA, "vamoand" ),
    ATTR32_VAMOADDEI        (    VAMOMAXEI_R,       VAMOMAX_R, RVANYVA, "vamomax" ),
    ATTR32_VAMOADDEI        (   VAMOMAXUEI_R,      VAMOMAXU_R, RVANYVA, "vamomaxu"),
    ATTR32_VAMOADDEI        (    VAMOMINEI_R,       VAMOMIN_R, RVANYVA, "vamomin" ),
    ATTR32_VAMOADDEI        (   VAMOMINUEI_R,      VAMOMINU_R, RVANYVA, "vamominu"),
    ATTR32_VAMOADDEI        (     VAMOOREI_R,        VAMOOR_R, RVANYVA, "vamoor"  ),
    ATTR32_VAMOADDEI        (   VAMOSWAPEI_R,      VAMOSWAP_R, RVANYVA, "vamoswap"),
    ATTR32_VAMOADDEI        (    VAMOXOREI_R,       VAMOXOR_R, RVANYVA, "vamoxor" ),

    // V-extension IVV-type instructions
    ATTR32_VD_VS1_VS2_M_VV  (        VADD_VV,         VADD_VR, RVANYV,  "vadd"     ),
    ATTR32_VD_VS1_VS2_M_VV  (        VSUB_VV,         VSUB_VR, RVANYV,  "vsub"     ),
    ATTR32_VD_VS1_VS2_M_VV  (       VMINU_VV,        VMINU_VR, RVANYV,  "vminu"    ),
    ATTR32_VD_VS1_VS2_M_VV  (        VMIN_VV,         VMIN_VR, RVANYV,  "vmin"     ),
    ATTR32_VD_VS1_VS2_M_VV  (       VMAXU_VV,        VMAXU_VR, RVANYV,  "vmaxu"    ),
    ATTR32_VD_VS1_VS2_M_VV  (        VMAX_VV,         VMAX_VR, RVANYV,  "vmax"     ),
    ATTR32_VD_VS1_VS2_M_VV  (        VAND_VV,         VAND_VR, RVANYV,  "vand"     ),
    ATTR32_VD_VS1_VS2_M_VV  (         VOR_VV,          VOR_VR, RVANYV,  "vor"      ),
    ATTR32_VD_VS1_VS2_M_VV  (        VXOR_VV,         VXOR_VR, RVANYV,  "vxor"     ),
    ATTR32_VD_VS1_VS2_M_VV  (    VRGATHER_VV,     VRGATHER_VR, RVANYV,  "vrgather" ),
    ATTR32_VD_VS1_VS2_VVM   (        VADC_VV,         VADC_VR, RVANYV,  "vadc"     ),
    ATTR32_VD_VS1_VS2_VVM   (       VMADC_VV,        VMADC_VR, RVANYV,  "vmadc"    ),
    ATTR32_VD_VS1_VS2_VVM   (        VSBC_VV,         VSBC_VR, RVANYV,  "vsbc"     ),
    ATTR32_VD_VS1_VS2_VVM   (       VMSBC_VV,        VMSBC_VR, RVANYV,  "vmsbc"    ),
    ATTR32_VD_VS1_VS2_M_VVM (      VMERGE_VV,       VMERGE_VR, RVANYV,  "vmerge"   ),
    ATTR32_VD_vs1_VS2_M_V_V (        VMV_V_V,       VMERGE_VR, RVANYV,  "vmv"      ),
    ATTR32_VD_VS1_VS2_M_VV  (        VSEQ_VV,         VSEQ_VR, RVANYV,  "vmseq"    ),
    ATTR32_VD_VS1_VS2_M_VV  (        VSNE_VV,         VSNE_VR, RVANYV,  "vmsne"    ),
    ATTR32_VD_VS1_VS2_M_VV  (       VSLTU_VV,        VSLTU_VR, RVANYV,  "vmsltu"   ),
    ATTR32_VD_VS1_VS2_M_VV  (        VSLT_VV,         VSLT_VR, RVANYV,  "vmslt"    ),
    ATTR32_VD_VS1_VS2_M_VV  (       VSLEU_VV,        VSLEU_VR, RVANYV,  "vmsleu"   ),
    ATTR32_VD_VS1_VS2_M_VV  (        VSLE_VV,         VSLE_VR, RVANYV,  "vmsle"    ),
    ATTR32_VD_VS1_VS2_M_VV  (      VSADDU_VV,       VSADDU_VR, RVANYV,  "vsaddu"   ),
    ATTR32_VD_VS1_VS2_M_VV  (       VSADD_VV,        VSADD_VR, RVANYV,  "vsadd"    ),
    ATTR32_VD_VS1_VS2_M_VV  (      VSSUBU_VV,       VSSUBU_VR, RVANYV,  "vssubu"   ),
    ATTR32_VD_VS1_VS2_M_VV  (       VSSUB_VV,        VSSUB_VR, RVANYV,  "vssub"    ),
    ATTR32_VD_VS1_VS2_M_VV  (      VAADDU_VV,       VAADDU_VR, RVANYV,  "vaaddu"   ),
    ATTR32_VD_VS1_VS2_M_VV  (       VAADD_VV,        VAADD_VR, RVANYV,  "vaadd"    ),
    ATTR32_VD_VS1_VS2_M_VV  (        VSLL_VV,         VSLL_VR, RVANYV,  "vsll"     ),
    ATTR32_VD_VS1_VS2_M_VV  (      VASUBU_VV,       VASUBU_VR, RVANYV,  "vasubu"   ),
    ATTR32_VD_VS1_VS2_M_VV  (       VASUB_VV,        VASUB_VR, RVANYV,  "vasub"    ),
    ATTR32_VD_VS1_VS2_M_VV  (       VSMUL_VV,        VSMUL_VR, RVANYV,  "vsmul"    ),
    ATTR32_VD_VS1_VS2_M_VV  (        VSRL_VV,         VSRL_VR, RVANYV,  "vsrl"     ),
    ATTR32_VD_VS1_VS2_M_VV  (        VSRA_VV,         VSRA_VR, RVANYV,  "vsra"     ),
    ATTR32_VD_VS1_VS2_M_VV  (       VSSRL_VV,        VSSRL_VR, RVANYV,  "vssrl"    ),
    ATTR32_VD_VS1_VS2_M_VV  (       VSSRA_VV,        VSSRA_VR, RVANYV,  "vssra"    ),
    ATTR32_VD_VS1_VS2_M_VVN (       VNSRL_VV,        VNSRL_VR, RVANYV,  "vnsrl"    ),
    ATTR32_VD_VS1_VS2_M_VVN (       VNSRA_VV,        VNSRA_VR, RVANYV,  "vnsra"    ),
    ATTR32_VD_VS1_VS2_M_VVN (     VNCLIPU_VV,      VNCLIPU_VR, RVANYV,  "vnclipu"  ),
    ATTR32_VD_VS1_VS2_M_VVN (      VNCLIP_VV,       VNCLIP_VR, RVANYV,  "vnclip"   ),
    ATTR32_VD_VS1_VS2_M_VS  (   VWREDSUMU_VS,    VWREDSUMU_VS, RVANYV,  "vwredsumu"),
    ATTR32_VD_VS1_VS2_M_VS  (    VWREDSUM_VS,     VWREDSUM_VS, RVANYV,  "vwredsum" ),
    ATTR32_VD_VS1_VS2_M_VV  (       VDOTU_VV,        VDOTU_VV, RVANYV,  "vdotu"    ),
    ATTR32_VD_VS1_VS2_M_VV  (        VDOT_VV,         VDOT_VV, RVANYV,  "vdot"     ),
    ATTR32_VD_VS2_VS1_M_VV  (    VWSMACCU_VV,     VWSMACCU_VR, RVANYV,  "vwsmaccu" ),
    ATTR32_VD_VS2_VS1_M_VV  (     VWSMACC_VV,      VWSMACC_VR, RVANYV,  "vwsmacc"  ),
    ATTR32_VD_VS2_VS1_M_VV  (   VWSMACCSU_VV,    VWSMACCSU_VR, RVANYV,  "vwsmaccsu"),
    ATTR32_VD_VS2_VS1_M_VV  (     VQMACCU_VV,      VQMACCU_VR, RVANYV,  "vqmaccu"  ),
    ATTR32_VD_VS2_VS1_M_VV  (      VQMACC_VV,       VQMACC_VR, RVANYV,  "vqmacc"   ),
    ATTR32_VD_VS2_VS1_M_VV  (    VQMACCSU_VV,     VQMACCSU_VR, RVANYV,  "vqmaccsu" ),

    // V-extension FVV-type instructions
    ATTR32_VD_VS1_VS2_M_VV  (       VFADD_VV,        VFADD_VR, RVANYV,  "vfadd"          ),
    ATTR32_VD_VS1_VS2_M_VS  (    VFREDSUM_VS,     VFREDSUM_VS, RVANYV,  "vfredsum"       ),
    ATTR32_VD_VS1_VS2_M_VV  (       VFSUB_VV,        VFSUB_VR, RVANYV,  "vfsub"          ),
    ATTR32_VD_VS1_VS2_M_VS  (   VFREDOSUM_VS,    VFREDOSUM_VS, RVANYV,  "vfredosum"      ),
    ATTR32_VD_VS1_VS2_M_VV  (       VFMIN_VV,        VFMIN_VR, RVANYV,  "vfmin"          ),
    ATTR32_VD_VS1_VS2_M_VS  (    VFREDMIN_VS,     VFREDMIN_VS, RVANYV,  "vfredmin"       ),
    ATTR32_VD_VS1_VS2_M_VV  (       VFMAX_VV,        VFMAX_VR, RVANYV,  "vfmax"          ),
    ATTR32_VD_VS1_VS2_M_VS  (    VFREDMAX_VS,     VFREDMAX_VS, RVANYV,  "vfredmax"       ),
    ATTR32_VD_VS1_VS2_M_VV  (      VFSGNJ_VV,       VFSGNJ_VR, RVANYV,  "vfsgnj"         ),
    ATTR32_VD_VS1_VS2_M_VV  (     VFSGNJN_VV,      VFSGNJN_VR, RVANYV,  "vfsgnjn"        ),
    ATTR32_VD_VS1_VS2_M_VV  (     VFSGNJX_VV,      VFSGNJX_VR, RVANYV,  "vfsgnjx"        ),
    ATTR32_FD_VS1           (       VFMV_F_S,        VFMV_F_S, RVANYV,  "vfmv.f.s"       ),
    ATTR32_VD_VS1_VS2_M_VV  (        VFEQ_VV,         VFEQ_VR, RVANYV,  "vmfeq"          ),
    ATTR32_VD_VS1_VS2_M_VV  (       VFLTE_VV,         VFLE_VR, RVANYV,  "vmfle"          ),
    ATTR32_VD_VS1_VS2_M_VV  (       VFORD_VV,        VFORD_VR, RVANYV,  "vmford"         ),
    ATTR32_VD_VS1_VS2_M_VV  (        VFLT_VV,         VFLT_VR, RVANYV,  "vmflt"          ),
    ATTR32_VD_VS1_VS2_M_VV  (        VFNE_VV,         VFNE_VR, RVANYV,  "vmfne"          ),
    ATTR32_VD_VS1_VS2_M_VV  (       VFDIV_VV,        VFDIV_VR, RVANYV,  "vfdiv"          ),
    ATTR32_VD_VS1_M_V       (    VFCVT_XUF_V,     VFCVT_XUF_V, RVANYV,  "vfcvt.xu.f"     ),
    ATTR32_VD_VS1_M_V_RTZ   ( VFCVTRTZ_XUF_V,     VFCVT_XUF_V, RVANYV,  "vfcvt.rtz.xu.f" ),
    ATTR32_VD_VS1_M_V       (     VFCVT_XF_V,      VFCVT_XF_V, RVANYV,  "vfcvt.x.f"      ),
    ATTR32_VD_VS1_M_V_RTZ   (  VFCVTRTZ_XF_V,      VFCVT_XF_V, RVANYV,  "vfcvt.rtz.x.f"  ),
    ATTR32_VD_VS1_M_V       (    VFCVT_FXU_V,     VFCVT_FXU_V, RVANYV,  "vfcvt.f.xu"     ),
    ATTR32_VD_VS1_M_V       (     VFCVT_FX_V,      VFCVT_FX_V, RVANYV,  "vfcvt.f.x"      ),
    ATTR32_VD_VS1_M_V       (   VFWCVT_XUF_V,    VFWCVT_XUF_V, RVANYV,  "vfwcvt.xu.f"    ),
    ATTR32_VD_VS1_M_V_RTZ   (VFWCVTRTZ_XUF_V,    VFWCVT_XUF_V, RVANYV,  "vfwcvt.rtz.xu.f"),
    ATTR32_VD_VS1_M_V       (    VFWCVT_XF_V,     VFWCVT_XF_V, RVANYV,  "vfwcvt.x.f"     ),
    ATTR32_VD_VS1_M_V_RTZ   ( VFWCVTRTZ_XF_V,     VFWCVT_XF_V, RVANYV,  "vfwcvt.rtz.x.f" ),
    ATTR32_VD_VS1_M_V       (   VFWCVT_FXU_V,    VFWCVT_FXU_V, RVANYV,  "vfwcvt.f.xu"    ),
    ATTR32_VD_VS1_M_V       (    VFWCVT_FX_V,     VFWCVT_FX_V, RVANYV,  "vfwcvt.f.x"     ),
    ATTR32_VD_VS1_M_V       (    VFWCVT_FF_V,     VFWCVT_FF_V, RVANYV,  "vfwcvt.f.f"     ),
    ATTR32_VD_VS1_M_VN      (   VFNCVT_XUF_V,    VFNCVT_XUF_V, RVANYV,  "vfncvt.xu.f"    ),
    ATTR32_VD_VS1_M_W_RTZ   (VFNCVTRTZ_XUF_V,    VFNCVT_XUF_V, RVANYV,  "vfncvt.rtz.xu.f"),
    ATTR32_VD_VS1_M_VN      (    VFNCVT_XF_V,     VFNCVT_XF_V, RVANYV,  "vfncvt.x.f"     ),
    ATTR32_VD_VS1_M_W_RTZ   ( VFNCVTRTZ_XF_V,     VFNCVT_XF_V, RVANYV,  "vfncvt.rtz.x.f" ),
    ATTR32_VD_VS1_M_VN      (   VFNCVT_FXU_V,    VFNCVT_FXU_V, RVANYV,  "vfncvt.f.xu"    ),
    ATTR32_VD_VS1_M_VN      (    VFNCVT_FX_V,     VFNCVT_FX_V, RVANYV,  "vfncvt.f.x"     ),
    ATTR32_VD_VS1_M_VN      (    VFNCVT_FF_V,     VFNCVT_FF_V, RVANYV,  "vfncvt.f.f"     ),
    ATTR32_VD_VS1_M_W_ROD   ( VFNCVTROD_FF_V,     VFNCVT_FF_V, RVANYV,  "vfncvt.rod.f.f" ),
    ATTR32_VD_VS1_M_V       (       VFSQRT_V,        VFSQRT_V, RVANYV,  "vfsqrt"         ),
    ATTR32_VD_VS1_M_V       (    VFRSQRTE7_V,     VFRSQRTE7_V, RVANYV,  "vfrsqrte7"      ),
    ATTR32_VD_VS1_M_V       (      VFRECE7_V,       VFRECE7_V, RVANYV,  "vfrece7"        ),
    ATTR32_VD_VS1_M_V       (      VFCLASS_V,       VFCLASS_V, RVANYV,  "vfclass"        ),
    ATTR32_VD_VS1_VS2_M_VV  (       VFMUL_VV,        VFMUL_VR, RVANYV,  "vfmul"          ),
    ATTR32_VD_VS2_VS1_M_VV  (      VFMADD_VV,       VFMADD_VR, RVANYV,  "vfmadd"         ),
    ATTR32_VD_VS2_VS1_M_VV  (     VFNMADD_VV,      VFNMADD_VR, RVANYV,  "vfnmadd"        ),
    ATTR32_VD_VS2_VS1_M_VV  (      VFMSUB_VV,       VFMSUB_VR, RVANYV,  "vfmsub"         ),
    ATTR32_VD_VS2_VS1_M_VV  (     VFNMSUB_VV,      VFNMSUB_VR, RVANYV,  "vfnmsub"        ),
    ATTR32_VD_VS2_VS1_M_VV  (      VFMACC_VV,       VFMACC_VR, RVANYV,  "vfmacc"         ),
    ATTR32_VD_VS2_VS1_M_VV  (     VFNMACC_VV,      VFNMACC_VR, RVANYV,  "vfnmacc"        ),
    ATTR32_VD_VS2_VS1_M_VV  (      VFMSAC_VV,       VFMSAC_VR, RVANYV,  "vfmsac"         ),
    ATTR32_VD_VS2_VS1_M_VV  (     VFNMSAC_VV,      VFNMSAC_VR, RVANYV,  "vfnmsac"        ),
    ATTR32_VD_VS1_VS2_M_VV  (      VFWADD_VV,       VFWADD_VR, RVANYV,  "vfwadd"         ),
    ATTR32_VD_VS1_VS2_M_VS  (   VFWREDSUM_VS,    VFWREDSUM_VS, RVANYV,  "vfwredsum"      ),
    ATTR32_VD_VS1_VS2_M_VV  (      VFWSUB_VV,       VFWSUB_VR, RVANYV,  "vfwsub"         ),
    ATTR32_VD_VS1_VS2_M_VS  (  VFWREDOSUM_VS,   VFWREDOSUM_VS, RVANYV,  "vfwredosum"     ),
    ATTR32_VD_VS1_VS2_M_WV  (      VFWADD_WV,       VFWADD_WR, RVANYV,  "vfwadd"         ),
    ATTR32_VD_VS1_VS2_M_WV  (      VFWSUB_WV,       VFWSUB_WR, RVANYV,  "vfwsub"         ),
    ATTR32_VD_VS1_VS2_M_VV  (      VFWMUL_VV,       VFWMUL_VR, RVANYV,  "vfwmul"         ),
    ATTR32_VD_VS1_VS2_M_VV  (       VFDOT_VV,        VFDOT_VV, RVANYV,  "vfdot"          ),
    ATTR32_VD_VS2_VS1_M_VV  (     VFWMACC_VV,      VFWMACC_VR, RVANYV,  "vfwmacc"        ),
    ATTR32_VD_VS2_VS1_M_VV  (    VFWNMACC_VV,     VFWNMACC_VR, RVANYV,  "vfwnmacc"       ),
    ATTR32_VD_VS2_VS1_M_VV  (     VFWMSAC_VV,      VFWMSAC_VR, RVANYV,  "vfwmsac"        ),
    ATTR32_VD_VS2_VS1_M_VV  (    VFWNMSAC_VV,     VFWNMSAC_VR, RVANYV,  "vfwnmsac"       ),

    // V-extension MVV-type instructions
    ATTR32_VD_VS1_VS2_M_VV  (       VWADD_VV,        VWADD_VR, RVANYV,  "vwadd"    ),
    ATTR32_VD_VS1_VS2_M_VV  (      VWADDU_VV,       VWADDU_VR, RVANYV,  "vwaddu"   ),
    ATTR32_VD_VS1_VS2_M_VV  (       VWSUB_VV,        VWSUB_VR, RVANYV,  "vwsub"    ),
    ATTR32_VD_VS1_VS2_M_VV  (      VWSUBU_VV,       VWSUBU_VR, RVANYV,  "vwsubu"   ),
    ATTR32_VD_VS1_VS2_M_WV  (       VWADD_WV,        VWADD_WR, RVANYV,  "vwadd"    ),
    ATTR32_VD_VS1_VS2_M_WV  (      VWADDU_WV,       VWADDU_WR, RVANYV,  "vwaddu"   ),
    ATTR32_VD_VS1_VS2_M_WV  (       VWSUB_WV,        VWSUB_WR, RVANYV,  "vwsub"    ),
    ATTR32_VD_VS1_VS2_M_WV  (      VWSUBU_WV,       VWSUBU_WR, RVANYV,  "vwsubu"   ),
    ATTR32_VD_VS1_VS2_M_VV  (        VMUL_VV,         VMUL_VR, RVANYV,  "vmul"     ),
    ATTR32_VD_VS1_VS2_M_VV  (       VMULH_VV,        VMULH_VR, RVANYV,  "vmulh"    ),
    ATTR32_VD_VS1_VS2_M_VV  (      VMULHU_VV,       VMULHU_VR, RVANYV,  "vmulhu"   ),
    ATTR32_VD_VS1_VS2_M_VV  (     VMULHSU_VV,      VMULHSU_VR, RVANYV,  "vmulhsu"  ),
    ATTR32_VD_VS1_VS2_M_VV  (       VWMUL_VV,        VWMUL_VR, RVANYV,  "vwmul"    ),
    ATTR32_VD_VS1_VS2_M_VV  (      VWMULU_VV,       VWMULU_VR, RVANYV,  "vwmulu"   ),
    ATTR32_VD_VS1_VS2_M_VV  (     VWMULSU_VV,      VWMULSU_VR, RVANYV,  "vwmulsu"  ),
    ATTR32_VD_VS2_VS1_M_VV  (       VMACC_VV,        VMACC_VR, RVANYV,  "vmacc"    ),
    ATTR32_VD_VS2_VS1_M_VV  (      VNMSAC_VV,       VNMSAC_VR, RVANYV,  "vnmsac"   ),
    ATTR32_VD_VS2_VS1_M_VV  (       VMADD_VV,        VMADD_VR, RVANYV,  "vmadd"    ),
    ATTR32_VD_VS2_VS1_M_VV  (      VNMSUB_VV,       VNMSUB_VR, RVANYV,  "vnmsub"   ),
    ATTR32_VD_VS2_VS1_M_VV  (     VWMACCU_VV,      VWMACCU_VR, RVANYV,  "vwmaccu"  ),
    ATTR32_VD_VS2_VS1_M_VV  (      VWMACC_VV,       VWMACC_VR, RVANYV,  "vwmacc"   ),
    ATTR32_VD_VS2_VS1_M_VV  (    VWMACCSU_VV,     VWMACCSU_VR, RVANYV,  "vwmaccsu" ),
    ATTR32_VD_VS1_VS2_M_VV  (       VDIVU_VV,        VDIVU_VR, RVANYV,  "vdivu"    ),
    ATTR32_VD_VS1_VS2_M_VV  (        VDIV_VV,         VDIV_VR, RVANYV,  "vdiv"     ),
    ATTR32_VD_VS1_VS2_M_VV  (       VREMU_VV,        VREMU_VR, RVANYV,  "vremu"    ),
    ATTR32_VD_VS1_VS2_M_VV  (        VREM_VV,         VREM_VR, RVANYV,  "vrem"     ),
    ATTR32_VD_VS1_VS2_M_VS  (     VREDSUM_VS,      VREDSUM_VS, RVANYV,  "vredsum"  ),
    ATTR32_VD_VS1_VS2_M_VS  (     VREDAND_VS,      VREDAND_VS, RVANYV,  "vredand"  ),
    ATTR32_VD_VS1_VS2_M_VS  (      VREDOR_VS,       VREDOR_VS, RVANYV,  "vredor"   ),
    ATTR32_VD_VS1_VS2_M_VS  (     VREDXOR_VS,      VREDXOR_VS, RVANYV,  "vredxor"  ),
    ATTR32_VD_VS1_VS2_M_VS  (    VREDMINU_VS,     VREDMINU_VS, RVANYV,  "vredminu" ),
    ATTR32_VD_VS1_VS2_M_VS  (     VREDMIN_VS,      VREDMIN_VS, RVANYV,  "vredmin"  ),
    ATTR32_VD_VS1_VS2_M_VS  (    VREDMAXU_VS,     VREDMAXU_VS, RVANYV,  "vredmaxu" ),
    ATTR32_VD_VS1_VS2_M_VS  (     VREDMAX_VS,      VREDMAX_VS, RVANYV,  "vredmax"  ),
    ATTR32_VD_VS1_VS2_MM    (       VMAND_MM,        VMAND_MM, RVANYV,  "vmand"    ),
    ATTR32_VD_VS1_VS2_MM    (      VMNAND_MM,       VMNAND_MM, RVANYV,  "vmnand"   ),
    ATTR32_VD_VS1_VS2_MM    (    VMANDNOT_MM,     VMANDNOT_MM, RVANYV,  "vmandnot" ),
    ATTR32_VD_VS1_VS2_MM    (       VMXOR_MM,        VMXOR_MM, RVANYV,  "vmxor"    ),
    ATTR32_VD_VS1_VS2_MM    (        VMOR_MM,         VMOR_MM, RVANYV,  "vmor"     ),
    ATTR32_VD_VS1_VS2_MM    (       VMNOR_MM,        VMNOR_MM, RVANYV,  "vmnor"    ),
    ATTR32_VD_VS1_VS2_MM    (     VMORNOT_MM,      VMORNOT_MM, RVANYV,  "vmornot"  ),
    ATTR32_VD_VS1_VS2_MM    (      VMXNOR_MM,       VMXNOR_MM, RVANYV,  "vmxnor"   ),
    ATTR32_RD_VS1_M_M       (        VPOPC_M,         VPOPC_M, RVANYV,  "vpopc"    ),
    ATTR32_RD_VS1_M_M       (       VFIRST_M,        VFIRST_M, RVANYV,  "vfirst"   ),
    ATTR32_VD_VS1_M_M       (        VMSBF_M,         VMSBF_M, RVANYV,  "vmsbf"    ),
    ATTR32_VD_VS1_M_M       (        VMSIF_M,         VMSIF_M, RVANYV,  "vmsif"    ),
    ATTR32_VD_VS1_M_M       (        VMSOF_M,         VMSOF_M, RVANYV,  "vmsof"    ),
    ATTR32_VD_VS1_M_M       (        VIOTA_M,         VIOTA_M, RVANYV,  "viota"    ),
    ATTR32_VD_M_V           (          VID_V,           VID_V, RVANYV,  "vid"      ),
    ATTR32_RD_VS1           (        VMV_X_S,        VEXT_X_V, RVANYV,  "vmv.x.s"  ),
    ATTR32_RD_VS1_RS2_V     (       VEXT_X_V,        VEXT_X_V, RVANYV,  "vext.x"   ),
    ATTR32_VD_VS1_M_VM      (   VCOMPRESS_VM,    VCOMPRESS_VM, RVANYV,  "vcompress"),

    // V-extension IVI-type instructions
    ATTR32_VD_VS1_SI_M_VI   (        VADD_VI,         VADD_VI, RVANYV,  "vadd"      ),
    ATTR32_VD_VS1_SI_M_VI   (       VRSUB_VI,        VRSUB_VI, RVANYV,  "vrsub"     ),
    ATTR32_VD_VS1_SI_M_VI   (        VAND_VI,         VAND_VI, RVANYV,  "vand"      ),
    ATTR32_VD_VS1_SI_M_VI   (         VOR_VI,          VOR_VI, RVANYV,  "vor"       ),
    ATTR32_VD_VS1_SI_M_VI   (        VXOR_VI,         VXOR_VI, RVANYV,  "vxor"      ),
    ATTR32_VD_VS1_UI_M_VI   (    VRGATHER_VI,     VRGATHER_VI, RVANYV,  "vrgather"  ),
    ATTR32_VD_VS1_UI_M_VI   (    VSLIDEUP_VI,     VSLIDEUP_VI, RVANYV,  "vslideup"  ),
    ATTR32_VD_VS1_UI_M_VI   (  VSLIDEDOWN_VI,   VSLIDEDOWN_VI, RVANYV,  "vslidedown"),
    ATTR32_VD_VS1_SI_M0_VIM (        VADC_VI,         VADC_VI, RVANYV,  "vadc"      ),
    ATTR32_VD_VS1_SI_M0_VIM (       VMADC_VI,        VMADC_VI, RVANYV,  "vmadc"     ),
    ATTR32_VD_VS1_UI_M_VIM  (      VMERGE_VI,       VMERGE_VI, RVANYV,  "vmerge"    ),
    ATTR32_VD_VS1_SI_M      (        VMV_V_I,       VMERGE_VI, RVANYV,  "vmv.v.i"   ),
    ATTR32_VD_VS1_SI_M_VI   (        VSEQ_VI,         VSEQ_VI, RVANYV,  "vmseq"     ),
    ATTR32_VD_VS1_SI_M_VI   (        VSNE_VI,         VSNE_VI, RVANYV,  "vmsne"     ),
    ATTR32_VD_VS1_SI_M_VI   (       VSLEU_VI,        VSLEU_VI, RVANYV,  "vmsleu"    ),
    ATTR32_VD_VS1_SI_M_VI   (        VSLE_VI,         VSLE_VI, RVANYV,  "vmsle"     ),
    ATTR32_VD_VS1_SI_M_VI   (       VSGTU_VI,        VSGTU_VI, RVANYV,  "vmsgtu"    ),
    ATTR32_VD_VS1_SI_M_VI   (        VSGT_VI,         VSGT_VI, RVANYV,  "vmsgt"     ),
    ATTR32_VD_VS1_SI_M_VI   (      VSADDU_VI,       VSADDU_VI, RVANYV,  "vsaddu"    ),
    ATTR32_VD_VS1_SI_M_VI   (       VSADD_VI,        VSADD_VI, RVANYV,  "vsadd"     ),
    ATTR32_VD_VS1_SI_M_VI   (       VAADD_VI,        VAADD_VI, RVANYV,  "vaadd"     ),
    ATTR32_VD_VS1_UI_M_VI   (        VSLL_VI,         VSLL_VI, RVANYV,  "vsll"      ),
    ATTR32_VD_VS1_M_W_V     (        VMVR_VI,         VMVR_VI, RVANYV,  "vmv"       ),
    ATTR32_VD_VS1_UI_M_VI   (        VSRL_VI,         VSRL_VI, RVANYV,  "vsrl"      ),
    ATTR32_VD_VS1_UI_M_VI   (        VSRA_VI,         VSRA_VI, RVANYV,  "vsra"      ),
    ATTR32_VD_VS1_UI_M_VI   (       VSSRL_VI,        VSSRL_VI, RVANYV,  "vssrl"     ),
    ATTR32_VD_VS1_UI_M_VI   (       VSSRA_VI,        VSSRA_VI, RVANYV,  "vssra"     ),
    ATTR32_VD_VS1_UI_M_VIN  (       VNSRL_VI,        VNSRL_VI, RVANYV,  "vnsrl"     ),
    ATTR32_VD_VS1_UI_M_VIN  (       VNSRA_VI,        VNSRA_VI, RVANYV,  "vnsra"     ),
    ATTR32_VD_VS1_UI_M_VIN  (     VNCLIPU_VI,      VNCLIPU_VI, RVANYV,  "vnclipu"   ),
    ATTR32_VD_VS1_UI_M_VIN  (      VNCLIP_VI,       VNCLIP_VI, RVANYV,  "vnclip"    ),

    // V-extension IVX-type instructions
    ATTR32_VD_VS1_RS2_M_VX  (        VADD_VX,         VADD_VR, RVANYV,  "vadd"      ),
    ATTR32_VD_VS1_RS2_M_VX  (        VSUB_VX,         VSUB_VR, RVANYV,  "vsub"      ),
    ATTR32_VD_VS1_RS2_M_VX  (       VRSUB_VX,        VRSUB_VR, RVANYV,  "vrsub"     ),
    ATTR32_VD_VS1_RS2_M_VX  (       VMINU_VX,        VMINU_VR, RVANYV,  "vminu"     ),
    ATTR32_VD_VS1_RS2_M_VX  (        VMIN_VX,         VMIN_VR, RVANYV,  "vmin"      ),
    ATTR32_VD_VS1_RS2_M_VX  (       VMAXU_VX,        VMAXU_VR, RVANYV,  "vmaxu"     ),
    ATTR32_VD_VS1_RS2_M_VX  (        VMAX_VX,         VMAX_VR, RVANYV,  "vmax"      ),
    ATTR32_VD_VS1_RS2_M_VX  (        VAND_VX,         VAND_VR, RVANYV,  "vand"      ),
    ATTR32_VD_VS1_RS2_M_VX  (         VOR_VX,          VOR_VR, RVANYV,  "vor"       ),
    ATTR32_VD_VS1_RS2_M_VX  (        VXOR_VX,         VXOR_VR, RVANYV,  "vxor"      ),
    ATTR32_VD_VS1_RS2_M_VX  (    VRGATHER_VX,     VRGATHER_VR, RVANYV,  "vrgather"  ),
    ATTR32_VD_VS1_RS2_M_VX  (    VSLIDEUP_VX,     VSLIDEUP_VR, RVANYV,  "vslideup"  ),
    ATTR32_VD_VS1_RS2_M_VX  (  VSLIDEDOWN_VX,   VSLIDEDOWN_VR, RVANYV,  "vslidedown"),
    ATTR32_VD_VS1_RS2_M0_VXM(        VADC_VX,         VADC_VR, RVANYV,  "vadc"      ),
    ATTR32_VD_VS1_RS2_M0_VXM(       VMADC_VX,        VMADC_VR, RVANYV,  "vmadc"     ),
    ATTR32_VD_VS1_RS2_M0_VXM(        VSBC_VX,         VSBC_VR, RVANYV,  "vsbc"      ),
    ATTR32_VD_VS1_RS2_M0_VXM(       VMSBC_VX,        VMSBC_VR, RVANYV,  "vmsbc"     ),
    ATTR32_VD_VS1_RS2_M_VXM (      VMERGE_VX,       VMERGE_VR, RVANYV,  "vmerge"    ),
    ATTR32_VD_vs1_RS2       (        VMV_V_X,       VMERGE_VR, RVANYV,  "vmv.v.x"   ),
    ATTR32_VD_VS1_RS2_M_VX  (        VSEQ_VX,         VSEQ_VR, RVANYV,  "vmseq"     ),
    ATTR32_VD_VS1_RS2_M_VX  (        VSNE_VX,         VSNE_VR, RVANYV,  "vmsne"     ),
    ATTR32_VD_VS1_RS2_M_VX  (       VSLTU_VX,        VSLTU_VR, RVANYV,  "vmsltu"    ),
    ATTR32_VD_VS1_RS2_M_VX  (        VSLT_VX,         VSLT_VR, RVANYV,  "vmslt"     ),
    ATTR32_VD_VS1_RS2_M_VX  (       VSLEU_VX,        VSLEU_VR, RVANYV,  "vmsleu"    ),
    ATTR32_VD_VS1_RS2_M_VX  (        VSLE_VX,         VSLE_VR, RVANYV,  "vmsle"     ),
    ATTR32_VD_VS1_RS2_M_VX  (       VSGTU_VX,        VSGTU_VR, RVANYV,  "vmsgtu"    ),
    ATTR32_VD_VS1_RS2_M_VX  (        VSGT_VX,         VSGT_VR, RVANYV,  "vmsgt"     ),
    ATTR32_VD_VS1_RS2_M_VX  (      VSADDU_VX,       VSADDU_VR, RVANYV,  "vsaddu"    ),
    ATTR32_VD_VS1_RS2_M_VX  (       VSADD_VX,        VSADD_VR, RVANYV,  "vsadd"     ),
    ATTR32_VD_VS1_RS2_M_VX  (      VSSUBU_VX,       VSSUBU_VR, RVANYV,  "vssubu"    ),
    ATTR32_VD_VS1_RS2_M_VX  (       VSSUB_VX,        VSSUB_VR, RVANYV,  "vssub"     ),
    ATTR32_VD_VS1_RS2_M_VX  (      VAADDU_VX,       VAADDU_VR, RVANYV,  "vaaddu"    ),
    ATTR32_VD_VS1_RS2_M_VX  (       VAADD_VX,        VAADD_VR, RVANYV,  "vaadd"     ),
    ATTR32_VD_VS1_RS2_M_VX  (        VSLL_VX,         VSLL_VR, RVANYV,  "vsll"      ),
    ATTR32_VD_VS1_RS2_M_VX  (      VASUBU_VX,       VASUBU_VR, RVANYV,  "vasubu"    ),
    ATTR32_VD_VS1_RS2_M_VX  (       VASUB_VX,        VASUB_VR, RVANYV,  "vasub"     ),
    ATTR32_VD_VS1_RS2_M_VX  (       VSMUL_VX,        VSMUL_VR, RVANYV,  "vsmul"     ),
    ATTR32_VD_VS1_RS2_M_VX  (        VSRL_VX,         VSRL_VR, RVANYV,  "vsrl"      ),
    ATTR32_VD_VS1_RS2_M_VX  (        VSRA_VX,         VSRA_VR, RVANYV,  "vsra"      ),
    ATTR32_VD_VS1_RS2_M_VX  (       VSSRL_VX,        VSSRL_VR, RVANYV,  "vssrl"     ),
    ATTR32_VD_VS1_RS2_M_VX  (       VSSRA_VX,        VSSRA_VR, RVANYV,  "vssra"     ),
    ATTR32_VD_VS1_RS2_M_VXN (       VNSRL_VX,        VNSRL_VR, RVANYV,  "vnsrl"     ),
    ATTR32_VD_VS1_RS2_M_VXN (       VNSRA_VX,        VNSRA_VR, RVANYV,  "vnsra"     ),
    ATTR32_VD_VS1_RS2_M_VXN (     VNCLIPU_VX,      VNCLIPU_VR, RVANYV,  "vnclipu"   ),
    ATTR32_VD_VS1_RS2_M_VXN (      VNCLIP_VX,       VNCLIP_VR, RVANYV,  "vnclip"    ),
    ATTR32_VD_RS2_VS1_M_VX  (    VWSMACCU_VX,     VWSMACCU_VR, RVANYV,  "vwsmaccu"  ),
    ATTR32_VD_RS2_VS1_M_VX  (     VWSMACC_VX,      VWSMACC_VR, RVANYV,  "vwsmacc"   ),
    ATTR32_VD_RS2_VS1_M_VX  (   VWSMACCSU_VX,    VWSMACCSU_VR, RVANYV,  "vwsmaccsu" ),
    ATTR32_VD_RS2_VS1_M_VX  (   VWSMACCUS_VX,    VWSMACCUS_VR, RVANYV,  "vwsmaccus" ),
    ATTR32_VD_RS2_VS1_M_VX  (     VQMACCU_VX,      VQMACCU_VR, RVANYV,  "vqmaccu"   ),
    ATTR32_VD_RS2_VS1_M_VX  (      VQMACC_VX,       VQMACC_VR, RVANYV,  "vqmacc"    ),
    ATTR32_VD_RS2_VS1_M_VX  (    VQMACCSU_VX,     VQMACCSU_VR, RVANYV,  "vqmaccsu"  ),
    ATTR32_VD_RS2_VS1_M_VX  (    VQMACCUS_VX,     VQMACCUS_VR, RVANYV,  "vqmaccus"  ),

    // V-extension FVF-type instructions
    ATTR32_VD_VS1_FS2_M_VF  (       VFADD_VF,        VFADD_VR, RVANYV,  "vfadd"       ),
    ATTR32_VD_VS1_FS2_M_VF  (       VFSUB_VF,        VFSUB_VR, RVANYV,  "vfsub"       ),
    ATTR32_VD_VS1_FS2_M_VF  (       VFMIN_VF,        VFMIN_VR, RVANYV,  "vfmin"       ),
    ATTR32_VD_VS1_FS2_M_VF  (       VFMAX_VF,        VFMAX_VR, RVANYV,  "vfmax"       ),
    ATTR32_VD_VS1_FS2_M_VF  (      VFSGNJ_VF,       VFSGNJ_VR, RVANYV,  "vfsgnj"      ),
    ATTR32_VD_VS1_FS2_M_VF  (     VFSGNJN_VF,      VFSGNJN_VR, RVANYV,  "vfsgnjn"     ),
    ATTR32_VD_VS1_FS2_M_VF  (     VFSGNJX_VF,      VFSGNJX_VR, RVANYV,  "vfsgnjx"     ),
    ATTR32_VD_VS1_FS2_M_VF  (  VFSLIDE1UP_VF,   VFSLIDE1UP_VF, RVANYV,  "vfslide1up"  ),
    ATTR32_VD_VS1_FS2_M_VF  (VFSLIDE1DOWN_VF, VFSLIDE1DOWN_VF, RVANYV,  "vfslide1down"),
    ATTR32_VD_VS1_FS2_M_VF  (     VFSGNJX_VF,      VFSGNJX_VR, RVANYV,  "vfsgnjx"     ),
    ATTR32_VD_FS2           (       VFMV_S_F,        VFMV_S_F, RVANYV,  "vfmv.s.f"    ),
    ATTR32_VD_VS1_FS2_M_VFM (     VFMERGE_VF,      VFMERGE_VR, RVANYV,  "vfmerge"     ),
    ATTR32_VD_vs1_FS2_M     (       VFMV_V_F,      VFMERGE_VR, RVANYV,  "vfmv.v.f"    ),
    ATTR32_VD_VS1_FS2_M_VF  (        VFEQ_VF,         VFEQ_VR, RVANYV,  "vmfeq"       ),
    ATTR32_VD_VS1_FS2_M_VF  (       VFLTE_VF,         VFLE_VR, RVANYV,  "vmfle"       ),
    ATTR32_VD_VS1_FS2_M_VF  (       VFORD_VF,        VFORD_VR, RVANYV,  "vmford"      ),
    ATTR32_VD_VS1_FS2_M_VF  (        VFLT_VF,         VFLT_VR, RVANYV,  "vmflt"       ),
    ATTR32_VD_VS1_FS2_M_VF  (        VFNE_VF,         VFNE_VR, RVANYV,  "vmfne"       ),
    ATTR32_VD_VS1_FS2_M_VF  (        VFGT_VF,         VFGT_VR, RVANYV,  "vmfgt"       ),
    ATTR32_VD_VS1_FS2_M_VF  (       VFGTE_VF,         VFGE_VR, RVANYV,  "vmfge"       ),
    ATTR32_VD_VS1_FS2_M_VF  (       VFDIV_VF,        VFDIV_VR, RVANYV,  "vfdiv"       ),
    ATTR32_VD_VS1_FS2_M_VF  (      VFRDIV_VF,       VFRDIV_VR, RVANYV,  "vfrdiv"      ),
    ATTR32_VD_VS1_FS2_M_VF  (       VFMUL_VF,        VFMUL_VR, RVANYV,  "vfmul"       ),
    ATTR32_VD_VS1_FS2_M_VF  (      VFRSUB_VF,       VFRSUB_VR, RVANYV,  "vfrsub"      ),
    ATTR32_VD_FS2_VS1_M_VF  (      VFMADD_VF,       VFMADD_VR, RVANYV,  "vfmadd"      ),
    ATTR32_VD_FS2_VS1_M_VF  (     VFNMADD_VF,      VFNMADD_VR, RVANYV,  "vfnmadd"     ),
    ATTR32_VD_FS2_VS1_M_VF  (      VFMSUB_VF,       VFMSUB_VR, RVANYV,  "vfmsub"      ),
    ATTR32_VD_FS2_VS1_M_VF  (     VFNMSUB_VF,      VFNMSUB_VR, RVANYV,  "vfnmsub"     ),
    ATTR32_VD_FS2_VS1_M_VF  (      VFMACC_VF,       VFMACC_VR, RVANYV,  "vfmacc"      ),
    ATTR32_VD_FS2_VS1_M_VF  (     VFNMACC_VF,      VFNMACC_VR, RVANYV,  "vfnmacc"     ),
    ATTR32_VD_FS2_VS1_M_VF  (      VFMSAC_VF,       VFMSAC_VR, RVANYV,  "vfmsac"      ),
    ATTR32_VD_FS2_VS1_M_VF  (     VFNMSAC_VF,      VFNMSAC_VR, RVANYV,  "vfnmsac"     ),
    ATTR32_VD_VS1_FS2_M_VF  (      VFWADD_VF,       VFWADD_VR, RVANYV,  "vfwadd"      ),
    ATTR32_VD_VS1_FS2_M_VF  (      VFWSUB_VF,       VFWSUB_VR, RVANYV,  "vfwsub"      ),
    ATTR32_VD_VS1_FS2_M_WF  (      VFWADD_WF,       VFWADD_WR, RVANYV,  "vfwadd"      ),
    ATTR32_VD_VS1_FS2_M_WF  (      VFWSUB_WF,       VFWSUB_WR, RVANYV,  "vfwsub"      ),
    ATTR32_VD_VS1_FS2_M_VF  (      VFWMUL_VF,       VFWMUL_VR, RVANYV,  "vfwmul"      ),
    ATTR32_VD_FS2_VS1_M_VF  (     VFWMACC_VF,      VFWMACC_VR, RVANYV,  "vfwmacc"     ),
    ATTR32_VD_FS2_VS1_M_VF  (    VFWNMACC_VF,     VFWNMACC_VR, RVANYV,  "vfwnmacc"    ),
    ATTR32_VD_FS2_VS1_M_VF  (     VFWMSAC_VF,      VFWMSAC_VR, RVANYV,  "vfwmsac"     ),
    ATTR32_VD_FS2_VS1_M_VF  (    VFWNMSAC_VF,     VFWNMSAC_VR, RVANYV,  "vfwnmsac"    ),

    // V-extension MVX-type instructions
    ATTR32_VD_RS2           (        VMV_S_X,         VMV_S_X, RVANYV,  "vmv.s.x"    ),
    ATTR32_VD_VS1_RS2_M_VX  (   VSLIDE1UP_VX,    VSLIDE1UP_VX, RVANYV,  "vslide1up"  ),
    ATTR32_VD_VS1_RS2_M_VX  ( VSLIDE1DOWN_VX,  VSLIDE1DOWN_VX, RVANYV,  "vslide1down"),
    ATTR32_VEXT_V           (        VZEXT_V,         VZEXT_V, RVANYV,  "vzext"      ),
    ATTR32_VEXT_V           (        VSEXT_V,         VSEXT_V, RVANYV,  "vsext"      ),
    ATTR32_VD_VS1_RS2_M_VX  (       VDIVU_VX,        VDIVU_VR, RVANYV,  "vdivu"      ),
    ATTR32_VD_VS1_RS2_M_VX  (        VDIV_VX,         VDIV_VR, RVANYV,  "vdiv"       ),
    ATTR32_VD_VS1_RS2_M_VX  (       VREMU_VX,        VREMU_VR, RVANYV,  "vremu"      ),
    ATTR32_VD_VS1_RS2_M_VX  (        VREM_VX,         VREM_VR, RVANYV,  "vrem"       ),
    ATTR32_VD_VS1_RS2_M_VX  (      VMULHU_VX,       VMULHU_VR, RVANYV,  "vmulhu"     ),
    ATTR32_VD_VS1_RS2_M_VX  (        VMUL_VX,         VMUL_VR, RVANYV,  "vmul"       ),
    ATTR32_VD_VS1_RS2_M_VX  (     VMULHSU_VX,      VMULHSU_VR, RVANYV,  "vmulhsu"    ),
    ATTR32_VD_VS1_RS2_M_VX  (       VMULH_VX,        VMULH_VR, RVANYV,  "vmulh"      ),
    ATTR32_VD_RS2_VS1_M_VX  (       VMADD_VX,        VMADD_VR, RVANYV,  "vmadd"      ),
    ATTR32_VD_RS2_VS1_M_VX  (      VNMSUB_VX,       VNMSUB_VR, RVANYV,  "vnmsub"     ),
    ATTR32_VD_RS2_VS1_M_VX  (       VMACC_VX,        VMACC_VR, RVANYV,  "vmacc"      ),
    ATTR32_VD_RS2_VS1_M_VX  (      VNMSAC_VX,       VNMSAC_VR, RVANYV,  "vnmsac"     ),
    ATTR32_VD_VS1_RS2_M_VX  (      VWADDU_VX,       VWADDU_VR, RVANYV,  "vwaddu"     ),
    ATTR32_VD_VS1_RS2_M_VX  (       VWADD_VX,        VWADD_VR, RVANYV,  "vwadd"      ),
    ATTR32_VD_VS1_RS2_M_VX  (      VWSUBU_VX,       VWSUBU_VR, RVANYV,  "vwsubu"     ),
    ATTR32_VD_VS1_RS2_M_VX  (       VWSUB_VX,        VWSUB_VR, RVANYV,  "vwsub"      ),
    ATTR32_VD_VS1_RS2_M_WX  (      VWADDU_WX,       VWADDU_WR, RVANYV,  "vwaddu"     ),
    ATTR32_VD_VS1_RS2_M_WX  (       VWADD_WX,        VWADD_WR, RVANYV,  "vwadd"      ),
    ATTR32_VD_VS1_RS2_M_WX  (      VWSUBU_WX,       VWSUBU_WR, RVANYV,  "vwsubu"     ),
    ATTR32_VD_VS1_RS2_M_WX  (       VWSUB_WX,        VWSUB_WR, RVANYV,  "vwsub"      ),
    ATTR32_VD_VS1_RS2_M_VX  (      VWMULU_VX,       VWMULU_VR, RVANYV,  "vwmulu"     ),
    ATTR32_VD_VS1_RS2_M_VX  (     VWMULSU_VX,      VWMULSU_VR, RVANYV,  "vwmulsu"    ),
    ATTR32_VD_VS1_RS2_M_VX  (       VWMUL_VX,        VWMUL_VR, RVANYV,  "vwmul"      ),
    ATTR32_VD_RS2_VS1_M_VX  (     VWMACCU_VX,      VWMACCU_VR, RVANYV,  "vwmaccu"    ),
    ATTR32_VD_RS2_VS1_M_VX  (      VWMACC_VX,       VWMACC_VR, RVANYV,  "vwmacc"     ),
    ATTR32_VD_RS2_VS1_M_VX  (    VWMACCSU_VX,     VWMACCSU_VR, RVANYV,  "vwmaccsu"   ),
    ATTR32_VD_RS2_VS1_M_VX  (    VWMACCUS_VX,     VWMACCUS_VR, RVANYV,  "vwmaccus"   ),

    // dummy entry for undecoded instruction
    ATTR32_LAST             (           LAST,            LAST,          "undef")
};

//
// Insert 32-bit instruction decode table entries from the given decode table
//
static void insertEntries32(vmidDecodeTableP table, decodeEntry32CP decEntries) {

    decodeEntry32CP decEntry;

    for(decEntry=decEntries; decEntry->pattern; decEntry++) {

        riscvIType32 type  = decEntry->type;
        opAttrsCP    entry = &attrsArray32[type];

        VMI_ASSERT(entry->opcode, "invalid attribute entry (type %u)", type);

        vmidNewEntryFmtBin(
            table,
            entry->opcode,
            type,
            decEntry->pattern,
            VMID_DERIVE_PRIORITY + entry->priDelta
        );
    }
}

//
// Create the 32-bit instruction decode table
//
static vmidDecodeTableP createExtDecodeTable32(
    riscvVectVer     vect_version,
    riscvBitManipVer bitmanip_version
) {
    vmidDecodeTableP table = vmidNewDecodeTable(32, IT32_LAST);

    // insert common table entries
    insertEntries32(table, &decodeCommon32[0]);

    ////////////////////////////////////////////////////////////////////////////
    // VERSION-DEPENDENT BIT MANIPULATION EXTENSION ENTRIES
    ////////////////////////////////////////////////////////////////////////////

    // handle bitmanip-extension-dependent table entries until/after 0.90
    if(bitmanip_version<=RVBV_0_90) {
        insertEntries32(table, &decodeBitmanipUntilV090[0]);
    } else {
        insertEntries32(table, &decodeBitmanipPostV090[0]);
    }

    // handle bitmanip-extension-dependent table entries until/after 0.91
    if(bitmanip_version<=RVBV_0_91) {
        insertEntries32(table, &decodeBitmanipUntilV091[0]);
    } else {
        insertEntries32(table, &decodeBitmanipPostV091[0]);
    }

    // handle bitmanip-extension-dependent table entries for version 0.91 only
    if(bitmanip_version==RVBV_0_91) {
        insertEntries32(table, &decodeBitmanipV091[0]);
    }

    // handle bitmanip-extension-dependent table entries after version 0.92
    if(bitmanip_version>RVBV_0_92) {
        insertEntries32(table, &decodeBitmanipPostV092[0]);
    }

    ////////////////////////////////////////////////////////////////////////////
    // VERSION-DEPENDENT VECTOR EXTENSION ENTRIES
    ////////////////////////////////////////////////////////////////////////////

    // insert vector-extension-dependent table entries before/after 0.7.1
    if(vect_version>RVVV_0_7_1) {
        insertEntries32(table, &decodeVectorV08[0]);
    } else {
        insertEntries32(table, &decodeVectorV071[0]);
    }

    // insert vector-extension-dependent table entries after 0.7.1+
    if((vect_version>RVVV_0_7_1_P) && (vect_version<=RVVV_0_8)) {
        insertEntries32(table, &decodeVectorV071P[0]);
    }

    // insert vector-extension-dependent table entries before/after 20190906
    if(vect_version>RVVV_0_8_20190906) {
        insertEntries32(table, &decodePost20190906[0]);
    } else {
        insertEntries32(table, &decodePre20190906[0]);
    }

    // insert vector-extension-dependent table entries specific to release
    // 20191004 (deleted thereafter)
    if(vect_version==RVVV_0_8_20191004) {
        insertEntries32(table, &decode20191004[0]);
    }

    // insert vector-extension-dependent table entries before/after 20191004
    if(vect_version>RVVV_0_8_20191004) {
        insertEntries32(table, &decodePost20191004[0]);
    } else {
        insertEntries32(table, &decodePre20191004[0]);
    }

    // insert vector-extension-dependent table entries introduced with 20191117
    // but deleted after 0.8
    if((vect_version>=RVVV_0_8_20191117) && (vect_version<=RVVV_0_8)) {
        insertEntries32(table, &decodeLate08[0]);
    }

    // insert vector-extension-dependent table entries before/after 0.8
    if(vect_version<=RVVV_0_8) {
        insertEntries32(table, &decodePre09[0]);
    } else {
        insertEntries32(table, &decodeInitial09[0]);
    }

    // insert vector-extension-dependent table entries after 0.9
    if(vect_version>RVVV_0_9) {
        insertEntries32(table, &decodeInitial10[0]);
    }

    return table;
}

//
// Classify 32-bit instruction
//
static riscvIType32 getInstructionType32(riscvP riscv, riscvInstrInfoP info) {

    static vmidDecodeTableP decodeTables[RVVV_LAST][RVBV_LAST];

    // select decode table depending on vector instruction version
    riscvVectVer     vect_version     = riscv->configInfo.vect_version;
    riscvBitManipVer bitmanip_version = riscv->configInfo.bitmanip_version;

    // get table, if it already exists
    vmidDecodeTableP table = decodeTables[vect_version][bitmanip_version];

    // create instruction decode table if required
    if(!table) {
        table = createExtDecodeTable32(vect_version, bitmanip_version);
        decodeTables[vect_version][bitmanip_version] = table;
    }

    // decode the instruction using decode table
    return vmidDecode(table, info->instruction);
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
// Structure defining one 16-bit decode table entry
//
typedef struct decodeEntry16S {
    riscvIType16 type;      // entry type
    const char  *pattern;   // decode pattern
} decodeEntry16;

//
// Opaque type pointer to decodeEntry16
//
DEFINE_CS(decodeEntry16);

//
// Create one entry in decodeEntries32 table
//
#define DECODE16_ENTRY(_NAME, _PATTERN) { \
    type    : IT16_##_NAME, \
    pattern : _PATTERN      \
}

//
// This specifies decodes for each 16-bit opcode common for all versions
//
const static decodeEntry16 decodeCommon16[] = {

    // base R-type instructions
    DECODE16_ENTRY(      ADD_R, "|100|1|.....|.....|10|"),
    DECODE16_ENTRY(     ADDW_R, "|100111|...|01|...|01|"),
    DECODE16_ENTRY(      AND_R, "|100011|...|11|...|01|"),
    DECODE16_ENTRY(       MV_R, "|100|0|.....|.....|10|"),
    DECODE16_ENTRY(       OR_R, "|100011|...|10|...|01|"),
    DECODE16_ENTRY(      SUB_R, "|100011|...|00|...|01|"),
    DECODE16_ENTRY(     SUBW_R, "|100111|...|00|...|01|"),
    DECODE16_ENTRY(      XOR_R, "|100011|...|01|...|01|"),

    // base I-type instructions
    DECODE16_ENTRY(     ADDI_I, "|000|.|.....|.....|01|"),
    DECODE16_ENTRY( ADDI16SP_I, "|011|.|00010|.....|01|"),
    DECODE16_ENTRY( ADDI4SPN_I, "|000|........|...|00|"),
    DECODE16_ENTRY(    ADDIW_I, "|001|.|.....|.....|01|"),
    DECODE16_ENTRY(     ANDI_I, "|100|.|10...|.....|01|"),
    DECODE16_ENTRY(     SLLI_I, "|000|.|.....|.....|10|"),
    DECODE16_ENTRY(     SRAI_I, "|100|.|01...|.....|01|"),
    DECODE16_ENTRY(     SRLI_I, "|100|.|00...|.....|01|"),
    DECODE16_ENTRY(       LI_I, "|010|.|.....|.....|01|"),
    DECODE16_ENTRY(      LUI_I, "|011|.|.....|.....|01|"),
    DECODE16_ENTRY(       JR_I, "|100|0|.....|00000|10|"),
    DECODE16_ENTRY(     JALR_I, "|100|1|.....|00000|10|"),
    DECODE16_ENTRY(       LD_I, "|011|...|...|..|...|00|"),
    DECODE16_ENTRY(     LDSP_I, "|011|.|.....|.....|10|"),
    DECODE16_ENTRY(       LW_I, "|010|...|...|..|...|00|"),
    DECODE16_ENTRY(     LWSP_I, "|010|.|.....|.....|10|"),
    DECODE16_ENTRY(       SD_I, "|111|...|...|..|...|00|"),
    DECODE16_ENTRY(     SDSP_I, "|111|.|.....|.....|10|"),
    DECODE16_ENTRY(       SW_I, "|110|...|...|..|...|00|"),
    DECODE16_ENTRY(     SWSP_I, "|110|.|.....|.....|10|"),

    // miscellaneous system instructions
    DECODE16_ENTRY(   EBREAK_I, "|100|1|00000|00000|10|"),

    // base B-type instructions
    DECODE16_ENTRY(     BEQZ_B, "|110|...|...|.....|01|"),
    DECODE16_ENTRY(     BNEZ_B, "|111|...|...|.....|01|"),

    // base J-type instructions
    DECODE16_ENTRY(        J_J, "|101|...........|01|"),
    DECODE16_ENTRY(      JAL_J, "|001|...........|01|"),

    // F-extension and D-extension I-type instructions
    DECODE16_ENTRY(      FLD_I, "|001|...|...|..|...|00|"),
    DECODE16_ENTRY(    FLDSP_I, "|001|.|.....|.....|10|"),
    DECODE16_ENTRY(      FLW_I, "|011|...|...|..|...|00|"),
    DECODE16_ENTRY(    FLWSP_I, "|011|.|.....|.....|10|"),
    DECODE16_ENTRY(      FSD_I, "|101|...|...|..|...|00|"),
    DECODE16_ENTRY(    FSDSP_I, "|101|......|.....|10|"),
    DECODE16_ENTRY(      FSW_I, "|111|...|...|..|...|00|"),
    DECODE16_ENTRY(    FSWSP_I, "|111|......|.....|10|"),

    // explicitly undefined and reserved instructions
    DECODE16_ENTRY(        UD1, "|000|0|00000|00000|00|"),
    DECODE16_ENTRY(       RES1, "|000|00000000|...|00|"),
    DECODE16_ENTRY(       RES2, "|011|0|.....|00000|01|"),
    DECODE16_ENTRY(       RES3, "|100|0|00000|00000|10|"),
    DECODE16_ENTRY(       RES4, "|001|.|00000|.....|01|"),
    DECODE16_ENTRY(       RES5, "|010|.|00000|.....|10|"),
    DECODE16_ENTRY(       RES6, "|011|.|00000|.....|10|"),

    // table termination entry
    {0}
};

//
// This specifies attributes for each 16-bit opcode
//
const static opAttrs attrsArray16[] = {

    // base R-type instructions
    ATTR16_ADD      (      ADD_R,    ADD_R, RVANYC,  "add"),
    ATTR16_ADDW     (     ADDW_R,    ADD_R, RV64C,   "add"),
    ATTR16_AND      (      AND_R,    AND_R, RVANYC,  "and"),
    ATTR16_MV       (       MV_R,     MV_R, RVANYC,  "mv" ),
    ATTR16_AND      (       OR_R,     OR_R, RVANYC,  "or" ),
    ATTR16_AND      (      SUB_R,    SUB_R, RVANYC,  "sub"),
    ATTR16_ADDW     (     SUBW_R,    SUB_R, RV64C,   "sub"),
    ATTR16_AND      (      XOR_R,    XOR_R, RVANYC,  "xor"),

    // base I-type instructions
    ATTR16_ADDI     (     ADDI_I,   ADDI_I, RVANYC,  "addi"),
    ATTR16_ADDI16SP ( ADDI16SP_I,   ADDI_I, RVANYC,  "addi"),
    ATTR16_ADDI4SPN ( ADDI4SPN_I,   ADDI_I, RVANYC,  "addi"),
    ATTR16_ADDIW    (    ADDIW_I,   ADDI_I, RV64C,   "addi"),
    ATTR16_ANDI     (     ANDI_I,   ANDI_I, RVANYC,  "andi"),
    ATTR16_SLLI     (     SLLI_I,   SLLI_I, RVANYC,  "slli"),
    ATTR16_SRAI     (     SRAI_I,   SRAI_I, RVANYC,  "srai"),
    ATTR16_SRAI     (     SRLI_I,   SRLI_I, RVANYC,  "srli"),
    ATTR16_LI       (       LI_I,   ADDI_I, RVANYC,  "li"  ),
    ATTR16_LUI      (      LUI_I,   ADDI_I, RVANYC,  "lui" ),
    ATTR16_JR       (       JR_I,   JALR_I, RVANYC,  "jr"  ),
    ATTR16_JALR     (     JALR_I,   JALR_I, RVANYC,  "jalr"),
    ATTR16_LD       (       LD_I,      L_I, RV64C,   "l"   ),
    ATTR16_LDSP     (     LDSP_I,      L_I, RV64C,   "l"   ),
    ATTR16_LW       (       LW_I,      L_I, RVANYC,  "l"   ),
    ATTR16_LWSP     (     LWSP_I,      L_I, RVANYC,  "l"   ),
    ATTR16_LD       (       SD_I,      S_I, RV64C,   "s"   ),
    ATTR16_SDSP     (     SDSP_I,      S_I, RV64C,   "s"   ),
    ATTR16_LW       (       SW_I,      S_I, RVANYC,  "s"   ),
    ATTR16_SWSP     (     SWSP_I,      S_I, RVANYC,  "s"   ),

    // miscellaneous system instructions
    ATTR16_NOP      (   EBREAK_I, EBREAK_I, RVANYC,  "ebreak"),

    // base B-type instructions
    ATTR16_BEQZ     (     BEQZ_B,    BEQ_B, RVANYC,  "beqz"),
    ATTR16_BEQZ     (     BNEZ_B,    BNE_B, RVANYC,  "bnez"),

    // base J-type instructions
    ATTR16_J        (        J_J,    JAL_J, RVANYC,  "j"  ),
    ATTR16_JAL      (      JAL_J,    JAL_J, RV32C,   "jal"),

    // F-extension and D-extension I-type instructions
    ATTR16_FLD      (      FLD_I,      L_I, RVANYCD, "fl"),
    ATTR16_FLDSP    (    FLDSP_I,      L_I, RVANYCD, "fl"),
    ATTR16_FLW      (      FLW_I,      L_I, RV32CF,  "fl"),
    ATTR16_FLWSP    (    FLWSP_I,      L_I, RV32CF,  "fl"),
    ATTR16_FLD      (      FSD_I,      S_I, RVANYCD, "fs"),
    ATTR16_FSDSP    (    FSDSP_I,      S_I, RVANYCD, "fs"),
    ATTR16_FLW      (      FSW_I,      S_I, RV32CF,  "fs"),
    ATTR16_FSWSP    (    FSWSP_I,      S_I, RV32CF,  "fs"),

    // explicitly undefined and reserved instructions
    ATTR16_NOP      (        UD1,     LAST, RVANYC,  "illegal"),
    ATTR16_NOP      (       RES1,     LAST, RVANYC,  "res"    ),
    ATTR16_NOP      (       RES2,     LAST, RVANYC,  "res"    ),
    ATTR16_NOP      (       RES3,     LAST, RVANYC,  "res"    ),
    ATTR16_NOP      (       RES4,     LAST, RV64C,   "res"    ),
    ATTR16_NOP      (       RES5,     LAST, RVANYC,  "res"    ),
    ATTR16_NOP      (       RES6,     LAST, RV64C,   "res"    ),

    // dummy entry for undecoded instruction
    ATTR16_LAST     (       LAST,     LAST,          "undef")
};

//
// Insert 16-bit instruction decode table entries from the given decode table
//
static void insertEntries16(
    vmidDecodeTableP table,
    decodeEntry16CP  decEntries,
    Bool             is64BitMode
) {
    riscvArchitecture XLENarch = is64BitMode ? ISA_XLEN_64 : ISA_XLEN_32;
    decodeEntry16CP   decEntry;

    for(decEntry=decEntries; decEntry->pattern; decEntry++) {

        riscvIType16 type  = decEntry->type;
        opAttrsCP    entry = &attrsArray16[type];

        VMI_ASSERT(entry->opcode, "invalid attribute entry (type %u)", type);

        // only add entries that apply to the current XLEN (patterns are reused)
        if(entry->arch & XLENarch) {
            vmidNewEntryFmtBin(
                table,
                entry->opcode,
                type,
                decEntry->pattern,
                VMID_DERIVE_PRIORITY + entry->priDelta
            );
        }
    }
}

//
// Create the 16-bit instruction decode table
//
static vmidDecodeTableP createExtDecodeTable16(Bool is64BitMode) {

    vmidDecodeTableP table = vmidNewDecodeTable(16, IT16_LAST);

    // insert common 16-bit decode table entries
    insertEntries16(table, &decodeCommon16[0], is64BitMode);

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
        decodeTables[is64BitMode] = createExtDecodeTable16(is64BitMode);
    }

    // decode the instruction using decode table
    return vmidDecode(decodeTables[is64BitMode], info->instruction);
}


////////////////////////////////////////////////////////////////////////////////
// INSTRUCTION INTERPRETATION
////////////////////////////////////////////////////////////////////////////////

//
// Force result to be an Illegal Instruction
//
static void forceIllegalInstruction(riscvP riscv, riscvInstrInfoP info) {
    info->arch &= ~getXLenArch(riscv);
}

//
// Force register width to 32 (when XLEN is 64 only)
//
static riscvRegDesc forceWidth32(riscvInstrInfoP info) {

    info->arch     &= ~ISA_XLEN_32;
    info->explicitW = True;

    return RV_RD_32;
}

//
// Is the instruction in the custom space?
//
static Bool isCustom(Uns32 instr) {

    switch(instr&0x7f) {
        case 0x0b:      // CUSTOM0 : 0001011
        case 0x2b:      // CUSTOM1 : 0101011
        case 0x6b:      // CUSTOM2 : 1011011
        case 0x7b:      // CUSTOM3 : 1111011
            return True;
        default:
            return False;
    }
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
            result = !U_3(instr) || isCustom(instr) ? current : forceWidth32(info);
            break;
        case WX_12:
            result = U_12(instr) ? RV_RD_64 : RV_RD_32;
            // explicitly show operand types
            info->explicitType = 1;
            break;
        case WX_25:
            result = U_25(instr) ? RV_RD_64 : RV_RD_32;
            break;
        case WX_21_U_20:
            result = U_21(instr) ? RV_RD_64 : RV_RD_32;
            // include signed/unsigned indication
            result += U_20(instr) ? RV_RD_U : 0;
            // explicitly show operand types
            info->explicitType = 1;
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
// Return riscvRegDesc for the given number of bits
//
static riscvRegDesc getFWidthBits(Uns32 bits) {

    riscvRegDesc result = RV_RD_NA;

    if(bits==32) {
        result = RV_RD_32;
    } else if(bits==64) {
        result = RV_RD_64;
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
            info->explicitType = 1;
            break;
        case WF_MEM:
            result = getFWidthBits(info->memBits);
            break;
        case WF_ARCH:
            result = getFWidthBits(riscvGetFlenArch(riscv));
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
// Force result to be undefined if shift amount >= register size
//
static void validateShift(
    riscvP          riscv,
    riscvInstrInfoP info,
    Uns32           shift,
    riscvRegDesc    wX
) {
    if(shift>=getRBits(wX)) {
        forceIllegalInstruction(riscv, info);
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
        case CS_U_26_20:
            result = U_26_20(instr);
            break;
        case CS_S_19_15:
            result = S_19_15(instr);
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
    riscvRegDesc result = RV_RD_NA;
    Uns32        instr  = info->instruction;

    // after version 0.8-draft-20191004, vadc/vmadc/vsbc/vmsbc use standard
    // meaning of the mask register bit
    if((r==RS_V0) && riscvVFSupport(riscv, RVVF_ADC_SBC_MASK)) {
        r = RS_V_M_25;
    }

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
        case RS_X_19_15_S_21_20:
            result = RV_RD_X | U_19_15(instr) | (RV_RD_8<<U_21_20(instr));
            // explicitly show operand types
            info->explicitType = 2;
            break;
        case RS_X_24_20:
            result = RV_RD_X | U_24_20(instr);
            break;
        case RS_X_31_27:
            result = RV_RD_X | U_31_27(instr);
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
        case RS_V0:
            result = RV_RD_V | 0;
            break;
        case RS_V_11_7:
            result = RV_RD_V | U_11_7(instr);
            break;
        case RS_V_19_15:
            result = RV_RD_V | U_19_15(instr);
            break;
        case RS_V_24_20:
            result = RV_RD_V | U_24_20(instr);
            break;
        case RS_V_M_25:
            result = U_25(instr) ? 0 : (RV_RD_V|0);
            break;
        case RS_V_11_7_Z26:
            result = U_26(instr) ? (RV_RD_V | U_11_7(instr)) : (RV_RD_X | 0);
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
        forceIllegalInstruction(riscv, info);
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
// Return EEW encoded in the instruction
//
static Uns32 getEEW(riscvInstrInfoP info, eewSpec eew) {

    Uns32 result = 0;
    Uns32 instr  = info->instruction;

    // table mapping to vector element bits for vector versions from 0.9
    const static Uns32 mapVectorBits09[16] = {
        8, 0, 0, 0, 0, 16, 32, 64, 128, 0, 0, 0, 0, 256, 512, 1024
    };

    switch(eew) {
        case EEW_NA:
            break;
        case EEW_14_12:
            result = mapVectorBits09[U_14_12(instr)];
            break;
        case EEW_28_14_12:
            result = mapVectorBits09[(U_28(instr)<<3)+U_14_12(instr)];
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
static Uns32 getMemBits(
    riscvP          riscv,
    riscvInstrInfoP info,
    memBitsSpec     memBits
) {
    Uns32 result = 0;
    Uns32 instr  = info->instruction;

    // table mapping to vector element bits for vector versions before 0.9
    // (NOTE: -1 is SEW)
    const static Int8 mapVectorBits08[8] = {
        8, 0, 0, 0, 0, 16, 32, -1
    };

    switch(memBits) {
        case MBS_NA:
            break;
        case MBS_12:
            result = 32<<U_12(instr);
            break;
        case MBS_12_VAMO:
            if(!riscvVFSupport(riscv, RVVF_VAMO_SEW)) {
                result = 32<<U_12(instr);
            } else {
                result = U_12(instr) ? -1 : 32;
            }
            break;
        case MBS_13_12:
            result = 8<<U_13_12(instr);
            break;
        case MBS_14_12_V:
            result = mapVectorBits08[U_14_12(instr)];
            break;
        case MBS_EEW:
            result = info->eew;
            break;
        case MBS_SEW:
            result = -1;
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
        case USX_T:
            result = True;
            break;
        case USX_14:
            result = U_14(instr);
            break;
        case USX_28:
            result = !U_28(instr) && (info->memBits!=-1);
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

    riscvRMDesc result = RV_RM_CURRENT;
    Uns32       instr  = info->instruction;
    Bool        emitRM = False;

    const static riscvRMDesc map[] = {
        RV_RM_RTE, RV_RM_RTZ,  RV_RM_RDN,  RV_RM_RUP,
        RV_RM_RMM, RV_RM_BAD5, RV_RM_BAD6, RV_RM_CURRENT
    };

    switch(rm) {
        case RM_NA:
            break;
        case RM_RTZ:
            result = RV_RM_RTZ;
            break;
        case RM_ROD:
            result = RV_RM_ROD;
            break;
        case RM_14_12:
            result = map[U_14_12(instr)];
            emitRM = True;
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    info->explicitRM = !emitRM;

    return result;
}

//
// Return vector type encoded in the instruction
//
static riscvVType getVType(
    riscvP          riscv,
    riscvInstrInfoP info,
    vtypeSpec       vtype
) {
    riscvVType result = {0};
    Uns32      instr  = info->instruction;

    switch(vtype) {

        case VTYPE_NA:
            break;

        case VTYPE_30_20:
            result = composeVType(riscv, U_30_20(instr));
            break;

        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return whole-register specification encoded in the instruction
//
static riscvWholeDesc getWholeReg(riscvInstrInfoP info, wholeSpec wr) {

    riscvWholeDesc result = RV_WD_NA;
    Uns32          instr  = info->instruction;

    switch(wr) {
        case WR_NA:
            break;
        case WR_T:
            result = RV_WD_MV;
            break;
        case WR_23:
            result = U_23(instr) ? RV_WD_LD_ST : RV_WD_NA;
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return first-fault specification encoded in the instruction
//
static Bool getFirstFault(riscvInstrInfoP info, firstFaultSpec ff) {

    Bool  result = False;
    Uns32 instr  = info->instruction;

    switch(ff) {
        case FF_NA:
            break;
        case FF_24:
            result = U_24(instr);
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return NF specification encoded in the instruction
//
static Uns32 getNumFields(riscvInstrInfoP info, numFieldsSpec nf) {

    Uns32 result = 0;
    Uns32 instr  = info->instruction;

    switch(nf) {
        case NF_NA:
            break;
        case NF_31_29:
            result = U_31_29(instr);
            break;
        case NF_17_15:
            result = U_17_15(instr);
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return EEW divisor specification encoded in the instruction
//
static Uns32 getEEWDivisor(riscvInstrInfoP info, eewDivSpec eewDiv) {

    Uns32 result = 0;
    Uns32 instr  = info->instruction;

    switch(eewDiv) {
        case EEWD_NA:
            break;
        case EEWD_17_16:
            result = 1<<(4-U_17_16(instr));
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return shN prefix specification encoded in the instruction
//
static Uns32 getShN(riscvInstrInfoP info, Bool shN) {

    return shN ? U_14_13(info->instruction) : 0;
}

//
// Fix instructions that cannot be determined by decode alone
//
static void fixPseudoInstructions(riscvInstrInfoP info) {

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

        case RV_IT_GREVI_I:
            if((info->c&0x1f)==0x1f) {
                info->type = RV_IT_REV_I;
            } else if((info->c&0x1f)==0x18) {
                info->type = RV_IT_REV8_I;
            }
            break;

        case RV_IT_GORCI_I:
            if(info->c==0x07) {
                info->type = RV_IT_ORCB_I;
            } else if((info->c&0x1f)==0x10) {
                info->type = RV_IT_ORC16_I;
            }
            break;

        default:
            break;
    }
}

//
// Return VI type specification encoded in the instruction
//
static riscvVIType getVIType(
    riscvP          riscv,
    riscvInstrInfoP info,
    riscvVIType     VIType
) {
    // select type depending on vector instruction version
    Bool useVSyntax = !riscvVFSupport(riscv, RVVF_W_SYNTAX);

    switch(VIType) {
        case RV_VIT_VN:
            VIType = useVSyntax ? RV_VIT_V : RV_VIT_W;
            break;
        case RV_VIT_VVN:
            VIType = useVSyntax ? RV_VIT_VV : RV_VIT_WV;
            break;
        case RV_VIT_VIN:
            VIType = useVSyntax ? RV_VIT_VI : RV_VIT_WI;
            break;
        case RV_VIT_VXN:
            VIType = useVSyntax ? RV_VIT_VX : RV_VIT_WX;
            break;
        default:
            break;
    }

    return VIType;
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
    info->explicitType = 0;
    info->explicitW    = False;

    // some attributes are copied directly
    info->csrInOp = attrs->csrInOp;

    // get memory width encoded in instruction (prerequisite for getFWidth)
    info->eew     = getEEW(info, attrs->eew);
    info->memBits = getMemBits(riscv, info, attrs->memBits);

    // get register widths encoded in instruction
    riscvRegDesc wX = getXWidth(riscv, info, attrs->wX);
    riscvRegDesc wF = getFWidth(riscv, info, attrs->wF);

    // fill other fields from instruction
    info->unsExt    = getUnsExt(info, attrs->unsExt);
    info->csr       = getCSR(riscv, info, attrs->csr);
    info->csrUpdate = getCSRUpdate(riscv, info, attrs->csrUpdate);
    info->c         = getConstant(riscv, info, attrs->cs,   wX);
    info->r[0]      = getRegister(riscv, info, attrs->r1,   wX, wF, attrs->xQuiet);
    info->r[1]      = getRegister(riscv, info, attrs->r2,   wX, wF, attrs->xQuiet);
    info->r[2]      = getRegister(riscv, info, attrs->r3,   wX, wF, attrs->xQuiet);
    info->r[3]      = getRegister(riscv, info, attrs->r4,   wX, wF, attrs->xQuiet);
    info->mask      = getRegister(riscv, info, attrs->mask, wX, wF, attrs->xQuiet);
    info->aqrl      = getAQRL(info, attrs->aqrl);
    info->pred      = getFence(info, attrs->pred);
    info->succ      = getFence(info, attrs->succ);
    info->rm        = getRM(info, attrs->rm);
    info->vtype     = getVType(riscv, info, attrs->vtype);
    info->VIType    = getVIType(riscv, info, attrs->VIType);
    info->isWhole   = getWholeReg(info, attrs->whole);
    info->isFF      = getFirstFault(info, attrs->ff);
    info->nf        = getNumFields(info, attrs->nf);
    info->eewDiv    = getEEWDivisor(info, attrs->eewDiv);
    info->shN       = getShN(info, attrs->shN);
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
    info->instruction = riscvFetchInstruction(riscv, info->thisPC, &info->bytes);

    // decode based on instruction size
    if(info->bytes==4) {
        decode32(riscv, info);
    } else {
        decode16(riscv, info);
    }

    // fix up pseudo-instructions
    fixPseudoInstructions(info);
}

//
// Fetch instruction at address thisPC
//
Uns32 riscvFetchInstruction(riscvP riscv, riscvAddr thisPC, Uns8 *bytesP) {

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
    
    // return instruction size (irrespective of whether compressed present)
    if(bytesP) {
        *bytesP = is4ByteInstruction(result) ? 4 : 2;
    }

    return result;
}

//
// Return size of the instruction at address thisPC
//
Uns32 riscvGetInstructionSize(riscvP riscv, riscvAddr thisPC) {
    return getInstructionSize(riscv, thisPC);
}


////////////////////////////////////////////////////////////////////////////////
// EXTERNALLY-IMPLEMENTED INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Create externally-implemented instruction decode table
//
static vmidDecodeTableP createExtDecodeTable(
    riscvExtInstrAttrsCP attrs,
    Uns32                last,
    Uns32                bits
) {
    // create the table
    vmidDecodeTableP table = vmidNewDecodeTable(bits, last);
    Uns32            i;

    for(i=0; i<last; i++) {

        const char *opcode = attrs[i].opcode;
        const char *decode = attrs[i].decode;

        VMI_ASSERT(decode && opcode, "invalid attribute entry (index %u)", i);

        vmidNewEntryFmtBin(table, opcode, i, decode, 0);
    }

    return table;
}

//
// Decode externally-implemented instruction
//
static Uns32 decodeExtInstruction(
    vmidDecodeTablePP    tableP,
    riscvExtInstrInfoP   info,
    riscvExtInstrAttrsCP attrs,
    Uns32                last,
    Uns32                bits
) {
    // create instruction decode table if required
    if(!*tableP) {
        *tableP = createExtDecodeTable(attrs, last, bits);
    }

    // decode the instruction using decode table
    return vmidDecode(*tableP, info->instruction);
}

//
// Unpack instruction fields using standard pattern
//
static void unpackExtInstruction(
    riscvP               riscv,
    riscvExtInstrInfoP   instrInfo,
    riscvExtInstrPattern pattern
) {
    static const riscvIType32 map[] = {

        // GPR INSTRUCTIONS
        [RVIP_RD_RS1_RS2]        = IT32_ADD_R,
        [RVIP_RD_RS1_SI]         = IT32_ADDI_I,
        [RVIP_RD_RS1_SHIFT]      = IT32_SLLI_I,
        [RVIP_RD_RS1_RS2_RS3]    = IT32_CMIX_R4,
        [RVIP_RD_RS1_RS3_SHIFT]  = IT32_FSRI_R3I,

        // FPR INSTRUCTIONS
        [RVIP_FD_FS1_FS2]        = IT32_FMAX_R,
        [RVIP_FD_FS1_FS2_RM]     = IT32_FADD_R,
        [RVIP_FD_FS1_FS2_FS3_RM] = IT32_FMADD_R4,
        [RVIP_RD_FS1_FS2]        = IT32_FEQ_R,

        // VECTOR INSTRUCTIONS
        [RVIP_VD_VS1_VS2_M]      = IT32_VADD_VV,
        [RVIP_VD_VS1_SI_M]       = IT32_VADD_VI,
        [RVIP_VD_VS1_UI_M]       = IT32_VSLL_VI,
        [RVIP_VD_VS1_RS2_M]      = IT32_VADD_VX,
        [RVIP_VD_VS1_FS2_M]      = IT32_VFADD_VF,
        [RVIP_RD_VS1_RS2]        = IT32_VEXT_X_V,
        [RVIP_RD_VS1_M]          = IT32_VPOPC_M,
        [RVIP_VD_RS2]            = IT32_VMV_S_X,
        [RVIP_FD_VS1]            = IT32_VFMV_F_S,
        [RVIP_VD_FS2]            = IT32_VFMV_S_F,
    };

    // seed fields from the client instruction information
    riscvInstrInfo info = {
        thisPC      : instrInfo->thisPC,
        instruction : instrInfo->instruction,
        bytes       : instrInfo->bytes,
    };

    // interpret instruction fields
    interpretInstruction(riscv, &info, &attrsArray32[map[pattern]]);

    // fill result with interpreted fields
    instrInfo->arch = info.arch;
    instrInfo->r[0] = info.r[0];
    instrInfo->r[1] = info.r[1];
    instrInfo->r[2] = info.r[2];
    instrInfo->r[3] = info.r[3];
    instrInfo->mask = info.mask;
    instrInfo->rm   = info.rm;
    instrInfo->c    = info.c;
}

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
) {
    Uns32 result = last;

    // fetch instruction
    info->thisPC      = thisPC;
    info->instruction = riscvFetchInstruction(riscv, thisPC, &info->bytes);

    // decode based on instruction size
    if((info->bytes*8)==bits) {
        result = decodeExtInstruction(tableP, info, attrs, result, bits);
    }

    // unpack the instruction if it was successfully decoded
    if(result!=last) {

        riscvExtInstrAttrsCP match = &attrs[result];

        info->opcode = match->opcode;
        info->format = match->format;

        unpackExtInstruction(riscv, info, match->pattern);
    }

    return result;
}

