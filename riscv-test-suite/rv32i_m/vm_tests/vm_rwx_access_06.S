# ############################################################################################           
# Verification Goal: Test the Execute Acces in Supervisor mode for Level0,Execute access     #
#					 should besuccessful (PTE.x = 1 )  										 #
# Discription: 		 If PTE belongs to supervisor mode i.e. its U permission bit is clear    #
#                    (pte.u = 0),then accessing that PTE in supervisor mode should be        #
#                    successful if the corresponding (r,w,x) permission of PTE is granted.   #   
#                    Otherwise raise a page fault exception of the corresponding access type #   
# ############################################################################################ 

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
	
	ALL_MEM_PMP          								     # set the PMP permissions
	WRITE_CSR (satp,x0)  								     # write satp with all zeros (bare mode)

	.set va,		0x90000000
	.set pa,		0x80000000 
	.set va_data,	0x90011000                               # MSB 10 bits should be same as that of va 
                                             				 # pgtbl1 PTE Setup to point to the pgtbl0 PTE
	LA (a0, rvtest_slvl1_pg_tbl)                             # stores the base address of pgtbl0 address in a0
	LI (a1, PTE_V)                                           # sets the PR bit to valid only to point to the pgtbl0 PTE
	PTE_SETUP_RV32(a0, a1, t0, t1, va, LEVEL1)               # setup the PTE for level1
     
                                             				 # PTE setup for Instruction memory 0x90000000 -> 0x80000000
	LA (a0, pa)                                              # loads the address in a0
	LI a1, ( PTE_D | PTE_A | PTE_X | PTE_W | PTE_R | PTE_V ) # sets the permission bits
	PTE_SETUP_RV32(a0, a1, t0, t1, va, LEVEL0)               # setup the PTE for level1
														     # PTE setup for rvtest_data 0x91000000 -> rvtest_data	
	LA (a0, rvtest_data)                                     # loads the address of label rvtest_data in a0
	LI a1, ( PTE_D | PTE_A | PTE_X | PTE_W | PTE_R | PTE_V ) # sets the permission bits (PTE_V == 0)
	PTE_SETUP_RV32(a0, a1, t0, t1, va_data, LEVEL0)          # setup the PTE for level1

    SATP_SETUP_SV32                                          # set the SATP for virtualization

	/* Save Virtual addresses in of Code and Data 
	in their respective S-mode save area */

	/****** code ******/
	LI (t0, va)
	LA (t1, pa)
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
	RVTEST_GOTO_LOWER_MODE	Smode		                   # Switching to S mode

vm_en:
	LA (t0, va_data)
    LI (t1, ALL_F_S)
    SREG t1, 0(t0)
    LREG t1, 0(t0)
    
	RVTEST_GOTO_MMODE		                               # Switching back to M mode
	LI (a4, 0x123)
	RVTEST_SIGUPD(x13,a4)
#endif

 # ---------------------------------------------------------------------------------------------
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
