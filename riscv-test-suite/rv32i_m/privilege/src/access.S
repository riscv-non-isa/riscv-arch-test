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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",access)
RVTEST_SIGBASE( x11,test_A_res)




  .align 2

//  # Flipping just the MSB should result in an illegal address for RV32/RV64.
  la t2, fail
  li t0, 1 << (__riscv_xlen - 1)
  xor t0, t0, t2

/*

  # jalr to an illegal address should commit (hence should write rd).
  # after the pc is set to rs1, an access exception should be raised.
  li t1, CAUSE_FETCH_ACCESS
  la t3, 1f
  li t2, 0
  jalr t2, t0
1:
*/

//  # A load to an illegal address should not commit.
  li x2, 3
  li t1, CAUSE_LOAD_ACCESS
  la t3, 1f
  mv t2, t3
  lb t2, (t0)
  j fail
  j pass

  .align 2
  .global mtvec_handler
mtvec_handler:
  j synchronous_exception
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
  j fail

synchronous_exception:
  li a0, 2
  beq x2, a0, 2f
  li a0, 3
  beq x2, a0, 2f
  j fail

2:
  bne t2, t3, fail

  csrr t2, mcause
  bne t2, t1, fail

  csrw mepc, t3
  mret
fail: 
 fence; 
pass:
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 1*(XLEN/32),4,0xdeadbeef


mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef


#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif


RVMODEL_DATA_END
