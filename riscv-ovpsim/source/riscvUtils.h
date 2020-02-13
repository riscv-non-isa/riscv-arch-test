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
#include "vmi/vmiAttrs.h"

// model header files
#include "riscvMode.h"
#include "riscvModelCallbacks.h"
#include "riscvTypes.h"
#include "riscvTypeRefs.h"
#include "riscvVariant.h"


//
// Update the currently-enabled architecture settings
//
void riscvSetCurrentArch(riscvP riscv);

//
// Return the configured XLEN (may not be the current XLEN if dynamic update
// of XLEN is allowed)
//
Uns32 riscvGetXlenArch(riscvP riscv);

//
// Return the configured FLEN (may not be the current FLEN if dynamic update
// of FLEN is allowed)
//
Uns32 riscvGetFlenArch(riscvP riscv);

//
// Return the current XLEN
//
Uns32 riscvGetXlenMode(riscvP riscv);

//
// Register extension callback block with the base model
//
void riscvRegisterExtCB(riscvP riscv, riscvExtCBP extCB, Uns32 id);

//
// Return the indexed extension's extCB clientData
//
void *riscvGetExtClientData(riscvP riscv, Uns32 id);

//
// Return extension configuration with the given id
//
riscvExtConfigCP riscvGetExtConfig(riscvP riscv, Uns32 id);

//
// Get mode name for the indexed mode
//
const char *riscvGetModeName(riscvMode mode);

//
// Change processor mode
//
void riscvSetMode(riscvP riscv, riscvMode mode);

//
// Return the minimum supported processor mode
//
riscvMode riscvGetMinMode(riscvP riscv);

//
// Does the processor implement the given mode?
//
Bool riscvHasMode(riscvP riscv, riscvMode mode);

//
// Return the indexed X register name
//
const char *riscvGetXRegName(Uns32 index);

//
// Return the indexed F register name
//
const char *riscvGetFRegName(Uns32 index);

//
// Return the indexed V register name
//
const char *riscvGetVRegName(Uns32 index);

//
// Utility function returning a vmiReg object to access the indexed vector
// register
//
vmiReg riscvGetVReg(riscvP riscv, Uns32 index);

//
// Get character identifier for the first feature identified by the given
// feature id
//
char riscvGetFeatureChar(riscvArchitecture feature);

//
// Get description for the first feature identified by the given feature id
//
const char *riscvGetFeatureName(riscvArchitecture feature);

//
// Parse the extensions string
//
riscvArchitecture riscvParseExtensions(const char *extensions);

//
// Abort any active exclusive access
//
void riscvAbortExclusiveAccess(riscvP riscv);

//
// Install or remove the exclusive access monitor callback if required
//
void riscvUpdateExclusiveAccessCallback(riscvP riscv, Bool install);

//
// Enable or disable transaction mode
//
RISCV_SET_TMODE_FN(riscvSetTMode);

//
// Return true if in transaction mode
//
RISCV_GET_TMODE_FN(riscvGetTMode);

