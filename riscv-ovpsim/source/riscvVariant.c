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

// model header files
#include "riscvVariant.h"

// model header files
#include "riscvStructure.h"


//
// Is the indicated feature supported?
//
Bool riscvVFSupport(riscvP riscv, riscvVFeature feature) {

    static Bool map[RVVV_LAST][RVVF_LAST] = {

        // version 0.7.1-draft-20190605
        [RVVV_0_7_1] = {
            [RVVF_ZERO_TAIL]          = 1,
            [RVVF_STRICT_OVERLAP]     = 1,
            [RVVF_SEXT_IOFFSET]       = 1,
            [RVVF_SETVLZ_MAX]         = 1,
        },

        // version 0.7.1-draft-20190605+
        [RVVV_0_7_1_P] = {
            [RVVF_W_SYNTAX]           = 1,
            [RVVF_SEXT_IOFFSET]       = 1,
            [RVVF_SEXT_VMV_X_S]       = 1,
            [RVVF_SETVLZ_MAX]         = 1,
            [RVVF_VAMO_SEW]           = 1,
        },

        // version 0.8-draft-20190906
        [RVVV_0_8_20190906] = {
            [RVVF_W_SYNTAX]           = 1,
            [RVVF_SEXT_IOFFSET]       = 1,
            [RVVF_SEXT_VMV_X_S]       = 1,
            [RVVF_SETVLZ_PRESERVE]    = 1,
            [RVVF_VAMO_SEW]           = 1,
        },

        // version 0.8-draft-20191004
        [RVVV_0_8_20191004] = {
            [RVVF_W_SYNTAX]           = 1,
            [RVVF_SEXT_IOFFSET]       = 1,
            [RVVF_SEXT_VMV_X_S]       = 1,
            [RVVF_SETVLZ_PRESERVE]    = 1,
            [RVVF_VAMO_SEW]           = 1,
        },

        // version 0.8-draft-20191117
        [RVVV_0_8_20191117] = {
            [RVVF_W_SYNTAX]           = 1,
            [RVVF_SEXT_VMV_X_S]       = 1,
            [RVVF_SETVLZ_PRESERVE]    = 1,
            [RVVF_VAMO_SEW]           = 1,
            [RVVF_ADC_SBC_MASK]       = 1,
            [RVVF_SEXT_SLIDE1_SRC]    = 1,
            [RVVF_VLENB_PRESENT]      = 1,
        },

        // version 0.8-draft-20191118
        [RVVV_0_8_20191118] = {
            [RVVF_W_SYNTAX]           = 1,
            [RVVF_SEXT_VMV_X_S]       = 1,
            [RVVF_VAMO_SEW]           = 1,
            [RVVF_ADC_SBC_MASK]       = 1,
            [RVVF_SEXT_SLIDE1_SRC]    = 1,
            [RVVF_VLENB_PRESENT]      = 1,
        },

        // version 0.8
        [RVVV_0_8] = {
            [RVVF_W_SYNTAX]           = 1,
            [RVVF_SEXT_VMV_X_S]       = 1,
            [RVVF_VAMO_SEW]           = 1,
            [RVVF_ADC_SBC_MASK]       = 1,
            [RVVF_SEXT_SLIDE1_SRC]    = 1,
            [RVVF_FP_REQUIRES_FSNZ]   = 1,
            [RVVF_VLENB_PRESENT]      = 1,
            [RVVF_VS_STATUS_8]        = 1,
            [RVVF_FP_RESTRICT_WHOLE]  = 1,
        },

        // version 0.9
        [RVVV_0_9] = {
            [RVVF_W_SYNTAX]           = 1,
            [RVVF_SEXT_VMV_X_S]       = 1,
            [RVVF_VAMO_SEW]           = 1,
            [RVVF_ADC_SBC_MASK]       = 1,
            [RVVF_SEXT_SLIDE1_SRC]    = 1,
            [RVVF_FP_REQUIRES_FSNZ]   = 1,
            [RVVF_VLENB_PRESENT]      = 1,
            [RVVF_VCSR_PRESENT]       = 1,
            [RVVF_VS_STATUS_9]        = 1,
            [RVVF_FP_RESTRICT_WHOLE]  = 1,
            [RVVF_FRACT_LMUL]         = 1,
            [RVVF_AGNOSTIC]           = 1,
            [RVVF_MLEN1]              = 1,
        },

        // version master
        [RVVV_MASTER] = {
            [RVVF_W_SYNTAX]           = 1,
            [RVVF_SEXT_VMV_X_S]       = 1,
            [RVVF_VAMO_SEW]           = 1,
            [RVVF_ADC_SBC_MASK]       = 1,
            [RVVF_SEXT_SLIDE1_SRC]    = 1,
            [RVVF_FP_REQUIRES_FSNZ]   = 1,
            [RVVF_VLENB_PRESENT]      = 1,
            [RVVF_VCSR_PRESENT]       = 1,
            [RVVF_VS_STATUS_9]        = 1,
            [RVVF_FP_RESTRICT_WHOLE]  = 1,
            [RVVF_FRACT_LMUL]         = 1,
            [RVVF_AGNOSTIC]           = 1,
            [RVVF_MLEN1]              = 1,
            [RVVF_EEW_OVERLAP]        = 1,
            [RVVF_SLEN_IS_VLEN]       = 1,
            [RVVF_ELEN_GT_VLEN]       = 1,
            [RVVF_VLR_HINT]           = 1,
        },
    };

    return map[riscv->configInfo.vect_version][feature];
}
