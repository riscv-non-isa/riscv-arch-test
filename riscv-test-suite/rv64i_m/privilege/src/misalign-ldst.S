#define rvtest_mtrap_routine
# RISC-V Compliance Test I-MISALIGN_LDST-01
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
# Specification: RV64I Base Integer Instruction Set, Version 2.0
# Description: Testing MISALIGNED LOAD/STORE exception.

#include "compliance_model.h"
#include "compliance_test.h"

# Test Virtual Machine (TVM) used by program.
RVTEST_ISA("RV64I")

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

## Test Objective
# This particular test case tests for misaligned ld/st.
# Apart from the ISA having I extesnsion and XLEN=32, this part is enabled only if 
# one of the two conditions are satisfied -
#     1. Hardware support for misaligned data is present
#        Reason - When Hardware support for misaligned data is present, which enables 
#                 us to load from and store to misaligned addresses.
#     2. Hardware support for misaligned data is not present and Zicsr extension is present.
#        Reason - When hardware support for misaligned data is absent, a illegal load/store
#                 results in a fault. The standard trap handler is included in this case, 
#                 which enables the test to check the correct behaviour. The Zicsr extension 
#                 is necessary for the trap handler to function because it contains csrr and 
#                 csrw operations. In the absence of a Zicsr extension, it is 
#                 difficult for the golden model to replicate the behaviour of DUT.
#ifdef TEST_CASE_1
    RVTEST_CASE(1,"// check ISA:=regex(.*64.*); check ISA:=regex(.*I.*); check hw_data_misaligned_support:=True; def TEST_CASE_1=True", misalign-sw, misalign-sh, misalign-lw, misalign-lhu, misalign-lh,misalign-lwu, misalign-ld, misalign-sd)
    RVTEST_CASE(2,"// check ISA:=regex(.*64.*); check ISA:=regex(.*I.*Zicsr.*); check hw_data_misaligned_support:=False; def rvtest_mtrap_routine=True; def TEST_CASE_1=True",misalign-sw, misalign-sh, misalign-lw, misalign-lhu, misalign-lh, misalign-lwu,misalign-ld, misalign-sd)

    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part A0 - test LWU\n");

    # Addresses for test data and results
    la      x3, test_A1_data
    la      x2, test_A0_res
    
    # Test
    li      x4, 0x11111111
    lwu     x4, 0(x3)
    sd      x4, 0(x2)

    li      x4, 0x22222222
    lwu     x4, 1(x3)
    li      x2, 0xb
    sd      x4, 8(x2)

    li      x4, 0x33333333
    lwu     x4, 2(x3)
    li      x2, 0xb
    sd      x4, 16(x2)

    li      x4, 0x44444444
    lwu     x4, 3(x3)
    li      x2, 0xb
    sd      x4, 24(x2)

    //
    // Assert
    //
    RVMODEL_IO_CHECK()
    RVMODEL_IO_WRITE_STR(x30, "# Test part A1  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part A1 - test LD\n");

    # Addresses for test data and results
    la      x3, test_LD_data
    la      x2, test_LD_res
    
    # Test
    li      x4, 0x1111111111111111
    ld      x4, 0(x3)
    sd      x4, 0(x2)

    li      x4, 0x2222222222222222
    ld      x4, 1(x3)
    li      x2, 0xb
    sd      x4, 8(x2)

    li      x4, 0x3333333333333333
    ld      x4, 2(x3)
    li      x2, 0xb
    sd      x4, 16(x2)

    li      x4, 0x4444444444444444
    ld      x4, 3(x3)
    li      x2, 0xb
    sd      x4, 24(x2)
    
    li      x4, 0x1111111111111111
    ld      x4, 4(x3)
    li      x2, 0xb
    sd      x4, 32(x2)

    li      x4, 0x2222222222222222
    ld      x4, 5(x3)
    li      x2, 0xb
    sd      x4, 40(x2)

    li      x4, 0x3333333333333333
    ld      x4, 6(x3)
    li      x2, 0xb
    sd      x4, 48(x2)

    li      x4, 0x4444444444444444
    ld      x4, 7(x3)
    li      x2, 0xb
    sd      x4, 54(x2)
    //
    // Assert
    //
    RVMODEL_IO_CHECK()
    RVMODEL_IO_WRITE_STR(x30, "# Test part A1  - Complete\n");

    
    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part A1 - test ld\n");

    # Addresses for test data and results
    la      x3, test_A1_data
    la      x2, test_A1_res
    
    # Test
    li      x4, 0x11111111
    lw      x4, 0(x3)
    sd      x4, 0(x2)

    li      x4, 0x22222222
    lw      x4, 1(x3)
    li      x2, 0xb
    sd      x4, 8(x2)

    li      x4, 0x33333333
    lw      x4, 2(x3)
    li      x2, 0xb
    sd      x4, 16(x2)

    li      x4, 0x44444444
    lw      x4, 3(x3)
    li      x2, 0xb
    sd      x4, 24(x2)

    //
    // Assert
    //
    RVMODEL_IO_CHECK()
    RVMODEL_IO_WRITE_STR(x30, "# Test part A1  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part A2 - test LH and LHU\n");

    # Addresses for test data and results
    la      x3, test_A2_data
    la      x2, test_A2_res

    # Test
    li      x4, 0x55555555
    lh      x4, 0(x3)
    li      x2, 0xb
    sw      x4, 0(x2)

    li      x4, 0x66666666
    lh      x4, 1(x3)
    li      x2, 0xb
    sw      x4, 4(x2)

    li      x4, 0x77777777
    lh      x4, 2(x3)
    li      x2, 0xb
    sw      x4, 8(x2)

    li      x4, 0x88888888
    lh      x4, 3(x3)
    li      x2, 0xb
    sw      x4, 12(x2)

    li      x4, 0x99999999
    lhu     x4, 0(x3)
    li      x2, 0xb
    sw      x4, 16(x2)

    li      x4, 0xAAAAAAAA
    lhu     x4, 1(x3)
    li      x2, 0xb
    sw      x4, 20(x2)

    li      x4, 0xBBBBBBBB
    lhu     x4, 2(x3)
    li      x2, 0xb
    sw      x4, 24(x2)

    li      x4, 0xCCCCCCCC
    lhu     x4, 3(x3)
    li      x2, 0xb
    sw      x4, 28(x2)

    RVMODEL_IO_WRITE_STR(x30, "# Test part A2  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part B1 - test SW\n");

    # Addresses for test data and results
    la      x2, test_B1_res

    # Register initialization
    li      x6, 0x0
    li      x5, 0x99999999

    # Init memory
    sw      x5, 0(x2)
    sw      x5, 4(x2)
    sw      x5, 8(x2)
    sw      x5, 12(x2)

    # Test
    sw      x6, 0(x2)
    li      x2, 0xb
    addi    x2, x2, 4

    sw      x6, 1(x2)
    li      x2, 0xb
    addi    x2, x2, 4

    sw      x6, 2(x2)
    li      x2, 0xb
    addi    x2, x2, 4

    sw      x6, 3(x2)
    li      x2, 0xb

    RVMODEL_IO_WRITE_STR(x30, "# Test part A3  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part B2 - test SH\n");

    # Addresses for test data and results
    la      x2, test_B2_res

    # Register initialization
    li      x6, 0x0
    li      x5, 0x99999999

    # Init memory
    sw      x5, 0(x2)
    sw      x5, 4(x2)
    sw      x5, 8(x2)
    sw      x5, 12(x2)

    # Test
    sh      x6, 0(x2)
    nop
    addi    x2, x2, 4

    sh      x6, 1(x2)
    nop
    addi    x2, x2, 4

    sh      x6, 2(x2)
    nop
    addi    x2, x2, 4

    sh      x6, 3(x2)
    nop

    RVMODEL_IO_WRITE_STR(x30, "# Test part A4  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part B1 - test SD\n");

    # Addresses for test data and results
    la      x2, test_B3_res

    # Register initialization
    li      x6, 0x0
    li      x5, 0x9999999999999999

    # Init memory
    sd      x5, 0(x2)
    sd      x5, 8(x2)
    sd      x5, 16(x2)
    sd      x5, 24(x2)
    sd      x5, 32(x2)
    sd      x5, 40(x2)
    sd      x5, 48(x2)
    sd      x5, 54(x2)

    # Test
    sd      x6, 0(x2)
    li      x2, 0xb
    addi    x2, x2, 8

    sd      x6, 1(x2)
    li      x2, 0xb
    addi    x2, x2, 8

    sd      x6, 2(x2)
    li      x2, 0xb
    addi    x2, x2, 8

    sd      x6, 3(x2)
    li      x2, 0xb
    addi    x2, x2, 8
 
    sd      x6, 4(x2)
    li      x2, 0xb
    addi    x2, x2, 8

    sd      x6, 5(x2)
    li      x2, 0xb
    addi    x2, x2, 8

    sd      x6, 6(x2)
    li      x2, 0xb
    addi    x2, x2, 8

    sd      x6, 7(x2)
    li      x2, 0xb
   
    RVMODEL_IO_WRITE_STR(x30, "# Test part A3  - Complete\n");

#endif

 # ---------------------------------------------------------------------------------------------
    # HALT

RVTEST_CODE_END

RVMODEL_HALT

RVTEST_DATA_BEGIN
# Input data section.
    .data
    .align 4
test_A1_data:
    .word 0x91A1B1C1
    .word 0xF1E1D251
test_A2_data:
    .word 0xD2E2F202
    .word 0xF1E1D251
test_LD_data:
    .word 0x92A2B2C2D2E2F202
    .word 0xA1B1C1D1F1E1D251
RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN
    .align 4

test_A0_res:
    .fill 8, 4, 0xdeaddead
test_A1_res:
    .fill 8, 4, 0xdeaddead
test_A2_res:
    .fill 8, 4, 0xdeaddead
test_LD_res:
    .fill 16,4, 0xdeaddead
test_B1_res:
    .fill 4, 4, 0xdeaddead
test_B2_res:
    .fill 4, 4, 0xdeaddead
test_B3_res:
    .fill 16, 4, 0xdeaddead
mtrap_sigptr:
  .fill 128, 4, 0xdeaddead


RVMODEL_DATA_END

