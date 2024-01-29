// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the wrs instruction of the RISC-V Zawrs extension
// 

#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV32IA_Zicsr")
#define WRS_STO .word MATCH_WRS_STO
#define WRS_NTO .word MATCH_WRS_NTO
# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

RVTEST_SIGBASE(x15, signature_x15_m)

#ifdef TEST_CASE_1
  RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*Zawrs.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def TEST_CASE_1=True",zawrs)

  # Locally enable STIP interrupts
  li x1, MIP_STIP
  csrw CSR_MIE, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MIE)

  # Set TW
  li x1, MSTATUS_TW
  csrr x2, CSR_MSTATUS
  or x1, x1, x2
  csrw CSR_MSTATUS, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MSTATUS)

  # no reservation, no interrupts pending; sto completes
  WRS_STO

  # reservation valid, no interrupts pending; sto completes
  la x1, test_data
  lr.w x1, (x1)
  WRS_STO

  # reservation valid, interrupt pending; sto completes
  li x1, MIP_STIP
  csrw mip, x1
  WRS_STO

  # Clear interrupt, cancel reservation
  csrw mip, x0
  la x1, test_data
  sc.w x0, x0, (x1)

  csrw satp, x0

  RVTEST_GOTO_LOWER_MODE Smode
  
  # no reservation, no interrupts pending; sto completes
  WRS_STO
  
  # reservation valid, no interrupts pending; sto completes
  la x1, test_data
  lr.w x1, (x1)
  WRS_STO

  # reservation valid, no interrupts pending; TW is 1
  # nto takes illegal interrupt
  la x1, test_data
  lr.w x1, (x1)
  WRS_NTO
  j 1f
  # shold resume here if illegal inst happened
  RVTEST_SIGUPD(x15, x0)
  j 2f
1:
  # Should branch here if illegal inst did not happen
  li x1, 1
  RVTEST_SIGUPD(x15, x1)
2:
  # cancel reservation
  la x1, test_data
  sc.w x0, x0, (x1)
  RVTEST_GOTO_MMODE

  # Pend an interrupt
  li x1, MIP_STIP
  csrw mip, x1
  csrw mideleg, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MIP)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MIDELEG)
  RVTEST_GOTO_LOWER_MODE Smode

  # reservation valid, interrupt pending
  la x1, test_data
  lr.w x1, (x1)
  WRS_NTO
  # execution comes here if no illegal inst happened
  j 2f  
  # execution comes here if illegal inst happened 
  j 3f
2:
  RVTEST_SIGUPD(x15, x0)
  j 4f
3:
  li x1, 1
  RVTEST_SIGUPD(x15, x1)
4:
  # cancel reservation
  la x1, test_data
  sc.w x0, x0, (x1)
  RVTEST_GOTO_MMODE

  csrw mip, x0
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MIP)

  RVTEST_GOTO_LOWER_MODE Umode
  # no reservation, no interrupts pending; sto completes
  WRS_STO

  # reservation valid, no interrupts pending; sto completes
  la x1, test_data
  lr.w x1, (x1)
  WRS_STO

  # reservation valid, no interrupts pending; TW is 1;
  # nto takes illegal interrupt
  la x1, test_data
  lr.w x1, (x1)
  WRS_NTO
  j 1f
  # shold resume here if illegal inst happened
  RVTEST_SIGUPD(x15, x0)
  j 2f
1:
  # Should branch here if illegal inst did not happen
  li x1, 1
  RVTEST_SIGUPD(x15, x1)
2:
  # cancel reservation
  la x1, test_data
  sc.w x0, x0, (x1)
  RVTEST_GOTO_MMODE

#endif

 # ---------------------------------------------------------------------------------------------
    # HALT

RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
# Input data section.
    .data
    .align 8
test_data:
RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

signature_x15_m:
    .fill 32*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

tsig_begin_canary:
CANARY;
mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
