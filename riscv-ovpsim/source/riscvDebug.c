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

// Imperas header files
#include "hostapi/impAlloc.h"

// VMI header files
#include "vmi/vmiAttrs.h"
#include "vmi/vmiDbg.h"
#include "vmi/vmiMessage.h"
#include "vmi/vmiRt.h"

// model header files
#include "riscvCSR.h"
#include "riscvCSRTypes.h"
#include "riscvDebug.h"
#include "riscvFunctions.h"
#include "riscvMessage.h"
#include "riscvRegisters.h"
#include "riscvStructure.h"
#include "riscvUtils.h"
#include "riscvVariant.h"


////////////////////////////////////////////////////////////////////////////////
// REGISTER GROUPS
////////////////////////////////////////////////////////////////////////////////

//
// This describes the register groups in the processor
//
typedef enum riscvRegGroupIdE {
    RV_RG_CORE,         // core register group
    RV_RG_FP,           // floating point register group
    RV_RG_U_CSR,        // User mode CSR register group
    RV_RG_S_CSR,        // Supervisor mode CSR register group
    RV_RG_R_CSR,        // (reserved)
    RV_RG_M_CSR,        // Machine mode CSR register group
    RV_RG_INTEGRATION,  // integration support registers
    RV_RG_LAST          // KEEP LAST: for sizing
} armRegGroupId;

//
// This provides information about each group
//
static const vmiRegGroup groups[RV_RG_LAST+1] = {
    [RV_RG_CORE]        = {name: "Core"},
    [RV_RG_FP]          = {name: "Floating_point"},
    [RV_RG_U_CSR]       = {name: "User_Control_and_Status"},
    [RV_RG_S_CSR]       = {name: "Supervisor_Control_and_Status"},
    [RV_RG_R_CSR]       = {name: "Reserved"},
    [RV_RG_M_CSR]       = {name: "Machine_Control_and_Status"},
    [RV_RG_INTEGRATION] = {name: "Integration_support"},
};

//
// Macro to specify a the group for a register
//
#define RV_GROUP(_G) &groups[RV_RG_##_G]

//
// This is the index of the first FPR
//
#define RISCV_FPR0_INDEX        33

//
// This is the index of the first CSR
//
#define RISCV_CSR0_INDEX        65

//
// This is the index of the first ISR
//
#define RISCV_ISR0_INDEX        0x1000


////////////////////////////////////////////////////////////////////////////////
// INTEGRATION SUPPORT REGISTER ITERATION
////////////////////////////////////////////////////////////////////////////////

DEFINE_CS(isrDetails);

//
// Structure filled with CSR register details by riscvGetCSRDetails
//
typedef struct isrDetailsS {
    const char       *name;
    const char       *desc;
    riscvArchitecture arch;
    Uns32             index;
    Uns32             bits;
    vmiReg            raw;
    vmiRegReadFn      readCB;
    vmiRegWriteFn     writeCB;
    vmiRegAccess      access;
    Bool              noTraceChange;
} isrDetails;

//
// List of integration support registers
//
static const isrDetails isRegs[] = {

    {"LRSCAddress", "LR/SC active lock address", ISA_A, 0, 0,  RISCV_EA_TAG, 0, 0, vmi_RA_RW, 0},

    // KEEP LAST
    {0}
};

//
// Given the previous integration support register, return the next one for this
// variant.
//
static isrDetailsCP getNextISRDetails(
    riscvP       riscv,
    isrDetailsCP prev,
    Bool         normal
) {
    if(normal) {

        riscvArchitecture arch = riscv->configInfo.arch;
        isrDetailsCP      this = prev ? prev+1 : isRegs;

        while(this->name && ((this->arch&arch)!=this->arch)) {
            this++;
        }

        return this->name ? this : 0;

    } else {

        return 0;
    }
}


////////////////////////////////////////////////////////////////////////////////
// REGISTER ACCESS FUNCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Return any child of the passed processor
//
inline static riscvP getChild(riscvP riscv) {
    return (riscvP)vmirtGetSMPChild((vmiProcessorP)riscv);
}

//
// Read processor PC
//
static VMI_REG_READ_FN(readPC) {

    riscvP riscv = (riscvP)processor;
    Uns32  bits  = riscvGetXlenArch(riscv);
    Uns64  pc    = vmirtGetPC(processor);

    if(bits==32) {
        *(Uns32*)buffer = pc;
    } else {
        *(Uns64*)buffer = pc;
    }

    return True;
}

//
// Write processor PC
//
static VMI_REG_WRITE_FN(writePC) {

    riscvP riscv = (riscvP)processor;
    Uns32  bits  = riscvGetXlenMode(riscv);
    Uns64  pc    = (bits==32) ? *(Uns32*)buffer : *(Uns64*)buffer;

    vmirtSetPC(processor, pc);

    return True;
}

//
// Return CSR register attributes
//
inline static riscvCSRAttrsCP getCSRAttrs(vmiRegInfoCP reg) {
    return reg->userData;
}

//
// Read callback for AArch64 system register, current view
//
static VMI_REG_READ_FN(readCSR) {

    riscvP riscv = (riscvP)processor;

    return riscvReadCSR(getCSRAttrs(reg), riscv, buffer);
}

//
// Write callback for AArch64 system register, current view
//
static VMI_REG_WRITE_FN(writeCSR) {

    riscvP riscv = (riscvP)processor;

    return riscvWriteCSR(getCSRAttrs(reg), riscv, buffer);
}

//
// Return special purpose of the indexed GPR, if any
//
static vmiRegUsage getGPRUsage(Uns32 i) {

    if(i==RV_REG_X_RA) {
        return vmi_REG_LR;
    } else if(i==RV_REG_X_SP) {
        return vmi_REG_SP;
    } else {
        return vmi_REG_NONE;
    }
}

//
// Return register list (either normal or debug)
//
static vmiRegInfoCP getRegisters(riscvP riscv, Bool normal) {

    // create registers if they have not been created
    if(!riscv->regInfo[normal]) {

        Uns32             XLEN   = riscvGetXlenArch(riscv);
        Uns32             FLEN   = riscvGetFlenArch(riscv) ? : XLEN;
        riscvArchitecture arch   = riscv->configInfo.arch;
        Uns32             gprNum = (!normal || (arch&ISA_I))  ? 32 : 16;
        Uns32             fprNum = (!normal || (arch&ISA_DF)) ? 32 : 0;
        Uns32             regNum = 0;
        riscvCSRDetails   csrDetails;
        isrDetailsCP      isrDetails;
        vmiRegInfoP       dst;
        Uns32             i;

        // gdb workaround code (mismatched FPR and GPR widths not supported)
        if(!normal && (XLEN!=FLEN)) {

            vmiMessage("W", CPU_PREFIX "_URC",
                NO_SRCREF_FMT
                "this processor implements %u-bit GPRs but %u-bit FPRs, "
                "which is currently not supported by gdb - forcing "
                "apparent FPR width to %u bits (matching GPRs)",
                NO_SRCREF_ARGS(riscv),
                XLEN, FLEN, XLEN
            );

            FLEN = XLEN;
        }

        // count GPR entries
        regNum += gprNum;

        // count PC
        regNum++;

        // count FPR entries
        regNum += fprNum;

        // count visible CSRs
        csrDetails.attrs = 0;
        while(riscvGetCSRDetails(riscv, &csrDetails, normal)) {
            regNum++;
        }

        // count visible ISRs
        isrDetails = 0;
        while((isrDetails=getNextISRDetails(riscv, isrDetails, normal))) {
            regNum++;
        }

        // allocate register information, including terminating NULL entry
        dst = riscv->regInfo[normal] = STYPE_CALLOC_N(vmiRegInfo, regNum+1);

        // fill GPR entries
        for(i=0; i<gprNum; i++) {
            dst->name     = riscvGetXRegName(i);
            dst->group    = RV_GROUP(CORE);
            dst->bits     = XLEN;
            dst->gdbIndex = i;
            dst->access   = i ? vmi_RA_RW : vmi_RA_R;
            dst->raw      = RISCV_GPR(i);
            dst->usage    = getGPRUsage(i);
            dst++;
        }

        // fill PC entry
        {
            dst->name     = "pc";
            dst->group    = RV_GROUP(CORE);
            dst->bits     = XLEN;
            dst->gdbIndex = i++;
            dst->access   = vmi_RA_RW;
            dst->readCB   = readPC;
            dst->writeCB  = writePC;
            dst->usage    = vmi_REG_PC;
            dst++;
        }

        // fill FPR entries
        for(i=0; i<fprNum; i++) {
            dst->name     = riscvGetFRegName(i);
            dst->group    = RV_GROUP(FP);
            dst->bits     = FLEN;
            dst->gdbIndex = i+RISCV_FPR0_INDEX;
            dst->access   = vmi_RA_RW;
            dst->raw      = RISCV_FPR(i);
            dst++;
        }

        // fill visible CSRs
        csrDetails.attrs = 0;
        while(riscvGetCSRDetails(riscv, &csrDetails, normal)) {
            riscvCSRAttrsCP attrs = csrDetails.attrs;
            dst->name          = attrs->name;
            dst->description   = attrs->desc;
            dst->group         = RV_GROUP(U_CSR+csrDetails.mode);
            dst->bits          = XLEN;
            dst->gdbIndex      = attrs->csrNum+RISCV_CSR0_INDEX;
            dst->access        = csrDetails.access;
            dst->raw           = csrDetails.raw;
            dst->readCB        = csrDetails.rdRaw ? 0 : readCSR;
            dst->writeCB       = csrDetails.wrRaw ? 0 : writeCSR;
            dst->userData      = (void *)attrs;
            dst->noTraceChange = attrs->noTraceChange;
            dst->extension     = csrDetails.extension;
            dst++;
        }

        // fill visible ISRs
        isrDetails = 0;
        while((isrDetails=getNextISRDetails(riscv, isrDetails, normal))) {
            dst->name          = isrDetails->name;
            dst->description   = isrDetails->desc;
            dst->group         = RV_GROUP(INTEGRATION);
            dst->bits          = isrDetails->bits ? : XLEN;
            dst->gdbIndex      = isrDetails->index+RISCV_ISR0_INDEX;
            dst->access        = isrDetails->access;
            dst->raw           = isrDetails->raw;
            dst->readCB        = isrDetails->readCB;
            dst->writeCB       = isrDetails->writeCB;
            dst->noTraceChange = isrDetails->noTraceChange;
            dst++;
        }
    }

    // return head of register list
    return riscv->regInfo[normal];
}

//
// Does this register group contain CSRs?
//
static Bool isCSRGroup(vmiRegGroupCP group) {
    return (
        (group==RV_GROUP(U_CSR)) ||
        (group==RV_GROUP(S_CSR)) ||
        (group==RV_GROUP(R_CSR)) ||
        (group==RV_GROUP(M_CSR))
    );
}

//
// Is the register visible in this view?
//
static Bool isRegVisible(vmiRegInfoCP reg, vmiRegInfoType type) {
    if(type==VMIRIT_NORMAL) {
        return True;
    } else if(type==VMIRIT_GPACKET) {
        return !isCSRGroup(reg->group);
    } else {
        return isCSRGroup(reg->group);
    }
}

//
// Return next supported register on this processor
//
static vmiRegInfoCP getNextRegister(
    riscvP         riscv,
    vmiRegInfoCP   reg,
    vmiRegInfoType type
) {
    do {
        if(!reg) {
            reg = getChild(riscv) ? 0 : getRegisters(riscv, type==VMIRIT_NORMAL);
        } else if((reg+1)->name) {
            reg = reg+1;
        } else {
            reg = 0;
        }
    } while(reg && !isRegVisible(reg, type));

    return reg;
}

//
// Is the passed register group supported on this processor?
//
static Bool isGroupSupported(riscvP riscv, vmiRegGroupCP group) {

    vmiRegInfoCP info = 0;

    while((info=getNextRegister(riscv, info, VMIRIT_NORMAL))) {
        if(info->group == group) {
            return True;
        }
    }

    return False;
}

//
// Return next supported group on this processor
//
static vmiRegGroupCP getNextGroup(riscvP riscv, vmiRegGroupCP group) {

    do {
        if(!group) {
            group = groups;
        } else if((group+1)->name) {
            group = group+1;
        } else {
            group = 0;
        }
    } while(group && !isGroupSupported(riscv, group));

    return group;
}

//
// Return next register group
//
VMI_REG_GROUP_FN(riscvRegGroup) {
    return getNextGroup((riscvP)processor, prev);
}

//
// Return next register for the passed view
//
VMI_REG_INFO_FN(riscvRegInfo) {
    return getNextRegister((riscvP)processor, prev, gdbFrame);
}

//
// Free register descriptions, if they have been allocated
//
void riscvFreeRegInfo(riscvP riscv) {

    Uns32 i;

    for(i=0; i<2; i++) {
        if(riscv->regInfo[i]) {
            STYPE_FREE(riscv->regInfo[i]);
            riscv->regInfo[i] = 0;
        }
    }
}

//
// Helper macro for defining register implementations
//
#define RISCV_REG_IMPL_RAW(_REG, _FIELD, _BITS) \
    vmirtRegImplRaw(processor, _REG, _FIELD, _BITS)

//
// Helper macro for defining field-to register mappings
//
#define RISCV_FIELD_IMPL_RAW(_REGINFO, _FIELD) { \
    Uns32 bits = sizeof(((riscvP)0)->_FIELD) * 8;               \
    RISCV_REG_IMPL_RAW(_REGINFO, RISCV_CPU_REG(_FIELD), bits);  \
}

//
// Helper macro for defining ignored fields
//
#define RISCV_FIELD_IMPL_IGNORE(_FIELD) \
    RISCV_FIELD_IMPL_RAW(0, _FIELD)

//
// Specify vmiReg-to-vmiRegInfoCP correspondence for registers for which this
// cannot be automatically derived
//
VMI_REG_IMPL_FN(riscvRegImpl) {

    // specify that fpFlags are in fflags
    vmiRegInfoCP fflags = vmirtGetRegByName(processor, "fflags");
    RISCV_FIELD_IMPL_RAW(fflags, fpFlags);

    // exclude artifact registers
    RISCV_FIELD_IMPL_IGNORE(fpActiveRM);
}


////////////////////////////////////////////////////////////////////////////////
// PROCESSOR DESCRIPTION
////////////////////////////////////////////////////////////////////////////////

//
// Return processor description
//
VMI_PROC_DESC_FN(riscvProcessorDescription) {

    riscvP riscv = (riscvP)processor;
    riscvP child = getChild(riscv);

    return child ? "Cluster" : "Hart";
}

