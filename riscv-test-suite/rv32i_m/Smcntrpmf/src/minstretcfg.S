// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the minstretcfg CSR.
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

.macro TEST_ICOUNT runmode, inhibitmode
    /* assume we start in M mode */
    .if ( \inhibitmode == M )
        LI(     x2, 0x40000000)  /* minstretcfg: inhibit M-mode */
        csrw    0x722, x2  /* minstretcfgh */
    .elseif (\inhibitmode == Smode)
        LI(     x2, 0x20000000)  /* minstretcfg: inhibit S-mode */
        csrw    0x722, x2  /* minstretcfgh */
    .elseif (\inhibitmode == Umode)
        LI(     x2, 0x10000000)  /* minstretcfg: inhibit U-mode */
        csrw    0x722, x2  /* minstretcfgh */
    .elseif (\inhibitmode == VSmode)
        LI(     x2, 0x08000000)  /* minstretcfg: inhibit VS-mode */
        csrw    0x722, x2  /* minstretcfgh */
    .elseif (\inhibitmode == VUmode)
        LI(     x2, 0x04000000)  /* minstretcfg: inhibit VU-mode */
        csrw    0x722, x2  /* minstretcfgh */
    .else
        csrw    0x722, x0  /* minstretcfgh, inhibit nowhere */
    .endif
    csrr    t3, CSR_MINSTRET
    .if (\runmode != M)
        RVTEST_GOTO_LOWER_MODE \runmode
    .endif
	/* This little loop will be a tad over 0x100 instructions */
    li t2, 128
1:
    addi t2, t2, -1
    bne t2, zero, 1b

    .if (\runmode != M)
        RVTEST_GOTO_MMODE
    .endif
    csrr    t2, CSR_MINSTRET
    sub     t2, t2, t3
    sw      t2, offset(x1)
    csrw    0x722, x0  /* restore back to no inhibit */
    .set    offset, (offset + 4)
.endm

.macro TEST_ICOUNT_ALLMODES inhibitmode
    TEST_ICOUNT M, \inhibitmode
    TEST_ICOUNT Smode, \inhibitmode
    TEST_ICOUNT Umode, \inhibitmode
    /* TODO: Add V-mode cases back in when Hypervisor is supported in RISCOF and in Sail*/
    /* TEST_ICOUNT VSmode, \inhibitmode */
    /* TEST_ICOUNT VUmode, \inhibitmode*/
.endm

#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def TEST_CASE_1=True",ecall)

    # ---------------------------------------------------------------------------------------------
    LA(     x1,test_A_res)
    .set offset, 0
    csrwi CSR_SATP, 0
    RVTEST_GOTO_MMODE
    TEST_ICOUNT_ALLMODES M
    TEST_ICOUNT_ALLMODES Smode
    TEST_ICOUNT_ALLMODES Umode
    /* TODO: Add V-mode cases back in when Hypervisor is supported in RISCOF and in Sail*/
    /* TEST_ICOUNT_ALLMODES VSmode */
    /* TEST_ICOUNT_ALLMODES VUmode */

    RVMODEL_IO_WRITE_STR(x30, "# Test part A - test minstret\n");

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

/* test_A_res has room for 5x5=25 samples, but today only 3x3 are used.
   When V-modes are enabled we'll be up to 5x5 */
test_A_res:
    .fill 25, 4, 0xacc01ade

mtrap_sigptr:
    .fill 4, 4, 0xb01dface

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
