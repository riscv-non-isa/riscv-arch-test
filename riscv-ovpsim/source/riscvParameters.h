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

// VMI header files
#include "vmi/vmiAttrs.h"
#include "vmi/vmiParameters.h"

// model header files
#include "riscvTypeRefs.h"


//
// Define model parameters
//
typedef struct riscvParamValuesS {

    // simulation controls
    VMI_ENUM_PARAM(variant);
    VMI_ENUM_PARAM(user_version);
    VMI_ENUM_PARAM(priv_version);
    VMI_BOOL_PARAM(verbose);
    VMI_BOOL_PARAM(updatePTEA);
    VMI_BOOL_PARAM(updatePTED);
    VMI_BOOL_PARAM(unaligned);
    VMI_BOOL_PARAM(wfi_is_nop);
    VMI_BOOL_PARAM(mtvec_is_ro);
    VMI_UNS32_PARAM(tvec_align);
    VMI_UNS64_PARAM(mtvec_mask);
    VMI_UNS64_PARAM(stvec_mask);
    VMI_UNS64_PARAM(utvec_mask);
    VMI_BOOL_PARAM(tval_ii_code);
    VMI_BOOL_PARAM(time_undefined);
    VMI_BOOL_PARAM(cycle_undefined);
    VMI_BOOL_PARAM(instret_undefined);
    VMI_BOOL_PARAM(enable_CSR_bus);
    VMI_BOOL_PARAM(d_requires_f);
    VMI_BOOL_PARAM(fs_always_dirty);
    VMI_UNS32_PARAM(ASID_bits);
    VMI_UNS32_PARAM(PMP_grain);
    VMI_UNS32_PARAM(PMP_registers);
    VMI_UNS32_PARAM(Sv_modes);
    VMI_UNS32_PARAM(lr_sc_grain);
    VMI_UNS64_PARAM(reset_address);
    VMI_UNS64_PARAM(nmi_address);
    VMI_UNS32_PARAM(local_int_num);
    VMI_UNS32_PARAM(numHarts);

    // fundamental configuration
    VMI_ENDIAN_PARAM(endian);

    // ISA configuration
    VMI_UNS32_PARAM(misa_MXL);
    VMI_UNS32_PARAM(misa_MXL_mask);
    VMI_UNS32_PARAM(misa_Extensions);
    VMI_UNS32_PARAM(misa_Extensions_mask);
    VMI_UNS64_PARAM(mvendorid);
    VMI_UNS64_PARAM(marchid);
    VMI_UNS64_PARAM(mimpid);
    VMI_UNS64_PARAM(mhartid);
    VMI_UNS64_PARAM(mtvec);
    VMI_UNS32_PARAM(mstatus_FS);

} riscvParamValues;

//
// Free parameter definitions
//
void riscvFreeParameters(riscvP riscv);

//
// Get any configuration with the given name
//
riscvConfigCP riscvGetNamedConfig(riscvConfigCP cfgList, const char *variant);

//
// Return Privileged Architecture description
//
const char *riscvGetPrivVersionDesc(riscvP riscv);

//
// Return User Architecture description
//
const char *riscvGetUserVersionDesc(riscvP riscv);
