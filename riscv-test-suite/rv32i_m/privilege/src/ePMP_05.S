// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This test belongs to ePMP Test plan developed by 10xEngineers
// which can be found here: https://docs.google.com/spreadsheets/d/1dDeSlpOrtMDFhkv7ysAbCgCjOKVzhhvxCY83DirL92w/edit?usp=sharing
//
// This assembly file tests when we write to the reserved fields of mseccfg it should not write there 
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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",ePMP_test_05)
RVTEST_SIGBASE( x13,signature_x13_1)
    .option nopic
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .align  2    
main: 
 
    LI(x1,0x44444444)                   //Load a value in a register which signifies we are in main
    RVTEST_SIGUPD(x13,x1)               //Update the signature 

    LI(x2,7)                            //Load a value 7 in x2 which signifies first 3 valid bits of mseccfg
    not x2,x2                           //set 1's to all other fields except first 3 fields
    csrw mseccfg,x2                     //write mseccfg to know whether fields are written
    csrr x3,mseccfg                     //Read the value of mseccfg to verify whether fields are written
    RVTEST_SIGUPD(x13,x3)               //Update the signature with the csr value

       
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