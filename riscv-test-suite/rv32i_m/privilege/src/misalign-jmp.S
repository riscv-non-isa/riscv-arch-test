#define rvtest_mtrap_routine
#define TEST_CASE_3
# RISC-V Compliance Test I-MISALIGN_JMP-01
#
# Copyright (c) 2017, Codasip Ltd.
# Copyright (c) 2018, Imperas Software Ltd. Additions
# Copyright (c) 2020, InCore Semiconductors Pvt. Ltd. Additions, Bug Fixes
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#      * Redistributions of source code must retain the above copyright
#        notice, this list of conditions and the following disclaimer.
#      * Redistributions in binary form must reproduce the above copyright
#        notice, this list of conditions and the following disclaimer in the
#        documentation and/or other materials provided with the distribution.
#      * Neither the name of the Codasip Ltd., Imperas Software Ltd. nor the
#        names of its contributors may be used to endorse or promote products
#        derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
# IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Codasip Ltd., Imperas Software Ltd.
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
# THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# Specification: RV32I Base Integer Instruction Set, Version 2.0
# Description: Testing MISALIGNED JUMP exception.

#include "compliance_model.h"
#include "compliance_test.h"

# Test Virtual Machine (TVM) used by program.
# The entire test is compiled without the compressed extension to the compiler.
RVTEST_ISA("RV32I")

# Test code region
RVMODEL_BOOT
RVTEST_CODE_BEGIN

    RVMODEL_IO_INIT
    RVMODEL_IO_ASSERT_GPR_EQ(x30, x0, 0x00000000)
    RVMODEL_IO_WRITE_STR(x30, "# Test Begin Reserved reg x31\n")

## RISCOF Objective
# Here we show how RISCOF is able to enable the same test-part using 2 different mutually exclusive
# isa configurations from the YAML. It is also able to enable the trap routines only when required
# and not always. The condition generates a separate signature.
#
# The same is completely skipped is both Compressed and Zicsr extensions are not
# available. 
#
# The test also includes another part which is enabled by default for all implementations


## Test Objective
# This particular test case tests for misaligned jumps to a 2 byte boundary. It is 
# also equivalent to testing jalr for jumps to a 3 byte boundary.
# Apart from the ISA having I extesnsion and XLEN=32, this part is enabled only if 
# one of the two conditions are satisfied -
#     1. C extension is present
#        Reason - When C extension is present and activated, the IALIGN is 16, 
#                 which enables us to perform jumps to 2 byte aligned addresses.
#     2. C extension is not present and Zicsr extension is present.
#        Reason - When C extension is not present, IALIGN is 32, which means any 
#                 jump to a non 4 byte aligned address traps. The standard trap 
#                 handler is included in this case, which enables the test to 
#                 check the correct behaviour. The Zicsr extension is necessary 
#                 for the trap handler to function because it contains csrr and 
#                 csrw operations. In the absence of a Zicsr extension, it is 
#                 difficult for the golden model to replicate the behaviour of DUT.

#ifdef TEST_CASE_1
    RVTEST_CASE(1,"// check ISA:=regex(.*32.*); check ISA:=regex(.*I.*C.*); def TEST_CASE_1=True;", misalign-jal, misalign-beq, misalign-bge, misalign-bgeu, misalign-blt, misalign-bltu, misalign-bne, misalign2-jalr)
    RVTEST_CASE(2,"// check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); check ISA:=regex(^[^C]+$); def TEST_CASE_1=True;def rvtest_mtrap_routine=True;", misalign-jal, misalign-beq, misalign-bge, misalign-bgeu, misalign-blt, misalign-bltu, misalign-bne, misalign2-jalr)
    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part A1 - test JALR\n");

    # Address for test results
    RVTEST_SIGBASE(x1, test_A1_res)

    # each sub-part tests if the jalr to a 2 byte boundary traps or passes through. When the jalr
    # traps the signature is updated by the trap handler the RVTEST_SIGUPD is skipped. However, if
    # compressed is enabled by the design then JALR falls through to the RVTEST_SIGUPD which updates
    # the signature with a unique value stored in x2.
        li      x2, 0x22222222
        la      x4, 1f
        jalr    x0, x4, 2
        li      x2, 0x2 // this should never get executed since the return from trap is PC+8
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0x22222222) // for either case the value to be checked is 0x22222222

    # each of the following part is similar to the above one but with different manipulations of the base
    # and offset to reach a 2 byte aligned boundary

        li      x2, 0x33333333
        la      x4, 1f+1
        jalr    x0, x4, 1
        li      x2, 0x3
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0x33333333)

        li      x2, 0x44444444
        la      x4, 1f+2
        jalr    x0, x4, 0
        li      x2, 0x4
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0x44444444)

        li      x2, 0x55555555
        la      x4, 1f+3
        jalr    x0, x4, -1
        li      x2, 0x5
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0x55555555)

        li      x2, 0x66666666
        la      x4, 1f+4
        jalr    x0, x4, -2
        li      x2, 0x6
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0x66666666)

    # the following subparts will work similar to the above ones, with the difference of setting the
    # LSB bit to 1, i.e. attempting a jump to a 3-byte aligned address. The effect should be the
    # same as 2-byte aligned addresses since LSB of the effective address should be made zero by the DUT.
        li      x2, 0x22222222
        la      x4, 1f
        jalr    x0, x4, 3
        li      x2, 0xb
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        RVTEST_SIGUPD(x1,x2,0x22222222)
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:
        li      x2, 0x33333333
        la      x4, 1f+1
        jalr    x0, x4, 2
        li      x2, 0xb
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        RVTEST_SIGUPD(x1,x2,0x33333333)
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:
        li      x2, 0x44444444
        la      x4, 1f+2
        jalr    x0, x4, 1
        li      x2, 0xb
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        RVTEST_SIGUPD(x1,x2,0x44444444)
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:
        li      x2, 0x55555555
        la      x4, 1f+3
        jalr    x0, x4, 0
        li      x2, 0xb
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        RVTEST_SIGUPD(x1,x2,0x55555555)
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:
        li      x2, 0x66666666
        la      x4, 1f+4
        jalr    x0, x4, -1
        li      x2, 0xb
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0x66666666)

    RVMODEL_IO_CHECK()
    RVMODEL_IO_WRITE_STR(x30, "# Test part A1  - Complete\n");
    RVMODEL_IO_WRITE_STR(x30, "# Test part A2 - test JAL\n");

    # The following subparts are structured similar to the above cases, but test JAL instruction.
    # Address for test results
    RVTEST_SIGBASE(x1, test_A2_res)

        li      x2, 0x77777777
        jal    x0, 1f+2 
        li      x2, 0xb
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0x77777777)

    RVMODEL_IO_WRITE_STR(x30, "# Test part A2  - Complete\n");

    RVMODEL_IO_WRITE_STR(x30, "# Test part B1 - test BEQ\n");

    RVTEST_SIGBASE(x1, test_B1_res)

        # Register initialization
        li      x5, 5
        li      x6, 5

        # Test
        li      x2, 0x99999999
        beq     x5, x6, 1f + 2
        li      x2, 0xb
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0x99999999)

    RVMODEL_IO_WRITE_STR(x30, "# Test part B1  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part B2 - test BNE\n");

    # The following sub-parts is for forward branch instructions being misaligned.
    # Address for test results
    RVTEST_SIGBASE(x1, test_B2_res)

    # Register initialization
    li      x5, 5
    li      x6, 6

    # Test
    li      x2, 0x88888888
        bne     x5, x6, 1f + 2
        li      x2, 0xb
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0x88888888)

    RVMODEL_IO_WRITE_STR(x30, "# Test part B2  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part B3 - test BLT\n");

    # Address for test results
    RVTEST_SIGBASE(x1, test_B3_res)
    
    
    # Register initialization
    li      x5, 5
    li      x6, 6

    # Test
    li      x2, 0xAAAAAAAA
        blt     x5, x6, 1f + 2
        li      x2, 0xb
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0xAAAAAAAA)

    RVMODEL_IO_WRITE_STR(x30, "# Test part B3 - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part B4 - test BLTU\n");

    # Address for test results
    RVTEST_SIGBASE(x1, test_B4_res)

    # Register initialization
    li      x5, 5
    li      x6, 6

    # Test
    li      x2, 0xBBBBBBBB
        bltu     x5, x6, 1f + 2
        li      x2, 0xb
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0xBBBBBBBB)
    RVMODEL_IO_WRITE_STR(x30, "# Test part B4  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part B5 - test BGE\n");

    # Address for test results
    RVTEST_SIGBASE(x1, test_B5_res)

    # Register initialization
    li      x5, 5
    li      x6, 6

    # Test
    li      x2, 0xCCCCCCCC
        bge     x6, x5, 1f + 2
        li      x2, 0xb
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0xCCCCCCCC)
    RVMODEL_IO_WRITE_STR(x30, "# Test part B5  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part B6 - test BGEU\n");

    # Address for test results
    RVTEST_SIGBASE(x1, test_B6_res)

    # Register initialization
    li      x5, 5
    li      x6, 6

    # Test
    li      x2, 0xDDDDDDDD
        bgeu     x6, x5, 1f + 2
        li      x2, 0xb
        jal     x0, 2f 
    1:
        .fill 1,2 ,0x00
        
        jal     x0, 2f 
        .fill 1,2 ,0x00
    2:  RVTEST_SIGUPD(x1,x2,0xDDDDDDDD)
    RVMODEL_IO_WRITE_STR(x30, "# Test part B6  - Complete\n");


#endif

## Test Objective
# This particular test case tests for misaligned jumps to a 1 byte boundary. 
# This part is enabled when I extesnsion is present and XLEN=32
#   Reason - The target address is obtained by adding the sign-extended 12-bit 
#            I-immediate to the register rs1, then setting the least-significant 
#            bit of the result to zero.  
 
#ifdef TEST_CASE_3
    RVTEST_CASE(3,"// check ISA:=regex(.*32.*); check ISA:=regex(.*I.*); def TEST_CASE_3=True;", misalign2-jalr)
    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part A1 - test JALR without exception\n");

    # Address for test results
    RVTEST_SIGBASE(x1, test_3_A1_res)

        li      x2, 0x22222222
        la      x4, 1f
        jalr    x0, x4, 1
        li      x2, 0xb
        jal     x0, 2f 
    1:
        jal     x0, 2f 
    2:  RVTEST_SIGUPD(x1,x2,0x22222222)

        li      x2, 0x33333333
        la      x4, 1f
        jalr    x0, x4, 1
        li      x2, 0xb
        jal     x0, 2f 
    1:
        jal     x0, 2f 
    2:  RVTEST_SIGUPD(x1,x2,0x33333333)

        li      x2, 0x44444444
        la      x4, 1f+1
        jalr    x0, x4, 0
        li      x2, 0xb
        jal     x0, 2f 
    1:
        jal     x0, 2f 
    2:  RVTEST_SIGUPD(x1,x2,0x44444444)


        li      x2, 0x55555555
        la      x4, 1f+2
        jalr    x0, x4, -1
        li      x2, 0xb
        jal     x0, 2f 
    1:
        jal     x0, 2f 
    2:  RVTEST_SIGUPD(x1,x2,0x55555555)

        li      x2, 0x66666666
        la      x4, 1f+4
        jalr    x0, x4, -3
        li      x2, 0xb
        jal     x0, 2f 
    1:
        jal     x0, 2f 
    2:  RVTEST_SIGUPD(x1,x2,0x66666666)
    RVMODEL_IO_CHECK()
    RVMODEL_IO_WRITE_STR(x30, "# Test part A1  - Complete\n");
#endif
 
    RVMODEL_IO_WRITE_STR(x31, "# Test End\n")
    # HALT

RVTEST_CODE_END

RVMODEL_HALT
RVTEST_DATA_BEGIN
# Input data section.
    .data
    .align 4
RVTEST_DATA_END


# Output data section.
RVMODEL_DATA_BEGIN
    .align 4

test_A1_res:
    .fill 10, 4, 0xdeaddead
test_A2_res:
    .fill 1, 4, 0xdeaddead
test_B1_res:
    .fill 1, 4, 0xdeaddead
test_B2_res:
    .fill 1, 4, 0xdeaddead
test_B3_res:
    .fill 1, 4, 0xdeaddead
test_B4_res:
    .fill 1, 4, 0xdeaddead
test_B5_res:
    .fill 1, 4, 0xdeaddead
test_B6_res:
    .fill 1, 4, 0xdeaddead 
test_3_A1_res:
    .fill 5, 4, 0xdeaddead
mtrap_sigptr:
  .fill 128, 4, 0xdeaddead

RVMODEL_DATA_END

