# RISC-V Compliance Test I-MISALIGN_JMP-01
#
# Copyright (c) 2017, Codasip Ltd.
# Copyright (c) 2018, Imperas Software Ltd. Additions
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

#include "compliance_test.h"
#include "compliance_io.h"
#include "test_macros.h"

# Test Virtual Machine (TVM) used by program.
RV_COMPLIANCE_RV32M

# Test code region
RV_COMPLIANCE_CODE_BEGIN

    RVTEST_IO_INIT
    RVTEST_IO_ASSERT_GPR_EQ(x30, x0, 0x00000000)
    RVTEST_IO_WRITE_STR(x30, "# Test Begin Reserved reg x31\n")

    # Save and set trap handler address  # **FIXME** this should be in a macro
    la x1, _trap_handler
    csrrw x31, mtvec, x1

    # switch off C
    #    csrrci   x0, misa, 4 # shouldn't be touching priv resources in the test - replicate test

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "# Test part A1 - test JAL\n");

    # Address for test results
    la      x1, test_A1_res_exc

    # Test
    li      x2, 0x11111111    # trap signature
    jal     x0, 1f + 2
    li      x2, 0             
1:  c.li    x2, 1             
    c.li    x2, -1            #  correctly executed jal will end up here

    sw      x2, 0(x1)         # trap will end up here
    addi    x1, x1, 16
    # 
    #  Assert
    # 
    RVTEST_IO_CHECK()
    RVTEST_IO_WRITE_STR(x30, "# Test part A1  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "# Test part A2 - test JALR - NOT causing the exception\n");

    # Address for test results
    la      x1, test_A2_res

    # Test
    li      x2, 0x22222222    # trap signature
    la      x4, 1f + 1        # odd address ignored
    jalr    x0, x4, 0
1:
    li      x2, 2             # nontrap  signature
    sw      x2, 0(x1)         # trap should end up here
    addi    x1, x1, 16

    li      x2, 0x33333333    # non trap signature
    la      x4, 1f
    jalr    x0, x4, 1         # odd address ignored
1:
    li      x2, 3             # nontrap signature
    sw      x2, 0(x1)         # trap should end up here
    addi    x1, x1, 16

    li      x2, 0x44444444    # non trap signature
    la      x4, 1f
    jalr    x0, x4, -3        # odd address ignored, goes to li
    nop
    li      x2, 4
1:
    sw      x2, 0(x1)         #  trap should end up here
    addi    x1, x1, 16

    li      x2, 0x40404040    # non trap signature
    la      x4, 1f-6
    jalr    x0, x4, 3         # odd address ignored, goes to li
    nop
    li      x2, -4
1:
    sw      x2, 0(x1)         #  trap should end up here
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "# Test part A2  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "# Test part A3 - test JALR - causing the exception\n");

    # Address for test results
    la      x1, test_A3_res_exc

    # Test
    li      x2, 0x55555555  # trap signature
    la      x4, 1f + 2
    jalr    x0, x4, 0
    li      x2, 0
1:
    c.nop
    c.li    x2, -5          # non-trap signature
    sw      x2, 0(x1)       # trap should end up here
    addi    x1, x1, 16
	
    li      x2, 0x66666666  # trap signature
    la      x4, 1f + 3
    jalr    x0, x4, 0
    li      x2, 0
1:
    c.nop
    c.li    x2, -6          # non trap signature
    sw      x2, 0(x1)       # trap should end up here
    addi    x1, x1, 16

    # Test
    li      x2, 0x77777777  # trap signature
    la      x4, 1f
    jalr    x0, x4, 2
    li      x2, 0
1:
    c.nop
    c.li    x2, -7          # non trap signature
    sw      x2, 0(x1)       # trap should end up here
    addi    x1, x1, 16

    li      x2, 0x88888888  # trap signature
    la      x4, 1f
    jalr    x0, x4, 3
    li      x2, 0
1:
    c.nop
    c.li    x2, -7          # non trap signature
    sw      x2, 0(x1)       # trap should end up here
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "# Test part A3  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "# Test part B1 - test BEQ\n");

    # Address for test results
    la      x1, test_B1_res_exc

    # Register initialization
    li      x5, 5
    li      x6, 6

    # Test
    li      x2, 0x99999999    # trap signature
    beq     x5, x6, 1f + 2    # shouldn't branch or trap
1:
    nop
    li      x2, -9            # non trap signature
    sw      x2, 0(x1)         # trap should end up here
    addi    x1, x1, 16

    li      x2, 0x90909090    # trap signature
    beq     x5, x5, 1f + 2    # should branch, maybe traps
    li      x2, 0
1:
    c.nop
    c.li    x2, 9             # non trap signature
    sw      x2, 0(x1)         # trap should end up here
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "# Test part B1  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "# Test part B2 - test BNE\n");

    # Address for test results
    la      x1, test_B2_res_exc

    # Register initialization
    li      x5, 5
    li      x6, 6

    # Test
    li      x2, 0xAAAAAAAA      #  trap signature
    bne     x5, x5, 1f + 2      # shouldn't branch or trap
1:
    nop
    li      x2, -0xA            # non-trap signature
    sw      x2, 0(x1)           # trap should end up here
    addi    x1, x1, 16
	
    li      x2, 0xA0A0A0A0     # trap signature
    bne     x5, x6, 1f + 2
    li      x2, 0
1:
    c.nop
    c.li    x2, 0xA             # non trap signature
    sw      x2, 0(x1)         # trap should end up here
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "# Test part B2  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "# Test part B3 - test BLT\n");

    # Address for test results
    la      x1, test_B3_res_exc

    # Register initialization
    li      x5, 5
    li      x6, 6

    # Test
    li      x2, 0xBBBBBBBB
    blt     x6, x5, 1f + 2
1:
    nop
    li      x2, -0xB            # non-trap signature
    sw      x2, 0(x1)           # trap should end up here
    addi    x1, x1, 16

    li      x2, 0xB0B0B0B0     # trap signature
    blt     x5, x6, 1f + 2
    li      x2, 0
1:
    c.nop
    c.li    x2, 0xB           # non trap signature
    sw      x2, 0(x1)         # trap should end up here
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "# Test part B3 - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "# Test part B4 - test BLTU\n");

    # Address for test results
    la      x1, test_B4_res_exc

    # Register initialization
    li      x5, 5
    li      x6, 6

    # Test
    li      x2, 0xCCCCCCCC
    bltu    x6, x5, 1f + 2
1:
    nop
    li      x2, -0xC            # non-trap signature
    sw      x2, 0(x1)           # trap should end up here
    addi    x1, x1, 16

    li      x2, 0xC0C0C0C0     # trap signature
    bltu    x5, x6, 1f + 2
    li      x2, 0
1:
    c.nop
    c.li    x2, 0xC           # non trap signature
    sw      x2, 0(x1)         # trap should end up here
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "# Test part B4  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "# Test part B5 - test BGE\n");

    # Address for test results
    la      x1, test_B5_res_exc

    # Register initialization
    li      x5, 5
    li      x6, 6

    # Test
    li      x2, 0xDDDDDDDD
    bge     x5, x6, 1f + 2
1:
    nop
    li      x2, -0xC            # non-trap signature
    sw      x2, 0(x1)           # trap should end up here
    addi    x1, x1, 16

    li      x2, 0xD0D0D0D0     # trap signature
    bge     x6, x5, 1f + 2
    li      x2, 0
1:
    c.nop
    c.li    x2, 0xD           # non trap signature
    sw      x2, 0(x1)         # trap should end up here
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "# Test part B5  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    RVTEST_IO_WRITE_STR(x30, "# Test part B6 - test BGEU\n");

    # Address for test results
    la      x1, test_B6_res_exc

    # Register initialization
    li      x5, 5
    li      x6, 6

    # Test
    li      x2, 0xEEEEEEEE
    bgeu    x5, x6, 1f + 2
1:
    nop
    li      x2, -0xE            # non-trap signature
    sw      x2, 0(x1)           # trap should end up here
    addi    x1, x1, 16

    li      x2, 0xE0E0E0E0     # trap signature
    bgeu    x6, x5, 1f + 2
    li      x2, 0
1:
    c.nop
    c.li    x2, 0xE           # non trap signature
    sw      x2, 0(x1)         # trap should end up here
    addi    x1, x1, 16

    RVTEST_IO_WRITE_STR(x30, "# Test part B6  - Complete\n");

    # ---------------------------------------------------------------------------------------------
    # restore mtvec and jump to the end
    csrw mtvec, x31    # **FIXME** touches priv resources, should be in a macro

test_end:

    RVTEST_IO_WRITE_STR(x30, "# Test End\n")

    # HALT
    RV_COMPLIANCE_HALT

    # ---------------------------------------------------------------------------------------------
    # Exception handle  **FIXME** this should be in a trap handling macro variant where MTVAL+4->EPC
	
_trap_handler:

    csrr    x30, mtval
    sw      x30, 4(x1)      #  store MTVAL as a trap signature
    andi    x30, x30, -3    #  clear 2 MSBs of bad branch address
    addi    x30, x30, 4     #  skip to next aligned instruction
    csrrw   mepc, x30       #  override trap handler return addr
    sw      x30, 8(x1)      #  store old return addr as a trap signature

    # Store MCAUSE
    csrr    x30, mcause
    sw      x30, 12(x1)

    # Store data from test
    # sw      x2, 8(x1)    #  do this outside handler so non-traps get stored also

    # increment data_exc address
    # addi    x1, x1, 12    #do this in each test

    # return
    mret
    RVTEST_IO_WRITE_STR(x30, "# Test part handler  - Complete\n");

    # ---------------------------------------------------------------------------------------------

RV_COMPLIANCE_CODE_END

# Input data section.
    .data
    .align 4


# Output data section.
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
