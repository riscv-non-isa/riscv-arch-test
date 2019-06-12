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
#define U_21_20(_I)         UBITS(2, (_I)>>20)
#define U_23_20(_I)         UBITS(4, (_I)>>20)
#define U_24(_I)            UBITS(1, (_I)>>24)
#define U_24_20(_I)         UBITS(5, (_I)>>20)
#define U_24_22(_I)         UBITS(3, (_I)>>22)
#define U_25(_I)            UBITS(1, (_I)>>25)
#define U_25_20(_I)         UBITS(6, (_I)>>20)
#define U_26(_I)            UBITS(1, (_I)>>26)
#define U_26_25(_I)         UBITS(2, (_I)>>25)
#define U_27_24(_I)         UBITS(4, (_I)>>24)
#define U_28(_I)            UBITS(1, (_I)>>28)
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
// Define the encoding of memory bit size in an instruction
//
typedef enum memBitsSpecE {
    MBS_NA,             // instruction has no memory bit size
    MBS_12,             // memory bit size in bit 12
    MBS_13_12,          // memory bit size in bits 13:12
    MBS_14_12_V,        // memory bit size in bits 14:12 (vector instructions)
    MBS_W,              // memory bit size 32 (word)
    MBS_D,              // memory bit size 64 (double)
} memBitsSpec;

//
// Define the encoding of unsigned extend boolean in an instruction
//
typedef enum unsExtSpecE {
    USX_NA,             // instruction has no extension specification
    USX_14,             // extension specification in bit 14
    USX_28,             // extension specification in bit 28
} unsExtSpec;

//
// Define the encoding of a constant in an instruction
//
typedef enum constSpecE {
    CS_NA,              // instruction has no constant
    CS_U_19_15,         // unsigned value in 19:15
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
    RM_NA,              // no rounding mode
    RM_14_12,           // rounding mode in bits 14:12
} rmSpec;

//
// Define the encoding of vector vsew specifier in an instruction
//
typedef enum vsewSpecE {
    VSEW_NA,            // no vsew
    VSEW_24_22,         // vsew in bits 24:22
} vsewSpec;

//
// Define the encoding of vector vlmul specifier in an instruction
//
typedef enum vlmulSpecE {
    VLMUL_NA,           // no vlmul
    VLMUL_21_20,        // vlmul in bits 21:20
} vlmulSpec;

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
} numFieldsSpec;

//
// Structure defining characteristics of each opcode type
//
typedef struct opAttrsS {
    const char       *opcode;           // opcode name
    const char       *pattern;          // decode pattern
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
    memBitsSpec       memBits  :  4;    // load/store size specification
    unsExtSpec        unsExt   :  4;    // unsigned extend specification
    Uns32             priDelta :  4;    // decode priority delta
    aqrlSpec          aqrl     :  1;    // acquire/release specification
    rmSpec            rm       :  1;    // rounding mode specification
    vsewSpec          vsew     :  1;    // vsew specification
    vlmulSpec         vlmul    :  1;    // vlmul specification
    firstFaultSpec    ff       :  1;    // first fault specification
    numFieldsSpec     nf       :  1;    // nf specification
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

    // V-extension R-type instructions
    IT32_VSETVL_R,

    // V-extension I-type instructions
    IT32_VSETVL_I,

    // V-extension load/store instructions (byte elements)
    IT32_VLB_I,
    IT32_VLSB_I,
    IT32_VLXB_I,
    IT32_VSB_I,
    IT32_VSSB_I,
    IT32_VSXB_I,
    IT32_VSUXB_I,

    // V-extension load/store instructions (halfword elements)
    IT32_VLH_I,
    IT32_VLSH_I,
    IT32_VLXH_I,
    IT32_VSH_I,
    IT32_VSSH_I,
    IT32_VSXH_I,
    IT32_VSUXH_I,

    // V-extension load/store instructions (word elements)
    IT32_VLW_I,
    IT32_VLSW_I,
    IT32_VLXW_I,
    IT32_VSW_I,
    IT32_VSSW_I,
    IT32_VSXW_I,
    IT32_VSUXW_I,

    // V-extension load/store instructions (SEW elements)
    IT32_VLE_I,
    IT32_VLSE_I,
    IT32_VLXE_I,
    IT32_VSE_I,
    IT32_VSSE_I,
    IT32_VSXE_I,
    IT32_VSUXE_I,

    // V-extension AMO operations (Zvamo)
    IT32_VAMOADD_R,
    IT32_VAMOAND_R,
    IT32_VAMOMAX_R,
    IT32_VAMOMAXU_R,
    IT32_VAMOMIN_R,
    IT32_VAMOMINU_R,
    IT32_VAMOOR_R,
    IT32_VAMOSWAP_R,
    IT32_VAMOXOR_R,

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
    IT32_VMERGEM_VV,
    IT32_VMERGE0_VV,
    IT32_VSEQ_VV,
    IT32_VSNE_VV,
    IT32_VSLTU_VV,
    IT32_VSLT_VV,
    IT32_VSLEU_VV,
    IT32_VSLE_VV,
    IT32_VSGTU_VV,
    IT32_VSGT_VV,
    IT32_VSADDU_VV,
    IT32_VSADD_VV,
    IT32_VSSUBU_VV,
    IT32_VSSUB_VV,
    IT32_VAADD_VV,
    IT32_VSLL_VV,
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
    IT32_VFCVT_XF_V,
    IT32_VFCVT_FXU_V,
    IT32_VFCVT_FX_V,
    IT32_VFWCVT_XUF_V,
    IT32_VFWCVT_XF_V,
    IT32_VFWCVT_FXU_V,
    IT32_VFWCVT_FX_V,
    IT32_VFWCVT_FF_V,
    IT32_VFNCVT_XUF_V,
    IT32_VFNCVT_XF_V,
    IT32_VFNCVT_FXU_V,
    IT32_VFNCVT_FX_V,
    IT32_VFNCVT_FF_V,
    IT32_VFSQRT_V,
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
    IT32_VEXT_X_V,
    IT32_VMPOPC_M,
    IT32_VMFIRST_M,
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
    IT32_VMERGEM_VI,
    IT32_VMERGE0_VI,
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
    IT32_VMERGEM_VX,
    IT32_VMERGE0_VX,
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
    IT32_VAADD_VX,
    IT32_VSLL_VX,
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
    IT32_VFMV_S_F,
    IT32_VFMERGEM_VF,
    IT32_VFMERGE0_VF,
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

    // KEEP LAST
    IT32_LAST

} riscvIType32;

//
// This specifies attributes for each 32-bit opcode
//
const static opAttrs attrsArray32[] = {

    // base R-type                                                               | funct7|  rs2|  rs1|fun|   rd| opcode|
    ATTR32_ADD       (          ADD_R,         ADD_R, RVANY,   "add",           "|0000000|.....|.....|000|.....|011.011|"),
    ATTR32_ADD       (          AND_R,         AND_R, RVANY,   "and",           "|0000000|.....|.....|111|.....|0110011|"),
    ATTR32_NEG       (          NEG_R,         SUB_R, RVANY,   "neg",           "|0100000|.....|00000|000|.....|011.011|"),
    ATTR32_ADD       (           OR_R,          OR_R, RVANY,   "or",            "|0000000|.....|.....|110|.....|0110011|"),
    ATTR32_NEG       (         SGTZ_R,         SLT_R, RVANY,   "sgtz",          "|0000000|.....|00000|010|.....|0110011|"),
    ATTR32_ADD       (          SLL_R,         SLL_R, RVANY,   "sll",           "|0000000|.....|.....|001|.....|011.011|"),
    ATTR32_ADD       (          SLT_R,         SLT_R, RVANY,   "slt",           "|0000000|.....|.....|010|.....|0110011|"),
    ATTR32_ADD       (         SLTU_R,        SLTU_R, RVANY,   "sltu",          "|0000000|.....|.....|011|.....|0110011|"),
    ATTR32_SLTZ      (         SLTZ_R,         SLT_R, RVANY,   "sltz",          "|0000000|00000|.....|010|.....|0110011|"),
    ATTR32_NEG       (         SNEZ_R,        SLTU_R, RVANY,   "snez",          "|0000000|.....|00000|011|.....|0110011|"),
    ATTR32_ADD       (          SRA_R,         SRA_R, RVANY,   "sra",           "|0100000|.....|.....|101|.....|011.011|"),
    ATTR32_ADD       (          SRL_R,         SRL_R, RVANY,   "srl",           "|0000000|.....|.....|101|.....|011.011|"),
    ATTR32_ADD       (          SUB_R,         SUB_R, RVANY,   "sub",           "|0100000|.....|.....|000|.....|011.011|"),
    ATTR32_ADD       (          XOR_R,         XOR_R, RVANY,   "xor",           "|0000000|.....|.....|100|.....|0110011|"),

    // M-extension R-type                                                        | funct7|  rs2|  rs1|fun|   rd| opcode|
    ATTR32_ADD       (          DIV_R,         DIV_R, RVANYM,  "div",           "|0000001|.....|.....|100|.....|011.011|"),
    ATTR32_ADD       (         DIVU_R,        DIVU_R, RVANYM,  "divu",          "|0000001|.....|.....|101|.....|011.011|"),
    ATTR32_ADD       (          MUL_R,         MUL_R, RVANYM,  "mul",           "|0000001|.....|.....|000|.....|011.011|"),
    ATTR32_ADD       (         MULH_R,        MULH_R, RVANYM,  "mulh",          "|0000001|.....|.....|001|.....|0110011|"),
    ATTR32_ADD       (       MULHSU_R,      MULHSU_R, RVANYM,  "mulhsu",        "|0000001|.....|.....|010|.....|0110011|"),
    ATTR32_ADD       (        MULHU_R,       MULHU_R, RVANYM,  "mulhu",         "|0000001|.....|.....|011|.....|0110011|"),
    ATTR32_ADD       (          REM_R,         REM_R, RVANYM,  "rem",           "|0000001|.....|.....|110|.....|011.011|"),
    ATTR32_ADD       (         REMU_R,        REMU_R, RVANYM,  "remu",          "|0000001|.....|.....|111|.....|011.011|"),

    // base I-type                                                               |       imm32|  rs1|fun|   rd| opcode|
    ATTR32_ADDI      (         ADDI_I,        ADDI_I, RVANY,   "addi",          "|............|.....|000|.....|001.011|"),
    ATTR32_ADDI      (         ANDI_I,        ANDI_I, RVANY,   "andi",          "|............|.....|111|.....|0010011|"),
    ATTR32_JR        (           JR_I,        JALR_I, RVANY,   "jr",            "|............|.....|000|00000|1100111|"),
    ATTR32_JR0       (          JR0_I,        JALR_I, RVANY,   "jr",            "|000000000000|.....|000|00000|1100111|"),
    ATTR32_JALR      (         JALR_I,        JALR_I, RVANY,   "jalr",          "|............|.....|000|.....|1100111|"),
    ATTR32_NOT       (        JALR0_I,        JALR_I, RVANY,   "jalr",          "|000000000000|.....|000|.....|1100111|"),
    ATTR32_NOT       (           MV_I,          MV_R, RVANY,   "mv",            "|000000000000|.....|000|.....|0010011|"),
    ATTR32_NOPI      (          NOP_I,        ADDI_I, RVANY,   "nop",           "|000000000000|00000|000|00000|0010011|"),
    ATTR32_NOT       (          NOT_I,        XORI_I, RVANY,   "not",           "|111111111111|.....|100|.....|0010011|"),
    ATTR32_ADDI      (          ORI_I,         ORI_I, RVANY,   "ori",           "|............|.....|110|.....|0010011|"),
    ATTR32_NOPI      (          RET_I,        JALR_I, RVANY,   "ret",           "|000000000000|00001|000|00000|1100111|"),
    ATTR32_NOT       (         SEQZ_I,       SLTIU_I, RVANY,   "seqz",          "|000000000001|.....|011|.....|0010011|"),
    ATTR32_NOT       (        SEXTW_I,        ADDI_I, RVANY,   "sext.",         "|000000000000|.....|000|.....|0011011|"),
    ATTR32_SLLI      (         SLLI_I,        SLLI_I, RVANY,   "slli",          "|000000......|.....|001|.....|001.011|"),
    ATTR32_ADDI      (         SLTI_I,        SLTI_I, RVANY,   "slti",          "|............|.....|010|.....|0010011|"),
    ATTR32_ADDI      (        SLTIU_I,       SLTIU_I, RVANY,   "sltiu",         "|............|.....|011|.....|0010011|"),
    ATTR32_SLLI      (         SRAI_I,        SRAI_I, RVANY,   "srai",          "|010000......|.....|101|.....|001.011|"),
    ATTR32_SLLI      (         SRLI_I,        SRLI_I, RVANY,   "srli",          "|000000......|.....|101|.....|001.011|"),
    ATTR32_ADDI      (         XORI_I,        XORI_I, RVANY,   "xori",          "|............|.....|100|.....|0010011|"),

    // base I-type instructions for load                                         |       imm32|  rs1|fun|   rd| opcode|
    ATTR32_LB        (          LB_I,            L_I, RVANY,   "l",             "|............|.....|000|.....|0000011|"),
    ATTR32_LB        (         LBU_I,            L_I, RVANY,   "l",             "|............|.....|100|.....|0000011|"),
    ATTR32_LB        (          LH_I,            L_I, RVANY,   "l",             "|............|.....|001|.....|0000011|"),
    ATTR32_LB        (         LHU_I,            L_I, RVANY,   "l",             "|............|.....|101|.....|0000011|"),
    ATTR32_LB        (          LW_I,            L_I, RVANY,   "l",             "|............|.....|010|.....|0000011|"),
    ATTR32_LB        (         LWU_I,            L_I, RV64,    "l",             "|............|.....|110|.....|0000011|"),
    ATTR32_LB        (          LD_I,            L_I, RV64,    "l",             "|............|.....|011|.....|0000011|"),

    // base S-type instructions for store                                        |  imm32|  rs2|  rs1|fun|imm32| opcode|
    ATTR32_SB        (          SB_I,            S_I, RVANY,   "s",             "|.......|.....|.....|000|.....|0100011|"),
    ATTR32_SB        (          SH_I,            S_I, RVANY,   "s",             "|.......|.....|.....|001|.....|0100011|"),
    ATTR32_SB        (          SW_I,            S_I, RVANY,   "s",             "|.......|.....|.....|010|.....|0100011|"),
    ATTR32_SB        (          SD_I,            S_I, RV64,    "s",             "|.......|.....|.....|011|.....|0100011|"),

    // base I-type instructions for CSR access (register)                        |         CSR|  rs1|fun|   rd| opcode|
    ATTR32_CSRRC     (       CSRRC_I,         CSRR_I, RVANY,   "csrrc",         "|............|.....|011|.....|1110011|"),
    ATTR32_CSRRC     (       CSRRS_I,         CSRR_I, RVANY,   "csrrs",         "|............|.....|010|.....|1110011|"),
    ATTR32_CSRRC     (       CSRRW_I,         CSRR_I, RVANY,   "csrrw",         "|............|.....|001|.....|1110011|"),
    ATTR32_CSRR      (        CSRR_I,         CSRR_I, RVANY,   "csrr",          "|............|00000|010|.....|1110011|"),
    ATTR32_CSRC      (        CSRC_I,         CSRR_I, RVANY,   "csrc",          "|............|.....|011|00000|1110011|"),
    ATTR32_CSRC      (        CSRS_I,         CSRR_I, RVANY,   "csrs",          "|............|.....|010|00000|1110011|"),
    ATTR32_CSRC      (        CSRW_I,         CSRR_I, RVANY,   "csrw",          "|............|.....|001|00000|1110011|"),
    ATTR32_RDX1      (        RDX1_I,         CSRR_I, RVANY,   "rd",            "|1100.000000.|00000|010|.....|1110011|"),
    ATTR32_RDX1      (        RDX2_I,         CSRR_I, RVANY,   "rd",            "|1100.0000010|00000|010|.....|1110011|"),

    // base I-type instructions for CSR access (constant)                        |         CSR| uimm|fun|   rd| opcode|
    ATTR32_CSRRCI    (      CSRRCI_I,        CSRRI_I, RVANY,   "csrrci",        "|............|.....|111|.....|1110011|"),
    ATTR32_CSRRCI    (      CSRRSI_I,        CSRRI_I, RVANY,   "csrrsi",        "|............|.....|110|.....|1110011|"),
    ATTR32_CSRRCI    (      CSRRWI_I,        CSRRI_I, RVANY,   "csrrwi",        "|............|.....|101|.....|1110011|"),
    ATTR32_CSRCI     (       CSRCI_I,        CSRRI_I, RVANY,   "csrci",         "|............|.....|111|00000|1110011|"),
    ATTR32_CSRCI     (       CSRSI_I,        CSRRI_I, RVANY,   "csrsi",         "|............|.....|110|00000|1110011|"),
    ATTR32_CSRCI     (       CSRWI_I,        CSRRI_I, RVANY,   "csrwi",         "|............|.....|101|00000|1110011|"),

    // miscellaneous system I-type instructions                                  |          SY|b10_0|fun|b10_0| opcode|
    ATTR32_NOP       (      EBREAK_I,       EBREAK_I, RVANY,   "ebreak",        "|000000000001|00000|000|00000|1110011|"),
    ATTR32_NOP       (       ECALL_I,        ECALL_I, RVANY,   "ecall",         "|000000000000|00000|000|00000|1110011|"),
    ATTR32_NOP       (      FENCEI_I,       FENCEI_I, RVANY,   "fence.i",       "|............|.....|001|.....|0001111|"),
    ATTR32_NOP       (        MRET_I,         MRET_I, RVANY,   "mret",          "|001100000010|00000|000|00000|1110011|"),
    ATTR32_NOP       (        SRET_I,         SRET_I, RVANY,   "sret",          "|000100000010|00000|000|00000|1110011|"),
    ATTR32_NOP       (        URET_I,         URET_I, RVANYN,  "uret",          "|000000000010|00000|000|00000|1110011|"),
    ATTR32_NOP       (         WFI_I,          WFI_I, RVANY,   "wfi",           "|000100000101|00000|000|00000|1110011|"),

    // system fence I-type instruction                                           |  fm|pred|succ|  rs1|fun|   rd| opcode|
    ATTR32_FENCE     (       FENCE_I,        FENCE_I, RVANY,   "fence",         "|....|....|....|.....|000|.....|0001111|"),

    // system fence R-type instruction                                           | funct7|  rs2|  rs1|fun|   rd| opcode|
    ATTR32_FENCE_VMA (   FENCE_VMA_R,    FENCE_VMA_R, RVANY,   "sfence.vma",    "|0001001|.....|.....|000|00000|1110011|"),

    // base U-type                                                               |               imm32|   rd| opcode|
    ATTR32_AUIPC     (       AUIPC_U,        AUIPC_U, RVANY,   "auipc",         "|....................|.....|0010111|"),
    ATTR32_AUIPC     (         LUI_U,           MV_C, RVANY,   "lui",           "|....................|.....|0110111|"),

    // base B-type                                                               |i| imm32|  rs2|  rs1|fun|imm3|i| opcode|
    ATTR32_BEQ       (         BEQ_B,          BEQ_B, RVANY,   "beq",           "|.|......|.....|.....|000|....|.|1100011|"),
    ATTR32_BEQZ      (        BEQZ_B,          BEQ_B, RVANY,   "beqz",          "|.|......|00000|.....|000|....|.|1100011|"),
    ATTR32_BEQ       (         BGE_B,          BGE_B, RVANY,   "bge",           "|.|......|.....|.....|101|....|.|1100011|"),
    ATTR32_BEQZ      (        BGEZ_B,          BGE_B, RVANY,   "bgez",          "|.|......|00000|.....|101|....|.|1100011|"),
    ATTR32_BGTZ      (        BLEZ_B,          BGE_B, RVANY,   "blez",          "|.|......|.....|00000|101|....|.|1100011|"),
    ATTR32_BEQ       (        BGEU_B,         BGEU_B, RVANY,   "bgeu",          "|.|......|.....|.....|111|....|.|1100011|"),
    ATTR32_BEQ       (         BLT_B,          BLT_B, RVANY,   "blt",           "|.|......|.....|.....|100|....|.|1100011|"),
    ATTR32_BEQZ      (        BLTZ_B,          BLT_B, RVANY,   "bltz",          "|.|......|00000|.....|100|....|.|1100011|"),
    ATTR32_BGTZ      (        BGTZ_B,          BLT_B, RVANY,   "bgtz",          "|.|......|.....|00000|100|....|.|1100011|"),
    ATTR32_BEQ       (        BLTU_B,         BLTU_B, RVANY,   "bltu",          "|.|......|.....|.....|110|....|.|1100011|"),
    ATTR32_BEQ       (         BNE_B,          BNE_B, RVANY,   "bne",           "|.|......|.....|.....|001|....|.|1100011|"),
    ATTR32_BEQZ      (        BNEZ_B,          BNE_B, RVANY,   "bnez",          "|.|......|00000|.....|001|....|.|1100011|"),

    // base J-type                                                               |i|     imm32|i|   imm32|   rd| opcode|
    ATTR32_J         (           J_J,          JAL_J, RVANY,   "j",             "|.|..........|.|........|00000|1101111|"),
    ATTR32_JAL       (         JAL_J,          JAL_J, RVANY,   "jal",           "|.|..........|.|........|.....|1101111|"),

    // A-extension R-type                                                        | funct7|  rs2|  rs1|fun|   rd| opcode|
    ATTR32_AMOADD    (      AMOADD_R,       AMOADD_R, RVANYA,  "amoadd",        "|00000..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (      AMOAND_R,       AMOAND_R, RVANYA,  "amoand",        "|01100..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (      AMOMAX_R,       AMOMAX_R, RVANYA,  "amomax",        "|10100..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (     AMOMAXU_R,      AMOMAXU_R, RVANYA,  "amomaxu",       "|11100..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (      AMOMIN_R,       AMOMIN_R, RVANYA,  "amomin",        "|10000..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (     AMOMINU_R,      AMOMINU_R, RVANYA,  "amominu",       "|11000..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (       AMOOR_R,        AMOOR_R, RVANYA,  "amoor",         "|01000..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (     AMOSWAP_R,      AMOSWAP_R, RVANYA,  "amoswap",       "|00001..|.....|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (      AMOXOR_R,       AMOXOR_R, RVANYA,  "amoxor",        "|00100..|.....|.....|01.|.....|0101111|"),
    ATTR32_LR        (          LR_R,           LR_R, RVANYA,  "lr",            "|00010..|00000|.....|01.|.....|0101111|"),
    ATTR32_AMOADD    (          SC_R,           SC_R, RVANYA,  "sc",            "|00011..|.....|.....|01.|.....|0101111|"),

    // F-extension and D-extension R-type instructions                           | funct7|  rs2|  rs1|drm|   rd| opcode|
    ATTR32_FADD      (        FADD_R,         FADD_R, RVANY,   "fadd",          "|000000.|.....|.....|...|.....|1010011|"),
    ATTR32_FCLASS    (      FCLASS_R,       FCLASS_R, RVANY,   "fclass",        "|111000.|00000|.....|001|.....|1010011|"),
    ATTR32_FCVT      (    FCVT_F_X_R,         FCVT_R, RVANY,   "fcvt",          "|110100.|000..|.....|...|.....|1010011|", F,   XWL),
    ATTR32_FCVT      (    FCVT_X_F_R,         FCVT_R, RVANY,   "fcvt",          "|110000.|000..|.....|...|.....|1010011|", XWL, F  ),
    ATTR32_FCVT      (    FCVT_D_S_R,         FCVT_R, RVANY,   "fcvt",          "|0100001|00000|.....|...|.....|1010011|", F,   S  ),
    ATTR32_FCVT      (    FCVT_S_D_R,         FCVT_R, RVANY,   "fcvt",          "|0100000|00001|.....|...|.....|1010011|", F,   D  ),
    ATTR32_FADD      (        FDIV_R,         FDIV_R, RVANY,   "fdiv",          "|000110.|.....|.....|...|.....|1010011|"),
    ATTR32_FEQ       (         FEQ_R,          FEQ_R, RVANY,   "feq",           "|101000.|.....|.....|010|.....|1010011|"),
    ATTR32_FEQ       (         FLE_R,          FLE_R, RVANY,   "fle",           "|101000.|.....|.....|000|.....|1010011|"),
    ATTR32_FEQ       (         FLT_R,          FLT_R, RVANY,   "flt",           "|101000.|.....|.....|001|.....|1010011|"),
    ATTR32_FMAX      (        FMAX_R,         FMAX_R, RVANY,   "fmax",          "|001010.|.....|.....|001|.....|1010011|"),
    ATTR32_FMAX      (        FMIN_R,         FMIN_R, RVANY,   "fmin",          "|001010.|.....|.....|000|.....|1010011|"),
    ATTR32_FADD      (        FMUL_R,         FMUL_R, RVANY,   "fmul",          "|000100.|.....|.....|...|.....|1010011|"),
    ATTR32_FMAX      (       FSGNJ_R,        FSGNJ_R, RVANY,   "fsgnj",         "|001000.|.....|.....|000|.....|1010011|"),
    ATTR32_FMAX      (      FSGNJN_R,       FSGNJN_R, RVANY,   "fsgnjn",        "|001000.|.....|.....|001|.....|1010011|"),
    ATTR32_FMAX      (      FSGNJX_R,       FSGNJX_R, RVANY,   "fsgnjx",        "|001000.|.....|.....|010|.....|1010011|"),
    ATTR32_FMVFX     (       FMVFX_R,           MV_R, RVANY,   "fmv",           "|111100.|00000|.....|000|.....|1010011|"),
    ATTR32_FMVXF     (       FMVXF_R,           MV_R, RVANY,   "fmv",           "|111000.|00000|.....|000|.....|1010011|"),
    ATTR32_FSQRT     (       FSQRT_R,        FSQRT_R, RVANY,   "fsqrt",         "|010110.|00000|.....|...|.....|1010011|"),
    ATTR32_FADD      (        FSUB_R,         FSUB_R, RVANY,   "fsub",          "|000010.|.....|.....|...|.....|1010011|"),

    // F-extension and D-extension R4-type instructions                          |  rs3|fu|  rs2|  rs1| rm|   rd| opcode|
    ATTR32_FMADD     (      FMADD_R4,       FMADD_R4, RVANY,   "fmadd",         "|.....|0.|.....|.....|...|.....|1000011|"),
    ATTR32_FMADD     (      FMSUB_R4,       FMSUB_R4, RVANY,   "fmsub",         "|.....|0.|.....|.....|...|.....|1000111|"),
    ATTR32_FMADD     (     FNMADD_R4,      FNMADD_R4, RVANY,   "fnmadd",        "|.....|0.|.....|.....|...|.....|1001111|"),
    ATTR32_FMADD     (     FNMSUB_R4,      FNMSUB_R4, RVANY,   "fnmsub",        "|.....|0.|.....|.....|...|.....|1001011|"),

    // F-extension and D-extension I-type instructions                           |       imm32|  rs1|fun|   rd| opcode|
    ATTR32_FL        (          FL_I,            L_I, RVANY,   "fl",            "|............|.....|01.|.....|0000111|"),
    ATTR32_FS        (          FS_I,            S_I, RVANY,   "fs",            "|............|.....|01.|.....|0100111|"),

    // F-extension and D-extension I-type instructions for CSR access            |         CSR|  rs1|fun|   rd| opcode|
    ATTR32_FRSR      (        FRSR_I,         CSRR_I, RVANY,   "frsr",          "|000000000011|00000|010|.....|1110011|"),
    ATTR32_FRSR      (     FRFLAGS_I,         CSRR_I, RVANY,   "frflags",       "|000000000001|00000|010|.....|1110011|"),
    ATTR32_FRSR      (        FRRM_I,         CSRR_I, RVANY,   "frrm",          "|000000000010|00000|010|.....|1110011|"),
    ATTR32_FSSR      (        FSSR_I,         CSRR_I, RVANY,   "fssr",          "|000000000011|.....|001|.....|1110011|"),
    ATTR32_FSSR      (     FSFLAGS_I,         CSRR_I, RVANY,   "fsflags",       "|000000000001|.....|001|.....|1110011|"),
    ATTR32_FSSR      (        FSRM_I,         CSRR_I, RVANY,   "fsrm",          "|000000000010|.....|001|.....|1110011|"),

    // X-extension Type, custom instructions
    ATTR32_CUSTOM    (       CUSTOM1,         CUSTOM, RVANY,   "custom1",       "|............|.....|...|.....|0001011|"),
    ATTR32_CUSTOM    (       CUSTOM2,         CUSTOM, RVANY,   "custom2",       "|............|.....|...|.....|0101011|"),
    ATTR32_CUSTOM    (       CUSTOM3,         CUSTOM, RVANY,   "custom3",       "|............|.....|...|.....|1011011|"),
    ATTR32_CUSTOM    (       CUSTOM4,         CUSTOM, RVANY,   "custom4",       "|............|.....|...|.....|1111011|"),

    // V-extension R-type                                                        | funct7|  rs2|  rs1|fun|   rd| opcode|
    ATTR32_ADD       (      VSETVL_R,       VSETVL_R, RVANYV,  "vsetvl",        "|1000000|.....|.....|111|.....|1010111|"),

    // V-extension I-type                                                        |       imm32|  rs1|fun|   rd| opcode|
    ATTR32_VSETVLI   (      VSETVL_I,       VSETVL_I, RVANYV,  "vsetvli",       "|0000000.....|.....|111|.....|1010111|"),

    // V-extension load/store instructions (byte elements)                       | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    ATTR32_VL        (         VLB_I,           VL_I, RVANYV,  "vl",            "|...|.00|.|.0000|.....|000|.....|0000111|", 1),
    ATTR32_VLS       (        VLSB_I,          VLS_I, RVANYV,  "vls",           "|...|.10|.|.....|.....|000|.....|0000111|", 1),
    ATTR32_VLX       (        VLXB_I,          VLX_I, RVANYV,  "vlx",           "|...|.11|.|.....|.....|000|.....|0000111|", 1),
    ATTR32_VL        (         VSB_I,           VS_I, RVANYV,  "vs",            "|...|000|.|00000|.....|000|.....|0100111|", 0),
    ATTR32_VLS       (        VSSB_I,          VSS_I, RVANYV,  "vss",           "|...|010|.|.....|.....|000|.....|0100111|", 0),
    ATTR32_VLX       (        VSXB_I,          VSX_I, RVANYV,  "vsx",           "|...|011|.|.....|.....|000|.....|0100111|", 0),
    ATTR32_VLX       (       VSUXB_I,          VSX_I, RVANYV,  "vsux",          "|...|111|.|.....|.....|000|.....|0100111|", 0),

    // V-extension load/store instructions (halfword elements)                   | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    ATTR32_VL        (         VLH_I,           VL_I, RVANYV,  "vl",            "|...|.00|.|.0000|.....|101|.....|0000111|", 1),
    ATTR32_VLS       (        VLSH_I,          VLS_I, RVANYV,  "vls",           "|...|.10|.|.....|.....|101|.....|0000111|", 1),
    ATTR32_VLX       (        VLXH_I,          VLX_I, RVANYV,  "vlx",           "|...|.11|.|.....|.....|101|.....|0000111|", 1),
    ATTR32_VL        (         VSH_I,           VS_I, RVANYV,  "vs",            "|...|000|.|00000|.....|101|.....|0100111|", 0),
    ATTR32_VLS       (        VSSH_I,          VSS_I, RVANYV,  "vss",           "|...|010|.|.....|.....|101|.....|0100111|", 0),
    ATTR32_VLX       (        VSXH_I,          VSX_I, RVANYV,  "vsx",           "|...|011|.|.....|.....|101|.....|0100111|", 0),
    ATTR32_VLX       (       VSUXH_I,          VSX_I, RVANYV,  "vsux",          "|...|111|.|.....|.....|101|.....|0100111|", 0),

    // V-extension load/store instructions (word elements)                       | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    ATTR32_VL        (         VLW_I,           VL_I, RVANYV,  "vl",            "|...|.00|.|.0000|.....|110|.....|0000111|", 1),
    ATTR32_VLS       (        VLSW_I,          VLS_I, RVANYV,  "vls",           "|...|.10|.|.....|.....|110|.....|0000111|", 1),
    ATTR32_VLX       (        VLXW_I,          VLX_I, RVANYV,  "vlx",           "|...|.11|.|.....|.....|110|.....|0000111|", 1),
    ATTR32_VL        (         VSW_I,           VS_I, RVANYV,  "vs",            "|...|000|.|00000|.....|110|.....|0100111|", 0),
    ATTR32_VLS       (        VSSW_I,          VSS_I, RVANYV,  "vss",           "|...|010|.|.....|.....|110|.....|0100111|", 0),
    ATTR32_VLX       (        VSXW_I,          VSX_I, RVANYV,  "vsx",           "|...|011|.|.....|.....|110|.....|0100111|", 0),
    ATTR32_VLX       (       VSUXW_I,          VSX_I, RVANYV,  "vsux",          "|...|111|.|.....|.....|110|.....|0100111|", 0),

    // V-extension load/store instructions (SEW elements)                        | nf|mop|m|  xs2|  rs1|wth|  vs3| opcode|
    ATTR32_VL        (         VLE_I,           VL_I, RVANYV,  "vl",            "|...|000|.|.0000|.....|111|.....|0000111|", 0),
    ATTR32_VLS       (        VLSE_I,          VLS_I, RVANYV,  "vls",           "|...|010|.|.....|.....|111|.....|0000111|", 0),
    ATTR32_VLX       (        VLXE_I,          VLX_I, RVANYV,  "vlx",           "|...|011|.|.....|.....|111|.....|0000111|", 0),
    ATTR32_VL        (         VSE_I,           VS_I, RVANYV,  "vs",            "|...|000|.|00000|.....|111|.....|0100111|", 0),
    ATTR32_VLS       (        VSSE_I,          VSS_I, RVANYV,  "vss",           "|...|010|.|.....|.....|111|.....|0100111|", 0),
    ATTR32_VLX       (        VSXE_I,          VSX_I, RVANYV,  "vsx",           "|...|011|.|.....|.....|111|.....|0100111|", 0),
    ATTR32_VLX       (       VSUXE_I,          VSX_I, RVANYV,  "vsux",          "|...|111|.|.....|.....|111|.....|0100111|", 0),

    // V-extension AMO operations (Zvamo)                                        | funct7|  rs2|  rs1|fun|   rd| opcode|
    ATTR32_VAMOADD   (     VAMOADD_R,      VAMOADD_R, RVANYVA, "vamoadd",       "|00000..|.....|.....|11.|.....|0101111|"),
    ATTR32_VAMOADD   (     VAMOAND_R,      VAMOAND_R, RVANYVA, "vamoand",       "|01100..|.....|.....|11.|.....|0101111|"),
    ATTR32_VAMOADD   (     VAMOMAX_R,      VAMOMAX_R, RVANYVA, "vamomax",       "|10100..|.....|.....|11.|.....|0101111|"),
    ATTR32_VAMOADD   (    VAMOMAXU_R,     VAMOMAXU_R, RVANYVA, "vamomaxu",      "|11100..|.....|.....|11.|.....|0101111|"),
    ATTR32_VAMOADD   (     VAMOMIN_R,      VAMOMIN_R, RVANYVA, "vamomin",       "|10000..|.....|.....|11.|.....|0101111|"),
    ATTR32_VAMOADD   (    VAMOMINU_R,     VAMOMINU_R, RVANYVA, "vamominu",      "|11000..|.....|.....|11.|.....|0101111|"),
    ATTR32_VAMOADD   (      VAMOOR_R,       VAMOOR_R, RVANYVA, "vamoor",        "|01000..|.....|.....|11.|.....|0101111|"),
    ATTR32_VAMOADD   (    VAMOSWAP_R,     VAMOSWAP_R, RVANYVA, "vamoswap",      "|00001..|.....|.....|11.|.....|0101111|"),
    ATTR32_VAMOADD   (     VAMOXOR_R,      VAMOXOR_R, RVANYVA, "vamoxor",       "|00100..|.....|.....|11.|.....|0101111|"),

    // V-extension IVV-type instructions                                         |funct6|m|  vs2|  vs1|IVV|  vs3| opcode|
    ATTR32_VV        (       VADD_VV,        VADD_VR, RVANYV,  "vadd",          "|000000|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VSUB_VV,        VSUB_VR, RVANYV,  "vsub",          "|000010|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VMINU_VV,       VMINU_VR, RVANYV,  "vminu",         "|000100|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VMIN_VV,        VMIN_VR, RVANYV,  "vmin",          "|000101|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VMAXU_VV,       VMAXU_VR, RVANYV,  "vmaxu",         "|000110|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VMAX_VV,        VMAX_VR, RVANYV,  "vmax",          "|000111|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VAND_VV,        VAND_VR, RVANYV,  "vand",          "|001001|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (        VOR_VV,         VOR_VR, RVANYV,  "vor",           "|001010|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VXOR_VV,        VXOR_VR, RVANYV,  "vxor",          "|001011|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (   VRGATHER_VV,    VRGATHER_VR, RVANYV,  "vrgather",      "|001100|.|.....|.....|000|.....|1010111|"),
    ATTR32_VVM_CIN   (       VADC_VV,        VADC_VR, RVANYV,  "vadc",          "|010000|1|.....|.....|000|.....|1010111|"),
    ATTR32_VVM_CIN   (      VMADC_VV,       VMADC_VR, RVANYV,  "vmadc",         "|010001|1|.....|.....|000|.....|1010111|"),
    ATTR32_VVM_CIN   (       VSBC_VV,        VSBC_VR, RVANYV,  "vsbc",          "|010010|1|.....|.....|000|.....|1010111|"),
    ATTR32_VVM_CIN   (      VMSBC_VV,       VMSBC_VR, RVANYV,  "vmsbc",         "|010011|1|.....|.....|000|.....|1010111|"),
    ATTR32_VVM       (    VMERGEM_VV,      VMERGE_VR, RVANYV,  "vmerge",        "|010111|0|.....|.....|000|.....|1010111|"),
    ATTR32_VVM       (    VMERGE0_VV,      VMERGE_VR, RVANYV,  "vmerge",        "|010111|1|00000|.....|000|.....|1010111|"),
    ATTR32_VV        (       VSEQ_VV,        VSEQ_VR, RVANYV,  "vmseq",         "|011000|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VSNE_VV,        VSNE_VR, RVANYV,  "vmsne",         "|011001|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VSLTU_VV,       VSLTU_VR, RVANYV,  "vmsltu",        "|011010|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VSLT_VV,        VSLT_VR, RVANYV,  "vmslt",         "|011011|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VSLEU_VV,       VSLEU_VR, RVANYV,  "vmsleu",        "|011100|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VSLE_VV,        VSLE_VR, RVANYV,  "vmsle",         "|011101|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VSGTU_VV,       VSGTU_VR, RVANYV,  "vmsgtu",        "|011110|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VSGT_VV,        VSGT_VR, RVANYV,  "vmsgt",         "|011111|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (     VSADDU_VV,      VSADDU_VR, RVANYV,  "vsaddu",        "|100000|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VSADD_VV,       VSADD_VR, RVANYV,  "vsadd",         "|100001|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (     VSSUBU_VV,      VSSUBU_VR, RVANYV,  "vssubu",        "|100010|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VSSUB_VV,       VSSUB_VR, RVANYV,  "vssub",         "|100011|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VAADD_VV,       VAADD_VR, RVANYV,  "vaadd",         "|100100|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VSLL_VV,        VSLL_VR, RVANYV,  "vsll",          "|100101|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VASUB_VV,       VASUB_VR, RVANYV,  "vasub",         "|100110|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VSMUL_VV,       VSMUL_VR, RVANYV,  "vsmul",         "|100111|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VSRL_VV,        VSRL_VR, RVANYV,  "vsrl",          "|101000|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VSRA_VV,        VSRA_VR, RVANYV,  "vsra",          "|101001|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VSSRL_VV,       VSSRL_VR, RVANYV,  "vssrl",         "|101010|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VSSRA_VV,       VSSRA_VR, RVANYV,  "vssra",         "|101011|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VNSRL_VV,       VNSRL_VR, RVANYV,  "vnsrl",         "|101100|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VNSRA_VV,       VNSRA_VR, RVANYV,  "vnsra",         "|101101|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (    VNCLIPU_VV,     VNCLIPU_VR, RVANYV,  "vnclipu",       "|101110|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (     VNCLIP_VV,      VNCLIP_VR, RVANYV,  "vnclip",        "|101111|.|.....|.....|000|.....|1010111|"),
    ATTR32_VS        (  VWREDSUMU_VS,   VWREDSUMU_VS, RVANYV,  "vwredsumu",     "|110000|.|.....|.....|000|.....|1010111|"),
    ATTR32_VS        (   VWREDSUM_VS,    VWREDSUM_VS, RVANYV,  "vwredsum",      "|110001|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (      VDOTU_VV,       VDOTU_VV, RVANYV,  "vdotu",         "|111000|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV        (       VDOT_VV,        VDOT_VV, RVANYV,  "vdot",          "|111001|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV3       (   VWSMACCU_VV,    VWSMACCU_VR, RVANYV,  "vwsmaccu",      "|111100|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV3       (    VWSMACC_VV,     VWSMACC_VR, RVANYV,  "vwsmacc",       "|111101|.|.....|.....|000|.....|1010111|"),
    ATTR32_VV3       (  VWSMACCSU_VV,   VWSMACCSU_VR, RVANYV,  "vwsmaccsu",     "|111110|.|.....|.....|000|.....|1010111|"),

    // V-extension FVV-type instructions                                         |funct6|m|  vs2|  vs1|FVV|  vs3| opcode|
    ATTR32_VV        (      VFADD_VV,       VFADD_VR, RVANYV,  "vfadd",         "|000000|.|.....|.....|001|.....|1010111|"),
    ATTR32_VS        (   VFREDSUM_VS,    VFREDSUM_VS, RVANYV,  "vfredsum",      "|000001|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (      VFSUB_VV,       VFSUB_VR, RVANYV,  "vfsub",         "|000010|.|.....|.....|001|.....|1010111|"),
    ATTR32_VS        (  VFREDOSUM_VS,   VFREDOSUM_VS, RVANYV,  "vfredosum",     "|000011|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (      VFMIN_VV,       VFMIN_VR, RVANYV,  "vfmin",         "|000100|.|.....|.....|001|.....|1010111|"),
    ATTR32_VS        (   VFREDMIN_VS,    VFREDMIN_VS, RVANYV,  "vfredmin",      "|000101|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (      VFMAX_VV,       VFMAX_VR, RVANYV,  "vfmax",         "|000110|.|.....|.....|001|.....|1010111|"),
    ATTR32_VS        (   VFREDMAX_VS,    VFREDMAX_VS, RVANYV,  "vfredmax",      "|000111|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (     VFSGNJ_VV,      VFSGNJ_VR, RVANYV,  "vfsgnj",        "|001000|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (    VFSGNJN_VV,     VFSGNJN_VR, RVANYV,  "vfsgnjn",       "|001001|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (    VFSGNJX_VV,     VFSGNJX_VR, RVANYV,  "vfsgnjx",       "|001010|.|.....|.....|001|.....|1010111|"),
    ATTR32_VFMV_F_S  (      VFMV_F_S,       VFMV_F_S, RVANYV,  "vfmv.f.s",      "|001100|.|.....|00000|001|.....|1010111|"),
    ATTR32_VV        (       VFEQ_VV,        VFEQ_VR, RVANYV,  "vmfeq",         "|011000|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (      VFLTE_VV,        VFLE_VR, RVANYV,  "vmfle",         "|011001|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (      VFORD_VV,       VFORD_VR, RVANYV,  "vmford",        "|011010|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (       VFLT_VV,        VFLT_VR, RVANYV,  "vmflt",         "|011011|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (       VFNE_VV,        VFNE_VR, RVANYV,  "vmfne",         "|011100|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (      VFDIV_VV,       VFDIV_VR, RVANYV,  "vfdiv",         "|100000|.|.....|.....|001|.....|1010111|"),
    ATTR32_V         (   VFCVT_XUF_V,    VFCVT_XUF_V, RVANYV,  "vfcvt.xu.f",    "|100010|.|.....|00000|001|.....|1010111|"),
    ATTR32_V         (    VFCVT_XF_V,     VFCVT_XF_V, RVANYV,  "vfcvt.x.f",     "|100010|.|.....|00001|001|.....|1010111|"),
    ATTR32_V         (   VFCVT_FXU_V,    VFCVT_FXU_V, RVANYV,  "vfcvt.f.xu",    "|100010|.|.....|00010|001|.....|1010111|"),
    ATTR32_V         (    VFCVT_FX_V,     VFCVT_FX_V, RVANYV,  "vfcvt.f.x",     "|100010|.|.....|00011|001|.....|1010111|"),
    ATTR32_V         (  VFWCVT_XUF_V,   VFWCVT_XUF_V, RVANYV,  "vfwcvt.xu.f",   "|100010|.|.....|01000|001|.....|1010111|"),
    ATTR32_V         (   VFWCVT_XF_V,    VFWCVT_XF_V, RVANYV,  "vfwcvt.x.f",    "|100010|.|.....|01001|001|.....|1010111|"),
    ATTR32_V         (  VFWCVT_FXU_V,   VFWCVT_FXU_V, RVANYV,  "vfwcvt.f.xu",   "|100010|.|.....|01010|001|.....|1010111|"),
    ATTR32_V         (   VFWCVT_FX_V,    VFWCVT_FX_V, RVANYV,  "vfwcvt.f.x",    "|100010|.|.....|01011|001|.....|1010111|"),
    ATTR32_V         (   VFWCVT_FF_V,    VFWCVT_FF_V, RVANYV,  "vfwcvt.f.f",    "|100010|.|.....|01100|001|.....|1010111|"),
    ATTR32_V         (  VFNCVT_XUF_V,   VFNCVT_XUF_V, RVANYV,  "vfncvt.xu.f",   "|100010|.|.....|10000|001|.....|1010111|"),
    ATTR32_V         (   VFNCVT_XF_V,    VFNCVT_XF_V, RVANYV,  "vfncvt.x.f",    "|100010|.|.....|10001|001|.....|1010111|"),
    ATTR32_V         (  VFNCVT_FXU_V,   VFNCVT_FXU_V, RVANYV,  "vfncvt.f.xu",   "|100010|.|.....|10010|001|.....|1010111|"),
    ATTR32_V         (   VFNCVT_FX_V,    VFNCVT_FX_V, RVANYV,  "vfncvt.f.x",    "|100010|.|.....|10011|001|.....|1010111|"),
    ATTR32_V         (   VFNCVT_FF_V,    VFNCVT_FF_V, RVANYV,  "vfncvt.f.f",    "|100010|.|.....|10100|001|.....|1010111|"),
    ATTR32_V         (      VFSQRT_V,       VFSQRT_V, RVANYV,  "vfsqrt",        "|100011|.|.....|00000|001|.....|1010111|"),
    ATTR32_V         (     VFCLASS_V,      VFCLASS_V, RVANYV,  "vfclass",       "|100011|.|.....|10000|001|.....|1010111|"),
    ATTR32_VV        (      VFMUL_VV,       VFMUL_VR, RVANYV,  "vfmul",         "|100100|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV3       (     VFMADD_VV,      VFMADD_VR, RVANYV,  "vfmadd",        "|101000|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV3       (    VFNMADD_VV,     VFNMADD_VR, RVANYV,  "vfnmadd",       "|101001|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV3       (     VFMSUB_VV,      VFMSUB_VR, RVANYV,  "vfmsub",        "|101010|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV3       (    VFNMSUB_VV,     VFNMSUB_VR, RVANYV,  "vfnmsub",       "|101011|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV3       (     VFMACC_VV,      VFMACC_VR, RVANYV,  "vfmacc",        "|101100|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV3       (    VFNMACC_VV,     VFNMACC_VR, RVANYV,  "vfnmacc",       "|101101|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV3       (     VFMSAC_VV,      VFMSAC_VR, RVANYV,  "vfmsac",        "|101110|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV3       (    VFNMSAC_VV,     VFNMSAC_VR, RVANYV,  "vfnmsac",       "|101111|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (     VFWADD_VV,      VFWADD_VR, RVANYV,  "vfwadd",        "|110000|.|.....|.....|001|.....|1010111|"),
    ATTR32_VS        (  VFWREDSUM_VS,   VFWREDSUM_VS, RVANYV,  "vfwredsum",     "|110001|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (     VFWSUB_VV,      VFWSUB_VR, RVANYV,  "vfwsub",        "|110010|.|.....|.....|001|.....|1010111|"),
    ATTR32_VS        ( VFWREDOSUM_VS,  VFWREDOSUM_VS, RVANYV,  "vfwredosum",    "|110011|.|.....|.....|001|.....|1010111|"),
    ATTR32_WV        (     VFWADD_WV,      VFWADD_WR, RVANYV,  "vfwadd",        "|110100|.|.....|.....|001|.....|1010111|"),
    ATTR32_WV        (     VFWSUB_WV,      VFWSUB_WR, RVANYV,  "vfwsub",        "|110110|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (     VFWMUL_VV,      VFWMUL_VR, RVANYV,  "vfwmul",        "|111000|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV        (      VFDOT_VV,       VFDOT_VV, RVANYV,  "vfdot",         "|111001|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV3       (    VFWMACC_VV,     VFWMACC_VR, RVANYV,  "vfwmacc",       "|111100|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV3       (   VFWNMACC_VV,    VFWNMACC_VR, RVANYV,  "vfwnmacc",      "|111101|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV3       (    VFWMSAC_VV,     VFWMSAC_VR, RVANYV,  "vfwmsac",       "|111110|.|.....|.....|001|.....|1010111|"),
    ATTR32_VV3       (   VFWNMSAC_VV,    VFWNMSAC_VR, RVANYV,  "vfwnmsac",      "|111111|.|.....|.....|001|.....|1010111|"),

    // V-extension MVV-type instructions                                         |funct6|m|  vs2|  vs1|MVV|  vs3| opcode|
    ATTR32_VV        (      VWADD_VV,       VWADD_VR, RVANYV,  "vwadd",         "|110001|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (     VWADDU_VV,      VWADDU_VR, RVANYV,  "vwaddu",        "|110000|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (      VWSUB_VV,       VWSUB_VR, RVANYV,  "vwsub",         "|110011|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (     VWSUBU_VV,      VWSUBU_VR, RVANYV,  "vwsubu",        "|110010|.|.....|.....|010|.....|1010111|"),
    ATTR32_WV        (      VWADD_WV,       VWADD_WR, RVANYV,  "vwadd",         "|110101|.|.....|.....|010|.....|1010111|"),
    ATTR32_WV        (     VWADDU_WV,      VWADDU_WR, RVANYV,  "vwaddu",        "|110100|.|.....|.....|010|.....|1010111|"),
    ATTR32_WV        (      VWSUB_WV,       VWSUB_WR, RVANYV,  "vwsub",         "|110111|.|.....|.....|010|.....|1010111|"),
    ATTR32_WV        (     VWSUBU_WV,      VWSUBU_WR, RVANYV,  "vwsubu",        "|110110|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (       VMUL_VV,        VMUL_VR, RVANYV,  "vmul",          "|100101|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (      VMULH_VV,       VMULH_VR, RVANYV,  "vmulh",         "|100111|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (     VMULHU_VV,      VMULHU_VR, RVANYV,  "vmulhu",        "|100100|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (    VMULHSU_VV,     VMULHSU_VR, RVANYV,  "vmulhsu",       "|100110|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (      VWMUL_VV,       VWMUL_VR, RVANYV,  "vwmul",         "|111011|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (     VWMULU_VV,      VWMULU_VR, RVANYV,  "vwmulu",        "|111000|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (    VWMULSU_VV,     VWMULSU_VR, RVANYV,  "vwmulsu",       "|111010|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV3       (      VMACC_VV,       VMACC_VR, RVANYV,  "vmacc",         "|101101|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV3       (     VNMSAC_VV,      VNMSAC_VR, RVANYV,  "vnmsac",        "|101111|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV3       (      VMADD_VV,       VMADD_VR, RVANYV,  "vmadd",         "|101001|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV3       (     VNMSUB_VV,      VNMSUB_VR, RVANYV,  "vnmsub",        "|101011|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV3       (    VWMACCU_VV,     VWMACCU_VR, RVANYV,  "vwmaccu",       "|111100|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV3       (     VWMACC_VV,      VWMACC_VR, RVANYV,  "vwmacc",        "|111101|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV3       (   VWMACCSU_VV,    VWMACCSU_VR, RVANYV,  "vwmaccsu",      "|111110|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (      VDIVU_VV,       VDIVU_VR, RVANYV,  "vdivu",         "|100000|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (       VDIV_VV,        VDIV_VR, RVANYV,  "vdiv",          "|100001|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (      VREMU_VV,       VREMU_VR, RVANYV,  "vremu",         "|100010|.|.....|.....|010|.....|1010111|"),
    ATTR32_VV        (       VREM_VV,        VREM_VR, RVANYV,  "vrem",          "|100011|.|.....|.....|010|.....|1010111|"),
    ATTR32_VS        (    VREDSUM_VS,     VREDSUM_VS, RVANYV,  "vredsum",       "|000000|.|.....|.....|010|.....|1010111|"),
    ATTR32_VS        (    VREDAND_VS,     VREDAND_VS, RVANYV,  "vredand",       "|000001|.|.....|.....|010|.....|1010111|"),
    ATTR32_VS        (     VREDOR_VS,      VREDOR_VS, RVANYV,  "vredor",        "|000010|.|.....|.....|010|.....|1010111|"),
    ATTR32_VS        (    VREDXOR_VS,     VREDXOR_VS, RVANYV,  "vredxor",       "|000011|.|.....|.....|010|.....|1010111|"),
    ATTR32_VS        (   VREDMINU_VS,    VREDMINU_VS, RVANYV,  "vredminu",      "|000100|.|.....|.....|010|.....|1010111|"),
    ATTR32_VS        (    VREDMIN_VS,     VREDMIN_VS, RVANYV,  "vredmin",       "|000101|.|.....|.....|010|.....|1010111|"),
    ATTR32_VS        (   VREDMAXU_VS,    VREDMAXU_VS, RVANYV,  "vredmaxu",      "|000110|.|.....|.....|010|.....|1010111|"),
    ATTR32_VS        (    VREDMAX_VS,     VREDMAX_VS, RVANYV,  "vredmax",       "|000111|.|.....|.....|010|.....|1010111|"),
    ATTR32_MM        (      VMAND_MM,       VMAND_MM, RVANYV,  "vmand",         "|011001|.|.....|.....|010|.....|1010111|"),
    ATTR32_MM        (     VMNAND_MM,      VMNAND_MM, RVANYV,  "vmnand",        "|011101|.|.....|.....|010|.....|1010111|"),
    ATTR32_MM        (   VMANDNOT_MM,    VMANDNOT_MM, RVANYV,  "vmandnot",      "|011000|.|.....|.....|010|.....|1010111|"),
    ATTR32_MM        (      VMXOR_MM,       VMXOR_MM, RVANYV,  "vmxor",         "|011011|.|.....|.....|010|.....|1010111|"),
    ATTR32_MM        (       VMOR_MM,        VMOR_MM, RVANYV,  "vmor",          "|011010|.|.....|.....|010|.....|1010111|"),
    ATTR32_MM        (      VMNOR_MM,       VMNOR_MM, RVANYV,  "vmnor",         "|011110|.|.....|.....|010|.....|1010111|"),
    ATTR32_MM        (    VMORNOT_MM,     VMORNOT_MM, RVANYV,  "vmornot",       "|011100|.|.....|.....|010|.....|1010111|"),
    ATTR32_MM        (     VMXNOR_MM,      VMXNOR_MM, RVANYV,  "vmxnor",        "|011111|.|.....|.....|010|.....|1010111|"),
    ATTR32_MX        (      VMPOPC_M,       VMPOPC_M, RVANYV,  "vmpopc",        "|010100|.|.....|00000|010|.....|1010111|"),
    ATTR32_MX        (     VMFIRST_M,      VMFIRST_M, RVANYV,  "vmfirst",       "|010101|.|.....|00000|010|.....|1010111|"),
    ATTR32_MV        (       VMSBF_M,        VMSBF_M, RVANYV,  "vmsbf",         "|010110|.|.....|00001|010|.....|1010111|"),
    ATTR32_MV        (       VMSIF_M,        VMSIF_M, RVANYV,  "vmsif",         "|010110|.|.....|00011|010|.....|1010111|"),
    ATTR32_MV        (       VMSOF_M,        VMSOF_M, RVANYV,  "vmsof",         "|010110|.|.....|00010|010|.....|1010111|"),
    ATTR32_MV        (      VIOTA_M,        VIOTA_M,  RVANYV,  "viota",         "|010110|.|.....|10000|010|.....|1010111|"),
    ATTR32_VID       (         VID_V,          VID_V, RVANYV,  "vid",           "|010110|.|00000|10001|010|.....|1010111|"),
    ATTR32_VEXT      (      VEXT_X_V,       VEXT_X_V, RVANYV,  "vext.x",        "|001100|.|.....|.....|010|.....|1010111|"),
    ATTR32_VM        (  VCOMPRESS_VM,   VCOMPRESS_VM, RVANYV,  "vcompress",     "|010111|.|.....|.....|010|.....|1010111|"),

    // V-extension IVI-type instructions                                         |funct6|m|  vs2|simm5|IVI|  vs3| opcode|
    ATTR32_VI        (       VADD_VI,        VADD_VI, RVANYV,  "vadd",          "|000000|.|.....|.....|011|.....|1010111|"),
    ATTR32_VI        (      VRSUB_VI,       VRSUB_VI, RVANYV,  "vrsub",         "|000011|.|.....|.....|011|.....|1010111|"),
    ATTR32_VI        (       VAND_VI,        VAND_VI, RVANYV,  "vand",          "|001001|.|.....|.....|011|.....|1010111|"),
    ATTR32_VI        (        VOR_VI,         VOR_VI, RVANYV,  "vor",           "|001010|.|.....|.....|011|.....|1010111|"),
    ATTR32_VI        (       VXOR_VI,        VXOR_VI, RVANYV,  "vxor",          "|001011|.|.....|.....|011|.....|1010111|"),
    ATTR32_VU        (   VRGATHER_VI,    VRGATHER_VI, RVANYV,  "vrgather",      "|001100|.|.....|.....|011|.....|1010111|"),
    ATTR32_VU        (   VSLIDEUP_VI,    VSLIDEUP_VI, RVANYV,  "vslideup",      "|001110|.|.....|.....|011|.....|1010111|"),
    ATTR32_VU        ( VSLIDEDOWN_VI,  VSLIDEDOWN_VI, RVANYV,  "vslidedown",    "|001111|.|.....|.....|011|.....|1010111|"),
    ATTR32_VIM_CIN   (       VADC_VI,        VADC_VI, RVANYV,  "vadc",          "|010000|1|.....|.....|011|.....|1010111|"),
    ATTR32_VIM_CIN   (      VMADC_VI,       VMADC_VI, RVANYV,  "vmadc",         "|010001|1|.....|.....|011|.....|1010111|"),
    ATTR32_VIM       (    VMERGEM_VI,      VMERGE_VI, RVANYV,  "vmerge",        "|010111|0|.....|.....|011|.....|1010111|"),
    ATTR32_VIM       (    VMERGE0_VI,      VMERGE_VI, RVANYV,  "vmerge",        "|010111|1|00000|.....|011|.....|1010111|"),
    ATTR32_VI        (       VSEQ_VI,        VSEQ_VI, RVANYV,  "vmseq",         "|011000|.|.....|.....|011|.....|1010111|"),
    ATTR32_VI        (       VSNE_VI,        VSNE_VI, RVANYV,  "vmsne",         "|011001|.|.....|.....|011|.....|1010111|"),
    ATTR32_VI        (      VSLEU_VI,       VSLEU_VI, RVANYV,  "vmsleu",        "|011100|.|.....|.....|011|.....|1010111|"),
    ATTR32_VI        (       VSLE_VI,        VSLE_VI, RVANYV,  "vmsle",         "|011101|.|.....|.....|011|.....|1010111|"),
    ATTR32_VI        (      VSGTU_VI,       VSGTU_VI, RVANYV,  "vmsgtu",        "|011110|.|.....|.....|011|.....|1010111|"),
    ATTR32_VI        (       VSGT_VI,        VSGT_VI, RVANYV,  "vmsgt",         "|011111|.|.....|.....|011|.....|1010111|"),
    ATTR32_VI        (     VSADDU_VI,      VSADDU_VI, RVANYV,  "vsaddu",        "|100000|.|.....|.....|011|.....|1010111|"),
    ATTR32_VI        (      VSADD_VI,       VSADD_VI, RVANYV,  "vsadd",         "|100001|.|.....|.....|011|.....|1010111|"),
    ATTR32_VI        (      VAADD_VI,       VAADD_VI, RVANYV,  "vaadd",         "|100100|.|.....|.....|011|.....|1010111|"),
    ATTR32_VU        (       VSLL_VI,        VSLL_VI, RVANYV,  "vsll",          "|100101|.|.....|.....|011|.....|1010111|"),
    ATTR32_VU        (       VSRL_VI,        VSRL_VI, RVANYV,  "vsrl",          "|101000|.|.....|.....|011|.....|1010111|"),
    ATTR32_VU        (       VSRA_VI,        VSRA_VI, RVANYV,  "vsra",          "|101001|.|.....|.....|011|.....|1010111|"),
    ATTR32_VU        (      VSSRL_VI,       VSSRL_VI, RVANYV,  "vssrl",         "|101010|.|.....|.....|011|.....|1010111|"),
    ATTR32_VU        (      VSSRA_VI,       VSSRA_VI, RVANYV,  "vssra",         "|101011|.|.....|.....|011|.....|1010111|"),
    ATTR32_VU        (      VNSRL_VI,       VNSRL_VI, RVANYV,  "vnsrl",         "|101100|.|.....|.....|011|.....|1010111|"),
    ATTR32_VU        (      VNSRA_VI,       VNSRA_VI, RVANYV,  "vnsra",         "|101101|.|.....|.....|011|.....|1010111|"),
    ATTR32_VU        (    VNCLIPU_VI,     VNCLIPU_VI, RVANYV,  "vnclipu",       "|101110|.|.....|.....|011|.....|1010111|"),
    ATTR32_VU        (     VNCLIP_VI,      VNCLIP_VI, RVANYV,  "vnclip",        "|101111|.|.....|.....|011|.....|1010111|"),

    // V-extension IVX-type instructions                                         |funct6|m|  vs2|  rs1|IVX|  vs3| opcode|
    ATTR32_VX        (       VADD_VX,        VADD_VR, RVANYV,  "vadd",          "|000000|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (       VSUB_VX,        VSUB_VR, RVANYV,  "vsub",          "|000010|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VRSUB_VX,       VRSUB_VR, RVANYV,  "vrsub",         "|000011|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VMINU_VX,       VMINU_VR, RVANYV,  "vminu",         "|000100|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (       VMIN_VX,        VMIN_VR, RVANYV,  "vmin",          "|000101|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VMAXU_VX,       VMAXU_VR, RVANYV,  "vmaxu",         "|000110|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (       VMAX_VX,        VMAX_VR, RVANYV,  "vmax",          "|000111|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (       VAND_VX,        VAND_VR, RVANYV,  "vand",          "|001001|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (        VOR_VX,         VOR_VR, RVANYV,  "vor",           "|001010|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (       VXOR_VX,        VXOR_VR, RVANYV,  "vxor",          "|001011|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (   VRGATHER_VX,    VRGATHER_VR, RVANYV,  "vrgather",      "|001100|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (   VSLIDEUP_VX,    VSLIDEUP_VR, RVANYV,  "vslideup",      "|001110|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        ( VSLIDEDOWN_VX,  VSLIDEDOWN_VR, RVANYV,  "vslidedown",    "|001111|.|.....|.....|100|.....|1010111|"),
    ATTR32_VXM_CIN   (       VADC_VX,        VADC_VR, RVANYV,  "vadc",          "|010000|1|.....|.....|100|.....|1010111|"),
    ATTR32_VXM_CIN   (      VMADC_VX,       VMADC_VR, RVANYV,  "vmadc",         "|010001|1|.....|.....|100|.....|1010111|"),
    ATTR32_VXM_CIN   (       VSBC_VX,        VSBC_VR, RVANYV,  "vsbc",          "|010010|1|.....|.....|100|.....|1010111|"),
    ATTR32_VXM_CIN   (      VMSBC_VX,       VMSBC_VR, RVANYV,  "vmsbc",         "|010011|1|.....|.....|100|.....|1010111|"),
    ATTR32_VXM       (    VMERGEM_VX,      VMERGE_VR, RVANYV,  "vmerge",        "|010111|0|.....|.....|100|.....|1010111|"),
    ATTR32_VXM       (    VMERGE0_VX,      VMERGE_VR, RVANYV,  "vmerge",        "|010111|1|00000|.....|100|.....|1010111|"),
    ATTR32_VX        (       VSEQ_VX,        VSEQ_VR, RVANYV,  "vmseq",         "|011000|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (       VSNE_VX,        VSNE_VR, RVANYV,  "vmsne",         "|011001|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VSLTU_VX,       VSLTU_VR, RVANYV,  "vmsltu",        "|011010|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (       VSLT_VX,        VSLT_VR, RVANYV,  "vmslt",         "|011011|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VSLEU_VX,       VSLEU_VR, RVANYV,  "vmsleu",        "|011100|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (       VSLE_VX,        VSLE_VR, RVANYV,  "vmsle",         "|011101|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VSGTU_VX,       VSGTU_VR, RVANYV,  "vmsgtu",        "|011110|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (       VSGT_VX,        VSGT_VR, RVANYV,  "vmsgt",         "|011111|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (     VSADDU_VX,      VSADDU_VR, RVANYV,  "vsaddu",        "|100000|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VSADD_VX,       VSADD_VR, RVANYV,  "vsadd",         "|100001|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (     VSSUBU_VX,      VSSUBU_VR, RVANYV,  "vssubu",        "|100010|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VSSUB_VX,       VSSUB_VR, RVANYV,  "vssub",         "|100011|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VAADD_VX,       VAADD_VR, RVANYV,  "vaadd",         "|100100|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (       VSLL_VX,        VSLL_VR, RVANYV,  "vsll",          "|100101|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VASUB_VX,       VASUB_VR, RVANYV,  "vasub",         "|100110|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VSMUL_VX,       VSMUL_VR, RVANYV,  "vsmul",         "|100111|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (       VSRL_VX,        VSRL_VR, RVANYV,  "vsrl",          "|101000|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (       VSRA_VX,        VSRA_VR, RVANYV,  "vsra",          "|101001|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VSSRL_VX,       VSSRL_VR, RVANYV,  "vssrl",         "|101010|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VSSRA_VX,       VSSRA_VR, RVANYV,  "vssra",         "|101011|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VNSRL_VX,       VNSRL_VR, RVANYV,  "vnsrl",         "|101100|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (      VNSRA_VX,       VNSRA_VR, RVANYV,  "vnsra",         "|101101|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (    VNCLIPU_VX,     VNCLIPU_VR, RVANYV,  "vnclipu",       "|101110|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX        (     VNCLIP_VX,      VNCLIP_VR, RVANYV,  "vnclip",        "|101111|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX3       (   VWSMACCU_VX,    VWSMACCU_VR, RVANYV,  "vwsmaccu",      "|111100|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX3       (    VWSMACC_VX,     VWSMACC_VR, RVANYV,  "vwsmacc",       "|111101|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX3       (  VWSMACCSU_VX,   VWSMACCSU_VR, RVANYV,  "vwsmaccsu",     "|111110|.|.....|.....|100|.....|1010111|"),
    ATTR32_VX3       (  VWSMACCUS_VX,   VWSMACCUS_VR, RVANYV,  "vwsmaccus",     "|111111|.|.....|.....|100|.....|1010111|"),

    // V-extension FVF-type instructions                                         |funct6|m|  vs2|  fs1|FVF|  vs3| opcode|
    ATTR32_VF        (      VFADD_VF,       VFADD_VR, RVANYV,  "vfadd",         "|000000|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (      VFSUB_VF,       VFSUB_VR, RVANYV,  "vfsub",         "|000010|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (      VFMIN_VF,       VFMIN_VR, RVANYV,  "vfmin",         "|000100|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (      VFMAX_VF,       VFMAX_VR, RVANYV,  "vfmax",         "|000110|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (     VFSGNJ_VF,      VFSGNJ_VR, RVANYV,  "vfsgnj",        "|001000|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (    VFSGNJN_VF,     VFSGNJN_VR, RVANYV,  "vfsgnjn",       "|001001|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (    VFSGNJX_VF,     VFSGNJX_VR, RVANYV,  "vfsgnjx",       "|001010|.|.....|.....|101|.....|1010111|"),
    ATTR32_VFMV_S_F  (      VFMV_S_F,       VFMV_S_F, RVANYV,  "vfmv.s.f",      "|001101|.|00000|.....|101|.....|1010111|"),
    ATTR32_VFM       (   VFMERGEM_VF,      VMERGE_VR, RVANYV,  "vfmerge",       "|010111|0|.....|.....|101|.....|1010111|"),
    ATTR32_VFM       (   VFMERGE0_VF,      VMERGE_VR, RVANYV,  "vfmerge",       "|010111|1|00000|.....|101|.....|1010111|"),
    ATTR32_VF        (       VFEQ_VF,        VFEQ_VR, RVANYV,  "vmfeq",         "|011000|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (      VFLTE_VF,        VFLE_VR, RVANYV,  "vmfle",         "|011001|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (      VFORD_VF,       VFORD_VR, RVANYV,  "vmford",        "|011010|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (       VFLT_VF,        VFLT_VR, RVANYV,  "vmflt",         "|011011|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (       VFNE_VF,        VFNE_VR, RVANYV,  "vmfne",         "|011100|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (       VFGT_VF,        VFGT_VR, RVANYV,  "vmfgt",         "|011101|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (      VFGTE_VF,        VFGE_VR, RVANYV,  "vmfge",         "|011111|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (      VFDIV_VF,       VFDIV_VR, RVANYV,  "vfdiv",         "|100000|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (     VFRDIV_VF,      VFRDIV_VR, RVANYV,  "vfrdiv",        "|100001|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (      VFMUL_VF,       VFMUL_VR, RVANYV,  "vfmul",         "|100100|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (     VFRSUB_VF,      VFRSUB_VR, RVANYV,  "vfrsub",        "|100111|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF3       (     VFMADD_VF,      VFMADD_VR, RVANYV,  "vfmadd",        "|101000|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF3       (    VFNMADD_VF,     VFNMADD_VR, RVANYV,  "vfnmadd",       "|101001|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF3       (     VFMSUB_VF,      VFMSUB_VR, RVANYV,  "vfmsub",        "|101010|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF3       (    VFNMSUB_VF,     VFNMSUB_VR, RVANYV,  "vfnmsub",       "|101011|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF3       (     VFMACC_VF,      VFMACC_VR, RVANYV,  "vfmacc",        "|101100|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF3       (    VFNMACC_VF,     VFNMACC_VR, RVANYV,  "vfnmacc",       "|101101|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF3       (     VFMSAC_VF,      VFMSAC_VR, RVANYV,  "vfmsac",        "|101110|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF3       (    VFNMSAC_VF,     VFNMSAC_VR, RVANYV,  "vfnmsac",       "|101111|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (     VFWADD_VF,      VFWADD_VR, RVANYV,  "vfwadd",        "|110000|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (     VFWSUB_VF,      VFWSUB_VR, RVANYV,  "vfwsub",        "|110010|.|.....|.....|101|.....|1010111|"),
    ATTR32_WF        (     VFWADD_WF,      VFWADD_WR, RVANYV,  "vfwadd",        "|110100|.|.....|.....|101|.....|1010111|"),
    ATTR32_WF        (     VFWSUB_WF,      VFWSUB_WR, RVANYV,  "vfwsub",        "|110110|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF        (     VFWMUL_VF,      VFWMUL_VR, RVANYV,  "vfwmul",        "|111000|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF3       (    VFWMACC_VF,     VFWMACC_VR, RVANYV,  "vfwmacc",       "|111100|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF3       (   VFWNMACC_VF,    VFWNMACC_VR, RVANYV,  "vfwnmacc",      "|111101|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF3       (    VFWMSAC_VF,     VFWMSAC_VR, RVANYV,  "vfwmsac",       "|111110|.|.....|.....|101|.....|1010111|"),
    ATTR32_VF3       (   VFWNMSAC_VF,    VFWNMSAC_VR, RVANYV,  "vfwnmsac",      "|111111|.|.....|.....|101|.....|1010111|"),

    // V-extension MVX-type instructions                                         |funct6|m|  vs2|  vs1|MVX|  vs3| opcode|
    ATTR32_VMV_S_X   (       VMV_S_X,        VMV_S_X, RVANYV,  "vmv.s.x",       "|001101|.|00000|.....|110|.....|1010111|"),
    ATTR32_VX        (  VSLIDE1UP_VX,   VSLIDE1UP_VX, RVANYV,  "vslide1up",     "|001110|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (VSLIDE1DOWN_VX, VSLIDE1DOWN_VX, RVANYV,  "vslide1down",   "|001111|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (      VDIVU_VX,       VDIVU_VR, RVANYV,  "vdivu",         "|100000|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (       VDIV_VX,        VDIV_VR, RVANYV,  "vdiv",          "|100001|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (      VREMU_VX,       VREMU_VR, RVANYV,  "vremu",         "|100010|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (       VREM_VX,        VREM_VR, RVANYV,  "vrem",          "|100011|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (     VMULHU_VX,      VMULHU_VR, RVANYV,  "vmulhu",        "|100100|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (       VMUL_VX,        VMUL_VR, RVANYV,  "vmul",          "|100101|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (    VMULHSU_VX,     VMULHSU_VR, RVANYV,  "vmulhsu",       "|100110|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (      VMULH_VX,       VMULH_VR, RVANYV,  "vmulh",         "|100111|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX3       (      VMADD_VX,       VMADD_VR, RVANYV,  "vmadd",         "|101001|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX3       (     VNMSUB_VX,      VNMSUB_VR, RVANYV,  "vnmsub",        "|101011|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX3       (      VMACC_VX,       VMACC_VR, RVANYV,  "vmacc",         "|101101|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX3       (     VNMSAC_VX,      VNMSAC_VR, RVANYV,  "vnmsac",        "|101111|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (     VWADDU_VX,      VWADDU_VR, RVANYV,  "vwaddu",        "|110000|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (      VWADD_VX,       VWADD_VR, RVANYV,  "vwadd",         "|110001|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (     VWSUBU_VX,      VWSUBU_VR, RVANYV,  "vwsubu",        "|110010|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (      VWSUB_VX,       VWSUB_VR, RVANYV,  "vwsub",         "|110011|.|.....|.....|110|.....|1010111|"),
    ATTR32_WX        (     VWADDU_WX,      VWADDU_WR, RVANYV,  "vwaddu",        "|110100|.|.....|.....|110|.....|1010111|"),
    ATTR32_WX        (      VWADD_WX,       VWADD_WR, RVANYV,  "vwadd",         "|110101|.|.....|.....|110|.....|1010111|"),
    ATTR32_WX        (     VWSUBU_WX,      VWSUBU_WR, RVANYV,  "vwsubu",        "|110110|.|.....|.....|110|.....|1010111|"),
    ATTR32_WX        (      VWSUB_WX,       VWSUB_WR, RVANYV,  "vwsub",         "|110111|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (     VWMULU_VX,      VWMULU_VR, RVANYV,  "vwmulu",        "|111000|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (    VWMULSU_VX,     VWMULSU_VR, RVANYV,  "vwmulsu",       "|111010|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX        (      VWMUL_VX,       VWMUL_VR, RVANYV,  "vwmul",         "|111011|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX3       (    VWMACCU_VX,     VWMACCU_VR, RVANYV,  "vwmaccu",       "|111100|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX3       (     VWMACC_VX,      VWMACC_VR, RVANYV,  "vwmacc",        "|111101|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX3       (   VWMACCSU_VX,    VWMACCSU_VR, RVANYV,  "vwmaccsu",      "|111110|.|.....|.....|110|.....|1010111|"),
    ATTR32_VX3       (   VWMACCUS_VX,    VWMACCUS_VR, RVANYV,  "vwmaccus",      "|111111|.|.....|.....|110|.....|1010111|"),

    // dummy entry for undecoded instruction
    ATTR32_LAST      (          LAST,           LAST,          "undef")
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
            info->explicitType = True;
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

    // table mapping to vector element bits (NOTE: -1 is SEW)
    const static Int8 mapVectorBits[] = {8, 0, 0, 0, 0, 16, 32, -1};

    switch(memBits) {
        case MBS_NA:
            break;
        case MBS_12:
            result = 32<<U_12(instr);
            break;
        case MBS_13_12:
            result = 8<<U_13_12(instr);
            break;
        case MBS_14_12_V:
            result = mapVectorBits[U_14_12(instr)];
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
        case USX_28:
            result = !U_28(instr);
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
// Return vector VSEW encoded in the instruction
//
static Uns8 getVSEW(riscvInstrInfoP info, vsewSpec vsew) {

    Uns8  result = 0;
    Uns32 instr  = info->instruction;

    switch(vsew) {
        case VSEW_NA:
            break;
        case VSEW_24_22:
            result = U_24_22(instr);
            break;
        default:
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    return result;
}

//
// Return vector VLMUL encoded in the instruction
//
static Uns8 getVLMUL(riscvInstrInfoP info, vlmulSpec vlmul) {

    Uns8  result = 0;
    Uns32 instr  = info->instruction;

    switch(vlmul) {
        case VLMUL_NA:
            break;
        case VLMUL_21_20:
            result = U_21_20(instr);
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
    info->vsew      = getVSEW(info, attrs->vsew);
    info->vlmul     = getVLMUL(info, attrs->vlmul);
    info->VIType    = attrs->VIType;
    info->isFF      = getFirstFault(info, attrs->ff);
    info->nf        = getNumFields(info, attrs->nf);

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


