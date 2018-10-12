# RISC-V Compliance Test RV32IMC-C.LWSP-01
#
# Copyright (c) 2018, Imperas Software Ltd.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#      * Redistributions of source code must retain the above copyright
#        notice, this list of conditions and the following disclaimer.
#      * Redistributions in binary form must reproduce the above copyright
#        notice, this list of conditions and the following disclaimer in the
#        documentation and/or other materials provided with the distribution.
#      * Neither the name of the Imperas Software Ltd. nor the
#        names of its contributors may be used to endorse or promote products
#        derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
# IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Imperas Software Ltd. BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
# THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# Specification: RV32IMC Base Integer Instruction Set, Version 2.0
# Description: Testing instruction C.LWSP.

#include "test_macros.h"
#include "compliance_test.h"
#include "compliance_io.h"

RV_COMPLIANCE_RV32M

RV_COMPLIANCE_CODE_BEGIN

	RVTEST_IO_INIT
	RVTEST_IO_ASSERT_GPR_EQ(x0, 0x00000000)
	RVTEST_IO_WRITE_STR("Test Begin Reserved regs ra(x1) a0(x10) t0(x5)\n")

	# ---------------------------------------------------------------------------------------------

	RVTEST_IO_WRITE_STR("# Test number 1 - corner cases\n")

	# address for test results
	la	x1, test_1_res

	TEST_CLWSP(x4, 0, x1, 0)

	# ---------------------------------------------------------------------------------------------

	RVTEST_IO_WRITE_STR("# Test number 2 - corner cases\n")

	# address for test results
	la	x1, test_2_res

	TEST_CLWSP(x8, 4, x1, 0)

	# ---------------------------------------------------------------------------------------------

	RVTEST_IO_WRITE_STR("# Test number 3 - corner cases\n")

	# address for test results
	la	x1, test_3_res

	TEST_CLWSP(x16, 8, x1, 0)

	# ---------------------------------------------------------------------------------------------

	RVTEST_IO_WRITE_STR("# Test number 4 - corner cases\n")

	# address for test results
	la	x1, test_4_res

	TEST_CLWSP(x31, 124, x1, 0)

	# ---------------------------------------------------------------------------------------------

	RVTEST_IO_WRITE_STR("# Test number 5 - corner cases\n")

	# address for test results
	la	x1, test_5_res

	TEST_CLWSP(x21, 252, x1, 0)

	RVTEST_IO_WRITE_STR("Test End\n")

	# ---------------------------------------------------------------------------------------------

	RV_COMPLIANCE_HALT

RV_COMPLIANCE_CODE_END

# Input data section.
	.data

# Output data section.
RV_COMPLIANCE_DATA_BEGIN
test_1_res:
	.fill 1, 4, -1
test_2_res:
	.fill 1, 4, -1
test_3_res:
	.fill 1, 4, -1
test_4_res:
	.fill 1, 4, -1
test_5_res:
	.fill 1, 4, -1
test_data:
	.word 0
	.word 1
	.word 2
	.word 3
	.word 4
	.word 5
	.word 6
	.word 7
	.word 8
	.word 9
	.word 10
	.word 11
	.word 12
	.word 13
	.word 14
	.word 15
	.word 16
	.word 17
	.word 18
	.word 19
	.word 20
	.word 21
	.word 22
	.word 23
	.word 24
	.word 25
	.word 26
	.word 27
	.word 28
	.word 29
	.word 30
	.word 31

RV_COMPLIANCE_DATA_END