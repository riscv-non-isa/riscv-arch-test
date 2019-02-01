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
#include "vmi/vmiAttrs.h"

// model header files
#include "riscvBlockState.h"
#include "riscvFunctions.h"
#include "riscvStructure.h"


static const char *dictNames[] = {

    // VM-disabled modes
    [RISCV_DMODE_USER]          = "USER",
    [RISCV_DMODE_SUPERVISOR]    = "SUPERVISOR",
    [RISCV_DMODE_HYPERVISOR]    = "HYPERVISOR",
    [RISCV_DMODE_MACHINE]       = "MACHINE",

    // VM-enabled modes
    [RISCV_DMODE_USER_VM]       = "USER (VM)",
    [RISCV_DMODE_SUPERVISOR_VM] = "SUPERVISOR (VM)",

    // terminator
    [RISCV_DMODE_LAST]          = 0
};

const vmiIASAttr modelAttrs = {

    ////////////////////////////////////////////////////////////////////////
    // VERSION & SIZE ATTRIBUTES
    ////////////////////////////////////////////////////////////////////////

    .versionString      = VMI_VERSION,
    .modelType          = VMI_PROCESSOR_MODEL,
    .dictNames          = dictNames,
    .cpuSize            = sizeof(riscv),
    .blockStateSize     = sizeof(riscvBlockState),

    ////////////////////////////////////////////////////////////////////////
    // SAVE/RESTORE ROUTINES
    ////////////////////////////////////////////////////////////////////////

    .saveCB             = riscvSaveState,
    .restoreCB          = riscvRestoreState,
    .srVersion          = 0,

    ////////////////////////////////////////////////////////////////////////
    // CONSTRUCTOR/DESTRUCTOR ROUTINES
    ////////////////////////////////////////////////////////////////////////

    .constructorCB      = riscvConstructor,
    .postConstructorCB  = riscvPostConstructor,
    .vmInitCB           = riscvVMInit,
    .destructorCB       = riscvDestructor,

    ////////////////////////////////////////////////////////////////////////
    // MORPHER CORE ROUTINES
    ////////////////////////////////////////////////////////////////////////

    .startBlockCB       = riscvStartBlock,
    .endBlockCB         = riscvEndBlock,
    .morphCB            = riscvMorph,
    .fetchSnapCB        = riscvFetchSnap,

    ////////////////////////////////////////////////////////////////////////
    // SIMULATION SUPPORT ROUTINES
    ////////////////////////////////////////////////////////////////////////

    .getEndianCB        = riscvGetEndian,
    .nextPCCB           = riscvNextPC,
    .disCB              = riscvDisassemble,
    .switchCB           = riscvContextSwitchCB,

    ////////////////////////////////////////////////////////////////////////
    // EXCEPTION ROUTINES
    ////////////////////////////////////////////////////////////////////////

    .rdPrivExceptCB     = riscvRdPrivExcept,
    .wrPrivExceptCB     = riscvWrPrivExcept,
    .rdAlignExceptCB    = riscvRdAlignExcept,
    .wrAlignExceptCB    = riscvWrAlignExcept,
    .rdAbortExceptCB    = riscvRdAbortExcept,
    .wrAbortExceptCB    = riscvWrAbortExcept,
    .ifetchExceptCB     = riscvIFetchExcept,
    .arithResultCB      = riscvArithResult,

    ////////////////////////////////////////////////////////////////////////
    // PARAMETER SUPPORT ROUTINES
    ////////////////////////////////////////////////////////////////////////

    .paramSpecsCB       = riscvGetParamSpec,
    .paramValueSizeCB   = riscvParamValueSize,

    ////////////////////////////////////////////////////////////////////////
    // PORT ROUTINES
    ////////////////////////////////////////////////////////////////////////

    .busPortSpecsCB     = riscvBusPortSpecs,
    .netPortSpecsCB     = riscvNetPortSpecs,

    ////////////////////////////////////////////////////////////////////////
    // DEBUGGER INTEGRATION SUPPORT ROUTINES
    ////////////////////////////////////////////////////////////////////////

    .regGroupCB         = riscvRegGroup,
    .regInfoCB          = riscvRegInfo,
    .regImplCB          = riscvRegImpl,
    .exceptionInfoCB    = riscvExceptionInfo,
    .modeInfoCB         = riscvModeInfo,
    .getExceptionCB     = riscvGetException,
    .getModeCB          = riscvGetMode,
    .procDescCB         = riscvProcessorDescription,

    ////////////////////////////////////////////////////////////////////////
    // IMPERAS INTERCEPTED FUNCTION SUPPORT ROUTINES
    ////////////////////////////////////////////////////////////////////////

    .intReturnCB        = riscvIntReturn,
    .intResultCB        = riscvIntResult,

    ////////////////////////////////////////////////////////////////////////
    // PROCESSOR INFO ROUTINE
    ////////////////////////////////////////////////////////////////////////

    .procInfoCB         = riscvProcInfo,

    ////////////////////////////////////////////////////////////////////////
    // MODEL STATUS
    ////////////////////////////////////////////////////////////////////////

    .visibility         = VMI_VISIBLE,
    .releaseStatus      = VMI_OVP

};
