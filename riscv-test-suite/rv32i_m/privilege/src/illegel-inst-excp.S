// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the ecall instruction of the RISC-V I extension.
// 

#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV32I")
        
# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN


#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",Illegal)
RVTEST_SIGBASE( x11,test_A_res)




  .align 2


  # Skip the rest of the test if S-mode is not present.
  li t0, MSTATUS_MPP
  csrc mstatus, t0
  li t1, (MSTATUS_MPP & -MSTATUS_MPP) * PRV_S
  csrs mstatus, t1
  csrr t2, mstatus
  and t2, t2, t0



  # Test vectored interrupts if they are supported.
test_vectored_interrupts:
  csrwi mip, MIP_SSIP
  csrwi mie, MIP_SSIP
  la t0, mtvec_handler + 1
  csrrw s0, mtvec, t0
  csrr t0, mtvec
  andi t0, t0, 1
  beqz t0, msip
  csrsi mstatus, MSTATUS_MIE
1:
  j 1b
msip:
  csrw mtvec, s0

  # Delegate supervisor software interrupts so WFI won't stall.
  csrwi mideleg, MIP_SSIP
  # Enter supervisor mode.
  la t0, 1f
  csrw mepc, t0
  li t0, MSTATUS_MPP
  csrc mstatus, t0
  li t1, (MSTATUS_MPP & -MSTATUS_MPP) * PRV_S
  csrs mstatus, t1
  mret

1:
  # Make sure WFI doesn't trap when TW=0.
  wfi
bad3:
  .word 0
  j fail

bad4:
  # Make sure WFI does trap when TW=1.
  wfi
  j fail

  # Make sure SFENCE.VMA and sptbr don't trap when TVM=0.
  sfence.vma
  csrr t0, sptbr
bad5:
  .word 0
  j fail

bad6:
  # Make sure SFENCE.VMA and sptbr do trap when TVM=1.
  sfence.vma
  j fail
bad7:
  csrr t0, sptbr
  j fail

  # Make sure SRET doesn't trap when TSR=0.
  la t0, bad8
  csrw sepc, t0
  li t0, SSTATUS_SPP
  csrs sstatus, t0
  li t0, SSTATUS_SPIE
  csrc sstatus, t0
  sret
bad8:
  .word 0
  j fail

  # Make sure SRET does trap when TSR=1.
  la t0, 1f
  csrw sepc, t0
bad9:
  sret
1:
  j fail


  .align 8
  .global mtvec_handler
mtvec_handler:
  j synchronous_exception
  j msip
  j fail
  j fail
  j fail
  j fail
  j fail
  j fail
  j fail
  j fail
  j fail
  j fail
  j fail
  j fail
  j fail
  j fail

synchronous_exception:
  li t1, CAUSE_ILLEGAL_INSTRUCTION
  csrr t0, mcause
  bne t0, t1, fail
  csrr t0, mepc

  # Make sure mtval contains either 0 or the instruction word.
  csrr t2, mbadaddr
  beqz t2, 1f
  lhu t3, 0(t0)
  lhu t4, 2(t0)
  slli t4, t4, 16
  or t3, t3, t4
  bne t2, t3, fail
1:

  la t1, bad3
  beq t0, t1, 3f
  la t1, bad4
  beq t0, t1, 4f
  la t1, bad5
  beq t0, t1, 5f
  la t1, bad6
  beq t0, t1, 6f
  la t1, bad7
  beq t0, t1, 7f
  la t1, bad8
  beq t0, t1, 8f
  la t1, bad9
  beq t0, t1, 9f
  j fail
2:
4:
6:
7:
  addi t0, t0, 8
  csrw mepc, t0
  mret

3:
  li t1, MSTATUS_TW
  csrs mstatus, t1
  j 2b

5:
  li t1, MSTATUS_TVM
  csrs mstatus, t1
  j 2b

8:
  li t1, MSTATUS_TSR
  csrs mstatus, t1
  j 2b

9:
  j 2b
  
  

fail:

#endif

 # ---------------------------------------------------------------------------------------------
    # HALT
        
        


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
# Input data section.
    .data
    .align 4
RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN

test_A_res:
    .fill 2, 4, 0xdeadbeef

mtrap_sigptr:
  .fill 4, 4, 0xdeadbeef


RVMODEL_DATA_END
