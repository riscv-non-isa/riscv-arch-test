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
RVTEST_CASE(0,"//check ISA:=regex(.*64.*I.*Zicsr.*Smctr); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def TEST_CASE_1=True", smctr_s) 

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
 
  # init wrptr and frozen to 0 and clear all CTR
  csrw CSR_SCTRSTATUS, x0
  .word MATCH_SCTRCLR  // sctrclr
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SCTRSTATUS)

  # delegate BREAKPOINT to S-mode
  li x4, CAUSE_BREAKPOINT
  li x1, 1
  sll x1, x1, x4
  csrs CSR_MEDELEG, x1
  csrw CSR_SATP, x0

  # enable CTR at S mode
  li x1, (MSTATEEN0_CTR | MSTATEEN0_CSRIND)
  csrw CSR_MSTATEEN0, x1


  RVTEST_GOTO_LOWER_MODE Smode

  # disable CTR at M mode 
  li x1, 0

redo: 
  csrw CSR_SCTRCTL, x1
  .word MATCH_SCTRCLR  // sctrclr
  csrw CSR_SCTRSTATUS, x0

  # direct jmp with linkage
  li x4, SCTRCTL_DIRLJMPINH
  jal x9, dirljmp0
dirljmp0:
  csrs CSR_SCTRCTL, x4
  jal x9, dirljmp1
dirljmp1:
  csrc CSR_SCTRCTL, x4

  # indirect jmp with linkage
  li x4, SCTRCTL_INDLJMPINH
  la x3, indljmp0
  jalr x9, x3
indljmp0:
  csrs CSR_SCTRCTL, x4
  la x3, indljmp1
  jalr x9, x3
indljmp1:
  csrc CSR_SCTRCTL, x4

  # function return
  li x4, SCTRCTL_RETINH
  la x5, ret0
  jalr x0, x5
ret0:
  csrs CSR_SCTRCTL, x4
  la x5, ret1
  jalr x0, x5
ret1:
  csrc CSR_SCTRCTL, x4

  # coroutine
  li x4, SCTRCTL_CORSWAPINH
  la x5, cor0
  jalr x1, x5
cor0:
  csrs CSR_SCTRCTL, x4
  la x5, cor1
  jalr x1, x5
cor1:
  csrc CSR_SCTRCTL, x4

  # direct jump without linkage
  li x4, SCTRCTL_DIRJMPINH
  jal x0, dirjmp0
dirjmp0:
  csrs CSR_SCTRCTL, x4
  jal x0, dirjmp1
dirjmp1:
  csrc CSR_SCTRCTL, x4

  # indirect jmp without linkage
  li x4, SCTRCTL_INDJMPINH
  la x3, indjmp0
  jalr x0, x3
indjmp0:
  csrs CSR_SCTRCTL, x4
  la x3, indjmp1
  jalr x0, x3
indjmp1:
  csrc CSR_SCTRCTL, x4

  # direct call
  li x4, SCTRCTL_DIRCALLINH
  jal x1, dircall0
dircall0:
  csrs CSR_SCTRCTL, x4
  jal x1, dircall1
dircall1:
  csrc CSR_SCTRCTL, x4

  # indirect call
  li x4, SCTRCTL_INDCALLINH
  la x3, indcall0
  jalr x1, x3
indcall0:
  csrs CSR_SCTRCTL, x4
  la x3, indcall1
  jalr x1, x3
indcall1:
  csrc CSR_SCTRCTL, x4

  # taken branch
  li x4, SCTRCTL_TKBRINH
  beq x0, x0, taken_branch_0
taken_branch_0:
  csrs CSR_SCTRCTL, x4
  beq x0, x0, taken_branch_1
taken_branch_1:
  csrc CSR_SCTRCTL, x4

  # not taken branch
  li x4, SCTRCTL_NTBREN
  csrs CSR_SCTRCTL, x4
  bgt x0, x0, not_taken_branch_0
not_taken_branch_0:
  csrc CSR_SCTRCTL, x4
  bgt x0, x0, not_taken_branch_1
not_taken_branch_1:

  # trap return
  li x4, SCTRCTL_TRETINH
  li x1, SSTATUS_SPP
  csrs CSR_SSTATUS, x1
  li x1, SSTATUS_SPIE
  csrc CSR_SSTATUS, x1
  la x1, trap_return_0
  csrw CSR_SEPC, x1 
  sret
trap_return_0:
  csrs CSR_SCTRCTL, x4
  li x1, SSTATUS_SPP
  csrs CSR_SSTATUS, x1
  la x1, trap_return_1
  csrw CSR_SEPC, x1 
  sret
trap_return_1:
  csrc CSR_SCTRCTL, x4

  # exception
  li x4, SCTRCTL_EXCINH
  csrs CSR_SCTRCTL, x4
  csrr x9, CSR_STVEC
  la x1, exc_0
  csrw CSR_STVEC, x1 
  ebreak
exc_0:
  la x1, exc_1
  csrw CSR_STVEC, x1 
  csrc CSR_SCTRCTL, x4
  ebreak
exc_1:
  csrw CSR_STVEC, x9

  csrr x1, CSR_SCTRCTL
  andi x1, x1, SCTRCTL_S
  csrw CSR_SCTRCTL, x0
  bne x1, x0, done

  RVTEST_SIGUPD_ALL_CTR(x15, x1)

  csrr x1, CSR_SCTRCTL
  ori  x1, x1, SCTRCTL_S
  j redo

done:

  # Test external traps from S->M
  li x4, SCTRCTL_S
  csrs CSR_SCTRCTL, x4
  li x4, SCTRCTL_EXCINH
  csrc CSR_SCTRCTL, x4
  RVTEST_GOTO_MMODE

  # Enable external trap
  li x4, MCTRCTL_MTE
  csrs CSR_MCTRCTL, x4

  RVTEST_GOTO_LOWER_MODE Smode

  # cause another external trap
  RVTEST_GOTO_MMODE
  RVTEST_GOTO_LOWER_MODE Smode

  # dump all CTRs to signature area
  csrw CSR_SCTRCTL, x0
  RVTEST_SIGUPD_ALL_CTR(x15, x1)

  # Test RASEMU mode
  .word MATCH_SCTRCLR  // sctrclr
  csrw CSR_SCTRSTATUS, x0
  li x1, (SCTRCTL_RASEMU | SCTRCTL_S)
  csrw CSR_SCTRCTL, x1

  # direct jmp with linkage
  jal x9, r_dirljmp0
r_dirljmp0:
  # indirect jmp with linkage
  la x3, r_indljmp0
  jalr x9, x3
r_indljmp0:

  # direct jump without linkage
  jal x0, r_dirjmp0
r_dirjmp0:

  # indirect jmp without linkage
  la x3, r_indjmp0
  jalr x0, x3
r_indjmp0:

  # taken branch
  beq x0, x0, r_taken_branch_0
r_taken_branch_0:

  # not taken branch
  bgt x0, x0, r_not_taken_branch_0
r_not_taken_branch_0:

  # trap return
  li x1, SSTATUS_SPP
  csrs CSR_SSTATUS, x1
  li x1, SSTATUS_SPIE
  csrc CSR_SSTATUS, x1
  la x1, r_trap_return_0
  csrw CSR_SEPC, x1 
  sret
r_trap_return_0:

  # exception
  csrr x9, CSR_STVEC
  la x1, r_exc_0
  csrw CSR_STVEC, x1 
  ecall
r_exc_0:
  csrw CSR_STVEC, x9

  RVTEST_SIGUPD_ALL_CTR(x15, x1)
  csrw CSR_SCTRSTATUS, x0
  .word MATCH_SCTRCLR  // sctrclr

  # direct call
  jal x1, r_dircall0
r_dircall0:

  #x14 has current CTR depth
  li x1, 0x200
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)
  li x1, 0x201
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)
  li x1, 0x200
  add x1, x1, x14
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)

  # indirect call
  la x3, r_indcall0
  jalr x1, x3
r_indcall0:

  li x1, 0x200
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)
  li x1, 0x201
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)
  li x1, 0x200
  add x1, x1, x14
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)

  # function return
  la x5, r_ret1
  jalr x0, x5
r_ret1:

  li x1, 0x200
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)
  li x1, 0x201
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)
  li x1, 0x200
  add x1, x1, x14
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)

  # coroutine
  la x5, r_cor0
  jalr x1, x5
r_cor0:

  li x1, 0x200
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)
  li x1, 0x201
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)
  li x1, 0x200
  add x1, x1, x14
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)

  # Test external traps from U->S
  .word MATCH_SCTRCLR  // sctrclr
  csrw CSR_SCTRSTATUS, x0
  li x1, SCTRCTL_U | SCTRCTL_S
  csrw CSR_SCTRCTL, x1

  csrr x9, CSR_STVEC
  la x1, u_exc
  csrw CSR_STVEC, x1 
  li x1, SSTATUS_SPP
  csrc CSR_SSTATUS, x1
  la x1, u_code
  csrw CSR_SEPC, x1 
  sret                  # external traps not enabled
u_code:
  ebreak
u_exc:
  la x1, u_code_1
  csrw CSR_SEPC, x1 
  li x1, SCTRCTL_U | SCTRCTL_S | SCTRCTL_STE
  csrw CSR_SCTRCTL, x1
  la x1, u_exc_1
  csrw CSR_STVEC, x1 
  li x1, SSTATUS_SPP
  csrc CSR_SSTATUS, x1
  sret                 # external traps enabled
u_code_1:
  ebreak
u_exc_1:
  # dump all CTRs to signature area
  csrw CSR_SCTRCTL, x0
  RVTEST_SIGUPD_ALL_CTR(x15, x1)

  # Test BPFRZ behavior
  .word MATCH_SCTRCLR  // sctrclr
  csrw CSR_SCTRSTATUS, x0
  li x4, SCTRCTL_S | SCTRCTL_BPFRZ
  csrs CSR_SCTRCTL, x4
  csrr x9, CSR_STVEC
  la x1, f_exc
  csrw CSR_STVEC, x1 
  ebreak
f_exc:
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SCTRSTATUS)
  li x1, 0x200
  csrw CSR_SISELECT, x1
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG2)
  RVTEST_SIGUPD_CSR(x15, x1, CSR_SIREG3)

  # end test
  RVTEST_GOTO_MMODE

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
