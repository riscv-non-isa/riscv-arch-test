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

// standard header files
#include <string.h>

// Imperas header files
#include "hostapi/impAlloc.h"

// VMI header files
#include "vmi/vmiAttrs.h"
#include "vmi/vmiParameters.h"
#include "vmi/vmiMessage.h"

// model header files
#include "riscvCluster.h"
#include "riscvFunctions.h"
#include "riscvMessage.h"
#include "riscvParameters.h"
#include "riscvStructure.h"
#include "riscvVariant.h"
#include "riscvVMConstants.h"


//
// Restrictions on parameters
//
typedef enum riscvParamVariantE {

    RVPV_ALL     = 0,           // present for all variants

                                // PARAMETER IDENTIFIERS
    RVPV_VARIANT = (1<<1),      // identifies variant parameter
    RVPV_FP      = (1<<2),      // requires floating point unit
    RVPV_A       = (1<<3),      // requires atomic instructions
    RVPV_S       = (1<<4),      // requires Supervisor mode
    RVPV_N       = (1<<5),      // requires User mode interrupts
    RVPV_MPCORE  = (1<<6),      // present for multicore variants

} riscvParamVariant;

//
// Supported Privileged Architecture variants
//
static vmiEnumParameter privVariants[RVPV_LAST+1] = {
    [RVPV_1_10] = {
        .name        = "1.10",
        .value       = RVPV_1_10,
        .description = "Privileged Architecture Version 1.10",
    },
    [RVPV_1_11] = {
        .name        = "1.11",
        .value       = RVPV_1_11,
        .description = "Privileged Architecture Version 1.11-draft",
    },
    // KEEP LAST: terminator
    {0}
};

//
// Supported User Architecture variants
//
static vmiEnumParameter userVariants[RVUV_LAST+1] = {
    [RVUV_2_2] = {
        .name        = "2.2",
        .value       = RVUV_2_2,
        .description = "User Architecture Version 2.2",
    },
    [RVUV_2_3] = {
        .name        = "2.3",
        .value       = RVUV_2_3,
        .description = "User Architecture Version 2.3-draft",
    },
    // KEEP LAST: terminator
    {0}
};

//
// This function type is used to specify the default value for a parameter
//
#define RISCV_PDEFAULT_FN(_NAME) void _NAME(riscvConfigCP cfg, vmiParameterP param)
typedef RISCV_PDEFAULT_FN((*riscvPDefaultFn));

//
// Parameter list including variant information
//
typedef struct riscvParameterS {
    riscvParamVariant variant;
    riscvPDefaultFn   defaultCB;
    vmiParameter      parameter;
} riscvParameter, *riscvParameterP;

//
// Validate parameter type
//
#define CHECK_PARAM_TYPE(_P, _T, _NAME) VMI_ASSERT( \
    _P->type==_T,                                   \
    "parameter %s is not of "_NAME" type",          \
    _P->name                                        \
)

//
// Set enum parameter default
//
static void setEnumParamDefault(vmiParameterP param, Uns32 value) {
    CHECK_PARAM_TYPE(param, vmi_PT_ENUM, "Enum");
    param->u.enumParam.defaultValue = &param->u.enumParam.legalValues[value];
}

//
// Set Bool parameter default
//
static void setBoolParamDefault(vmiParameterP param, Bool value) {
    CHECK_PARAM_TYPE(param, vmi_PT_BOOL, "Bool");
    param->u.boolParam.defaultValue = value;
}

//
// Set Uns32 parameter default
//
static void setUns32ParamDefault(vmiParameterP param, Uns32 value) {
    CHECK_PARAM_TYPE(param, vmi_PT_UNS32, "Uns32");
    param->u.uns32Param.defaultValue = value;
}

//
// Set Uns64 parameter default
//
static void setUns64ParamDefault(vmiParameterP param, Uns64 value) {
    CHECK_PARAM_TYPE(param, vmi_PT_UNS64, "Uns64");
    param->u.uns64Param.defaultValue = value;
}

//
// Macro to define a function to set a raw enum parameter value from the
// configuration
//
#define RISCV_ENUM_PDEFAULT_CFG_FN(_NAME) RISCV_PDEFAULT_FN(default_##_NAME) { \
    setEnumParamDefault(param, cfg->_NAME);  \
}

//
// Macro to define a function to set a raw Bool parameter value from the
// configuration
//
#define RISCV_BOOL_PDEFAULT_CFG_FN(_NAME) RISCV_PDEFAULT_FN(default_##_NAME) { \
    setBoolParamDefault(param, cfg->_NAME);  \
}

//
// Macro to define a function to set a raw Uns32 parameter value from the
// configuration
//
#define RISCV_UNS32_PDEFAULT_CFG_FN(_NAME) RISCV_PDEFAULT_FN(default_##_NAME) { \
    setUns32ParamDefault(param, cfg->_NAME);  \
}

//
// Macro to define a function to set a raw Uns64 parameter value from the
// configuration
//
#define RISCV_UNS64_PDEFAULT_CFG_FN(_NAME) RISCV_PDEFAULT_FN(default_##_NAME) { \
    setUns64ParamDefault(param, cfg->_NAME);  \
}

//
// Set default value of raw enum parameters
//
static RISCV_ENUM_PDEFAULT_CFG_FN(user_version);
static RISCV_ENUM_PDEFAULT_CFG_FN(priv_version);

//
// Set default value of raw Bool parameters
//
static RISCV_BOOL_PDEFAULT_CFG_FN(updatePTEA);
static RISCV_BOOL_PDEFAULT_CFG_FN(updatePTED);
static RISCV_BOOL_PDEFAULT_CFG_FN(unaligned);
static RISCV_BOOL_PDEFAULT_CFG_FN(wfi_is_nop);
static RISCV_BOOL_PDEFAULT_CFG_FN(mtvec_is_ro);
static RISCV_BOOL_PDEFAULT_CFG_FN(tval_ii_code);
static RISCV_BOOL_PDEFAULT_CFG_FN(cycle_undefined);
static RISCV_BOOL_PDEFAULT_CFG_FN(time_undefined);
static RISCV_BOOL_PDEFAULT_CFG_FN(instret_undefined);
static RISCV_BOOL_PDEFAULT_CFG_FN(enable_CSR_bus);
static RISCV_BOOL_PDEFAULT_CFG_FN(d_requires_f);
static RISCV_BOOL_PDEFAULT_CFG_FN(fs_always_dirty);

//
// Set default value of raw Uns32 parameters
//
static RISCV_UNS32_PDEFAULT_CFG_FN(numHarts);
static RISCV_UNS32_PDEFAULT_CFG_FN(tvec_align);
static RISCV_UNS32_PDEFAULT_CFG_FN(ASID_bits);
static RISCV_UNS32_PDEFAULT_CFG_FN(PMP_grain)
static RISCV_UNS32_PDEFAULT_CFG_FN(PMP_registers);
static RISCV_UNS32_PDEFAULT_CFG_FN(local_int_num);

//
// Set default value of raw Uns64 parameters
//
static RISCV_UNS64_PDEFAULT_CFG_FN(reset_address)
static RISCV_UNS64_PDEFAULT_CFG_FN(nmi_address)

//
// Set default value of Sv_modes
//
static RISCV_PDEFAULT_FN(default_Sv_modes) {

    Uns32 Sv_modes = cfg->Sv_modes;

    if(cfg->Sv_modes) {
        // no action
    } else if(cfg->arch & ISA_XLEN_64) {
        Sv_modes = RISCV_VMM_64;
    } else {
        Sv_modes = RISCV_VMM_32;
    }

    setUns32ParamDefault(param, Sv_modes);
}

//
// Set default value of lr_sc_grain
//
static RISCV_PDEFAULT_FN(default_lr_sc_grain) {

    setUns32ParamDefault(param, cfg->lr_sc_grain ? : 1);
}

//
// Set default value of misa_MXL
//
static RISCV_PDEFAULT_FN(default_misa_MXL) {

    setUns32ParamDefault(param, (cfg->arch & ISA_XLEN_64) ? 2 : 1);
}

//
// Set default value of misa_Extensions
//
static RISCV_PDEFAULT_FN(default_misa_Extensions) {

    setUns32ParamDefault(param, cfg->arch & ~ISA_XLEN_ANY);
}

//
// Set default value of misa_Extensions_mask
//
static RISCV_PDEFAULT_FN(default_misa_Extensions_mask) {

    // if archMask is zero, assume all bits except I, E, S and U are writable
    Uns32 mask = cfg->archMask ? : ~(ISA_XLEN_ANY|ISA_I|ISA_E|ISA_S|ISA_U);

    // only bits that are non-zero in arch are writable
    setUns32ParamDefault(param, cfg->arch & mask);
}

//
// Macro to define a function to set an Uns64 CSR parameter value from the
// configuration
//
#define RISCV_CSR_PDEFAULT_CFG_FN(_NAME) RISCV_PDEFAULT_FN(default_##_NAME) { \
    setUns64ParamDefault(param, cfg->csr._NAME.u64.bits);  \
}

//
// Set default value of CSR parameters
//
static RISCV_CSR_PDEFAULT_CFG_FN(mvendorid)
static RISCV_CSR_PDEFAULT_CFG_FN(marchid)
static RISCV_CSR_PDEFAULT_CFG_FN(mimpid)
static RISCV_CSR_PDEFAULT_CFG_FN(mhartid)
static RISCV_CSR_PDEFAULT_CFG_FN(mtvec)

//
// Macro to define a function to set an Uns64 CSR mask value from the
// configuration
//
#define RISCV_CSR_PMDEFAULT_CFG_FN(_NAME) RISCV_PDEFAULT_FN(default_##_NAME##_mask) { \
    setUns64ParamDefault(param, cfg->csrMask._NAME.u64.bits);  \
}

//
// Set default value of CSR mask parameters
//
static RISCV_CSR_PMDEFAULT_CFG_FN(mtvec)
static RISCV_CSR_PMDEFAULT_CFG_FN(stvec)
static RISCV_CSR_PMDEFAULT_CFG_FN(utvec)

//
// Table of formal parameter specifications
//
static riscvParameter formals[] = {

    // simulation controls
    {  RVPV_VARIANT, 0,                            VMI_ENUM_PARAM_SPEC  (riscvParamValues, variant,              0,               "Selects variant (either a generic UISA or a specific model)")},
    {  RVPV_ALL,     default_user_version,         VMI_ENUM_PARAM_SPEC  (riscvParamValues, user_version,         userVariants,    "Specify required User Architecture version")},
    {  RVPV_ALL,     default_priv_version,         VMI_ENUM_PARAM_SPEC  (riscvParamValues, priv_version,         privVariants,    "Specify required Privileged Architecture version")},
    {  RVPV_ALL,     0,                            VMI_BOOL_PARAM_SPEC  (riscvParamValues, verbose,              True,            "Specify verbose output messages")},
    {  RVPV_MPCORE,  default_numHarts,             VMI_UNS32_PARAM_SPEC (riscvParamValues, numHarts,             0, 0, 32,        "Specify the number of hart contexts in a multiprocessor")},
    {  RVPV_S,       default_updatePTEA,           VMI_BOOL_PARAM_SPEC  (riscvParamValues, updatePTEA,           False,           "Specify whether hardware update of PTE A bit is supported")},
    {  RVPV_S,       default_updatePTED,           VMI_BOOL_PARAM_SPEC  (riscvParamValues, updatePTED,           False,           "Specify whether hardware update of PTE D bit is supported")},
    {  RVPV_ALL,     default_unaligned,            VMI_BOOL_PARAM_SPEC  (riscvParamValues, unaligned,            False,           "Specify whether the processor supports unaligned memory accesses")},
    {  RVPV_ALL,     default_wfi_is_nop,           VMI_BOOL_PARAM_SPEC  (riscvParamValues, wfi_is_nop,           False,           "Specify whether WFI should be treated as a NOP (if not, halt while waiting for interrupts)")},
    {  RVPV_ALL,     default_mtvec_is_ro,          VMI_BOOL_PARAM_SPEC  (riscvParamValues, mtvec_is_ro,          False,           "Specify whether mtvec CSR is read-only")},
    {  RVPV_ALL,     default_tvec_align,           VMI_UNS32_PARAM_SPEC (riscvParamValues, tvec_align,           0, 0, (1<<16),   "Specify hardware-enforced alignment of mtvec/stvec/utvec when Vectored interrupt mode enabled")},
    {  RVPV_ALL,     default_mtvec_mask,           VMI_UNS64_PARAM_SPEC (riscvParamValues, mtvec_mask,           0, 0, -1,        "Specify hardware-enforced mask of writable bits in mtvec register")},
    {  RVPV_S,       default_stvec_mask,           VMI_UNS64_PARAM_SPEC (riscvParamValues, stvec_mask,           0, 0, -1,        "Specify hardware-enforced mask of writable bits in stvec register")},
    {  RVPV_N,       default_utvec_mask,           VMI_UNS64_PARAM_SPEC (riscvParamValues, utvec_mask,           0, 0, -1,        "Specify hardware-enforced mask of writable bits in utvec register")},
    {  RVPV_ALL,     default_tval_ii_code,         VMI_BOOL_PARAM_SPEC  (riscvParamValues, tval_ii_code,         False,           "Specify whether mtval/stval contain faulting instruction bits on illegal instruction exception")},
    {  RVPV_ALL,     default_cycle_undefined,      VMI_BOOL_PARAM_SPEC  (riscvParamValues, cycle_undefined,      False,           "Specify that the cycle CSR is undefined (reads to it are emulated by a Machine mode trap)")},
    {  RVPV_ALL,     default_time_undefined,       VMI_BOOL_PARAM_SPEC  (riscvParamValues, time_undefined,       False,           "Specify that the time CSR is undefined (reads to it are emulated by a Machine mode trap)")},
    {  RVPV_ALL,     default_instret_undefined,    VMI_BOOL_PARAM_SPEC  (riscvParamValues, instret_undefined,    False,           "Specify that the instret CSR is undefined (reads to it are emulated by a Machine mode trap)")},
    {  RVPV_ALL,     default_enable_CSR_bus,       VMI_BOOL_PARAM_SPEC  (riscvParamValues, enable_CSR_bus,       False,           "Add artifact CSR bus port, allowing CSR registers to be externally implemented")},
    {  RVPV_FP,      default_d_requires_f,         VMI_BOOL_PARAM_SPEC  (riscvParamValues, d_requires_f,         False,           "If D and F extensions are separately enabled in the misa CSR, whether D is enabled only if F is enabled")},
    {  RVPV_FP,      default_fs_always_dirty,      VMI_BOOL_PARAM_SPEC  (riscvParamValues, fs_always_dirty,      False,           "When FPU is enabled, whether mstatus.FS is always 3 (indicating dirty)")},
    {  RVPV_S,       default_ASID_bits,            VMI_UNS32_PARAM_SPEC (riscvParamValues, ASID_bits,            0, 0, 16,        "Specify the number of implemented ASID bits")},
    {  RVPV_A,       default_lr_sc_grain,          VMI_UNS32_PARAM_SPEC (riscvParamValues, lr_sc_grain,          1, 1, (1<<16),   "Specify byte granularity of ll/sc lock region (constrained to a power of two)")},
    {  RVPV_ALL,     default_reset_address,        VMI_UNS64_PARAM_SPEC (riscvParamValues, reset_address,        0, 0, -1,        "Override reset vector address")},
    {  RVPV_ALL,     default_nmi_address,          VMI_UNS64_PARAM_SPEC (riscvParamValues, nmi_address,          0, 0, -1,        "Override NMI vector address")},
    {  RVPV_ALL,     default_PMP_grain,            VMI_UNS32_PARAM_SPEC (riscvParamValues, PMP_grain,            0, 0, 29,        "Specify PMP region granularity, G (0 => 4 bytes, 1 => 8 bytes, etc)")},
    {  RVPV_ALL,     default_PMP_registers,        VMI_UNS32_PARAM_SPEC (riscvParamValues, PMP_registers,        0, 0, 16,        "Specify the number of implemented PMP address registers")},
    {  RVPV_S,       default_Sv_modes,             VMI_UNS32_PARAM_SPEC (riscvParamValues, Sv_modes,             0, 0, (1<<16)-1, "Specify bit mask of implemented Sv modes (e.g. 1<<8 is Sv39)")},
    {  RVPV_ALL,     default_local_int_num,        VMI_UNS32_PARAM_SPEC (riscvParamValues, local_int_num,        0, 0, 48,        "Specify number of supplemental local interrupts")},

    // fundamental configuration
    {  RVPV_ALL,     0,                            VMI_ENDIAN_PARAM_SPEC(riscvParamValues, endian,                                "Model endian")},

    // ISA configuration
    {  RVPV_ALL,     default_misa_MXL,             VMI_UNS32_PARAM_SPEC (riscvParamValues, misa_MXL,             1, 1, 2,         "Override default value of misa.MXL")},
    {  RVPV_ALL,     0,                            VMI_UNS32_PARAM_SPEC (riscvParamValues, misa_MXL_mask,        0, 0, 3,         "Override mask of writable bits in misa.MXL")},
    {  RVPV_ALL,     default_misa_Extensions,      VMI_UNS32_PARAM_SPEC (riscvParamValues, misa_Extensions,      0, 0, (1<<26)-1, "Override default value of misa.Extensions")},
    {  RVPV_ALL,     default_misa_Extensions_mask, VMI_UNS32_PARAM_SPEC (riscvParamValues, misa_Extensions_mask, 0, 0, (1<<26)-1, "Override mask of writable bits in misa.Extensions")},
    {  RVPV_ALL,     default_mvendorid,            VMI_UNS64_PARAM_SPEC (riscvParamValues, mvendorid,            0, 0, -1,        "Override mvendorid register")},
    {  RVPV_ALL,     default_marchid,              VMI_UNS64_PARAM_SPEC (riscvParamValues, marchid,              0, 0, -1,        "Override marchid register")},
    {  RVPV_ALL,     default_mimpid,               VMI_UNS64_PARAM_SPEC (riscvParamValues, mimpid,               0, 0, -1,        "Override mimpid register")},
    {  RVPV_ALL,     default_mhartid,              VMI_UNS64_PARAM_SPEC (riscvParamValues, mhartid,              0, 0, -1,        "Override mhartid register")},
    {  RVPV_ALL,     default_mtvec,                VMI_UNS64_PARAM_SPEC (riscvParamValues, mtvec,                0, 0, -1,        "Override mtvec register")},
    {  RVPV_FP,      0,                            VMI_UNS32_PARAM_SPEC (riscvParamValues, mstatus_FS,           0, 0, 3,         "Override default value of mstatus.FS (initial state of floating point unit)")},

    // KEEP LAST
    {  RVPV_ALL,     0,                            VMI_END_PARAM}
};

//
// Return any parent of the passed processor
//
inline static riscvP getParent(riscvP riscv) {
    return (riscvP)vmirtGetSMPParent((vmiProcessorP)riscv);
}

//
// Should this configuration be presented as a public one?
//
inline static Bool selectConfig(riscvConfigCP cfg) {
    return True;
}

//
// Should this parameter be presented as a public one for the selected variant?
//
static Bool selectParameter(riscvConfigCP cfg, riscvParameterP param) {

    if(cfg) {

        Bool   isCluster = cfg->members;

        // cluster exposes only variant parameter
        if(!(param->variant & RVPV_VARIANT) && isCluster) {
            return False;
        }

        // include parameters that are only required when floating-point is
        // present
        if((param->variant & RVPV_FP) && !(cfg->arch&ISA_DF)) {
            return False;
        }

        // include parameters that are only required when atomic extension is
        // present
        if((param->variant & RVPV_A) && !(cfg->arch&ISA_A)) {
            return False;
        }

        // include parameters that are only required when Supervisor mode is
        // present
        if((param->variant & RVPV_S) && !(cfg->arch&ISA_S)) {
            return False;
        }

        // include parameters that are only required when User mode interrupts
        // are implemented
        if((param->variant & RVPV_N) && !(cfg->arch&ISA_N)) {
            return False;
        }

        // include parameters that are only required for multicore variants
        if((param->variant & RVPV_MPCORE) && !cfg->numHarts) {
            return False;
        }
    }

    return True;
}

//
// Count the number of visible variants
//
static Uns32 countVariants(riscvConfigCP cfg) {

    Uns32 i = 0;

    while(cfg->name) {
        i++;
        cfg++;
    }

    return i;
}

//
// Count the number of visible parameters
//
static Uns32 countParameters(riscvConfigCP cfg, riscvParameterP param) {

    Uns32 i = 0;

    while(param->parameter.name) {

        if(selectParameter(cfg, param)) {
            i++;
        }

        param++;
    }

    return i;
}

//
// Get any explicitly-selected configuration
//
static riscvConfigCP getSelectedConfig(riscvConfigCP list, const char *variant) {

    riscvConfigCP cfg = 0;

    // scan for any configuration matching the given name
    if(variant) {
        for(cfg=list; cfg->name; cfg++) {
            if(!strcmp(cfg->name, variant)) {
                break;
            }
        }
    }

    return (cfg && cfg->name) ? cfg : 0;
}

//
// Create configuration list applicable to the indicated variant, or a superset
// configuration list of no variant is specified
//
static vmiEnumParameterP createVariantList(riscvP riscv, riscvConfigCP cfg) {

    riscvConfigCP     cfgList = riscvGetConfigList(riscv);
    vmiEnumParameterP result;
    vmiEnumParameterP prm;
    Uns32             i;

    // count the number of entries in the variant list
    Uns32 entries = countVariants(cfgList);

    // allocate the variant list, including NULL terminator
    result = STYPE_CALLOC_N(vmiEnumParameter, entries+1);

    // fill visible entries in the variant list
    for(i=0, prm=result, cfg=cfgList; cfg->name; i++, cfg++) {

        if(selectConfig(cfg)) {

            prm->name  = cfg->name;
            prm->value = i;

            prm++;
        }
    }

    // return resulting list
    return result;
}

//
// Create parameter list applicable to the indicated variant
//
static vmiParameterP createParameterList(
    riscvP        riscv,
    riscvConfigCP first,
    riscvConfigCP cfg
) {
    riscvParameterP src = formals;
    vmiParameterP   dst;
    vmiParameterP   result;
    Uns32           i;

    // count the number of entries in the parameter list
    Uns32 entries = countParameters(cfg, src);

    // allocate the parameter list, including NULL terminator
    result = STYPE_CALLOC_N(vmiParameter, entries+1);

    // fill visible entries in the variant list
    for(i=0, dst=result; src->parameter.name; i++, src++) {

        if(selectParameter(cfg, src)) {

            *dst = src->parameter;

            // fill variant list
            if(src->variant & RVPV_VARIANT) {
                dst->u.enumParam.legalValues = riscv->variantList;
            }

            // override default if required
            if(src->defaultCB) {
                src->defaultCB(cfg ? : first, dst);
            }

            dst++;
        }
    }

    // return resulting list
    return result;
}

//
// Given a variant for the cluster root, infer the variant at a sublevel
//
static const char *refineVariant(riscvP riscv, const char *variant) {

    if(riscv) {

        riscvP parent;

        while((parent=getParent(riscv))) {

            if(riscvIsCluster(parent)) {
                variant = riscvGetClusterVariant(parent, riscv);
                break;
            } else {
                riscv = parent;
            }
        }
    }

    return variant;
}

//
// Function to iterate the parameter specifications
//
VMI_PROC_PARAM_SPECS_FN(riscvGetParamSpec) {

    riscvP        riscv = (riscvP)processor;
    vmiParameterP this  = prev ? prev+1 : riscv->parameters;

    return this && this->name ? this : NULL;
}

//
// Get the size of the parameter values table
//
VMI_PROC_PARAM_TABLE_SIZE_FN(riscvParamValueSize) {

    riscvP riscv    = (riscvP)processor;
    riscvP parent = riscv ? getParent(riscv) : 0;

    if(parent && !riscvIsCluster(parent)) {

        // allow parameterization of multiclusters and root level objects only
        return 0;

    } else {

        // refine variant in cluster if required
        variant = refineVariant(riscv, variant);

        // create parameter definition list
        riscvConfigCP cfgList = riscvGetConfigList(riscv);
        riscvConfigCP cfg     = getSelectedConfig(cfgList, variant);

        riscv->variantList = createVariantList(riscv, cfg);
        riscv->parameters  = createParameterList(riscv, cfgList, cfg);

        return sizeof(riscvParamValues);
    }
}

//
// Free parameter definitions
//
void riscvFreeParameters(riscvP riscv) {

    if(riscv->variantList) {
        STYPE_FREE(riscv->variantList);
    }

    if(riscv->parameters) {
        STYPE_FREE(riscv->parameters);
    }
}

//
// Get any configuration with the given name
//
riscvConfigCP riscvGetNamedConfig(riscvConfigCP cfgList, const char *variant) {
    return getSelectedConfig(cfgList, variant);
}

//
// Return Privileged Architecture description
//
const char *riscvGetPrivVersionDesc(riscvP riscv) {
    return privVariants[RISCV_PRIV_VERSION(riscv)].description;
}

//
// Return User Architecture description
//
const char *riscvGetUserVersionDesc(riscvP riscv) {
    return userVariants[RISCV_USER_VERSION(riscv)].description;
}

