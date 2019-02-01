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

// model header files
#include "riscvConfig.h"
#include "riscvVariant.h"


//
// Specify named variant
//
#define RISC_VARIANT(_NAME, _ARCH) { \
    .name          = _NAME,                     \
    .arch          = _ARCH,                     \
    .user_version  = RVUV_DEFAULT,              \
    .priv_version  = RVPV_DEFAULT,              \
    .PMP_registers = 16,                        \
    .tval_ii_code  = True,                      \
    .ASID_bits     = ((_ARCH)&RV64) ? 16 : 9    \
}

//
// Defined configurations
//
static const riscvConfig configList[] = {

    // RV32 variants
    RISC_VARIANT("RV32I",    ISA_U|ISA_S|RV32I),
    RISC_VARIANT("RV32IM",   ISA_U|ISA_S|RV32IM),
    RISC_VARIANT("RV32IMC",  ISA_U|ISA_S|RV32IMC),
    RISC_VARIANT("RV32IMAC", ISA_U|ISA_S|RV32IMAC),
    RISC_VARIANT("RV32G",    ISA_U|ISA_S|RV32G),
    RISC_VARIANT("RV32GC",   ISA_U|ISA_S|RV32GC),
    RISC_VARIANT("RV32GCN",  ISA_U|ISA_S|RV32GCN),
    RISC_VARIANT("RV32E",    ISA_U|ISA_S|RV32E),
    RISC_VARIANT("RV32EC",   ISA_U|ISA_S|RV32EC),

    // RV64 variants
    RISC_VARIANT("RV64I",    ISA_U|ISA_S|RV64I),
    RISC_VARIANT("RV64IM",   ISA_U|ISA_S|RV64IM),
    RISC_VARIANT("RV64IMC",  ISA_U|ISA_S|RV64IMC),
    RISC_VARIANT("RV64IMAC", ISA_U|ISA_S|RV64IMAC),
    RISC_VARIANT("RV64G",    ISA_U|ISA_S|RV64G),
    RISC_VARIANT("RV64GC",   ISA_U|ISA_S|RV64GC),
    RISC_VARIANT("RV64GCN",  ISA_U|ISA_S|RV64GCN),

    {0} // null terminator
};

//
// This returns the supported configuration list
//
riscvConfigCP riscvGetConfigList(riscvP riscv) {
    return configList;
}

