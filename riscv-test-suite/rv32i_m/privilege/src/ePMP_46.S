// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This test belongs to ePMP Test plan developed by 10xEngineers
// which can be found here: https://docs.google.com/spreadsheets/d/1dDeSlpOrtMDFhkv7ysAbCgCjOKVzhhvxCY83DirL92w/edit?usp=sharing
//
//
// This assembly file tests if(mseccfg.MML=1 and pmpcfg.L=1) and (R=1,W=1,X=1) then it is a locked share data region
// and read only region for S/U mode
//
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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",ePMP_test_46)
RVTEST_SIGBASE( x13,signature_x13_1)
    .option nopic
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .align  2    

#define test_value 0x44444444

#define setRLB  4
#define setMMWP 2
#define setMML  1

#define PMPCFG0		0x3A0		// Address of pmpcfg0 	(HAS BEEN USED WHILE ITERATING THE LOOP)
#define PMPADDR0	0x3B0		// Address of pmpaddr0 	(HAS BEEN USED WHILE ITERATING THE LOOP)

#define PMP0_CFG_SHIFT  0
#define PMP1_CFG_SHIFT  8
#define PMP2_CFG_SHIFT  16
#define PMP3_CFG_SHIFT  24

//------------------------------This macro is used for testing the RWX for region 5(region under test)------------------     

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
    
    LI(x2,setRLB)                       //To add an executable region after MML set we need RLB set that is why set here
    csrw mseccfg, x2                   //Setting mseccfg.MML 
    csrr x2,mseccfg                     //Verify its value by reading back
    nop

/*------------------------------------------------------------------------------------------Descritption of all regions used---------------------------------------------------------------------------  
                                      Region0                                                                                             Region1                                                      
           0             |````````````````````````````````````````````````````````````|    exit_cleanup  |`````````````````````````````````````````````````````````````````````````````````````````|                             
                         | [Region0] from 0 till RAM_LOCATION_FOR_TEST  with RX enable|                  | [Region1] from exit_cleanup till tohost label with WX enable with lock is set,PMP TOR   |               
                         |with lock is set,PMP TOR is configured which signifies it is|                  | is configured which signifies it is  a locked read/execute region for Mmode and execute |
         till            |a locked read/execute region for Mmode,this is codeMEMregion|      till        | region for S/U ,this is exit logic which needs to have execute permissions that is      |   
                         |for this purpose we have loaded RAM_LOCATION_FOR_TEST addres|                  |why executable region is configutedfor this purpose we have loaded exit_cleanup  addres  |      
   RAM_LOCATION_FOR_TEST |into pmpaddr0 and its corresponding cfg is set  pmpcfg0[7:0 |     tohost       | into pmpaddr1 and tohost label addr in pmpaddr2 and its corresponding cfg is pmpcfg0 csr|                      
                         ``````````````````````````````````````````````````````````````                  ```````````````````````````````````````````````````````````````````````````````````````````                      
              
          
           .                                               Region2                                                                                   Region3
Mclr_Msw_int     |````````````````````````````````````````````````````````````````````````````` |  RETURN_INSTRUCTION|````````````````````````````````````````````````````````````````````````````` |
                 | [Region2] from Mclr_Msw_int till PMP_region_High  with RW enabled and lock is|                    | [Region3] from RETURN_INSTRUCTION till exit with RX enabled and lock is set  |
                 |  set  and PMP TOR type is configured which signifies it is a lock read write |                    |  here lies out return instruction from which we have to return to main code  |
    till         | region for all mode we perform store operations here that is why read,       |       till         | after performing execution check of a testing region,that is why executable  |
                 |write perm for this purpose we have loaded Mclr_Msw_int addres into           |                    |region is configuted for this purpose we have loaded RETURN_INSTRUCTION addres|
PMP_region_High  | pmpaddr3 and PMP_region_High into pmpaddr4, pmpcfg1 [7:0] are used for cfg   |        exit        | into pmpaddr5 and exit label addr in pmpaddr6 and its corresponding pmpcfg1 csr |
                 ```````````````````````````````````````````````````````````````````````````````                     ```````````````````````````````````````````````````````````````````````````````                     
                                    
                                             Region4                                                                                              Region5                                                   
 rvtest_code_end    |````````````````````````````````````````````````````````````````````````````` |RAM_LOCATION_FOR_TEST|````````````````````````````````````````````````````````````````````````````` |   
                    | [Region4] from rvtest_code_end till PMP_region_High   with RX enabled  and   |                     | [Region5] from(Testing region) RAM_LOCATION_FOR_TEST till RETURN_INSTRUCTION |   
                    |with lock set PMP TOR type is configured which signifies it is a locked read  |                     |  with RWX enabled and  lock is set PMP TOR type is configured which          |   
   till             |execute region for m mode and execute for S/U,here trap handler code which req|    till             |signifies it is an inaccessible region for m mode, for this purpose           |   
                    |execute perm lies that is why execute region is configured, we have loaded    |                     |, we have loaded RAM_LOCATION_FOR_TEST label address in pmpaddr9 and          |   
  PMP_region_High   | pmpaddr7 and PMP_region_High into pmpaddr8, pmpcfg2 [7:0] are used for cfg   | RETURN_INSTRUCTION  |  RETURN_INSTRUCTION into pmpaddr10, pmpcfg2 [24:16] are used for cfg         |   
                    ```````````````````````````````````````````````````````````````````````````````                      ```````````````````````````````````````````````````````````````````````````````    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

#define PMPADDRESS0	RAM_LOCATION_FOR_TEST                                                           // value to be loaded pmpaddr0 to declare region0
#define PMPREGION0 (((PMP_L   | PMP_R | PMP_X | PMP_TOR)&0xFF)<< PMP0_CFG_SHIFT)                    // Configuration for region 0
#define NEW_PMPREGION0 (((PMP_L | PMP_W |PMP_X |PMP_TOR)&0xFF)<< PMP0_CFG_SHIFT)                    //New Configuration for region 0 to make the code executable for all modes


#define PMPADDRESS1	exit_cleanup                                                                    // value to be loaded pmpaddr1 to declare region1 start
#define PMPADDRESS2	tohost                                                                          // value to be loaded pmpaddr2 to declare region1 end
#define PMPREGION1 (((PMP_L | PMP_W |PMP_X |PMP_TOR)&0xFF)<< PMP2_CFG_SHIFT)                        //Configuration for region 1 


#define PMPADDRESS3	Mclr_Msw_int                                                                   // value to be loaded pmpaddr3 to declare region2 start
#define PMPADDRESS4	PMP_region_High                                                                // value to be loaded pmpaddr4 to declare region2 end
#define PMPREGION2 (((PMP_X | PMP_W  | PMP_TOR)&0xFF)<< PMP0_CFG_SHIFT)                            // Configuration for region 2

#define PMPADDRESS5	RETURN_INSTRUCTION                                                            // value to be loaded pmpaddr3 to declare region3 start
#define PMPADDRESS6	exit                                                                          // value to be loaded pmpaddr4 to declare region3 end
#define PMPREGION3 (((PMP_L | PMP_W |PMP_X |PMP_TOR)&0xFF)<< PMP2_CFG_SHIFT)                      //Configuration for region 3 


#define PMPADDRESS7	rvtest_code_end                                                               // value to be loaded pmpaddr5 to declare region4 start
#define PMPADDRESS8	PMP_region_High                                                               // value to be loaded pmpaddr6 to declare region4 end
#define PMPREGION4 (((PMP_L | PMP_X | PMP_W  |PMP_TOR)&0xFF)<< PMP0_CFG_SHIFT)                    //Configuration for region 4

#define PMPADDRESS9	RAM_LOCATION_FOR_TEST                                                         // value to be loaded pmpaddr7 to declare region5 start
#define PMPADDRESS10	RETURN_INSTRUCTION                                                        // value to be loaded pmpaddr8 to declare region5 end
#define PMPREGION5 (((PMP_L | PMP_R | PMP_W | PMP_X | PMP_TOR)&0xFF)<< PMP2_CFG_SHIFT)                                            // Configuration for region 5

//------------------ Configuring 6 regions as mentioned  above--------------------------------------------------     
    
    csrw satp, zero                     //Disable address translation.
    LA(x4, PMPADDRESS0)                  //Starting address 0 upto RAM_LOCATION_FOR_TEST is configured  
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr0, x4                   //Updated pmpaddr0 to define PMP region consisting
    csrr x5, pmpaddr0                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature 

    LA(x4, PMPADDRESS1)                  //Starting address exit_cleanup is loaded for reigion 1  
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr1, x4                   //Updated pmpaddr1 to define PMP region consisting
    csrr x5, pmpaddr1                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature 

    LA(x4, PMPADDRESS2)                  //Ending address tohost is loaded for region 1 
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr2, x4                   //Updated pmpaddr2 to define PMP region consisting
    csrr x5, pmpaddr2                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature 

    LA(x4, PMPADDRESS3)                  //Starting address Mclr_Msw_int is loaded for region 2 
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr3, x4                   //Updated pmpaddr2 to define PMP region consisting
    csrr x5, pmpaddr3                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature 
            
    LA(x4, PMPADDRESS4)                  //Ending address PMP_region_High is loaded for region 2
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr4, x4                   //Updated pmpaddr2 to define PMP region consisting
    csrr x5, pmpaddr4                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature 

    LA(x4, PMPADDRESS5)                  //Starting address RETURN_INSTRUCTION is loaded for region 3 
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr5, x4                   //Updated pmpaddr2 to define PMP region consisting
    csrr x5, pmpaddr5                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature 

    LA(x4, PMPADDRESS6)                  //Ending address exit is loaded for region 3 
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr6, x4                   //Updated pmpaddr2 to define PMP region consisting
    csrr x5, pmpaddr6                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature 

    LA(x4, PMPADDRESS7)                  //Starting address rvtest_code_end is loaded for region 4 
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr7, x4                   //Updated pmpaddr2 to define PMP region consisting
    csrr x5, pmpaddr7                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature   

    LA(x4, PMPADDRESS8)                  //Ending address PMP_region_High is loaded for region 4 
	srl x4, x4, PMP_SHIFT		         // Shift right by 2 times    
    csrw pmpaddr8, x4                   //Updated pmpaddr2 to define PMP region consisting
    csrr x5, pmpaddr8                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature  

    LA(x4, PMPADDRESS9)                  //Starting address RAM_LOCATION_FOR_TEST is loaded for region 5 
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr9, x4                   //Updated pmpaddr2 to define PMP region consisting
    csrr x5, pmpaddr9                   //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature   

    LA(x4, PMPADDRESS10)                //Ending address RETURN_INSTRUCTION is loaded for region 5 
	srl x4, x4, PMP_SHIFT		         // Shift right by 2 times    
    csrw pmpaddr10, x4                  //Updated pmpaddr2 to define PMP region consisting
    csrr x5, pmpaddr10                  //Verify its value by reading back
    RVTEST_SIGUPD(x13,x5)               //Update the signature 

    LI(x6, PMPREGION0 )                 //Permission for Region 0 is RX with L set for m mode
    csrw pmpcfg0, x6
    csrr x7,pmpcfg0                     //Read to confirm configuration is set properly
    RVTEST_SIGUPD(x13,x7)               //Update the signature 
    
    LI(x2,setMML)
    csrs mseccfg, x2                    //Setting mseccfg.MML 
    csrr x2,mseccfg                     //Verify its value by reading back
    RVTEST_SIGUPD(x13,x2)               //Update the signature with the csr value 

    LI(x9,NEW_PMPREGION0| PMPREGION1)
    csrw pmpcfg0, x9                     //Permission for Region 0 is RX with L set for m mode and X for S/U mode, same for region 1
    nop
    LI(x9,PMPREGION3|PMPREGION2)
    csrw pmpcfg1, x9                    //Permission for Region 3 is RX with L set for m mode and X for S/U mode, For region 1 RW for all modes
    nop
    LI(x9,PMPREGION4|PMPREGION5)
    csrw pmpcfg2, x9                    //Permission for Region 4 is RX with L set for m mode and X for S/U mode, For region 5 RWX is set with locked
    nop
    //---------------------------------------------------------------------------------------------------------


    RVTEST_GOTO_LOWER_MODE  Smode   // GO into S mode   
    nop
   	VERIFICATION_RWX	RAM_LOCATION_FOR_TEST    //macro is called with address as RAM_LOCATION_FOR_TEST(CALLING from here will give WX trap bcz permission is not to do WX for S mode and R is successful for S mode)
    nop

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