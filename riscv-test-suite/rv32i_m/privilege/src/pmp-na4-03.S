// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the ejal instruction of the RISC-V I extension.
// 

/* 
	PMP Test for RW of memory region in NA4 Address match mode
	pmp1cfg entry is configured
	pmpcfg0 is used with the corresponding address registers 
 */


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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",pmp-na4)
RVTEST_SIGBASE( x3,signature_x3_1)

	.attribute unaligned_access, 0
	.attribute stack_align, 16
  	.align	2
  
    
main: 

/* SETTING DEFAULTS TO ZERO */
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
#define DATA_WRITE_ADDR         0x80000200
#define REGION0_ADDR         (0x80000600 >> PMP_SHIFT)   /* Base for SPI Flash */
#define REGION1_ADDR         (0x80000200 >> PMP_SHIFT)   /* Base for DTIM0 (ram) */
#define REGION2_ADDR         (0x80000800 >> PMP_SHIFT)   /* Base for DTIM1 (ram) */
#define REGION3_ADDR         (0x80000900 >> PMP_SHIFT)   /* End of DTIM range */

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

#define PMPCONFIG0      ((((RWX|PMP_L|OFF)&0xFF) << PMP0_CFG_SHIFT)     | \
                        (((RW|PMP_L|PMP_NA4)&0xFF) << PMP1_CFG_SHIFT)  | \
                        (((RWX|PMP_L|OFF)&0xFF) << PMP2_CFG_SHIFT)      | \
                        (((RWX|PMP_L|OFF)&0xFF) << PMP3_CFG_SHIFT))
                                                
                        
/* Setup some data for testing */

#define DATA_VALUE_FOR_READ                 0xAAAAAAAA
#define DATA_VALUE_FOR_WRITE                0x11111111

  	la   t0, mtvec_handler
    csrw mtvec, t0					// Write vector table address



    /* SET UP DATA IN THE MEMORY */

	li	a5, DATA_WRITE_ADDR

	li	a4, DATA_VALUE_FOR_READ
	sw	a4,0(a5)
	lw	a4,0(a5)
	RVTEST_SIGUPD(x3,a4,0)
	addi 	x3, x3, OFFSET
    
    /* Assigning addresses to PMP address registers */

    li 	a5, REGION0_ADDR
	csrw 	pmpaddr0, a5

    li 	a5, REGION1_ADDR
	csrw 	pmpaddr1, a5

    li 	a5, REGION2_ADDR
	csrw 	pmpaddr2, a5

	li 	a5, REGION3_ADDR
	csrw 	pmpaddr3, a5

    /* Reading pmp address registers */

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

    /* Decalring pmp configuration register */

	li 	a5, PMPCONFIG0
	csrw pmpcfg0, a5
	csrr x2, pmpcfg0
	RVTEST_SIGUPD(x3,x2,0)
	addi 	x3, x3, OFFSET
	
    /* VERIFICATION	
	READING data from the memory region
    Throws exception if READability is blocked */

    li	a5, DATA_WRITE_ADDR

    lw	a4,0(a5)
	RVTEST_SIGUPD(x3,a4,0)
	addi 	x3, x3, OFFSET

    /*WRITING new value to memory region
    Throws exception if the WRITability is blocked */

	li	a5, DATA_WRITE_ADDR
	li	a4, DATA_VALUE_FOR_WRITE
	sw	a4,0(a5)
	lw	a4,0(a5)
	RVTEST_SIGUPD(x3,a4,0)
	addi 	x3, x3, OFFSET

	j exit
	
	
 	.align 4
  	.global mtvec_handler
mtvec_handler:
	
	li  x4, 0xFFFFFFFF
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
