# #################################################################################################          
# Verification Goal: Test the execute access in User mode for Level1 PTE  for Misaligned          #
#                    Superpage should raise a fetch page fault for execute access	          #			
# Discription:       If PTE at level1 PTE (superpage) and its pte.ppn[0]!=0, then it is a         #
#                    misaligned superpage and accessing that PTE would raise page fault exception #
#                    of the corresponding access type.                              		  # 	  
# #################################################################################################

#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV64I_Zicsr")

# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN
#ifdef TEST_CASE_1

    RVTEST_CASE(1,"//check ISA:=regex(.*64.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def TEST_CASE_1=True",misaligned_superpage07)

RVTEST_SIGBASE( x13,signature_x13_1)


main:

j _start
rvtest_data:									// rvtest_data region for RWX access(ppn1==0 and ppn0==0)
	.word 0xdeadbeef
_start:

# -------------------------------------------------------------------------

#ifdef rvtest_mtrap_routine							// Verification of existance of rvtest_mtrap_routine
	LI a4, 0xceed
	RVTEST_SIGUPD(x13,a4)
#endif
#ifdef rvtest_strap_routine					         	// Verification of existance of rvtest_strap_routine
	LI a4, 0xbeed
	RVTEST_SIGUPD(x13,a4)
#endif

# -------------------------Set the all mem PMP-----------------------------	

	ALL_MEM_PMP							        // set the permissions of all memory 
	csrw satp, zero								// write zero to the satp (bare mode)
	
# -------------------------------------------------------------------------

	.set va,       	 0x0900000000						// 39 bits of VA address
	.set pa,       	 0x80000000000000 					// 56 bits of PA address 
	.set va_data,  	 0x0901000000						// 39 bits of VA address	
	.set sig_data,   0x0902000118						// 39 bits of VA address (offset bits should be same as that of rvtest_sig_begin)

# -------------------------Set the PTE for level2 for sv39-----------------

	LA (a0, rvtest_slvl1_pg_tbl)                                            // loads the address in a0
	LI a1, ( PTE_V )           					        // sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, va, LEVEL2,sv39)                         // setup the PTE for level2
								                // level0 PTE setup for pa (0x0900000000 -> 0x80000000000000)	
	LA (a0, vm_en)                                                          // loads the PA address in a0
	LI a1, ( PTE_D | PTE_A | PTE_U | PTE_X | PTE_V )   		        // sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, va, LEVEL1,sv39)                         // setup the PTE for level0 for sv39
 										// level2 PTE setup for pa (0x0900001000 -> rvtest_data)
	LA( a0,rvtest_data)							// loads the PA address in a0 
	LI a1, ( PTE_D | PTE_A | PTE_U | PTE_W | PTE_R | PTE_V )       	        // sets the permission bits 
	PTE_SETUP_RV64(a0, a1, t0, t1, va_data, LEVEL1,sv39)                    // setup the PTE for level2 for sv39
	
# -------------------------Set the PTE for signature update-----------------
	LA (a0, rvtest_slvl2_pg_tbl)                                            // loads the address in a0
	LI a1, ( PTE_V )           					        // sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, sig_data, LEVEL1,sv39)                   // setup the PTE for level1 
                                                                                // PTE setup for 0x0900020118 -> rvtest_sig_begin
	la a0, rvtest_sig_begin   						// Physical address of signature area
	li a1, ( PTE_D | PTE_A | PTE_U | PTE_R | PTE_W | PTE_V )     		// sets the permissions bits 
	PTE_SETUP_RV64(a0, a1, t0, t1, sig_data, LEVEL0,sv39) 			// PTE Setup for signature area address at pgtbl0

	LI (t0, sig_data)                                                       // loads the value of the sig_data
	LA (t1, rvtest_sig_begin)                                               // loads the address of the rvtest_sig_begin       
	sub t0, t0, t1 					        		// (VA-PA) Note: VA > PA 
	add s11, x13, t0				        		// Translation of Signature reg

# -------------------------Set the SATP for virtulization------------------

	SATP_SETUP_RV64 (sv39)                                                  // set the SATP for virtualization

# -------------------------Save area logic----------------------------------

	SIGNATURE_AREA (CODE, va, pa,user)                                      // signature area for code 
	SIGNATURE_AREA (DATA, va_data,rvtest_data,user)                         // signature area for data 
	SIGNATURE_AREA (SIG, sig_data, signature_x13_1,user)                    // signature area for signature
	SIGNATURE_AREA (VMEM, va_data, rvtest_data,user)                        // signature area for vmem 

	sfence.vma                                                              // flush the TLB
	RVTEST_GOTO_LOWER_MODE	Umode		                                // Switching to U mode

# -------------------------virtulization enabled----------------------------------
j vm_en
.align 12									// makes the ppn[0]!=0 (Misaligned Superpage)
vm_en:
	LI (a4, 0xdead)
	RVTEST_SIGUPD(s11,a4)                                                   // Verification of virtualization enabeled
	nop
	LI (t0, va_data)                                                        
	LREG x2, 0(t0)                                                          // test the load access  (should raise an exception)
        nop                                             
	SREG x2, 0(t0)                                                          // test the store access (should raise an exception)
	nop
	LI (a4, 0xbeef)
	RVTEST_SIGUPD(s11,a4)                                                   // Verification of virtualization enabeled
        nop

# -------------------------virtulization disabled----------------------------------

	RVTEST_GOTO_MMODE		                                        // Switching back to M mode
	addi x13,x13,REGWIDTH

	LI (a4, 0x123)
	RVTEST_SIGUPD(x13,a4)                                                   // Verification of virtualization disabled

#endif

 # -----------------------------------------------------------------------------

RVTEST_CODE_END

RVMODEL_HALT

RVTEST_DATA_BEGIN

#ifdef rvtest_strap_routine
.align 12
rvtest_slvl1_pg_tbl:
        RVTEST_PTE_IDENT_MAP
rvtest_slvl2_pg_tbl:
        RVTEST_PTE_IDENT_MAP        
#endif

RVTEST_DATA_END

RVMODEL_DATA_BEGIN

rvtest_sig_begin:
sig_begin_canary:
CANARY;

// test signatures initialization
signature_x13_1:
    .fill 64*(XLEN/64),4,0xdeadbeef

// trap signatures initialization

#ifdef rvtest_mtrap_routine
mtrap_sigptr:
    .fill 64*(XLEN/64),4,0xcafebeef
#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
