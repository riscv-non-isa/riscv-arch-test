/*
 * Copyright (c) 2005-2018 Imperas Software Ltd., www.imperas.com
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

// Standard header files
#include <stdio.h>
#include <string.h>

// VMI header files
#include "vmi/vmiAttrs.h"
#include "vmi/vmiMessage.h"
#include "vmi/vmiRt.h"

// Model header files
#include "riscvBus.h"
#include "riscvConfig.h"
#include "riscvCSR.h"
#include "riscvDebug.h"
#include "riscvDoc.h"
#include "riscvExceptions.h"
#include "riscvFunctions.h"
#include "riscvMessage.h"
#include "riscvMorph.h"
#include "riscvParameters.h"
#include "riscvStructure.h"
#include "riscvUtils.h"
#include "riscvVM.h"
#include "riscvVMConstants.h"


//
// Initialize enhanced model support callbacks
//
static void initModelCBs(riscvP riscv) {

    // from riscvUtils.h
    riscv->cb.getXlenMode        = riscvGetXlenMode;
    riscv->cb.getXlenArch        = riscvGetXlenArch;
    riscv->cb.getXRegName        = riscvGetXRegName;
    riscv->cb.getFRegName        = riscvGetFRegName;

    // from riscvExceptions.h
    riscv->cb.illegalInstruction = riscvIllegalInstruction;
    riscv->cb.takeException      = riscvTakeException;

    // from riscvMorph.h
    riscv->cb.instructionEnabled = riscvInstructionEnabled;
    riscv->cb.getVMIReg          = riscvGetVMIReg;
    riscv->cb.getVMIRegFS        = riscvGetVMIRegFS;
    riscv->cb.writeRegSize       = riscvWriteRegSize;
    riscv->cb.writeReg           = riscvWriteReg;

    // from riscvCSR.h
    riscv->cb.newCSR             = riscvNewCSR;
}

//
// Return processor configuration variant argument
//
static riscvConfigCP getConfigVariantArg(riscvP riscv, riscvParamValuesP params) {

    riscvConfigCP cfgList = riscvGetConfigList(riscv);
    riscvConfigCP match   = cfgList + params->variant;

    // report the value specified for an option in verbose mode
    if(!params->SETBIT(variant)) {
        vmiMessage("I", CPU_PREFIX"_ANS1",
            "Attribute '%s' not specified; defaulting to '%s'",
            "variant",
            match->name
        );
    }

    // return matching configuration
    return match;
}

//
// Return the number of child processors of he give processor
//
inline static riscvP getParent(riscvP riscv) {
    return (riscvP)vmirtGetSMPParent((vmiProcessorP)riscv);
}

//
// Return the number of child processors of he give processor
//
inline static Uns32 getNumChildren(riscvP riscv) {
    return riscv->parent ? 0 : riscv->configInfo.numHarts;
}

//
// Set name for a cluster member
//
static void setClusterMemberName(riscvP hart, riscvP cluster) {

    const char *baseName = vmirtProcessorName((vmiProcessorP)cluster);
    Uns32       index    = RD_CSR(hart, mhartid);
    char        name[strlen(baseName)+16];

    sprintf(name, "%s_hart%u", baseName, index);

    vmirtSetProcessorName((vmiProcessorP)hart, name);
}

//
// Apply parameters applicable at root level
//
static void applyParamsSMP(riscvP riscv) {

    riscvConfigP      cfg    = &riscv->configInfo;
    riscvParamValuesP params = riscv->params;

    // get default variant information
    *cfg = *getConfigVariantArg(riscv, params);

    // set initial mode
    riscvSetMode(riscv, RISCV_MODE_MACHINE);

    // set simulation controls
    riscv->verbose = params->verbose;

    // set endian
    riscv->iendian = riscv->dendian = params->endian;

    // get architectural configuration parameters
    Uns32             misa_MXL             = params->misa_MXL;
    Uns32             misa_MXL_mask        = params->misa_MXL_mask;
    riscvArchitecture misa_Extensions      = params->misa_Extensions;
    riscvArchitecture misa_Extensions_mask = params->misa_Extensions_mask;
    Int32             lr_sc_grain          = params->lr_sc_grain;

    // get uninterpreted CSR configuration parameters
    cfg->csr.mvendorid.u64.bits    = params->mvendorid;
    cfg->csr.marchid.u64.bits      = params->marchid;
    cfg->csr.mimpid.u64.bits       = params->mimpid;
    cfg->csr.mhartid.u64.bits      = params->mhartid;
    cfg->csr.mtvec.u64.bits        = params->mtvec;
    cfg->csr.mstatus.u64.fields.FS = params->mstatus_FS;

    // get uninterpreted CSR mask configuration parameters
    cfg->csrMask.mtvec.u64.bits = params->mtvec_mask;
    cfg->csrMask.stvec.u64.bits = params->stvec_mask;
    cfg->csrMask.utvec.u64.bits = params->utvec_mask;

    // get uninterpreted architectural configuration parameters
    cfg->user_version      = params->user_version;
    cfg->priv_version      = params->priv_version;
    cfg->reset_address     = params->reset_address;
    cfg->nmi_address       = params->nmi_address;
    cfg->ASID_bits         = params->ASID_bits;
    cfg->PMP_registers     = params->PMP_registers;
    cfg->Sv_modes          = params->Sv_modes | RISCV_VMM_BARE;
    cfg->local_int_num     = params->local_int_num;
    cfg->lr_sc_grain       = params->lr_sc_grain;
    cfg->numHarts          = params->numHarts;
    cfg->updatePTEA        = params->updatePTEA;
    cfg->updatePTED        = params->updatePTED;
    cfg->unaligned         = params->unaligned;
    cfg->wfi_is_nop        = params->wfi_is_nop;
    cfg->mtvec_is_ro       = params->mtvec_is_ro;
    cfg->tvec_align        = params->tvec_align;
    cfg->tval_ii_code      = params->tval_ii_code;
    cfg->cycle_undefined   = params->cycle_undefined;
    cfg->time_undefined    = params->time_undefined;
    cfg->instret_undefined = params->instret_undefined;
    cfg->enable_CSR_bus    = params->enable_CSR_bus;
    cfg->d_requires_f      = params->d_requires_f;
    cfg->fs_always_dirty   = params->fs_always_dirty;

    // adjust lr_sc_grain to a power of 2
    while(lr_sc_grain & ~(lr_sc_grain&-lr_sc_grain)) {
        lr_sc_grain &= ~(lr_sc_grain&-lr_sc_grain);
    }

    // warn if given lr_sc_grain was not a power of 2
    if(cfg->lr_sc_grain != lr_sc_grain) {
        vmiMessage("W", CPU_PREFIX"_GNP2",
            "'lr_sc_grain' (%u) is not a power of 2 - using %u",
            cfg->lr_sc_grain, lr_sc_grain
        );
        cfg->lr_sc_grain = lr_sc_grain;
    }

    if(misa_MXL==1) {

        // modify configuration for 32-bit cores
        Uns32 max_ASID_bits     =  9;
        Uns32 max_local_int_num = 16;

        // misa_MXL is not writable
        misa_MXL_mask = 0;

        // clamp ASID_bits to maximum
        if(cfg->ASID_bits>max_ASID_bits) {
            vmiMessage("W", CPU_PREFIX"_IASB",
                "'ASID_bits' (%u) exceeds maximum %u - using %u",
                cfg->ASID_bits, max_ASID_bits, max_ASID_bits
            );
            cfg->ASID_bits = max_ASID_bits;
        }

        // clamp max_local_int_num to maximum
        if(cfg->local_int_num>max_local_int_num) {
            vmiMessage("W", CPU_PREFIX"_ILIN",
                "'local_int_num' (%u) exceeds maximum %u - using %u",
                cfg->local_int_num, max_local_int_num, max_local_int_num
            );
            cfg->local_int_num = max_local_int_num;
        }

        // mask valid VM modes
        cfg->Sv_modes &= RISCV_VMM_32;

    } else {

        // modify configuration for 64-bit cores

        // mask valid VM modes
        cfg->Sv_modes &= RISCV_VMM_64;
    }

    // exactly one of I and E base ISA features must be present
    if(misa_Extensions & ISA_E) {
        misa_Extensions &= ~ISA_I;
    } else {
        misa_Extensions |= ISA_I;
    }

    // base architecture bits are not writable
    misa_Extensions_mask &= ~(ISA_I|ISA_E);

    // only bits that are initially non-zero in misa_Extensions are writable
    misa_Extensions_mask &= misa_Extensions;

    // define architecture and writable bits
    cfg->arch     = misa_Extensions      | (misa_MXL<<XLEN_SHIFT);
    cfg->archMask = misa_Extensions_mask | (misa_MXL_mask<<XLEN_SHIFT);

    // initialize ISA_XLEN in currentArch (required so WR_CSR_FIELD etc work
    // correctly)
    riscv->currentArch = misa_MXL<<XLEN_SHIFT;

    // set tag mask
    riscv->exclusiveTagMask = -lr_sc_grain;
}

//
// RISCV processor constructor
//
VMI_CONSTRUCTOR_FN(riscvConstructor) {

    riscvP riscv  = (riscvP)processor;
    riscvP parent = getParent(riscv);
    Uns32  index  = smpContext->index;

    if(parent) {

        // copy root from the parent
        riscv->smpRoot = parent->smpRoot;
        riscv->parent  = parent;

        // copy configuration from the parent
        riscv->flags       = parent->flags;
        riscv->configInfo  = parent->configInfo;
        riscv->currentArch = parent->currentArch;

    } else {

        // save specified parameter values during construction (allows a child
        // processor to see parent's parameters)
        riscv->params = parameterValues;

        // indicate this is the cluster root
        riscv->smpRoot = riscv;

        // save flags on processor structure
        riscv->flags = vmirtProcessorFlags(processor);

        // apply parameters at SMP root level
        applyParamsSMP(riscv);
    }

    // if this is a container, get the number of children
    Uns32 numChildren = getNumChildren(riscv);

    // is this a multicore processor container?
    if(numChildren) {

        // supply basic SMP configuration properties
        smpContext->isContainer = True;
        smpContext->numChildren = numChildren;

    } else {

        riscvP smpRoot = riscv->smpRoot;

        // initialize enhanced model support callbacks
        initModelCBs(riscv);

        // indicate no LR/SC is active initially and set tag mask
        riscv->exclusiveTag     = RISCV_NO_TAG;
        riscv->exclusiveTagMask = smpRoot->exclusiveTagMask;

        // initialize mask of implemented exceptions
        riscvSetExceptionMask(riscv);

        // initialize CSR state
        riscvCSRInit(riscv, index);

        // initialize FPU
        riscvConfigureFPU(riscv);

        // allocate net port descriptions
        riscvNewNetPorts(riscv);

        // create root level bus port specifications for leaf level ports
        riscvNewLeafBusPorts(riscv);

        // do initial reset
        riscvReset(riscv);
    }

    // set name if this is an MPCore member
    if(parent) {
        setClusterMemberName(riscv, parent);
    }
}

//
// RISCV processor post-constructor
//
VMI_POST_CONSTRUCTOR_FN(riscvPostConstructor) {

    riscvP riscv = (riscvP)processor;

    // install documentation after processor is initialized
    riscvDoc(riscv);

    // create root level bus port specifications for root level ports
    riscvNewRootBusPorts(riscv);
}

//
// Processor destructor
//
VMI_DESTRUCTOR_FN(riscvDestructor) {

    riscvP riscv = (riscvP)processor;

    // free register descriptions
    riscvFreeRegInfo(riscv);

    // free virtual memory structures
    riscvVMFree(riscv);

    // free parameter specifications
    riscvFreeParameters(riscv);

    // free net port descriptions
    riscvFreeNetPorts(riscv);

    // free bus port specifications
    riscvFreeBusPorts(riscv);

    // initialize CSR state
    riscvCSRFree(riscv);
}
