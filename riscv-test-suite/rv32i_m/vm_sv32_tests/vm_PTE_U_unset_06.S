// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This test belongs to the test plan for RISC-V Privilege Arch Compliance developed by 10xEngineers
// which can be found here: https://docs.google.com/spreadsheets/d/1R7oxv12olrvQ9nKPJvSchSp-wxGxkUVXK82Dwk_ibEY/edit?pli=1#gid=1303473646
//
// This assembly file tests write access to PTE in U mode when PTE.U
// As PTE.U=0, the PTE does not belongs to user mode
// So, accessing the PTE for write in U mode should be Store page fault.
//
/* In this test we are setting PTE for vm_en in Page table 0 with PTE.U=1 with other permission bits reserved beside that we are
   also setting PTE for rvtest_data in Page table 0 with PTE.U=0 with other permission bits reservedand then we are trying the
   write access the rvtest_data section by its virtual address from page table level 1 in U mode as PTE.U=0 So, there should be Store page fault.
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
#ifdef rvtest_mtrap_routine       	// Verification of existance of rvtest_mtrap_routine
    LI a4, 0xceed                   // Loading the 0xceed value in a4 register
    RVTEST_SIGUPD(x13, a4)          // Updating the signature register x13 with the value in a4 register
#endif                              // END OF LOOP BODY

#ifdef rvtest_strap_routine       	// Verification of existance of rvtest_strap_routine
    LI a4, 0xbeed                   // Loading the 0xbeed value in a4 register
    RVTEST_SIGUPD(x13, a4)          // Updating the signature register x13 with the value in a4 register
#endif                              // END OF LOOP BODY

    ALL_MEM_PMP                   	// Set the RWX PMP permissions to all memory regions
    WRITE_CSR(satp, x0)           	// Write satp with all zeros (bare mode)

    .set va,                0x90000000       	                                // rvtest_entry_point  Virtual address
    .set pa,                0x80000000                                          // rvtest_entry_point physical address
    .set va_data,           0x90011000		                                // rvtest_data Virtual address set at level 1
    .set sig_data,          0x93003114                                          // virtual address of signature_x13_1

    // PTE setup for sig_data -> rvtest_slvl1_pg_tbl*/
	la a0, rvtest_slvl1_pg_tbl   		                                // loads the base address of the pg_tbl0        				
	li a1, (PTE_V)                                                          // sets the permissions bits                
	PTE_SETUP_RV32(a0, a1, t0, t1, sig_data, LEVEL1)	                // setup the PTE for level1 
    // PTE Setup at level 1 to point to the PTE Setup at level 0
    LA (a0, rvtest_slvl1_pg_tbl)                                                // Loads the base address of pgtbl 0 address in a0
    LI (a1, PTE_V)                                                              //sets the Permission bit to valid only to point to the pgtbl0 PTE
    PTE_SETUP_RV32(a0, a1, t0, t1, va, LEVEL1)                                  // setup the PTE for level 1
    // PTE setup at level 0 -- rvtest_entry_point (0x90011000 -> 0x80000000)
    LA (a0, pa)                                                                 // loads the address in a0
    LI a1, ( PTE_D | PTE_A | PTE_W | PTE_R | PTE_V | PTE_U | PTE_X)             // sets the permission bits
    PTE_SETUP_RV32(a0, a1, t0, t1, va, LEVEL0)                                  // setup the PTE for level 0
    // PTE SETUP at level 0 -- rvtest_data (0x91000000 -> rvtest_data)
    LA (a0, rvtest_data)                                                        // loads the pysical address of label rvtest_data in a0
    LI a1, ( PTE_D | PTE_A | PTE_W | PTE_R | PTE_V | PTE_X)                     // sets the permission bits 
    PTE_SETUP_RV32(a0, a1, t0, t1, va_data, LEVEL0)                             // setup the PTE for level0

   // PTE setup for 0x93003114 -> signature_x13_1
	la a0, rvtest_sig_begin   						// Physical address of signature area
	li a1, ( PTE_D | PTE_A | PTE_U | PTE_R | PTE_W | PTE_X | PTE_V)         // sets the permissions bits 
	PTE_SETUP_RV32(a0, a1, t0, t1, sig_data, LEVEL0) 			// PTE Setup for signature area address at pgtbl0

	LI (t0, sig_data)                                                       
	LA (t1, rvtest_sig_begin)                                                      
	sub t0, t0, t1 					        		// (VA-PA) Note: VA > PA 
	add s11, x13, t0				        		// Translation of Signature reg

	SATP_SETUP_SV32                                                         // set the SATP for virtualization
///////////////////////////////// SAVE AREA /////////////////////////////////////////////// 
    /* Save Virtual addresses in of Code and Data 
       in their respective U-mode save area */

/****** code ******/
        LI (t0, va)                                                             // load the virtual address of vm_en in t0
        LA (t1, pa)                                                             // load the physical address of vm_en in t1
        sub t0, t0, t1                                                          // (VA-PA) Note: VA > PA 
        csrr sp, mscratch                                                       // load the value of mscratch in sp
        add t1,sp,t0                                                            // add the offset to the base address of save area
        csrw sscratch, t1                                                       // write the address of save area in sscratch
        
        LREG t1, code_bgn_off+0*sv_area_sz(sp)                                  // load the address of code_bgn_off in t1
        add t2, t1, t0                                                          // add the offset to the base address of save area
        SREG t2, code_bgn_off+1*sv_area_sz(sp)                                  // write the address of code_bgn_off in sscratch
        SREG t2, code_bgn_off+2*sv_area_sz(sp)                                  // write the address of code_bgn_off in sscratch
        /******* data *******/
        // update save area
        LI (t0, va_data)                                                        // load the virtual address of rvtest_data in t0
        LA (t1, rvtest_data)                                                    // load the physical address of rvtest_data in t1
        sub t0, t0, t1                                                          // (VA-PA) Note: VA > PA 
        LREG t1, data_bgn_off+0*sv_area_sz(sp)                                  // load the address of data_bgn_off in t1
        add  t2, t1,t0                                                          // add the offset to the base address of save area
        SREG t2, data_bgn_off+1*sv_area_sz(sp)                                  // write the address of data_bgn_off in sscratch
        SREG t2, data_bgn_off+2*sv_area_sz(sp)                                  // write the address of data_bgn_off in sscratch
        //signature
        LI (t0, sig_data)                                                       // load the virtual address of signature_x13_1 in t0
        LA (t1, signature_x13_1)                                                // load the physical address of signature_x13_1 in t1
        sub t0, t0, t1                                                          // (VA-PA) Note: VA > PA 
        LREG t1, sig_bgn_off+0*sv_area_sz(sp)                                   // load the address of sig_bgn_off in t1
        add t2, t1, t0                                                          // add the offset to the base address of save area
        SREG t2, sig_bgn_off+1*sv_area_sz(sp)                                   // write the address of sig_bgn_off in sscratch
        SREG t2, sig_bgn_off+2*sv_area_sz(sp)                                   // write the address of sig_bgn_off in sscratch
        // vmem
        LI (t0, va_data)                                                        // load the virtual address of rvtest_data in t0
        LA (t1, rvtest_data)                                                    // load the physical address of rvtest_data in t1
        sub t0, t0, t1                                                          // (VA-PA) Note: VA > PA
        LREG t1, vmem_bgn_off+0*sv_area_sz(sp)                                  // load the address of vmem_bgn_off in t1
        add t2, t1, t0                                                          // add the offset to the base address of save area
        SREG t2, vmem_bgn_off+1*sv_area_sz(sp)                                  // write the address of vmem_bgn_off in sscratch
        SREG t2, vmem_bgn_off+2*sv_area_sz(sp)                                  // write the address of vmem_bgn_off in sscratch

        sfence.vma                                                              // sfence.vma instruction
        RVTEST_GOTO_LOWER_MODE Umode                                            // Switching to U mode

vm_en:
	LI (a4, 0xdead)
	RVTEST_SIGUPD(s11,a4)                                                   // Verification of virtualization enabeled
        
	LA (t0, va_data)                                                        
	SREG x2, 0(t0)                                                          // test the load access (should raise an exception)
        nop                                             
        
	LI (a4, 0xbeef)                                                         // Verification of coming back from trap handler 
	RVTEST_SIGUPD(s11,a4)

	RVTEST_GOTO_MMODE		                                        // Switching back to M mode
        
        nop
	LI (a4, 0x123)
	RVTEST_SIGUPD(x13,a4)                                                   // Verification of virtualization disabled
#endif

RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 22
rvtest_data:                                                                    // Data section
    .word 0xbeefcafe                                                            //  at address 0x91000000
    .word 0xbabecafe                                                            //  at address 0x91000004	
    .word 0xbabecafe                                                            //  at address 0x91000008
    .word 0xbabecafe	                                                        //  at address 0x9100000c						

#ifdef rvtest_strap_routine
.align 12                                                                       // Aligning the address to 2^12
rvtest_slvl1_pg_tbl:                                                            // Page table level 1
    RVTEST_PTE_IDENT_MAP                                                        // Identity map the entire memory region
#endif                                                                          // END OF LOOP BODY

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