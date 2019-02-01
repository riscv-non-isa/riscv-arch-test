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
typedef enum riscvExceptionS {

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
    riscv_E_Local              = 0x10,

    // these are interrupt type groups
    riscv_E_SWInterrupt        = riscv_E_SW       | riscv_E_Interrupt,
    riscv_E_TimerInterrupt     = riscv_E_Timer    | riscv_E_Interrupt,
    riscv_E_ExternalInterrupt  = riscv_E_External | riscv_E_Interrupt,
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

    // additional local interrupts
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt,  0),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt,  1),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt,  2),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt,  3),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt,  4),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt,  5),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt,  6),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt,  7),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt,  8),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt,  9),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 10),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 11),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 12),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 13),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 14),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 15),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 16),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 17),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 18),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 19),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 20),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 21),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 22),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 23),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 24),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 25),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 26),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 27),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 28),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 29),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 30),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 31),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 32),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 33),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 34),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 35),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 36),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 37),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 38),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 39),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 40),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 41),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 42),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 43),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 44),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 45),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 46),
    RISCV_EXCEPTION_TYPE_N(LocalInterrupt, 47),

    ////////////////////////////////////////////////////////////////////
    // KEEP LAST: for sizing
    ////////////////////////////////////////////////////////////////////

    riscv_E_Last

} riscvException;

//
// Detail of Access Fault
//
typedef enum riscvAccessFaultS {
    riscv_AFault_None,      // not an access fault
    riscv_AFault_PMP,       // access fault because of PMP permission error
    riscv_AFault_Bus,       // access fault because of bus permission error
    riscv_AFault_Explicit,  // explicit Access Fault value
} riscvAccessFault;
