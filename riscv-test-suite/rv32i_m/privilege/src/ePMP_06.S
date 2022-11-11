// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This test belongs to ePMP Test plan developed by 10xEngineers
// which can be found here: https://docs.google.com/spreadsheets/d/1dDeSlpOrtMDFhkv7ysAbCgCjOKVzhhvxCY83DirL92w/edit?usp=sharing
//
// This assembly file tests if we set (mseccfg.RLB=0 and at least one pmpcfg.L=1) then mseccfg.RLB canot be written\modified
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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",ePMP_test_06)
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

    csrw mseccfg, zero                  //Writing 0 to mseccfg and in specific mseccfg.RLB is cleared
    csrr x2,mseccfg                     //Verify its value by reading back
    RVTEST_SIGUPD(x13,x2)               //Update the signature with the csr value

/*-----------------------------------------------------------------------------------------Descritption of all regions used---------------------------------------------------------------------------
                                      Region0                                                                                             Region1
           0             |````````````````````````````````````````````````````````````|  rvtest_code_end         |````````````````````````````````````````````````````````````````````````````` |                     
                         | [Region0] from 0 till RAM_LOCATION_FOR_TEST                |                          | [Region1] from rvtest_code_end till PMP_region_High                          |  
                         |  with RWX enabled with lock is set,PMP TOR is configured   |                          |  with RWX enabled and PMP TOR type is configured                             |
         till            |because this is the part of code memory containing our code |    till                  |because this is the part of of our signatures and other stuff                 |
                         |for this purpose we have loaded RAM_LOCATION_FOR_TEST addres|                          |for this purpose we have loaded rvtest_code_end addres into                   |        
   RAM_LOCATION_FOR_TEST |into pmpaddr0 and its corresponding cfg is pmpcfg0 csr      |   PMP_region_High        | pmpaddr1 and PMP_region_High into pmpaddr2, pmpcfg0 [24:16] are used for cfg |
                         ``````````````````````````````````````````````````````````````                          ```````````````````````````````````````````````````````````````````````````````
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
#define PMPADDRESS0	RAM_LOCATION_FOR_TEST                                        // value to be loaded pmpaddr0 to declare region0
#define PMPREGION0 (((PMP_L |PMP_R | PMP_W | PMP_X | PMP_TOR)&0xFF)<< PMP0_CFG_SHIFT)   // Configuration for region 0

#define PMPADDRESS1	rvtest_code_end                                             // value to be loaded pmpaddr1 to declare region1 start
#define PMPADDRESS2	PMP_region_High                                             // value to be loaded pmpaddr2 to declare region1 end
#define PMPREGION1 (((PMP_R | PMP_W | PMP_X | PMP_TOR)&0xFF)<< PMP2_CFG_SHIFT)  // Configuration for region 1


//------------------ Configuring 2 regions as mentioned  above--------------------------------------------------     
    csrw satp, zero                     //Disable address translation.
    LA(x4, PMPADDRESS0)                  //Starting address 0 upto RAM_LOCATION_FOR_TEST is configured  
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr0, x4                   //Updated pmpaddr0 to define PMP region consisting
    csrr x5, pmpaddr0                   //Verify its value by reading back
    nop                                 //Added nop in case of trap
    RVTEST_SIGUPD(x13,x5)               //Update the signature 
    nop                                 //Added nop in case of trap

    LA(x4, PMPADDRESS1)                  //Starting address rvtest_code_end is loaded for reigion 1  
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr1, x4                   //Updated pmpaddr1 to define PMP region consisting
    csrr x5, pmpaddr1                   //Verify its value by reading back
    nop                                 //Added nop in case of trap
    RVTEST_SIGUPD(x13,x5)               //Update the signature 
    nop                                 //Added nop in case of trap

    LA(x4, PMPADDRESS2)                  //Ending address PMP_region_High is loaded for region 1 
	srl x4, x4, PMP_SHIFT		        // Shift right by 2 times    
    csrw pmpaddr2, x4                   //Updated pmpaddr2 to define PMP region consisting
    csrr x5, pmpaddr2                   //Verify its value by reading back
    nop                                 //Added nop in case of trap
    RVTEST_SIGUPD(x13,x5)               //Update the signature 
    nop                                 //Added nop in case of trap

    LI(x6, PMPREGION0 | PMPREGION1)     //Permission for Region 0 is RWX with L clear and same for region 1
    csrw pmpcfg0, x6
    csrr x7,pmpcfg0                     //Read to confirm configuration is set properly
    RVTEST_SIGUPD(x13,x7)               //Update the signature 

    //---------------------------------------------------------------------------------------------------------
 
    nop
    csrr x8, mseccfg                    //Verify the value to double check mseccfg is zero      
    RVTEST_SIGUPD(x13,x8)               //Update the signature 
    LI(x9,setRLB)                        //load x9 with value to set mseccfg.RLB which is at bit 3 in mseccfg
    csrw mseccfg, x9                    //Setting mseccfg.RLB 
    csrr x10, mseccfg                    //Read back the value of mseccfg to verify RLB is still unset(If it is, then test is passed)
    RVTEST_SIGUPD(x13,x10)               //Update the signature

    j exit

RAM_LOCATION_FOR_TEST:                  //This is the region which will be used to test RWX permissions (IN later files)
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
