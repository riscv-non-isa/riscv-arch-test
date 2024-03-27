// ###############################################################################################           
// Verification Goal: Test the write acces in Supervisor mode for Level0 such that (PTE.x = 1,	 #
// 		      PTE.r = 1, PTE.u=1 and mstatus.SUM=1), write access to the PTE should be 	 #
//  		      successful                                                                 #
//												 #														
// Discription:       If PTE belongs to user mode i.e. its U permission bit is set (pte.u = 1)   #
//                    and m/sstatus.SUM = 1, then RW access to that PTE in supervisor mode       #
//                    would be successful but eXecute access would raise instruction page        #
//                    fault exception in s-mode.                                                 #   
// ###############################################################################################   

#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV32I_Zicsr")

// Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN
#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def TEST_CASE_1=True",sv32)

RVTEST_SIGBASE( x13,signature_x13_1)
  	
main:

// ---------------------------------------------------------------------------------------------

#ifdef rvtest_mtrap_routine							// Verification of existance of rvtest_mtrap_routine
	LI a4, 0xceed
	RVTEST_SIGUPD(x13,a4)
#endif
#ifdef rvtest_strap_routine					                // Verification of existance of rvtest_strap_routine
	LI a4, 0xbeed
	RVTEST_SIGUPD(x13,a4)
#endif
	
	ALL_MEM_PMP          						        // Set the PMP permissions
	WRITE_CSR (satp,x0)  						        // write satp with all zeros (bare mode)

 	.set va,       0x90000000                                               // virtual address of vm_en
	.set pa,       0x80000000                                               // physical address of vm_en
        .set va_data,  0x90011000                                               // virtual address of rvtest_data 
        .set sig_data, 0x93003114                                               // virtual address of signature_x13_1
          									// PTE setup for sig_data -> rvtest_slvl1_pg_tbl
	la a0, rvtest_slvl1_pg_tbl   		                                // loads the base address of the pg_tbl0        				
	li a1, (PTE_V)                                                          // sets the permissions bits                
	PTE_SETUP_RV32(a0, a1, t0, t1, sig_data, LEVEL1)	                // setup the PTE for level1 
	                                         		                // pgtbl1 PTE Setup to point to the pgtbl0 PTE
	LA (a0, rvtest_slvl1_pg_tbl)                         	                // Stores the base address of pgtbl0 address in a0
	LI (a1, PTE_V )                                       	                // Sets the PR bit to valid only to point to the pgtbl0 PTE
	PTE_SETUP_RV32(a0, a1, t0, t1, va, LEVEL1)             	                // Setup the PTE for level1
                                             			                // PTE setup for Instruction memory 0x90000000 -> 0x80000000
	LA (a0, pa)                                           	                // Loads the address in a0
	LI a1, ( PTE_D | PTE_A | PTE_X | PTE_V )		                // Sets the permission bits
	PTE_SETUP_RV32(a0, a1, t0, t1, va, LEVEL0)                              // Setup the PTE for level1
										// PTE setup for rvtest_data 0x91000000 -> rvtest_data	
	LA (a0, rvtest_data)                                                    // Loads the address of label rvtest_data in a0
	LI a1, (PTE_D | PTE_A | PTE_U | PTE_X | PTE_W | PTE_R | PTE_V)          // Sets the permission bits (PTE_V == 0)
	PTE_SETUP_RV32(a0, a1, t0, t1, va_data, LEVEL0)                         // Setup the PTE for level1
        									// PTE setup for 0x93003114 -> rvtest_sig_begin*/
	la a0, rvtest_sig_begin   						// Physical address of signature area
	li a1, ( PTE_D | PTE_A | PTE_R | PTE_W | PTE_X | PTE_V)                 // sets the permissions bits 
	PTE_SETUP_RV32(a0, a1, t0, t1, sig_data, LEVEL0) 			// PTE Setup for signature area address at pgtbl0

	LI (t0, sig_data)                                                       
	LA (t1, rvtest_sig_begin)                                                      
	sub t0, t0, t1 					        		// (VA-PA) Note: VA > PA 
	add s11, x13, t0				        		// Translation of Signature reg

  
	SATP_SETUP_SV32                                           		// set the SATP for virtualization

	/* Save Virtual addresses in of Code and Data 
	in their respective S-mode save area */
	/****** code ******/
	LI (t0, va)					                        // Load physical Address
	LA (t1, pa)					                        // Load Physical Address
	sub t0, t0, t1 					                        // (VA-PA) Note: VA > PA 
	csrr sp, mscratch				                        // Access the Address to the save area as pointed by mscratch
	add t1,sp,t0					                        // Address translation of save area address
	csrw sscratch, t1 				                        // Save Virtual Address of the save area into sscratch
	
	LREG t1, code_bgn_off+0*sv_area_sz(sp)		                        // Copy rvtest_code_begin physical address
	add t2, t1, t0					                        // Address transalation of rvtest_code_begin label
	SREG t2, code_bgn_off+1*sv_area_sz(sp)		                        // Save the virtual address of rvtest_code_begin at Smode save area location
	/******* data *******/
	// update save area
	// Here va_data is the virtual address of the data area (rvtest_data label)
	LI (t0, va_data)                               	                        // load the virtual address of rvtest_data in t0
	LA (t1, rvtest_data)                                                    // load the physical address of rvtest_data in t1
	sub t0, t0, t1                                                          // (VA-PA) Note: VA > PA 
	LREG t1, data_bgn_off+0*sv_area_sz(sp)                                  // load the address of data_bgn_off in t1
	add  t2, t1,t0                                                          // Address transalation of rvtest_data_begin label
	SREG t2, data_bgn_off+1*sv_area_sz(sp)                                  // Save the virtual address of rvtest_code_begin at Smode save area location
	//signature
	// sig_data is the virtual address of the signature area while signature_x13_1 is the physical address of the signautre area
	LI (t0, sig_data)                                                       // load the virtual address of signature_x13_1 in t0
	LA (t1, signature_x13_1)                                                // load the physical address of signature_x13_1 in t1
	sub t0, t0, t1                                                          // (VA-PA) Note: VA > PA 
	LREG t1, sig_bgn_off+0*sv_area_sz(sp)                                   // load the address of sig_bgn_off in t1
	add t2, t1, t0                                                          // add the offset to the base address of save area
	SREG t2, sig_bgn_off+1*sv_area_sz(sp)                                   // write the address of sig_bgn_off in sscratch
	// vmem
	LI (t0, va_data)                                                        // load the virtual address of rvtest_data in t0
	LA (t1, rvtest_data)                                                    // load the physical address of rvtest_data in t1
	sub t0, t0, t1                                                          // (VA-PA) Note: VA > PA
	LREG t1, vmem_bgn_off+0*sv_area_sz(sp)                                  // load the address of vmem_bgn_off in t1
	add t2, t1, t0                                                          // add the offset to the base address of save area
	SREG t2, vmem_bgn_off+1*sv_area_sz(sp)                                  // write the address of vmem_bgn_off in sscratch


	sfence.vma
        li s7, MSTATUS_SUM
        SET_CSR(mstatus,s7)                            	                        // Set the mstatus.SUM = 1 
	RVTEST_GOTO_LOWER_MODE	Smode		     	                        // Switching to S mode

vm_en:
	LI (a4, 0xdead)
	RVTEST_SIGUPD(s11,a4)                                                   // Verification of virtualization enabeled
        
	LA (t0, va_data)                                                        
	LREG x2, 0(t0)                                                          // test the load access 
        nop                                             
        
	LI (a4, 0xbeef)                                                         // Verification of coming back from trap handler 
	RVTEST_SIGUPD(s11,a4)

	RVTEST_GOTO_MMODE		                                        // Switching back to M mode
        
        nop
	LI (a4, 0x123)
	RVTEST_SIGUPD(x13,a4)                                                   // Verification of virtualization disabled
#endif

 // ---------------------------------------------------------------------------------------------
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
