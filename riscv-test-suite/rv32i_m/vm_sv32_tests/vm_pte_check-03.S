#####################################################################################################
# Verification Goal: - Remove read PMP permission of translated PA and test the read acces.		 	#
#					 - For page table 0 and access in supervisor mode.	 							#
#                    - There should be Store/AMO Access Fault                                       #
#                                                                                                	#
# Description:       If PTE does not have (r,w,x) PMP permissions, then accessing it would raise 	#
#					 access fault exception of the corresponding access type. 	 					#
#####################################################################################################  

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

#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=

#ifdef rvtest_mtrap_routine									// Verification of existance of rvtest_mtrap_routine
	LI a4, 0xceed
	RVTEST_SIGUPD(x13,a4)
#endif
#ifdef rvtest_strap_routine					         		// Verification of existance of rvtest_strap_routine
	LI a4, 0xbeed
	RVTEST_SIGUPD(x13,a4)
#endif

#-------------------Adresses--------------------#
	.set va,		0x90000000                  #           Page table level 1  VA   
	.set pa,		0x80000000                  #           rvtest_entry_point physical address
	.set va_data,	0x90011000                  #           rvtest_data Virtual address set at level 0
	.set pte_data,	0x90031000             		#
#-----------------------------------------------#
    LA(t2, pa)                          					# Loads the address of PA                
    srli t2, t2, PMP_SHIFT									# Right shift the PA by PMP_Shift(2) 
    ori t2, t2, 0x1FF                                       # Selects the range of 4kB    
    WRITE_CSR (pmpaddr0, t2)    	                        # Region 1 for the pmp permissions   
    LA(t2, rvtest_slvl1_pg_tbl )                            # loads the base address of level1 4kbpage table                 
    srli t2, t2, PMP_SHIFT 									# Right shift the address of level 1 page table  by PMP_Shift(2)		
    ori t2, t2, 0x1FF                                       # Selects the range of 4kB
												 	 										
    WRITE_CSR (pmpaddr1, t2)                                # Region 2 for the pmp permission  
    LA( t2, rvtest_Sroot_pg_tbl)                            # loads the base address of root page table               
    srli t2, t2, PMP_SHIFT									# Right shift the address of root page table by PMP_Shift(2)
    ori t2, t2, 0x1FF                                     	# Selects the range of 4kB
  
    WRITE_CSR ( pmpaddr2, t2)                               # Region 3 for the pmp permission            
    LA( t2, rvtest_data )                                   # loads the base address of rvtest_data label        
    srli t2, t2, PMP_SHIFT                                  # Right shift the address of rvtest_data label by PMP_Shift(2)
    ori t2, t2, 0                                 			# Selects the range of 4kB
    
	WRITE_CSR (pmpaddr3, t2)								# Region 4 for the pmp permission
    LI(t2, 0x1F1F1D1F)										# Region2: NAPOT with no W PMP Permissions, Region1,3,4: NAPOT with RWX PMP Permissions
    WRITE_CSR (pmpcfg0, t2)                                 # Write PMP Regions Configration          
	WRITE_CSR (satp,x0)  								    # SATP bare mode

#------------------------------------------------------PTE setup--------------------------------------------------------------
    #PTE SETUP at level 1 -- Base address of PGtable stored in the PTE
	LA a0, rvtest_slvl1_pg_tbl
    LI a1, (PTE_V)                                          # Valid permission only--> point at level 0 page table
	PTE_SETUP_RV32(a0, a1, t0, t1, va, 1)

    #PTE SETUP at level 0 -- rvtest_entry_point physical address stored
	LI a0, pa
	LI a1, (PTE_D | PTE_A | PTE_X | PTE_W | PTE_R | PTE_V)  
	PTE_SETUP_RV32(a0, a1, t0, t1, va, 0)

    #PTE SETUP at level 0 -- rvtest_data physical address stored
	LA (a0, rvtest_data)
	LI a1, (PTE_A | PTE_D | PTE_X | PTE_W | PTE_R | PTE_V)
	PTE_SETUP_RV32(a0, a1, t0, t1, va_data, 0)
#-----------------------------------------------------------------------------------------------------------------------------
    #PTE SETUP at level 0 -- rvtest_slvl1_pg_tbl physical address stored
	LA (a0, rvtest_slvl1_pg_tbl)
	LI a1, (PTE_A | PTE_D | PTE_X | PTE_W | PTE_R | PTE_V)
	PTE_SETUP_RV32(a0, a1, t0, t1, pte_data, 0)

#---------------satp mode setup-----------------#
    SATP_SETUP_SV32                             #
#-----------------------------------------------#

#--------------------------------------------------Save area code-------------------------------------------------------------
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

#-----------------------------------------------------------------------------------------------------------------------------
vm_en:
	LA t0,pte_data                                    #Virtual address of rvtest_data
	SREG x2, 0(t0)                                      #write at base address of rvtest_data

	RVTEST_GOTO_MMODE		                            # Switching back to M mode
	LI (a4, 0x123)
	RVTEST_SIGUPD(x13,a4)
#endif



#-----------------------------------------------------------------------------------------------------------------------------
RVTEST_CODE_END
RVMODEL_HALT
RVTEST_DATA_BEGIN
#-------------------------------------------------rvtest_data section---------------------------------------------------------
rvtest_data:
.word 0xbeefcafe
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
#-----------------------------------------------------------------------------------------------------------------------------
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
#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=