# #################################################################################################
# Verification Goal: Remove read and write PMP permission of PTE address in pmpcfg and test the   #
# 		     Read Acces and Write Access in user mode for Level 0 PTE Should	          #	
# 		     raise a load page fault for read access and Store AMO fault for write access #
#                    		                                                                  #
# Description:       If PTE does not have (r,w,x) PMP permissions, then accessing it would        #
# 		     raise access fault exception of the corresponding access type.               #
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

    RVTEST_CASE(1,"//check ISA:=regex(.*64.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def TEST_CASE_1=True",sv64)

RVTEST_SIGBASE( x13,signature_x13_1)


main:

j _start
.align 3
rvtest_data:
	.dword 0xdeadbeefdeadbeef
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
# # -------------------------Setting PMP permissions-----------------------------	
	LA(t2, vm_en)								// Loads the address of PA                
	srli t2, t2, PMP_SHIFT							// Right shift the PA by PMP_Shift(2) 
	ori t2, t2, 0x3F							// Selects the range of 512B    
	csrw pmpaddr0, t2							// Region 1 for the pmp permissions
	LI ( t2,( (PMP_NAPOT | PMP_X | PMP_W | PMP_R)))		                // sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0  

	LA(t2, rvtest_slvl1_pg_tbl )						// loads the base address of level 2 4kbpage table                 
	srli t2, t2, PMP_SHIFT							// Right shift the address of level 2 page table  by PMP_Shift(2)
	ori t2, t2, 0x1FF							// Selects the range of 4kB								 	 										
	csrw pmpaddr1, t2							// Region 2 for the pmp permission 
       	LI ( t2,( (PMP_NAPOT | PMP_X | PMP_W | PMP_R) << 8 ))	                // sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0

	LA(t2, rvtest_slvl2_pg_tbl )						// loads the base address of level1 4kbpage table                 
	srli t2, t2, PMP_SHIFT							// Right shift the address of level 1 page table  by PMP_Shift(2)
	ori t2, t2, 0x1FF							// Selects the range of 4kB								 	 										
	csrw pmpaddr2, t2							// Region 3 for the pmp permission  
       	LI ( t2,( (PMP_NAPOT | PMP_X | PMP_W | PMP_R) << 16 ))	                // sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0

	LA(t2, rvtest_slvl3_pg_tbl )						// loads the base address of level 0 4kbpage table                 
	srli t2, t2, PMP_SHIFT							// Right shift the address of level 0 page table  by PMP_Shift(2)
	ori t2, t2, 0x0								// Selects the range of 8B								 	 										
	csrw pmpaddr3, t2							// Region 4 for the pmp permission 
       	LI ( t2,( (PMP_NAPOT ) << 24 ))	                			// sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0

	LA(t2, rvtest_slvl3_pg_tbl )						// loads the base address of level 0 4kbpage table 
	addi t2,t2,8                                                            // Add 8B to the base address of level 0 4kbpage table
	srli t2, t2, PMP_SHIFT							// Right shift the address of level 0 page table  by PMP_Shift(2)
	ori t2, t2, 0x1FF							// Selects the range of 4kB								 	 										
	csrw pmpaddr4, t2							// Region 5 for the pmp permission 
       	LI ( t2,( (PMP_NAPOT | PMP_X | PMP_W | PMP_R) << 32 ))	                // sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0

	LA( t2, rvtest_Sroot_pg_tbl)						// loads the base address of root page table               
	srli t2, t2, PMP_SHIFT							// Right shift the address of root page table by PMP_Shift(2)
	ori t2, t2, 0x1FF							// Selects the range of 4kB
	csrw pmpaddr5, t2							// Region 6 for the pmp permission   
       	LI ( t2,( (PMP_NAPOT | PMP_X | PMP_W | PMP_R) << 40 ))	                // sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0

	LA( t2, rvtest_data )							// loads the base address of rvtest_data label        
	srli t2, t2, PMP_SHIFT							// Right shift the address of rvtest_data label by PMP_Shift(2)
	ori t2, t2, 3                                                           // select the range of 32B
	csrw pmpaddr6, t2							// Region 7 for the pmp permission
       	LI ( t2,( (PMP_NAPOT | PMP_X | PMP_W | PMP_R) << 48 ))	                // sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0

	LA( t2, rvtest_sig_begin )						// loads the base address of rvtest_sig_begin label        
	srli t2, t2, PMP_SHIFT							// Right shift the address of rvtest_sig_begin label by PMP_Shift(2)
	ori t2, t2, 0x1FF							// Selects the range of 128B
	csrw pmpaddr7, t2							// Region 8 for the pmp permission
       	LI ( t2,( (PMP_NAPOT | PMP_X | PMP_W | PMP_R) << 56 ))	                // sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0 

# --------------------------Setting Addresses-------------------------------
	.set va,       	 0x200000001000                                         // 48 bits virtual address						
	.set pa,       	 0x80000000000000                                       // 56 bits physical address
	.set va_data,  	 0x200000000688                                         // 48 bits virtual address of data
	.set sig_data,   0x280000180118						// 48 bits of VA address of signature

# -------------------------------------------------------------------------
	csrw satp,x0								// SATP bare mode configuration
# -------------------------Set the PTE for level3 for sv48-----------------

	// level 3 PTE setup for rvtest_slvl1_pg_tbl (0x200000001000 -> rvtest_slvl1_pg_tbl)	
	LA (a0, rvtest_slvl1_pg_tbl)                                            // loads the address in a0
	LI a1, ( PTE_V )                                                        // sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, va, LEVEL3,sv48)                         // setup the PTE for level 3 for sv48

        // level 2 PTE setup for rvtest_slvl1_pg_tbl (0x200000001000 -> rvtest_slvl2_pg_tbl)	
	LA (a0, rvtest_slvl2_pg_tbl)                                            // loads the address in a0
	LI a1, ( PTE_V )                                                        // sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, va, LEVEL2,sv48)                         // setup the PTE for level 2 for sv48

        // level 1 PTE setup for rvtest_slvl1_pg_tbl (0x200000001000 -> rvtest_slvl3_pg_tbl)	
	LA (a0, rvtest_slvl3_pg_tbl)                                            // loads the address in a0
	LI a1, ( PTE_V )                                                        // sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, va, LEVEL1,sv48)                         // setup the PTE for level 1 for sv48

	// level 0 PTE setup for pa (0x200000001000 -> 0x80000000000000)	
	LI (a0, pa)                                                             // loads the address in a0
	LI a1, ( PTE_D | PTE_A | PTE_U | PTE_X | PTE_W | PTE_R | PTE_V ) 	// sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, va, LEVEL0,sv48)                         // setup the PTE for level 0 for sv48
							        
	// level 0 PTE setup for rvtest_data (0x200000000688 -> rvtest_data)
	LA (a0, rvtest_data)	
	LI a1, ( PTE_D | PTE_A | PTE_U | PTE_X | PTE_W | PTE_R | PTE_V ) 	// sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, va_data, LEVEL0,sv48)                    // setup the PTE for level 0 for sv48


# -------------------------Set the PTE for signature update-----------------

	// level 3 PTE setup for rvtest_slvl1_pg_tbl (0x280000180118-> rvtest_slvl1_pg_tbl)	

	LA (a0, rvtest_slvl1_pg_tbl)                                            // loads the address in a0
	LI a1, ( PTE_V )                                                        // sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, sig_data, LEVEL3,sv48)                   // setup the PTE for level 3 for sv48

        // level 2 PTE setup for rvtest_slvl1_pg_tbl (0x280000180118 -> rvtest_slvl2_pg_tbl)	

	LA (a0, rvtest_slvl2_pg_tbl)                                            // loads the address in a0
	LI a1, ( PTE_V )                                                        // sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, sig_data, LEVEL2,sv48)                   // setup the PTE for level 2 for sv48

        // level 1 PTE setup for rvtest_slvl1_pg_tbl (0x280000180118 -> rvtest_slvl3_pg_tbl)	

	LA (a0, rvtest_slvl3_pg_tbl)                                            // loads the address in a0
	LI a1, ( PTE_V )                                                        // sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, sig_data, LEVEL1,sv48)                   // setup the PTE for level 1 for sv48
        // PTE setup for 0x280000180118 -> rvtest_sig_begin
	la a0, rvtest_sig_begin   						// Physical address of signature area
	LI a1, ( PTE_D | PTE_A | PTE_U | PTE_X | PTE_W | PTE_R | PTE_V ) 	// sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, sig_data, LEVEL0,sv48) 			// PTE Setup for signature area address at pgtbl0
	
	LI (t0, sig_data)                                                       
	LA (t1, rvtest_sig_begin)                                                      
	sub t0, t0, t1 					        		// (VA-PA) Note: VA > PA 
	add x13, x13, t0				        		// Translation of Signature reg		

# -------------------------Set the SATP for virtulization------------------
        
	SATP_SETUP_RV64 (sv48)                                                  // set the SATP for virtualization


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

 # ----------------------------------------------------------------------------

RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
#ifdef rvtest_strap_routine
.align 12
rvtest_slvl1_pg_tbl:
        RVTEST_PTE_IDENT_MAP	
rvtest_slvl2_pg_tbl:
        RVTEST_PTE_IDENT_MAP
rvtest_slvl3_pg_tbl:
        RVTEST_PTE_IDENT_MAP	        
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
