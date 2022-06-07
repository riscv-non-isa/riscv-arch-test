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
    RVTEST_CASE(1,"//check ISA:=regex(.*64.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",PMP-CFG-reg)
RVTEST_SIGBASE( x3,signature_x3_1)

	.attribute unaligned_access, 0
	.attribute stack_align, 16
  	.align	2
  
    
main: 



    	li	a5,-1
	li 	x4, 0x1F1F1F

////////////// SETTING DEFAULTS TO ZERO ///////////////////////////////////////
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
	li	x6, 2			// VARIABLE g
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


	addi	x6, x6, -2		// G (as per privilege manual)

	// DISPLAY granularity index
	RVTEST_SIGUPD(x3,x6,0)
	addi 	x3, x3, 4

	
	// DISPLAY granularity
	RVTEST_SIGUPD(x3,x7,0)
	addi 	x3, x3, 4

//////////////////////// DETECT pmpaddri[G-1:0] bits must be read zero in case of pmpcfgi.A[1]==0
//////////////////////// uneffecting the underlaying actual value for G>=1
//////////////////// Granularity TEST 2 /////////////////////////////////////////////
	

	










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
