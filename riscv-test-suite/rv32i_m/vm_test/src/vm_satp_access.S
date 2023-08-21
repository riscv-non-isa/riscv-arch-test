# ###############################################################################################           
# Verification Goal: SATP is accessible only in M and S mode not in U mode						#
#                                                                                               #
# Description:       Satp is only accessible in M and S mode and illegal instruction          	#
#                    exception is generated when accessed in lower privilege mode             	#
# ###############################################################################################   

#include "model_test.h"
#include "custom_macros1.h"
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

#ifdef rvtest_mtrap_routine								// Verification of existance of rvtest_mtrap_routine
	LI (a4, 0xceed)
	RVTEST_SIGUPD(x13,a4)
#endif
#ifdef rvtest_strap_routine								// Verification of existance of rvtest_strap_routine
	LI (a4, 0xbeed)
	RVTEST_SIGUPD(x13,a4)
#endif
	
	ALL_MEM_PMP          								# set the PMP permissions
	WRITE_CSR (satp,x0)  								# write satp with all zeros (bare mode)

	/* Save Virtual addresses in of Code and Data 
	in their respective S-mode save area */

	/****** code ******/

	LI (t0, va)
	LI (t1, pa)
	sub t0, t0, t1   									# (VA-PA) Note: VA > PA 
	csrr sp, mscratch
	add t1,sp,t0
	csrw sscratch, t1 
	
	li s1, ALL_F_S
    li s2, SATP32_PPN
    li s3, SATP32_ASID
 
    CLEAR_CSR (satp,s1)
    SET_CSR   (satp,s2)
    WRITE_CSR (satp,s3)

	RVTEST_GOTO_LOWER_MODE Smode					    # changes mode from M to S

    CLEAR_CSR (satp,s1)
    SET_CSR   (satp,s2)
    WRITE_CSR (satp,s3)

	RVTEST_GOTO_LOWER_MODE Umode						# changes mode from S to U

	CLEAR_CSR (satp,s1)								    # Illegal instruction exception is generated when accessed in U mode 
    SET_CSR   (satp,s2)
    WRITE_CSR (satp,s3)

	/******* code *******/
	/******* code *******/
	LREG t1, code_bgn_off+0*sv_area_sz(sp)
	add t2, t1, t0
	SREG t2, code_bgn_off+1*sv_area_sz(sp)

	/******* data *******/
	// update save area
	LREG t1, data_bgn_off+0*sv_area_sz(sp)
	add  t2, t1,t0
	SREG t2, data_bgn_off+1*sv_area_sz(sp)
	//signature
	LREG t1, sig_bgn_off+0*sv_area_sz(sp)
	add t2, t1, t0
	SREG t2, sig_bgn_off+1*sv_area_sz(sp) 
	
	

vm_en:
	RVTEST_GOTO_MMODE								# Switching back to M mode
	LI (a4, 0x123)
	RVTEST_SIGUPD(x13,a4)
mmode:
	LI (t2, 0xabab)									# Verification if handler is returning and SIGUPD is working afer the handler
	csrw pmpaddr1, t2								# If in M-mode, this instruction will work otherwise not.
	csrr a4, pmpaddr1
	RVTEST_SIGUPD(x13,a4)
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
