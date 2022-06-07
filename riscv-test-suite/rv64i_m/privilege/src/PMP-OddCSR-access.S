// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the ejal instruction of the RISC-V I extension.
// 

#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV64I")
        
# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT



RVTEST_CODE_BEGIN


#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*64.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",PMP-OddCSR-access)
RVTEST_SIGBASE( x3,signature_x3_1)

	.option nopic
	.attribute unaligned_access, 0
	.attribute stack_align, 16
  	.align	2
  
    
main: 
//  	li s1, CAUSE_ILLEGAL_INSTRUCTION
	
	li	x1,0
    	li	a5,-1



/////////////////// TEST 01 ////////////////////////////////////////////
test1:    	
	csrw pmpcfg0, a5
	beq x1, x0, pass1
	bne x1, x0, fail1

pass1:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test2
	
fail1:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 02 ////////////////////////////////////////////
test2:    	
	csrw pmpcfg1, a5
	beq x1, x0, pass2
	bne x1, x0, fail2

pass2:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test3
	
fail2:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 03 ////////////////////////////////////////////
test3:    	
	csrw pmpcfg2, a5
	beq x1, x0, pass3
	bne x1, x0, fail3

pass3:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test4
	
fail3:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 04 ////////////////////////////////////////////
test4:    	
	csrw pmpcfg3, a5
	beq x1, x0, pass4
	bne x1, x0, fail4

pass4:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test5
	
fail4:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 05 ////////////////////////////////////////////
test5:    	
	csrr a5, pmpcfg0
	beq x1, x0, pass5
	bne x1, x0, fail5

pass5:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test6
	
fail5:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 06 ////////////////////////////////////////////
test6:    	
	csrr a5, pmpcfg1
	beq x1, x0, pass6
	bne x1, x0, fail6

pass6:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test7
	
fail6:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 07 ////////////////////////////////////////////
test7:    	
	csrr a5, pmpcfg2
	beq x1, x0, pass7
	bne x1, x0, fail7

pass7:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test8
	
fail7:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 08 ////////////////////////////////////////////
test8:    	
	csrr a5, pmpcfg3
	beq x1, x0, pass8
	bne x1, x0, fail8

pass8:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest17
	
fail8:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0




addrSMtest17:
	j	exit
	
	

	
 .align 8
  	.global mtvec_handler
mtvec_handler:
	
	li  x4, 0x80
	csrw mie, x4
	csrr a1, mcause
	li	x1,1

	csrr a0, mepc
	addi a0, a0, 4
	csrw mepc, a0	
	
	
	csrr a5, mstatus				// Read mstatus
	
	jr a0

  	
exit:	
	
#endif

 # ---------------------------------------------------------------------------------------------
    # HALT
        
        


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN


signature_x3_0:
    .fill 0*(XLEN/32),4,0x00000000


signature_x3_1:
    .fill 128*(XLEN/32),4,0x00000000



#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 1*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 5*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
