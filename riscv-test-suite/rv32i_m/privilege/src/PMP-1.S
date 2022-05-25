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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",PMP1)
RVTEST_SIGBASE( x11,test_A_res)

	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.align	2

#define init_pt			\
	lui	a5,%hi(l2pt);	\
	addi	a5,a5,%lo(l2pt);	\
	srli	a5,a5,12;	\
	slli	a5,a5,10;	\
	ori	a4,a5,1;	\
	lui	a5,%hi(l1pt);	\
	sw	a4,%lo(l1pt)(a5);	\
	lui	a5,%hi(scratch);	\
	addi	a5,a5,%lo(scratch);	\
	srli	a5,a5,12;	\
	slli	a5,a5,10;	\
	ori	a4,a5,199;	\
	lui	a5,%hi(l2pt);	\
	addi	a5,a5,%lo(l2pt);	\
	sw	a4,4(a5);	\
	li	a5,1;		\
	sw	a5,-20(s0);	\
	lw	a5,-20(s0);	\
	slli	a5,a5,31;	\
	mv	a4,a5;		\
	lui	a5,%hi(l1pt);	\
	addi	a5,a5,%lo(l1pt);	\
	srli	a5,a5,12;	\
	or	a5,a4,a5;	\
	
	csrw sptbr, a5
	li	a5,1638400
	csrw pmpcfg0, a5
	li	a5,-1
	csrw pmpaddr2, a5
	nop
	init_pt
	
#endif

 # ---------------------------------------------------------------------------------------------
    # HALT
        
        


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
# Input data section.
    .data
trap_expected:
	.zero	4
	.align	12
scratch:
	.zero	4096
l1pt:
	.zero	4096
l2pt:
	.zero	4096

    .align 4
RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN

test_A_res:
    .fill 2, 4, 0xdeadbeef

mtrap_sigptr:
  .fill 4, 4, 0xdeadbeef


RVMODEL_DATA_END
