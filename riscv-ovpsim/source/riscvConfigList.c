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

// model header files
#include "riscvConfig.h"
#include "riscvVariant.h"


//
// Specify named variant
//
#define RISC_VARIANT(_NAME, _PMP_REGS, _ARCH) { \
    .name          = _NAME,                     \
    .arch          = _ARCH,                     \
    .user_version  = RVUV_DEFAULT,              \
    .priv_version  = RVPV_DEFAULT,              \
    .vect_version  = RVVV_DEFAULT,              \
    .Zvlsseg       = 1,                         \
    .Zvamo         = 1,                         \
    .Zvediv        = 0,                         \
    .Zvqmac        = 1,                         \
    .PMP_registers = _PMP_REGS,                 \
    .tval_ii_code  = True,                      \
    .ASID_bits     = ((_ARCH)&RV64) ? 16 : 9    \
}

//
// Defined configurations
//
static const riscvConfig configList[] = {

    // RV32 variants
    RISC_VARIANT("RV32I",    16, ISA_U|ISA_S|RV32I   ),
    RISC_VARIANT("RV32IM",   16, ISA_U|ISA_S|RV32IM  ),
    RISC_VARIANT("RV32IMC",  16, ISA_U|ISA_S|RV32IMC ),
    RISC_VARIANT("RV32IMAC", 16, ISA_U|ISA_S|RV32IMAC),
    RISC_VARIANT("RV32G",    16, ISA_U|ISA_S|RV32G   ),
    RISC_VARIANT("RV32GC",   16, ISA_U|ISA_S|RV32GC  ),
    RISC_VARIANT("RV32GCN",  16, ISA_U|ISA_S|RV32GCN ),
    RISC_VARIANT("RV32GCV",  16, ISA_U|ISA_S|RV32GCV ),
    RISC_VARIANT("RV32E",    16, ISA_U|ISA_S|RV32E   ),
    RISC_VARIANT("RV32EC",   16, ISA_U|ISA_S|RV32EC  ),

    // RV64 variants
    RISC_VARIANT("RV64I",    16, ISA_U|ISA_S|RV64I   ),
    RISC_VARIANT("RV64IM",   16, ISA_U|ISA_S|RV64IM  ),
    RISC_VARIANT("RV64IMC",  16, ISA_U|ISA_S|RV64IMC ),
    RISC_VARIANT("RV64IMAC", 16, ISA_U|ISA_S|RV64IMAC),
    RISC_VARIANT("RV64G",    16, ISA_U|ISA_S|RV64G   ),
    RISC_VARIANT("RV64GC",   16, ISA_U|ISA_S|RV64GC  ),
    RISC_VARIANT("RV64GCN",  16, ISA_U|ISA_S|RV64GCN ),
    RISC_VARIANT("RV64GCV",  16, ISA_U|ISA_S|RV64GCV ),

    // RV32 base variants (no User/Supervisor modes or PMP implemented)
    RISC_VARIANT("RVB32I",   0,              RV32I   ),
    RISC_VARIANT("RVB32E",   0,              RV32E   ),

    // RV64 base variants (no User/Supervisor modes or PMP implemented)
    RISC_VARIANT("RVB64I",   0,              RV64I   ),

    {0} // null terminator
};

//
// This returns the supported configuration list
//
riscvConfigCP riscvGetConfigList(riscvP riscv) {
    return configList;
}

