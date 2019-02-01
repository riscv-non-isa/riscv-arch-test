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

// Imperas header files
#include "hostapi/impTypes.h"

// model header files
#include "riscvTypeRefs.h"

//
// Try mapping memory at the passed address for the specified access type and
// return a status code indicating if there was a TLB miss
//
Bool riscvVMMiss(
    riscvP         riscv,
    memDomainP     domain,
    memPriv        requiredPriv,
    Uns64          address,
    Uns32          bytes,
    memAccessAttrs attrs
);

//
// Free structures used for virtual memory management
//
void riscvVMFree(riscvP riscv);

//
// Perform any required memory mapping updates on an ASID change
//
void riscvVMSetASID(riscvP riscv);

//
// Invalidate entire TLB
//
void riscvVMInvalidateAll(riscvP riscv);

//
// Invalidate entire TLB with matching ASID
//
void riscvVMInvalidateAllASID(riscvP riscv, Uns32 ASID);

//
// Invalidate TLB entries for the given address
//
void riscvVMInvalidateVA(riscvP riscv, Uns64 VA);

//
// Invalidate TLB entries with matching address and ASID
//
void riscvVMInvalidateVAASID(riscvP riscv, Uns64 VA, Uns32 ASID);

//
// Read the indexed PMP configuration register
//
Uns64 riscvVMReadPMPCFG(riscvP riscv, Uns32 index);

//
// Write the indexed PMP configuration register with the new value and return
// the new effective value
//
Uns64 riscvVMWritePMPCFG(riscvP riscv, Uns32 index, Uns64 newValue);

//
// Read the indexed PMP address register
//
Uns64 riscvVMReadPMPAddr(riscvP riscv, Uns32 index);

//
// Write the indexed PMP address register with the new value and return
// the new effective value
//
Uns64 riscvVMWritePMPAddr(riscvP riscv, Uns32 index, Uns64 newValue);

//
// Reset PMP unit
//
void riscvVMResetPMP(riscvP riscv);

//
// Refresh the current data domain to reflect current mstatus.MPRV setting
//
void riscvVMRefreshMPRVDomain(riscvP riscv);

//
// Save VM state not covered by register read/write API
//
void riscvVMSave(
    riscvP              riscv,
    vmiSaveContextP     cxt,
    vmiSaveRestorePhase phase
);

//
// Restore VM state not covered by register read/write API
//
void riscvVMRestore(
    riscvP              riscv,
    vmiRestoreContextP  cxt,
    vmiSaveRestorePhase phase
);
