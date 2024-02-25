// -----------
// Copyright (c) 2023. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the Ssdbltrp extension
//

#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV32I_Zicsr")

# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

RVTEST_SIGBASE(x15, signature_x15_m)

#ifdef TEST_CASE_1
RVTEST_CASE(0,"//check ISA:=regex(.*32.*I.*Zicsr.*Ssdbltrp); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",ssdbltrp)

  csrr x14, CSR_MTVEC

  # Cannot set SDT if extension is disabled
  li x1, SSTATUS_SDT
  csrs CSR_SSTATUS, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SSTATUS)

  # Enable double trap extension in menvcfg
  li x1, MENVCFGH_DTE
  csrs CSR_MENVCFGH, x1

  # SIE can be set if SDI is already 0 or is being set to 0 in same write
  li x1, SSTATUS_SIE
  csrs CSR_SSTATUS, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SSTATUS)
  # Setting SDT to 1 should clear SIE to 0
  li x1, SSTATUS_SDT
  csrs CSR_SSTATUS, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SSTATUS)

  # SIE can be set if SDI is already 0 or is being set to 0 in same write
  li x1, SSTATUS_SIE
  csrs CSR_SSTATUS, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SSTATUS)

  li x2, ~SSTATUS_SDT
  csrr x1, CSR_SSTATUS
  and x1, x1, x2
  li x2, SSTATUS_SIE
  or x1, x1, x2
  csrw CSR_SSTATUS, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SSTATUS)

  # Setup a M-mode trap handler and delegate all delegatable traps to S-mode
  la x1, m_mode_trap_handler
  csrw CSR_MTVEC, x1
  li x1, -1
  csrw CSR_MEDELEG, x1

  # Go to S-mode
  la x1, s_mode_test
  csrw CSR_MEPC, x1
  li x1, MSTATUS_MPP
  csrc CSR_MSTATUS, x1
  li x1, MPP_SMODE
  csrs CSR_MSTATUS, x1

  RVTEST_SIGUPD_CSR(x15, x1, CSR_MEDELEG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUS)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MTVEC)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MEPC)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MENVCFG)

  mret

s_mode_test:
  # Set/Clear/Set SDT bit in sstatus
  li x1, SSTATUS_SDT
  csrs CSR_SSTATUS, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SSTATUS)
  li x1, SSTATUS_SDT
  csrc CSR_SSTATUS, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SSTATUS)

  la x1, s_mode_trap_handler
  csrw CSR_STVEC, x1

  # Trigger a ecall trap to S mode
  li x2, 1
  ecall

s_mode_trap_handler:
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SSTATUS)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SCAUSE)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_STVAL)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SEPC)
  beqz x2, do_double_trap
  # redo the ecall with x1 set to 0
  mv x2, x0
  sret
do_double_trap:
  # Trigger a double trap condition
  ecall

m_mode_trap_handler:
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MCAUSE)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MTVAL)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MTVAL2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MEPC)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUS)
  csrw CSR_MTVEC, x14
#endif

RVTEST_CODE_END
RVMODEL_HALT

# Input data section.
RVTEST_DATA_BEGIN
    .align 4
RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

signature_x15_m:
    .fill 32*(XLEN/32),4,0xdeadbeef
mtrap_sigptr:

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
