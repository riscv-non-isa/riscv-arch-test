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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",PMP-protection)
RVTEST_SIGBASE( x3,signature_x3_1)

	.attribute unaligned_access, 0
	.attribute stack_align, 16
  	.align	2
  
    
main: 

////////////// SETTING DEFAULTS TO ZERO ///////////////////////////////////////
#define OFFSET 4
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
#define RAM_LOCATION_FOR_TEST   0x80000100
#define REGION0_ADDR         (0x40400000 >> PMP_SHIFT)   /* Base for SPI Flash */
#define REGION1_ADDR         (RAM_LOCATION_FOR_TEST >> PMP_SHIFT)   /* Base for DTIM0 (ram) */
#define REGION2_ADDR         (0x80008000 >> PMP_SHIFT)   /* Base for DTIM1 (ram) */
#define REGION3_ADDR         (0x80010000 >> PMP_SHIFT)   /* End of DTIM range */

/* Define PMP Configuration Fields */
#define OFF             0
#define RWX             (PMP_R|PMP_W|PMP_X)
#define RWXL            (RWX|PMP_L)
#define RW              (PMP_R|PMP_W)
#define RWL             (RW|PMP_L)
#define RX              (PMP_R|PMP_X)
#define RXL             (RX|PMP_L)
#define WX              (PMP_W|PMP_X)
#define WXL             (WX|PMP_L)
#define PMP0_CFG_SHIFT  0
#define PMP1_CFG_SHIFT  8
#define PMP2_CFG_SHIFT  16
#define PMP3_CFG_SHIFT  24

#define PMPCONFIG0      ((((RWX|PMP_NAPOT|PMP_L)&0xFF) << PMP0_CFG_SHIFT)   | \
                        (((RWX|PMP_NAPOT|PMP_L)&0xFF) << PMP1_CFG_SHIFT)    | \
                        (((RWX|PMP_NAPOT|PMP_L)&0xFF) << PMP2_CFG_SHIFT)    | \
                        (((RWX|PMP_NAPOT|PMP_L)&0xFF) << PMP3_CFG_SHIFT))
                        
                        
/* Setup some data for testing */
#define DATA_VALUE_NO_PROTECTION            0xAAAAAAAA
#define DATA_VALUE_PMP_ENABLED              0xEEEEEEEE

  	la   t0, mtvec_handler
    	csrw mtvec, t0					// Write vector table address



//////////////////// TEST 01 (NAPOT RX Enabled) /////////////////////////////////////////////
// First Check out the granularity
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
detect_granule:				// AS INSTRUCTED IN RISC-V Privileged Architectures V1.12-draft
	csrw pmpcfg0, 0			// WRITE 0 to pmpcfg0
	li	a4,-1
	li	a5,-1
	csrw pmpaddr0, a4		// WRITE ALL 1s in pmpaddr0
	csrr a5, pmpaddr0		// READ the address
	
	// DISPLAY pmpaddr0
	RVTEST_SIGUPD(x3,a5,0)
	addi 	x3, x3, OFFSET

	// If G is the index of the least-significant bit set, the
	// PMP granularity is 2^(G+2) bytes.
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
	addi 	x3, x3, OFFSET

	
	// DISPLAY granularity
	RVTEST_SIGUPD(x3,x7,0)
	addi 	x3, x3, OFFSET
////////////// DONE WITH GRANULARITY ///////////////////////////////////////
///////////////////// x6 = G //////////////////////////////////////////////


// SET UP DATA IN THE MEMORY /////////////////////////////////////////////
	li	a5, RAM_LOCATION_FOR_TEST
	li	a4, DATA_VALUE_NO_PROTECTION
	
	sw	a4,0(a5)
	lw	a4,0(a5)
	RVTEST_SIGUPD(x3,a4,0)
	addi 	x3, x3, OFFSET
	
	li 	a5, REGION3_ADDR
	csrw 	pmpaddr3, a5
	
	li 	a5, REGION2_ADDR
	csrw 	pmpaddr2, a5
	
	li 	a5, REGION1_ADDR
	csrw 	pmpaddr1, a5
	
	li 	a5, REGION0_ADDR
	csrw 	pmpaddr0, a5
	
	
// VERIFICATION
	csrr 	x2, pmpaddr0	
	RVTEST_SIGUPD(x3,x2,0)
	addi 	x3, x3, OFFSET
		
	csrr 	x2, pmpaddr1	
	RVTEST_SIGUPD(x3,x2,0)
	addi 	x3, x3, OFFSET
	
	csrr 	x2, pmpaddr2	
	RVTEST_SIGUPD(x3,x2,0)
	addi 	x3, x3, OFFSET
	
	csrr 	x2, pmpaddr3	
	RVTEST_SIGUPD(x3,x2,0)
	addi 	x3, x3, OFFSET
	
	li	a5, RAM_LOCATION_FOR_TEST
	
	lw	a4,0(a5)
	RVTEST_SIGUPD(x3,a4,0)
	addi 	x3, x3, OFFSET


	li 	a5, PMPCONFIG0
	csrw pmpcfg0, a5
	csrr x2, pmpcfg0
	RVTEST_SIGUPD(x3,x2,0)
	addi 	x3, x3, OFFSET
	
// WRITING NEW VALUE; IT WILL GIVE EXCEPTION AS NO WRITE PERMISSION	
	li	a5, RAM_LOCATION_FOR_TEST
	li	a4, DATA_VALUE_PMP_ENABLED
	
	sw	a4,0(a5)
	
	
	lw	a4,0(a5)
	RVTEST_SIGUPD(x3,a4,0)
	addi 	x3, x3, OFFSET
	
	


	j exit



	

	
 	.align 4
  	.global mtvec_handler
mtvec_handler:
	
	li  x4, 0x80
	csrw mie, x4
	csrr a1, mcause
	li	x1,1
	RVTEST_SIGUPD(x3,x1,0)
	addi 	x3, x3, OFFSET
	
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
    .fill 15*(XLEN/32),4,0x00000000



#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 1*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 5*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
