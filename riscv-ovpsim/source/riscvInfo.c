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

// VMI header files
#include "vmi/vmiAttrs.h"
#include "vmi/vmiModelInfo.h"
#include "vmi/vmiMessage.h"

// model header files
#include "riscvStructure.h"


VMI_PROC_INFO_FN(riscvProcInfo) {

    riscvP riscv = (riscvP) processor;

    static const vmiProcessorInfo info32 = {
        .vlnv.vendor      = "riscv.ovpworld.org",
        .vlnv.library     = "processor",
        .vlnv.name        = "riscv",
        .vlnv.version     = "1.0",

        .semihost.vendor  = "riscv.ovpworld.org",
        .semihost.library = "semihosting",
        .semihost.name    = "riscv32Newlib",
        .semihost.version = "1.0",

        .helper.vendor    = "imperas.com",
        .helper.library   = "intercept",
        .helper.name      = "riscv32CpuHelper",
        .helper.version   = "1.0",

        .elfCode          = 243,
        .endianFixed      = True,
        .endian           = MEM_ENDIAN_LITTLE,
        .gdbPath          = "$IMPERAS_HOME/lib/$IMPERAS_ARCH/gdb/riscv64-unknown-elf-gdb" VMI_EXE_SUFFIX,
        .gdbInitCommands  = "set architecture riscv:rv32",
        .family           = "riscv",
        .QLQualified      = True
    };

    static const vmiProcessorInfo info64 = {
        .vlnv.vendor      = "riscv.ovpworld.org",
        .vlnv.library     = "processor",
        .vlnv.name        = "riscv",
        .vlnv.version     = "1.0",

        .semihost.vendor  = "riscv.ovpworld.org",
        .semihost.library = "semihosting",
        .semihost.name    = "riscv64Newlib",
        .semihost.version = "1.0",

        .helper.vendor    = "imperas.com",
        .helper.library   = "intercept",
        .helper.name      = "riscv64CpuHelper",
        .helper.version   = "1.0",

        .elfCode          = 243,
        .endianFixed      = True,
        .endian           = MEM_ENDIAN_LITTLE,
        .gdbPath          = "$IMPERAS_HOME/lib/$IMPERAS_ARCH/gdb/riscv64-unknown-elf-gdb" VMI_EXE_SUFFIX,
        .gdbInitCommands  = "set architecture riscv:rv64",
        .family           = "riscv",
        .QLQualified      = True
    };

    return (riscv->configInfo.arch & ISA_XLEN_64) ? &info64 : &info32;
}

