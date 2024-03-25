// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This test belongs to PMP Test plan developed by 10xEngineers
// which can be found here: https://docs.google.com/spreadsheets/d/1TwiNvnGmAvSCAXhnsTnn6E295kD4p97CLVjh49zRVF8/edit?usp=sharing
//
// This assembly file detects the granulairty of PMP.
//////////////////////// It DETECT pmpaddri[G-1:0] bits must be read zero in case of pmpcfgi.A[1]==0
//////////////////////// uneffecting the underlaying actual value for G>=1
// 
#define rvtest_strap_routine
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32I_Zicsr")

# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",pmpcfg)
RVTEST_SIGBASE( x3,signature_x3_1)
	.attribute unaligned_access, 0
	.attribute stack_align, 16
  	.align	2
main: 
//////////////////// Granularity TEST 1 /////////////////////////////////////////////
detect_granule:				// AS INSTRUCTED IN RISC-V Privileged Architectures V1.12-draft
// RISC-V Priv Architecture Manual (Article 3.7.1)
// Software may determine the PMP granularity by writing zero to pmp0cfg, then writing all ones
// to pmpaddr0, then reading back pmpaddr0. If G is the index of the least-significant bit set, the
// PMP granularity is 2^(G+2) bytes.
	csrw pmpcfg0, 0			// WRITE 0 to pmpcfg0
	nop				// Added nop in case of trap
	LI(a4, -1)			// Value -1 to be put in pmpaddr0
	
	csrw pmpaddr0, a4		// WRITE ALL 1s in pmpaddr0
	csrr a5, pmpaddr0		// READ the value (for verification)
	
	// DISPLAY pmpaddr0
	RVTEST_SIGUPD(x3,a5)

	// If G is the index of the least-significant bit set, the
	// PMP granularity is 2^(G+2) bytes.
	LI(x5,1)			// VARIABLE i
	LI(x6,2)			// VARIABLE g
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
	RVTEST_SIGUPD(x3,x6)
	// DISPLAY granularity
	RVTEST_SIGUPD(x3,x7)
//////////////////////// DETECT pmpaddri[G-1:0] bits must be read zero in case of pmpcfgi.A[1]==0
//////////////////////// uneffecting the underlaying actual value for G>=1
	csrw pmpcfg0, 0			// WRITE 0 to pmpcfg0
	nop				// Added nop in case of trap
	csrw pmpaddr0, a4		// WRITE ALL 1s in pmpaddr0
	csrr a5, pmpaddr0		// READ the address
	// DISPLAY pmpaddr0
	RVTEST_SIGUPD(x3,a5)
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
signature_x3_1:
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
RVMODEL_DATA_END