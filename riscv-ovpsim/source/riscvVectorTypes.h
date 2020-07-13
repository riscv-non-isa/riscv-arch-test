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

// VMI header files
#include "vmi/vmiTypes.h"

// model header files
#include "riscvTypeRefs.h"


//
// Vector shape description. Each name is composed of:
// - prefix (RVVW)
// - two or three operand descriptors, each three letters:
//      1. argument type (V=vector, S=scalar, P=predicate);
//      2. VLMUL multiplier (1, 2 or 4);
//      3. element type (I=integer, F=float)
// - an optional generic suffix
//
typedef enum riscvVShapeE {

                            // INTEGER ARGUMENTS
    RVVW_V1I_V1I_V1I,       // SEW = SEW op SEW
    RVVW_V1I_V1I_V1I_LD,    // vector load operations
    RVVW_V1I_V1I_V1I_ST,    // vector store operations
    RVVW_V1I_V1I_V1I_SAT,   // saturating result
    RVVW_V1I_V1I_V1I_VXRM,  // uses vxrm
    RVVW_V1I_V1I_V1I_SEW8,  // uses SEW8
    RVVW_V1I_S1I_V1I,       // src1 is scalar
    RVVW_S1I_V1I_V1I,       // Vd is scalar
    RVVW_P1I_V1I_V1I,       // Vd is predicate
    RVVW_S1I_V1I_S1I,       // Vd and src2 are scalar
    RVVW_V1I_V1I_V1I_CIN,   // mask is carry-in (VADC etc)
    RVVW_P1I_V1I_V1I_CIN,   // Vd is predicate, mask is carry-in (VMADC etc)
    RVVW_S2I_V1I_S2I,       // 2*SEW = SEW   op 2*SEW, Vd and src2 are scalar
    RVVW_V1I_V2I_V1I,       // SEW   = 2*SEW op SEW
    RVVW_V1I_V2I_V1I_SAT,   // SEW   = 2*SEW op SEW, saturating result
    RVVW_V2I_V1I_V1I_IW,    // 2*SEW = SEW   op SEW, implicit widening
    RVVW_V2I_V1I_V1I,       // 2*SEW = SEW   op SEW
    RVVW_V2I_V1I_V1I_SAT,   // 2*SEW = SEW   op SEW, saturating result
    RVVW_V4I_V1I_V1I,       // 4*SEW = SEW   op SEW
    RVVW_V2I_V2I_V1I,       // 2*SEW = 2*SEW op SEW
    RVVW_V1I_V2I_FN,        // SEW = SEW/FN

                            // FLOATING POINT ARGUMENTS
    RVVW_V1F_V1F_V1F,       // SEW = SEW op SEW
    RVVW_V1F_S1F_V1F,       // src1 is scalar
    RVVW_S1F_V1I_V1I,       // Vd is scalar
    RVVW_P1I_V1F_V1F,       // Vd is predicate
    RVVW_S1F_V1F_S1F,       // Vd and src2 are scalar
    RVVW_S2F_V1F_S2F,       // 2*SEW = SEW   op 2*SEW, Vd and src2 are scalar
    RVVW_V1F_V2F_V1F_IW,    // SEW   = 2*SEW op SEW, implicit widening
    RVVW_V2F_V1F_V1F_IW,    // 2*SEW = SEW   op SEW, implicit widening
    RVVW_V2F_V1F_V1F,       // 2*SEW = SEW   op SEW
    RVVW_V2F_V2F_V1F,       // 2*SEW = 2*SEW op SEW

                            // CONVERSIONS
    RVVW_V1F_V1I,           // SEW   = SEW,   Fd=Is
    RVVW_V1I_V1F,           // SEW   = SEW,   Id=Fs
    RVVW_V2F_V1I,           // 2*SEW = SEW,   Fd=Is
    RVVW_V2I_V1F,           // 2*SEW = SEW,   Id=Fs
    RVVW_V1F_V2I_IW,        // SEW   = 2*SEW, Fd=Is, implicit widening
    RVVW_V1I_V2F_IW,        // SEW   = 2*SEW, Id=Fs, implicit widening

                            // MASK ARGUMENTS
    RVVW_P1I_P1I_P1I,       // SEW = SEW op SEW
    RVVW_V1I_P1I_P1I,       // SEW = SEW op SEW

                            // SLIDING ARGUMENTS
    RVVW_V1I_V1I_V1I_GR,    // SEW, VRGATHER instructions
    RVVW_V1I_V1I_V1I_UP,    // SEW, VSLIDEUP instructions
    RVVW_V1I_V1I_V1I_DN,    // SEW, VSLIDEDOWN instructions
    RVVW_V1I_V1I_V1I_CMP,   // SEW, VCOMPRESS instruction

    RVVW_LAST               // KEEP LAST: for sizing

} riscvVShape;

//
// Externally-implemented vector operation callback
//
#define RISCV_VEXTERNAL_FN(_NAME) void _NAME( \
    riscvP  riscv,      \
    void   *userData,   \
    vmiReg *r,          \
    Uns32   SEW         \
)
typedef RISCV_VEXTERNAL_FN((*riscvVExternalFn));

