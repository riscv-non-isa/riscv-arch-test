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
// Halt the processor in WFI state if required
//
void riscvWFI(riscvP riscv);

//
// Return mask of implemented local interrupts
//
Uns64 riscvGetLocalIntMask(riscvP riscv);

//
// Initialize mask of implemented exceptions
//
void riscvSetExceptionMask(riscvP riscv);

//
// Update interrupt state because of some pending state change (either from
// external interrupt source or software pending register)
//
void riscvUpdatePending(riscvP riscv);

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
