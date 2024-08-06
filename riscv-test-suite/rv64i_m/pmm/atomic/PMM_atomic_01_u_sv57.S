# ######################################################################################################## 
#  Verification Goal: Set PMM = 10 in the mseccfg and test whether or not pointer masking with PMLEN = 7 #
#                     is enabled or not in Machine Mode in sv57      			         	 #
#                                                                            			         #
#                                                                                                        #
# Description:       If Pointer Masking is enabled, then the Effective Address will be masked according	 #
#                    raise page fault exception of the corresponding access type.           	         #
# ########################################################################################################   
#define PMM_EXT_ENAB
#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV64IA_Zicsr")

# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN
#ifdef TEST_CASE_1

    RVTEST_CASE(1,"//check ISA:=regex(.*64.*); check ISA:=regex(.*I.*A.*Zicsr.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def TEST_CASE_1=True",pmm_atomics)

RVTEST_SIGBASE( x13,signature_x13_1)


main:

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
	ALL_MEM_PMP
# -------------------------------------------------------------------------
	csrw satp, zero								// write zero to the satp (bare mode)
# --------------------------Setting Addresses-------------------------------
# --------------------------Setting Addresses-------------------------------
	.set pa,       	 0x8000000000039c                                       // 56 bits physical address
	.set va_rvtest_code_begin, 0x20000000039c				// 48 bits virtual address of code area						
	.set va_rvtest_data_begin, 0x210000000530                               // 48 bits virtual address of data
	.set va_rvtest_sig_begin, 0x280000180118				// 48 bits of VA address of signature
	.set  va_rvtest_vmem_begin,0x210000000530				// 48 bit of VA address of vmem
	
//---------------------------------------------------------------------------------------------------------------------------------
//								Save area logic
//---------------------------------------------------------------------------------------------------------------------------------

	/* Save Virtual addresses in of Code and Data 
	in their respective S-mode save area */
	LI (t0, va_rvtest_data_begin) 
	LA (t1, rvtest_data_begin) 
	sub t0, t0, t1         
	addi t3, t0, sv_area_sz
	csrr sp, mscratch      
	add t1,sp,t3           
	csrw sscratch, t1      


	LI (t0, va_rvtest_code_begin)
	LA (t1, rvtest_code_begin)
        sub t0, t0, t1 
	csrr sp, mscratch
	LREG t1, code_bgn_off+0*sv_area_sz(sp)
	add t2, t1, t0                        
	SREG t2, code_bgn_off+1*sv_area_sz(sp)

	LI (t0, va_rvtest_data_begin)                                                        // load the virtual address of rvtest_data in t0
	LA (t1, rvtest_data_begin)                                                    // load the physical address of rvtest_data in t1
	sub t0, t0, t1                                                          // (VA-PA) Note: VA > PA 
	LREG t1, data_bgn_off+0*sv_area_sz(sp)                                  // load the address of data_bgn_off in t1
	add  t2, t1,t0                                                          // add the offset to the base address of save area
	SREG t2, data_bgn_off+1*sv_area_sz(sp)                                  // write the address of data_bgn_off in sscratch
	//signature
	LI (t0, va_rvtest_sig_begin)                                                       // load the virtual address of signature_x13_1 in t0
	LA (t1, rvtest_sig_begin)                                                // load the physical address of signature_x13_1 in t1
	sub t0, t0, t1                                                          // (VA-PA) Note: VA > PA 
	LREG t1, sig_bgn_off+0*sv_area_sz(sp)                                   // load the address of sig_bgn_off in t1
	add t2, t1, t0                                                          // add the offset to the base address of save area
	SREG t2, sig_bgn_off+1*sv_area_sz(sp)                                   // write the address of sig_bgn_off in sscratch
	
	
	// vmem
	LI (t0, va_rvtest_vmem_begin)                                                        // load the virtual address of rvtest_data in t0
	LA (t1, rvtest_data_begin)                                                    // load the physical address of rvtest_data in t1
	sub t0, t0, t1                                                          // (VA-PA) Note: VA > PA
	LREG t1, vmem_bgn_off+0*sv_area_sz(sp)                                  // load the address of vmem_bgn_off in t1
	add t2, t1, t0                                                          // add the offset to the base address of save area
	SREG t2, vmem_bgn_off+1*sv_area_sz(sp)                                  // write the address of vmem_bgn_off in sscratch

# -------------------------Set the PTE for level3 for sv48-----------------

	// level 3 PTE setup for pa (0x200000000000 -> 0x80000000000000)	

	LI (a0, pa)                                                             // loads the address in a0
	LI a1, ( PTE_V | PTE_A | PTE_W | PTE_R | PTE_D | PTE_X | PTE_U)       		// sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, va_rvtest_code_begin, LEVEL4,sv57)                         // setup the PTE for level 3 for sv48
							        
	// level 3 PTE setup for rvtest_data (0x210000000000 -> rvtest_data)

	LA (a0, rvtest_data_begin)	
	LI a1, ( PTE_D | PTE_A | PTE_R | PTE_W | PTE_X | PTE_V | PTE_U)         	// sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, va_rvtest_data_begin, LEVEL4,sv57)                    // setup the PTE for level 3 for sv48

# -------------------------Set the PTE for signature update-----------------
	// level 3 PTE setup for rvtest_slvl1_pg_tbl (0x280000180118-> rvtest_slvl1_pg_tbl)	

	LA(a0, rvtest_sig_begin)   						// Physical address of signature area
	li a1, ( PTE_D | PTE_A | PTE_R | PTE_W | PTE_X | PTE_V | PTE_U)         	// sets the permissions bits 
	PTE_SETUP_RV64(a0, a1, t0, t1, va_rvtest_sig_begin, LEVEL4,sv57) 			// PTE Setup for signature area address at pgtbl0
	
	LI (t0, va_rvtest_sig_begin)                                                       
	LA (t1, rvtest_sig_begin)                                                      
	sub t0, t0, t1 					        		// (VA-PA) Note: VA > PA 
	add x13, x13, t0				        		// Translation of Signature reg	


# # -------------------------Setting the PMM ----------------------------- 

	LI a3,0x200000000
        csrw mseccfg, a3                                                        //Enable Pointer Masking with PMLEN = 7

# # -------------------------Testing PMM on PA------------------------

        nop     
	LI (t0, rvtest_data)                                                        
        nop     
        lr.w a2, 0(t0)                                                            // test the load access
        nop                                             
        sc.w t1, a2, 0(t0)                                                            // test the store access
        nop
        lr.d a2, 0(t0)                                                            // test the load access
        nop                                             
        sc.d t1, a2, 0(t0)                                                            // test the store access
        nop 	 	 	  

# -------------------------Set the SATP for virtulization------------------
	sfence.vma                                                              // flush the TLB          
	SATP_SETUP_RV64 (sv57)                                                  // set the SATP for virtualization
# -------------------------Switching to U Mode------------------

	RVTEST_GOTO_LOWER_MODE Umode	

# -------------------------virtulization enabled----------------------------------

              #--------------Testing PMM on VA--------------#
vm_en:
        nop     
	LI (t0, va_rvtest_data_begin)                                                        
        nop     
        lr.w a2, 0(t0)                                                            // test the load access
        nop                                             
        sc.w t1, a2, 0(t0)                                                            // test the store access
        nop
        lr.d a2, 0(t0)                                                            // test the load access
        nop                                             
        sc.d t1, a2, 0(t0)                                                            // test the store access
        nop 	 	 	  

# -------------------------virtulization disabled----------------------------------

	RVTEST_GOTO_MMODE		                                        // Switching back to M mode

# # -------------------------Setting the PMM ----------------------------- 

	LI a3,0x200000000
        csrc mseccfg, a3                                                        
#-------------------------------------------------------------------------

	LI (t0, va_rvtest_sig_begin)                                                       
	LA (t1, rvtest_sig_begin)                                                      
	sub t0, t0, t1 					        		// (VA-PA) Note: VA > PA 
	sub x13, x13, t0				        		// Translation of Signature reg
	addi x13,x13,REGWIDTH
	nop                                                                 

	LI (a4, 0x123)
	RVTEST_SIGUPD(x13,a4)                                                   // Verification of virtualization disabled

#endif

 # ----------------------------------------------------------------------------

RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 3
rvtest_data:
	.dword 0xdeadbeefdeadbeef
#ifdef rvtest_strap_routine
.align 12
rvtest_slvl1_pg_tbl:
        RVTEST_PTE_IDENT_MAP(0,LVLS,RVTEST_ALLPERMS)	
rvtest_slvl2_pg_tbl:
        RVTEST_PTE_IDENT_MAP(0,LVLS,RVTEST_ALLPERMS)
rvtest_slvl3_pg_tbl:
        RVTEST_PTE_IDENT_MAP(0,LVLS,RVTEST_ALLPERMS)
rvtest_slvl4_pg_tbl:
        RVTEST_PTE_IDENT_MAP(0,LVLS,RVTEST_ALLPERMS)	        
#endif
RVTEST_DATA_END
RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

// test signatures initialization
signature_x13_1:
    .fill 64*(XLEN/64),4,0xcafebeef

// trap signatures initialization
#ifdef rvtest_mtrap_routine
mtrap_sigptr:
    .fill 64*(XLEN/64),4,0xdeadbeef
#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
