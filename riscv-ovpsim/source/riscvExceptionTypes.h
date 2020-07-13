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

// model header files
#include "riscvMode.h"

//
// Declare indexed exception
//
#define RISCV_EXCEPTION_TYPE_N(_BASE, _NUM) \
    riscv_E_##_BASE##_NUM = riscv_E_##_BASE + _NUM

//
// Exception codes
//
typedef enum riscvExceptionE {

    ////////////////////////////////////////////////////////////////////
    // EXCEPTIONS
    ////////////////////////////////////////////////////////////////////

    riscv_E_InstructionAddressMisaligned =  0,
    riscv_E_InstructionAccessFault       =  1,
    riscv_E_IllegalInstruction           =  2,
    riscv_E_Breakpoint                   =  3,
    riscv_E_LoadAddressMisaligned        =  4,
    riscv_E_LoadAccessFault              =  5,
    riscv_E_StoreAMOAddressMisaligned    =  6,
    riscv_E_StoreAMOAccessFault          =  7,
    riscv_E_EnvironmentCallFromUMode     =  8,
    riscv_E_EnvironmentCallFromSMode     =  9,
    riscv_E_EnvironmentCallFromHMode     = 10,  // not currently in use
    riscv_E_EnvironmentCallFromMMode     = 11,
    riscv_E_InstructionPageFault         = 12,
    riscv_E_LoadPageFault                = 13,
    riscv_E_Reserved14                   = 14,  // not currently in use
    riscv_E_StoreAMOPageFault            = 15,

    ////////////////////////////////////////////////////////////////////
    // INTERRUPTS
    ////////////////////////////////////////////////////////////////////

    // this identifies interrupts (currently, we allow up to 64 non-interrupt
    // exceptions; this value is not architectural and can be increased if
    // required)
    // NOTE: please update rv32CpuHelper events.c if this changes
    riscv_E_Interrupt          = 0x40,

    // these classify interrupt types
    riscv_E_SW                 = 0x00,
    riscv_E_Timer              = 0x04,
    riscv_E_External           = 0x08,
    riscv_E_CLIC               = 0x0c,
    riscv_E_Local              = 0x10,

    // these are interrupt type groups
    riscv_E_SWInterrupt        = riscv_E_SW       | riscv_E_Interrupt,
    riscv_E_TimerInterrupt     = riscv_E_Timer    | riscv_E_Interrupt,
    riscv_E_ExternalInterrupt  = riscv_E_External | riscv_E_Interrupt,
    riscv_E_CLICInterrupt      = riscv_E_CLIC     | riscv_E_Interrupt,
    riscv_E_LocalInterrupt     = riscv_E_Local    | riscv_E_Interrupt,

    // interrupts defined by architectural specification
    riscv_E_USWInterrupt       = riscv_E_SWInterrupt       | RISCV_MODE_USER,
    riscv_E_SSWInterrupt       = riscv_E_SWInterrupt       | RISCV_MODE_SUPERVISOR,
    riscv_E_HSWInterrupt       = riscv_E_SWInterrupt       | RISCV_MODE_HYPERVISOR,
    riscv_E_MSWInterrupt       = riscv_E_SWInterrupt       | RISCV_MODE_MACHINE,
    riscv_E_UTimerInterrupt    = riscv_E_TimerInterrupt    | RISCV_MODE_USER,
    riscv_E_STimerInterrupt    = riscv_E_TimerInterrupt    | RISCV_MODE_SUPERVISOR,
    riscv_E_HTimerInterrupt    = riscv_E_TimerInterrupt    | RISCV_MODE_HYPERVISOR,
    riscv_E_MTimerInterrupt    = riscv_E_TimerInterrupt    | RISCV_MODE_MACHINE,
    riscv_E_UExternalInterrupt = riscv_E_ExternalInterrupt | RISCV_MODE_USER,
    riscv_E_SExternalInterrupt = riscv_E_ExternalInterrupt | RISCV_MODE_SUPERVISOR,
    riscv_E_HExternalInterrupt = riscv_E_ExternalInterrupt | RISCV_MODE_HYPERVISOR,
    riscv_E_MExternalInterrupt = riscv_E_ExternalInterrupt | RISCV_MODE_MACHINE,

    // interrupts defined when CLIC is present
    riscv_E_CSIP               = riscv_E_CLICInterrupt,

    ////////////////////////////////////////////////////////////////////
    // KEEP LAST: for sizing (local interrupts follow)
    ////////////////////////////////////////////////////////////////////

    riscv_E_Last = riscv_E_LocalInterrupt

} riscvException;

//
// Exception priorities for standard exceptions (implementation-dependent
// local interrupts may be interleaved with these, but by default are highest
// priority starting with riscv_E_LocalPriority and increasing for higher
// numbered interrupts)
//
typedef enum riscvExceptionPriorityE {
    riscv_E_UTimerPriority    = 10,
    riscv_E_USWPriority       = 20,
    riscv_E_UExternalPriority = 30,
    riscv_E_STimerPriority    = 40,
    riscv_E_SSWPriority       = 50,
    riscv_E_SExternalPriority = 60,
    riscv_E_MTimerPriority    = 70,
    riscv_E_MSWPriority       = 80,
    riscv_E_MExternalPriority = 90,
    riscv_E_LocalPriority     = 100
} riscvExceptionPriority;

//
// Detail of Access Fault
//
typedef enum riscvAccessFaultS {
    riscv_AFault_None,      // not an access fault
    riscv_AFault_PMP,       // access fault because of PMP permission error
    riscv_AFault_Bus,       // access fault because of bus error
    riscv_AFault_Device,    // access fault because of device error
    riscv_AFault_Custom1,   // access fault because of custom reason (1)
    riscv_AFault_Custom2,   // access fault because of custom reason (2)
    riscv_AFault_Explicit,  // explicit Access Fault value
} riscvAccessFault;

//
// Specify enabled interrupt mode
//
typedef enum riscvICModeE {
    riscv_int_Direct   = 0, // direct interrupt mode
    riscv_int_Vectored = 1, // vectored interrupt mode
    riscv_int_Reserved = 2, // (reserved interrupt mode)
    riscv_int_CLIC     = 3, // CLIC interrupt mode
} riscvICMode;

//
// Return exception code for interrupt number
//
inline static riscvException intToException(Uns32 intIndex) {
    return intIndex+riscv_E_Interrupt;
}

//
// Return interrupt number for exception code
//
inline static Uns32 exceptionToInt(riscvException exception) {
    return exception-riscv_E_Interrupt;
}

//
// Is the exception an interrupt
//
inline static Bool isInterrupt(riscvException exception) {
    return exception>=riscv_E_Interrupt;
}

//
// Get code from an exception
//
inline static Uns32 getExceptionCode(riscvException exception) {
    return isInterrupt(exception) ? exceptionToInt(exception) : exception;
}


