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
#include "vmi/vmiTyperefs.h"

// model header files
#include "riscvTypeRefs.h"

//
// These specify the maximum bus widths supported for Sv32 and Sv64
//
#define RISCV_PMP_BITS_32 34
#define RISCV_PMP_BITS_64 56

//
// Allocate bus port specifications at root level
//
void riscvNewRootBusPorts(riscvP riscv);

//
// Allocate bus port specifications at leaf level
//
void riscvNewLeafBusPorts(riscvP riscv);

//
// Free bus port specifications
//
void riscvFreeBusPorts(riscvP riscv);

//
// Return any domain connected to the artifact port implementing CSRs
//
memDomainP riscvGetExternalCSRDomain(riscvP riscv);
