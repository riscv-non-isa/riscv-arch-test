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

// basic types
#include "hostapi/impTypes.h"

// VMI header files
#include "vmi/vmiTypes.h"

// model header files
#include "riscvTypeRefs.h"


//
// Update CLIC state on input signal change
//
void riscvUpdateCLICInput(riscvP hart, Uns32 intIndex, Bool newValue);

//
// Refresh state when CLIC is internally implemented
//
void riscvRefreshPendingAndEnabledInternalCLIC(riscvP hart);

//
// Acknowledge CLIC-sourced interrupt
//
void riscvAcknowledgeCLICInt(riscvP hart, Uns32 intIndex);

//
// Create CLIC memory-mapped block and data structures
//
void riscvMapCLICDomain(riscvP root, memDomainP CLICDomain);

//
// Allocate CLIC data structures
//
void riscvNewCLIC(riscvP riscv, Uns32 index);

//
// Free CLIC data structures
//
void riscvFreeCLIC(riscvP riscv);

//
// Reset CLIC
//
void riscvResetCLIC(riscvP riscv);

//
// Save CLIC state not covered by register read/write API
//
void riscvSaveCLIC(
    riscvP              riscv,
    vmiSaveContextP     cxt,
    vmiSaveRestorePhase phase
);

//
// Restore net state not covered by register read/write API
//
void riscvRestoreCLIC(
    riscvP              riscv,
    vmiRestoreContextP  cxt,
    vmiSaveRestorePhase phase
);

