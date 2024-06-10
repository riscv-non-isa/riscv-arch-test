// -----------
// Copyright (c) 2023. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the Smctr extension
//

#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV64I_Zicsr")

# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

RVTEST_SIGBASE(x15, signature_x15_m)

#ifdef TEST_CASE_1
RVTEST_CASE(0,"//check ISA:=regex(.*64.*I.*Zicsr.*Smctr); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def TEST_CASE_1=True", smctr_u) 

  # Update initial values to Smctr CSRs to signature`
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MCTRCTL)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SCTRCTL)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SCTRDEPTH)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SCTRSTATUS)

  # WARL discovery of mctrctl
  li x1, 0xFFFFFFFFFFFFFFFF
  csrw CSR_MCTRCTL, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_MCTRCTL)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SCTRCTL)
 
  # Discover maximum supported depth
  csrwi CSR_SCTRDEPTH, 0
  csrwi CSR_SCTRDEPTH, 1
  csrwi CSR_SCTRDEPTH, 2
  csrwi CSR_SCTRDEPTH, 3
  csrwi CSR_SCTRDEPTH, 4
  csrr x14, CSR_SCTRDEPTH
  addi x14, x14, 4
  li x1, 1
  sll x14, x1, x14
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SCTRDEPTH)

  # init wrptr and frozen to 0 and clear all CTR
  csrw CSR_SCTRSTATUS, x0
  .word MATCH_SCTRCLR  // sctrclr
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SCTRSTATUS)

  csrw CSR_SATP, x0

  # enable CTR at S mode
  li x1, (MSTATEEN0_CTR | MSTATEEN0_CSRIND)
  csrw CSR_MSTATEEN0, x1
 
  # disable CTR at U mode 
  li x1, 0
  csrw CSR_MCTRCTL, x1
  .word MATCH_SCTRCLR  // sctrclr
  csrw CSR_SCTRSTATUS, x0
  RVTEST_GOTO_LOWER_MODE Umode

  jal x9, 1f      # direct jmp with linkage
1:la x3, 2f       # indirect jmp with linkage
  jalr x9, x3
2:la x5, 3f       # function return
  jalr x0, x5
3:la x5, 4f       # coroutine
  jalr x1, x5
4:jal x0, 5f      # direct jump without linkage
5: la x3, 6f      # indirect jmp without linkage
  jalr x0, x3
6:jal x1, 7f     # direct call
7:la x3, 8f       # indirect call
  jalr x1, x3
8:beq x0, x0, 9f  # taken branch
9:bgt x0, x0, 10f # not taken branch
10:
  RVTEST_GOTO_MMODE
  RVTEST_SIGUPD_ALL_CTR(x15, x1)

  # enable CTR at U mode 
  li x1, MCTRCTL_U
  csrw CSR_MCTRCTL, x1
  .word MATCH_SCTRCLR  // sctrclr
  csrw CSR_SCTRSTATUS, x0
  RVTEST_GOTO_LOWER_MODE Umode

  jal x9, 1f      # direct jmp with linkage
1:la x3, 2f       # indirect jmp with linkage
  jalr x9, x3
2:la x5, 3f       # function return
  jalr x0, x5
3:la x5, 4f       # coroutine
  jalr x1, x5
4:jal x0, 5f      # direct jump without linkage
5: la x3, 6f      # indirect jmp without linkage
  jalr x0, x3
6:jal x1, 7f     # direct call
7:la x3, 8f       # indirect call
  jalr x1, x3
8:beq x0, x0, 9f  # taken branch
9:bgt x0, x0, 10f # not taken branch
10:
  RVTEST_GOTO_MMODE
  RVTEST_SIGUPD_ALL_CTR(x15, x1)

  # toggle  filters CTR at U mode 
  li x1, (MCTRCTL_U | MCTRCTL_DIRLJMPINH | MCTRCTL_INDLJMPINH |\
          MCTRCTL_RETINH | MCTRCTL_CORSWAPINH | MCTRCTL_DIRJMPINH |\
          MCTRCTL_INDJMPINH | MCTRCTL_DIRCALLINH | MCTRCTL_INDCALLINH |\
          MCTRCTL_TKBRINH | MCTRCTL_NTBREN | MCTRCTL_TRETINH |\
          MCTRCTL_EXCINH)
  csrw CSR_MCTRCTL, x1
  .word MATCH_SCTRCLR  // sctrclr
  csrw CSR_SCTRSTATUS, x0
  RVTEST_GOTO_LOWER_MODE Umode

  jal x9, 1f      # direct jmp with linkage
1:la x3, 2f       # indirect jmp with linkage
  jalr x9, x3
2:la x5, 3f       # function return
  jalr x0, x5
3:la x5, 4f       # coroutine
  jalr x1, x5
4:jal x0, 5f      # direct jump without linkage
5: la x3, 6f      # indirect jmp without linkage
  jalr x0, x3
6:jal x1, 7f     # direct call
7:la x3, 8f       # indirect call
  jalr x1, x3
8:beq x0, x0, 9f  # taken branch
9:bgt x0, x0, 10f # not taken branch
10:
  RVTEST_GOTO_MMODE
  RVTEST_SIGUPD_ALL_CTR(x15, x1)

  # Test STE + MTE
  li x1, MCTRCTL_U | MCTRCTL_STE | MCTRCTL_MTE
  csrw CSR_MCTRCTL, x1
  .word MATCH_SCTRCLR  // sctrclr
  csrw CSR_SCTRSTATUS, x0
  RVTEST_GOTO_LOWER_MODE Umode

  RVTEST_GOTO_MMODE
  RVTEST_SIGUPD_ALL_CTR(x15, x1)

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
    .fill 4096*(XLEN/32),4,0xdeadbeef

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
