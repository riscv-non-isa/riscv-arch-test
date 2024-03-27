// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This test belongs to the test plan for RISC-V Privilege Arch Compliance developed by 10xEngineers
// which can be found here: https://docs.google.com/spreadsheets/d/1R7oxv12olrvQ9nKPJvSchSp-wxGxkUVXK82Dwk_ibEY/edit?pli=1#gid=1303473646
//
// This assembly file tests access to address Translation in U mode.
// As address translation does not happen while in bare mode but as Va!=Pa so there should be trap U mode.
//
/* In this test we are setting satp Mode=Bare and the remaining fields are zero and 
   other encodings for the remaining field in satp are reserved. And we are trying to access the vm_en section
   by its virtual address from page table level 0 as in this case we are setting (VA!=PA) So there should be illegal instruction fault in U mode
   as 0x81000000 has no legal instruction in the physical memory.
*/
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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def TEST_CASE_1=True",sv32)

RVTEST_SIGBASE( x13,signature_x13_1)
  	
main:
#ifdef rvtest_mtrap_routine       	                                        // Verification of existance of rvtest_mtrap_routine
    LI a4, 0xceed                                                           // Loading the 0xceed value in a4 register
    RVTEST_SIGUPD(x13, a4)                                                  // Updating the signature register x13 with the value in a4 register
#endif                                                                      // END OF LOOP BODY
                                        
#ifdef rvtest_strap_routine       	                                        // Verification of existance of rvtest_strap_routine
    LI a4, 0xbeed                                                           // Loading the 0xbeed value in a4 register
    RVTEST_SIGUPD(x13, a4)                                                  // Updating the signature register x13 with the value in a4 register
#endif                                                                      // END OF LOOP BODY
                                        
    ALL_MEM_PMP                   	                                        // Set the RWX PMP permissions to all memory regions
    WRITE_CSR(satp, x0)           	                                        // Write satp with all zeros (bare mode)
                                        
    .set va,      0x81000000       	  	                                    // rvtest_entry_point  Virtual address
    .set pa,      0x80000000           	                                    // rvtest_entry_point physical address

///////////////////////////////// PTE SETUP /////////////////////////////////////////////// 
    // PTE Setup at level 1 to point to the PTE Setup at level 0
    LA (a0, rvtest_slvl1_pg_tbl)                                            // Loads the base address of pgtbl 0 address in a0
    LI (a1, PTE_V)                                                          //sets the Permission bit to valid only to point to the pgtbl0 PTE
    PTE_SETUP_RV32(a0, a1, t0, t1, va, LEVEL1)                              // setup the PTE for level 1
    // PTE setup at level 0 -- rvtest_entry_point (0x80000000 -> 0x80000000)
    LA (a0, pa)                                                             // loads the address in a0
    LI a1, ( PTE_D | PTE_A | PTE_W | PTE_R | PTE_V | PTE_U | PTE_X| PTE_U)  // sets the permission bits
    PTE_SETUP_RV32(a0, a1, t0, t1, va, LEVEL0)                              // setup the PTE for level 0

///////////////////////////////// SAVE AREA /////////////////////////////////////////////// 
    /* Save Virtual addresses in of Code and Data 
       in their respective S-mode save area */

    // ****** code ******
    LI(t0, va)                                                              // Loading the virtual address of rvtest_entry_point in t0 register
    LA(t1, pa)                                                              // Loading the physical address of rvtest_entry_point in t1 register
    sub t0, t0, t1                                                          // (VA-PA) Note: VA > PA
    csrr sp, mscratch                                                       // Loading the mscratch register in sp register
    add t1, sp, t0                                                          // Adding the offset to the sp register
    csrw sscratch, t1                                                       // Saving the address of rvtest_entry_point in sscratch register

    LREG t1, code_bgn_off + 0 * sv_area_sz(sp)
    add t2, t1, t0
    SREG t2, code_bgn_off + 1 * sv_area_sz(sp)
    SREG t2, code_bgn_off + 2 * sv_area_sz(sp)

    // ******* data *******
    // update save area
    LREG t1, data_bgn_off + 0 * sv_area_sz(sp)
    add t2, t1, t0
    SREG t2, data_bgn_off + 1 * sv_area_sz(sp)
    SREG t2, data_bgn_off + 2 * sv_area_sz(sp)

    // signature
    LREG t1, sig_bgn_off + 0 * sv_area_sz(sp)
    add t2, t1, t0
    SREG t2, sig_bgn_off + 1 * sv_area_sz(sp)
    SREG t2, sig_bgn_off + 2 * sv_area_sz(sp)

    sfence.vma                                                             // sfence.vma instruction
    RVTEST_GOTO_LOWER_MODE Smode                                           // Switching to S mode

vm_en:
    LI(t0, 0x40)                                                           // Loading the 0x40 value in t0 register
    RVTEST_GOTO_MMODE                                                      // Switching back to M mode
    LI(a4, 0x123)                                                          // Loading the 0x123 value in a4 register
    RVTEST_SIGUPD(x13, a4)                                                 // Updating the signature register x13 with the value in a4 register
#endif

RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 22
rvtest_data:                                                               // Data section
    .word 0xbeefcafe                                                       //  at address 0x91000000
    .word 0xbabecafe                                                       //  at address 0x91000004	
    .word 0xbabecafe                                                       //  at address 0x91000008
    .word 0xbabecafe	                                                   //  at address 0x9100000c						

#ifdef rvtest_strap_routine
.align 12                                                                  // Aligning the address to 2^12
rvtest_slvl1_pg_tbl:                                                       // Page table level 1
    RVTEST_PTE_IDENT_MAP                                                   // Identity map the entire memory region
#endif                                                                     // END OF LOOP BODY

RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

// test signatures initialization
signature_x13_1:
    .fill 32 * (XLEN / 32), 4, 0xcafebeef

// trap signatures initialization
#ifdef rvtest_mtrap_routine
mtrap_sigptr:
    .fill 32 * (XLEN / 32), 4, 0xdeadbeef
#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END