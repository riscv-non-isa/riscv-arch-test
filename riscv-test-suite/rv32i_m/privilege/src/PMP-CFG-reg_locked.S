// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the ejal instruction of the RISC-V I extension.
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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",PMP-CFG-reg)
RVTEST_SIGBASE( x3,signature_x3_1)

	.attribute unaligned_access, 0
	.attribute stack_align, 16
  	.align	2
  
    
main: 



    	li	a5,-1
	li 	x4, 0x1F1F1F
	csrw pmpcfg0, x0
	csrw pmpcfg1, x0
	csrw pmpcfg2, x0
	csrw pmpcfg3, x0
	csrw pmpaddr0, x0
	csrw pmpaddr1, x0
	csrw pmpaddr2, x0
	csrw pmpaddr3, x0
	csrw pmpaddr4, x0
	csrw pmpaddr5, x0
	csrw pmpaddr6, x0
	csrw pmpaddr7, x0
	csrw pmpaddr8, x0
	csrw pmpaddr9, x0
	csrw pmpaddr10, x0
	csrw pmpaddr11, x0
	csrw pmpaddr12, x0
	csrw pmpaddr13, x0
	csrw pmpaddr14, x0
	csrw pmpaddr15, x0

//////////////////// Locked bit TEST 1 /////////////////////////////////////////////
	
	csrw pmpcfg0, a5		// WRITE pmpcfg0 with ALL 1s, Locked the lock-bit [7,15,23,31]
	nop
	
	csrr a5, pmpcfg0		// READ pmpcfg0		

	// Verify that LOCKED bits are HIGH
	
	RVTEST_SIGUPD(x3,a5,0)
    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x9F9F9F9F)
	addi 	x3, x3, 4
	
	
	
	// TRY TO WRITE CFG REGISTER AGAIN 
	csrw pmpcfg0, a4		// WRITE pmpcfg0 with some other values
	nop
	
	csrr a5, pmpcfg0		// READ pmpcfg0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x9F9F9F9F)
	addi 	x3, x3, 4

	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr0, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr0		// READ pmpaddr0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4



	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr1, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr1		// READ pmpaddr1		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4


	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr2, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr2		// READ pmpaddr0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4

	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr3, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr3		// READ pmpaddr0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4


//////////////////// Locked bit TEST 2 /////////////////////////////////////////////
	
	csrw pmpcfg1, a5		// WRITE pmpcfg1 with ALL 1s, Locked the lock-bit [7,15,23,31]
	nop
	
	csrr a5, pmpcfg1		// READ pmpcfg1		

	// Verify that LOCKED bits are HIGH
	
	RVTEST_SIGUPD(x3,a5,0)
    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x9F9F9F9F)
	addi 	x3, x3, 4
	
	// TRY TO WRITE CFG REGISTER AGAIN 
	csrw pmpcfg1, a4		// WRITE pmpcfg1 with some other values
	nop
	
	csrr a5, pmpcfg1		// READ pmpcfg1		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x9F9F9F9F)
	addi 	x3, x3, 4


	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr4, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr4		// READ pmpaddr0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4



	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr5, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr5		// READ pmpaddr1		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4


	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr6, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr6		// READ pmpaddr0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4

	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr7, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr7		// READ pmpaddr0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4




//////////////////// Locked bit TEST 3 /////////////////////////////////////////////
	
	csrw pmpcfg2, a5		// WRITE pmpcfg2 with ALL 1s, Locked the lock-bit [7,15,23,31]
	nop
	
	csrr a5, pmpcfg2		// READ pmpcfg2	

	// Verify that LOCKED bits are HIGH
	
	RVTEST_SIGUPD(x3,a5,0)
    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x9F9F9F9F)
	addi 	x3, x3, 4
	
	// TRY TO WRITE CFG REGISTER AGAIN 
	csrw pmpcfg2, a4		// WRITE pmpcfg2 with some other values
	nop
	
	csrr a5, pmpcfg2		// READ pmpcfg2		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x9F9F9F9F)
	addi 	x3, x3, 4



	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr8, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr8		// READ pmpaddr0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4



	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr9, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr9		// READ pmpaddr1		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4


	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr10, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr10		// READ pmpaddr0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4

	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr11, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr11		// READ pmpaddr0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4




//////////////////// Locked bit TEST 4 /////////////////////////////////////////////
	
	csrw pmpcfg3, a5		// WRITE pmpcfg3 with ALL 1s, Locked the lock-bit [7,15,23,31]
	nop
	
	csrr a5, pmpcfg3		// READ pmpcfg3		

	// Verify that LOCKED bits are HIGH
	
	RVTEST_SIGUPD(x3,a5,0)
    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x9F9F9F9F)
	addi 	x3, x3, 4
	
	// TRY TO WRITE CFG REGISTER AGAIN 
	csrw pmpcfg3, a4		// WRITE pmpcfg3 with some other values
	nop
	
	csrr a5, pmpcfg3		// READ pmpcfg3		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x9F9F9F9F)
	addi 	x3, x3, 4

	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr12, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr12		// READ pmpaddr0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4



	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr13, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr13		// READ pmpaddr1		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4


	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr14, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr14		// READ pmpaddr0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4

	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr15, a5		// WRITE pmpaddr0 with some other values
	nop
	
	csrr a5, pmpaddr15		// READ pmpaddr0		

	// The updated write should have been ignored!!!
	
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, 4
























	j exit


	












	

	
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
.word 0xdeadcafe
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
