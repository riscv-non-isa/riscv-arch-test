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

//
// Map from feature character to feature mask
//
#define XLEN32_CHAR             ('Z'+1)
#define XLEN64_CHAR             ('Z'+2)
#define RISCV_FAND_CHAR         ('Z'+3)
#define RISCV_FEATURE_INDEX(_C) ((_C)-'A')
#define RISCV_FEATURE_BIT(_C)   (1<<RISCV_FEATURE_INDEX(_C))
#define XLEN_SHIFT              RISCV_FEATURE_INDEX(XLEN32_CHAR)

//
// This enumerates architecture features in a format compatible with the MISA
// register, plus extra bits indicating XLEN
//
typedef enum riscvArchitectureE {

    // CURRENT REGISTER SIZE
    ISA_XLEN_32  = RISCV_FEATURE_BIT(XLEN32_CHAR),  // supported for XLEN=32
    ISA_XLEN_64  = RISCV_FEATURE_BIT(XLEN64_CHAR),  // supported for XLEN=64
    ISA_XLEN_ANY = (ISA_XLEN_32|ISA_XLEN_64),

    // FEATURES A AND B
    ISA_and  = RISCV_FEATURE_BIT(RISCV_FAND_CHAR),

    // BASE ISA FEATURES
    ISA_A     = RISCV_FEATURE_BIT('A'), // atomic instructions
    ISA_C     = RISCV_FEATURE_BIT('C'), // compressed instructions
    ISA_E     = RISCV_FEATURE_BIT('E'), // embedded instructions
    ISA_D     = RISCV_FEATURE_BIT('D'), // double-precision floating point
    ISA_F     = RISCV_FEATURE_BIT('F'), // single-precision floating point
    ISA_I     = RISCV_FEATURE_BIT('I'), // RV32I/64I/128I base ISA
    ISA_M     = RISCV_FEATURE_BIT('M'), // integer multiply/divide instructions
    ISA_N     = RISCV_FEATURE_BIT('N'), // user-mode interrupts
    ISA_S     = RISCV_FEATURE_BIT('S'), // supervisor mode implemented
    ISA_U     = RISCV_FEATURE_BIT('U'), // user mode implemented
    ISA_X     = RISCV_FEATURE_BIT('X'), // non-standard extensions present
    ISA_DF    = ISA_D|ISA_F,            // either single or double precision
    ISA_SorU  = ISA_S|ISA_U,            // either supervisor or user mode
    ISA_SorN  = ISA_S|ISA_N,            // either supervisor or user interrupts
    ISA_SandN = ISA_S|ISA_N|ISA_and,    // both supervisor and user interrupts

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

    RVANY    = ISA_XLEN_ANY,
    RVANYI   = ISA_XLEN_ANY | ISA_I,
    RVANYM   = ISA_XLEN_ANY |         ISA_M,
    RVANYA   = ISA_XLEN_ANY |                 ISA_A,
    RVANYC   = ISA_XLEN_ANY |                         ISA_C,
    RVANYE   = ISA_XLEN_ANY |                                 ISA_E,
    RVANYF   = ISA_XLEN_ANY |                                         ISA_F,
    RVANYD   = ISA_XLEN_ANY |                                                 ISA_D,
    RVANYN   = ISA_XLEN_ANY |                                                         ISA_N,

    RVANYDF  = RVANYD|RVANYF,
    RVANYCD  = RVANYC|RVANYD,

} riscvArchitecture;

// macro indicating if current XLEN is 32
#define RISCV_XLEN_IS_32(_CPU) ((_CPU)->currentArch & ISA_XLEN_32)

// macro indicating if current XLEN is 64
#define RISCV_XLEN_IS_64(_CPU) ((_CPU)->currentArch & ISA_XLEN_64)

//
// Supported User Architecture versions
//
typedef enum riscvUserVerE {
    RVUV_2_2,                   // version 2.2
    RVUV_2_3,                   // version 2.3
    RVUV_LAST,                  // for sizing
    RVUV_DEFAULT = RVUV_2_2,    // default version
} riscvUserVer;

//
// Supported Privileged Architecture versions
//
typedef enum riscvPrivVerE {
    RVPV_1_10,                  // version 1.10
    RVPV_1_11,                  // version 1.11
    RVPV_LAST,                  // for sizing
    RVPV_DEFAULT = RVPV_1_10,   // default version
} riscvPrivVer;

// macro returning User Architecture version
#define RISCV_USER_VERSION(_P) ((_P)->configInfo.user_version)

// macro returning Privileged Architecture version
#define RISCV_PRIV_VERSION(_P) ((_P)->configInfo.priv_version)

