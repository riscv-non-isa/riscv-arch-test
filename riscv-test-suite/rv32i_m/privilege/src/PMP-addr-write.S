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
#define OFFSET	4

	.attribute unaligned_access, 0
	.attribute stack_align, 16
  	.align	2
  
    
main: 


//////////////////// TEST START HERE  /////////////////////////////////////////////

     	li	a5,-1                   # PUT 0xFFFFFFFF
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




	csrr 	a2, pmpcfg0		# READ pmpcfg0		
	RVTEST_SIGUPD(x3,a2,0)
	addi 	x3, x3, OFFSET
	
	
	csrw pmpcfg0, a5		# WRITE pmpcfg0 with ALL 1s, Locked the lock-bit [7,15,23,31]
	nop
	
	csrr a4, pmpcfg0		# READ pmpcfg0		
	RVTEST_SIGUPD(x3,a4,0)
	addi 	x3, x3, OFFSET

#	// Verify that LOCKED bits are HIGH by displaying it in debugger
		
	
	

#	// TRY TO WRITE ADDRESS REGISTER. THIS WRITE SHOULD HAVE BEEN IGNORED 
	csrw pmpaddr0, a5		# WRITE pmpaddr0 with some other values
	nop
	
	csrr a3, pmpaddr0		# READ pmpaddr0		
	
	RVTEST_SIGUPD(x3,a3,0)
	addi 	x3, x3, OFFSET






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
