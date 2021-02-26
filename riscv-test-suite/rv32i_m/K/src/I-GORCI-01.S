// RISC-V Architectural Validation Test I-GORCI-01
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
// Description: Testing instruction 'gorci'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV32IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1


    # address for test results
    # la x6, test_1_res
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x6,signature_1_0)


    # Testcase 0:  rs1:x31(0x10fd3dedadea5195), imm:0x3, result rd:x1(0xffffffff)
inst_0:
    TEST_IMM_OP(gorci, x1, x31, 0xffffffff, 0x10fd3dedadea5195, 0x3, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0xffffffff) 


    # Testcase 1:  rs1:x30(0xbd295ce2d2ffbec1), imm:0x4, result rd:x2(0xffffffdd)
inst_1:
    TEST_IMM_OP(gorci, x2, x30, 0xffffffdd, 0xbd295ce2d2ffbec1, 0x4, x6, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0xffffffdd) 


    # Testcase 2:  rs1:x29(0xc9649f05a8e1a8bb), imm:0x7, result rd:x3(0xffffffff)
inst_2:
    TEST_IMM_OP(gorci, x3, x29, 0xffffffff, 0xc9649f05a8e1a8bb, 0x7, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xffffffff) 


    # Testcase 3:  rs1:x28(0x3541291848c99fcb), imm:0x3, result rd:x4(0xffffffff)
inst_3:
    TEST_IMM_OP(gorci, x4, x28, 0xffffffff, 0x3541291848c99fcb, 0x3, x6, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xffffffff) 


    # Testcase 4:  rs1:x27(0x10a24740461d524f), imm:0x4, result rd:x5(0x66dd77ff)
inst_4:
    TEST_IMM_OP(gorci, x5, x27, 0x66dd77ff, 0x10a24740461d524f, 0x4, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x66dd77ff) 





    # address for test results
    # la x1, test_2_res
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_2_0)


    # Testcase 5:  rs1:x26(0x546b0e54528a10af), imm:0x7, result rd:x6(0xffffffff)
inst_5:
    TEST_IMM_OP(gorci, x6, x26, 0xffffffff, 0x546b0e54528a10af, 0x7, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xffffffff) 


    # Testcase 6:  rs1:x25(0x73a92fd4e19bfbc3), imm:0x3, result rd:x7(0xffffffff)
inst_6:
    TEST_IMM_OP(gorci, x7, x25, 0xffffffff, 0x73a92fd4e19bfbc3, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xffffffff) 


    # Testcase 7:  rs1:x24(0x82f6747f707af2c0), imm:0x4, result rd:x8(0x77ffffcc)
inst_7:
    TEST_IMM_OP(gorci, x8, x24, 0x77ffffcc, 0x82f6747f707af2c0, 0x4, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x77ffffcc) 


    # Testcase 8:  rs1:x23(0xf5adb41aa47d105b), imm:0x7, result rd:x9(0xffffffff)
inst_8:
    TEST_IMM_OP(gorci, x9, x23, 0xffffffff, 0xf5adb41aa47d105b, 0x7, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xffffffff) 


    # Testcase 9:  rs1:x22(0xdf7f3844121bcc23), imm:0x3, result rd:x10(0xffffffff)
inst_9:
    TEST_IMM_OP(gorci, x10, x22, 0xffffffff, 0xdf7f3844121bcc23, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffffff) 





    # address for test results
    # la x1, test_3_res
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_3_0)


    # Testcase 10:  rs1:x21(0x00000001), imm:0x4, result rd:x11(0x00000011)
inst_10:
    TEST_IMM_OP(gorci, x11, x21, 0x00000011, 0x1, 0x4, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x00000011) 


    # Testcase 11:  rs1:x20(0x00000002), imm:0x7, result rd:x12(0x000000ff)
inst_11:
    TEST_IMM_OP(gorci, x12, x20, 0x000000ff, 0x2, 0x7, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x000000ff) 


    # Testcase 12:  rs1:x19(0x00000004), imm:0x3, result rd:x13(0x0000000f)
inst_12:
    TEST_IMM_OP(gorci, x13, x19, 0x0000000f, 0x4, 0x3, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x0000000f) 


    # Testcase 13:  rs1:x18(0x00000008), imm:0x4, result rd:x14(0x00000088)
inst_13:
    TEST_IMM_OP(gorci, x14, x18, 0x00000088, 0x8, 0x4, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x00000088) 


    # Testcase 14:  rs1:x17(0x00000010), imm:0x7, result rd:x15(0x000000ff)
inst_14:
    TEST_IMM_OP(gorci, x15, x17, 0x000000ff, 0x10, 0x7, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x000000ff) 





    # address for test results
    # la x2, test_4_res
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x2,signature_4_0)


    # Testcase 15:  rs1:x16(0x00000020), imm:0x3, result rd:x16(0x000000f0)
inst_15:
    TEST_IMM_OP(gorci, x16, x16, 0x000000f0, 0x20, 0x3, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x000000f0) 


    # Testcase 16:  rs1:x15(0x00000040), imm:0x4, result rd:x17(0x00000044)
inst_16:
    TEST_IMM_OP(gorci, x17, x15, 0x00000044, 0x40, 0x4, x2, 4, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x00000044) 


    # Testcase 17:  rs1:x14(0x00000080), imm:0x7, result rd:x18(0x000000ff)
inst_17:
    TEST_IMM_OP(gorci, x18, x14, 0x000000ff, 0x80, 0x7, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x000000ff) 


    # Testcase 18:  rs1:x13(0x00000100), imm:0x3, result rd:x19(0x00000f00)
inst_18:
    TEST_IMM_OP(gorci, x19, x13, 0x00000f00, 0x100, 0x3, x2, 12, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x00000f00) 


    # Testcase 19:  rs1:x12(0x00000200), imm:0x4, result rd:x20(0x00002200)
inst_19:
    TEST_IMM_OP(gorci, x20, x12, 0x00002200, 0x200, 0x4, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x00002200) 





    # address for test results
    # la x1, test_5_res
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_5_0)


    # Testcase 20:  rs1:x11(0x00000400), imm:0x7, result rd:x21(0x0000ff00)
inst_20:
    TEST_IMM_OP(gorci, x21, x11, 0x0000ff00, 0x400, 0x7, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000ff00) 


    # Testcase 21:  rs1:x10(0x00000800), imm:0x3, result rd:x22(0x00000f00)
inst_21:
    TEST_IMM_OP(gorci, x22, x10, 0x00000f00, 0x800, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000f00) 


    # Testcase 22:  rs1:x9(0x00001000), imm:0x4, result rd:x23(0x00001100)
inst_22:
    TEST_IMM_OP(gorci, x23, x9, 0x00001100, 0x1000, 0x4, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00001100) 


    # Testcase 23:  rs1:x8(0x00002000), imm:0x7, result rd:x24(0x0000ff00)
inst_23:
    TEST_IMM_OP(gorci, x24, x8, 0x0000ff00, 0x2000, 0x7, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000ff00) 


    # Testcase 24:  rs1:x7(0x00004000), imm:0x3, result rd:x25(0x0000f000)
inst_24:
    TEST_IMM_OP(gorci, x25, x7, 0x0000f000, 0x4000, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000f000) 





    # address for test results
    # la x1, test_6_res
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_6_0)


    # Testcase 25:  rs1:x6(0x00008000), imm:0x4, result rd:x26(0x00008800)
inst_25:
    TEST_IMM_OP(gorci, x26, x6, 0x00008800, 0x8000, 0x4, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x00008800) 


    # Testcase 26:  rs1:x5(0x00010000), imm:0x7, result rd:x27(0x00ff0000)
inst_26:
    TEST_IMM_OP(gorci, x27, x5, 0x00ff0000, 0x10000, 0x7, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x00ff0000) 


    # Testcase 27:  rs1:x4(0x00020000), imm:0x3, result rd:x28(0x000f0000)
inst_27:
    TEST_IMM_OP(gorci, x28, x4, 0x000f0000, 0x20000, 0x3, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x000f0000) 


    # Testcase 28:  rs1:x3(0x00040000), imm:0x4, result rd:x29(0x00440000)
inst_28:
    TEST_IMM_OP(gorci, x29, x3, 0x00440000, 0x40000, 0x4, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x00440000) 


    # Testcase 29:  rs1:x2(0x00080000), imm:0x7, result rd:x30(0x00ff0000)
inst_29:
    TEST_IMM_OP(gorci, x30, x2, 0x00ff0000, 0x80000, 0x7, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x00ff0000) 





    # address for test results
    # la x5, test_7_res
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x5,signature_7_0)


    # Testcase 30:  rs1:x1(0x00100000), imm:0x3, result rd:x31(0x00f00000)
inst_30:
    TEST_IMM_OP(gorci, x31, x1, 0x00f00000, 0x100000, 0x3, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x00f00000) 


    # Testcase 31:  rs1:x31(0x00200000), imm:0x4, result rd:x1(0x00220000)
inst_31:
    TEST_IMM_OP(gorci, x1, x31, 0x00220000, 0x200000, 0x4, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x00220000) 


    # Testcase 32:  rs1:x30(0x00400000), imm:0x7, result rd:x2(0x00ff0000)
inst_32:
    TEST_IMM_OP(gorci, x2, x30, 0x00ff0000, 0x400000, 0x7, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x00ff0000) 


    # Testcase 33:  rs1:x29(0x00800000), imm:0x3, result rd:x3(0x00f00000)
inst_33:
    TEST_IMM_OP(gorci, x3, x29, 0x00f00000, 0x800000, 0x3, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x00f00000) 


    # Testcase 34:  rs1:x28(0x01000000), imm:0x4, result rd:x4(0x11000000)
inst_34:
    TEST_IMM_OP(gorci, x4, x28, 0x11000000, 0x1000000, 0x4, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x11000000) 





    # address for test results
    # la x1, test_8_res
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_8_0)


    # Testcase 35:  rs1:x27(0x02000000), imm:0x7, result rd:x5(0xff000000)
inst_35:
    TEST_IMM_OP(gorci, x5, x27, 0xff000000, 0x2000000, 0x7, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xff000000) 


    # Testcase 36:  rs1:x26(0x04000000), imm:0x3, result rd:x6(0x0f000000)
inst_36:
    TEST_IMM_OP(gorci, x6, x26, 0x0f000000, 0x4000000, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0f000000) 


    # Testcase 37:  rs1:x25(0x08000000), imm:0x4, result rd:x7(0x88000000)
inst_37:
    TEST_IMM_OP(gorci, x7, x25, 0x88000000, 0x8000000, 0x4, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x88000000) 


    # Testcase 38:  rs1:x24(0x10000000), imm:0x7, result rd:x8(0xff000000)
inst_38:
    TEST_IMM_OP(gorci, x8, x24, 0xff000000, 0x10000000, 0x7, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xff000000) 


    # Testcase 39:  rs1:x23(0x20000000), imm:0x3, result rd:x9(0xf0000000)
inst_39:
    TEST_IMM_OP(gorci, x9, x23, 0xf0000000, 0x20000000, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xf0000000) 





    # address for test results
    # la x1, test_9_res
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_9_0)


    # Testcase 40:  rs1:x22(0x40000000), imm:0x4, result rd:x10(0x44000000)
inst_40:
    TEST_IMM_OP(gorci, x10, x22, 0x44000000, 0x40000000, 0x4, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x44000000) 


    # Testcase 41:  rs1:x21(0x80000000), imm:0x7, result rd:x11(0xff000000)
inst_41:
    TEST_IMM_OP(gorci, x11, x21, 0xff000000, 0x80000000, 0x7, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xff000000) 


    # Testcase 42:  rs1:x20(0x00000000), imm:0x3, result rd:x12(0x00000000)
inst_42:
    TEST_IMM_OP(gorci, x12, x20, 0x00000000, 0x0, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000) 


    # Testcase 43:  rs1:x19(0xfffffffe), imm:0x4, result rd:x13(0xffffffff)
inst_43:
    TEST_IMM_OP(gorci, x13, x19, 0xffffffff, 0xfffffffe, 0x4, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xffffffff) 


    # Testcase 44:  rs1:x18(0xfffffffd), imm:0x7, result rd:x14(0xffffffff)
inst_44:
    TEST_IMM_OP(gorci, x14, x18, 0xffffffff, 0xfffffffd, 0x7, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0xffffffff) 





    # address for test results
    # la x3, test_10_res
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x3,signature_10_0)


    # Testcase 45:  rs1:x17(0xfffffffb), imm:0x3, result rd:x15(0xffffffff)
inst_45:
    TEST_IMM_OP(gorci, x15, x17, 0xffffffff, 0xfffffffb, 0x3, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0xffffffff) 


    # Testcase 46:  rs1:x16(0xfffffff7), imm:0x4, result rd:x16(0xffffffff)
inst_46:
    TEST_IMM_OP(gorci, x16, x16, 0xffffffff, 0xfffffff7, 0x4, x3, 4, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0xffffffff) 


    # Testcase 47:  rs1:x15(0xffffffef), imm:0x7, result rd:x17(0xffffffff)
inst_47:
    TEST_IMM_OP(gorci, x17, x15, 0xffffffff, 0xffffffef, 0x7, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0xffffffff) 


    # Testcase 48:  rs1:x14(0xffffffdf), imm:0x3, result rd:x18(0xffffffff)
inst_48:
    TEST_IMM_OP(gorci, x18, x14, 0xffffffff, 0xffffffdf, 0x3, x3, 12, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0xffffffff) 


    # Testcase 49:  rs1:x13(0xffffffbf), imm:0x4, result rd:x19(0xffffffff)
inst_49:
    TEST_IMM_OP(gorci, x19, x13, 0xffffffff, 0xffffffbf, 0x4, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0xffffffff) 





    # address for test results
    # la x1, test_11_res
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_11_0)


    # Testcase 50:  rs1:x12(0xffffff7f), imm:0x7, result rd:x20(0xffffffff)
inst_50:
    TEST_IMM_OP(gorci, x20, x12, 0xffffffff, 0xffffff7f, 0x7, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xffffffff) 


    # Testcase 51:  rs1:x11(0xfffffeff), imm:0x3, result rd:x21(0xffffffff)
inst_51:
    TEST_IMM_OP(gorci, x21, x11, 0xffffffff, 0xfffffeff, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xffffffff) 


    # Testcase 52:  rs1:x10(0xfffffdff), imm:0x4, result rd:x22(0xffffffff)
inst_52:
    TEST_IMM_OP(gorci, x22, x10, 0xffffffff, 0xfffffdff, 0x4, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffffffff) 


    # Testcase 53:  rs1:x9(0xfffffbff), imm:0x7, result rd:x23(0xffffffff)
inst_53:
    TEST_IMM_OP(gorci, x23, x9, 0xffffffff, 0xfffffbff, 0x7, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xffffffff) 


    # Testcase 54:  rs1:x8(0xfffff7ff), imm:0x3, result rd:x24(0xffffffff)
inst_54:
    TEST_IMM_OP(gorci, x24, x8, 0xffffffff, 0xfffff7ff, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffffffff) 





    # address for test results
    # la x1, test_12_res
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_12_0)


    # Testcase 55:  rs1:x7(0xffffefff), imm:0x4, result rd:x25(0xffffffff)
inst_55:
    TEST_IMM_OP(gorci, x25, x7, 0xffffffff, 0xffffefff, 0x4, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffffffff) 


    # Testcase 56:  rs1:x6(0xffffdfff), imm:0x7, result rd:x26(0xffffffff)
inst_56:
    TEST_IMM_OP(gorci, x26, x6, 0xffffffff, 0xffffdfff, 0x7, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffffffff) 


    # Testcase 57:  rs1:x5(0xffffbfff), imm:0x3, result rd:x27(0xffffffff)
inst_57:
    TEST_IMM_OP(gorci, x27, x5, 0xffffffff, 0xffffbfff, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffffffff) 


    # Testcase 58:  rs1:x4(0xffff7fff), imm:0x4, result rd:x28(0xffffffff)
inst_58:
    TEST_IMM_OP(gorci, x28, x4, 0xffffffff, 0xffff7fff, 0x4, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xffffffff) 


    # Testcase 59:  rs1:x3(0xfffeffff), imm:0x7, result rd:x29(0xffffffff)
inst_59:
    TEST_IMM_OP(gorci, x29, x3, 0xffffffff, 0xfffeffff, 0x7, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0xffffffff) 





    # address for test results
    # la x4, test_13_res
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x4,signature_13_0)


    # Testcase 60:  rs1:x2(0xfffdffff), imm:0x3, result rd:x30(0xffffffff)
inst_60:
    TEST_IMM_OP(gorci, x30, x2, 0xffffffff, 0xfffdffff, 0x3, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xffffffff) 


    # Testcase 61:  rs1:x1(0xfffbffff), imm:0x4, result rd:x31(0xffffffff)
inst_61:
    TEST_IMM_OP(gorci, x31, x1, 0xffffffff, 0xfffbffff, 0x4, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xffffffff) 


    # Testcase 62:  rs1:x31(0xfff7ffff), imm:0x7, result rd:x1(0xffffffff)
inst_62:
    TEST_IMM_OP(gorci, x1, x31, 0xffffffff, 0xfff7ffff, 0x7, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xffffffff) 


    # Testcase 63:  rs1:x30(0xffefffff), imm:0x3, result rd:x2(0xffffffff)
inst_63:
    TEST_IMM_OP(gorci, x2, x30, 0xffffffff, 0xffefffff, 0x3, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xffffffff) 


    # Testcase 64:  rs1:x29(0xffdfffff), imm:0x4, result rd:x3(0xffffffff)
inst_64:
    TEST_IMM_OP(gorci, x3, x29, 0xffffffff, 0xffdfffff, 0x4, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0xffffffff) 





    # address for test results
    # la x1, test_14_res
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_14_0)


    # Testcase 65:  rs1:x28(0xffbfffff), imm:0x7, result rd:x4(0xffffffff)
inst_65:
    TEST_IMM_OP(gorci, x4, x28, 0xffffffff, 0xffbfffff, 0x7, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xffffffff) 


    # Testcase 66:  rs1:x27(0xff7fffff), imm:0x3, result rd:x5(0xffffffff)
inst_66:
    TEST_IMM_OP(gorci, x5, x27, 0xffffffff, 0xff7fffff, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xffffffff) 


    # Testcase 67:  rs1:x26(0xfeffffff), imm:0x3, result rd:x6(0xffffffff)
inst_67:
    TEST_IMM_OP(gorci, x6, x26, 0xffffffff, 0xfeffffff, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xffffffff) 


    # Testcase 68:  rs1:x25(0xfdffffff), imm:0x3, result rd:x7(0xffffffff)
inst_68:
    TEST_IMM_OP(gorci, x7, x25, 0xffffffff, 0xfdffffff, 0x3, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xffffffff) 


    # Testcase 69:  rs1:x24(0xfbffffff), imm:0x3, result rd:x8(0xffffffff)
inst_69:
    TEST_IMM_OP(gorci, x8, x24, 0xffffffff, 0xfbffffff, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffffffff) 





    # address for test results
    # la x1, test_15_res
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_15_0)


    # Testcase 70:  rs1:x23(0xf7ffffff), imm:0x3, result rd:x9(0xffffffff)
inst_70:
    TEST_IMM_OP(gorci, x9, x23, 0xffffffff, 0xf7ffffff, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xffffffff) 


    # Testcase 71:  rs1:x22(0xefffffff), imm:0x3, result rd:x10(0xffffffff)
inst_71:
    TEST_IMM_OP(gorci, x10, x22, 0xffffffff, 0xefffffff, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffffff) 


    # Testcase 72:  rs1:x21(0xdfffffff), imm:0x3, result rd:x11(0xffffffff)
inst_72:
    TEST_IMM_OP(gorci, x11, x21, 0xffffffff, 0xdfffffff, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffffffff) 


    # Testcase 73:  rs1:x20(0xbfffffff), imm:0x3, result rd:x12(0xffffffff)
inst_73:
    TEST_IMM_OP(gorci, x12, x20, 0xffffffff, 0xbfffffff, 0x3, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xffffffff) 


    # Testcase 74:  rs1:x19(0x7fffffff), imm:0x3, result rd:x13(0xffffffff)
inst_74:
    TEST_IMM_OP(gorci, x13, x19, 0xffffffff, 0x7fffffff, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xffffffff) 





    # address for test results
    # la x4, test_16_res
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x4,signature_16_0)


    # Testcase 75:  rs1:x18(0xffffffff), imm:0x3, result rd:x14(0xffffffff)
inst_75:
    TEST_IMM_OP(gorci, x14, x18, 0xffffffff, 0xffffffff, 0x3, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xffffffff) 


    # Testcase 76:  rs1:x17(0x00000001), imm:0x3, result rd:x15(0x0000000f)
inst_76:
    TEST_IMM_OP(gorci, x15, x17, 0x0000000f, 0x1, 0x3, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x0000000f) 


    # Testcase 77:  rs1:x16(0x00000002), imm:0x3, result rd:x16(0x0000000f)
inst_77:
    TEST_IMM_OP(gorci, x16, x16, 0x0000000f, 0x2, 0x3, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x0000000f) 


    # Testcase 78:  rs1:x15(0x00000004), imm:0x3, result rd:x17(0x0000000f)
inst_78:
    TEST_IMM_OP(gorci, x17, x15, 0x0000000f, 0x4, 0x3, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x0000000f) 


    # Testcase 79:  rs1:x14(0x00000008), imm:0x3, result rd:x18(0x0000000f)
inst_79:
    TEST_IMM_OP(gorci, x18, x14, 0x0000000f, 0x8, 0x3, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x0000000f) 





    # address for test results
    # la x1, test_17_res
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_17_0)


    # Testcase 80:  rs1:x13(0x00000010), imm:0x3, result rd:x19(0x000000f0)
inst_80:
    TEST_IMM_OP(gorci, x19, x13, 0x000000f0, 0x10, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x000000f0) 


    # Testcase 81:  rs1:x12(0x00000020), imm:0x3, result rd:x20(0x000000f0)
inst_81:
    TEST_IMM_OP(gorci, x20, x12, 0x000000f0, 0x20, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x000000f0) 


    # Testcase 82:  rs1:x11(0x00000040), imm:0x3, result rd:x21(0x000000f0)
inst_82:
    TEST_IMM_OP(gorci, x21, x11, 0x000000f0, 0x40, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x000000f0) 


    # Testcase 83:  rs1:x10(0x00000080), imm:0x3, result rd:x22(0x000000f0)
inst_83:
    TEST_IMM_OP(gorci, x22, x10, 0x000000f0, 0x80, 0x3, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x000000f0) 


    # Testcase 84:  rs1:x9(0x00000100), imm:0x3, result rd:x23(0x00000f00)
inst_84:
    TEST_IMM_OP(gorci, x23, x9, 0x00000f00, 0x100, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000f00) 





    # address for test results
    # la x1, test_18_res
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_18_0)


    # Testcase 85:  rs1:x8(0x00000200), imm:0x3, result rd:x24(0x00000f00)
inst_85:
    TEST_IMM_OP(gorci, x24, x8, 0x00000f00, 0x200, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00000f00) 


    # Testcase 86:  rs1:x7(0x00000400), imm:0x3, result rd:x25(0x00000f00)
inst_86:
    TEST_IMM_OP(gorci, x25, x7, 0x00000f00, 0x400, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000f00) 


    # Testcase 87:  rs1:x6(0x00000800), imm:0x3, result rd:x26(0x00000f00)
inst_87:
    TEST_IMM_OP(gorci, x26, x6, 0x00000f00, 0x800, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000f00) 


    # Testcase 88:  rs1:x5(0x00001000), imm:0x3, result rd:x27(0x0000f000)
inst_88:
    TEST_IMM_OP(gorci, x27, x5, 0x0000f000, 0x1000, 0x3, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x0000f000) 


    # Testcase 89:  rs1:x4(0x00002000), imm:0x3, result rd:x28(0x0000f000)
inst_89:
    TEST_IMM_OP(gorci, x28, x4, 0x0000f000, 0x2000, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x0000f000) 





    # address for test results
    # la x4, test_19_res
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x4,signature_19_0)


    # Testcase 90:  rs1:x3(0x00004000), imm:0x3, result rd:x29(0x0000f000)
inst_90:
    TEST_IMM_OP(gorci, x29, x3, 0x0000f000, 0x4000, 0x3, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x0000f000) 


    # Testcase 91:  rs1:x2(0x00008000), imm:0x3, result rd:x30(0x0000f000)
inst_91:
    TEST_IMM_OP(gorci, x30, x2, 0x0000f000, 0x8000, 0x3, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x0000f000) 


    # Testcase 92:  rs1:x1(0x00010000), imm:0x3, result rd:x31(0x000f0000)
inst_92:
    TEST_IMM_OP(gorci, x31, x1, 0x000f0000, 0x10000, 0x3, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x000f0000) 


    # Testcase 93:  rs1:x31(0x00020000), imm:0x3, result rd:x1(0x000f0000)
inst_93:
    TEST_IMM_OP(gorci, x1, x31, 0x000f0000, 0x20000, 0x3, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x000f0000) 


    # Testcase 94:  rs1:x30(0x00040000), imm:0x3, result rd:x2(0x000f0000)
inst_94:
    TEST_IMM_OP(gorci, x2, x30, 0x000f0000, 0x40000, 0x3, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x000f0000) 





    # address for test results
    # la x1, test_20_res
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_20_0)


    # Testcase 95:  rs1:x29(0x00080000), imm:0x3, result rd:x3(0x000f0000)
inst_95:
    TEST_IMM_OP(gorci, x3, x29, 0x000f0000, 0x80000, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x000f0000) 


    # Testcase 96:  rs1:x28(0x00100000), imm:0x3, result rd:x4(0x00f00000)
inst_96:
    TEST_IMM_OP(gorci, x4, x28, 0x00f00000, 0x100000, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00f00000) 


    # Testcase 97:  rs1:x27(0x00200000), imm:0x3, result rd:x5(0x00f00000)
inst_97:
    TEST_IMM_OP(gorci, x5, x27, 0x00f00000, 0x200000, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00f00000) 


    # Testcase 98:  rs1:x26(0x00400000), imm:0x3, result rd:x6(0x00f00000)
inst_98:
    TEST_IMM_OP(gorci, x6, x26, 0x00f00000, 0x400000, 0x3, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00f00000) 


    # Testcase 99:  rs1:x25(0x00800000), imm:0x3, result rd:x7(0x00f00000)
inst_99:
    TEST_IMM_OP(gorci, x7, x25, 0x00f00000, 0x800000, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00f00000) 





    # address for test results
    # la x1, test_21_res
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_21_0)


    # Testcase 100:  rs1:x24(0x01000000), imm:0x3, result rd:x8(0x0f000000)
inst_100:
    TEST_IMM_OP(gorci, x8, x24, 0x0f000000, 0x1000000, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0f000000) 


    # Testcase 101:  rs1:x23(0x02000000), imm:0x3, result rd:x9(0x0f000000)
inst_101:
    TEST_IMM_OP(gorci, x9, x23, 0x0f000000, 0x2000000, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0f000000) 


    # Testcase 102:  rs1:x22(0x04000000), imm:0x3, result rd:x10(0x0f000000)
inst_102:
    TEST_IMM_OP(gorci, x10, x22, 0x0f000000, 0x4000000, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0f000000) 


    # Testcase 103:  rs1:x21(0x08000000), imm:0x3, result rd:x11(0x0f000000)
inst_103:
    TEST_IMM_OP(gorci, x11, x21, 0x0f000000, 0x8000000, 0x3, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0f000000) 


    # Testcase 104:  rs1:x20(0x10000000), imm:0x3, result rd:x12(0xf0000000)
inst_104:
    TEST_IMM_OP(gorci, x12, x20, 0xf0000000, 0x10000000, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xf0000000) 





    # address for test results
    # la x5, test_22_res
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x5,signature_22_0)


    # Testcase 105:  rs1:x19(0x20000000), imm:0x3, result rd:x13(0xf0000000)
inst_105:
    TEST_IMM_OP(gorci, x13, x19, 0xf0000000, 0x20000000, 0x3, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0xf0000000) 


    # Testcase 106:  rs1:x18(0x40000000), imm:0x3, result rd:x14(0xf0000000)
inst_106:
    TEST_IMM_OP(gorci, x14, x18, 0xf0000000, 0x40000000, 0x3, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0xf0000000) 


    # Testcase 107:  rs1:x17(0x80000000), imm:0x3, result rd:x15(0xf0000000)
inst_107:
    TEST_IMM_OP(gorci, x15, x17, 0xf0000000, 0x80000000, 0x3, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0xf0000000) 


    # Testcase 108:  rs1:x16(0x00000000), imm:0x3, result rd:x16(0x00000000)
inst_108:
    TEST_IMM_OP(gorci, x16, x16, 0x00000000, 0x0, 0x3, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x00000000) 


    # Testcase 109:  rs1:x15(0xfffffffe), imm:0x3, result rd:x17(0xffffffff)
inst_109:
    TEST_IMM_OP(gorci, x17, x15, 0xffffffff, 0xfffffffe, 0x3, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0xffffffff) 





    # address for test results
    # la x1, test_23_res
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_23_0)


    # Testcase 110:  rs1:x14(0xfffffffd), imm:0x3, result rd:x18(0xffffffff)
inst_110:
    TEST_IMM_OP(gorci, x18, x14, 0xffffffff, 0xfffffffd, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xffffffff) 


    # Testcase 111:  rs1:x13(0xfffffffb), imm:0x3, result rd:x19(0xffffffff)
inst_111:
    TEST_IMM_OP(gorci, x19, x13, 0xffffffff, 0xfffffffb, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xffffffff) 


    # Testcase 112:  rs1:x12(0xfffffff7), imm:0x3, result rd:x20(0xffffffff)
inst_112:
    TEST_IMM_OP(gorci, x20, x12, 0xffffffff, 0xfffffff7, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xffffffff) 


    # Testcase 113:  rs1:x11(0xffffffef), imm:0x3, result rd:x21(0xffffffff)
inst_113:
    TEST_IMM_OP(gorci, x21, x11, 0xffffffff, 0xffffffef, 0x3, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xffffffff) 


    # Testcase 114:  rs1:x10(0xffffffdf), imm:0x3, result rd:x22(0xffffffff)
inst_114:
    TEST_IMM_OP(gorci, x22, x10, 0xffffffff, 0xffffffdf, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffffffff) 





    # address for test results
    # la x1, test_24_res
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_24_0)


    # Testcase 115:  rs1:x9(0xffffffbf), imm:0x3, result rd:x23(0xffffffff)
inst_115:
    TEST_IMM_OP(gorci, x23, x9, 0xffffffff, 0xffffffbf, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xffffffff) 


    # Testcase 116:  rs1:x8(0xffffff7f), imm:0x3, result rd:x24(0xffffffff)
inst_116:
    TEST_IMM_OP(gorci, x24, x8, 0xffffffff, 0xffffff7f, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffffffff) 


    # Testcase 117:  rs1:x7(0xfffffeff), imm:0x3, result rd:x25(0xffffffff)
inst_117:
    TEST_IMM_OP(gorci, x25, x7, 0xffffffff, 0xfffffeff, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffffffff) 


    # Testcase 118:  rs1:x6(0xfffffdff), imm:0x3, result rd:x26(0xffffffff)
inst_118:
    TEST_IMM_OP(gorci, x26, x6, 0xffffffff, 0xfffffdff, 0x3, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffffffff) 


    # Testcase 119:  rs1:x5(0xfffffbff), imm:0x3, result rd:x27(0xffffffff)
inst_119:
    TEST_IMM_OP(gorci, x27, x5, 0xffffffff, 0xfffffbff, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffffffff) 





    # address for test results
    # la x5, test_25_res
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x5,signature_25_0)


    # Testcase 120:  rs1:x4(0xfffff7ff), imm:0x3, result rd:x28(0xffffffff)
inst_120:
    TEST_IMM_OP(gorci, x28, x4, 0xffffffff, 0xfffff7ff, 0x3, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0xffffffff) 


    # Testcase 121:  rs1:x3(0xffffefff), imm:0x3, result rd:x29(0xffffffff)
inst_121:
    TEST_IMM_OP(gorci, x29, x3, 0xffffffff, 0xffffefff, 0x3, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0xffffffff) 


    # Testcase 122:  rs1:x2(0xffffdfff), imm:0x3, result rd:x30(0xffffffff)
inst_122:
    TEST_IMM_OP(gorci, x30, x2, 0xffffffff, 0xffffdfff, 0x3, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0xffffffff) 


    # Testcase 123:  rs1:x1(0xffffbfff), imm:0x3, result rd:x31(0xffffffff)
inst_123:
    TEST_IMM_OP(gorci, x31, x1, 0xffffffff, 0xffffbfff, 0x3, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0xffffffff) 


    # Testcase 124:  rs1:x31(0xffff7fff), imm:0x3, result rd:x1(0xffffffff)
inst_124:
    TEST_IMM_OP(gorci, x1, x31, 0xffffffff, 0xffff7fff, 0x3, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0xffffffff) 





    # address for test results
    # la x1, test_26_res
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_26_0)


    # Testcase 125:  rs1:x30(0xfffeffff), imm:0x3, result rd:x2(0xffffffff)
inst_125:
    TEST_IMM_OP(gorci, x2, x30, 0xffffffff, 0xfffeffff, 0x3, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0xffffffff) 


    # Testcase 126:  rs1:x29(0xfffdffff), imm:0x3, result rd:x3(0xffffffff)
inst_126:
    TEST_IMM_OP(gorci, x3, x29, 0xffffffff, 0xfffdffff, 0x3, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xffffffff) 


    # Testcase 127:  rs1:x28(0xfffbffff), imm:0x3, result rd:x4(0xffffffff)
inst_127:
    TEST_IMM_OP(gorci, x4, x28, 0xffffffff, 0xfffbffff, 0x3, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xffffffff) 


    # Testcase 128:  rs1:x27(0xfff7ffff), imm:0x3, result rd:x5(0xffffffff)
inst_128:
    TEST_IMM_OP(gorci, x5, x27, 0xffffffff, 0xfff7ffff, 0x3, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xffffffff) 


    # Testcase 129:  rs1:x26(0xffefffff), imm:0x3, result rd:x6(0xffffffff)
inst_129:
    TEST_IMM_OP(gorci, x6, x26, 0xffffffff, 0xffefffff, 0x3, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0xffffffff) 





    # address for test results
    # la x1, test_27_res
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_27_0)


    # Testcase 130:  rs1:x25(0xffdfffff), imm:0x3, result rd:x7(0xffffffff)
inst_130:
    TEST_IMM_OP(gorci, x7, x25, 0xffffffff, 0xffdfffff, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xffffffff) 


    # Testcase 131:  rs1:x24(0xffbfffff), imm:0x3, result rd:x8(0xffffffff)
inst_131:
    TEST_IMM_OP(gorci, x8, x24, 0xffffffff, 0xffbfffff, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffffffff) 


    # Testcase 132:  rs1:x23(0xff7fffff), imm:0x3, result rd:x9(0xffffffff)
inst_132:
    TEST_IMM_OP(gorci, x9, x23, 0xffffffff, 0xff7fffff, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xffffffff) 


    # Testcase 133:  rs1:x22(0xfeffffff), imm:0x4, result rd:x10(0xffffffff)
inst_133:
    TEST_IMM_OP(gorci, x10, x22, 0xffffffff, 0xfeffffff, 0x4, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffffff) 


    # Testcase 134:  rs1:x21(0xfdffffff), imm:0x7, result rd:x11(0xffffffff)
inst_134:
    TEST_IMM_OP(gorci, x11, x21, 0xffffffff, 0xfdffffff, 0x7, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffffffff) 





    # address for test results
    # la x6, test_28_res
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x6,signature_28_0)


    # Testcase 135:  rs1:x20(0xfbffffff), imm:0x3, result rd:x12(0xffffffff)
inst_135:
    TEST_IMM_OP(gorci, x12, x20, 0xffffffff, 0xfbffffff, 0x3, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0xffffffff) 


    # Testcase 136:  rs1:x19(0xf7ffffff), imm:0x4, result rd:x13(0xffffffff)
inst_136:
    TEST_IMM_OP(gorci, x13, x19, 0xffffffff, 0xf7ffffff, 0x4, x6, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0xffffffff) 


    # Testcase 137:  rs1:x18(0xefffffff), imm:0x7, result rd:x14(0xffffffff)
inst_137:
    TEST_IMM_OP(gorci, x14, x18, 0xffffffff, 0xefffffff, 0x7, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0xffffffff) 


    # Testcase 138:  rs1:x17(0xdfffffff), imm:0x3, result rd:x15(0xffffffff)
inst_138:
    TEST_IMM_OP(gorci, x15, x17, 0xffffffff, 0xdfffffff, 0x3, x6, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0xffffffff) 


    # Testcase 139:  rs1:x16(0xbfffffff), imm:0x4, result rd:x16(0xffffffff)
inst_139:
    TEST_IMM_OP(gorci, x16, x16, 0xffffffff, 0xbfffffff, 0x4, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0xffffffff) 





    # address for test results
    # la x1, test_29_res
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_29_0)


    # Testcase 140:  rs1:x15(0x7fffffff), imm:0x7, result rd:x17(0xffffffff)
inst_140:
    TEST_IMM_OP(gorci, x17, x15, 0xffffffff, 0x7fffffff, 0x7, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0xffffffff) 


    # Testcase 141:  rs1:x14(0xffffffff), imm:0x3, result rd:x18(0xffffffff)
inst_141:
    TEST_IMM_OP(gorci, x18, x14, 0xffffffff, 0xffffffff, 0x3, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xffffffff) 


    # Testcase 142:  rs1:x13(0x10fd3dedadea5195), imm:0x4, result rd:x19(0xffee55dd)
inst_142:
    TEST_IMM_OP(gorci, x19, x13, 0xffee55dd, 0x10fd3dedadea5195, 0x4, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xffee55dd) 


    # Testcase 143:  rs1:x12(0xbd295ce2d2ffbec1), imm:0x7, result rd:x0(0x00000000)
inst_143:
    TEST_IMM_OP(gorci, x0, x12, 0x00000000, 0xbd295ce2d2ffbec1, 0x7, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x00000000) 


    # Testcase 144:  rs1:x11(0xc9649f05a8e1a8bb), imm:0x3, result rd:x21(0xffffffff)
inst_144:
    TEST_IMM_OP(gorci, x21, x11, 0xffffffff, 0xc9649f05a8e1a8bb, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xffffffff) 





    # address for test results
    # la x1, test_30_res
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",gorci)
	RVTEST_SIGBASE(x1,signature_30_0)


    # Testcase 145:  rs1:x0(0x3541291848c99fcb), imm:0x4, result rd:x22(0x00000000)
inst_145:
    TEST_IMM_OP(gorci, x22, x0, 0x00000000, 0x3541291848c99fcb, 0x4, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000) 



	
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
	.fill 5, 4, 0xdeadbeef
signature_2_0:
	.fill 5, 4, 0xdeadbeef
signature_3_0:
	.fill 5, 4, 0xdeadbeef
signature_4_0:
	.fill 5, 4, 0xdeadbeef
signature_5_0:
	.fill 5, 4, 0xdeadbeef
signature_6_0:
	.fill 5, 4, 0xdeadbeef
signature_7_0:
	.fill 5, 4, 0xdeadbeef
signature_8_0:
	.fill 5, 4, 0xdeadbeef
signature_9_0:
	.fill 5, 4, 0xdeadbeef
signature_10_0:
	.fill 5, 4, 0xdeadbeef
signature_11_0:
	.fill 5, 4, 0xdeadbeef
signature_12_0:
	.fill 5, 4, 0xdeadbeef
signature_13_0:
	.fill 5, 4, 0xdeadbeef
signature_14_0:
	.fill 5, 4, 0xdeadbeef
signature_15_0:
	.fill 5, 4, 0xdeadbeef
signature_16_0:
	.fill 5, 4, 0xdeadbeef
signature_17_0:
	.fill 5, 4, 0xdeadbeef
signature_18_0:
	.fill 5, 4, 0xdeadbeef
signature_19_0:
	.fill 5, 4, 0xdeadbeef
signature_20_0:
	.fill 5, 4, 0xdeadbeef
signature_21_0:
	.fill 5, 4, 0xdeadbeef
signature_22_0:
	.fill 5, 4, 0xdeadbeef
signature_23_0:
	.fill 5, 4, 0xdeadbeef
signature_24_0:
	.fill 5, 4, 0xdeadbeef
signature_25_0:
	.fill 5, 4, 0xdeadbeef
signature_26_0:
	.fill 5, 4, 0xdeadbeef
signature_27_0:
	.fill 5, 4, 0xdeadbeef
signature_28_0:
	.fill 5, 4, 0xdeadbeef
signature_29_0:
	.fill 5, 4, 0xdeadbeef
signature_30_0:
	.fill 5, 4, 0xdeadbeef


#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END

