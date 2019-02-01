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

// VMI header files
#include "vmi/vmiCxt.h"
#include "vmi/vmiMessage.h"
#include "vmi/vmiRt.h"

// model header files
#include "riscvDecode.h"
#include "riscvFunctions.h"
#include "riscvMessage.h"
#include "riscvMode.h"
#include "riscvStructure.h"
#include "riscvUtils.h"
#include "riscvVariant.h"
#include "riscvVM.h"


//
// Return any chld of the passed processor
//
inline static riscvP getChild(riscvP riscv) {
    return (riscvP)vmirtGetSMPChild((vmiProcessorP)riscv);
}

//
// Update the currently-enabled architecture settings
//
void riscvSetCurrentArch(riscvP riscv) {

    // derive new architecture value based on misa value
    riscvArchitecture arch = (
        RD_CSR_FIELD(riscv, misa, Extensions) |
        (RD_CSR_FIELD(riscv, misa, MXL)<<XLEN_SHIFT)
    );

    // mstatus.FS=0 disables floating point extensions
    if(!RD_CSR_FIELD(riscv, mstatus, FS)) {
        arch &= ~ISA_DF;
    }

    if(riscv->currentArch != arch) {

        vmiProcessorP processor = (vmiProcessorP)riscv;

        // update current block mask to match architecture
        vmirtSetBlockMask(processor, arch);

        // update current architecture on processor
        riscv->currentArch = arch;
    }
}

//
// Return the configured XLEN (may not be the current XLEN if dynamic update
// of XLEN is allowed)
//
Uns32 riscvGetXlenArch(riscvP riscv) {

    riscvArchitecture arch   = riscv->configInfo.arch;
    Uns32             result = 0;
    riscvP            child;

    if(arch & ISA_XLEN_64) {
        result = 64;
    } else if(arch & ISA_XLEN_32) {
        result = 32;
    } else if((child=getChild(riscv))) {
        return riscvGetXlenArch(child);
    } else {
        VMI_ABORT("invalid XLEN"); // LCOV_EXCL_LINE
    }

    return result;
}

//
// Return the configured FLEN (may not be the current FLEN if dynamic update
// of FLEN is allowed)
//
Uns32 riscvGetFlenArch(riscvP riscv) {

    riscvArchitecture arch   = riscv->configInfo.arch;
    Uns32             result = 0;

    if(arch & ISA_D) {
        result = 64;
    } else if(arch & ISA_F) {
        result = 32;
    }

    return result;
}

//
// Return the current XLEN
//
Uns32 riscvGetXlenMode(riscvP riscv) {

    riscvArchitecture arch   = riscv->currentArch;
    Uns32             result = 0;

    if(arch & ISA_XLEN_64) {
        result = 64;
    } else if(arch & ISA_XLEN_32) {
        result = 32;
    } else {
        VMI_ABORT("invalid XLEN"); // LCOV_EXCL_LINE
    }

    return result;
}

//
// Return endianness of access
//
VMI_ENDIAN_FN(riscvGetEndian) {

    riscvP riscv = (riscvP)processor;

    if(isFetch) {
        return riscv->iendian;
    } else {
        return riscv->dendian;
    }
}

//
// Return next PC after the given PC
//
VMI_NEXT_PC_FN(riscvNextPC) {

    // calculate nextPC ignoring wrapping
    riscvP riscv  = (riscvP)processor;
    Uns64  nextPC = thisPC + riscvGetInstructionSize(riscv, thisPC);

    // allow for wrapping if XLEN is 32
    if(riscvGetXlenMode(riscv)==32) {
        nextPC &= 0xffffffff;
    }

    return nextPC;
}

//
// Table of processor mode descriptions
//
// NOTE: The CPU Helper depends on the low order 2 bits of the code
//       matching the privilege level encoding for the mstatus.MPP field
//       defined in table 1.1 of RISC-V Privileged Architectures V1.10
//
static const vmiModeInfo modes[] = {

    [RISCV_MODE_USER] = {
        .name        = "User",
        .code        = RISCV_MODE_USER,
        .description = "User mode"
    },

    [RISCV_MODE_SUPERVISOR] = {
        .name        = "Supervisor",
        .code        = RISCV_MODE_SUPERVISOR,
        .description = "Supervisor mode"
    },

    [RISCV_MODE_HYPERVISOR] = {
        .name        = "Hypervisor",
        .code        = RISCV_MODE_HYPERVISOR,
        .description = "Hypervisor mode"
    },

    [RISCV_MODE_MACHINE] = {
        .name        = "Machine",
        .code        = RISCV_MODE_MACHINE,
        .description = "Machine mode"
    },

    // terminator
    {0}
};

//
// Get mode name for the indexed mode
//
const char *riscvGetModeName(riscvMode mode) {
    return modes[mode].name;
}

//
// Get current mode
//
VMI_GET_MODE_FN(riscvGetMode) {

    riscvP riscv = (riscvP)processor;

    return &modes[getCurrentMode(riscv)];
}

//
// Change processor mode
//
void riscvSetMode(riscvP riscv, riscvMode mode) {

    riscvDMode dMode = mode;

    // if executing in supervisor or user mode, include VM-enabled indication
    if((mode<=RISCV_MODE_SUPERVISOR) && (RD_CSR_FIELD(riscv, satp, MODE))) {
        dMode |= RISCV_DMODE_VM;
    } else {
        dMode &= ~RISCV_DMODE_VM;
    }

    // update mode if it has changed
    if(riscv->mode != dMode) {
        riscv->mode = dMode;
        vmirtSetMode((vmiProcessorP)riscv, dMode);
    }

    // refresh current data domain (may be modified by mstatus.MPRV, and may
    // have changed while taking an exception even if mode has not changed)
    riscvVMRefreshMPRVDomain(riscv);
}

//
// Return the minimum supported processor mode
//
riscvMode riscvGetMinMode(riscvP riscv) {

    if(riscv->configInfo.arch & ISA_U) {
        return RISCV_MODE_USER;
    } else if(riscv->configInfo.arch & ISA_S) {
        return RISCV_MODE_SUPERVISOR;
    } else {
        return RISCV_MODE_MACHINE;
    }
}

//
// Does the processor implement the given mode?
//
Bool riscvHasMode(riscvP riscv, riscvMode mode) {

    switch(mode) {
        case RISCV_MODE_USER:
            return riscv->configInfo.arch & ISA_U;
        case RISCV_MODE_SUPERVISOR:
            return riscv->configInfo.arch & ISA_S;
        case RISCV_MODE_MACHINE:
            return True;
        default:
            return False;
    }
}

//
// Iterate processor modes
//
VMI_MODE_INFO_FN(riscvModeInfo) {

    riscvP riscv = (riscvP)processor;

    // on the first call, start with the first member of the table
    if(!prev) {
        prev = modes-1;
    }

    // get the next member
    vmiModeInfoCP this = prev+1;

    // skip to the next implemented mode
    while((this->name) && !riscvHasMode(riscv, this->code)) {
        this++;
    }

    // return the next member, or NULL if at the end of the list
    return (this->name) ? this : 0;
}

//
// Return the indexed X register name
//
const char *riscvGetXRegName(Uns32 index) {

    static const char *map[32] = {
        [0] = "zero",
        [1] = "ra",
        [2] = "sp",
        [3] = "gp",
        [4] = "tp",
        [5] = "t0",
        [6] = "t1",
        [7] = "t2",
        [8] = "s0",
        [9] = "s1",
        [10] = "a0",
        [11] = "a1",
        [12] = "a2",
        [13] = "a3",
        [14] = "a4",
        [15] = "a5",
        [16] = "a6",
        [17] = "a7",
        [18] = "s2",
        [19] = "s3",
        [20] = "s4",
        [21] = "s5",
        [22] = "s6",
        [23] = "s7",
        [24] = "s8",
        [25] = "s9",
        [26] = "s10",
        [27] = "s11",
        [28] = "t3",
        [29] = "t4",
        [30] = "t5",
        [31] = "t6",
    };

    // sanity check index is in range
    VMI_ASSERT(index<32, "Illegal index %u", index);

    return map[index];
}

//
// Return the indexed F register name
//
const char *riscvGetFRegName(Uns32 index) {

    static const char *map[32] = {
        [0] = "ft0",
        [1] = "ft1",
        [2] = "ft2",
        [3] = "ft3",
        [4] = "ft4",
        [5] = "ft5",
        [6] = "ft6",
        [7] = "ft7",
        [8] = "fs0",
        [9] = "fs1",
        [10] = "fa0",
        [11] = "fa1",
        [12] = "fa2",
        [13] = "fa3",
        [14] = "fa4",
        [15] = "fa5",
        [16] = "fa6",
        [17] = "fa7",
        [18] = "fs2",
        [19] = "fs3",
        [20] = "fs4",
        [21] = "fs5",
        [22] = "fs6",
        [23] = "fs7",
        [24] = "fs8",
        [25] = "fs9",
        [26] = "fs10",
        [27] = "fs11",
        [28] = "ft8",
        [29] = "ft9",
        [30] = "ft10",
        [31] = "ft11",
    };

    // sanity check index is in range
    VMI_ASSERT(index<32, "Illegal index %u", index);

    return map[index];
}

//
// Return index for the first feature identified by the given feature id
//
static Uns32 getFeatureIndex(riscvArchitecture feature) {

    Uns32 index = -1;

    // select first indicated feature
    feature = feature & -feature;

    // convert to index
    while(feature) {
        feature >>= 1;
        index++;
    }

    return index;
}

//
// Get character identifier for the first feature identified by the given
// feature id
//
char riscvGetFeatureChar(riscvArchitecture feature) {

    return getFeatureIndex(feature)+'A';
}

//
// Get description for the first feature identified by the given feature id
//
const char *riscvGetFeatureName(riscvArchitecture feature) {

    // table mapping to feature descriptions
    static const char *featureDescs[32] = {
        [RISCV_FEATURE_INDEX(XLEN32_CHAR)] = "32-bit XLEN",
        [RISCV_FEATURE_INDEX(XLEN64_CHAR)] = "64-bit XLEN",
        [RISCV_FEATURE_INDEX('A')]         = "extension A (atomic instructions)",
        [RISCV_FEATURE_INDEX('C')]         = "extension C (compressed instructions)",
        [RISCV_FEATURE_INDEX('E')]         = "RV32E base ISA",
        [RISCV_FEATURE_INDEX('D')]         = "extension D (double-precision floating point)",
        [RISCV_FEATURE_INDEX('F')]         = "extension F (single-precision floating point)",
        [RISCV_FEATURE_INDEX('I')]         = "RV32I/64I/128I base ISA",
        [RISCV_FEATURE_INDEX('M')]         = "extension M (integer multiply/divide instructions)",
        [RISCV_FEATURE_INDEX('N')]         = "extension N (user-level interrupts)",
        [RISCV_FEATURE_INDEX('S')]         = "extension S (Supervisor mode)",
        [RISCV_FEATURE_INDEX('U')]         = "extension U (User mode)",
        [RISCV_FEATURE_INDEX('X')]         = "extension X (non-standard extensions present)"
    };

    // get feature description
    return featureDescs[getFeatureIndex(feature)];
}


////////////////////////////////////////////////////////////////////////////////
// PROCESSOR RUN STATE TRANSITION HANDLING
////////////////////////////////////////////////////////////////////////////////

//
// If this memory access callback is triggered, abort any active load linked
//
static VMI_MEM_WATCH_FN(abortEA) {
    if(processor) {
        riscvAbortExclusiveAccess((riscvP)userData);
    }
}

//
// Install or remove the exclusive access monitor callback
//
static void updateExclusiveAccessCallback(riscvP riscv, Bool install) {

    memDomainP domain  = vmirtGetProcessorDataDomain((vmiProcessorP)riscv);
    Uns64      simLow  = riscv->exclusiveTag;
    Uns64      simHigh = simLow + ~riscv->exclusiveTagMask;

    // install or remove a watchpoint on the current exclusive access address
    if(install) {
        vmirtAddWriteCallback(domain, 0, simLow, simHigh, abortEA, riscv);
    } else {
        vmirtRemoveWriteCallback(domain, 0, simLow, simHigh, abortEA, riscv);
    }
}

//
// Abort any active exclusive access
//
void riscvAbortExclusiveAccess(riscvP riscv) {

    if(riscv->exclusiveTag != RISCV_NO_TAG) {

        // remove callback on exclusive access monitor region
        updateExclusiveAccessCallback(riscv, False);

        // clear exclusive tag (AFTER updateExclusiveAccessCallback)
        riscv->exclusiveTag = RISCV_NO_TAG;
    }
}

//
// Install or remove the exclusive access monitor callback if required
//
void riscvUpdateExclusiveAccessCallback(riscvP riscv, Bool install) {
    if(riscv->exclusiveTag != RISCV_NO_TAG) {
        updateExclusiveAccessCallback(riscv, install);
    }
}

//
// This is called on simulator context switch (when this processor is either
// about to start or about to stop simulation)
//
VMI_IASSWITCH_FN(riscvContextSwitchCB) {
    riscvUpdateExclusiveAccessCallback((riscvP)processor, state==RS_SUSPEND);
}


