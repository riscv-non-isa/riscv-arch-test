// RISC-V Architectural Validation Test I-RORIW-01
//
#
# Copyright (c) 2021 Imperas Software Ltd., www.imperas.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http:#www.apache.org/licenses/LICENSE-2.0
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

//
// Specification: K Crypto/Scalar
// Description: Testing instruction 'roriw'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV64IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1


    # address for test results
    # la x6, test_1_res
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x6,signature_1_0)


    # Testcase 0:  rs1:x31(0x10fd3dedadea5195), imm:0x3, result rd:x1(0xffffffffb5bd4a32)
inst_0:
    TEST_IMM_OP(roriw, x1, x31, 0xffffffffb5bd4a32, 0x10fd3dedadea5195, 0x3, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0xffffffffb5bd4a32) 


    # Testcase 1:  rs1:x30(0xbd295ce2d2ffbec1), imm:0x1b, result rd:x2(0x000000005ff7d83a)
inst_1:
    TEST_IMM_OP(roriw, x2, x30, 0x000000005ff7d83a, 0xbd295ce2d2ffbec1, 0x1b, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x000000005ff7d83a) 


    # Testcase 2:  rs1:x29(0xc9649f05a8e1a8bb), imm:0x0, result rd:x3(0xffffffffa8e1a8bb)
inst_2:
    TEST_IMM_OP(roriw, x3, x29, 0xffffffffa8e1a8bb, 0xc9649f05a8e1a8bb, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xffffffffa8e1a8bb) 


    # Testcase 3:  rs1:x28(0x3541291848c99fcb), imm:0x3, result rd:x4(0x00000000691933f9)
inst_3:
    TEST_IMM_OP(roriw, x4, x28, 0x00000000691933f9, 0x3541291848c99fcb, 0x3, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x00000000691933f9) 


    # Testcase 4:  rs1:x27(0x10a24740461d524f), imm:0xf, result rd:x5(0xffffffffa49e8c3a)
inst_4:
    TEST_IMM_OP(roriw, x5, x27, 0xffffffffa49e8c3a, 0x10a24740461d524f, 0xf, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xffffffffa49e8c3a) 





    # address for test results
    # la x1, test_2_res
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_2_0)


    # Testcase 5:  rs1:x26(0x546b0e54528a10af), imm:0xf, result rd:x6(0x00000000215ea514)
inst_5:
    TEST_IMM_OP(roriw, x6, x26, 0x00000000215ea514, 0x546b0e54528a10af, 0xf, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00000000215ea514) 


    # Testcase 6:  rs1:x25(0x73a92fd4e19bfbc3), imm:0xb, result rd:x7(0x00000000787c337f)
inst_6:
    TEST_IMM_OP(roriw, x7, x25, 0x00000000787c337f, 0x73a92fd4e19bfbc3, 0xb, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000000787c337f) 


    # Testcase 7:  rs1:x24(0x82f6747f707af2c0), imm:0x1b, result rd:x8(0x000000000f5e580e)
inst_7:
    TEST_IMM_OP(roriw, x8, x24, 0x000000000f5e580e, 0x82f6747f707af2c0, 0x1b, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x000000000f5e580e) 


    # Testcase 8:  rs1:x23(0xf5adb41aa47d105b), imm:0x1, result rd:x9(0xffffffffd23e882d)
inst_8:
    TEST_IMM_OP(roriw, x9, x23, 0xffffffffd23e882d, 0xf5adb41aa47d105b, 0x1, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xffffffffd23e882d) 


    # Testcase 9:  rs1:x22(0xdf7f3844121bcc23), imm:0x15, result rd:x10(0xffffffffde611890)
inst_9:
    TEST_IMM_OP(roriw, x10, x22, 0xffffffffde611890, 0xdf7f3844121bcc23, 0x15, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffffffde611890) 





    # address for test results
    # la x1, test_3_res
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_3_0)


    # Testcase 10:  rs1:x21(0x0000000000000001), imm:0x1f, result rd:x11(0x0000000000000002)
inst_10:
    TEST_IMM_OP(roriw, x11, x21, 0x0000000000000002, 0x1, 0x1f, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x0000000000000002) 


    # Testcase 11:  rs1:x20(0x0000000000000002), imm:0xf, result rd:x12(0x0000000000040000)
inst_11:
    TEST_IMM_OP(roriw, x12, x20, 0x0000000000040000, 0x2, 0xf, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x0000000000040000) 


    # Testcase 12:  rs1:x19(0x0000000000000004), imm:0x17, result rd:x13(0x0000000000000800)
inst_12:
    TEST_IMM_OP(roriw, x13, x19, 0x0000000000000800, 0x4, 0x17, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x0000000000000800) 


    # Testcase 13:  rs1:x18(0x0000000000000008), imm:0x1b, result rd:x14(0x0000000000000100)
inst_13:
    TEST_IMM_OP(roriw, x14, x18, 0x0000000000000100, 0x8, 0x1b, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x0000000000000100) 


    # Testcase 14:  rs1:x17(0x0000000000000010), imm:0x1d, result rd:x15(0x0000000000000080)
inst_14:
    TEST_IMM_OP(roriw, x15, x17, 0x0000000000000080, 0x10, 0x1d, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x0000000000000080) 





    # address for test results
    # la x2, test_4_res
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x2,signature_4_0)


    # Testcase 15:  rs1:x16(0x0000000000000020), imm:0x1e, result rd:x16(0x0000000000000080)
inst_15:
    TEST_IMM_OP(roriw, x16, x16, 0x0000000000000080, 0x20, 0x1e, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x0000000000000080) 


    # Testcase 16:  rs1:x15(0x0000000000000040), imm:0x0, result rd:x17(0x0000000000000040)
inst_16:
    TEST_IMM_OP(roriw, x17, x15, 0x0000000000000040, 0x40, 0x0, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x0000000000000040) 


    # Testcase 17:  rs1:x14(0x0000000000000080), imm:0x10, result rd:x18(0x0000000000800000)
inst_17:
    TEST_IMM_OP(roriw, x18, x14, 0x0000000000800000, 0x80, 0x10, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x0000000000800000) 


    # Testcase 18:  rs1:x13(0x0000000000000100), imm:0x8, result rd:x19(0x0000000000000001)
inst_18:
    TEST_IMM_OP(roriw, x19, x13, 0x0000000000000001, 0x100, 0x8, x2, 24, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x0000000000000001) 


    # Testcase 19:  rs1:x12(0x0000000000000200), imm:0x4, result rd:x20(0x0000000000000020)
inst_19:
    TEST_IMM_OP(roriw, x20, x12, 0x0000000000000020, 0x200, 0x4, x2, 32, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x0000000000000020) 





    # address for test results
    # la x1, test_5_res
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_5_0)


    # Testcase 20:  rs1:x11(0x0000000000000400), imm:0x2, result rd:x21(0x0000000000000100)
inst_20:
    TEST_IMM_OP(roriw, x21, x11, 0x0000000000000100, 0x400, 0x2, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000000000100) 


    # Testcase 21:  rs1:x10(0x0000000000000800), imm:0x1, result rd:x22(0x0000000000000400)
inst_21:
    TEST_IMM_OP(roriw, x22, x10, 0x0000000000000400, 0x800, 0x1, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000000000400) 


    # Testcase 22:  rs1:x9(0x0000000000001000), imm:0x3, result rd:x23(0x0000000000000200)
inst_22:
    TEST_IMM_OP(roriw, x23, x9, 0x0000000000000200, 0x1000, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000000000200) 


    # Testcase 23:  rs1:x8(0x0000000000002000), imm:0x1b, result rd:x24(0x0000000000040000)
inst_23:
    TEST_IMM_OP(roriw, x24, x8, 0x0000000000040000, 0x2000, 0x1b, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000000040000) 


    # Testcase 24:  rs1:x7(0x0000000000004000), imm:0x0, result rd:x25(0x0000000000004000)
inst_24:
    TEST_IMM_OP(roriw, x25, x7, 0x0000000000004000, 0x4000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000000004000) 





    # address for test results
    # la x1, test_6_res
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_6_0)


    # Testcase 25:  rs1:x6(0x0000000000008000), imm:0x3, result rd:x26(0x0000000000001000)
inst_25:
    TEST_IMM_OP(roriw, x26, x6, 0x0000000000001000, 0x8000, 0x3, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x0000000000001000) 


    # Testcase 26:  rs1:x5(0x0000000000010000), imm:0xf, result rd:x27(0x0000000000000002)
inst_26:
    TEST_IMM_OP(roriw, x27, x5, 0x0000000000000002, 0x10000, 0xf, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x0000000000000002) 


    # Testcase 27:  rs1:x4(0x0000000000020000), imm:0xf, result rd:x28(0x0000000000000004)
inst_27:
    TEST_IMM_OP(roriw, x28, x4, 0x0000000000000004, 0x20000, 0xf, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x0000000000000004) 


    # Testcase 28:  rs1:x3(0x0000000000040000), imm:0xb, result rd:x29(0x0000000000000080)
inst_28:
    TEST_IMM_OP(roriw, x29, x3, 0x0000000000000080, 0x40000, 0xb, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x0000000000000080) 


    # Testcase 29:  rs1:x2(0x0000000000080000), imm:0x1b, result rd:x30(0x0000000001000000)
inst_29:
    TEST_IMM_OP(roriw, x30, x2, 0x0000000001000000, 0x80000, 0x1b, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000000001000000) 





    # address for test results
    # la x5, test_7_res
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x5,signature_7_0)


    # Testcase 30:  rs1:x1(0x0000000000100000), imm:0x1, result rd:x31(0x0000000000080000)
inst_30:
    TEST_IMM_OP(roriw, x31, x1, 0x0000000000080000, 0x100000, 0x1, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x0000000000080000) 


    # Testcase 31:  rs1:x31(0x0000000000200000), imm:0x15, result rd:x1(0x0000000000000001)
inst_31:
    TEST_IMM_OP(roriw, x1, x31, 0x0000000000000001, 0x200000, 0x15, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x0000000000000001) 


    # Testcase 32:  rs1:x30(0x0000000000400000), imm:0x1f, result rd:x2(0x0000000000800000)
inst_32:
    TEST_IMM_OP(roriw, x2, x30, 0x0000000000800000, 0x400000, 0x1f, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x0000000000800000) 


    # Testcase 33:  rs1:x29(0x0000000000800000), imm:0xf, result rd:x3(0x0000000000000100)
inst_33:
    TEST_IMM_OP(roriw, x3, x29, 0x0000000000000100, 0x800000, 0xf, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x0000000000000100) 


    # Testcase 34:  rs1:x28(0x0000000001000000), imm:0x17, result rd:x4(0x0000000000000002)
inst_34:
    TEST_IMM_OP(roriw, x4, x28, 0x0000000000000002, 0x1000000, 0x17, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x0000000000000002) 





    # address for test results
    # la x1, test_8_res
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_8_0)


    # Testcase 35:  rs1:x27(0x0000000002000000), imm:0x1b, result rd:x5(0x0000000040000000)
inst_35:
    TEST_IMM_OP(roriw, x5, x27, 0x0000000040000000, 0x2000000, 0x1b, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0000000040000000) 


    # Testcase 36:  rs1:x26(0x0000000004000000), imm:0x1d, result rd:x6(0x0000000020000000)
inst_36:
    TEST_IMM_OP(roriw, x6, x26, 0x0000000020000000, 0x4000000, 0x1d, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000020000000) 


    # Testcase 37:  rs1:x25(0x0000000008000000), imm:0x1e, result rd:x7(0x0000000020000000)
inst_37:
    TEST_IMM_OP(roriw, x7, x25, 0x0000000020000000, 0x8000000, 0x1e, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000020000000) 


    # Testcase 38:  rs1:x24(0x0000000010000000), imm:0x0, result rd:x8(0x0000000010000000)
inst_38:
    TEST_IMM_OP(roriw, x8, x24, 0x0000000010000000, 0x10000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000010000000) 


    # Testcase 39:  rs1:x23(0x0000000020000000), imm:0x10, result rd:x9(0x0000000000002000)
inst_39:
    TEST_IMM_OP(roriw, x9, x23, 0x0000000000002000, 0x20000000, 0x10, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000000002000) 





    # address for test results
    # la x1, test_9_res
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_9_0)


    # Testcase 40:  rs1:x22(0x0000000040000000), imm:0x8, result rd:x10(0x0000000000400000)
inst_40:
    TEST_IMM_OP(roriw, x10, x22, 0x0000000000400000, 0x40000000, 0x8, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000000400000) 


    # Testcase 41:  rs1:x21(0x0000000080000000), imm:0x4, result rd:x11(0x0000000008000000)
inst_41:
    TEST_IMM_OP(roriw, x11, x21, 0x0000000008000000, 0x80000000, 0x4, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0000000008000000) 


    # Testcase 42:  rs1:x20(0x0000000100000000), imm:0x2, result rd:x12(0x0000000000000000)
inst_42:
    TEST_IMM_OP(roriw, x12, x20, 0x0000000000000000, 0x100000000, 0x2, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0000000000000000) 


    # Testcase 43:  rs1:x19(0x0000000200000000), imm:0x1, result rd:x13(0x0000000000000000)
inst_43:
    TEST_IMM_OP(roriw, x13, x19, 0x0000000000000000, 0x200000000, 0x1, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0000000000000000) 


    # Testcase 44:  rs1:x18(0x0000000400000000), imm:0x3, result rd:x14(0x0000000000000000)
inst_44:
    TEST_IMM_OP(roriw, x14, x18, 0x0000000000000000, 0x400000000, 0x3, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x0000000000000000) 





    # address for test results
    # la x3, test_10_res
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x3,signature_10_0)


    # Testcase 45:  rs1:x17(0x0000000800000000), imm:0x1b, result rd:x15(0x0000000000000000)
inst_45:
    TEST_IMM_OP(roriw, x15, x17, 0x0000000000000000, 0x800000000, 0x1b, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x0000000000000000) 


    # Testcase 46:  rs1:x16(0x0000001000000000), imm:0x0, result rd:x16(0x0000000000000000)
inst_46:
    TEST_IMM_OP(roriw, x16, x16, 0x0000000000000000, 0x1000000000, 0x0, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x0000000000000000) 


    # Testcase 47:  rs1:x15(0x0000002000000000), imm:0x3, result rd:x17(0x0000000000000000)
inst_47:
    TEST_IMM_OP(roriw, x17, x15, 0x0000000000000000, 0x2000000000, 0x3, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x0000000000000000) 


    # Testcase 48:  rs1:x14(0x0000004000000000), imm:0xf, result rd:x18(0x0000000000000000)
inst_48:
    TEST_IMM_OP(roriw, x18, x14, 0x0000000000000000, 0x4000000000, 0xf, x3, 24, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x0000000000000000) 


    # Testcase 49:  rs1:x13(0x0000008000000000), imm:0xf, result rd:x19(0x0000000000000000)
inst_49:
    TEST_IMM_OP(roriw, x19, x13, 0x0000000000000000, 0x8000000000, 0xf, x3, 32, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x0000000000000000) 





    # address for test results
    # la x1, test_11_res
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_11_0)


    # Testcase 50:  rs1:x12(0x0000010000000000), imm:0xb, result rd:x20(0x0000000000000000)
inst_50:
    TEST_IMM_OP(roriw, x20, x12, 0x0000000000000000, 0x10000000000, 0xb, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x0000000000000000) 


    # Testcase 51:  rs1:x11(0x0000020000000000), imm:0x1b, result rd:x21(0x0000000000000000)
inst_51:
    TEST_IMM_OP(roriw, x21, x11, 0x0000000000000000, 0x20000000000, 0x1b, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000000000000) 


    # Testcase 52:  rs1:x10(0x0000040000000000), imm:0x1, result rd:x22(0x0000000000000000)
inst_52:
    TEST_IMM_OP(roriw, x22, x10, 0x0000000000000000, 0x40000000000, 0x1, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000000000000) 


    # Testcase 53:  rs1:x9(0x0000080000000000), imm:0x15, result rd:x23(0x0000000000000000)
inst_53:
    TEST_IMM_OP(roriw, x23, x9, 0x0000000000000000, 0x80000000000, 0x15, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000000000000) 


    # Testcase 54:  rs1:x8(0x0000100000000000), imm:0x1f, result rd:x24(0x0000000000000000)
inst_54:
    TEST_IMM_OP(roriw, x24, x8, 0x0000000000000000, 0x100000000000, 0x1f, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000000000000) 





    # address for test results
    # la x1, test_12_res
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_12_0)


    # Testcase 55:  rs1:x7(0x0000200000000000), imm:0xf, result rd:x25(0x0000000000000000)
inst_55:
    TEST_IMM_OP(roriw, x25, x7, 0x0000000000000000, 0x200000000000, 0xf, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000000000000) 


    # Testcase 56:  rs1:x6(0x0000400000000000), imm:0x17, result rd:x26(0x0000000000000000)
inst_56:
    TEST_IMM_OP(roriw, x26, x6, 0x0000000000000000, 0x400000000000, 0x17, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0000000000000000) 


    # Testcase 57:  rs1:x5(0x0000800000000000), imm:0x1b, result rd:x27(0x0000000000000000)
inst_57:
    TEST_IMM_OP(roriw, x27, x5, 0x0000000000000000, 0x800000000000, 0x1b, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x0000000000000000) 


    # Testcase 58:  rs1:x4(0x0001000000000000), imm:0x1d, result rd:x28(0x0000000000000000)
inst_58:
    TEST_IMM_OP(roriw, x28, x4, 0x0000000000000000, 0x1000000000000, 0x1d, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x0000000000000000) 


    # Testcase 59:  rs1:x3(0x0002000000000000), imm:0x1e, result rd:x29(0x0000000000000000)
inst_59:
    TEST_IMM_OP(roriw, x29, x3, 0x0000000000000000, 0x2000000000000, 0x1e, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x0000000000000000) 





    # address for test results
    # la x4, test_13_res
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x4,signature_13_0)


    # Testcase 60:  rs1:x2(0x0004000000000000), imm:0x0, result rd:x30(0x0000000000000000)
inst_60:
    TEST_IMM_OP(roriw, x30, x2, 0x0000000000000000, 0x4000000000000, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x0000000000000000) 


    # Testcase 61:  rs1:x1(0x0008000000000000), imm:0x10, result rd:x31(0x0000000000000000)
inst_61:
    TEST_IMM_OP(roriw, x31, x1, 0x0000000000000000, 0x8000000000000, 0x10, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x0000000000000000) 


    # Testcase 62:  rs1:x31(0x0010000000000000), imm:0x8, result rd:x1(0x0000000000000000)
inst_62:
    TEST_IMM_OP(roriw, x1, x31, 0x0000000000000000, 0x10000000000000, 0x8, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x0000000000000000) 


    # Testcase 63:  rs1:x30(0x0020000000000000), imm:0x4, result rd:x2(0x0000000000000000)
inst_63:
    TEST_IMM_OP(roriw, x2, x30, 0x0000000000000000, 0x20000000000000, 0x4, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x0000000000000000) 


    # Testcase 64:  rs1:x29(0x0040000000000000), imm:0x2, result rd:x3(0x0000000000000000)
inst_64:
    TEST_IMM_OP(roriw, x3, x29, 0x0000000000000000, 0x40000000000000, 0x2, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x0000000000000000) 





    # address for test results
    # la x1, test_14_res
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_14_0)


    # Testcase 65:  rs1:x28(0x0080000000000000), imm:0x1, result rd:x4(0x0000000000000000)
inst_65:
    TEST_IMM_OP(roriw, x4, x28, 0x0000000000000000, 0x80000000000000, 0x1, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x0000000000000000) 


    # Testcase 66:  rs1:x27(0x0100000000000000), imm:0x3, result rd:x5(0x0000000000000000)
inst_66:
    TEST_IMM_OP(roriw, x5, x27, 0x0000000000000000, 0x100000000000000, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0000000000000000) 


    # Testcase 67:  rs1:x26(0x0200000000000000), imm:0x1b, result rd:x6(0x0000000000000000)
inst_67:
    TEST_IMM_OP(roriw, x6, x26, 0x0000000000000000, 0x200000000000000, 0x1b, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000000000000) 


    # Testcase 68:  rs1:x25(0x0400000000000000), imm:0x0, result rd:x7(0x0000000000000000)
inst_68:
    TEST_IMM_OP(roriw, x7, x25, 0x0000000000000000, 0x400000000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000000000000) 


    # Testcase 69:  rs1:x24(0x0800000000000000), imm:0x3, result rd:x8(0x0000000000000000)
inst_69:
    TEST_IMM_OP(roriw, x8, x24, 0x0000000000000000, 0x800000000000000, 0x3, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000000000000) 





    # address for test results
    # la x1, test_15_res
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_15_0)


    # Testcase 70:  rs1:x23(0x1000000000000000), imm:0xf, result rd:x9(0x0000000000000000)
inst_70:
    TEST_IMM_OP(roriw, x9, x23, 0x0000000000000000, 0x1000000000000000, 0xf, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000000000000) 


    # Testcase 71:  rs1:x22(0x2000000000000000), imm:0xf, result rd:x10(0x0000000000000000)
inst_71:
    TEST_IMM_OP(roriw, x10, x22, 0x0000000000000000, 0x2000000000000000, 0xf, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000000000000) 


    # Testcase 72:  rs1:x21(0x4000000000000000), imm:0xb, result rd:x11(0x0000000000000000)
inst_72:
    TEST_IMM_OP(roriw, x11, x21, 0x0000000000000000, 0x4000000000000000, 0xb, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0000000000000000) 


    # Testcase 73:  rs1:x20(0x8000000000000000), imm:0x1b, result rd:x12(0x0000000000000000)
inst_73:
    TEST_IMM_OP(roriw, x12, x20, 0x0000000000000000, 0x8000000000000000, 0x1b, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0000000000000000) 


    # Testcase 74:  rs1:x19(0x0000000000000000), imm:0x1, result rd:x13(0x0000000000000000)
inst_74:
    TEST_IMM_OP(roriw, x13, x19, 0x0000000000000000, 0x0, 0x1, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0000000000000000) 





    # address for test results
    # la x4, test_16_res
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x4,signature_16_0)


    # Testcase 75:  rs1:x18(0xfffffffffffffffe), imm:0x15, result rd:x14(0xfffffffffffff7ff)
inst_75:
    TEST_IMM_OP(roriw, x14, x18, 0xfffffffffffff7ff, 0xfffffffffffffffe, 0x15, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xfffffffffffff7ff) 


    # Testcase 76:  rs1:x17(0xfffffffffffffffd), imm:0x1f, result rd:x15(0xfffffffffffffffb)
inst_76:
    TEST_IMM_OP(roriw, x15, x17, 0xfffffffffffffffb, 0xfffffffffffffffd, 0x1f, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0xfffffffffffffffb) 


    # Testcase 77:  rs1:x16(0xfffffffffffffffb), imm:0xf, result rd:x16(0xfffffffffff7ffff)
inst_77:
    TEST_IMM_OP(roriw, x16, x16, 0xfffffffffff7ffff, 0xfffffffffffffffb, 0xf, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0xfffffffffff7ffff) 


    # Testcase 78:  rs1:x15(0xfffffffffffffff7), imm:0x17, result rd:x17(0xffffffffffffefff)
inst_78:
    TEST_IMM_OP(roriw, x17, x15, 0xffffffffffffefff, 0xfffffffffffffff7, 0x17, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0xffffffffffffefff) 


    # Testcase 79:  rs1:x14(0xffffffffffffffef), imm:0x1b, result rd:x18(0xfffffffffffffdff)
inst_79:
    TEST_IMM_OP(roriw, x18, x14, 0xfffffffffffffdff, 0xffffffffffffffef, 0x1b, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0xfffffffffffffdff) 





    # address for test results
    # la x1, test_17_res
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_17_0)


    # Testcase 80:  rs1:x13(0xffffffffffffffdf), imm:0x1d, result rd:x19(0xfffffffffffffeff)
inst_80:
    TEST_IMM_OP(roriw, x19, x13, 0xfffffffffffffeff, 0xffffffffffffffdf, 0x1d, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xfffffffffffffeff) 


    # Testcase 81:  rs1:x12(0xffffffffffffffbf), imm:0x1e, result rd:x20(0xfffffffffffffeff)
inst_81:
    TEST_IMM_OP(roriw, x20, x12, 0xfffffffffffffeff, 0xffffffffffffffbf, 0x1e, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xfffffffffffffeff) 


    # Testcase 82:  rs1:x11(0xffffffffffffff7f), imm:0x0, result rd:x21(0xffffffffffffff7f)
inst_82:
    TEST_IMM_OP(roriw, x21, x11, 0xffffffffffffff7f, 0xffffffffffffff7f, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xffffffffffffff7f) 


    # Testcase 83:  rs1:x10(0xfffffffffffffeff), imm:0x10, result rd:x22(0xfffffffffeffffff)
inst_83:
    TEST_IMM_OP(roriw, x22, x10, 0xfffffffffeffffff, 0xfffffffffffffeff, 0x10, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xfffffffffeffffff) 


    # Testcase 84:  rs1:x9(0xfffffffffffffdff), imm:0x8, result rd:x23(0xfffffffffffffffd)
inst_84:
    TEST_IMM_OP(roriw, x23, x9, 0xfffffffffffffffd, 0xfffffffffffffdff, 0x8, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xfffffffffffffffd) 





    # address for test results
    # la x1, test_18_res
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_18_0)


    # Testcase 85:  rs1:x8(0xfffffffffffffbff), imm:0x4, result rd:x24(0xffffffffffffffbf)
inst_85:
    TEST_IMM_OP(roriw, x24, x8, 0xffffffffffffffbf, 0xfffffffffffffbff, 0x4, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffffffffffffffbf) 


    # Testcase 86:  rs1:x7(0xfffffffffffff7ff), imm:0x2, result rd:x25(0xfffffffffffffdff)
inst_86:
    TEST_IMM_OP(roriw, x25, x7, 0xfffffffffffffdff, 0xfffffffffffff7ff, 0x2, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xfffffffffffffdff) 


    # Testcase 87:  rs1:x6(0xffffffffffffefff), imm:0x1, result rd:x26(0xfffffffffffff7ff)
inst_87:
    TEST_IMM_OP(roriw, x26, x6, 0xfffffffffffff7ff, 0xffffffffffffefff, 0x1, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xfffffffffffff7ff) 


    # Testcase 88:  rs1:x5(0xffffffffffffdfff), imm:0x3, result rd:x27(0xfffffffffffffbff)
inst_88:
    TEST_IMM_OP(roriw, x27, x5, 0xfffffffffffffbff, 0xffffffffffffdfff, 0x3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xfffffffffffffbff) 


    # Testcase 89:  rs1:x4(0xffffffffffffbfff), imm:0x1b, result rd:x28(0xfffffffffff7ffff)
inst_89:
    TEST_IMM_OP(roriw, x28, x4, 0xfffffffffff7ffff, 0xffffffffffffbfff, 0x1b, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xfffffffffff7ffff) 





    # address for test results
    # la x4, test_19_res
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x4,signature_19_0)


    # Testcase 90:  rs1:x3(0xffffffffffff7fff), imm:0x0, result rd:x29(0xffffffffffff7fff)
inst_90:
    TEST_IMM_OP(roriw, x29, x3, 0xffffffffffff7fff, 0xffffffffffff7fff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0xffffffffffff7fff) 


    # Testcase 91:  rs1:x2(0xfffffffffffeffff), imm:0x3, result rd:x30(0xffffffffffffdfff)
inst_91:
    TEST_IMM_OP(roriw, x30, x2, 0xffffffffffffdfff, 0xfffffffffffeffff, 0x3, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xffffffffffffdfff) 


    # Testcase 92:  rs1:x1(0xfffffffffffdffff), imm:0xf, result rd:x31(0xfffffffffffffffb)
inst_92:
    TEST_IMM_OP(roriw, x31, x1, 0xfffffffffffffffb, 0xfffffffffffdffff, 0xf, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xfffffffffffffffb) 


    # Testcase 93:  rs1:x31(0xfffffffffffbffff), imm:0xf, result rd:x1(0xfffffffffffffff7)
inst_93:
    TEST_IMM_OP(roriw, x1, x31, 0xfffffffffffffff7, 0xfffffffffffbffff, 0xf, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xfffffffffffffff7) 


    # Testcase 94:  rs1:x30(0xfffffffffff7ffff), imm:0xb, result rd:x2(0xfffffffffffffeff)
inst_94:
    TEST_IMM_OP(roriw, x2, x30, 0xfffffffffffffeff, 0xfffffffffff7ffff, 0xb, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xfffffffffffffeff) 





    # address for test results
    # la x1, test_20_res
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_20_0)


    # Testcase 95:  rs1:x29(0xffffffffffefffff), imm:0x1b, result rd:x3(0xfffffffffdffffff)
inst_95:
    TEST_IMM_OP(roriw, x3, x29, 0xfffffffffdffffff, 0xffffffffffefffff, 0x1b, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0xfffffffffdffffff) 


    # Testcase 96:  rs1:x28(0xffffffffffdfffff), imm:0x1, result rd:x4(0xffffffffffefffff)
inst_96:
    TEST_IMM_OP(roriw, x4, x28, 0xffffffffffefffff, 0xffffffffffdfffff, 0x1, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xffffffffffefffff) 


    # Testcase 97:  rs1:x27(0xffffffffffbfffff), imm:0x15, result rd:x5(0xfffffffffffffffd)
inst_97:
    TEST_IMM_OP(roriw, x5, x27, 0xfffffffffffffffd, 0xffffffffffbfffff, 0x15, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xfffffffffffffffd) 


    # Testcase 98:  rs1:x26(0xffffffffff7fffff), imm:0x1f, result rd:x6(0xfffffffffeffffff)
inst_98:
    TEST_IMM_OP(roriw, x6, x26, 0xfffffffffeffffff, 0xffffffffff7fffff, 0x1f, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xfffffffffeffffff) 


    # Testcase 99:  rs1:x25(0xfffffffffeffffff), imm:0xf, result rd:x7(0xfffffffffffffdff)
inst_99:
    TEST_IMM_OP(roriw, x7, x25, 0xfffffffffffffdff, 0xfffffffffeffffff, 0xf, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfffffffffffffdff) 





    # address for test results
    # la x1, test_21_res
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_21_0)


    # Testcase 100:  rs1:x24(0xfffffffffdffffff), imm:0x17, result rd:x8(0xfffffffffffffffb)
inst_100:
    TEST_IMM_OP(roriw, x8, x24, 0xfffffffffffffffb, 0xfffffffffdffffff, 0x17, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xfffffffffffffffb) 


    # Testcase 101:  rs1:x23(0xfffffffffbffffff), imm:0x1b, result rd:x9(0x000000007fffffff)
inst_101:
    TEST_IMM_OP(roriw, x9, x23, 0x000000007fffffff, 0xfffffffffbffffff, 0x1b, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x000000007fffffff) 


    # Testcase 102:  rs1:x22(0xfffffffff7ffffff), imm:0x1d, result rd:x10(0xffffffffbfffffff)
inst_102:
    TEST_IMM_OP(roriw, x10, x22, 0xffffffffbfffffff, 0xfffffffff7ffffff, 0x1d, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffffffbfffffff) 


    # Testcase 103:  rs1:x21(0xffffffffefffffff), imm:0x1e, result rd:x11(0xffffffffbfffffff)
inst_103:
    TEST_IMM_OP(roriw, x11, x21, 0xffffffffbfffffff, 0xffffffffefffffff, 0x1e, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffffffffbfffffff) 


    # Testcase 104:  rs1:x20(0xffffffffdfffffff), imm:0x0, result rd:x12(0xffffffffdfffffff)
inst_104:
    TEST_IMM_OP(roriw, x12, x20, 0xffffffffdfffffff, 0xffffffffdfffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xffffffffdfffffff) 





    # address for test results
    # la x5, test_22_res
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x5,signature_22_0)


    # Testcase 105:  rs1:x19(0xffffffffbfffffff), imm:0x10, result rd:x13(0xffffffffffffbfff)
inst_105:
    TEST_IMM_OP(roriw, x13, x19, 0xffffffffffffbfff, 0xffffffffbfffffff, 0x10, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0xffffffffffffbfff) 


    # Testcase 106:  rs1:x18(0xffffffff7fffffff), imm:0x8, result rd:x14(0xffffffffff7fffff)
inst_106:
    TEST_IMM_OP(roriw, x14, x18, 0xffffffffff7fffff, 0xffffffff7fffffff, 0x8, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0xffffffffff7fffff) 


    # Testcase 107:  rs1:x17(0xfffffffeffffffff), imm:0x4, result rd:x15(0xffffffffffffffff)
inst_107:
    TEST_IMM_OP(roriw, x15, x17, 0xffffffffffffffff, 0xfffffffeffffffff, 0x4, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0xffffffffffffffff) 


    # Testcase 108:  rs1:x16(0xfffffffdffffffff), imm:0x2, result rd:x16(0xffffffffffffffff)
inst_108:
    TEST_IMM_OP(roriw, x16, x16, 0xffffffffffffffff, 0xfffffffdffffffff, 0x2, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0xffffffffffffffff) 


    # Testcase 109:  rs1:x15(0xfffffffbffffffff), imm:0x1, result rd:x17(0xffffffffffffffff)
inst_109:
    TEST_IMM_OP(roriw, x17, x15, 0xffffffffffffffff, 0xfffffffbffffffff, 0x1, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0xffffffffffffffff) 





    # address for test results
    # la x1, test_23_res
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_23_0)


    # Testcase 110:  rs1:x14(0xfffffff7ffffffff), imm:0x3, result rd:x18(0xffffffffffffffff)
inst_110:
    TEST_IMM_OP(roriw, x18, x14, 0xffffffffffffffff, 0xfffffff7ffffffff, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xffffffffffffffff) 


    # Testcase 111:  rs1:x13(0xffffffefffffffff), imm:0x1b, result rd:x19(0xffffffffffffffff)
inst_111:
    TEST_IMM_OP(roriw, x19, x13, 0xffffffffffffffff, 0xffffffefffffffff, 0x1b, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xffffffffffffffff) 


    # Testcase 112:  rs1:x12(0xffffffdfffffffff), imm:0x0, result rd:x20(0xffffffffffffffff)
inst_112:
    TEST_IMM_OP(roriw, x20, x12, 0xffffffffffffffff, 0xffffffdfffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xffffffffffffffff) 


    # Testcase 113:  rs1:x11(0xffffffbfffffffff), imm:0x3, result rd:x21(0xffffffffffffffff)
inst_113:
    TEST_IMM_OP(roriw, x21, x11, 0xffffffffffffffff, 0xffffffbfffffffff, 0x3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xffffffffffffffff) 


    # Testcase 114:  rs1:x10(0xffffff7fffffffff), imm:0xf, result rd:x22(0xffffffffffffffff)
inst_114:
    TEST_IMM_OP(roriw, x22, x10, 0xffffffffffffffff, 0xffffff7fffffffff, 0xf, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffffffffffffffff) 





    # address for test results
    # la x1, test_24_res
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_24_0)


    # Testcase 115:  rs1:x9(0xfffffeffffffffff), imm:0xf, result rd:x23(0xffffffffffffffff)
inst_115:
    TEST_IMM_OP(roriw, x23, x9, 0xffffffffffffffff, 0xfffffeffffffffff, 0xf, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xffffffffffffffff) 


    # Testcase 116:  rs1:x8(0xfffffdffffffffff), imm:0xb, result rd:x24(0xffffffffffffffff)
inst_116:
    TEST_IMM_OP(roriw, x24, x8, 0xffffffffffffffff, 0xfffffdffffffffff, 0xb, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffffffffffffffff) 


    # Testcase 117:  rs1:x7(0xfffffbffffffffff), imm:0x1b, result rd:x25(0xffffffffffffffff)
inst_117:
    TEST_IMM_OP(roriw, x25, x7, 0xffffffffffffffff, 0xfffffbffffffffff, 0x1b, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffffffffffffffff) 


    # Testcase 118:  rs1:x6(0xfffff7ffffffffff), imm:0x1, result rd:x26(0xffffffffffffffff)
inst_118:
    TEST_IMM_OP(roriw, x26, x6, 0xffffffffffffffff, 0xfffff7ffffffffff, 0x1, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffffffffffffffff) 


    # Testcase 119:  rs1:x5(0xffffefffffffffff), imm:0x15, result rd:x27(0xffffffffffffffff)
inst_119:
    TEST_IMM_OP(roriw, x27, x5, 0xffffffffffffffff, 0xffffefffffffffff, 0x15, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffffffffffffffff) 





    # address for test results
    # la x5, test_25_res
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x5,signature_25_0)


    # Testcase 120:  rs1:x4(0xffffdfffffffffff), imm:0x1f, result rd:x28(0xffffffffffffffff)
inst_120:
    TEST_IMM_OP(roriw, x28, x4, 0xffffffffffffffff, 0xffffdfffffffffff, 0x1f, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0xffffffffffffffff) 


    # Testcase 121:  rs1:x3(0xffffbfffffffffff), imm:0xf, result rd:x29(0xffffffffffffffff)
inst_121:
    TEST_IMM_OP(roriw, x29, x3, 0xffffffffffffffff, 0xffffbfffffffffff, 0xf, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0xffffffffffffffff) 


    # Testcase 122:  rs1:x2(0xffff7fffffffffff), imm:0x17, result rd:x30(0xffffffffffffffff)
inst_122:
    TEST_IMM_OP(roriw, x30, x2, 0xffffffffffffffff, 0xffff7fffffffffff, 0x17, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0xffffffffffffffff) 


    # Testcase 123:  rs1:x1(0xfffeffffffffffff), imm:0x1b, result rd:x31(0xffffffffffffffff)
inst_123:
    TEST_IMM_OP(roriw, x31, x1, 0xffffffffffffffff, 0xfffeffffffffffff, 0x1b, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0xffffffffffffffff) 


    # Testcase 124:  rs1:x31(0xfffdffffffffffff), imm:0x1d, result rd:x1(0xffffffffffffffff)
inst_124:
    TEST_IMM_OP(roriw, x1, x31, 0xffffffffffffffff, 0xfffdffffffffffff, 0x1d, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0xffffffffffffffff) 





    # address for test results
    # la x1, test_26_res
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_26_0)


    # Testcase 125:  rs1:x30(0xfffbffffffffffff), imm:0x1e, result rd:x2(0xffffffffffffffff)
inst_125:
    TEST_IMM_OP(roriw, x2, x30, 0xffffffffffffffff, 0xfffbffffffffffff, 0x1e, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0xffffffffffffffff) 


    # Testcase 126:  rs1:x29(0xfff7ffffffffffff), imm:0x0, result rd:x3(0xffffffffffffffff)
inst_126:
    TEST_IMM_OP(roriw, x3, x29, 0xffffffffffffffff, 0xfff7ffffffffffff, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xffffffffffffffff) 


    # Testcase 127:  rs1:x28(0xffefffffffffffff), imm:0x10, result rd:x4(0xffffffffffffffff)
inst_127:
    TEST_IMM_OP(roriw, x4, x28, 0xffffffffffffffff, 0xffefffffffffffff, 0x10, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xffffffffffffffff) 


    # Testcase 128:  rs1:x27(0xffdfffffffffffff), imm:0x8, result rd:x5(0xffffffffffffffff)
inst_128:
    TEST_IMM_OP(roriw, x5, x27, 0xffffffffffffffff, 0xffdfffffffffffff, 0x8, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xffffffffffffffff) 


    # Testcase 129:  rs1:x26(0xffbfffffffffffff), imm:0x4, result rd:x6(0xffffffffffffffff)
inst_129:
    TEST_IMM_OP(roriw, x6, x26, 0xffffffffffffffff, 0xffbfffffffffffff, 0x4, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0xffffffffffffffff) 





    # address for test results
    # la x1, test_27_res
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_27_0)


    # Testcase 130:  rs1:x25(0xff7fffffffffffff), imm:0x0, result rd:x7(0xffffffffffffffff)
inst_130:
    TEST_IMM_OP(roriw, x7, x25, 0xffffffffffffffff, 0xff7fffffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xffffffffffffffff) 


    # Testcase 131:  rs1:x24(0xfeffffffffffffff), imm:0x0, result rd:x8(0xffffffffffffffff)
inst_131:
    TEST_IMM_OP(roriw, x8, x24, 0xffffffffffffffff, 0xfeffffffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffffffffffffffff) 


    # Testcase 132:  rs1:x23(0xfdffffffffffffff), imm:0x0, result rd:x9(0xffffffffffffffff)
inst_132:
    TEST_IMM_OP(roriw, x9, x23, 0xffffffffffffffff, 0xfdffffffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xffffffffffffffff) 


    # Testcase 133:  rs1:x22(0xfbffffffffffffff), imm:0x0, result rd:x10(0xffffffffffffffff)
inst_133:
    TEST_IMM_OP(roriw, x10, x22, 0xffffffffffffffff, 0xfbffffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffffffffffffff) 


    # Testcase 134:  rs1:x21(0xf7ffffffffffffff), imm:0x0, result rd:x11(0xffffffffffffffff)
inst_134:
    TEST_IMM_OP(roriw, x11, x21, 0xffffffffffffffff, 0xf7ffffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffffffffffffffff) 





    # address for test results
    # la x6, test_28_res
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x6,signature_28_0)


    # Testcase 135:  rs1:x20(0xefffffffffffffff), imm:0x0, result rd:x12(0xffffffffffffffff)
inst_135:
    TEST_IMM_OP(roriw, x12, x20, 0xffffffffffffffff, 0xefffffffffffffff, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0xffffffffffffffff) 


    # Testcase 136:  rs1:x19(0xdfffffffffffffff), imm:0x0, result rd:x13(0xffffffffffffffff)
inst_136:
    TEST_IMM_OP(roriw, x13, x19, 0xffffffffffffffff, 0xdfffffffffffffff, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0xffffffffffffffff) 


    # Testcase 137:  rs1:x18(0xbfffffffffffffff), imm:0x0, result rd:x14(0xffffffffffffffff)
inst_137:
    TEST_IMM_OP(roriw, x14, x18, 0xffffffffffffffff, 0xbfffffffffffffff, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0xffffffffffffffff) 


    # Testcase 138:  rs1:x17(0x7fffffffffffffff), imm:0x0, result rd:x15(0xffffffffffffffff)
inst_138:
    TEST_IMM_OP(roriw, x15, x17, 0xffffffffffffffff, 0x7fffffffffffffff, 0x0, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0xffffffffffffffff) 


    # Testcase 139:  rs1:x16(0xffffffffffffffff), imm:0x0, result rd:x16(0xffffffffffffffff)
inst_139:
    TEST_IMM_OP(roriw, x16, x16, 0xffffffffffffffff, 0xffffffffffffffff, 0x0, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0xffffffffffffffff) 





    # address for test results
    # la x1, test_29_res
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_29_0)


    # Testcase 140:  rs1:x15(0x0000000000000001), imm:0x0, result rd:x17(0x0000000000000001)
inst_140:
    TEST_IMM_OP(roriw, x17, x15, 0x0000000000000001, 0x1, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x0000000000000001) 


    # Testcase 141:  rs1:x14(0x0000000000000002), imm:0x0, result rd:x18(0x0000000000000002)
inst_141:
    TEST_IMM_OP(roriw, x18, x14, 0x0000000000000002, 0x2, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x0000000000000002) 


    # Testcase 142:  rs1:x13(0x0000000000000004), imm:0x0, result rd:x19(0x0000000000000004)
inst_142:
    TEST_IMM_OP(roriw, x19, x13, 0x0000000000000004, 0x4, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x0000000000000004) 


    # Testcase 143:  rs1:x12(0x0000000000000008), imm:0x0, result rd:x20(0x0000000000000008)
inst_143:
    TEST_IMM_OP(roriw, x20, x12, 0x0000000000000008, 0x8, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x0000000000000008) 


    # Testcase 144:  rs1:x11(0x0000000000000010), imm:0x0, result rd:x21(0x0000000000000010)
inst_144:
    TEST_IMM_OP(roriw, x21, x11, 0x0000000000000010, 0x10, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000000000010) 





    # address for test results
    # la x1, test_30_res
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_30_0)


    # Testcase 145:  rs1:x10(0x0000000000000020), imm:0x0, result rd:x22(0x0000000000000020)
inst_145:
    TEST_IMM_OP(roriw, x22, x10, 0x0000000000000020, 0x20, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000000000020) 


    # Testcase 146:  rs1:x9(0x0000000000000040), imm:0x0, result rd:x23(0x0000000000000040)
inst_146:
    TEST_IMM_OP(roriw, x23, x9, 0x0000000000000040, 0x40, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000000000040) 


    # Testcase 147:  rs1:x8(0x0000000000000080), imm:0x0, result rd:x24(0x0000000000000080)
inst_147:
    TEST_IMM_OP(roriw, x24, x8, 0x0000000000000080, 0x80, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000000000080) 


    # Testcase 148:  rs1:x7(0x0000000000000100), imm:0x0, result rd:x25(0x0000000000000100)
inst_148:
    TEST_IMM_OP(roriw, x25, x7, 0x0000000000000100, 0x100, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000000000100) 


    # Testcase 149:  rs1:x6(0x0000000000000200), imm:0x0, result rd:x26(0x0000000000000200)
inst_149:
    TEST_IMM_OP(roriw, x26, x6, 0x0000000000000200, 0x200, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0000000000000200) 





    # address for test results
    # la x6, test_31_res
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x6,signature_31_0)


    # Testcase 150:  rs1:x5(0x0000000000000400), imm:0x0, result rd:x27(0x0000000000000400)
inst_150:
    TEST_IMM_OP(roriw, x27, x5, 0x0000000000000400, 0x400, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x0000000000000400) 


    # Testcase 151:  rs1:x4(0x0000000000000800), imm:0x0, result rd:x28(0x0000000000000800)
inst_151:
    TEST_IMM_OP(roriw, x28, x4, 0x0000000000000800, 0x800, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x0000000000000800) 


    # Testcase 152:  rs1:x3(0x0000000000001000), imm:0x0, result rd:x29(0x0000000000001000)
inst_152:
    TEST_IMM_OP(roriw, x29, x3, 0x0000000000001000, 0x1000, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x0000000000001000) 


    # Testcase 153:  rs1:x2(0x0000000000002000), imm:0x0, result rd:x30(0x0000000000002000)
inst_153:
    TEST_IMM_OP(roriw, x30, x2, 0x0000000000002000, 0x2000, 0x0, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000000000002000) 


    # Testcase 154:  rs1:x1(0x0000000000004000), imm:0x0, result rd:x31(0x0000000000004000)
inst_154:
    TEST_IMM_OP(roriw, x31, x1, 0x0000000000004000, 0x4000, 0x0, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x31, 0x0000000000004000) 





    # address for test results
    # la x6, test_32_res
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x6,signature_32_0)


    # Testcase 155:  rs1:x31(0x0000000000008000), imm:0x0, result rd:x1(0x0000000000008000)
inst_155:
    TEST_IMM_OP(roriw, x1, x31, 0x0000000000008000, 0x8000, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x0000000000008000) 


    # Testcase 156:  rs1:x30(0x0000000000010000), imm:0x0, result rd:x2(0x0000000000010000)
inst_156:
    TEST_IMM_OP(roriw, x2, x30, 0x0000000000010000, 0x10000, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x0000000000010000) 


    # Testcase 157:  rs1:x29(0x0000000000020000), imm:0x0, result rd:x3(0x0000000000020000)
inst_157:
    TEST_IMM_OP(roriw, x3, x29, 0x0000000000020000, 0x20000, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x0000000000020000) 


    # Testcase 158:  rs1:x28(0x0000000000040000), imm:0x0, result rd:x4(0x0000000000040000)
inst_158:
    TEST_IMM_OP(roriw, x4, x28, 0x0000000000040000, 0x40000, 0x0, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x0000000000040000) 


    # Testcase 159:  rs1:x27(0x0000000000080000), imm:0x0, result rd:x5(0x0000000000080000)
inst_159:
    TEST_IMM_OP(roriw, x5, x27, 0x0000000000080000, 0x80000, 0x0, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x0000000000080000) 





    # address for test results
    # la x1, test_33_res
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_33_0)


    # Testcase 160:  rs1:x26(0x0000000000100000), imm:0x0, result rd:x6(0x0000000000100000)
inst_160:
    TEST_IMM_OP(roriw, x6, x26, 0x0000000000100000, 0x100000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000000100000) 


    # Testcase 161:  rs1:x25(0x0000000000200000), imm:0x0, result rd:x7(0x0000000000200000)
inst_161:
    TEST_IMM_OP(roriw, x7, x25, 0x0000000000200000, 0x200000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000000200000) 


    # Testcase 162:  rs1:x24(0x0000000000400000), imm:0x0, result rd:x8(0x0000000000400000)
inst_162:
    TEST_IMM_OP(roriw, x8, x24, 0x0000000000400000, 0x400000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000000400000) 


    # Testcase 163:  rs1:x23(0x0000000000800000), imm:0x0, result rd:x9(0x0000000000800000)
inst_163:
    TEST_IMM_OP(roriw, x9, x23, 0x0000000000800000, 0x800000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000000800000) 


    # Testcase 164:  rs1:x22(0x0000000001000000), imm:0x0, result rd:x10(0x0000000001000000)
inst_164:
    TEST_IMM_OP(roriw, x10, x22, 0x0000000001000000, 0x1000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000001000000) 





    # address for test results
    # la x1, test_34_res
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_34_0)


    # Testcase 165:  rs1:x21(0x0000000002000000), imm:0x0, result rd:x11(0x0000000002000000)
inst_165:
    TEST_IMM_OP(roriw, x11, x21, 0x0000000002000000, 0x2000000, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x0000000002000000) 


    # Testcase 166:  rs1:x20(0x0000000004000000), imm:0x0, result rd:x12(0x0000000004000000)
inst_166:
    TEST_IMM_OP(roriw, x12, x20, 0x0000000004000000, 0x4000000, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x0000000004000000) 


    # Testcase 167:  rs1:x19(0x0000000008000000), imm:0x0, result rd:x13(0x0000000008000000)
inst_167:
    TEST_IMM_OP(roriw, x13, x19, 0x0000000008000000, 0x8000000, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x0000000008000000) 


    # Testcase 168:  rs1:x18(0x0000000010000000), imm:0x0, result rd:x14(0x0000000010000000)
inst_168:
    TEST_IMM_OP(roriw, x14, x18, 0x0000000010000000, 0x10000000, 0x0, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x0000000010000000) 


    # Testcase 169:  rs1:x17(0x0000000020000000), imm:0x0, result rd:x15(0x0000000020000000)
inst_169:
    TEST_IMM_OP(roriw, x15, x17, 0x0000000020000000, 0x20000000, 0x0, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x0000000020000000) 





    # address for test results
    # la x2, test_35_res
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x2,signature_35_0)


    # Testcase 170:  rs1:x16(0x0000000040000000), imm:0x0, result rd:x16(0x0000000040000000)
inst_170:
    TEST_IMM_OP(roriw, x16, x16, 0x0000000040000000, 0x40000000, 0x0, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x0000000040000000) 


    # Testcase 171:  rs1:x15(0x0000000080000000), imm:0x0, result rd:x17(0xffffffff80000000)
inst_171:
    TEST_IMM_OP(roriw, x17, x15, 0xffffffff80000000, 0x80000000, 0x0, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0xffffffff80000000) 


    # Testcase 172:  rs1:x14(0x0000000100000000), imm:0x0, result rd:x18(0x0000000000000000)
inst_172:
    TEST_IMM_OP(roriw, x18, x14, 0x0000000000000000, 0x100000000, 0x0, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x0000000000000000) 


    # Testcase 173:  rs1:x13(0x0000000200000000), imm:0x0, result rd:x19(0x0000000000000000)
inst_173:
    TEST_IMM_OP(roriw, x19, x13, 0x0000000000000000, 0x200000000, 0x0, x2, 24, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x0000000000000000) 


    # Testcase 174:  rs1:x12(0x0000000400000000), imm:0x0, result rd:x20(0x0000000000000000)
inst_174:
    TEST_IMM_OP(roriw, x20, x12, 0x0000000000000000, 0x400000000, 0x0, x2, 32, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x0000000000000000) 





    # address for test results
    # la x1, test_36_res
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_36_0)


    # Testcase 175:  rs1:x11(0x0000000800000000), imm:0x0, result rd:x21(0x0000000000000000)
inst_175:
    TEST_IMM_OP(roriw, x21, x11, 0x0000000000000000, 0x800000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000000000000) 


    # Testcase 176:  rs1:x10(0x0000001000000000), imm:0x0, result rd:x22(0x0000000000000000)
inst_176:
    TEST_IMM_OP(roriw, x22, x10, 0x0000000000000000, 0x1000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000000000000) 


    # Testcase 177:  rs1:x9(0x0000002000000000), imm:0x0, result rd:x23(0x0000000000000000)
inst_177:
    TEST_IMM_OP(roriw, x23, x9, 0x0000000000000000, 0x2000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000000000000) 


    # Testcase 178:  rs1:x8(0x0000004000000000), imm:0x0, result rd:x24(0x0000000000000000)
inst_178:
    TEST_IMM_OP(roriw, x24, x8, 0x0000000000000000, 0x4000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000000000000) 


    # Testcase 179:  rs1:x7(0x0000008000000000), imm:0x0, result rd:x25(0x0000000000000000)
inst_179:
    TEST_IMM_OP(roriw, x25, x7, 0x0000000000000000, 0x8000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000000000000) 





    # address for test results
    # la x1, test_37_res
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_37_0)


    # Testcase 180:  rs1:x6(0x0000010000000000), imm:0x0, result rd:x26(0x0000000000000000)
inst_180:
    TEST_IMM_OP(roriw, x26, x6, 0x0000000000000000, 0x10000000000, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x0000000000000000) 


    # Testcase 181:  rs1:x5(0x0000020000000000), imm:0x0, result rd:x27(0x0000000000000000)
inst_181:
    TEST_IMM_OP(roriw, x27, x5, 0x0000000000000000, 0x20000000000, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x0000000000000000) 


    # Testcase 182:  rs1:x4(0x0000040000000000), imm:0x0, result rd:x28(0x0000000000000000)
inst_182:
    TEST_IMM_OP(roriw, x28, x4, 0x0000000000000000, 0x40000000000, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x0000000000000000) 


    # Testcase 183:  rs1:x3(0x0000080000000000), imm:0x0, result rd:x29(0x0000000000000000)
inst_183:
    TEST_IMM_OP(roriw, x29, x3, 0x0000000000000000, 0x80000000000, 0x0, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x0000000000000000) 


    # Testcase 184:  rs1:x2(0x0000100000000000), imm:0x0, result rd:x30(0x0000000000000000)
inst_184:
    TEST_IMM_OP(roriw, x30, x2, 0x0000000000000000, 0x100000000000, 0x0, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000000000000000) 





    # address for test results
    # la x5, test_38_res
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x5,signature_38_0)


    # Testcase 185:  rs1:x1(0x0000200000000000), imm:0x0, result rd:x31(0x0000000000000000)
inst_185:
    TEST_IMM_OP(roriw, x31, x1, 0x0000000000000000, 0x200000000000, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x0000000000000000) 


    # Testcase 186:  rs1:x31(0x0000400000000000), imm:0x0, result rd:x1(0x0000000000000000)
inst_186:
    TEST_IMM_OP(roriw, x1, x31, 0x0000000000000000, 0x400000000000, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x0000000000000000) 


    # Testcase 187:  rs1:x30(0x0000800000000000), imm:0x0, result rd:x2(0x0000000000000000)
inst_187:
    TEST_IMM_OP(roriw, x2, x30, 0x0000000000000000, 0x800000000000, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x0000000000000000) 


    # Testcase 188:  rs1:x29(0x0001000000000000), imm:0x0, result rd:x3(0x0000000000000000)
inst_188:
    TEST_IMM_OP(roriw, x3, x29, 0x0000000000000000, 0x1000000000000, 0x0, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x0000000000000000) 


    # Testcase 189:  rs1:x28(0x0002000000000000), imm:0x0, result rd:x4(0x0000000000000000)
inst_189:
    TEST_IMM_OP(roriw, x4, x28, 0x0000000000000000, 0x2000000000000, 0x0, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x0000000000000000) 





    # address for test results
    # la x1, test_39_res
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_39_0)


    # Testcase 190:  rs1:x27(0x0004000000000000), imm:0x0, result rd:x5(0x0000000000000000)
inst_190:
    TEST_IMM_OP(roriw, x5, x27, 0x0000000000000000, 0x4000000000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0000000000000000) 


    # Testcase 191:  rs1:x26(0x0008000000000000), imm:0x0, result rd:x6(0x0000000000000000)
inst_191:
    TEST_IMM_OP(roriw, x6, x26, 0x0000000000000000, 0x8000000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000000000000) 


    # Testcase 192:  rs1:x25(0x0010000000000000), imm:0x0, result rd:x7(0x0000000000000000)
inst_192:
    TEST_IMM_OP(roriw, x7, x25, 0x0000000000000000, 0x10000000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000000000000) 


    # Testcase 193:  rs1:x24(0x0020000000000000), imm:0x0, result rd:x8(0x0000000000000000)
inst_193:
    TEST_IMM_OP(roriw, x8, x24, 0x0000000000000000, 0x20000000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000000000000) 


    # Testcase 194:  rs1:x23(0x0040000000000000), imm:0x0, result rd:x9(0x0000000000000000)
inst_194:
    TEST_IMM_OP(roriw, x9, x23, 0x0000000000000000, 0x40000000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000000000000) 





    # address for test results
    # la x1, test_40_res
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_40_0)


    # Testcase 195:  rs1:x22(0x0080000000000000), imm:0x0, result rd:x10(0x0000000000000000)
inst_195:
    TEST_IMM_OP(roriw, x10, x22, 0x0000000000000000, 0x80000000000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000000000000) 


    # Testcase 196:  rs1:x21(0x0100000000000000), imm:0x0, result rd:x11(0x0000000000000000)
inst_196:
    TEST_IMM_OP(roriw, x11, x21, 0x0000000000000000, 0x100000000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0000000000000000) 


    # Testcase 197:  rs1:x20(0x0200000000000000), imm:0x0, result rd:x12(0x0000000000000000)
inst_197:
    TEST_IMM_OP(roriw, x12, x20, 0x0000000000000000, 0x200000000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0000000000000000) 


    # Testcase 198:  rs1:x19(0x0400000000000000), imm:0x0, result rd:x13(0x0000000000000000)
inst_198:
    TEST_IMM_OP(roriw, x13, x19, 0x0000000000000000, 0x400000000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0000000000000000) 


    # Testcase 199:  rs1:x18(0x0800000000000000), imm:0x0, result rd:x14(0x0000000000000000)
inst_199:
    TEST_IMM_OP(roriw, x14, x18, 0x0000000000000000, 0x800000000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x0000000000000000) 





    # address for test results
    # la x3, test_41_res
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x3,signature_41_0)


    # Testcase 200:  rs1:x17(0x1000000000000000), imm:0x0, result rd:x15(0x0000000000000000)
inst_200:
    TEST_IMM_OP(roriw, x15, x17, 0x0000000000000000, 0x1000000000000000, 0x0, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x0000000000000000) 


    # Testcase 201:  rs1:x16(0x2000000000000000), imm:0x0, result rd:x16(0x0000000000000000)
inst_201:
    TEST_IMM_OP(roriw, x16, x16, 0x0000000000000000, 0x2000000000000000, 0x0, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x0000000000000000) 


    # Testcase 202:  rs1:x15(0x4000000000000000), imm:0x0, result rd:x17(0x0000000000000000)
inst_202:
    TEST_IMM_OP(roriw, x17, x15, 0x0000000000000000, 0x4000000000000000, 0x0, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x0000000000000000) 


    # Testcase 203:  rs1:x14(0x8000000000000000), imm:0x0, result rd:x18(0x0000000000000000)
inst_203:
    TEST_IMM_OP(roriw, x18, x14, 0x0000000000000000, 0x8000000000000000, 0x0, x3, 24, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x0000000000000000) 


    # Testcase 204:  rs1:x13(0x0000000000000000), imm:0x0, result rd:x19(0x0000000000000000)
inst_204:
    TEST_IMM_OP(roriw, x19, x13, 0x0000000000000000, 0x0, 0x0, x3, 32, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x0000000000000000) 





    # address for test results
    # la x1, test_42_res
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_42_0)


    # Testcase 205:  rs1:x12(0xfffffffffffffffe), imm:0x0, result rd:x20(0xfffffffffffffffe)
inst_205:
    TEST_IMM_OP(roriw, x20, x12, 0xfffffffffffffffe, 0xfffffffffffffffe, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xfffffffffffffffe) 


    # Testcase 206:  rs1:x11(0xfffffffffffffffd), imm:0x0, result rd:x21(0xfffffffffffffffd)
inst_206:
    TEST_IMM_OP(roriw, x21, x11, 0xfffffffffffffffd, 0xfffffffffffffffd, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xfffffffffffffffd) 


    # Testcase 207:  rs1:x10(0xfffffffffffffffb), imm:0x0, result rd:x22(0xfffffffffffffffb)
inst_207:
    TEST_IMM_OP(roriw, x22, x10, 0xfffffffffffffffb, 0xfffffffffffffffb, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xfffffffffffffffb) 


    # Testcase 208:  rs1:x9(0xfffffffffffffff7), imm:0x0, result rd:x23(0xfffffffffffffff7)
inst_208:
    TEST_IMM_OP(roriw, x23, x9, 0xfffffffffffffff7, 0xfffffffffffffff7, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xfffffffffffffff7) 


    # Testcase 209:  rs1:x8(0xffffffffffffffef), imm:0x0, result rd:x24(0xffffffffffffffef)
inst_209:
    TEST_IMM_OP(roriw, x24, x8, 0xffffffffffffffef, 0xffffffffffffffef, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffffffffffffffef) 





    # address for test results
    # la x1, test_43_res
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_43_0)


    # Testcase 210:  rs1:x7(0xffffffffffffffdf), imm:0x0, result rd:x25(0xffffffffffffffdf)
inst_210:
    TEST_IMM_OP(roriw, x25, x7, 0xffffffffffffffdf, 0xffffffffffffffdf, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffffffffffffffdf) 


    # Testcase 211:  rs1:x6(0xffffffffffffffbf), imm:0x0, result rd:x26(0xffffffffffffffbf)
inst_211:
    TEST_IMM_OP(roriw, x26, x6, 0xffffffffffffffbf, 0xffffffffffffffbf, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffffffffffffffbf) 


    # Testcase 212:  rs1:x5(0xffffffffffffff7f), imm:0x0, result rd:x27(0xffffffffffffff7f)
inst_212:
    TEST_IMM_OP(roriw, x27, x5, 0xffffffffffffff7f, 0xffffffffffffff7f, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffffffffffffff7f) 


    # Testcase 213:  rs1:x4(0xfffffffffffffeff), imm:0x0, result rd:x28(0xfffffffffffffeff)
inst_213:
    TEST_IMM_OP(roriw, x28, x4, 0xfffffffffffffeff, 0xfffffffffffffeff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xfffffffffffffeff) 


    # Testcase 214:  rs1:x3(0xfffffffffffffdff), imm:0x0, result rd:x29(0xfffffffffffffdff)
inst_214:
    TEST_IMM_OP(roriw, x29, x3, 0xfffffffffffffdff, 0xfffffffffffffdff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0xfffffffffffffdff) 





    # address for test results
    # la x4, test_44_res
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x4,signature_44_0)


    # Testcase 215:  rs1:x2(0xfffffffffffffbff), imm:0x0, result rd:x30(0xfffffffffffffbff)
inst_215:
    TEST_IMM_OP(roriw, x30, x2, 0xfffffffffffffbff, 0xfffffffffffffbff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xfffffffffffffbff) 


    # Testcase 216:  rs1:x1(0xfffffffffffff7ff), imm:0x0, result rd:x31(0xfffffffffffff7ff)
inst_216:
    TEST_IMM_OP(roriw, x31, x1, 0xfffffffffffff7ff, 0xfffffffffffff7ff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xfffffffffffff7ff) 


    # Testcase 217:  rs1:x31(0xffffffffffffefff), imm:0x0, result rd:x1(0xffffffffffffefff)
inst_217:
    TEST_IMM_OP(roriw, x1, x31, 0xffffffffffffefff, 0xffffffffffffefff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xffffffffffffefff) 


    # Testcase 218:  rs1:x30(0xffffffffffffdfff), imm:0x0, result rd:x2(0xffffffffffffdfff)
inst_218:
    TEST_IMM_OP(roriw, x2, x30, 0xffffffffffffdfff, 0xffffffffffffdfff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xffffffffffffdfff) 


    # Testcase 219:  rs1:x29(0xffffffffffffbfff), imm:0x0, result rd:x3(0xffffffffffffbfff)
inst_219:
    TEST_IMM_OP(roriw, x3, x29, 0xffffffffffffbfff, 0xffffffffffffbfff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0xffffffffffffbfff) 





    # address for test results
    # la x1, test_45_res
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_45_0)


    # Testcase 220:  rs1:x28(0xffffffffffff7fff), imm:0x0, result rd:x4(0xffffffffffff7fff)
inst_220:
    TEST_IMM_OP(roriw, x4, x28, 0xffffffffffff7fff, 0xffffffffffff7fff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xffffffffffff7fff) 


    # Testcase 221:  rs1:x27(0xfffffffffffeffff), imm:0x0, result rd:x5(0xfffffffffffeffff)
inst_221:
    TEST_IMM_OP(roriw, x5, x27, 0xfffffffffffeffff, 0xfffffffffffeffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xfffffffffffeffff) 


    # Testcase 222:  rs1:x26(0xfffffffffffdffff), imm:0x0, result rd:x6(0xfffffffffffdffff)
inst_222:
    TEST_IMM_OP(roriw, x6, x26, 0xfffffffffffdffff, 0xfffffffffffdffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xfffffffffffdffff) 


    # Testcase 223:  rs1:x25(0xfffffffffffbffff), imm:0x0, result rd:x7(0xfffffffffffbffff)
inst_223:
    TEST_IMM_OP(roriw, x7, x25, 0xfffffffffffbffff, 0xfffffffffffbffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfffffffffffbffff) 


    # Testcase 224:  rs1:x24(0xfffffffffff7ffff), imm:0x0, result rd:x8(0xfffffffffff7ffff)
inst_224:
    TEST_IMM_OP(roriw, x8, x24, 0xfffffffffff7ffff, 0xfffffffffff7ffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xfffffffffff7ffff) 





    # address for test results
    # la x1, test_46_res
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_46_0)


    # Testcase 225:  rs1:x23(0xffffffffffefffff), imm:0x0, result rd:x9(0xffffffffffefffff)
inst_225:
    TEST_IMM_OP(roriw, x9, x23, 0xffffffffffefffff, 0xffffffffffefffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xffffffffffefffff) 


    # Testcase 226:  rs1:x22(0xffffffffffdfffff), imm:0x0, result rd:x10(0xffffffffffdfffff)
inst_226:
    TEST_IMM_OP(roriw, x10, x22, 0xffffffffffdfffff, 0xffffffffffdfffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffffffffdfffff) 


    # Testcase 227:  rs1:x21(0xffffffffffbfffff), imm:0x0, result rd:x11(0xffffffffffbfffff)
inst_227:
    TEST_IMM_OP(roriw, x11, x21, 0xffffffffffbfffff, 0xffffffffffbfffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffffffffffbfffff) 


    # Testcase 228:  rs1:x20(0xffffffffff7fffff), imm:0x0, result rd:x12(0xffffffffff7fffff)
inst_228:
    TEST_IMM_OP(roriw, x12, x20, 0xffffffffff7fffff, 0xffffffffff7fffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xffffffffff7fffff) 


    # Testcase 229:  rs1:x19(0xfffffffffeffffff), imm:0x0, result rd:x13(0xfffffffffeffffff)
inst_229:
    TEST_IMM_OP(roriw, x13, x19, 0xfffffffffeffffff, 0xfffffffffeffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xfffffffffeffffff) 





    # address for test results
    # la x4, test_47_res
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x4,signature_47_0)


    # Testcase 230:  rs1:x18(0xfffffffffdffffff), imm:0x0, result rd:x14(0xfffffffffdffffff)
inst_230:
    TEST_IMM_OP(roriw, x14, x18, 0xfffffffffdffffff, 0xfffffffffdffffff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xfffffffffdffffff) 


    # Testcase 231:  rs1:x17(0xfffffffffbffffff), imm:0x0, result rd:x15(0xfffffffffbffffff)
inst_231:
    TEST_IMM_OP(roriw, x15, x17, 0xfffffffffbffffff, 0xfffffffffbffffff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0xfffffffffbffffff) 


    # Testcase 232:  rs1:x16(0xfffffffff7ffffff), imm:0x0, result rd:x16(0xfffffffff7ffffff)
inst_232:
    TEST_IMM_OP(roriw, x16, x16, 0xfffffffff7ffffff, 0xfffffffff7ffffff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0xfffffffff7ffffff) 


    # Testcase 233:  rs1:x15(0xffffffffefffffff), imm:0x0, result rd:x17(0xffffffffefffffff)
inst_233:
    TEST_IMM_OP(roriw, x17, x15, 0xffffffffefffffff, 0xffffffffefffffff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0xffffffffefffffff) 


    # Testcase 234:  rs1:x14(0xffffffffdfffffff), imm:0x0, result rd:x18(0xffffffffdfffffff)
inst_234:
    TEST_IMM_OP(roriw, x18, x14, 0xffffffffdfffffff, 0xffffffffdfffffff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0xffffffffdfffffff) 





    # address for test results
    # la x1, test_48_res
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_48_0)


    # Testcase 235:  rs1:x13(0xffffffffbfffffff), imm:0x0, result rd:x19(0xffffffffbfffffff)
inst_235:
    TEST_IMM_OP(roriw, x19, x13, 0xffffffffbfffffff, 0xffffffffbfffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xffffffffbfffffff) 


    # Testcase 236:  rs1:x12(0xffffffff7fffffff), imm:0x0, result rd:x20(0x000000007fffffff)
inst_236:
    TEST_IMM_OP(roriw, x20, x12, 0x000000007fffffff, 0xffffffff7fffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x000000007fffffff) 


    # Testcase 237:  rs1:x11(0xfffffffeffffffff), imm:0x0, result rd:x21(0xffffffffffffffff)
inst_237:
    TEST_IMM_OP(roriw, x21, x11, 0xffffffffffffffff, 0xfffffffeffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xffffffffffffffff) 


    # Testcase 238:  rs1:x10(0xfffffffdffffffff), imm:0x0, result rd:x22(0xffffffffffffffff)
inst_238:
    TEST_IMM_OP(roriw, x22, x10, 0xffffffffffffffff, 0xfffffffdffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffffffffffffffff) 


    # Testcase 239:  rs1:x9(0xfffffffbffffffff), imm:0x0, result rd:x23(0xffffffffffffffff)
inst_239:
    TEST_IMM_OP(roriw, x23, x9, 0xffffffffffffffff, 0xfffffffbffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xffffffffffffffff) 





    # address for test results
    # la x1, test_49_res
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_49_0)


    # Testcase 240:  rs1:x8(0xfffffff7ffffffff), imm:0x0, result rd:x24(0xffffffffffffffff)
inst_240:
    TEST_IMM_OP(roriw, x24, x8, 0xffffffffffffffff, 0xfffffff7ffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffffffffffffffff) 


    # Testcase 241:  rs1:x7(0xffffffefffffffff), imm:0x0, result rd:x25(0xffffffffffffffff)
inst_241:
    TEST_IMM_OP(roriw, x25, x7, 0xffffffffffffffff, 0xffffffefffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffffffffffffffff) 


    # Testcase 242:  rs1:x6(0xffffffdfffffffff), imm:0x0, result rd:x26(0xffffffffffffffff)
inst_242:
    TEST_IMM_OP(roriw, x26, x6, 0xffffffffffffffff, 0xffffffdfffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffffffffffffffff) 


    # Testcase 243:  rs1:x5(0xffffffbfffffffff), imm:0x0, result rd:x27(0xffffffffffffffff)
inst_243:
    TEST_IMM_OP(roriw, x27, x5, 0xffffffffffffffff, 0xffffffbfffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffffffffffffffff) 


    # Testcase 244:  rs1:x4(0xffffff7fffffffff), imm:0x0, result rd:x28(0xffffffffffffffff)
inst_244:
    TEST_IMM_OP(roriw, x28, x4, 0xffffffffffffffff, 0xffffff7fffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xffffffffffffffff) 





    # address for test results
    # la x4, test_50_res
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x4,signature_50_0)


    # Testcase 245:  rs1:x3(0xfffffeffffffffff), imm:0x0, result rd:x29(0xffffffffffffffff)
inst_245:
    TEST_IMM_OP(roriw, x29, x3, 0xffffffffffffffff, 0xfffffeffffffffff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0xffffffffffffffff) 


    # Testcase 246:  rs1:x2(0xfffffdffffffffff), imm:0x0, result rd:x30(0xffffffffffffffff)
inst_246:
    TEST_IMM_OP(roriw, x30, x2, 0xffffffffffffffff, 0xfffffdffffffffff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xffffffffffffffff) 


    # Testcase 247:  rs1:x1(0xfffffbffffffffff), imm:0x0, result rd:x31(0xffffffffffffffff)
inst_247:
    TEST_IMM_OP(roriw, x31, x1, 0xffffffffffffffff, 0xfffffbffffffffff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xffffffffffffffff) 


    # Testcase 248:  rs1:x31(0xfffff7ffffffffff), imm:0x0, result rd:x1(0xffffffffffffffff)
inst_248:
    TEST_IMM_OP(roriw, x1, x31, 0xffffffffffffffff, 0xfffff7ffffffffff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xffffffffffffffff) 


    # Testcase 249:  rs1:x30(0xffffefffffffffff), imm:0x0, result rd:x2(0xffffffffffffffff)
inst_249:
    TEST_IMM_OP(roriw, x2, x30, 0xffffffffffffffff, 0xffffefffffffffff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xffffffffffffffff) 





    # address for test results
    # la x1, test_51_res
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_51_0)


    # Testcase 250:  rs1:x29(0xffffdfffffffffff), imm:0x0, result rd:x3(0xffffffffffffffff)
inst_250:
    TEST_IMM_OP(roriw, x3, x29, 0xffffffffffffffff, 0xffffdfffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0xffffffffffffffff) 


    # Testcase 251:  rs1:x28(0xffffbfffffffffff), imm:0x0, result rd:x4(0xffffffffffffffff)
inst_251:
    TEST_IMM_OP(roriw, x4, x28, 0xffffffffffffffff, 0xffffbfffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xffffffffffffffff) 


    # Testcase 252:  rs1:x27(0xffff7fffffffffff), imm:0x0, result rd:x5(0xffffffffffffffff)
inst_252:
    TEST_IMM_OP(roriw, x5, x27, 0xffffffffffffffff, 0xffff7fffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xffffffffffffffff) 


    # Testcase 253:  rs1:x26(0xfffeffffffffffff), imm:0x0, result rd:x6(0xffffffffffffffff)
inst_253:
    TEST_IMM_OP(roriw, x6, x26, 0xffffffffffffffff, 0xfffeffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xffffffffffffffff) 


    # Testcase 254:  rs1:x25(0xfffdffffffffffff), imm:0x0, result rd:x7(0xffffffffffffffff)
inst_254:
    TEST_IMM_OP(roriw, x7, x25, 0xffffffffffffffff, 0xfffdffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xffffffffffffffff) 





    # address for test results
    # la x1, test_52_res
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_52_0)


    # Testcase 255:  rs1:x24(0xfffbffffffffffff), imm:0x0, result rd:x8(0xffffffffffffffff)
inst_255:
    TEST_IMM_OP(roriw, x8, x24, 0xffffffffffffffff, 0xfffbffffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffffffffffffffff) 


    # Testcase 256:  rs1:x23(0xfff7ffffffffffff), imm:0x0, result rd:x9(0xffffffffffffffff)
inst_256:
    TEST_IMM_OP(roriw, x9, x23, 0xffffffffffffffff, 0xfff7ffffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xffffffffffffffff) 


    # Testcase 257:  rs1:x22(0xffefffffffffffff), imm:0x0, result rd:x10(0xffffffffffffffff)
inst_257:
    TEST_IMM_OP(roriw, x10, x22, 0xffffffffffffffff, 0xffefffffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffffffffffffff) 


    # Testcase 258:  rs1:x21(0xffdfffffffffffff), imm:0x0, result rd:x11(0xffffffffffffffff)
inst_258:
    TEST_IMM_OP(roriw, x11, x21, 0xffffffffffffffff, 0xffdfffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffffffffffffffff) 


    # Testcase 259:  rs1:x20(0xffbfffffffffffff), imm:0x0, result rd:x12(0xffffffffffffffff)
inst_259:
    TEST_IMM_OP(roriw, x12, x20, 0xffffffffffffffff, 0xffbfffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xffffffffffffffff) 





    # address for test results
    # la x5, test_53_res
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x5,signature_53_0)


    # Testcase 260:  rs1:x19(0xff7fffffffffffff), imm:0x8, result rd:x13(0xffffffffffffffff)
inst_260:
    TEST_IMM_OP(roriw, x13, x19, 0xffffffffffffffff, 0xff7fffffffffffff, 0x8, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0xffffffffffffffff) 


    # Testcase 261:  rs1:x18(0xfeffffffffffffff), imm:0x4, result rd:x14(0xffffffffffffffff)
inst_261:
    TEST_IMM_OP(roriw, x14, x18, 0xffffffffffffffff, 0xfeffffffffffffff, 0x4, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0xffffffffffffffff) 


    # Testcase 262:  rs1:x17(0xfdffffffffffffff), imm:0x2, result rd:x15(0xffffffffffffffff)
inst_262:
    TEST_IMM_OP(roriw, x15, x17, 0xffffffffffffffff, 0xfdffffffffffffff, 0x2, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0xffffffffffffffff) 


    # Testcase 263:  rs1:x16(0xfbffffffffffffff), imm:0x1, result rd:x16(0xffffffffffffffff)
inst_263:
    TEST_IMM_OP(roriw, x16, x16, 0xffffffffffffffff, 0xfbffffffffffffff, 0x1, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0xffffffffffffffff) 


    # Testcase 264:  rs1:x15(0xf7ffffffffffffff), imm:0x3, result rd:x17(0xffffffffffffffff)
inst_264:
    TEST_IMM_OP(roriw, x17, x15, 0xffffffffffffffff, 0xf7ffffffffffffff, 0x3, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0xffffffffffffffff) 





    # address for test results
    # la x1, test_54_res
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_54_0)


    # Testcase 265:  rs1:x14(0xefffffffffffffff), imm:0x1b, result rd:x18(0xffffffffffffffff)
inst_265:
    TEST_IMM_OP(roriw, x18, x14, 0xffffffffffffffff, 0xefffffffffffffff, 0x1b, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xffffffffffffffff) 


    # Testcase 266:  rs1:x13(0xdfffffffffffffff), imm:0x0, result rd:x19(0xffffffffffffffff)
inst_266:
    TEST_IMM_OP(roriw, x19, x13, 0xffffffffffffffff, 0xdfffffffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xffffffffffffffff) 


    # Testcase 267:  rs1:x12(0xbfffffffffffffff), imm:0x3, result rd:x20(0xffffffffffffffff)
inst_267:
    TEST_IMM_OP(roriw, x20, x12, 0xffffffffffffffff, 0xbfffffffffffffff, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xffffffffffffffff) 


    # Testcase 268:  rs1:x11(0x7fffffffffffffff), imm:0xf, result rd:x21(0xffffffffffffffff)
inst_268:
    TEST_IMM_OP(roriw, x21, x11, 0xffffffffffffffff, 0x7fffffffffffffff, 0xf, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xffffffffffffffff) 


    # Testcase 269:  rs1:x10(0xffffffffffffffff), imm:0xf, result rd:x22(0xffffffffffffffff)
inst_269:
    TEST_IMM_OP(roriw, x22, x10, 0xffffffffffffffff, 0xffffffffffffffff, 0xf, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffffffffffffffff) 





    # address for test results
    # la x1, test_55_res
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
	RVTEST_SIGBASE(x1,signature_55_0)


    # Testcase 270:  rs1:x9(0x10fd3dedadea5195), imm:0xb, result rd:x23(0x0000000032b5bd4a)
inst_270:
    TEST_IMM_OP(roriw, x23, x9, 0x0000000032b5bd4a, 0x10fd3dedadea5195, 0xb, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000032b5bd4a) 


    # Testcase 271:  rs1:x8(0xbd295ce2d2ffbec1), imm:0x1b, result rd:x0(0x0000000000000000)
inst_271:
    TEST_IMM_OP(roriw, x0, x8, 0x0000000000000000, 0xbd295ce2d2ffbec1, 0x1b, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x0000000000000000) 


    # Testcase 272:  rs1:x7(0xc9649f05a8e1a8bb), imm:0x1, result rd:x25(0xffffffffd470d45d)
inst_272:
    TEST_IMM_OP(roriw, x25, x7, 0xffffffffd470d45d, 0xc9649f05a8e1a8bb, 0x1, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffffffffd470d45d) 


    # Testcase 273:  rs1:x0(0x3541291848c99fcb), imm:0x15, result rd:x26(0x0000000000000000)
inst_273:
    TEST_IMM_OP(roriw, x26, x0, 0x0000000000000000, 0x3541291848c99fcb, 0x15, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0000000000000000) 



	
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN




signature_1_0:
	.fill 5, 8, 0xdeadbeef
signature_2_0:
	.fill 5, 8, 0xdeadbeef
signature_3_0:
	.fill 5, 8, 0xdeadbeef
signature_4_0:
	.fill 5, 8, 0xdeadbeef
signature_5_0:
	.fill 5, 8, 0xdeadbeef
signature_6_0:
	.fill 5, 8, 0xdeadbeef
signature_7_0:
	.fill 5, 8, 0xdeadbeef
signature_8_0:
	.fill 5, 8, 0xdeadbeef
signature_9_0:
	.fill 5, 8, 0xdeadbeef
signature_10_0:
	.fill 5, 8, 0xdeadbeef
signature_11_0:
	.fill 5, 8, 0xdeadbeef
signature_12_0:
	.fill 5, 8, 0xdeadbeef
signature_13_0:
	.fill 5, 8, 0xdeadbeef
signature_14_0:
	.fill 5, 8, 0xdeadbeef
signature_15_0:
	.fill 5, 8, 0xdeadbeef
signature_16_0:
	.fill 5, 8, 0xdeadbeef
signature_17_0:
	.fill 5, 8, 0xdeadbeef
signature_18_0:
	.fill 5, 8, 0xdeadbeef
signature_19_0:
	.fill 5, 8, 0xdeadbeef
signature_20_0:
	.fill 5, 8, 0xdeadbeef
signature_21_0:
	.fill 5, 8, 0xdeadbeef
signature_22_0:
	.fill 5, 8, 0xdeadbeef
signature_23_0:
	.fill 5, 8, 0xdeadbeef
signature_24_0:
	.fill 5, 8, 0xdeadbeef
signature_25_0:
	.fill 5, 8, 0xdeadbeef
signature_26_0:
	.fill 5, 8, 0xdeadbeef
signature_27_0:
	.fill 5, 8, 0xdeadbeef
signature_28_0:
	.fill 5, 8, 0xdeadbeef
signature_29_0:
	.fill 5, 8, 0xdeadbeef
signature_30_0:
	.fill 5, 8, 0xdeadbeef
signature_31_0:
	.fill 5, 8, 0xdeadbeef
signature_32_0:
	.fill 5, 8, 0xdeadbeef
signature_33_0:
	.fill 5, 8, 0xdeadbeef
signature_34_0:
	.fill 5, 8, 0xdeadbeef
signature_35_0:
	.fill 5, 8, 0xdeadbeef
signature_36_0:
	.fill 5, 8, 0xdeadbeef
signature_37_0:
	.fill 5, 8, 0xdeadbeef
signature_38_0:
	.fill 5, 8, 0xdeadbeef
signature_39_0:
	.fill 5, 8, 0xdeadbeef
signature_40_0:
	.fill 5, 8, 0xdeadbeef
signature_41_0:
	.fill 5, 8, 0xdeadbeef
signature_42_0:
	.fill 5, 8, 0xdeadbeef
signature_43_0:
	.fill 5, 8, 0xdeadbeef
signature_44_0:
	.fill 5, 8, 0xdeadbeef
signature_45_0:
	.fill 5, 8, 0xdeadbeef
signature_46_0:
	.fill 5, 8, 0xdeadbeef
signature_47_0:
	.fill 5, 8, 0xdeadbeef
signature_48_0:
	.fill 5, 8, 0xdeadbeef
signature_49_0:
	.fill 5, 8, 0xdeadbeef
signature_50_0:
	.fill 5, 8, 0xdeadbeef
signature_51_0:
	.fill 5, 8, 0xdeadbeef
signature_52_0:
	.fill 5, 8, 0xdeadbeef
signature_53_0:
	.fill 5, 8, 0xdeadbeef
signature_54_0:
	.fill 5, 8, 0xdeadbeef
signature_55_0:
	.fill 5, 8, 0xdeadbeef


#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END

