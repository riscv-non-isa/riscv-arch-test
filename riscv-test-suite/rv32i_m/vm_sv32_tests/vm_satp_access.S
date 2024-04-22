# ###############################################################################################           
# Verification Goal: SATP is accessible only in M and S mode not in U mode			#		
#                                                                                               #
# Description:       Satp is only accessible in M and S mode and illegal instruction          	#
#                    exception is generated when accessed in lower privilege mode             	#
# ###############################################################################################   

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

 # ---------------------------------------------------------------------------------------------

#ifdef rvtest_mtrap_routine						     // Verification of existance of rvtest_mtrap_routine
	LI (a4, 0xceed)
	RVTEST_SIGUPD(x13,a4)
#endif
#ifdef rvtest_strap_routine						     // Verification of existance of rvtest_strap_routine
	LI (a4, 0xbeed)
	RVTEST_SIGUPD(x13,a4)
#endif
	
	ALL_MEM_PMP          						      // set the PMP permissions
	csrw satp, zero  						      // write satp with all zeros (bare mode)


	.set va,      0x80000000
	.set pa,      0x80000000 
	.set va_data, 0x81000000
        .set sig_data,0x82003114                                              // virtual address of signature_x13_1
 




# -------------------------Save area logic----------------------------------

	SIGNATURE_AREA (CODE, va, pa)						// signature area for code 
	SIGNATURE_AREA (DATA, va_data,rvtest_data)				// signature area for data 
	SIGNATURE_AREA (SIG, sig_data, signature_x13_1)				// signature area for signature 
	SIGNATURE_AREA (VMEM, va_data, rvtest_data)				// signature area for vmem

	sfence.vma                                                              // flush the TLB

 # --------------------------end of save area-------------------------------------------------------------

	LI (s1, 0xffffffff)							// loads the random number
    	LI (s2, SATP32_PPN )							// loads the SATP32_PPN
    	LI (s3, SATP32_ASID)                                                    // loads the SATP32_ASID
 
	csrc satp, s1  						        	// clear the satp by s1 
	csrs satp, s2  						        	// set the satp by s2
	csrw satp, s3  						        	// write the satp by s3

	RVTEST_GOTO_LOWER_MODE Smode					        // changes mode from M to S

	csrc satp, s1  						        	// clear the satp by s1 
	csrs satp, s2  						        	// set the satp by s2
	csrw satp, s3  						        	// write the satp by s3

	RVTEST_GOTO_MMODE		                                       // Switching back to M mode
        nop

	RVTEST_GOTO_LOWER_MODE Umode					       // changes mode from S to U

	csrc satp, s1						       	       // Illegal instruction exception is generated when accessed in U mode 
	nop
	LI (a4, 0xbeefdead)
	RVTEST_SIGUPD(x13,a4)                                                  // Verification of first illegal instruction
	
	csrs satp, s2
	nop
	LI (a4, 0xdeadbeef)
	RVTEST_SIGUPD(x13,a4)                                                  // Verification of second illegal instruction

    	csrw satp, s3
	nop
	LI (a4, 0xbeefcafe)
	RVTEST_SIGUPD(x13,a4)                                                  // Verification of third illegal instruction

	RVTEST_GOTO_MMODE		                                        // Switching back to M mode
        nop
	LI (a4, 0x12345678) 
	RVTEST_SIGUPD(x13,a4)                                                   // Verification of M mode 
#endif 

 # ---------------------------------------------------------------------------------------------

RVTEST_CODE_END
RVMODEL_HALT


RVTEST_DATA_BEGIN
.align 12
rvtest_data:
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe

#ifdef rvtest_strap_routine
.align 12
rvtest_slvl1_pg_tbl:
		RVTEST_PTE_IDENT_MAP
#endif
RVTEST_DATA_END
RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

// test signatures initialization
signature_x13_1:
    .fill 32*(XLEN/32),4,0xcafebeef

// trap signatures initialization
#ifdef rvtest_mtrap_routine
mtrap_sigptr:
    .fill 32*(XLEN/32),4,0xdeadbeef
#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
