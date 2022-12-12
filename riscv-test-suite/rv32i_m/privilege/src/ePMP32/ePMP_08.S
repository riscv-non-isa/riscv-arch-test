// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This test belongs to ePMP Test plan developed by 10xEngineers
// which can be found here: https://docs.google.com/spreadsheets/d/1dDeSlpOrtMDFhkv7ysAbCgCjOKVzhhvxCY83DirL92w/edit?usp=sharing
//
//
//This assembly file tests if we set (mseccfg.RLB=1 and pmpcfg.L=1) then pmp rules may be removed/modified and
//pmp entries may be edited

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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",ePMP_test_08)
RVTEST_SIGBASE( x13,signature_x13_1)
    .option nopic
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .align  2    

#define test_value 0x44444444
#define Start 0x00000000
#define EntireMemorySpace 0xFFFFFFFF


#define setRLB  4
#define setMMWP 2
#define setMML  1

#define PMPCFG0		0x3A0		// Address of pmpcfg0 	(HAS BEEN USED WHILE ITERATING THE LOOP)
#define PMPADDR0	0x3B0		// Address of pmpaddr0 	(HAS BEEN USED WHILE ITERATING THE LOOP)

#define PMP0_CFG_SHIFT  0
#define PMP1_CFG_SHIFT  8
#define PMP2_CFG_SHIFT  16
#define PMP3_CFG_SHIFT  24

#define clear_cf_of_Region0 0x00FFFFFF

//------------------------------This macro is used for testing the RWX for region 3(region under test)------------------     

#define NOP 	0x13
.macro VERIFICATION_RWX		ADDRESS 	 
   	LA(a5, \ADDRESS)	   //Fetch the address to be checked
    lw	a4,0(a5)	       // Load data from it (CHECK FOR READ) ; (NOT TRAP => R enabled)
	nop			           // Added nop in case of trap
    // WRITING new value to memory region TRAP if the WRITability is blocked
	LI(a4, 	NOP)		   // Load the new value (NOP Instruction ID) 
	sw	a4,0(a5)	       // Store the new value (NOT TRAP => W enabled)
	nop			           // Added nop in case of trap
	lw	a4,0(a5)	       // Reload for verification (CHECK IF DATA HAS BEEN UPDATED SUCCESSFULLY)
	nop			           // Added nop in case of trap
	jal	\ADDRESS	// Test for execution, an instruction is placed at this address 
.endm
//-----------------------------------------------------------------------------------------------------------------------     


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

    LI(x2,setRLB)
    csrw mseccfg, x2                   //Setting mseccfg.RLB 
    csrr x2,mseccfg                     //Verify its value by reading back
    RVTEST_SIGUPD(x13,x2)               //Update the signature with the csr value

/*-------------------------------Descritption of all regions used-------------------------------------------------                        

{Region 0}-------->[RAM_LOCATION_FOR_TEST   till   RETURN_INSTRUCTION]
                   [With Read,Write and execute permissions not enabled for that region and Lock is set] [Old configuration]
                   [With Read,Write and execute permissions enabled for that region and Lock is set] [New configuration]

{Region 1}-------->[Entire memory sapce]
                   [With Read,Write and execute permissions enable for that region and Lock is clear]

------------------------------------------------------------------------------------------------------------------*/
#define PMPADDRESS0	RAM_LOCATION_FOR_TEST                                                 // value to be loaded in pmpaddr0 to declare start of region0
#define PMPADDRESS1	RETURN_INSTRUCTION                                                    // value to be loaded in pmpaddr1 to declare end of region0
#define PMPREGION0 (((PMP_L |PMP_TOR)&0xFF)<< PMP1_CFG_SHIFT)                             // Configuration for region 0
#define NEW_PMPREGION0 (((PMP_L | PMP_R | PMP_W |PMP_X |PMP_TOR)&0xFF)<< PMP1_CFG_SHIFT)  //New Configuration for region 0 which will be used later to check our test


#define PMPADDRESS2	Start                                                                // Value to be loaded in pmpaddr2 to declare region1 start
#define PMPADDRESS3	EntireMemorySpace                                                    // Value to be loaded in pmpaddr3 to declare region1 end
#define PMPREGION1 (((PMP_R | PMP_W | PMP_X | PMP_TOR)&0xFF)<< PMP3_CFG_SHIFT)            // Configuration for region 1


//------------------ Configuring 2 regions as mentioned  above--------------------------------------------------     
    csrw satp, zero                     //Disable address translation.
    
    LA(x4, PMPADDRESS0)                  //Starting address RAM_LOCATION_FOR_TEST is loaded for region 0  
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr0, x4                   //Updated pmpaddr0 to define PMP region consisting
    csrr x5, pmpaddr0                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature 

    LA(x4, PMPADDRESS1)                  //Ending address RETURN_INSTRUCTION is loaded for reigion 0  
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr1, x4                   //Updated pmpaddr1 to define PMP region consisting
    csrr x5, pmpaddr1                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature 

    LA(x4, PMPADDRESS2)                  //Starting address Start is loaded for region 1 
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr2, x4                   //Updated pmpaddr2 to define PMP region consisting
    csrr x5, pmpaddr2                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature 

    LA(x4, PMPADDRESS3)                  //Ending address EntireMemorySpace is loaded for region 1 
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr3, x4                   //Updated pmpaddr2 to define PMP region consisting
    csrr x5, pmpaddr3                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature             

    LI(x6, PMPREGION0 | PMPREGION1)     //Permission for Region0 and Region 1 is loaded
    csrw pmpcfg0, x6
    csrr x7,pmpcfg0                     //Read to confirm configuration is set properly
    RVTEST_SIGUPD(x13,x7)               //Update the signature 

    //---------------------------------------------------------------------------------------------------------
    
    LI(x2,test_value)
   	
    VERIFICATION_RWX	RAM_LOCATION_FOR_TEST    //macro is called with address as RAM_LOCATION_FOR_TEST(CALLING from here will give RWX trap bcz permission is not to do RWX)
    
    LI(x8,clear_cf_of_Region0)
    RVTEST_SIGUPD(x13,x8)                       //Update the signature 
    csrc pmpcfg0, x8                            //Clear the configuration of region0
   	csrr x9,pmpcfg0                             //Read to confirm configuration is cleared properly
    RVTEST_SIGUPD(x13,x9)                       //Update the signature 

    LI(x9,NEW_PMPREGION0)
    csrs pmpcfg0, x9                            //Update the configuration to give RWX permission (If it is done then our test is passing as we are able to change the configuration of region3 despite being locked using RLB set)
   	csrr x9,pmpcfg0                             //Read to confirm configuration is set properly
    RVTEST_SIGUPD(x13,x9)                       //Update the signature 

    VERIFICATION_RWX	RAM_LOCATION_FOR_TEST    //macro is called with address as RAM_LOCATION_FOR_TEST(Now no RWX trap)

    j exit

RAM_LOCATION_FOR_TEST:                //This is the region which will be used to test RWX permissions
	.fill 1*(XLEN/32),4,0x13
    addi x9,x9,0x01		               // A TEST INSTRUCTION TO TEST THE EXECUTION CHECK ON PMP REGION

RETURN_INSTRUCTION:    
    ret

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