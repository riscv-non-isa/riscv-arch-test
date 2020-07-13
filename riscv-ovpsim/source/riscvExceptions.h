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

// VMI header files
#include "hostapi/impTypes.h"

// model header files
#include "riscvExceptionTypes.h"
#include "riscvTypeRefs.h"


//
// Take processor exception
//
void riscvTakeException(
    riscvP         riscv,
    riscvException exception,
    Uns64          tval
);

//
// Take asynchronous processor exception
//
void riscvTakeAsynchonousException(
    riscvP         riscv,
    riscvException exception,
    Uns64          tval
);

//
// Take processor exception because of memory access error which could be
// suppressed for a fault-only-first instruction
//
void riscvTakeMemoryException(
    riscvP         riscv,
    riscvException exception,
    Uns64          tval
);

//
// Reset the processor
//
void riscvReset(riscvP riscv);

//
// Take Illegal Instruction exception
//
void riscvIllegalInstruction(riscvP riscv);

//
// Take Instruction Address Misaligned exception
//
void riscvInstructionAddressMisaligned(riscvP riscv, Uns64 tval);

//
// Take ECALL exception
//
void riscvECALL(riscvP riscv);

//
// Take EBREAK exception
//
void riscvEBREAK(riscvP riscv);

//
// Return from M-mode exception
//
void riscvMRET(riscvP riscv);

//
// Return from S-mode exception
//
void riscvSRET(riscvP riscv);

//
// Return from U-mode exception
//
void riscvURET(riscvP riscv);

//
// Return from Debug mode
//
void riscvDRET(riscvP riscv);

//
// Enter or leave debug mode
//
void riscvSetDM(riscvP riscv, Bool DM);

//
// Update debug mode stall indication
//
void riscvSetDMStall(riscvP riscv, Bool DMStall);

//
// Set step breakpoint if required
//
void riscvSetStepBreakpoint(riscvP riscv);

//
// Halt the processor in WFI state if required
//
void riscvWFI(riscvP riscv);

//
// Does the processor implement the exception or interrupt?
//
Bool riscvHasException(riscvP riscv, riscvException code);

//
// Return total number of interrupts (including 0 to 15)
//
Uns32 riscvGetIntNum(riscvP riscv);

//
// Initialize mask of implemented exceptions
//
void riscvSetExceptionMask(riscvP riscv);

//
// Free exception state
//
void riscvExceptFree(riscvP riscv);

//
// Update interrupt state because of some pending state change (either from
// external interrupt source or software pending register)
//
void riscvUpdatePending(riscvP riscv);

//
// Refresh pending-and-enabled interrupt state
//
void riscvRefreshPendingAndEnabled(riscvP riscv);

//
// Check for pending interrupts
//
void riscvTestInterrupt(riscvP riscv);

//
// Allocate ports for this variant
//
void riscvNewNetPorts(riscvP riscv);

//
// Free ports
//
void riscvFreeNetPorts(riscvP riscv);

//
// Allocate timers
//
void riscvNewTimers(riscvP riscv);

//
// Free timers
//
void riscvFreeTimers(riscvP riscv);

//
// Save net state not covered by register read/write API
//
void riscvNetSave(
    riscvP              riscv,
    vmiSaveContextP     cxt,
    vmiSaveRestorePhase phase
);

//
// Restore net state not covered by register read/write API
//
void riscvNetRestore(
    riscvP              riscv,
    vmiRestoreContextP  cxt,
    vmiSaveRestorePhase phase
);

//
// Save timer state not covered by register read/write API
//
void riscvTimerSave(
    riscvP              riscv,
    vmiSaveContextP     cxt,
    vmiSaveRestorePhase phase
);

//
// Restore timer state not covered by register read/write API
//
void riscvTimerRestore(
    riscvP              riscv,
    vmiRestoreContextP  cxt,
    vmiSaveRestorePhase phase
);

