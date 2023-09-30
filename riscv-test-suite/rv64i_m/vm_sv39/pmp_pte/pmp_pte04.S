# #################################################################################################
# Verification Goal: Remove read and write PMP permission of PTE address in pmpcfg and test the   #
# 		     Read Acces and Write Access in User mode for Level 0 PTE Should	          #	
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
.align 3									// to align for 64 bit 
rvtest_data:									// rvtest_data region for RWX access(ppn1==0 and ppn0==0)
	.dword 0xFACECAFEBEEDCAFE
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

	csrw pmpcfg0, zero							// clear the pmpcfg0 register
        
        LA( t1, rvtest_data )                                                   // loads the base address of rvtest_data label        
        srli t1, t1, PMP_SHIFT                                                  // Right shift the address of rvtest_data label by PMP_Shift(2)
        ori t1, t1, 0                                                           // 8-byte of NAPOT range
        csrw pmpaddr0, t1                                                       // write t1 to the pmpaddr0
       	LI ( t2,( PMP_NAPOT | PMP_X | PMP_W | PMP_R))	                        // sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0

        LA( t1, vm_en )                                                         // loads the base address of vm_en label        
        srli t1, t1, PMP_SHIFT                                                  // Right shift the address of vm_en label by PMP_Shift(2)
        ori t1, t1, 0x1FF                                                       // 4KB of NAPOT range
        csrw pmpaddr1, t1                                                       // write t1 to the pmpaddr1
       	LI ( t2,( (PMP_NAPOT | PMP_X | PMP_W | PMP_R) << 8 ))	                // sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0

        LA( t1, rvtest_slvl1_pg_tbl )                                           // loads the base address of rvtest_slvl1_pg_tbl label        
        srli t1, t1, PMP_SHIFT                                                  // Right shift the address of rvtest_slvl1_pg_tbl label by PMP_Shift(2)
        ori t1, t1, 0x1FF                                                       // 4KB of NAPOT range
        csrw pmpaddr2, t1                                                       // write t1 to the pmpaddr2
       	LI ( t2,( (PMP_NAPOT | PMP_X | PMP_W | PMP_R ) << 16 ))	                // sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0

        LA( t1, rvtest_slvl2_pg_tbl )                                           // loads the base address of rvtest_slvl2_pg_tbl label        
        srli t1, t1, PMP_SHIFT                                                  // Right shift the address of rvtest_slvl2_pg_tbl label by PMP_Shift(2)
        ori t1, t1, 0                                                      	// 8-byte of NAPOT range
        csrw pmpaddr3, t1                                                       // write t1 to the pmpaddr3
       	LI ( t2,( (PMP_NAPOT  ) << 24 ))	                		// sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0

        LA( t1, rvtest_Sroot_pg_tbl )                                           // loads the base address of rvtest_Sroot_pg_tbl label        
        srli t1, t1, PMP_SHIFT                                                  // Right shift the address of rvtest_Sroot_pg_tbl label by PMP_Shift(2)
        ori t1, t1, 0x1FF                                                       // 4KB of NAPOT range
        csrw pmpaddr4, t1                                                       // write t1 to the pmpaddr4
       	LI ( t2,( (PMP_NAPOT | PMP_X | PMP_W | PMP_R) << 32 ))	                // sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0

        LA( t1, rvtest_sig_begin )                                              // loads the base address of rvtest_sig_begin label        
        srli t1, t1, PMP_SHIFT                                                  // Right shift the address of rvtest_sig_begin label by PMP_Shift(2)
        ori t1, t1, 0x1FF                                                       // 4KB of NAPOT range
        csrw pmpaddr5, t1                                                       // write t1 to the pmpaddr5
       	LI ( t2,( (PMP_NAPOT | PMP_X | PMP_W | PMP_R) << 40 ))	                // sets the permission bits
	csrs pmpcfg0,t2								// set the permissions of all memory 

      	LA( t1, rvtest_slvl2_pg_tbl )                                           // loads the base address of rvtest_slvl2_pg_tbl label        
        addi t1,t1,8								// adding 8 byte to the base address of rvtest_slvl2_pg_tbl
	srli t1, t1, PMP_SHIFT                                                  // Right shift the address of rvtest_slvl2_pg_tbl label by PMP_Shift(2)
        ori t1, t1, 0x1FF                                                       // 4KB of NAPOT range
        csrw pmpaddr6, t1                                                       // write t1 to the pmpaddr6
       	LI ( t2,( (PMP_NAPOT | PMP_X | PMP_W | PMP_R ) << 48 ))	                // sets the permission bits
	csrs pmpcfg0,t2								// write to the pmpcfg0

	csrw satp, zero								// write zero to the satp (bare mode)
# -------------------------------------------------------------------------

	.set va,       	 0x090000A000						// 39 bits of VA address
	.set pa,       	 0x80000000000000 					// 56 bits of PA address 
	.set va_data,  	 0x0900000688						// 39 bits of VA address	
	.set sig_data,   0x090000B118						// 39 bits of VA address (offset bits should be same as that of rvtest_sig_begin)

# -------------------------Set the PTE for level2 for sv39-----------------

	LA (a0, rvtest_slvl1_pg_tbl)                                            // loads the address in a0
	LI a1, ( PTE_V )           					        // sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, va, LEVEL2,sv39)                         // setup the PTE for level2
	
	LA (a0, rvtest_slvl2_pg_tbl)                                            // loads the address in a0
	LI a1, ( PTE_V )           					        // sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, va, LEVEL1,sv39)                         // setup the PTE for level1
								                // level0 PTE setup for pa (0x090000A000 -> 0x80000000000000)	
	LI (a0, pa)                                                             // loads the PA address in a0
	LI a1, ( PTE_D | PTE_A | PTE_U | PTE_X | PTE_V )               		// sets the permission bits
	PTE_SETUP_RV64(a0, a1, t0, t1, va, LEVEL0,sv39)                         // setup the PTE for level0 for sv39
 										// level2 PTE setup for pa (0x0900000688 -> rvtest_data)
	LA( a0,rvtest_data)							// loads the PA address in a0 
	LI a1, ( PTE_D | PTE_A | PTE_U | PTE_W | PTE_R | PTE_V ) 		// sets the permission bits 
	PTE_SETUP_RV64(a0, a1, t0, t1, va_data, LEVEL0,sv39)                    // setup the PTE for level2 for sv39
	
# -------------------------Set the PTE for signature update-----------------
                                                                                // PTE setup for 0x090000B118 -> rvtest_sig_begin
	la a0, rvtest_sig_begin   						// Physical address of signature area
	li a1, ( PTE_D | PTE_A | PTE_U | PTE_R | PTE_W | PTE_V )                // sets the permissions bits 
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
