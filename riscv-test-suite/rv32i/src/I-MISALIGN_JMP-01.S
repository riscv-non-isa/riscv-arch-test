// RISC-V Compliance Test I-MISALIGN_JMP-01
//
// Copyright (c) 2017, Codasip Ltd.
// Copyright (c) 2018, Imperas Software Ltd. Additions
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//      * Redistributions of source code must retain the above copyright
//        notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above copyright
//        notice, this list of conditions and the following disclaimer in the
//        documentation and/or other materials provided with the distribution.
//      * Neither the name of the Codasip Ltd., Imperas Software Ltd. nor the
//        names of its contributors may be used to endorse or promote products
//        derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
// IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Codasip Ltd., Imperas Software Ltd.
// BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
// THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// Specification: RV32I Base Integer Instruction Set, Version 2.0
// Description: Testing MISALIGNED JUMP exception.

#include "compliance_test.h"
#include "compliance_io.h"
#include "test_macros.h"

// Test Virtual Machine (TVM) used by program.
RV_COMPLIANCE_RV32M

// Test code region
RV_COMPLIANCE_CODE_BEGIN

    RVTEST_IO_INIT
    RVTEST_IO_ASSERT_GPR_EQ(x30, x0, 0x00000000)
    RVTEST_IO_WRITE_STR(x30, "// Test Begin Reserved reg x31\n")

    // Save and set trap handler address  // **FIXME** this should be in a macro
    la x1, _non_halt_trap_handler
    csrrw x31, mtvec, x1

    // switch off C
    //    csrrci   x0, misa, 4 // shouldn't be touching priv resources in the test - replicate/include test instead

    // -------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "// Test part A1 - test JAL\n");

    // Address for test results
    la      x1, test_A1_res_exc

// These case test should either succeed or trap with an alignment exception if no RVC
    li      x2, 0x1111111     // branch signature
    jal     x0, 1f + 2        // branch to hw aligned addr
    li      x2, 0x1010101     // bug - get to here if br ignored
    .option rvc
1:  c.sli    x2, 16           // bug - branched to even hw
    c.sri    x2, 5            // correctly executed jal will end up here
    .option norvc
    sw      x2, 0(x1)         // trap will end up here
    addi    x1, x1, 16
    // 
    //  Assert
    // 
    RVTEST_IO_CHECK()
    RVTEST_IO_WRITE_STR(x30, "// Test part A1  - Complete\n");
//**FIXME** for coverage, add odd byte offsets to JAL tests, just like JALR tests
//**FIXME** for coverage, tests should try offsets of -3..+3 with 0 offset and with sign offset -3..+3

    // -------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "// Test part A2 - test JALR - NOT causing the exception\n with odd byte alignment");
//**FIXME** for coverage Tests should ensure that base+offset carries into bit2
	
    // Address for test results
    la      x1, test_A2_res
// These case test should either succeed or trap with an alignment exception if no RVC
// Test branch addr LSB is ignored at offset 1
    li      x2, 0x2222222     // branch signature
    la      x4, 1f + 1        // odd address ignored
    jalr    x0, x4, 0
    li      x2, 0x2020202     // bug - fell through
1:
    slli    x2, x2, 16        // nontrap  signature
    sw      x2, 0(x1)         // bug - trap should end up here
    addi    x1, x1, 16

// Test branch addr LSB is ignored at offset 1 after offset add
    li      x2, 0x3333333     // non trap signature
    la      x4, 1f
    jalr    x0, x4, 1         // odd address ignored
    li      x2, 0x3030303     // bug - fell through
1:
    slli    x2, x2, 16        // nontrap  signature
    sw      x2, 0(x1)         // bug - trap should end up here
    addi    x1, x1, 16

// Test branch addr LSB is ignored at offset 1 after offset add of -3
    li      x2, 0x4444444     // non trap signature
    la      x4, 1f
    jalr    x0, x4, -3        // odd address ignored, goes to slli
    li      x2, 0x4040404     // bug - fell through
    slli    x2, x2, 16        // nontrap  signature
1:
    sw      x2, 0(x1)         // bug - trap should end up here
    addi    x1, x1, 16

// Test branch addr LSB is ignored at offset 3 after offset add of -3, but will trap if no RVC
    li      x2, 0x4343434     // non trap signature
    la      x4, 1f-6
    jalr    x0, x4, 3         // odd address ignored, goes to slli
    li      x2, 0x4304034     // bug - fell through
    slli    x2, x2, 16        // nontrap  signature
1:
    sw      x2, 0(x1)         // bug -  trap should end up here
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "// Test part A2  - Complete\n");

    // ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "// Test part A3 - test JALR - causing the exception if no RVC\n");

    // Address for test results
    la      x1, test_A3_res_exc

// These case test should either succeed or trap with an alignment exception if no RVC
// Test jump addr LSB is ignored at offset 2
    li      x2, 0x5555555   // branch signature
    la      x4, 1f + 2
    jalr    x0, x4, 0
    li      x2, 0x5050505   //bug - fall thru
1:
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // non-trap signature
    .option norvc
    sw      x2, 0(x1)       // trap should end up here
    addi    x1, x1, 16
	
// test br to byte offset 3, should act like offset 2
    li      x2, 0x6666666   // trap signature
    la      x4, 1f + 3
    jalr    x0, x4, 0
    li      x2, 0x6060606   // bug - fall thru
1:
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // non-trap signature
    .option norvc
    sw      x2, 0(x1)       // trap should end up here
    addi    x1, x1, 16

// test br to byte offset 2, trap id no rvc, else succeed at +2
    li      x2, 0x7777777   // trap signature
    la      x4, 1f
    jalr    x0, x4, 2
    li      x2, x7070707    // bug- jumped to wrong HW
1:
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // non-trap signature
    .option norvc
    sw      x2, 0(x1)       // trap should end up here
    addi    x1, x1, 16

// test br to byte with offset 3, trap id no rvc, else succeed at +2
    li      x2, 0x8888888   // trap signature
    la      x4, 1f
    jalr    x0, x4, 3
    li      x2, 0x8080808    // bug- jumped to wrong HW
1:
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // non-trap signature
    .option norvc
    sw      x2, 0(x1)       // trap should end up here
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "// Test part A3  - Complete\n");

    // -------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "// Test part B1 - test BEQ\n");

    // Address for test results
    la      x1, test_B1_res_exc

    // Register initialization
    li      x5, 5
    li      x6, 6

// Test branch equal to an odd address if not equal
    li      x2, 0x9999999   // branch signature
    beq     x5, x6, 1f + 2  //  shouldn't branch or trap
    li      x2, 0x9090909   // fall thru  correct
1:	
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // bug - shouldn't have jumped non-trap signature
    .option norvc
    sw      x2, 0(x1)       // bug - trap returns here (addr of br+12)
    addi    x1, x1, 16
	
// Test branch equal to an odd address if not equal
    li      x2, 0x99009900  //branch signature
    beq     x5, x5, 1f + 2  // should branch or trap
    li      x2, 0x99900999  //bug - fall thru
1:	
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // end up here of branch correctly
    .option norvc
    sw      x2, 0(x1)       // trap returns here (addr of br+12)
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "// Test part B1  - Complete\n");

    // -------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "// Test part B2 - test BNE\n");

    // Address for test results
    la      x1, test_B2_res_exc

    // Register initialization
    li      x5, 5
    li      x6, 6

// Test branch notequal to an odd address if not equal
    li      x2, 0x5A5A5A5   // branch signature
    bne     x5, x6, 1f + 2  //  shouldn't branch or trap
    li      x2, 0xAFAFAFA   // bug - fall thru 
1:	
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // end up here if branch correctly
    .option norvc
    sw      x2, 0(x1)       // trap returns here (addr of br+12)
    addi    x1, x1, 16
	
// Test branch notequal to an odd address if  equal
    li      x2, 0xA500A500  // branch signature
    bne     x5, x5, 1f + 2  // should branch or trap
    li      x2, 0xA5A005A5  // bug - fall thru
1:	
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // bug- shouldn't jump for non-trap signature
    .option norvc
    sw      x2, 0(x1)       // bug - trap returns here (addr of br+12)
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "// Test part B2  - Complete\n");

    // ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "// Test part B3 - test BLT\n");

    // Address for test results
    la      x1, test_B3_res_exc

    // Register initialization
    li      x5, 5
    li      x6, 6

// Test branch lessthan to an odd address if greater
    li      x2, 0xBBBBBBB   // branch signature
    blt     x6, x5, 1f + 2  //  shouldn't branch or trap
    li      x2, 0xB0B0B0B   // fall thru 
1:	
    .option rvc
    c.slli  x2, 16          // bug - jumped to wrong HW
    c.slri  x2, 5           // bug - branched
    .option norvc
    sw      x2, 0(x1)       // bug - trap returns here (addr if br+12)
    addi    x1, x1, 16
	
// Test branch lessthan to an odd address if less than
    li      x2, 0xBB00BB0   //branch signature
    blt     x5, x6, 1f + 2  // should branch or trap
    li      x2, 0xBBB00BB   //bug - fall thru
1:	
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // correct branch
    .option norvc
    sw      x2, 0(x1)       // trap returns here (addr of br+12)
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "// Test part B3 - Complete\n");

    // ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "// Test part B4 - test BLTU\n");

    // Address for test results
    la      x1, test_B4_res_exc

    // Register initialization
    li      x5, 5
    li      x6, 6

// Test branch unsigned lessthan to an odd address if greater
    li      x2, 0xCCCCCCC   // branch signature
    bltu    x6, x5, 1f + 2  // shouldn't branch or trap
    li      x2, 0xC3C3C3C   // fall thru 
1:	
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // bug - end up here if branch correctly
    .option norvc
    sw      x2, 0(x1)       // bug -trap returns here (addr of br+12)
    addi    x1, x1, 16
	
// Test branch unsigned lessthan to an odd address if less than
    li      x2, 0xCC00CC0   // branch signature
    bltu    x5, x6, 1f + 2  // should branch or trap
    li      x2, 0xCCC00CC   // bug - fall thru
1:	
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // correct - jumped non-trap signature
    .option norvc
    sw      x2, 0(x1)       // trap should end up here
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "// Test part B4  - Complete\n");

    // ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "// Test part B5 - test BGE\n");

    // Address for test results
    la      x1, test_B5_res_exc

    // Register initialization
    li      x5, 5
    li      x6, 6

// Test branch gteq to an odd address if greater
    li      x2, 0xDDDDDDD   // branch signature
    bge     x6, x5, 1f + 2  // should branch or trap
    li      x2, 0xD0D0D0D   // bug -fall thru 
1:	
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // end up here if branch correctly
    .option norvc
    sw      x2, 0(x1)       // trap returns here (addr of br+12)
    addi    x1, x1, 16
	
// Test branch gteq to an odd address if less than
    li      x2, 0xDD00DD0   // branch signature
    bge     x5, x6, 1f + 2  // shouldn't branch or trap
    li      x2, 0xDDD00DD   // fall thru
1:	
    .option rvc
    c.slli  x2, 16          // bug - jumped to wrong HW
    c.slri  x2, 5           // bug - jumped non-trap signature
    .option norvc
    sw      x2, 0(x1)       // bug - trap should end up here
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "// Test part B5  - Complete\n");

    // ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "// Test part B6 - test BGEU\n");

    // Address for test results
    la      x1, test_B6_res_exc

    // Register initialization
    li      x5, 5
    li      x6, 6

// Test branch gteq to an odd address if greater
    li      x2, 0xEEEEEEE   // branch signature
    bgeu    x6, x5, 1f + 2  // should branch or trap
    li      x2, 0xE0E0E0E   // bug -fall thru 
1:	
    .option rvc
    c.slli  x2, 16          // bug- jumped to wrong HW
    c.slri  x2, 5           // end up here if branch correctly
    .option norvc
    sw      x2, 0(x1)       // trap returns here (addr of br+12)
    addi    x1, x1, 16
	
// Test branch gteq to an odd address if less than
    li      x2, 0xEE00EE0   // branch signature
    bgeu    x5, x6, 1f + 2  // shouldn't branch or trap
    li      x2, 0xEEE00EE   // fall thru
1:	
    .option rvc
    c.slli  x2, 16          // bug - jumped to wrong HW
    c.slri  x2, 5           // bug - jumped non-trap signature
    .option norvc
    sw      x2, 0(x1)       // bug - shouldn't trap
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "// Test part B6  - Complete\n");

    // ---------------------------------------------------------------------------------------------
    // restore mtvec and jump to the end
    csrw mtvec, x31    // **FIXME** touches priv resources, should be in a macro

test_end:

    RVTEST_IO_WRITE_STR(x30, "// Test End\n")

    // HALT
    RV_COMPLIANCE_HALT

    // ---------------------------------------------------------------------------------------------
    // Exception handle  **FIXME** this should be in a trap handling macro variant where MTVAL+4->EPC
    // **FIXME** this needs to be called	
_non_halt_trap_handler:

    csrr    x30, mtval
    sw      x30, 4(x1)      //  store MTVAL as a trap signature
    csrr    x30, mcause
    sw      x30, 12(x1)
    csrr    x30, mepc       //  
    sw      x30, 8(x1)      //  store old return addr as a trap signature
    andi    x30, x30, -3    //  clear 2 MSBs of bad branch address
    addi    x30, x30, 12d   //  skip to 3rd next aligned instruction - tests need to expect this
    csrw    mepc, x30       //  override trap handler return addr (can't use MTVAL because data addrs would mess it up)

    // Store MCAUSE

    // Store data from test
    // sw      x2, 8(x1)    //  do this outside handler so non-traps get stored also

    // increment data_exc address
    // addi    x1, x1, 12    //do this in each test

    // return
    mret
    RVTEST_IO_WRITE_STR(x30, "// Test part handler  - Complete\n");

    // ---------------------------------------------------------------------------------------------

RV_COMPLIANCE_CODE_END

// Input data section.
    .data
    .align 4


// Output data section.
RV_COMPLIANCE_DATA_BEGIN
    .align 4

test_A1_res_exc:
    .fill 4, 4, -1
test_A2_res:
    .fill 16, 4, -1
test_A3_res_exc:
    .fill 16, 4, -1
test_B1_res_exc:
    .fill 8, 4, -1
test_B2_res_exc:
    .fill 8, 4, -1
test_B3_res_exc:
    .fill 8, 4, -1
test_B4_res_exc:
    .fill 8, 4, -1
test_B5_res_exc:
    .fill 8, 4, -1
test_B6_res_exc:
    .fill 8, 4, -1

RV_COMPLIANCE_DATA_END
