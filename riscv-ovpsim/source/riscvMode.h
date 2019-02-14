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

//
// Execution mode - values correspond to encoding of mstatus MPP field
//
typedef enum riscvModeS {
    RISCV_MODE_USER       = 0,
    RISCV_MODE_SUPERVISOR = 1,
    RISCV_MODE_HYPERVISOR = 2,   // not currently in use
    RISCV_MODE_MACHINE    = 3,
    RISCV_MODE_LAST
} riscvMode;

//
// Dictionary mode - simulation artifact mode, including VM enabled status
//
typedef enum riscvDModeS {

    // VM-disabled modes
    RISCV_DMODE_USER          = RISCV_MODE_USER,
    RISCV_DMODE_SUPERVISOR    = RISCV_MODE_SUPERVISOR,
    RISCV_DMODE_HYPERVISOR    = RISCV_MODE_HYPERVISOR,
    RISCV_DMODE_MACHINE       = RISCV_MODE_MACHINE,

    // VM-enabled modes (user and supervisor only)
    RISCV_DMODE_VM,
    RISCV_DMODE_USER_VM       = RISCV_DMODE_VM | RISCV_DMODE_USER,
    RISCV_DMODE_SUPERVISOR_VM = RISCV_DMODE_VM | RISCV_DMODE_SUPERVISOR,

    RISCV_DMODE_LAST

} riscvDMode;

//
// Processor disable reasons (bitmask)
//
typedef enum riscvDisableReasonE {

    RVD_ACTIVE = 0x0,   // processor running
    RVD_WFI    = 0x1,   // processor halted in WFI
    RVD_NMI    = 0x2,   // processor halted in NMI
    RVD_RESET  = 0x4,   // processor halted in reset

    // states from which to restart
    RVD_RESTART_WFI   = (RVD_WFI),
    RVD_RESTART_NMI   = (RVD_WFI|RVD_NMI),
    RVD_RESTART_RESET = (RVD_WFI|RVD_RESET)

} riscvDisableReason;

