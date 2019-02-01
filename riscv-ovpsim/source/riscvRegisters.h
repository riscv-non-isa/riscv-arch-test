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
#include "vmi/vmiTypes.h"

// model header files
#include "riscvTypeRefs.h"


////////////////////////////////////////////////////////////////////////////////
// REGISTER ACCESS MACROS
////////////////////////////////////////////////////////////////////////////////

// aliases for specific RISCV registers
#define RV_REG_X_ZERO    0
#define RV_REG_X_RA      1
#define RV_REG_X_SP      2
#define RV_REG_X_GP      3

// morph-time macros to calculate offsets to registers in a RISCV structure
#define RISCV_CPU_OFFSET(_R)    VMI_CPU_OFFSET(riscvP, _R)
#define RISCV_CPU_REG(_R)       VMI_CPU_REG(riscvP, _R)
#define RISCV_CPU_TEMP(_R)      VMI_CPU_TEMP(riscvP, _R)
#define RISCV_GPR(_I)           RISCV_CPU_REG(x[_I])
#define RISCV_FPR(_I)           RISCV_CPU_REG(f[_I])
#define RISCV_LR                RISCV_CPU_REG(x[RV_REG_X_RA])
#define RISCV_EA_TAG            RISCV_CPU_REG(exclusiveTag)
#define RISCV_ACTIVE_RM         RISCV_CPU_REG(fpActiveRM)
#define RISCV_FP_FLAGS          RISCV_CPU_REG(fpFlags)
#define RISCV_JUMP_BASE         RISCV_CPU_REG(jumpBase)
