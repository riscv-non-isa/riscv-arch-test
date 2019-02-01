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

// Standard header files
#include <stdio.h>
#include <string.h>

// VMI header files
#include "vmi/vmiAttrs.h"
#include "vmi/vmiMessage.h"
#include "vmi/vmiRt.h"

// Model header files
#include "riscvCluster.h"
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
// Return processor configuration using variant argument
//
static riscvConfigCP getConfigVariantArg(riscvP riscv, riscvParamValuesP params) {

    riscvP        parent  = riscv->parent;
    riscvConfigCP cfgList = riscvGetConfigList(riscv);
    riscvConfigCP match;

    if(parent && riscvIsCluster(parent)) {

        match = riscvGetNamedConfig(
            cfgList, riscvGetClusterVariant(parent, riscv)
        );

    } else {

        match = cfgList + params->variant;

        // report the value specified for an option in verbose mode
        if(!params->SETBIT(variant)) {
            vmiMessage("I", CPU_PREFIX"_ANS1",
                "Attribute '%s' not specified; defaulting to '%s'",
                "variant",
                match->name
            );
        }
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
// Is the processor a cluster container?
//
inline static Bool isCluster(riscvP riscv) {
    return getNumChildren(riscv) && riscv->configInfo.members;
}

//
// Is the processor a cluster container?
//
inline static void setName(riscvP hart, const char *name) {
    vmirtSetProcessorName((vmiProcessorP)hart, name);
}

//
// Set name for an AMP cluster member
//
static void setAMPMemberName(riscvP hart, riscvP parent, const char *AMPName) {

    const char *baseName = vmirtProcessorName((vmiProcessorP)parent);
    char        name[strlen(baseName)+strlen(AMPName)+2];

    sprintf(name, "%s_%s", baseName, AMPName);

    setName(hart, name);
}

//
// Set name for a cluster member
//
static void setClusterMemberName(riscvP hart, riscvP cluster) {

    const char *baseName = vmirtProcessorName((vmiProcessorP)cluster);
    Uns32       index    = RD_CSR(hart, mhartid);
    char        name[strlen(baseName)+16];

    sprintf(name, "%s_hart%u", baseName, index);

    setName(hart, name);
}

//
// Return value adjusted to a power of two
//
static Uns64 powerOfTwo(Uns64 oldValue, const char *name) {

    Uns64 newValue = oldValue;

    // adjust lr_sc_grain to a power of 2
    while(newValue & ~(newValue&-newValue)) {
        newValue &= ~(newValue&-newValue);
    }

    // warn if given lr_sc_grain was not a power of 2
    if(oldValue != newValue) {
        vmiMessage("W", CPU_PREFIX"_GNP2",
            "'%s' ("FMT_Au") is not a power of 2 - using "FMT_Au,
            name, oldValue, newValue
        );
    }

    return newValue;
}

//
// Apply parameters applicable to SMP member
//
static void applyParamsSMP(riscvP riscv, riscvParamValuesP params) {

    riscvConfigP cfg = &riscv->configInfo;

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
    cfg->PMP_grain         = params->PMP_grain;
    cfg->PMP_registers     = params->PMP_registers;
    cfg->Sv_modes          = params->Sv_modes | RISCV_VMM_BARE;
    cfg->local_int_num     = params->local_int_num;
    cfg->lr_sc_grain       = powerOfTwo(params->lr_sc_grain, "lr_sc_grain");
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
// Apply parameters applicable at root level
//
static void applyParams(riscvP riscv, riscvParamValuesP params) {

    // copy configuration
    riscv->configInfo = *getConfigVariantArg(riscv, params);

    if(!riscvIsCluster(riscv)) {
        applyParamsSMP(riscv, params);
    }
}

//
// RISCV processor constructor
//
VMI_CONSTRUCTOR_FN(riscvConstructor) {

    riscvP riscv  = (riscvP)processor;
    riscvP parent = getParent(riscv);

    // set hierarchical properties
    riscv->parent  = parent;
    riscv->smpRoot = parent ? parent->smpRoot : riscv;
    riscv->flags   = parent ? parent->flags : vmirtProcessorFlags(processor);

    // use parameters from parent if that is an SMP container
    if(parent && !riscvIsCluster(parent)) {
        parameterValues = parent->paramValues;
    }

    // apply parameters
    applyParams(riscv, parameterValues);

    // if this is a container, get the number of children
    Uns32 numChildren = getNumChildren(riscv);

    // is this a multicore processor container?
    if(numChildren) {

        // supply basic SMP configuration properties
        smpContext->isContainer = True;
        smpContext->numChildren = numChildren;

        // save parameters for use in child
        riscv->paramValues = parameterValues;

    } else {

        // initialize enhanced model support callbacks
        initModelCBs(riscv);

        // set initial mode
        riscvSetMode(riscv, RISCV_MODE_MACHINE);

        // indicate no LR/SC is active initially
        riscv->exclusiveTag = RISCV_NO_TAG;

        // initialize mask of implemented exceptions
        riscvSetExceptionMask(riscv);

        // initialize CSR state
        riscvCSRInit(riscv, smpContext->index);

        // initialize FPU
        riscvConfigureFPU(riscv);

        // allocate net port descriptions
        riscvNewNetPorts(riscv);

        // create root level bus port specifications for leaf level ports
        riscvNewLeafBusPorts(riscv);

        // do initial reset
        riscvReset(riscv);
    }

    // set name if this is a cluster member
    if(!parent) {
        // not a cluster member
    } else if(riscvIsCluster(parent)) {
        setAMPMemberName(riscv, parent, riscv->configInfo.name);
    } else {
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


////////////////////////////////////////////////////////////////////////////////
// SAVE/RESTORE SUPPORT
////////////////////////////////////////////////////////////////////////////////

//
// Called at start of save
//
static VMI_SMP_ITER_FN(startSave) {

    riscvP riscv = (riscvP)processor;

    // indicate save/restore is active
    riscv->inSaveRestore = True;
}

//
// Called at end of save
//
static VMI_SMP_ITER_FN(endSave) {

    riscvP riscv = (riscvP)processor;

    // indicate save/restore is inactive
    riscv->inSaveRestore = False;
}

//
// Called at start of restore
//
static VMI_SMP_ITER_FN(startRestore) {

    riscvP riscv = (riscvP)processor;

    // indicate save/restore is active
    riscv->inSaveRestore = True;

    // disable debug flags on this processor
    riscv->flagsRestore = riscv->flags;
    riscv->flags       &= ~RISCV_DEBUG_UPDATE_MASK;
}

//
// Called at end of restore
//
static VMI_SMP_ITER_FN(endRestore) {

    riscvP riscv = (riscvP)processor;

    // indicate save/restore is inactive
    riscv->inSaveRestore = False;

    // enable debug flags on this processor
    riscv->flags = riscv->flagsRestore;
}

//
// Refresh mode on a restore (ensuring that apparent mode always changes)
//
static void refreshModeRestore(riscvP riscv) {

    riscvDMode mode = getCurrentMode(riscv);

    riscv->mode = ~mode;

    riscvSetMode(riscv, mode);
}

//
// Called when processor is being saved
//
VMI_SAVE_STATE_FN(riscvSaveState) {

    riscvP riscv = (riscvP)processor;

    switch(phase) {

        case SRT_BEGIN:
            // start of SMP cluster
            vmirtIterAllProcessors(processor, startSave, 0);
            break;

        case SRT_BEGIN_CORE:
            // start of individual core
            break;

        case SRT_END_CORE:
            // end of individual core
            VMIRT_SAVE_FIELD(cxt, riscv, mode);
            VMIRT_SAVE_FIELD(cxt, riscv, exclusiveTag);
            break;

        case SRT_END:
            // end of SMP cluster (see below)
            break;

        default:
            // not reached
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    // save CSR state not covered by register read/write API
    riscvCSRSave(riscv, cxt, phase);

    // save VM register state not covered by register read/write API
    riscvVMSave(riscv, cxt, phase);

    // save net state not covered by register read/write API
    riscvNetSave(riscv, cxt, phase);

    // end of SMP cluster
    if(phase==SRT_END) {
        vmirtIterAllProcessors(processor, endSave, 0);
    }
}

//
// Called when processor is being restored
//
VMI_RESTORE_STATE_FN(riscvRestoreState) {

    riscvP riscv = (riscvP)processor;

    switch(phase) {

        case SRT_BEGIN:
            // start of SMP cluster
            vmirtIterAllProcessors(processor, startRestore, 0);
            break;

        case SRT_BEGIN_CORE:
            // start of individual core
            riscvUpdateExclusiveAccessCallback(riscv, False);
            break;

        case SRT_END_CORE:
            // end of individual core
            VMIRT_RESTORE_FIELD(cxt, riscv, mode);
            VMIRT_RESTORE_FIELD(cxt, riscv, exclusiveTag);
            refreshModeRestore(riscv);
            riscvUpdateExclusiveAccessCallback(riscv, True);
            break;

        case SRT_END:
            // end of SMP cluster (see below)
            break;

        default:
            // not reached
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }

    // restore CSR state not covered by register read/write API
    riscvCSRRestore(riscv, cxt, phase);

    // restore VM register state not covered by register read/write API
    riscvVMRestore(riscv, cxt, phase);

    // restore net state not covered by register read/write API
    riscvNetRestore(riscv, cxt, phase);

    // end of SMP cluster
    if(phase==SRT_END) {
        vmirtIterAllProcessors(processor, endRestore, 0);
    }
}


