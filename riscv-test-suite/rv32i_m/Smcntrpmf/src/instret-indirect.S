// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the sireg and siselect CSRs to access instret CSR indirectly.
//

#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV32I_Zicsr")

# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

.macro READ_INSTRET cdeval, irval
    LI(t3, 0x10000000)
	.if ( \cdeval == 0 )
        csrc 0x31A, t3  /* Clear CDE in menvcfgh */
    .else
        csrs 0x31A, t3  /* Set CDE in menvcfgh */
    .endif

    .if ( \irval == 0 )
        csrci 0x306, 4  /* Clear IR in mcounteren */
    .else
        csrsi 0x306, 4  /* Set IR in mcounteren */
    .endif

    RVTEST_GOTO_LOWER_MODE Smode
	LI(t3, 0x42)
	
	csrw   0x150, t3 /* set siselect to instret[cfg][h] */
	
	/* TODO: Currently this read of sireg infinite loops if it hits
	any illegal instruction case. There should be a trap handler that
	gives back a dummy value and lets the test proceed. */
    csrr    t3, 0x151   /* Read instret via sireg */
	
    li t2, 128
1:
    addi t2, t2, -1
    bne t2, zero, 1b
    csrr    t2, 0x151   /* Read instret via sireg */
    RVTEST_GOTO_MMODE
	
    sub     t2, t2, t3
    sw      t2, offset(x1)
    .set    offset, (offset + 4)
.endm

#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def TEST_CASE_1=True",ecall)

    # ---------------------------------------------------------------------------------------------
    LA(     x1,test_A_res)
    .set offset, 0
    csrwi CSR_SATP, 0
    RVTEST_GOTO_MMODE
	
    READ_INSTRET 1, 1
    READ_INSTRET 0, 1
    READ_INSTRET 0, 0
    READ_INSTRET 1, 0

    RVMODEL_IO_WRITE_STR(x30, "# Test part A - test sireg\n");

    RVMODEL_IO_WRITE_STR(x30, "# Test End\n")

#endif

 # ---------------------------------------------------------------------------------------------
    # HALT

RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
# Input data section.
    .data
    .align 4
RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

/* test_A_res has room for 5x5x4=100 samples, but today only 3x3x4 are used.
   When V-modes are enabled we'll be up to 5x5x4 */
test_A_res:
    .fill 100, 4, 0xacc01ade

mtrap_sigptr:
    .fill 4, 4, 0xb01dface

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
