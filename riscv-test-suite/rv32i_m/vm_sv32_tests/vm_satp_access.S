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
	WRITE_CSR (satp,x0)  						      // write satp with all zeros (bare mode)

	/* Save Virtual addresses in of Code and Data 
	in their respective S-mode save area */

	/****** code ******/
	.set va,      0x80000000
	.set pa,      0x80000000 
	.set va_data, 0x81000000
        .set sig_data,0x82003114                                               // virtual address of signature_x13_1

 # --------------------------save area-------------------------------------------------------------


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
        sfence.vma                                                              // flush the TLB

 # --------------------------end of save area-------------------------------------------------------------

	LI (s1, 0xffffffff)							// loads the random number
    	LI (s2, SATP32_PPN )							// loads the SATP32_PPN
    	LI (s3, SATP32_ASID)                                                    // loads the SATP32_ASID
 
    	CLEAR_CSR (satp,s1)							// clear the satp by s1 	
    	SET_CSR   (satp,s2)							// set the satp by s2
    	WRITE_CSR (satp,s3)							// write the satp by s3

	RVTEST_GOTO_LOWER_MODE Smode					        // changes mode from M to S

    	CLEAR_CSR (satp,s1)							// clear the satp by s1 	
    	SET_CSR   (satp,s2)							// set the satp by s2
    	WRITE_CSR (satp,s3)							// write the satp by s3

	RVTEST_GOTO_MMODE		                                       // Switching back to M mode
        nop

	RVTEST_GOTO_LOWER_MODE Umode					       // changes mode from S to U

	CLEAR_CSR (satp,s1)						       // Illegal instruction exception is generated when accessed in U mode 
	nop
	LI (a4, 0xbeefdead)
	RVTEST_SIGUPD(x13,a4)                                                  // Verification of first illegal instruction
	
	SET_CSR   (satp,s2)
	nop
	LI (a4, 0xdeadbeef)
	RVTEST_SIGUPD(x13,a4)                                                  // Verification of second illegal instruction

    	WRITE_CSR (satp,s3)
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
