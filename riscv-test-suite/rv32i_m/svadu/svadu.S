// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// Test Svadu with Sv32 mode page table.
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


    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",sv32)

    RVTEST_SIGBASE(x13, signature_x13_1)
  	
    # Turn on VM
    li a0, (SATP_MODE & ~(SATP_MODE<<1)) * SATP_MODE_SV32
    la a1, test_pte_sv32
    srl a1, a1, RISCV_PGSHIFT
    or a1, a1, a0
    csrw sptbr, a1
    sfence.vma

    # setup PTE
    li a1, (TEST_PAGE/RISCV_PGSIZE << PTE_PPN_SHIFT) | PTE_V | PTE_U | PTE_R | PTE_W | PTE_X | PTE_A
    la t2, test_pte_sv32
    sw a1, (t2)

    # Set up MPRV with MPP=S, so loads and stores use S-mode
    li a1, ((MSTATUS_MPP & ~(MSTATUS_MPP<<1)) * PRV_S) | MSTATUS_MPRV
    csrs mstatus, a1
 
    # Try a faulting store (due to U) to make sure dirty bit is not set
    li x28, 2
    li t2, 1
    sw t2, (x0)

    li x28, 3
    # set HADE to 0
#if __riscv_xlen == 64
    li a1, MENVCFG_HADE
    csrc menvcfg, a1
#else
    li a1, MENVCFGH_HADE
    csrc menvcfgh, a1
#endif

    # We do this test twice (as 3 and again as 4). For the second run,
    # we'll have toggled HADE and branch to here:
1:
    # Set SUM=1 so user memory access is permitted
    li a1, ((MSTATUS_MPP & ~(MSTATUS_MPP<<1)) * PRV_S) | MSTATUS_SUM
    csrs mstatus, a1

    # Make sure SUM=1 works
    lw t0, dummy - DRAM_BASE
    bnez t0, die

    # Try a non-faulting store to make sure dirty bit is set
    sw t2, dummy - DRAM_BASE, a0

    # Make sure it succeeded
    lw t0, dummy - DRAM_BASE
    bne t0, t2, die

    # Leave MPRV
    li t0, MSTATUS_MPRV
    csrc mstatus, t0

    # Make sure D bit is set
    lw t0, test_pte_sv32
    li a0, PTE_A | PTE_D
    and t0, t0, a0
    bne t0, a0, die

    # Enter MPRV again
    li t0, MSTATUS_MPRV
    csrs mstatus, t0

    addi x28, x28, 1
    li t0, 5
    beq x28, t0, 1f

    # reset this value:
    sw zero, dummy - DRAM_BASE, a0

    # set HADE to 1
#if __riscv_xlen == 64
    li a1, MENVCFG_HADE
    csrs menvcfg, a1
#else
    li a1, MENVCFGH_HADE
    csrs menvcfgh, a1
#endif

    j 1b
  
    j done

    .align 2
    .global rvtest_mtrap_routine
rvtest_mtrap_routine:
    csrr t0, mcause
    add t0, t0, -CAUSE_STORE_PAGE_FAULT
    bnez t0, die

    li t1, 2
    bne x28, t1, 1f
    # Make sure D bit is clear
    lw t0, test_pte_sv32
    and t1, t0, PTE_D
    bnez t1, die
skip:
    csrr t0, mepc
    add t0, t0, 4
    csrw mepc, t0
    mret

1:
    # The implementation doesn't appear to set D bits in HW.
    # Verify that HADE is 0.
#if __riscv_xlen == 64
    csrr a1, menvcfg
    li t0, MENVCFG_HADE
    and a1, a1, t0
    bnez a1, die
#else
    csrr a1, menvcfgh
    li t0, MENVCFGH_HADE
    and a1, a1, t0
    bnez a1, die
#endif
    # Make sure the D bit really is clear.
    lw t0, test_pte_sv32
    and t1, t0, PTE_D
    bnez t1, die
    # Set the D bit.
    or t0, t0, PTE_D
    sw t0, test_pte_sv32, t1
    sfence.vma
    mret
done:
RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 12
TEST_PAGE: .fill   4096/REGWIDTH, REGWIDTH, 0
.align 12
test_pte_sv32: .dword (TEST_PAGE/RISCV_PGSIZE << PTE_PPN_SHIFT) | PTE_V | PTE_U | PTE_R | PTE_W | PTE_X | PTE_A
dummy: .dword 0
RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

test_A_res:
    .fill 2, 4, 0xdeadbeef

#ifdef rvtest_gpr_save
gpr_save:
  .fill 32*(XLEN/32), 4, 0xdeadbeef
#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END


