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

// Imperas header files
#include "hostapi/impTypes.h"

// model header files
#include "riscvTypeRefs.h"

//
// Map from feature character to feature mask
//
#define XLEN32_CHAR             ('Z'+1)
#define XLEN64_CHAR             ('Z'+2)
#define RM_INVALID_CHAR         ('Z'+3)
#define RISCV_FAND_CHAR         ('Z'+4)
#define MSTATUS_FS_CHAR         ('Z'+5)
#define RISCV_FEATURE_INDEX(_C) ((_C)-'A')
#define RISCV_FEATURE_BIT(_C)   (1<<RISCV_FEATURE_INDEX(_C))
#define XLEN_SHIFT              RISCV_FEATURE_INDEX(XLEN32_CHAR)
#define MSTATUS_FS_SHIFT        RISCV_FEATURE_INDEX(MSTATUS_FS_CHAR)

//
// This enumerates architecture features in a format compatible with the MISA
// register, plus extra bits indicating XLEN
//
typedef enum riscvArchitectureE {

    // CURRENT REGISTER SIZE
    ISA_XLEN_32  = RISCV_FEATURE_BIT(XLEN32_CHAR),  // supported for XLEN=32
    ISA_XLEN_64  = RISCV_FEATURE_BIT(XLEN64_CHAR),  // supported for XLEN=64
    ISA_XLEN_ANY = (ISA_XLEN_32|ISA_XLEN_64),

    // ROUNDING MODE INVALID
    ISA_RM_INVALID = RISCV_FEATURE_BIT(RM_INVALID_CHAR),

    // MSTATUS FIELDS
    ISA_FS     = RISCV_FEATURE_BIT(MSTATUS_FS_CHAR),

    // FEATURES A AND B
    ISA_and    = RISCV_FEATURE_BIT(RISCV_FAND_CHAR),

    // BASE ISA FEATURES
    ISA_A      = RISCV_FEATURE_BIT('A'),    // atomic instructions
    ISA_C      = RISCV_FEATURE_BIT('C'),    // compressed instructions
    ISA_E      = RISCV_FEATURE_BIT('E'),    // embedded instructions
    ISA_D      = RISCV_FEATURE_BIT('D'),    // double-precision floating point
    ISA_F      = RISCV_FEATURE_BIT('F'),    // single-precision floating point
    ISA_I      = RISCV_FEATURE_BIT('I'),    // RV32I/64I/128I base ISA
    ISA_M      = RISCV_FEATURE_BIT('M'),    // integer multiply/divide instructions
    ISA_N      = RISCV_FEATURE_BIT('N'),    // user-mode interrupts
    ISA_S      = RISCV_FEATURE_BIT('S'),    // supervisor mode implemented
    ISA_U      = RISCV_FEATURE_BIT('U'),    // user mode implemented
    ISA_V      = RISCV_FEATURE_BIT('V'),    // vector extension implemented
    ISA_X      = RISCV_FEATURE_BIT('X'),    // non-standard extensions present
    ISA_DF     = (ISA_D|ISA_F),             // either single or double precision
    ISA_DFV    = (ISA_D|ISA_F|ISA_V),       // either floating point or vector
    ISA_SorU   = (ISA_S|ISA_U),             // either supervisor or user mode
    ISA_SorN   = (ISA_S|ISA_N),             // either supervisor or user interrupts
    ISA_SandN  = (ISA_S|ISA_N|ISA_and),     // both supervisor and user interrupts
    ISA_FSandV = (ISA_FS|ISA_V|ISA_and),    // both FS and vector extension

    RV32     = ISA_XLEN_32,
    RV32I    = ISA_XLEN_32  | ISA_I,
    RV32M    = ISA_XLEN_32  |         ISA_M,
    RV32A    = ISA_XLEN_32  |                 ISA_A,
    RV32C    = ISA_XLEN_32  |                         ISA_C,
    RV32E    = ISA_XLEN_32  |                                 ISA_E,
    RV32F    = ISA_XLEN_32  |                                         ISA_F,
    RV32D    = ISA_XLEN_32  |                                                 ISA_D,
    RV32IM   = ISA_XLEN_32  | ISA_I | ISA_M,
    RV32IMA  = ISA_XLEN_32  | ISA_I | ISA_M | ISA_A,
    RV32IMC  = ISA_XLEN_32  | ISA_I | ISA_M |         ISA_C,
    RV32IMAC = ISA_XLEN_32  | ISA_I | ISA_M | ISA_A | ISA_C,
    RV32G    = ISA_XLEN_32  | ISA_I | ISA_M | ISA_A |                 ISA_F | ISA_D,
    RV32GC   = ISA_XLEN_32  | ISA_I | ISA_M | ISA_A | ISA_C |         ISA_F | ISA_D,
    RV32GCN  = ISA_XLEN_32  | ISA_I | ISA_M | ISA_A | ISA_C |         ISA_F | ISA_D | ISA_N,
    RV32GCV  = ISA_XLEN_32  | ISA_I | ISA_M | ISA_A | ISA_C |         ISA_F | ISA_D         | ISA_V,
    RV32EC   = ISA_XLEN_32  |                         ISA_C | ISA_E,

    RV32CF   = RV32F|RV32C,

    RV64     = ISA_XLEN_64,
    RV64I    = ISA_XLEN_64  | ISA_I,
    RV64M    = ISA_XLEN_64  |         ISA_M,
    RV64A    = ISA_XLEN_64  |                 ISA_A,
    RV64C    = ISA_XLEN_64  |                         ISA_C,
    RV64E    = ISA_XLEN_64  |                                 ISA_E,
    RV64F    = ISA_XLEN_64  |                                         ISA_F,
    RV64D    = ISA_XLEN_64  |                                                 ISA_D,
    RV64IM   = ISA_XLEN_64  | ISA_I | ISA_M,
    RV64IMA  = ISA_XLEN_64  | ISA_I | ISA_M | ISA_A,
    RV64IMC  = ISA_XLEN_64  | ISA_I | ISA_M |         ISA_C,
    RV64IMAC = ISA_XLEN_64  | ISA_I | ISA_M | ISA_A | ISA_C,
    RV64G    = ISA_XLEN_64  | ISA_I | ISA_M | ISA_A |                 ISA_F | ISA_D,
    RV64GC   = ISA_XLEN_64  | ISA_I | ISA_M | ISA_A | ISA_C |         ISA_F | ISA_D,
    RV64GCN  = ISA_XLEN_64  | ISA_I | ISA_M | ISA_A | ISA_C |         ISA_F | ISA_D | ISA_N,
    RV64GCV  = ISA_XLEN_64  | ISA_I | ISA_M | ISA_A | ISA_C |         ISA_F | ISA_D         | ISA_V,

    RVANY    = ISA_XLEN_ANY,
    RVANYI   = ISA_XLEN_ANY | ISA_I,
    RVANYM   = ISA_XLEN_ANY |         ISA_M,
    RVANYA   = ISA_XLEN_ANY |                 ISA_A,
    RVANYC   = ISA_XLEN_ANY |                         ISA_C,
    RVANYE   = ISA_XLEN_ANY |                                 ISA_E,
    RVANYF   = ISA_XLEN_ANY |                                         ISA_F,
    RVANYD   = ISA_XLEN_ANY |                                                 ISA_D,
    RVANYN   = ISA_XLEN_ANY |                                                         ISA_N,
    RVANYV   = ISA_XLEN_ANY |                                                                 ISA_V,

    RVANYDF  = RVANYD|RVANYF,
    RVANYCD  = RVANYC|RVANYD,
    RVANYVA  = RVANYV|RVANYA,

} riscvArchitecture;

// macro indicating if current XLEN is 32
#define RISCV_XLEN_IS_32(_CPU) ((_CPU)->currentArch & ISA_XLEN_32)

// macro indicating if current XLEN is 64
#define RISCV_XLEN_IS_64(_CPU) ((_CPU)->currentArch & ISA_XLEN_64)

//
// Supported User Architecture versions
//
typedef enum riscvUserVerE {
    RVUV_2_2,                           // version 2.2
    RVUV_2_3,                           // version 2.3 (legacy naming)
    RVUV_20190305,                      // version 20190305
    RVUV_DEFAULT = RVUV_20190305,       // default version
} riscvUserVer;

//
// Supported Privileged Architecture versions
//
typedef enum riscvPrivVerE {
    RVPV_1_10,                          // version 1.10
    RVPV_1_11,                          // version 1.11 (legacy naming)
    RVPV_20190405,                      // version 20190405
    RVPV_DEFAULT = RVPV_20190405,       // default version
} riscvPrivVer;

//
// Tag of master version
//
#define RVVV_MASTER_TAG "f92ae2c"

//
// Supported Vector Architecture versions
//
typedef enum riscvVectVerE {
    RVVV_0_7_1,                         // version 0.7.1-draft-20190605
    RVVV_0_7_1_P,                       // version 0.7.1 with some 0.8 features
    RVVV_0_8_20190906,                  // version 0.8-draft-20190906
    RVVV_0_8_20191004,                  // version 0.8-draft-20191004
    RVVV_0_8_20191117,                  // version 0.8-draft-20191117
    RVVV_0_8_20191118,                  // version 0.8-draft-20191118
    RVVV_0_8,                           // version 0.8
    RVVV_MASTER,                        // master branch
    RVVV_LAST,                          // for sizing
    RVVV_DEFAULT = RVVV_0_8,            // default version
} riscvVectVer;

//
// Supported 16-bit floating point version
//
typedef enum riscvFP16VerE {
    RVFP16_NA,                          // no 16-bit floating point (default)
    RVFP16_IEEE754,                     // IEEE 754 half precision
    RVFP16_BFLOAT16,                    // BFLOAT16
} riscvFP16Ver;

//
// Supported mstatus.FS update behavior
//
typedef enum riscvFSModeE {
    RVFS_WRITE_NZ,                  // dirty set if exception only (default)
    RVFS_WRITE_ANY,                 // any fflags write sets dirty
    RVFS_ALWAYS_DIRTY,              // mstatus.FS is always off or dirty
} riscvFSMode;

// macro returning User Architecture version
#define RISCV_USER_VERSION(_P)  ((_P)->configInfo.user_version)

// macro returning Privileged Architecture version
#define RISCV_PRIV_VERSION(_P)  ((_P)->configInfo.priv_version)

// macro returning Vector Architecture version
#define RISCV_VECT_VERSION(_P)  ((_P)->configInfo.vect_version)

// macro returning 16-bit floating point version
#define RISCV_FP16_VERSION(_P)  ((_P)->configInfo.fp16_version)

// macro returning 16-bit floating point version
#define RISCV_FS_MODE(_P)       ((_P)->configInfo.mstatus_fs_mode)

//
// Supported version-dependent architectural features
//
typedef enum riscvVFeatureE {
    RVVF_W_SYNTAX,          // use .w syntax in disassembly (not .v)
    RVVF_ZERO_TAIL,         // is zeroing of tail elements required?
    RVVF_STRICT_OVERLAP,    // strict source/destination overlap?
    RVVF_SEXT_IOFFSET,      // sign-extend indexed load/store offset?
    RVVF_SEXT_VMV_X_S,      // sign-extend vmv.x.s and vmv.s.x?
    RVVF_SETVLZ_MAX,        // setvl* with rs1=zero: set vl to maximum
    RVVF_SETVLZ_PRESERVE,   // setvl* with rs1=zero: preserve vl
    RVVF_VAMO_SEW,          // use SEW AMO size (not 64-bit size)
    RVVF_ADC_SBC_MASK,      // vadc/vmadc/vsbc/vmsbc use standard mask bit
    RVVF_SEXT_SLIDE1_SRC,   // sign-extend slide1* ssource value?
    RVVF_FP_REQUIRES_FSNZ,  // VFP instructions require mstatus.FS!=0?
    RVVF_VLENB_PRESENT,     // is vlenb register present?
    RVVF_VCSR_PRESENT,      // is vcsr register present?
    RVVF_VS_STATUS_8,       // is [ms]status.VS field in version 0.8 location?
    RVVF_VS_STATUS_9,       // is [ms]status.VS field in version 0.9 location?
    RVVF_FP_RESTRICT_WHOLE, // whole register load/store/move restricted?
    RVVF_UNIT_STRIDE_ONLY,  // only unit-stride load/store supported?
    RVVF_VSTART_Z,          // is vstart forced to zero?
    RVVF_LAST,              // for sizing
} riscvVFeature;

//
// Is the indicated feature supported?
//
Bool riscvVFSupport(riscvP riscv, riscvVFeature feature);
