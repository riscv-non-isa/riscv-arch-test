// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This test belongs to ePMP Test plan developed by 10xEngineers
// which can be found here: https://docs.google.com/spreadsheets/d/1dDeSlpOrtMDFhkv7ysAbCgCjOKVzhhvxCY83DirL92w/edit?usp=sharing
//
// This assembly file tests the permissions of csrw, csrr, csrs and csrc in U mode
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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",ePMP_test_04)
RVTEST_SIGBASE( x13,signature_x13_1)
    .option nopic
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .align  2    
main: 

    LI(x1,0x44444444)                   //Load a value in a register which signifies we are in main
    RVTEST_SIGUPD(x13,x1)               //Update the signature 
    
//------------------ Configuring a pmp region 0 (This region is for instruction memory instructions are placed in this region)-----------     
    csrw satp, zero                     //Disable address translation.
    LI(x4, 0x20004000)                  //Starting address 0 upto 0x80010000 is configured  
    csrw pmpaddr0, x4                   //Updated pmpaddr0 to define PMP region consisting
    csrr x5, pmpaddr0                   //Verify its value by reading back
    nop                                 //Added nop in case of trap
    RVTEST_SIGUPD(x13,x5)               //Update the signature 
    nop                                 //Added nop in case of trap
    LI(x6, PMP_R | PMP_W | PMP_X | PMP_TOR)        //LOCKED BIT IS clear and permission is read,write and execute
    csrw pmpcfg0, x6
    csrr x7,pmpcfg0                     //Read to confirm configuration is set properly
    RVTEST_SIGUPD(x13,x7)               //Update the signature 

    //----------------------------------------------------------------------------------
    
    RVTEST_GOTO_LOWER_MODE  Umode   // GO into U mode
    //-------------------------In U mode now------------------------------------------

    nop
    LI(x2,0)                            //Load a value 0 in x2 which is used later on
    csrw mseccfg,x2                     //write mseccfg to know whether csrw is permitted
    csrr x3,mseccfg                     //Read the value of mseccfg

    csrs mseccfg,x2                     //set mseccfg to know whether csrs is permitted
    csrr x3,mseccfg                     //Read the value of mseccfg

    csrc mseccfg,x2                      //clear mseccfg to know whether csrc is permitted
    csrr x3,mseccfg                     //Read the value of mseccfg
    
       
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
RVMODEL_DATA_END