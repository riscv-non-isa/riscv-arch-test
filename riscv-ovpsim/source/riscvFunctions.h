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

// model header files
#include "riscvMode.h"
#include "riscvTypeRefs.h"


// constructor & destructor
VMI_CONSTRUCTOR_FN(riscvConstructor);
VMI_POST_CONSTRUCTOR_FN(riscvPostConstructor);
VMI_VMINIT_FN(riscvVMInit);
VMI_DESTRUCTOR_FN(riscvDestructor);

// morph function
VMI_START_END_BLOCK_FN(riscvStartBlock);
VMI_START_END_BLOCK_FN(riscvEndBlock);
VMI_MORPH_FN(riscvMorph);
VMI_FETCH_SNAP_FN(riscvFetchSnap);

// simulation support functions
VMI_ENDIAN_FN(riscvGetEndian);
VMI_NEXT_PC_FN(riscvNextPC);
VMI_DISASSEMBLE_FN(riscvDisassemble);
VMI_IASSWITCH_FN(riscvContextSwitchCB);

// debugger integration support routines
VMI_REG_GROUP_FN(riscvRegGroup);
VMI_REG_INFO_FN(riscvRegInfo);
VMI_REG_IMPL_FN(riscvRegImpl);
VMI_EXCEPTION_INFO_FN(riscvExceptionInfo);
VMI_MODE_INFO_FN(riscvModeInfo);
VMI_GET_EXCEPTION_FN(riscvGetException);
VMI_GET_MODE_FN(riscvGetMode);
VMI_PROC_DESC_FN(riscvProcessorDescription);

// exception functions
VMI_RD_PRIV_EXCEPT_FN(riscvRdPrivExcept);
VMI_WR_PRIV_EXCEPT_FN(riscvWrPrivExcept);
VMI_RD_ALIGN_EXCEPT_FN(riscvRdAlignExcept);
VMI_WR_ALIGN_EXCEPT_FN(riscvWrAlignExcept);
VMI_RD_ABORT_EXCEPT_FN(riscvRdAbortExcept);
VMI_WR_ABORT_EXCEPT_FN(riscvWrAbortExcept);
VMI_IFETCH_FN(riscvIFetchExcept);
VMI_ARITH_RESULT_FN(riscvArithResult);

// parameter support functions
VMI_PROC_PARAM_SPECS_FN(riscvGetParamSpec);
VMI_PROC_PARAM_TABLE_SIZE_FN(riscvParamValueSize);

// port/net functions
VMI_BUS_PORT_SPECS_FN(riscvBusPortSpecs);
VMI_NET_PORT_SPECS_FN(riscvNetPortSpecs);

// Imperas intercepted function support
VMI_INT_RETURN_FN(riscvIntReturn);
VMI_INT_RESULT_FN(riscvIntResult);

// processor information support
VMI_PROC_INFO_FN(riscvProcInfo);

// save/restore support
VMI_SAVE_STATE_FN(riscvSaveState);
VMI_RESTORE_STATE_FN(riscvRestoreState);
