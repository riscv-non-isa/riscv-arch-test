# ######################################################################################################
#  Verification Goal: Set PTE.U = 0 and test the Read Acces and Write Access in User mode for          #
#                     Level 0 Should raise a load page fault for read access and Store AMO fault       #
#                     for write access                                                                 #
#                                                                                                      #
# Description:       If PTE does not have U bit (pte.U=0) permission, then accessing it in User mode   #
#                    would raise page fault exception of the corresponding access type.                #
# #################################################################################################### #

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
#ifdef rvtest_mtrap_routine                                                   	// Verification of existance of rvtest_mtrap_routine
    LI a4, 0xceed                                                               // Loading the 0xceed value in a4 register
    RVTEST_SIGUPD(x13, a4)                                                      // Updating the signature register x13 with the value in a4 register
#endif                                                                          // END OF LOOP BODY

#ifdef rvtest_strap_routine       	                                        // Verification of existance of rvtest_strap_routine
    LI a4, 0xbeed                                                               // Loading the 0xbeed value in a4 register
    RVTEST_SIGUPD(x13, a4)                                                      // Updating the signature register x13 with the value in a4 register
#endif                                                                          // END OF LOOP BODY

    ALL_MEM_PMP                   	                                        // Set the RWX PMP permissions to all memory regions
    csrw satp, zero								// write zero to the satp (bare mode)

    .set va,                0x90000000       	                                // rvtest_entry_point  Virtual address
    .set pa,                0x80000000                                          // rvtest_entry_point physical address
    .set va_data,           0x90011000		                                // rvtest_data Virtual address set at level 1
    .set sig_data,          0x93003114                                          // virtual address of signature_x13_1

    // PTE setup for sig_data -> rvtest_slvl1_pg_tbl*/
	LA a0, rvtest_slvl1_pg_tbl   		                                // loads the base address of the pg_tbl0        				
	LI a1, (PTE_V)                                                          // sets the permissions bits                
	PTE_SETUP_RV32(a0, a1, t0, t1, sig_data, LEVEL1)	                // setup the PTE for level1 
    // PTE Setup at level 1 to point to the PTE Setup at level 0
        LA (a0, rvtest_slvl1_pg_tbl)                                            // Loads the base address of pgtbl 0 address in a0
        LI (a1, PTE_V)                                                          //sets the Permission bit to valid only to point to the pgtbl0 PTE
        PTE_SETUP_RV32(a0, a1, t0, t1, va, LEVEL1)                              // setup the PTE for level 1
    // PTE setup at level 0 -- rvtest_entry_point (0x90011000 -> 0x80000000)
        LA (a0, pa)                                                             // loads the address in a0
        LI a1, ( PTE_D | PTE_A | PTE_V | PTE_U | PTE_X)                         // sets the permission bits
        PTE_SETUP_RV32(a0, a1, t0, t1, va, LEVEL0)                              // setup the PTE for level 0
    // PTE SETUP at level 0 -- rvtest_data (0x91000000 -> rvtest_data)
        LA (a0, rvtest_data)                                                    // loads the pysical address of label rvtest_data in a0
        LI a1, ( PTE_D | PTE_A | PTE_W | PTE_R | PTE_V)                         // sets the permission bits 
        PTE_SETUP_RV32(a0, a1, t0, t1, va_data, LEVEL0)                         // setup the PTE for level0

   // PTE setup for 0x93003114 -> signature_x13_1
	LA a0, rvtest_sig_begin   						// Physical address of signature area
	LI a1, ( PTE_D | PTE_A | PTE_U | PTE_R | PTE_W | PTE_X | PTE_V)         // sets the permissions bits 
	PTE_SETUP_RV32(a0, a1, t0, t1, sig_data, LEVEL0) 			// PTE Setup for signature area address at pgtbl0

	LI (t0, sig_data)                                                       
	LA (t1, rvtest_sig_begin)                                                      
	sub t0, t0, t1 					        		// (VA-PA) Note: VA > PA 
	add s11, x13, t0				        		// Translation of Signature reg

	SATP_SETUP_SV32                                                         // set the SATP for virtualization

# -------------------------Save area logic----------------------------------

	SIGNATURE_AREA (CODE, va, pa,user)                                      // signature area for code 
	SIGNATURE_AREA (DATA, va_data,rvtest_data,user)                         // signature area for data 
	SIGNATURE_AREA (SIG, sig_data, signature_x13_1,user)                    // signature area for signature
	SIGNATURE_AREA (VMEM, va_data, rvtest_data,user)                        // signature area for vmem 

	sfence.vma                                                              // flush the TLB
	RVTEST_GOTO_LOWER_MODE	Umode		                                // Switching to U mode

# -------------------------virtulization enabled----------------------------------

vm_en:
	LI (a4, 0xdead)
	RVTEST_SIGUPD(x13,a4)                                                   // Verification of virtualization enabeled

	LI (t0, va_data)                                                        
	LREG x2, 0(t0)                                                          // test the load access  (should raise an exception)
        nop                                             
	SREG x2, 0(t0)                                                          // test the store access (should raise an exception)
	nop

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