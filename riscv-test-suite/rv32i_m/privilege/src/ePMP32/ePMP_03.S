// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This test belongs to ePMP Test plan developed by 10xEngineers
// which can be found here: https://docs.google.com/spreadsheets/d/1dDeSlpOrtMDFhkv7ysAbCgCjOKVzhhvxCY83DirL92w/edit?usp=sharing
//
// This assembly file tests the permissions of csrw, csrr, csrs and csrc in S mode
// It should generate trap_illegal_instruction because mseccfg is a machine mode csr
#define rvtest_strap_routine
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32I")
# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN
#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",ePMP_test_03)
RVTEST_SIGBASE( x13,signature_x13_1)
    .option nopic
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .align  2    

#define test_value 0x44444444
#define EntireMemorySpace 0xFFFFFFFF 

#define PMPCFG0		0x3A0		// Address of pmpcfg0 	(HAS BEEN USED WHILE ITERATING THE LOOP)
#define PMPADDR0	0x3B0		// Address of pmpaddr0 	(HAS BEEN USED WHILE ITERATING THE LOOP)

#define PMP0_CFG_SHIFT  0
#define PMP1_CFG_SHIFT  8
#define PMP2_CFG_SHIFT  16
#define PMP3_CFG_SHIFT  24

main: 

    LI(x1,test_value)                   //Load a value in a register which signifies we are in main
    RVTEST_SIGUPD(x13,x1)               //Update the signature 
 
//------------------------------Loop to initialize all pmpaddr and pmpcfg CSR(s) to zero--------------------------------     

    .set pmpcfgi, PMPCFG0	            // Initialize an iterating variable with the address of pmpcfg0
	.rept 4			                    // START OF LOOP(Repeat 4 times)
	csrw pmpcfgi , x0	                // Set all pmpcfg regs to zero (initial value)
	.set pmpcfgi, pmpcfgi+1		        // increment variable to next pmpcfg reg
	.endr			                    // END OF LOOP BODY
	// Loop to SET ALL pmpaddr REGs to zero
	.set pmpaddri, PMPADDR0	            // Initialize an iterating variable with the address of pmpaddr0
	.rept 16		                    // START OF LOOP(Repeat 16 times)
	csrw pmpaddri, x0	                // Set all pmpaddr regs to zero (initial value)
	.set pmpaddri, pmpaddri+1		    // increment variable pmpaddri to the next pmpaddr reg
	.endr			                    // END OF LOOP BODY

//-----------------------------------------------------------------------------------------------------------------------     

/*-------------------------------Descritption of all regions used------------------------------------------------------

{Region 0}-------->[Entire memory sapce]
                   [With Read,Write and execute permissions enable for that region and Lock is clear]

------------------------------------------------------------------------------------------------------------------*/

#define PMPADDRESS0	EntireMemorySpace                                            // value to be loaded in pmpaddr0 to declare region0
#define PMPREGION0 (((PMP_R | PMP_W | PMP_X | PMP_TOR)&0xFF)<< PMP0_CFG_SHIFT)   // Configuration for region 0

//------------------ Configuring 1 region as mentioned  above--------------------------------     
   
    csrw satp, zero                     //Disable address translation.
    
    LA(x2, PMPADDRESS0)                  // Starting address 0 upto whole memory is configured  
	srl x2, x2, PMP_SHIFT		         // Shift right by 2 times    
    csrw pmpaddr0, x2                    // Updated pmpaddr0 to define PMP region consisting
    csrr x3, pmpaddr0                    // Verify its value by reading back
    RVTEST_SIGUPD(x13,x3)                // Update the signature 

    LI(x4, PMPREGION0 )                 //Permission for Region 0 is loaded
    csrw pmpcfg0, x4
    csrr x5,pmpcfg0                     //Read to confirm configuration is set properly
    RVTEST_SIGUPD(x13,x5)               //Update the signature 

    //----------------------------------------------------------------------------------
              
    RVTEST_GOTO_LOWER_MODE  Smode   // GO into S mode

    //-------------------------In S mode now---------------------------------------------
    
    nop
    csrw mseccfg,zero                    //write mseccfg to know whether csrw is permitted(should trap bcz it is M mode csr)
    csrr x3,mseccfg                     //Read the value of mseccfg(should trap bcz it is M mode csr)
    RVTEST_SIGUPD(x13,x3)               //Update the signature 

    csrs mseccfg,zero                   //set mseccfg to know whether csrs is permitted(should trap bcz it is M mode csr)
    csrr x3,mseccfg                     //Read the value of mseccfg(should trap bcz it is M mode csr)
    RVTEST_SIGUPD(x13,x3)               //Update the signature 

    csrc mseccfg,zero                   //clear mseccfg to know whether csrc is permitted(should trap bcz it is M mode csr)
    csrr x3,mseccfg                     //Read the value of mseccfg(should trap bcz it is M mode csr)
    RVTEST_SIGUPD(x13,x3)               //Update the signature 

    nop

    j exit

RAM_LOCATION_FOR_TEST:          //This is the region which will be used to test RWX permissions (IN later files)       
	.fill 3*(XLEN/32),4,0x12345678


exit: 

#endif
 # ---------------------------------------------------------------------------------------------
    # HALT
RVTEST_CODE_END
RVMODEL_HALT
RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xdeadcafe
RVTEST_DATA_END
RVMODEL_DATA_BEGIN
signature_x13_0:
    .fill 0*(XLEN/32),4,0x12345678
signature_x13_1:
    .fill 128*(XLEN/32),4,0xcafebeef
#ifdef rvtest_mtrap_routine
mtrap_sigptr:
    .fill 256*(XLEN/32),4,0xdeadbeef
#endif
#ifdef rvtest_gpr_save
gpr_save:
    .fill 24*(XLEN/32),4,0xc9a8b7f1
#endif
PMP_region_High:
RVMODEL_DATA_END