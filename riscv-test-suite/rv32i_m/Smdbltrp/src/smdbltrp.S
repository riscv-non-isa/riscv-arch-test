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
RVTEST_CASE(0,"//check ISA:=regex(.*32.*I.*Zicsr.*Smdbltrp); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",smdbltrp)

  # Setup a M-mode trap handler and delegate all delegatable traps to S-mode
  la x1, m_mode_trap_handler
  csrw CSR_MTVEC, x1

  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUSH)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUS)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MTVEC)

  # Clear MDT bit in mstatus - reset state should be 1
  li x1, MSTATUSH_MDT
  csrc CSR_MSTATUSH, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUSH)

  # MIE can be set if MDI is already 0 or is being set to 0 in same write
  li x1, MSTATUS_MIE
  csrs CSR_MSTATUS, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUS)

  # Setting MDT to 1 should clear MIE to 0
  li x1, MSTATUSH_MDT
  csrs CSR_MSTATUSH, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUSH)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUS)

  # MIE can be set if MDI is already 0
  li x1, MSTATUS_MIE
  csrs CSR_MSTATUS, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUS)

  li x1, MSTATUSH_MDT
  csrc CSR_MSTATUSH, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUSH)

  li x1, MSTATUS_MIE
  csrs CSR_MSTATUS, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUS)

  # Trigger a ecall trap to M mode
  li x2, 1
  ecall

m_mode_trap_handler:
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUS)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MCAUSE)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MTVAL)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MEPC)
  beqz x2, do_double_trap
  # redo the ecall with x1 set to 0
  mv x2, x0
  mret
do_double_trap:
  # Trigger a double trap condition
  # This will lead to a critical-error and reset
  ecall
  unimp
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
