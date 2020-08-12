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

// basic number types
#include "hostapi/impTypes.h"

//
// Type used for addresses in the model
//
typedef Uns64 riscvAddr;

//
// This is used to categorize rounding mode semantics
//
typedef enum riscvRMDescE {

    RV_RM_CURRENT,  // round using current rounding mode (or no mode)
    RV_RM_RTE,      // round to nearest, ties to even
    RV_RM_RTZ,      // round towards zero
    RV_RM_RDN,      // round towards -infinity
    RV_RM_RUP,      // round towards +infinity
    RV_RM_RMM,      // round to nearest, ties away
    RV_RM_ROD,      // round to odd (jamming)
    RV_RM_BAD5,     // illegal rounding mode 5
    RV_RM_BAD6,     // illegal rounding mode 6

} riscvRMDesc;

//
// This describes format of  riscvVType values
//
typedef enum riscvVTypeFmtE {
    RV_VTF_0_9,     // 0.9 format (and previous)
    RV_VTF_1_0,     // 1.0 format (and subsequent)
} riscvVTypeFmt;

//
// This holds field information for the VSETVLI instruction
//
typedef struct riscvVTypeS {

    // register format
    riscvVTypeFmt format;

    // register value
    union {

        // value as Uns32
        Uns32 u32;

        // common format
        struct {
            Uns32 _u1    :  6;
            Bool  vta    :  1;
            Bool  vma    :  1;
            Uns32 zero   : 24;
        };

        // 0.9 format (and previous)
        struct {
            Uns32 vlmul  :  2;
            Uns32 vsew   :  3;
            Uns32 vlmulf :  1;
            Uns32 _u1    : 26;
        } v0_9;

        // 1.0 format (and subsequent)
        struct {
            Int32 vlmul  :  3;
            Uns32 vsew   :  3;
            Uns32 _u1    : 26;
        } v1_0;
    } u;

} riscvVType;

//
// Should v0.9-format vtype be used?
//
inline static Bool isVType0_9(riscvVType vtype) {
    return vtype.format==RV_VTF_0_9;
}

//
// Return value of always-zero fields in vtype
//
inline static Uns32 getVTypeZero(riscvVType vtype) {
    return vtype.u.zero;
}

//
// Get SEW for vtype
//
inline static Uns32 getVTypeSEW(riscvVType vtype) {
    Uns32 vsew = isVType0_9(vtype) ? vtype.u.v0_9.vsew : vtype.u.v1_0.vsew;
    return 8<<vsew;
}

//
// Get VTA for vtype
//
inline static Bool getVTypeVTA(riscvVType vtype) {
    return vtype.u.vta;
}

//
// Get VMA for vtype
//
inline static Bool getVTypeVMA(riscvVType vtype) {
    return vtype.u.vma;
}

//
// Get signed VLMUL for vtype
//
inline static Int32 getVTypeSVLMUL(riscvVType vtype) {
    if(isVType0_9(vtype)) {
        return vtype.u.v0_9.vlmul | (vtype.u.v0_9.vlmulf ? -4 : 0);
    } else {
        return vtype.u.v1_0.vlmul;
    }
}


