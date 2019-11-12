# RISC-V Compliance Test AUIPC-01
#
#
# Copyright (c) 2019 Imperas Software Ltd., www.imperas.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
# either express or implied.
#
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
#
# Specification: RV32I Base Integer Instruction Set, Version 2.1
# Description: Testing instruction 'AUIPC'.

#include "riscv_test_macros.h"
#include "compliance_test.h"
#include "compliance_io.h"

RV_COMPLIANCE_RV32M

RV_COMPLIANCE_CODE_BEGIN


	RVTEST_IO_INIT
	RVTEST_IO_ASSERT_GPR_EQ(x31, x0, 0x00000000)
	RVTEST_IO_WRITE_STR(x31, "Test Begin\n")

	# ---------------------------------------------------------------------------------------------

	RVTEST_IO_WRITE_STR(x31, "# Test number 1\n")


    # address for test results
	la	x5, test_1_res

	TEST_AUIPC(auipc, x0, 0x0, 0x0, x5, 0,x6)   # Testcase 0
	TEST_AUIPC(auipc, x1, 0x0, 0x0, x5, 4,x6)   # Testcase 1
	TEST_AUIPC(auipc, x2, 0x7ff000, 0x7ff, x5, 8,x6)   # Testcase 2
	TEST_AUIPC(auipc, x3, 0x1000, 0x1, x5, 12,x6)   # Testcase 3
	TEST_AUIPC(auipc, x4, 0x1234000, 0x1234, x5, 16,x6)   # Testcase 4


	# ---------------------------------------------------------------------------------------------
	RVTEST_IO_WRITE_STR(x31, "# Test number 2\n")


    # address for test results
	la	x1, test_2_res

	TEST_AUIPC(auipc, x5, 0x80000000, 0x80000, x1, 0,x2)   # Testcase 5
	TEST_AUIPC(auipc, x6, 0x1234000, 0x1234, x1, 4,x2)   # Testcase 6
	TEST_AUIPC(auipc, x7, 0xfffff000, 0xfffff, x1, 8,x2)   # Testcase 7
	TEST_AUIPC(auipc, x8, 0x1000, 0x1, x1, 12,x2)   # Testcase 8
	TEST_AUIPC(auipc, x9, 0x7ffff000, 0x7ffff, x1, 16,x2)   # Testcase 9


	# ---------------------------------------------------------------------------------------------
	RVTEST_IO_WRITE_STR(x31, "# Test number 3\n")


    # address for test results
	la	x1, test_3_res

	TEST_AUIPC(auipc, x10, 0x54321000, 0x54321, x1, 0,x7)   # Testcase 10
	TEST_AUIPC(auipc, x11, 0x800000, 0x800, x1, 4,x7)   # Testcase 11
	TEST_AUIPC(auipc, x12, 0x0, 0x0, x1, 8,x7)   # Testcase 12
	TEST_AUIPC(auipc, x13, 0x7ff000, 0x7ff, x1, 12,x7)   # Testcase 13
	TEST_AUIPC(auipc, x14, 0x0, 0x0, x1, 16,x7)   # Testcase 14


	# ---------------------------------------------------------------------------------------------
	RVTEST_IO_WRITE_STR(x31, "# Test number 4\n")


    # address for test results
	la	x2, test_4_res

	TEST_AUIPC(auipc, x15, 0x1000, 0x1, x2, 0,x3)   # Testcase 15
	TEST_AUIPC(auipc, x16, 0x0, 0x0, x2, 4,x3)   # Testcase 16
	TEST_AUIPC(auipc, x17, 0x0, 0x0, x2, 8,x3)   # Testcase 17
	TEST_AUIPC(auipc, x18, 0x7ff000, 0x7ff, x2, 12,x3)   # Testcase 18
	TEST_AUIPC(auipc, x19, 0x1000, 0x1, x2, 16,x3)   # Testcase 19


	# ---------------------------------------------------------------------------------------------
	RVTEST_IO_WRITE_STR(x31, "# Test number 5\n")


    # address for test results
	la	x1, test_5_res

	TEST_AUIPC(auipc, x20, 0x1234000, 0x1234, x1, 0,x2)   # Testcase 20
	TEST_AUIPC(auipc, x21, 0x80000000, 0x80000, x1, 4,x2)   # Testcase 21
	TEST_AUIPC(auipc, x22, 0x1234000, 0x1234, x1, 8,x2)   # Testcase 22
	TEST_AUIPC(auipc, x23, 0xfffff000, 0xfffff, x1, 12,x2)   # Testcase 23
	TEST_AUIPC(auipc, x24, 0x1000, 0x1, x1, 16,x2)   # Testcase 24


	# ---------------------------------------------------------------------------------------------
	RVTEST_IO_WRITE_STR(x31, "# Test number 6\n")


    # address for test results
	la	x1, test_6_res

	TEST_AUIPC(auipc, x25, 0x7ffff000, 0x7ffff, x1, 0,x7)   # Testcase 25
	TEST_AUIPC(auipc, x26, 0x54321000, 0x54321, x1, 4,x7)   # Testcase 26
	TEST_AUIPC(auipc, x27, 0x800000, 0x800, x1, 8,x7)   # Testcase 27
	TEST_AUIPC(auipc, x28, 0x0, 0x0, x1, 12,x7)   # Testcase 28
	TEST_AUIPC(auipc, x29, 0x7ff000, 0x7ff, x1, 16,x7)   # Testcase 29


	# ---------------------------------------------------------------------------------------------
	RVTEST_IO_WRITE_STR(x31, "# Test number 7\n")


    # address for test results
	la	x2, test_7_res

	TEST_AUIPC(auipc, x30, 0x0, 0x0, x2, 0,x3)   # Testcase 30
	TEST_AUIPC(auipc, x31, 0x1000, 0x1, x2, 4,x3)   # Testcase 31


	# ---------------------------------------------------------------------------------------------
	
	RVTEST_IO_WRITE_STR(x31, "Test End\n")

	# ---------------------------------------------------------------------------------------------

	RV_COMPLIANCE_HALT

RV_COMPLIANCE_CODE_END

# Input data section.
	.data

# Output data section.
RV_COMPLIANCE_DATA_BEGIN

test_1_res:
	.fill 5, 4, -1
test_2_res:
	.fill 5, 4, -1
test_3_res:
	.fill 5, 4, -1
test_4_res:
	.fill 5, 4, -1
test_5_res:
	.fill 5, 4, -1
test_6_res:
	.fill 5, 4, -1
test_7_res:
	.fill 5, 4, -1

RV_COMPLIANCE_DATA_END

