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
    RVTEST_CASE(1,"//check ISA:=regex(.*64.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",PMP-CSR-access)
RVTEST_SIGBASE( x3,signature_x3_1)
#define PPV_Shift 10	
	.option nopic
	.attribute unaligned_access, 0
	.attribute stack_align, 16
  	.align	2
  
    
main: 
  	# indicate it's a store test
//  	li s1, CAUSE_ILLEGAL_INSTRUCTION
	
	li	x1,0
    	li	a5,-1

/////////////////// TEST 01 ////////////////////////////////////////////
test1:    	
	csrw pmpaddr0, a5
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
	csrw pmpaddr1, a5
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
	csrw pmpaddr2, a5
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
	csrw pmpaddr3, a5
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
	csrw pmpaddr4, a5
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
	csrw pmpaddr5, a5
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
	csrw pmpaddr6, a5
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
	csrw pmpaddr7, a5
	beq x1, x0, pass8
	bne x1, x0, fail8

pass8:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test9
	
fail8:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 09 ////////////////////////////////////////////
test9:    	
	csrw pmpaddr8, a5
	beq x1, x0, pass9
	bne x1, x0, fail9

pass9:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test10
	
fail9:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 10 ////////////////////////////////////////////
test10:    	
	csrw pmpaddr9, a5
	beq x1, x0, pass10
	bne x1, x0, fail10

pass10:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test11
	
fail10:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 11 ////////////////////////////////////////////
test11:    	
	csrw pmpaddr10, a5
	beq x1, x0, pass11
	bne x1, x0, fail11

pass11:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test12
	
fail11:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 12 ////////////////////////////////////////////
test12:    	
	csrw pmpaddr11, a5
	beq x1, x0, pass12
	bne x1, x0, fail12

pass12:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test13
	
fail12:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 13 ////////////////////////////////////////////
test13:    	
	csrw pmpaddr12, a5
	beq x1, x0, pass13
	bne x1, x0, fail13

pass13:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test14
	
fail13:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 14 ////////////////////////////////////////////
test14:    	
	csrw pmpaddr13, a5
	beq x1, x0, pass14
	bne x1, x0, fail14

pass14:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test15
	
fail14:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 15 ////////////////////////////////////////////
test15:    	
	csrw pmpaddr14, a5
	beq x1, x0, pass15
	bne x1, x0, fail15

pass15:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test16
	
fail15:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 16 ////////////////////////////////////////////
test16:    	
	csrw pmpaddr15, a5
	beq x1, x0, pass16
	bne x1, x0, fail16

pass16:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test17
	
fail16:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 17 ////////////////////////////////////////////
test17:    	
	csrw pmpcfg0, a5
	beq x1, x0, pass17
	bne x1, x0, fail17

pass17:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test18
	
fail17:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 18 ////////////////////////////////////////////
test18:    	
	csrw pmpcfg1, a5
	beq x1, x0, pass18
	bne x1, x0, fail18

pass18:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test19
	
fail18:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 19 ////////////////////////////////////////////
test19:    	
	csrw pmpcfg2, a5
	beq x1, x0, pass19
	bne x1, x0, fail19

pass19:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test20
	
fail19:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 20 ////////////////////////////////////////////
test20:    	
	csrw pmpcfg3, a5
	beq x1, x0, pass20
	bne x1, x0, fail20

pass20:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test21
	
fail20:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 21 ////////////////////////////////////////////
test21:    	
	csrr a5, pmpcfg0
	beq x1, x0, pass21
	bne x1, x0, fail21

pass21:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test22
	
fail21:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 22 ////////////////////////////////////////////
test22:    	
	csrr a5, pmpcfg1
	beq x1, x0, pass22
	bne x1, x0, fail22

pass22:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test23
	
fail22:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 23 ////////////////////////////////////////////
test23:    	
	csrr a5, pmpcfg2
	beq x1, x0, pass23
	bne x1, x0, fail23

pass23:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	test24
	
fail23:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// TEST 24 ////////////////////////////////////////////
test24:    	
	csrr a5, pmpcfg3
	beq x1, x0, pass24
	bne x1, x0, fail24

pass24:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest1
	
fail24:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 01 ////////////////////////////////////////////
addrtest1:    	
	csrr a5, pmpaddr0
	beq x1, x0, addrpass1
	bne x1, x0, addrfail1

addrpass1:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest2
	
addrfail1:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 02 ////////////////////////////////////////////
addrtest2:    	
	csrr a5, pmpaddr1
	beq x1, x0, addrpass2
	bne x1, x0, addrfail2

addrpass2:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest3
	
addrfail2:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 03 ////////////////////////////////////////////
addrtest3:    	
	csrr a5, pmpaddr2
	beq x1, x0, addrpass3
	bne x1, x0, addrfail3

addrpass3:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest4
	
addrfail3:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 04 ////////////////////////////////////////////
addrtest4:    	
	csrr a5, pmpaddr3
	beq x1, x0, addrpass4
	bne x1, x0, addrfail4

addrpass4:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest5
	
addrfail4:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 05 ////////////////////////////////////////////
addrtest5:    	
	csrr a5, pmpaddr4
	beq x1, x0, addrpass5
	bne x1, x0, addrfail5

addrpass5:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest6
	
addrfail5:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 06 ////////////////////////////////////////////
addrtest6:    	
	csrr a5, pmpaddr5
	beq x1, x0, addrpass6
	bne x1, x0, addrfail6

addrpass6:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest7
	
addrfail6:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 07 ////////////////////////////////////////////
addrtest7:    	
	csrr a5, pmpaddr6
	beq x1, x0, addrpass7
	bne x1, x0, addrfail7

addrpass7:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest8
	
addrfail7:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 08 ////////////////////////////////////////////
addrtest8:    	
	csrr a5, pmpaddr7
	beq x1, x0, addrpass8
	bne x1, x0, addrfail8

addrpass8:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest9
	
addrfail8:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 09 ////////////////////////////////////////////
addrtest9:    	
	csrr a5, pmpaddr8
	beq x1, x0, addrpass9
	bne x1, x0, addrfail9

addrpass9:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest10
	
addrfail9:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 10 ////////////////////////////////////////////
addrtest10:    	
	csrr a5, pmpaddr9
	beq x1, x0, addrpass10
	bne x1, x0, addrfail10

addrpass10:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest11
	
addrfail10:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 11 ////////////////////////////////////////////
addrtest11:    	
	csrr a5, pmpaddr10
	beq x1, x0, addrpass11
	bne x1, x0, addrfail11

addrpass11:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest12
	
addrfail11:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 12 ////////////////////////////////////////////
addrtest12:    	
	csrr a5, pmpaddr11
	beq x1, x0, addrpass12
	bne x1, x0, addrfail12

addrpass12:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest13
	
addrfail12:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 13 ////////////////////////////////////////////
addrtest13:    	
	csrr a5, pmpaddr12
	beq x1, x0, addrpass13
	bne x1, x0, addrfail13

addrpass13:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest14
	
addrfail13:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 14 ////////////////////////////////////////////
addrtest14:    	
	csrr a5, pmpaddr13
	beq x1, x0, addrpass14
	bne x1, x0, addrfail14

addrpass14:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest15
	
addrfail14:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 15 ////////////////////////////////////////////
addrtest15:    	
	csrr a5, pmpaddr14
	beq x1, x0, addrpass15
	bne x1, x0, addrfail15

addrpass15:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest16
	
addrfail15:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ TEST 16 ////////////////////////////////////////////
addrtest16:    	
	csrr a5, pmpaddr15
	beq x1, x0, addrpass16
	bne x1, x0, addrfail16

addrpass16:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrtest17
	
addrfail16:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


addrtest17:
	
    	li	a5,-1

/////////////////// S-mode TEST 01 ////////////////////////////////////////////
SMtest1:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr0, a5
	beq x1, x0, SMpass1
	bne x1, x0, SMfail1

SMpass1:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest2
	
SMfail1:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 02 ////////////////////////////////////////////
SMtest2:  

	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
  	
	csrw pmpaddr1, a5
	beq x1, x0, SMpass2
	bne x1, x0, SMfail2

SMpass2:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest3
	
SMfail2:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 03 ////////////////////////////////////////////
SMtest3:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr2, a5
	beq x1, x0, SMpass3
	bne x1, x0, SMfail3

SMpass3:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest4
	
SMfail3:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 04 ////////////////////////////////////////////
SMtest4:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr3, a5
	beq x1, x0, SMpass4
	bne x1, x0, SMfail4

SMpass4:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest5
	
SMfail4:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 05 ////////////////////////////////////////////
SMtest5:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr4, a5
	beq x1, x0, SMpass5
	bne x1, x0, SMfail5

SMpass5:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest6
	
SMfail5:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 06 ////////////////////////////////////////////
SMtest6:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr5, a5
	beq x1, x0, SMpass6
	bne x1, x0, SMfail6

SMpass6:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest7
	
SMfail6:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 07 ////////////////////////////////////////////
SMtest7:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr6, a5
	beq x1, x0, SMpass7
	bne x1, x0, SMfail7

SMpass7:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest8
	
SMfail7:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 08 ////////////////////////////////////////////
SMtest8:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr7, a5
	beq x1, x0, SMpass8
	bne x1, x0, SMfail8

SMpass8:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest9
	
SMfail8:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 09 ////////////////////////////////////////////
SMtest9:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr8, a5
	beq x1, x0, SMpass9
	bne x1, x0, SMfail9

SMpass9:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest10
	
SMfail9:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 10 ////////////////////////////////////////////
SMtest10:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr9, a5
	beq x1, x0, SMpass10
	bne x1, x0, SMfail10

SMpass10:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest11
	
SMfail10:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 11 ////////////////////////////////////////////
SMtest11:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr10, a5
	beq x1, x0, SMpass11
	bne x1, x0, SMfail11

SMpass11:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest12
	
SMfail11:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 12 ////////////////////////////////////////////
SMtest12:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr11, a5
	beq x1, x0, SMpass12
	bne x1, x0, SMfail12

SMpass12:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest13
	
SMfail12:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 13 ////////////////////////////////////////////
SMtest13:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr12, a5
	beq x1, x0, SMpass13
	bne x1, x0, SMfail13

SMpass13:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest14
	
SMfail13:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 14 ////////////////////////////////////////////
SMtest14:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr13, a5
	beq x1, x0, SMpass14
	bne x1, x0, SMfail14

SMpass14:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest15
	
SMfail14:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 15 ////////////////////////////////////////////
SMtest15:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr14, a5
	beq x1, x0, SMpass15
	bne x1, x0, SMfail15

SMpass15:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest16
	
SMfail15:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 16 ////////////////////////////////////////////
SMtest16:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpaddr15, a5
	beq x1, x0, SMpass16
	bne x1, x0, SMfail16

SMpass16:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest17
	
SMfail16:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 17 ////////////////////////////////////////////
SMtest17:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpcfg0, a5
	beq x1, x0, SMpass17
	bne x1, x0, SMfail17

SMpass17:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest18
	
SMfail17:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 18 ////////////////////////////////////////////
SMtest18:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpcfg1, a5
	beq x1, x0, SMpass18
	bne x1, x0, SMfail18

SMpass18:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest19
	
SMfail18:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 19 ////////////////////////////////////////////
SMtest19:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpcfg2, a5
	beq x1, x0, SMpass19
	bne x1, x0, SMfail19

SMpass19:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest20
	
SMfail19:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 20 ////////////////////////////////////////////
SMtest20:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrw pmpcfg3, a5
	beq x1, x0, SMpass20
	bne x1, x0, SMfail20

SMpass20:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest21
	
SMfail20:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 21 ////////////////////////////////////////////
SMtest21:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpcfg0
	beq x1, x0, SMpass21
	bne x1, x0, SMfail21

SMpass21:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest22
	
SMfail21:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 22 ////////////////////////////////////////////
SMtest22:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpcfg1
	beq x1, x0, SMpass22
	bne x1, x0, SMfail22

SMpass22:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest23
	
SMfail22:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 23 ////////////////////////////////////////////
SMtest23:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpcfg2
	beq x1, x0, SMpass23
	bne x1, x0, SMfail23

SMpass23:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	SMtest24
	
SMfail23:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// S-mode TEST 24 ////////////////////////////////////////////
SMtest24:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpcfg3
	beq x1, x0, SMpass24
	bne x1, x0, SMfail24

SMpass24:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest1
	
SMfail24:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 01 ////////////////////////////////////////////
addrSMtest1:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr0
	beq x1, x0, addrSMpass1
	bne x1, x0, addrSMfail1

addrSMpass1:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest2
	
addrSMfail1:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 02 ////////////////////////////////////////////
addrSMtest2:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr1
	beq x1, x0, addrSMpass2
	bne x1, x0, addrSMfail2

addrSMpass2:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest3
	
addrSMfail2:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 03 ////////////////////////////////////////////
addrSMtest3:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr2
	beq x1, x0, addrSMpass3
	bne x1, x0, addrSMfail3

addrSMpass3:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest4
	
addrSMfail3:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 04 ////////////////////////////////////////////
addrSMtest4:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr3
	beq x1, x0, addrSMpass4
	bne x1, x0, addrSMfail4

addrSMpass4:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest5
	
addrSMfail4:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 05 ////////////////////////////////////////////
addrSMtest5:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr4
	beq x1, x0, addrSMpass5
	bne x1, x0, addrSMfail5

addrSMpass5:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest6
	
addrSMfail5:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 06 ////////////////////////////////////////////
addrSMtest6:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr5
	beq x1, x0, addrSMpass6
	bne x1, x0, addrSMfail6

addrSMpass6:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest7
	
addrSMfail6:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 07 ////////////////////////////////////////////
addrSMtest7:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr6
	beq x1, x0, addrSMpass7
	bne x1, x0, addrSMfail7

addrSMpass7:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest8
	
addrSMfail7:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 08 ////////////////////////////////////////////
addrSMtest8:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr7
	beq x1, x0, addrSMpass8
	bne x1, x0, addrSMfail8

addrSMpass8:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest9
	
addrSMfail8:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 09 ////////////////////////////////////////////
addrSMtest9:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr8
	beq x1, x0, addrSMpass9
	bne x1, x0, addrSMfail9

addrSMpass9:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest10
	
addrSMfail9:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 10 ////////////////////////////////////////////
addrSMtest10:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr9
	beq x1, x0, addrSMpass10
	bne x1, x0, addrSMfail10

addrSMpass10:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest11
	
addrSMfail10:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 11 ////////////////////////////////////////////
addrSMtest11:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr10
	beq x1, x0, addrSMpass11
	bne x1, x0, addrSMfail11

addrSMpass11:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest12
	
addrSMfail11:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 12 ////////////////////////////////////////////
addrSMtest12:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr11
	beq x1, x0, addrSMpass12
	bne x1, x0, addrSMfail12

addrSMpass12:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest13
	
addrSMfail12:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 13 ////////////////////////////////////////////
addrSMtest13:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr12
	beq x1, x0, addrSMpass13
	bne x1, x0, addrSMfail13

addrSMpass13:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest14
	
addrSMfail13:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 14 ////////////////////////////////////////////
addrSMtest14:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr13
	beq x1, x0, addrSMpass14
	bne x1, x0, addrSMfail14

addrSMpass14:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest15
	
addrSMfail14:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 15 ////////////////////////////////////////////
addrSMtest15:    	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	csrr a5, pmpaddr14
	beq x1, x0, addrSMpass15
	bne x1, x0, addrSMfail15

addrSMpass15:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest16
	
addrSMfail15:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


/////////////////// ADDRESS READ S-mode TEST 16 ////////////////////////////////////////////
addrSMtest16: 

	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	
  
	csrr a5, pmpaddr15
	beq x1, x0, addrSMpass16
	bne x1, x0, addrSMfail16

addrSMpass16:
	TEST_RR_OP(add, x24, x4, x24, 0xbeef, 0xbeef, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0
	j	addrSMtest17
	
addrSMfail16:
	TEST_RR_OP(add, x24, x4, x24, 0xdead, 0xdead, 0x0, x3, 0, x18)
	addi 	x3, x3, 8
	li	x1,0


addrSMtest17:
	j	exit
	
SwitchToSmode:
	
	// Switching to S-Mode
   	csrw satp, zero                                	// Disable address translation.

    	
    	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address

	csrr a5, mstatus				// Read mstatus

	
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	
	
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	lw	a5,-24(s0)			// 0xFFFFEF7F

	
	csrw mstatus, a5

    	csrw mie, zero                                 # Disable interrupts.
	
	jr ra	
	

	
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
