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

// Standard header files
#include <stdio.h>
#include <string.h>

// VMI header files
#include "vmi/vmiAttrs.h"
#include "vmi/vmiMessage.h"
#include "vmi/vmiRt.h"

// Model header files
#include "riscvCLIC.h"
#include "riscvCluster.h"
#include "riscvBus.h"
#include "riscvConfig.h"
#include "riscvCSR.h"
#include "riscvDebug.h"
#include "riscvDecode.h"
#include "riscvDisassemble.h"
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
// Initialize enhanced model support callbacks that apply at all levels
//
static void initAllModelCBs(riscvP riscv) {

    // from riscvUtils.h
    riscv->cb.registerExtCB    = riscvRegisterExtCB;
    riscv->cb.getExtClientData = riscvGetExtClientData;
    riscv->cb.getExtConfig     = riscvGetExtConfig;
}

//
// Initialize enhanced model support callbacks that apply at leaf levels
//
static void initLeafModelCBs(riscvP riscv) {

    // from riscvUtils.h
    riscv->cb.getXlenMode        = riscvGetXlenMode;
    riscv->cb.getXlenArch        = riscvGetXlenArch;
    riscv->cb.getXRegName        = riscvGetXRegName;
    riscv->cb.getFRegName        = riscvGetFRegName;
    riscv->cb.getVRegName        = riscvGetVRegName;
    riscv->cb.setTMode           = riscvSetTMode;
    riscv->cb.getTMode           = riscvGetTMode;
    riscv->cb.getDataEndian      = riscvGetDataEndian;
    riscv->cb.readCSR            = riscvReadCSRNum;
    riscv->cb.writeCSR           = riscvWriteCSRNum;
    riscv->cb.readBaseCSR        = riscvReadBaseCSR;
    riscv->cb.writeBaseCSR       = riscvWriteBaseCSR;

    // from riscvExceptions.h
    riscv->cb.testInterrupt      = riscvTestInterrupt;
    riscv->cb.illegalInstruction = riscvIllegalInstruction;
    riscv->cb.takeException      = riscvTakeAsynchonousException;

    // from riscvDecode.h
    riscv->cb.fetchInstruction   = riscvExtFetchInstruction;

    // from riscvDisassemble.h
    riscv->cb.disassInstruction  = riscvDisassembleInstruction;

    // from riscvMorph.h
    riscv->cb.instructionEnabled = riscvInstructionEnabled;
    riscv->cb.morphExternal      = riscvMorphExternal;
    riscv->cb.morphIllegal       = riscvEmitIllegalInstructionMessage;
    riscv->cb.getVMIReg          = riscvGetVMIReg;
    riscv->cb.getVMIRegFS        = riscvGetVMIRegFS;
    riscv->cb.writeRegSize       = riscvWriteRegSize;
    riscv->cb.writeReg           = riscvWriteReg;
    riscv->cb.getFPFlagsMt       = riscvGetFPFlagsMT;
    riscv->cb.getDataEndianMt    = riscvGetCurrentDataEndianMT;
    riscv->cb.checkLegalRMMt     = riscvEmitCheckLegalRM;
    riscv->cb.morphVOp           = riscvMorphVOp;

    // from riscvCSR.h
    riscv->cb.newCSR             = riscvNewCSR;
}

//
// Return processor configuration using variant argument
//
static riscvConfigCP getConfigVariantArg(riscvP riscv, riscvParamValuesP params) {

    riscvConfigCP cfgList = riscvGetConfigList(riscv);
    riscvConfigCP match;

    if(riscvIsClusterMember(riscv)) {

        match = riscvGetNamedConfig(cfgList, riscvGetClusterVariant(riscv));

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
// Return the number of child processors of the given processor
//
inline static riscvP getParent(riscvP riscv) {
    return (riscvP)vmirtGetSMPParent((vmiProcessorP)riscv);
}

//
// Return the number of child processors of the given processor
//
inline static Uns32 getNumChildren(riscvP riscv) {
    return riscv->configInfo.numHarts;
}

//
// Give each sub-processor a unique name
//
VMI_SMP_NAME_FN(riscvGetSMPName) {

    const char   *baseName = vmirtProcessorName(parent);
    riscvP        rvParent = (riscvP)parent;
    riscvConfigCP cfg      = &rvParent->configInfo;

    if(riscvIsCluster(rvParent)) {
        sprintf(name, "%s_%s", baseName, cfg->members[smpIndex]);
    } else {
        sprintf(name, "%s_hart%u", baseName, cfg->csr.mhartid.u32.bits+smpIndex);
    }
}

//
// Return value adjusted to a power of two
//
static Uns64 powerOfTwo(Uns64 oldValue, const char *name) {

    Uns64 newValue = oldValue;

    // adjust newValue to a power of 2
    while(newValue & ~(newValue&-newValue)) {
        newValue &= ~(newValue&-newValue);
    }

    // warn if given oldValue was not a power of 2
    if(oldValue != newValue) {
        vmiMessage("W", CPU_PREFIX"_GNP2",
            "'%s' ("FMT_Au") is not a power of 2 - using "FMT_Au,
            name, oldValue, newValue
        );
    }

    return newValue;
}

//
// Handle absent bit manipulation subsets
//
#define ADD_BM_SET(_PROC, _CFG, _PARAMS, _NAME) { \
    if(!_PARAMS->_NAME) {                       \
        _CFG->bitmanip_absent |= RVBS_##_NAME;  \
    }                                           \
    if(_PARAMS->_NAME##__set) {                 \
        _PROC->commercial = True;               \
    }                                           \
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
    cfg->csr.mclicbase.u64.bits    = params->mclicbase;

    // get uninterpreted CSR mask configuration parameters
    cfg->csrMask.mtvec.u64.bits = params->mtvec_mask;
    cfg->csrMask.stvec.u64.bits = params->stvec_mask;
    cfg->csrMask.utvec.u64.bits = params->utvec_mask;
    cfg->csrMask.mtvt.u64.bits  = params->mtvt_mask;
    cfg->csrMask.stvt.u64.bits  = params->stvt_mask;
    cfg->csrMask.utvt.u64.bits  = params->utvt_mask;

    // get uninterpreted architectural configuration parameters
    cfg->user_version        = params->user_version;
    cfg->priv_version        = params->priv_version;
    cfg->vect_version        = params->vector_version;
    cfg->bitmanip_version    = params->bitmanip_version;
    cfg->fp16_version        = params->fp16_version;
    cfg->mstatus_fs_mode     = params->mstatus_fs_mode;
    cfg->reset_address       = params->reset_address;
    cfg->nmi_address         = params->nmi_address;
    cfg->ASID_bits           = params->ASID_bits;
    cfg->PMP_grain           = params->PMP_grain;
    cfg->PMP_registers       = params->PMP_registers;
    cfg->Sv_modes            = params->Sv_modes | RISCV_VMM_BARE;
    cfg->local_int_num       = params->local_int_num;
    cfg->unimp_int_mask      = params->unimp_int_mask;
    cfg->ecode_mask          = params->ecode_mask;
    cfg->ecode_nmi           = params->ecode_nmi;
    cfg->external_int_id     = params->external_int_id;
    cfg->force_mideleg       = params->force_mideleg;
    cfg->force_sideleg       = params->force_sideleg;
    cfg->no_ideleg           = params->no_ideleg;
    cfg->no_edeleg           = params->no_edeleg;
    cfg->lr_sc_grain         = powerOfTwo(params->lr_sc_grain, "lr_sc_grain");
    cfg->debug_mode          = params->debug_mode;
    cfg->debug_address       = params->debug_address;
    cfg->dexc_address        = params->dexc_address;
    cfg->updatePTEA          = params->updatePTEA;
    cfg->updatePTED          = params->updatePTED;
    cfg->unaligned           = params->unaligned;
    cfg->unalignedAMO        = params->unalignedAMO;
    cfg->wfi_is_nop          = params->wfi_is_nop;
    cfg->mtvec_is_ro         = params->mtvec_is_ro;
    cfg->counteren_mask      = params->counteren_mask;
    cfg->noinhibit_mask      = params->noinhibit_mask;
    cfg->tvec_align          = params->tvec_align;
    cfg->tval_zero           = params->tval_zero;
    cfg->tval_ii_code        = params->tval_ii_code;
    cfg->cycle_undefined     = params->cycle_undefined;
    cfg->time_undefined      = params->time_undefined;
    cfg->instret_undefined   = params->instret_undefined;
    cfg->enable_CSR_bus      = params->enable_CSR_bus;
    cfg->d_requires_f        = params->d_requires_f;
    cfg->xret_preserves_lr   = params->xret_preserves_lr;
    cfg->require_vstart0     = params->require_vstart0;
    cfg->ELEN                = powerOfTwo(params->ELEN, "ELEN");
    cfg->VLEN = cfg->SLEN    = powerOfTwo(params->VLEN, "VLEN");
    cfg->SEW_min             = powerOfTwo(params->SEW_min, "SEW_min");
    cfg->Zvlsseg             = params->Zvlsseg;
    cfg->Zvamo               = params->Zvamo;
    cfg->Zvediv              = params->Zvediv;
    cfg->CLICLEVELS          = params->CLICLEVELS;
    cfg->CLICANDBASIC        = params->CLICANDBASIC;
    cfg->CLICVERSION         = params->CLICVERSION;
    cfg->CLICINTCTLBITS      = params->CLICINTCTLBITS;
    cfg->CLICCFGMBITS        = params->CLICCFGMBITS;
    cfg->CLICCFGLBITS        = params->CLICCFGLBITS;
    cfg->CLICSELHVEC         = params->CLICSELHVEC;
    cfg->CLICXNXTI           = params->CLICXNXTI;
    cfg->CLICXCSW            = params->CLICXCSW;
    cfg->externalCLIC        = params->externalCLIC;
    cfg->tvt_undefined       = params->tvt_undefined;
    cfg->intthresh_undefined = params->intthresh_undefined;
    cfg->mclicbase_undefined = params->mclicbase_undefined;

    // handle SLEN (always the same as VLEN from version 1.0)
    if(!riscvVFSupport(riscv, RVVF_SLEN_IS_VLEN)) {
        cfg->SLEN = powerOfTwo(params->SLEN, "SLEN");
    } else if((params->VLEN!=params->SLEN) && params->SETBIT(SLEN)) {
        vmiMessage("W", CPU_PREFIX"_ISLEN",
            "'SLEN' parameter now ignored - using VLEN (%u)",
            cfg->SLEN
        );
    }

    // initialise vector-version-dependent mstatus.VS
    if(riscvVFSupport(riscv, RVVF_VS_STATUS_9)) {
        cfg->csr.mstatus.u64.fields.VS_9 = params->mstatus_VS;
    } else {
        cfg->csr.mstatus.u64.fields.VS_8 = params->mstatus_VS;
    }

    // initialise vector-version-dependent vtype format
    riscv->vtypeFormat = RV_VTF_0_9;

    // handle bit manipulation subset parameters
    cfg->bitmanip_absent = 0;
    ADD_BM_SET(riscv, cfg, params, Zba);
    ADD_BM_SET(riscv, cfg, params, Zbb);
    ADD_BM_SET(riscv, cfg, params, Zbc);
    ADD_BM_SET(riscv, cfg, params, Zbe);
    ADD_BM_SET(riscv, cfg, params, Zbf);
    ADD_BM_SET(riscv, cfg, params, Zbm);
    ADD_BM_SET(riscv, cfg, params, Zbp);
    ADD_BM_SET(riscv, cfg, params, Zbr);
    ADD_BM_SET(riscv, cfg, params, Zbs);
    ADD_BM_SET(riscv, cfg, params, Zbt);

    // set number of children
    Bool isSMPMember = riscv->parent && !riscvIsCluster(riscv->parent);
    cfg->numHarts = isSMPMember ? 0 : params->numHarts;

    // Zvqmac extension is only available after version RVVV_0_8_20191004
    cfg->Zvqmac = params->Zvqmac && (params->vector_version>RVVV_0_8_20191004);

    // force VLEN >= ELEN unless explicitly supported
    if((cfg->VLEN<cfg->ELEN) && !riscvVFSupport(riscv, RVVF_ELEN_GT_VLEN)) {
        vmiMessage("W", CPU_PREFIX"_IVLEN",
            "'VLEN' (%u) less than 'ELEN' (%u) - forcing VLEN=%u",
            cfg->VLEN, cfg->ELEN, cfg->ELEN
        );
        cfg->VLEN = cfg->ELEN;
    }

    // force SLEN <= VLEN
    if(cfg->SLEN>cfg->VLEN) {
        vmiMessage("W", CPU_PREFIX"_ISLEN",
            "'SLEN' (%u) exceeds 'VLEN' (%u) - forcing SLEN=%u",
            cfg->SLEN, cfg->VLEN, cfg->VLEN
        );
        cfg->SLEN = cfg->VLEN;
    }

    // force SEW_min <= ELEN
    if(cfg->SEW_min>cfg->ELEN) {
        vmiMessage("W", CPU_PREFIX"_ISEW",
            "'SEW_min' (%u) exceeds 'ELEN' (%u) - forcing SEW_min=%u",
            cfg->SEW_min, cfg->ELEN, cfg->ELEN
        );
        cfg->SEW_min = cfg->ELEN;
    }

    if(misa_MXL==1) {

        // modify configuration for 32-bit cores - misa_MXL is not writable
        misa_MXL_mask = 0;

        // mask valid VM modes
        cfg->Sv_modes &= RISCV_VMM_32;

    } else {

        // modify configuration for 64-bit cores

        // mask valid VM modes
        cfg->Sv_modes &= RISCV_VMM_64;
    }

    // include extensions specified by letter
    misa_Extensions      |= riscvParseExtensions(params->add_Extensions);
    misa_Extensions_mask |= riscvParseExtensions(params->add_Extensions_mask);

    // exactly one of I and E base ISA features must be present and initially
    // enabled; if the E bit is initially enabled, the I bit must be read-only
    // and zero
    if(misa_Extensions & ISA_E) {
        misa_Extensions      &= ~ISA_I;
        misa_Extensions_mask &= ~ISA_I;
    } else {
        misa_Extensions |= ISA_I;
    }

    // the E bit is always read only (it is a complement of the I bit)
    misa_Extensions_mask &= ~ISA_E;

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

    // allocate CSR remap list
    riscvNewCSRRemaps(riscv, params->CSR_remap);
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

    riscvP            riscv       = (riscvP)processor;
    riscvP            parent      = getParent(riscv);
    riscvParamValuesP paramValues = parameterValues;

    // indicate no interrupts are pending and enabled initially
    riscv->pendEnab.id  = RV_NO_INT;
    riscv->clicState.id = RV_NO_INT;
    riscv->clic.sel.id  = RV_NO_INT;

    // initialize enhanced model support callbacks that apply at all levels
    initAllModelCBs(riscv);

    // set hierarchical properties
    riscv->parent  = parent;
    riscv->smpRoot = parent ? parent->smpRoot : riscv;
    riscv->flags   = parent ? parent->flags : vmirtProcessorFlags(processor);

    // use parameters from parent if that is an SMP container
    if(parent && !riscvIsCluster(parent)) {
        paramValues = parent->paramValues;
    }

    // apply parameters
    applyParams(riscv, paramValues);

    // if this is a container, get the number of children
    Uns32 numChildren = getNumChildren(riscv);

    // is this a multicore processor container?
    if(numChildren) {

        // supply basic SMP configuration properties
        smpContext->isContainer = True;
        smpContext->numChildren = numChildren;

        // save parameters for use in child
        riscv->paramValues = paramValues;

        // save the number of child harts
        riscv->numHarts = numChildren;

    } else {

        // initialize enhanced model support callbacks that apply at leaf levels
        initLeafModelCBs(riscv);

        // set initial mode
        riscvSetMode(riscv, RISCV_MODE_MACHINE);

        // indicate no LR/SC is active initially
        riscv->exclusiveTag = RISCV_NO_TAG;

        // initialize mask of implemented exceptions
        riscvSetExceptionMask(riscv);

        // allocate PMP structures
        riscvVMNewPMP(riscv);

        // initialize CSR state
        riscvCSRInit(riscv, smpContext->index);

        // initialize FPU
        riscvConfigureFPU(riscv);

        // initialize vector unit
        riscvConfigureVector(riscv);

        // allocate net port descriptions
        riscvNewNetPorts(riscv);

        // create root level bus port specifications for leaf level ports
        riscvNewLeafBusPorts(riscv);

        // allocate timers
        riscvNewTimers(riscv);

        // allocate CLIC data structures if required
        if(CLICInternal(riscv)) {
            riscvNewCLIC(riscv, smpContext->index);
        }

        // do initial reset
        riscvReset(riscv);
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

    // free CSR state
    riscvCSRFree(riscv);

    // free exception state
    riscvExceptFree(riscv);

    // free vector extension data structures
    riscvFreeVector(riscv);

    // free timers
    riscvFreeTimers(riscv);

    // free CLIC data structures
    riscvFreeCLIC(riscv);

    // free PMP structures
    riscvVMFreePMP(riscv);
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

    // save timer state not covered by register read/write API
    riscvTimerSave(riscv, cxt, phase);

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

    // restore timer state not covered by register read/write API
    riscvTimerRestore(riscv, cxt, phase);

    // end of SMP cluster
    if(phase==SRT_END) {
        vmirtIterAllProcessors(processor, endRestore, 0);
    }
}


