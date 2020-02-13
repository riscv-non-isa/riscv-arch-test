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

#pragma once

// basic number types
#include "hostapi/impTypes.h"

// VMI header files
#include "vmi/vmiDbg.h"

// model header files
#include "riscvDerivedMorph.h"
#include "riscvExceptionTypes.h"
#include "riscvMode.h"
#include "riscvRegisterTypes.h"
#include "riscvTypes.h"
#include "riscvTypeRefs.h"
#include "riscvVariant.h"
#include "riscvVectorTypes.h"


////////////////////////////////////////////////////////////////////////////////
// IMPLEMENTED BY BASE MODEL
////////////////////////////////////////////////////////////////////////////////

//
// Register extension callback block with the base model
//
#define RISCV_REGISTER_EXT_CB_FN(_NAME) void _NAME( \
    riscvP      riscv,  \
    riscvExtCBP extCB,  \
    Uns32       id      \
)
typedef RISCV_REGISTER_EXT_CB_FN((*riscvRegisterExtCBFn));

//
// Return the indexed extension's extCB clientData
//
#define RISCV_GET_EXT_CLIENT_DATA_FN(_NAME) void * _NAME( \
    riscvP riscv,      \
    Uns32  id          \
)
typedef RISCV_GET_EXT_CLIENT_DATA_FN((*riscvGetExtClientDataFn));

//
// Return the indexed extension configuration
//
#define RISCV_GET_EXT_CONFIG_FN(_NAME) riscvExtConfigCP _NAME( \
    riscvP riscv,   \
    Uns32  id       \
)
typedef RISCV_GET_EXT_CONFIG_FN((*riscvGetExtConfigFn));

//
// Return the current XLEN
//
#define RISCV_GET_XLEN_FN(_NAME) Uns32 _NAME(riscvP riscv)
typedef RISCV_GET_XLEN_FN((*riscvGetXlenFn));

//
// Return the indexed register name
//
#define RISCV_GET_REG_NAME_FN(_NAME) const char *_NAME(Uns32 index)
typedef RISCV_GET_REG_NAME_FN((*riscvGetRegNameFn));

//
// Return true if in transaction mode
// Use at morph time only - assumes instruction checking this could
// abort a transaction so emits end block if in TM
//
#define RISCV_GET_TMODE_FN(_NAME) Bool _NAME(riscvP riscv)
typedef RISCV_GET_TMODE_FN((*riscvGetTModeFn));

//
// Enable or disable transaction mode
//
#define RISCV_SET_TMODE_FN(_NAME) void _NAME(riscvP riscv, Bool enable)
typedef RISCV_SET_TMODE_FN((*riscvSetTModeFn));

//
// Take Illegal Instruction exception
//
#define RISCV_ILLEGAL_INSTRUCTION_FN(_NAME) void _NAME(riscvP riscv)
typedef RISCV_ILLEGAL_INSTRUCTION_FN((*riscvIllegalInstructionFn));

//
// Take processor exception
//
#define RISCV_TAKE_EXCEPTION_FN(_NAME) void _NAME( \
    riscvP         riscv,       \
    riscvException exception,   \
    Uns64          tval         \
)
typedef RISCV_TAKE_EXCEPTION_FN((*riscvTakeExceptionFn));

//
// Validate that the instruction is supported and enabled and take an Illegal
// Instruction exception if not
//
#define RISCV_INSTRUCTION_ENABLED_FN(_NAME) Bool _NAME( \
    riscvP            riscv,            \
    riscvArchitecture requiredVariant   \
)
typedef RISCV_INSTRUCTION_ENABLED_FN((*riscvInstructionEnabledFn));

//
// Return VMI register for the given abstract register
//
#define RISCV_GET_VMI_REG_FN(_NAME) vmiReg _NAME(riscvP riscv, riscvRegDesc r)
typedef RISCV_GET_VMI_REG_FN((*riscvGetVMIRegFn));

//
// Return VMI register for the given abstract register which may require a NaN
// box test if it is floating point
//
#define RISCV_GET_VMI_REG_FS_FN(_NAME) vmiReg _NAME( \
    riscvP       riscv,     \
    riscvRegDesc r,         \
    vmiReg       tmp        \
)
typedef RISCV_GET_VMI_REG_FS_FN((*riscvGetVMIRegFSFn));

//
// Do actions when a register is written (extending or NaN boxing, if
// required)
//
#define RISCV_WRITE_REG_SIZE_FN(_NAME) void _NAME( \
    riscvP       riscv,     \
    riscvRegDesc r,         \
    Uns32        srcBits,   \
    Bool         signExtend \
)
typedef RISCV_WRITE_REG_SIZE_FN((*riscvWriteRegSizeFn));

//
// Do actions when a register is written (extending or NaN boxing, if
// required) using the derived register size
//
#define RISCV_WRITE_REG_FN(_NAME) void _NAME( \
    riscvP       riscv,     \
    riscvRegDesc r,         \
    Bool         signExtend \
)
typedef RISCV_WRITE_REG_FN((*riscvWriteRegFn));

//
// Return VMI register for floating point status flags when written
//
#define RISCV_GET_FP_FLAGS_MT_FN(_NAME) vmiReg _NAME(riscvP riscv)
typedef RISCV_GET_FP_FLAGS_MT_FN((*riscvGetFPFlagsMtFn));

//
// Validate the given rounding mode is legal and emit an Illegal Instruction
// exception call if not
//
#define RISCV_CHECK_LEGAL_RM_MT_FN(_NAME) Bool _NAME( \
    riscvP      riscv,  \
    riscvRMDesc rm      \
)
typedef RISCV_CHECK_LEGAL_RM_MT_FN((*riscvCheckLegalRMMtFn));

//
// Emit vector operation from extension library
//
#define RISCV_MORPH_VOP_FN(_NAME) void _NAME( \
    riscvP           riscv,         \
    Uns64            thisPC,        \
    riscvRegDesc     r0,            \
    riscvRegDesc     r1,            \
    riscvRegDesc     r2,            \
    riscvRegDesc     mask,          \
    riscvVShape      shape,         \
    riscvVExternalFn externalCB,    \
    void            *userData       \
)
typedef RISCV_MORPH_VOP_FN((*riscvMorphVOpFn));

//
// Register new CSR
//
#define RISCV_NEW_CSR_FN(_NAME) void _NAME(riscvCSRAttrsCP attrs, riscvP riscv)
typedef RISCV_NEW_CSR_FN((*riscvNewCSRFn));


////////////////////////////////////////////////////////////////////////////////
// IMPLEMENTED BY DERIVED MODEL
////////////////////////////////////////////////////////////////////////////////

//
// Notifier called on trap entry or exception return
//
#define RISCV_TRAP_NOTIFIER_FN(_NAME) void _NAME( \
    riscvP    riscv,            \
    riscvMode mode,             \
    void     *clientData        \
)
typedef RISCV_TRAP_NOTIFIER_FN((*riscvTrapNotifierFn));

//
// Notifier called at reset
//
#define RISCV_RESET_NOTIFIER_FN(_NAME) void _NAME( \
    riscvP riscv,               \
    void  *clientData           \
)
typedef RISCV_RESET_NOTIFIER_FN((*riscvResetNotifierFn));

//
// Return first exception in the derived model
//
#define RISCV_FIRST_EXCEPTION_FN(_NAME) vmiExceptionInfoCP _NAME( \
    riscvP riscv,               \
    void  *clientData           \
)
typedef RISCV_FIRST_EXCEPTION_FN((*riscvFirstExceptionFn));

//
// Notifier called on a model context switch. 'state' describes the new state.
//
#define RISCV_IASSWITCH_FN(_NAME) void _NAME( \
    riscvP         riscv,       \
    vmiIASRunState state,       \
    void          *clientData   \
)
typedef RISCV_IASSWITCH_FN((*riscvIASSwitchFn));

//
// Implement a load that is part of a transaction of the given size in bytes
// from the given virtual address, writing the loaded value to the buffer
//
#define RISCV_TLOAD_FN(_NAME) void _NAME( \
    riscvP riscv,               \
    void  *buffer,              \
    Addr   VA,                  \
    Uns32  bytes,               \
    void  *clientData           \
)
typedef RISCV_TLOAD_FN((*riscvTLoadFn));

//
// Implement a store that is part of a transaction of the given size in bytes
// to the given virtual address, taking the value from the buffer
//
#define RISCV_TSTORE_FN(_NAME) void _NAME( \
    riscvP      riscv,          \
    const void *buffer,         \
    Addr        VA,             \
    Uns32       bytes,          \
    void       *clientData      \
)
typedef RISCV_TSTORE_FN((*riscvTStoreFn));

//
// Implement PMA check for the given address range
//
#define RISCV_PMA_CHECK_FN(_NAME) void _NAME( \
    riscvP    riscv,            \
    riscvMode mode,             \
    memPriv   requiredPriv,     \
    Uns64     lowPA,            \
    Uns64     highPA,           \
    void     *clientData        \
)
typedef RISCV_PMA_CHECK_FN((*riscvPMACheckFn));

//
// Container structure for all callbacks implemented by the base model
//
typedef struct riscvModelCBS {

    // from riscvUtils.h
    riscvRegisterExtCBFn      registerExtCB;
    riscvGetExtClientDataFn   getExtClientData;
    riscvGetExtConfigFn       getExtConfig;
    riscvGetXlenFn            getXlenMode;
    riscvGetXlenFn            getXlenArch;
    riscvGetRegNameFn         getXRegName;
    riscvGetRegNameFn         getFRegName;
    riscvGetRegNameFn         getVRegName;
    riscvSetTModeFn           setTMode;
    riscvGetTModeFn           getTMode;

    // from riscvExceptions.h
    riscvIllegalInstructionFn illegalInstruction;
    riscvTakeExceptionFn      takeException;

    // from riscvMorph.h
    riscvInstructionEnabledFn instructionEnabled;
    riscvGetVMIRegFn          getVMIReg;
    riscvGetVMIRegFSFn        getVMIRegFS;
    riscvWriteRegSizeFn       writeRegSize;
    riscvWriteRegFn           writeReg;
    riscvGetFPFlagsMtFn       getFPFlagsMt;
    riscvCheckLegalRMMtFn     checkLegalRMMt;
    riscvMorphVOpFn           morphVOp;

    // from riscvCSR.h
    riscvNewCSRFn             newCSR;

} riscvModelCB;

//
// Container structure for all callbacks implemented by an extension
//
typedef struct riscvExtCBS {

    // link pointer and id (maintained by base model)
    riscvExtCBP               next;
    Uns32                     id;

    // handle back to client data
    void                     *clientData;

    // exception actions
    riscvTrapNotifierFn       trapNotifier;
    riscvTrapNotifierFn       ERETNotifier;
    riscvResetNotifierFn      resetNotifier;
    riscvFirstExceptionFn     firstException;

    // code generation actions
    riscvDerivedMorphFn       preMorph;
    riscvDerivedMorphFn       postMorph;

    // transaction support actions
    riscvIASSwitchFn          switchCB;
    riscvTLoadFn              tLoad;
    riscvTStoreFn             tStore;

    // PMA check actions
    riscvPMACheckFn           PMACheck;

} riscvExtCB;

