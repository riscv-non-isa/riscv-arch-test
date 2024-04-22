// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This test belongs to the test plan for RISC-V Privilege Arch Compliance developed by 10xEngineers
// which can be found here: https://docs.google.com/spreadsheets/d/1R7oxv12olrvQ9nKPJvSchSp-wxGxkUVXK82Dwk_ibEY/edit?pli=1#gid=1303473646
//
// This assembly file tests access to address Translation in U mode.
// As address translation does not happen while in bare mode but as Va!=Pa so there should be trap in U mode.
//
/* In this test we are setting satp Mode=Bare and the remaining fields are zero and 
   other encodings for the remaining field in satp are reserved. And we are trying to access the vm_en section
   by its virtual address from page table level 1 as in this case we are setting (VA!=PA) So there should be illegal instruction fault in U mode
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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def TEST_CASE_1=True",vm_Bare_mode_02)

RVTEST_SIGBASE( x13,signature_x13_1)
  	
main:   
#ifdef rvtest_mtrap_routine       	                                        // Verification of existance of rvtest_mtrap_routine
    LI a4, 0xceed                                                               // Loading the 0xceed value in a4 register
    RVTEST_SIGUPD(x13, a4)                                                      // Updating the signature register x13 with the value in a4 register
#endif                                                                          // END OF LOOP BODY
                                   
#ifdef rvtest_strap_routine       	                                        // Verification of existance of rvtest_strap_routine
    LI a4, 0xbeed                                                               // Loading the 0xbeed value in a4 register
    RVTEST_SIGUPD(x13, a4)                                                      // Updating the signature register x13 with the value in a4 register
#endif                                                                          // END OF LOOP BODY
                               
    ALL_MEM_PMP                   	                                        // Set the RWX PMP permissions to all memory regions
	csrw satp,zero  						        // write satp with all zeros (bare mode)
                               
    .set va,      0x81000000       	                                        // rvtest_entry_point  Virtual address
    .set pa,      0x80000000                                                    // rvtest_entry_point physical address
    .set sig_data,0x93003110 
# -------------------------PTE Setup---------------------------------- 
	la a0, rvtest_slvl1_pg_tbl   		                             	// loads the base address of the pg_tbl0        				
	li a1, (PTE_V)                                                       	// sets the permissions bits                
	PTE_SETUP_RV32(a0, a1, t0, t1, sig_data, LEVEL1)	                // setup the PTE for level1 

    // PTE SETUP at level 1 -- rvtest_entry_point (0x80000000 -> 0x80000000)
	LI a0, pa                                                               // loads the address in a0
	LI a1, (PTE_D | PTE_A | PTE_X| PTE_V| PTE_U)                            // sets the permission bits
	PTE_SETUP_RV32(a0, a1, t0, t1, va, LEVEL1)                              // setup the PTE for level 1.


# -------------------------Set the PTE for signature update-----------------

	la a0, rvtest_sig_begin   						// Physical address of signature area
	li a1, ( PTE_D | PTE_A | PTE_R | PTE_W | PTE_X | PTE_V)                 // sets the permissions bits 
	PTE_SETUP_RV32(a0, a1, t0, t1, sig_data, LEVEL0) 			// PTE Setup for signature area address at pgtbl0

	LI (t0, sig_data)                                                       
	LA (t1, rvtest_sig_begin)                                                      
	sub t0, t0, t1 					        		// (VA-PA) Note: VA > PA 
	add s11, x13, t0				        		// Translation of Signature reg


# -------------------------Save area logic----------------------------------

	SIGNATURE_AREA (CODE, va, pa)						// signature area for code 
	SIGNATURE_AREA (SIG, sig_data, signature_x13_1)				// signature area for signature 

	sfence.vma                                                              // flush the TLB
	RVTEST_GOTO_LOWER_MODE	Umode		                                // Switching to U mode

# -------------------------virtulization enabled----------------------------------
vm_en:
	LI (a4, 0xdead)
	RVTEST_SIGUPD(x13,a4)                                                   // Verification of virtualization enabeled

	LI (a4, 0xbeef)
	RVTEST_SIGUPD(x13,a4)                                                   // Verification of virtualization enabeled
        nop

# -------------------------virtulization disabled----------------------------------

	RVTEST_GOTO_MMODE		                                        // Switching back to M mode

	LI (t0, sig_data)                                                       
	LA (t1, rvtest_sig_begin)                                                      
	sub t0, t0, t1 					        		// (VA-PA) Note: VA > PA 
	sub x13, x13, t0				        		// Translation of Signature reg
	addi x13,x13,REGWIDTH
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