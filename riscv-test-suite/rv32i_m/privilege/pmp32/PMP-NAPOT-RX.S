// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This test belongs to PMP Test plan developed by 10xEngineers
// which can be found here: https://docs.google.com/spreadsheets/d/1TwiNvnGmAvSCAXhnsTnn6E295kD4p97CLVjh49zRVF8/edit?usp=sharing
/* 
	PMP Test for RX of memory region in NAPOT address matching mode
	PMP memory region is defined @pmpaddr1,	
	pmpcfg0 is used with the corresponding address registers 
 */
#define rvtest_strap_routine
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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",pmp-tor)
RVTEST_SIGBASE( x13,signature_x13_1)
	.attribute unaligned_access, 0
	.attribute stack_align, 16
  	.align	3
main: 
/* Define PMP Configuration Fields */
#define PMP0_CFG_SHIFT  0
#define PMP1_CFG_SHIFT  8
#define PMP2_CFG_SHIFT  16
#define PMP3_CFG_SHIFT  24
/* SETTING DEFAULTS TO ZERO */
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
	
// pmpcfg0 value to configure address 0->RAM_LOCATION_FOR_TEST in TOR Mode with RWX enabled
#define PMPCONFIG0      ((((PMP_R|PMP_W|PMP_X|PMP_L|PMP_TOR)&0xFF) << PMP0_CFG_SHIFT))
// pmpcfg0pmpcfg0[15:8] value to configure address (RAM_LOCATION_FOR_TEST)->(RAM_LOCATION_FOR_TEST+3*(XLEN/32))
// in TOR Mode with RWX enabled =========> THIS IS OUR REGION UNDER OBSERVATION
#define PMPCONFIG1      ((((PMP_R|PMP_X|PMP_L|PMP_NAPOT)&0xFF) << PMP1_CFG_SHIFT))
// pmpcfg0[31:24] value to configure address (rvtest_code_end)->(PMP_region_High)
// in TOR Mode with RWX enabled
#define PMPCONFIG3      ((((PMP_R|PMP_W|PMP_X|PMP_L|PMP_TOR)&0xFF) << PMP3_CFG_SHIFT))
                                                                  
/* Setup some data for testing */
#define DATA_VALUE_FOR_READ1                 0xAAAAAAAA
#define DATA_VALUE_FOR_READ2                 0xBBBBBBBB
#define DATA_VALUE_FOR_WRITE1                0x11111111
#define DATA_VALUE_FOR_WRITE2                0x22222222


    /* SET UP DATA IN THE MEMORY */
	csrw satp, x0			// Disable Address Translation
	LA(a5, RAM_LOCATION_FOR_TEST)	// Get the address to RAM_LOCATION_FOR_TEST
	LI(a4, DATA_VALUE_FOR_READ1)	// Load the value to initialize memory region
	sw	a4,0(a5)		// Store the value @ RAM_LOCATION_FOR_TEST
	lw	a4,0(a5)		// Reload it to verify
// VERIFICATION
	RVTEST_SIGUPD(x13,a4)		// Store into the signature
	
	LI(a4, DATA_VALUE_FOR_READ2)	// Load the 2nd value
    	sw a4, 4(a5)			// Update it @ RAM_LOCATION_FOR_TEST+4 address
    	lw a4, 4(a5)			// Reload it to verify
// VERIFICATION
    	RVTEST_SIGUPD(x13,a4)
// PMP Configuration
/* PMP is configure in the following order:
1. Address 0x8000 0000 to Address RAM_LOCATION_FOR_TEST => PMP TOR Region with RWX enabled. This region is the part of the code memory containing our code. For this purpose, pmpaddr0 has been given the value of RAM_LOCATION_FOR_TEST to declare the region from 0->RAM_LOCATION_FOR_TEST into a single PMP region.

2. Address RAM_LOCATION_FOR_TEST to Address RAM_LOCATION_FOR_TEST+12*(XLEN/32) => PMP region under test. This region has been declared by entering RAM_LOCATION_FOR_TEST+3*(XLEN/32) into pmpaddr1, and configure pmpaddr0(RAM_LOCATION_FOR_TEST) to pmpaddr1(RAM_LOCATION_FOR_TEST+3*(XLEN/32)) into TOR mode by setting pmpcfg0[15:8]=0x8F

3. Address rvtest_code_end to address PMP_region_High => PMP TOR Region with RWX enabled. This region is the part of the code memory containing trap handler, epilogs, and other important macro definitions. For this purpose, configure pmpaddr2(rvtest_code_end) to pmpaddr3(PMP_region_High) into TOR mode by setting pmpcfg0[31:24]=0x8F. This PMP Region is mandatory to access signature area in S,U mode	*/

    /* Assigning addresses to PMP address registers */
    	LA(a5, RAM_LOCATION_FOR_TEST)	// Value to be stored in pmpaddr0
    	srl a5, a5, PMP_SHIFT		// Shift Right by PMP_SHIFT times
	csrw 	pmpaddr0, a5		// Updated pmpaddr0
	nop				// Added nop in case of trap

    	LA(a5, RAM_LOCATION_FOR_TEST+4*(XLEN/32))	// Value to be stored in pmpaddr1
    	srl a5, a5, PMP_SHIFT		// Shift Right by PMP_SHIFT times
	csrw 	pmpaddr1, a5		// Updated pmpaddr1
	nop				// Added nop in case of trap

////////////////// DECLARE SIGNATURE AREA & TRAP HANDLER INTO A PMP REGION /////////////////
// It has been done to avoid getting store/amo access faults in S or U mode
// when RVTEST_SIGUPD will be used to update signatures in S-mode or U-mode
// In order to declare PMP region consisting on whole data region,
// RVMODEL_DATA_BEGIN & RVMODEL_DATA_END have been used as ranges in TOR mode.
///////////////////////////////////////////////////////////////////////////////
	LA(x4, rvtest_code_end)		// Loaded the upper address of PMP region
	srl x4, x4, PMP_SHIFT		// Shift right by 2 times
	csrw 	pmpaddr2, x4		// Updated pmpaddr2
	nop				// Added nop in case of trap
	LA(x4, PMP_region_High)		// Loaded the upper address of PMP region
	srl x4, x4, PMP_SHIFT		// Shift right by 2 times
	csrw 	pmpaddr3, x4		// Updated pmpaddr3
	nop				// Added nop in case of trap
    
    /* Decalring pmp configuration register */
	LI(x4, PMPCONFIG0 | PMPCONFIG1 | PMPCONFIG3)	
	// Value to be stored in pmpcfg register
	csrs pmpcfg0, x4		// Updated pmpcfg
	nop				// Added nop in case of trap
//////////// PMP Region for Signature Area defined, it was mandatory to access signature area in S,U mode

// PMP Region configured	
    /* VERIFICATION in M-mode  */
    
    	LA(a5, RAM_LOCATION_FOR_TEST)	// Fetch the address which is inside pmp region
    	lw	a4,0(a5)		// Load data from it
	RVTEST_SIGUPD(x13,a4)

    	lw	a4,4(a5)		// Load data of next location
	RVTEST_SIGUPD(x13,a4)

    /* WRITING new value to memory region
    Throws exception if the WRITability is blocked */

	LA(a5, RAM_LOCATION_FOR_TEST)	// Fetch the address
	LI(a4, DATA_VALUE_FOR_WRITE1)	// Load the new value 
	sw	a4,0(a5)		// Store the new value (WILL NOT TRAP - W enabled)
	lw	a4,0(a5)		// Reload for verification
	RVTEST_SIGUPD(x13,a4)

	LA(a5, RAM_LOCATION_FOR_TEST)	// Fetch the address
	LI(a4, DATA_VALUE_FOR_WRITE1)	// Load the new value 
	sw	a4,4(a5)		// Store the new value at address outside PMP region 
					// (WILL NOT TRAP - W enabled)
	lw	a4,4(a5)		// Reload for verification
	RVTEST_SIGUPD(x13,a4)
	
// VERIFICATION IN S-Mode	
	RVTEST_GOTO_LOWER_MODE	Smode		// SWITCH TO S-mode
//	READING data from the memory region
//    Throws exception if READability is blocked */    
    	LA(a5, RAM_LOCATION_FOR_TEST)	// Fetch the address which is inside pmp region
    	lw	a4,0(a5)		// Load data from it
	RVTEST_SIGUPD(x13,a4)

    	lw	a4,4(a5)		// Load data of next location (TRAP -> its outside PMP region)
	RVTEST_SIGUPD(x13,a4)

    /* WRITING new value to memory region
    Throws exception if the WRITability is blocked */

	LA(a5, RAM_LOCATION_FOR_TEST)	// Fetch the address
	LI(a4, DATA_VALUE_FOR_WRITE1)	// Load the new value 
	sw	a4,0(a5)		// Store the new value (WILL NOT TRAP - W enabled)
	lw	a4,0(a5)		// Reload for verification (Will not TRAP)
	RVTEST_SIGUPD(x13,a4)

/////////////////// Switch back to M-mode ////////////////////////////////////////////
	RVTEST_GOTO_MMODE
  	csrr a4, mstatus		// VERIFICATION of M-mode
	nop
	RVTEST_SIGUPD(x13,a4)
// VERIFICATION IN U-Mode
	csrw satp, x0			// Disable Address Translation
	RVTEST_GOTO_LOWER_MODE	Umode		// SWITCH TO U-mode	
//	READING data from the memory region
//    Throws exception if READability is blocked */
    	LA(a5, RAM_LOCATION_FOR_TEST)	// Fetch the address which is inside pmp region
    	lw	a4,0(a5)		// Load data from it
	RVTEST_SIGUPD(x13,a4)

    	lw	a4,4(a5)		// Load data of next location (TRAP -> its outside PMP region)
	RVTEST_SIGUPD(x13,a4)

    /* WRITING new value to memory region
    Throws exception if the WRITability is blocked */

	LA(a5, RAM_LOCATION_FOR_TEST)	// Fetch the address
	LI(a4, DATA_VALUE_FOR_WRITE1)	// Load the new value 
	sw	a4,0(a5)		// Store the new value (WILL NOT TRAP - W enabled)
	lw	a4,0(a5)		// Reload for verification
	RVTEST_SIGUPD(x13,a4)

	LA(a5, RAM_LOCATION_FOR_TEST)	// Fetch the address
	LI(a4, DATA_VALUE_FOR_WRITE1)	// Load the new value 
	sw	a4,4(a5)		// Store the new value at address outside PMP region 
					// (TRAP - outside PMP region, no access in U-mode)
	lw	a4,4(a5)		// Reload for verification
	RVTEST_SIGUPD(x13,a4)
	j exit

RAM_LOCATION_FOR_TEST:
	.fill 3*(XLEN/32),4,0x12345678
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
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
RVTEST_DATA_END


RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;
signature_x13_1:
    .fill 32*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

tsig_begin_canary:
CANARY;
mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
PMP_region_High:
RVMODEL_DATA_END