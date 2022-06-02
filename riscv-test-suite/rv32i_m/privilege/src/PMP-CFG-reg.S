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



//////////////////// Granularity TEST 1 /////////////////////////////////////////////
detect_granule:				// AS INSTRUCTED IN RISC-V Privileged Architectures V1.12-draft

	csrw pmpcfg0, 0			// WRITE 0 to pmpcfg0


	li	a4,-1
	li	a5,-1

	csrw pmpaddr0, a4		// WRITE ALL 1s in pmpaddr0


	csrr a5, pmpaddr0		// READ the address
	
	// DISPLAY pmpaddr0
	RVTEST_SIGUPD(x3,a5,0)
//    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x01)
	addi 	x3, x3, 4

	// If G is the index of the least-significant bit set, the
	// PMP granularity is 2^(G+2) bytes.
/*
C-code:
static void detect_granule()
{
  write_csr(pmpcfg0, NULL);
  write_csr(pmpaddr0, 0xffffffffffffffffULL);
  uintptr_t ret = read_csr(pmpaddr0);
  int g = 2;
  for(uintptr_t i = 1; i; i<<=1) {
    if((ret & i) != 0) 
      break;
    g++;
  }
  granule = 1UL << g;
}
*/

	li 	x5, 1			// VARIABLE i
	li	x6, 0			// VARIABLE g
loop:	
	
	and	x4,x5,a5
	bne	x4,x0,loopend		// if not zero, then break


	addi	x6,x6,1			// else Increment g VARIABLE (x6)
	slli	x5,x5,1			// Shift left VARIABLE i (x5) and keep iterating
	j	loop
loopend:
	nop

calculations:
	li	x7,1			
	sll	x7,x7,x6		// 1UL << g;




	// DISPLAY granularity index
	RVTEST_SIGUPD(x3,x6,0)
//    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x01)
	addi 	x3, x3, 4

	
	// DISPLAY granularity
	RVTEST_SIGUPD(x3,x7,0)
//    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x01)
	addi 	x3, x3, 4



///////////////////// Zero Bits TEST 01 ///////////////////////////////////////////
    	
	csrw pmpcfg0, a5		// WRITE pmpcfg0 with ALL 1s
	nop
	
	csrr a5, pmpcfg0		// READ pmpcfg0		

	// BIT 5-6, BIT 13-14, BIT 21-22, BIT 29-30 must be hardwired to zero
	
	RVTEST_SIGUPD(x3,a5,0)
    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x9F9F9F9F)
	addi 	x3, x3, 4
	

//////////////////// Zero Bits TEST 02 /////////////////////////////////////////////
	csrw pmpcfg1, a5		// WRITE pmpcfg1 with ALL 1s
	nop
	
	csrr a5, pmpcfg1		// READ pmpcfg1		

	// BIT 5-6, BIT 13-14, BIT 21-22, BIT 29-30 must be hardwired to zero
	
	RVTEST_SIGUPD(x3,a5,0)
    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x9F9F9F9F)
	addi 	x3, x3, 4
	
//////////////////// Zero Bits TEST 03 /////////////////////////////////////////////
	csrw pmpcfg2, a5		// WRITE pmpcfg2 with ALL 1s
	nop
	
	csrr a5, pmpcfg2		// READ pmpcfg2		

	// BIT 5-6, BIT 13-14, BIT 21-22, BIT 29-30 must be hardwired to zero
	
	RVTEST_SIGUPD(x3,a5,0)
    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x9F9F9F9F)
	addi 	x3, x3, 4


//////////////////// Zero Bits TEST 04 /////////////////////////////////////////////
	csrw pmpcfg3, a5		// WRITE pmpcfg3 with ALL 1s
	nop
	
	csrr a5, pmpcfg3		// READ pmpcfg3		

	// BIT 5-6, BIT 13-14, BIT 21-22, BIT 29-30 must be hardwired to zero
	
	RVTEST_SIGUPD(x3,a5,0)
    	RVMODEL_IO_ASSERT_GPR_EQ(x18, a5, 0x9F9F9F9F)
	addi 	x3, x3, 4



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
