# ###############################################################################################           
#                                                                                               #
# Verification Goal: Set pte.r=0 & pte.w=0 & pte.x=1 & s/mstatus.MXR=0 and test the read acces	#
#					 for level1 PTE in Supervisor mode,Should raise load page fault.		    #
#																								#											
# Description:       If PTE has only execute permission (pte.x = 1) and s/mstatus.MXR=0, then 	#
#				     read access on that PTE should raise load page fault exception.			#
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

#ifdef rvtest_mtrap_routine									// Verification of existance of rvtest_mtrap_routine
	LI a4, 0xceed
	RVTEST_SIGUPD(x13,a4)
#endif
#ifdef rvtest_strap_routine					         		// Verification of existance of rvtest_strap_routine
	LI a4, 0xbeed
	RVTEST_SIGUPD(x13,a4)
#endif
	
	ALL_MEM_PMP          								    # set the PMP permissions for the whole memory
	WRITE_CSR (satp,x0)  								    # Bare Mode setup

	.set va,		0x90000000                  			# Page table level 1  VA   
	.set pa,		0x80000000                  			# rvtest_entry_point physical address
	.set va_data,	0x91000000                  			# rvtest_data Virtual address set at level 1

    # PTE SETUP at level 0 -- rvtest_entry_point physical address stored
	
	LI a0, pa											    # loads the PA 
	LI a1, (PTE_D | PTE_A | PTE_X | PTE_W | PTE_R | PTE_V)  # sets the permission bits	
	PTE_SETUP_RV32(a0, a1, t0, t1, va, LEVEL1)					# function to setup the PTE

    # PTE SETUP at level 0 -- rvtest_data physical address stored
	LA (a0, rvtest_data)									# loads the address of rvtest_data label
	LI a1, (PTE_G | PTE_D | PTE_A | PTE_X | PTE_W | PTE_V)  # sets the permission bits
	PTE_SETUP_RV32(a0, a1, t0, t1, va_data, LEVEL1)				# function to setup the PTE

    SATP_SETUP_SV32                               			# set the SATP for virtualization


# ---------------------------------------------------------------------------------------------

	/* Save Virtual addresses in of Code and Data 
	in their respective S-mode save area */

	/****** code ******/
	LI (t0, va)
	LI (t1, pa)
	sub t0, t0, t1 // (VA-PA) Note: VA > PA 
	csrr sp, mscratch
	add t1,sp,t0
	csrw sscratch, t1 
	
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

	sfence.vma
#-----------------------------------------------------------------------------------------------------------------------------

	RVTEST_GOTO_LOWER_MODE	Smode		                   # Switching to S mode

vm_en:
	LA (t0, va_data)                                       # Virtual address of rvtest_data
	LREG x2, 0(t0)                                         # write at base address of rvtest_data

	RVTEST_GOTO_MMODE		                               # Switching back to M mode
	LI (a4, 0x123)
	RVTEST_SIGUPD(x13,a4)
#endif

RVTEST_CODE_END
RVMODEL_HALT
RVTEST_DATA_BEGIN

.align 24
rvtest_data:
.word 0xbeefcafe
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
