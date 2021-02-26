// RISC-V Architectural Validation Test I-SM4KS-01
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
// Description: Testing instruction 'sm4ks'.

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
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x6,signature_1_0)
 
    # Testcase 0:  rs1:x31(0x10fd3dedadea5195), rs2:x16(0xdf7f3844121bcc23), imm:0x3, result rd:x1(0x37aa42d8)
inst_0:
    TEST_RRI_OP(sm4ks, x1, x31, x16, 0x3, 0x37aa42d8, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x37aa42d8) 

 
    # Testcase 1:  rs1:x30(0xbd295ce2d2ffbec1), rs2:x15(0xf5adb41aa47d105b), imm:0x3, result rd:x2(0x50bfae80)
inst_1:
    TEST_RRI_OP(sm4ks, x2, x30, x15, 0x3, 0x50bfae80, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x6, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x50bfae80) 

 
    # Testcase 2:  rs1:x29(0xc9649f05a8e1a8bb), rs2:x14(0x82f6747f707af2c0), imm:0x0, result rd:x3(0x0870ee36)
inst_2:
    TEST_RRI_OP(sm4ks, x3, x29, x14, 0x0, 0x0870ee36, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x0870ee36) 

 
    # Testcase 3:  rs1:x28(0x3541291848c99fcb), rs2:x13(0x73a92fd4e19bfbc3), imm:0x3, result rd:x4(0x21e912ff)
inst_3:
    TEST_RRI_OP(sm4ks, x4, x28, x13, 0x3, 0x21e912ff, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x6, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x21e912ff) 

 
    # Testcase 4:  rs1:x27(0x10a24740461d524f), rs2:x12(0x546b0e54528a10af), imm:0x3, result rd:x5(0xc73dc20f)
inst_4:
    TEST_RRI_OP(sm4ks, x5, x27, x12, 0x3, 0xc73dc20f, 0x10a24740461d524f, 0x546b0e54528a10af, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xc73dc20f) 





    # address for test results
    # la x1, test_2_res
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_2_0)
 
    # Testcase 5:  rs1:x26(0x546b0e54528a10af), rs2:x11(0x10a24740461d524f), imm:0x3, result rd:x6(0x456a92a4)
inst_5:
    TEST_RRI_OP(sm4ks, x6, x26, x11, 0x3, 0x456a92a4, 0x546b0e54528a10af, 0x10a24740461d524f, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x456a92a4) 

 
    # Testcase 6:  rs1:x25(0x73a92fd4e19bfbc3), rs2:x10(0x3541291848c99fcb), imm:0x3, result rd:x7(0x62fb6b82)
inst_6:
    TEST_RRI_OP(sm4ks, x7, x25, x10, 0x3, 0x62fb6b82, 0x73a92fd4e19bfbc3, 0x3541291848c99fcb, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x62fb6b82) 

 
    # Testcase 7:  rs1:x24(0x82f6747f707af2c0), rs2:x9(0xc9649f05a8e1a8bb), imm:0x3, result rd:x8(0xb07aeaa0)
inst_7:
    TEST_RRI_OP(sm4ks, x8, x24, x9, 0x3, 0xb07aeaa0, 0x82f6747f707af2c0, 0xc9649f05a8e1a8bb, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xb07aeaa0) 

 
    # Testcase 8:  rs1:x23(0xf5adb41aa47d105b), rs2:x8(0xbd295ce2d2ffbec1), imm:0x1, result rd:x9(0x2f504b3b)
inst_8:
    TEST_RRI_OP(sm4ks, x9, x23, x8, 0x1, 0x2f504b3b, 0xf5adb41aa47d105b, 0xbd295ce2d2ffbec1, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x2f504b3b) 

 
    # Testcase 9:  rs1:x22(0xdf7f3844121bcc23), rs2:x7(0x10fd3dedadea5195), imm:0x1, result rd:x10(0x9f2ea743)
inst_9:
    TEST_RRI_OP(sm4ks, x10, x22, x7, 0x1, 0x9f2ea743, 0xdf7f3844121bcc23, 0x10fd3dedadea5195, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x9f2ea743) 





    # address for test results
    # la x1, test_3_res
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_3_0)
 
    # Testcase 10:  rs1:x21(0x00000001), rs2:x6(0xffffffff), imm:0x3, result rd:x11(0x48000925)
inst_10:
    TEST_RRI_OP(sm4ks, x11, x21, x6, 0x3, 0x48000925, 0x1, 0xffffffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x48000925) 

 
    # Testcase 11:  rs1:x20(0x00000002), rs2:x5(0x7fffffff), imm:0x1, result rd:x12(0x09244802)
inst_11:
    TEST_RRI_OP(sm4ks, x12, x20, x5, 0x1, 0x09244802, 0x2, 0x7fffffff, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x09244802) 

 
    # Testcase 12:  rs1:x19(0x00000004), rs2:x4(0xbfffffff), imm:0x2, result rd:x13(0x2448000d)
inst_12:
    TEST_RRI_OP(sm4ks, x13, x19, x4, 0x2, 0x2448000d, 0x4, 0xbfffffff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x2448000d) 

 
    # Testcase 13:  rs1:x18(0x00000008), rs2:x3(0xdfffffff), imm:0x0, result rd:x14(0x00092440)
inst_13:
    TEST_RRI_OP(sm4ks, x14, x18, x3, 0x0, 0x00092440, 0x8, 0xdfffffff, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x00092440) 

 
    # Testcase 14:  rs1:x17(0x00000010), rs2:x2(0xefffffff), imm:0x2, result rd:x15(0x24480019)
inst_14:
    TEST_RRI_OP(sm4ks, x15, x17, x2, 0x2, 0x24480019, 0x10, 0xefffffff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x24480019) 





    # address for test results
    # la x2, test_4_res
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x2,signature_4_0)
 
    # Testcase 15:  rs1:x16(0x00000020), rs2:x1(0xf7ffffff), imm:0x1, result rd:x16(0x09244820)
inst_15:
    TEST_RRI_OP(sm4ks, x16, x16, x1, 0x1, 0x09244820, 0x20, 0xf7ffffff, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x09244820) 

 
    # Testcase 16:  rs1:x15(0x00000040), rs2:x31(0xfbffffff), imm:0x3, result rd:x17(0x3ec0075f)
inst_16:
    TEST_RRI_OP(sm4ks, x17, x15, x31, 0x3, 0x3ec0075f, 0x40, 0xfbffffff, x2, 4, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x3ec0075f) 

 
    # Testcase 17:  rs1:x14(0x00000080), rs2:x30(0xfdffffff), imm:0x3, result rd:x18(0xcb6099e5)
inst_17:
    TEST_RRI_OP(sm4ks, x18, x14, x30, 0x3, 0xcb6099e5, 0x80, 0xfdffffff, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0xcb6099e5) 

 
    # Testcase 18:  rs1:x13(0x00000100), rs2:x29(0xfeffffff), imm:0x0, result rd:x19(0x00092548)
inst_18:
    TEST_RRI_OP(sm4ks, x19, x13, x29, 0x0, 0x00092548, 0x100, 0xfeffffff, x2, 12, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x00092548) 

 
    # Testcase 19:  rs1:x12(0x00000200), rs2:x28(0xff7fffff), imm:0x3, result rd:x20(0x48000b24)
inst_19:
    TEST_RRI_OP(sm4ks, x20, x12, x28, 0x3, 0x48000b24, 0x200, 0xff7fffff, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x48000b24) 





    # address for test results
    # la x1, test_5_res
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_5_0)
 
    # Testcase 20:  rs1:x11(0x00000400), rs2:x27(0xffbfffff), imm:0x3, result rd:x21(0x48000d24)
inst_20:
    TEST_RRI_OP(sm4ks, x21, x11, x27, 0x3, 0x48000d24, 0x400, 0xffbfffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x48000d24) 

 
    # Testcase 21:  rs1:x10(0x00000800), rs2:x26(0xffdfffff), imm:0x3, result rd:x22(0x48000124)
inst_21:
    TEST_RRI_OP(sm4ks, x22, x10, x26, 0x3, 0x48000124, 0x800, 0xffdfffff, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x48000124) 

 
    # Testcase 22:  rs1:x9(0x00001000), rs2:x25(0xffefffff), imm:0x3, result rd:x23(0x48001924)
inst_22:
    TEST_RRI_OP(sm4ks, x23, x9, x25, 0x3, 0x48001924, 0x1000, 0xffefffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x48001924) 

 
    # Testcase 23:  rs1:x8(0x00002000), rs2:x24(0xfff7ffff), imm:0x3, result rd:x24(0x48002924)
inst_23:
    TEST_RRI_OP(sm4ks, x24, x8, x24, 0x3, 0x48002924, 0x2000, 0xfff7ffff, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x48002924) 

 
    # Testcase 24:  rs1:x7(0x00004000), rs2:x23(0xfffbffff), imm:0x1, result rd:x25(0x09240800)
inst_24:
    TEST_RRI_OP(sm4ks, x25, x7, x23, 0x1, 0x09240800, 0x4000, 0xfffbffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x09240800) 





    # address for test results
    # la x1, test_6_res
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_6_0)
 
    # Testcase 25:  rs1:x6(0x00008000), rs2:x22(0xfffdffff), imm:0x1, result rd:x26(0x0924c800)
inst_25:
    TEST_RRI_OP(sm4ks, x26, x6, x22, 0x1, 0x0924c800, 0x8000, 0xfffdffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x0924c800) 

 
    # Testcase 26:  rs1:x5(0x00010000), rs2:x21(0xfffeffff), imm:0x3, result rd:x27(0x48010924)
inst_26:
    TEST_RRI_OP(sm4ks, x27, x5, x21, 0x3, 0x48010924, 0x10000, 0xfffeffff, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x48010924) 

 
    # Testcase 27:  rs1:x4(0x00020000), rs2:x20(0xffff7fff), imm:0x1, result rd:x28(0x134d9ec0)
inst_27:
    TEST_RRI_OP(sm4ks, x28, x4, x20, 0x1, 0x134d9ec0, 0x20000, 0xffff7fff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x134d9ec0) 

 
    # Testcase 28:  rs1:x3(0x00040000), rs2:x19(0xffffbfff), imm:0x2, result rd:x29(0x244c0009)
inst_28:
    TEST_RRI_OP(sm4ks, x29, x3, x19, 0x2, 0x244c0009, 0x40000, 0xffffbfff, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x244c0009) 

 
    # Testcase 29:  rs1:x2(0x00080000), rs2:x18(0xffffdfff), imm:0x0, result rd:x30(0x00012448)
inst_29:
    TEST_RRI_OP(sm4ks, x30, x2, x18, 0x0, 0x00012448, 0x80000, 0xffffdfff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x00012448) 





    # address for test results
    # la x5, test_7_res
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x5,signature_7_0)
 
    # Testcase 30:  rs1:x1(0x00100000), rs2:x17(0xffffefff), imm:0x2, result rd:x31(0x24580009)
inst_30:
    TEST_RRI_OP(sm4ks, x31, x1, x17, 0x2, 0x24580009, 0x100000, 0xffffefff, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x24580009) 

 
    # Testcase 31:  rs1:x31(0x00200000), rs2:x16(0xfffff7ff), imm:0x1, result rd:x1(0x04302000)
inst_31:
    TEST_RRI_OP(sm4ks, x1, x31, x16, 0x1, 0x04302000, 0x200000, 0xfffff7ff, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x04302000) 

 
    # Testcase 32:  rs1:x30(0x00400000), rs2:x15(0xfffffbff), imm:0x3, result rd:x2(0x48400924)
inst_32:
    TEST_RRI_OP(sm4ks, x2, x30, x15, 0x3, 0x48400924, 0x400000, 0xfffffbff, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x48400924) 

 
    # Testcase 33:  rs1:x29(0x00800000), rs2:x14(0xfffffdff), imm:0x3, result rd:x3(0x48800924)
inst_33:
    TEST_RRI_OP(sm4ks, x3, x29, x14, 0x3, 0x48800924, 0x800000, 0xfffffdff, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x48800924) 

 
    # Testcase 34:  rs1:x28(0x01000000), rs2:x13(0xfffffeff), imm:0x0, result rd:x4(0x01092448)
inst_34:
    TEST_RRI_OP(sm4ks, x4, x28, x13, 0x0, 0x01092448, 0x1000000, 0xfffffeff, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x01092448) 





    # address for test results
    # la x1, test_8_res
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_8_0)
 
    # Testcase 35:  rs1:x27(0x02000000), rs2:x12(0xffffff7f), imm:0x3, result rd:x5(0x4a000924)
inst_35:
    TEST_RRI_OP(sm4ks, x5, x27, x12, 0x3, 0x4a000924, 0x2000000, 0xffffff7f, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x4a000924) 

 
    # Testcase 36:  rs1:x26(0x04000000), rs2:x11(0xffffffbf), imm:0x3, result rd:x6(0x4c000924)
inst_36:
    TEST_RRI_OP(sm4ks, x6, x26, x11, 0x3, 0x4c000924, 0x4000000, 0xffffffbf, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x4c000924) 

 
    # Testcase 37:  rs1:x25(0x08000000), rs2:x10(0xffffffdf), imm:0x3, result rd:x7(0x40000924)
inst_37:
    TEST_RRI_OP(sm4ks, x7, x25, x10, 0x3, 0x40000924, 0x8000000, 0xffffffdf, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x40000924) 

 
    # Testcase 38:  rs1:x24(0x10000000), rs2:x9(0xffffffef), imm:0x3, result rd:x8(0x58000924)
inst_38:
    TEST_RRI_OP(sm4ks, x8, x24, x9, 0x3, 0x58000924, 0x10000000, 0xffffffef, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x58000924) 

 
    # Testcase 39:  rs1:x23(0x20000000), rs2:x8(0xfffffff7), imm:0x3, result rd:x9(0x68000924)
inst_39:
    TEST_RRI_OP(sm4ks, x9, x23, x8, 0x3, 0x68000924, 0x20000000, 0xfffffff7, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x68000924) 





    # address for test results
    # la x1, test_9_res
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_9_0)
 
    # Testcase 40:  rs1:x22(0x40000000), rs2:x7(0xfffffffb), imm:0x1, result rd:x10(0x49244800)
inst_40:
    TEST_RRI_OP(sm4ks, x10, x22, x7, 0x1, 0x49244800, 0x40000000, 0xfffffffb, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x49244800) 

 
    # Testcase 41:  rs1:x21(0x80000000), rs2:x6(0xfffffffd), imm:0x1, result rd:x11(0x89244800)
inst_41:
    TEST_RRI_OP(sm4ks, x11, x21, x6, 0x1, 0x89244800, 0x80000000, 0xfffffffd, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x89244800) 

 
    # Testcase 42:  rs1:x20(0x00000000), rs2:x5(0xfffffffe), imm:0x3, result rd:x12(0x48000924)
inst_42:
    TEST_RRI_OP(sm4ks, x12, x20, x5, 0x3, 0x48000924, 0x0, 0xfffffffe, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x48000924) 

 
    # Testcase 43:  rs1:x19(0xfffffffe), rs2:x4(0x00000000), imm:0x1, result rd:x13(0xe594293e)
inst_43:
    TEST_RRI_OP(sm4ks, x13, x19, x4, 0x1, 0xe594293e, 0xfffffffe, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xe594293e) 

 
    # Testcase 44:  rs1:x18(0xfffffffd), rs2:x3(0x80000000), imm:0x2, result rd:x14(0x94293fe7)
inst_44:
    TEST_RRI_OP(sm4ks, x14, x18, x3, 0x2, 0x94293fe7, 0xfffffffd, 0x80000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x94293fe7) 





    # address for test results
    # la x3, test_10_res
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x3,signature_10_0)
 
    # Testcase 45:  rs1:x17(0xfffffffb), rs2:x2(0x40000000), imm:0x0, result rd:x15(0x3fe5942d)
inst_45:
    TEST_RRI_OP(sm4ks, x15, x17, x2, 0x0, 0x3fe5942d, 0xfffffffb, 0x40000000, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x3fe5942d) 

 
    # Testcase 46:  rs1:x16(0xfffffff7), rs2:x1(0x20000000), imm:0x2, result rd:x16(0x94293fed)
inst_46:
    TEST_RRI_OP(sm4ks, x16, x16, x1, 0x2, 0x94293fed, 0xfffffff7, 0x20000000, x3, 4, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x94293fed) 

 
    # Testcase 47:  rs1:x15(0xffffffef), rs2:x31(0x10000000), imm:0x1, result rd:x17(0xe594292f)
inst_47:
    TEST_RRI_OP(sm4ks, x17, x15, x31, 0x1, 0xe594292f, 0xffffffef, 0x10000000, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0xe594292f) 

 
    # Testcase 48:  rs1:x14(0xffffffdf), rs2:x30(0x08000000), imm:0x3, result rd:x18(0xe93ffdd4)
inst_48:
    TEST_RRI_OP(sm4ks, x18, x14, x30, 0x3, 0xe93ffdd4, 0xffffffdf, 0x8000000, x3, 12, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0xe93ffdd4) 

 
    # Testcase 49:  rs1:x13(0xffffffbf), rs2:x29(0x04000000), imm:0x3, result rd:x19(0x337fe6d9)
inst_49:
    TEST_RRI_OP(sm4ks, x19, x13, x29, 0x3, 0x337fe6d9, 0xffffffbf, 0x4000000, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x337fe6d9) 





    # address for test results
    # la x1, test_11_res
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_11_0)
 
    # Testcase 50:  rs1:x12(0xffffff7f), rs2:x28(0x02000000), imm:0x0, result rd:x20(0x3fe594a9)
inst_50:
    TEST_RRI_OP(sm4ks, x20, x12, x28, 0x0, 0x3fe594a9, 0xffffff7f, 0x2000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x3fe594a9) 

 
    # Testcase 51:  rs1:x11(0xfffffeff), rs2:x27(0x01000000), imm:0x3, result rd:x21(0x6fffecb7)
inst_51:
    TEST_RRI_OP(sm4ks, x21, x11, x27, 0x3, 0x6fffecb7, 0xfffffeff, 0x1000000, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x6fffecb7) 

 
    # Testcase 52:  rs1:x10(0xfffffdff), rs2:x26(0x00800000), imm:0x3, result rd:x22(0x293fe794)
inst_52:
    TEST_RRI_OP(sm4ks, x22, x10, x26, 0x3, 0x293fe794, 0xfffffdff, 0x800000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x293fe794) 

 
    # Testcase 53:  rs1:x9(0xfffffbff), rs2:x25(0x00400000), imm:0x3, result rd:x23(0x293fe194)
inst_53:
    TEST_RRI_OP(sm4ks, x23, x9, x25, 0x3, 0x293fe194, 0xfffffbff, 0x400000, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x293fe194) 

 
    # Testcase 54:  rs1:x8(0xfffff7ff), rs2:x24(0x00200000), imm:0x3, result rd:x24(0x293fed94)
inst_54:
    TEST_RRI_OP(sm4ks, x24, x8, x24, 0x3, 0x293fed94, 0xfffff7ff, 0x200000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x293fed94) 





    # address for test results
    # la x1, test_12_res
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_12_0)
 
    # Testcase 55:  rs1:x7(0xffffefff), rs2:x23(0x00100000), imm:0x3, result rd:x25(0x293ff594)
inst_55:
    TEST_RRI_OP(sm4ks, x25, x7, x23, 0x3, 0x293ff594, 0xffffefff, 0x100000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x293ff594) 

 
    # Testcase 56:  rs1:x6(0xffffdfff), rs2:x22(0x00080000), imm:0x1, result rd:x26(0xe594093f)
inst_56:
    TEST_RRI_OP(sm4ks, x26, x6, x22, 0x1, 0xe594093f, 0xffffdfff, 0x80000, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xe594093f) 

 
    # Testcase 57:  rs1:x5(0xffffbfff), rs2:x21(0x00040000), imm:0x1, result rd:x27(0xe594693f)
inst_57:
    TEST_RRI_OP(sm4ks, x27, x5, x21, 0x1, 0xe594693f, 0xffffbfff, 0x40000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xe594693f) 

 
    # Testcase 58:  rs1:x4(0xffff7fff), rs2:x20(0x00020000), imm:0x3, result rd:x28(0x293f6594)
inst_58:
    TEST_RRI_OP(sm4ks, x28, x4, x20, 0x3, 0x293f6594, 0xffff7fff, 0x20000, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x293f6594) 

 
    # Testcase 59:  rs1:x3(0xfffeffff), rs2:x19(0x00010000), imm:0x1, result rd:x29(0xe595293f)
inst_59:
    TEST_RRI_OP(sm4ks, x29, x3, x19, 0x1, 0xe595293f, 0xfffeffff, 0x10000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0xe595293f) 





    # address for test results
    # la x4, test_13_res
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x4,signature_13_0)
 
    # Testcase 60:  rs1:x2(0xfffdffff), rs2:x18(0x00008000), imm:0x2, result rd:x30(0x942b3fe5)
inst_60:
    TEST_RRI_OP(sm4ks, x30, x2, x18, 0x2, 0x942b3fe5, 0xfffdffff, 0x8000, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x942b3fe5) 

 
    # Testcase 61:  rs1:x1(0xfffbffff), rs2:x17(0x00004000), imm:0x0, result rd:x31(0x3fe19429)
inst_61:
    TEST_RRI_OP(sm4ks, x31, x1, x17, 0x0, 0x3fe19429, 0xfffbffff, 0x4000, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x3fe19429) 

 
    # Testcase 62:  rs1:x31(0xfff7ffff), rs2:x16(0x00002000), imm:0x2, result rd:x1(0x94213fe5)
inst_62:
    TEST_RRI_OP(sm4ks, x1, x31, x16, 0x2, 0x94213fe5, 0xfff7ffff, 0x2000, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x94213fe5) 

 
    # Testcase 63:  rs1:x30(0xffefffff), rs2:x15(0x00001000), imm:0x1, result rd:x2(0x7afad49f)
inst_63:
    TEST_RRI_OP(sm4ks, x2, x30, x15, 0x1, 0x7afad49f, 0xffefffff, 0x1000, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x7afad49f) 

 
    # Testcase 64:  rs1:x29(0xffdfffff), rs2:x14(0x00000800), imm:0x3, result rd:x3(0x291fe594)
inst_64:
    TEST_RRI_OP(sm4ks, x3, x29, x14, 0x3, 0x291fe594, 0xffdfffff, 0x800, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x291fe594) 





    # address for test results
    # la x1, test_14_res
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_14_0)
 
    # Testcase 65:  rs1:x28(0xffbfffff), rs2:x13(0x00000400), imm:0x3, result rd:x4(0x297fe594)
inst_65:
    TEST_RRI_OP(sm4ks, x4, x28, x13, 0x3, 0x297fe594, 0xffbfffff, 0x400, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x297fe594) 

 
    # Testcase 66:  rs1:x27(0xff7fffff), rs2:x12(0x00000200), imm:0x0, result rd:x5(0x3f659429)
inst_66:
    TEST_RRI_OP(sm4ks, x5, x27, x12, 0x0, 0x3f659429, 0xff7fffff, 0x200, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x3f659429) 

 
    # Testcase 67:  rs1:x26(0xfeffffff), rs2:x11(0x00000100), imm:0x0, result rd:x6(0x3ee59429)
inst_67:
    TEST_RRI_OP(sm4ks, x6, x26, x11, 0x0, 0x3ee59429, 0xfeffffff, 0x100, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x3ee59429) 

 
    # Testcase 68:  rs1:x25(0xfdffffff), rs2:x10(0x00000080), imm:0x0, result rd:x7(0xbde28a15)
inst_68:
    TEST_RRI_OP(sm4ks, x7, x25, x10, 0x0, 0xbde28a15, 0xfdffffff, 0x80, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xbde28a15) 

 
    # Testcase 69:  rs1:x24(0xfbffffff), rs2:x9(0x00000040), imm:0x0, result rd:x8(0x1b77dcb8)
inst_69:
    TEST_RRI_OP(sm4ks, x8, x24, x9, 0x0, 0x1b77dcb8, 0xfbffffff, 0x40, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x1b77dcb8) 





    # address for test results
    # la x1, test_15_res
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_15_0)
 
    # Testcase 70:  rs1:x23(0xf7ffffff), rs2:x8(0x00000020), imm:0x0, result rd:x9(0x77ecb163)
inst_70:
    TEST_RRI_OP(sm4ks, x9, x23, x8, 0x0, 0x77ecb163, 0xf7ffffff, 0x20, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x77ecb163) 

 
    # Testcase 71:  rs1:x22(0xefffffff), rs2:x7(0x00000010), imm:0x0, result rd:x10(0x8f7aead4)
inst_71:
    TEST_RRI_OP(sm4ks, x10, x22, x7, 0x0, 0x8f7aead4, 0xefffffff, 0x10, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x8f7aead4) 

 
    # Testcase 72:  rs1:x21(0xdfffffff), rs2:x6(0x00000008), imm:0x0, result rd:x11(0x1ffdf4e9)
inst_72:
    TEST_RRI_OP(sm4ks, x11, x21, x6, 0x0, 0x1ffdf4e9, 0xdfffffff, 0x8, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x1ffdf4e9) 

 
    # Testcase 73:  rs1:x20(0xbfffffff), rs2:x5(0x00000004), imm:0x0, result rd:x12(0x3fe69933)
inst_73:
    TEST_RRI_OP(sm4ks, x12, x20, x5, 0x0, 0x3fe69933, 0xbfffffff, 0x4, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x3fe69933) 

 
    # Testcase 74:  rs1:x19(0x7fffffff), rs2:x4(0x00000002), imm:0x0, result rd:x13(0x5f628b16)
inst_74:
    TEST_RRI_OP(sm4ks, x13, x19, x4, 0x0, 0x5f628b16, 0x7fffffff, 0x2, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x5f628b16) 





    # address for test results
    # la x4, test_16_res
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x4,signature_16_0)
 
    # Testcase 75:  rs1:x18(0xffffffff), rs2:x3(0x00000001), imm:0x0, result rd:x14(0xffedb76f)
inst_75:
    TEST_RRI_OP(sm4ks, x14, x18, x3, 0x0, 0xffedb76f, 0xffffffff, 0x1, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xffedb76f) 

 
    # Testcase 76:  rs1:x17(0x00000001), rs2:x2(0x00000000), imm:0x0, result rd:x15(0xc01a6bd7)
inst_76:
    TEST_RRI_OP(sm4ks, x15, x17, x2, 0x0, 0xc01a6bd7, 0x1, 0x0, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0xc01a6bd7) 

 
    # Testcase 77:  rs1:x16(0x00000002), rs2:x1(0x00000000), imm:0x0, result rd:x16(0xc01a6bd4)
inst_77:
    TEST_RRI_OP(sm4ks, x16, x16, x1, 0x0, 0xc01a6bd4, 0x2, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0xc01a6bd4) 

 
    # Testcase 78:  rs1:x15(0x00000004), rs2:x31(0x00000000), imm:0x0, result rd:x17(0xc01a6bd2)
inst_78:
    TEST_RRI_OP(sm4ks, x17, x15, x31, 0x0, 0xc01a6bd2, 0x4, 0x0, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0xc01a6bd2) 

 
    # Testcase 79:  rs1:x14(0x00000008), rs2:x30(0x00000000), imm:0x0, result rd:x18(0xc01a6bde)
inst_79:
    TEST_RRI_OP(sm4ks, x18, x14, x30, 0x0, 0xc01a6bde, 0x8, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0xc01a6bde) 





    # address for test results
    # la x1, test_17_res
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_17_0)
 
    # Testcase 80:  rs1:x13(0x00000010), rs2:x29(0x00000000), imm:0x0, result rd:x19(0xc01a6bc6)
inst_80:
    TEST_RRI_OP(sm4ks, x19, x13, x29, 0x0, 0xc01a6bc6, 0x10, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xc01a6bc6) 

 
    # Testcase 81:  rs1:x12(0x00000020), rs2:x28(0x00000000), imm:0x0, result rd:x20(0xc01a6bf6)
inst_81:
    TEST_RRI_OP(sm4ks, x20, x12, x28, 0x0, 0xc01a6bf6, 0x20, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xc01a6bf6) 

 
    # Testcase 82:  rs1:x11(0x00000040), rs2:x27(0x00000000), imm:0x0, result rd:x21(0xc01a6b96)
inst_82:
    TEST_RRI_OP(sm4ks, x21, x11, x27, 0x0, 0xc01a6b96, 0x40, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xc01a6b96) 

 
    # Testcase 83:  rs1:x10(0x00000080), rs2:x26(0x00000000), imm:0x0, result rd:x22(0xc01a6b56)
inst_83:
    TEST_RRI_OP(sm4ks, x22, x10, x26, 0x0, 0xc01a6b56, 0x80, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xc01a6b56) 

 
    # Testcase 84:  rs1:x9(0x00000100), rs2:x25(0x00000000), imm:0x0, result rd:x23(0xc01a6ad6)
inst_84:
    TEST_RRI_OP(sm4ks, x23, x9, x25, 0x0, 0xc01a6ad6, 0x100, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xc01a6ad6) 





    # address for test results
    # la x1, test_18_res
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_18_0)
 
    # Testcase 85:  rs1:x8(0x00000200), rs2:x24(0x00000000), imm:0x0, result rd:x24(0xc01a69d6)
inst_85:
    TEST_RRI_OP(sm4ks, x24, x8, x24, 0x0, 0xc01a69d6, 0x200, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xc01a69d6) 

 
    # Testcase 86:  rs1:x7(0x00000400), rs2:x23(0x00000000), imm:0x0, result rd:x25(0xc01a6fd6)
inst_86:
    TEST_RRI_OP(sm4ks, x25, x7, x23, 0x0, 0xc01a6fd6, 0x400, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xc01a6fd6) 

 
    # Testcase 87:  rs1:x6(0x00000800), rs2:x22(0x00000000), imm:0x0, result rd:x26(0xc01a63d6)
inst_87:
    TEST_RRI_OP(sm4ks, x26, x6, x22, 0x0, 0xc01a63d6, 0x800, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xc01a63d6) 

 
    # Testcase 88:  rs1:x5(0x00001000), rs2:x21(0x00000000), imm:0x0, result rd:x27(0xc01a7bd6)
inst_88:
    TEST_RRI_OP(sm4ks, x27, x5, x21, 0x0, 0xc01a7bd6, 0x1000, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xc01a7bd6) 

 
    # Testcase 89:  rs1:x4(0x00002000), rs2:x20(0x00000000), imm:0x0, result rd:x28(0xc01a4bd6)
inst_89:
    TEST_RRI_OP(sm4ks, x28, x4, x20, 0x0, 0xc01a4bd6, 0x2000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xc01a4bd6) 





    # address for test results
    # la x4, test_19_res
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x4,signature_19_0)
 
    # Testcase 90:  rs1:x3(0x00004000), rs2:x19(0x00000000), imm:0x0, result rd:x29(0xc01a2bd6)
inst_90:
    TEST_RRI_OP(sm4ks, x29, x3, x19, 0x0, 0xc01a2bd6, 0x4000, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0xc01a2bd6) 

 
    # Testcase 91:  rs1:x2(0x00008000), rs2:x18(0x00000000), imm:0x0, result rd:x30(0xc01aebd6)
inst_91:
    TEST_RRI_OP(sm4ks, x30, x2, x18, 0x0, 0xc01aebd6, 0x8000, 0x0, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xc01aebd6) 

 
    # Testcase 92:  rs1:x1(0x00010000), rs2:x17(0x00000000), imm:0x0, result rd:x31(0xc01b6bd6)
inst_92:
    TEST_RRI_OP(sm4ks, x31, x1, x17, 0x0, 0xc01b6bd6, 0x10000, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xc01b6bd6) 

 
    # Testcase 93:  rs1:x31(0x00020000), rs2:x16(0x00000000), imm:0x0, result rd:x1(0xc0186bd6)
inst_93:
    TEST_RRI_OP(sm4ks, x1, x31, x16, 0x0, 0xc0186bd6, 0x20000, 0x0, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xc0186bd6) 

 
    # Testcase 94:  rs1:x30(0x00040000), rs2:x15(0x00000000), imm:0x0, result rd:x2(0xc01e6bd6)
inst_94:
    TEST_RRI_OP(sm4ks, x2, x30, x15, 0x0, 0xc01e6bd6, 0x40000, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xc01e6bd6) 





    # address for test results
    # la x1, test_20_res
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_20_0)
 
    # Testcase 95:  rs1:x29(0x00080000), rs2:x14(0x00000000), imm:0x0, result rd:x3(0xc0126bd6)
inst_95:
    TEST_RRI_OP(sm4ks, x3, x29, x14, 0x0, 0xc0126bd6, 0x80000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0xc0126bd6) 

 
    # Testcase 96:  rs1:x28(0x00100000), rs2:x13(0x00000000), imm:0x0, result rd:x4(0xc00a6bd6)
inst_96:
    TEST_RRI_OP(sm4ks, x4, x28, x13, 0x0, 0xc00a6bd6, 0x100000, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xc00a6bd6) 

 
    # Testcase 97:  rs1:x27(0x00200000), rs2:x12(0x00000000), imm:0x0, result rd:x5(0xc03a6bd6)
inst_97:
    TEST_RRI_OP(sm4ks, x5, x27, x12, 0x0, 0xc03a6bd6, 0x200000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xc03a6bd6) 

 
    # Testcase 98:  rs1:x26(0x00400000), rs2:x11(0x00000000), imm:0x0, result rd:x6(0xc05a6bd6)
inst_98:
    TEST_RRI_OP(sm4ks, x6, x26, x11, 0x0, 0xc05a6bd6, 0x400000, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xc05a6bd6) 

 
    # Testcase 99:  rs1:x25(0x00800000), rs2:x10(0x00000000), imm:0x0, result rd:x7(0xc09a6bd6)
inst_99:
    TEST_RRI_OP(sm4ks, x7, x25, x10, 0x0, 0xc09a6bd6, 0x800000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xc09a6bd6) 





    # address for test results
    # la x1, test_21_res
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_21_0)
 
    # Testcase 100:  rs1:x24(0x01000000), rs2:x9(0x00000000), imm:0x0, result rd:x8(0xc11a6bd6)
inst_100:
    TEST_RRI_OP(sm4ks, x8, x24, x9, 0x0, 0xc11a6bd6, 0x1000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xc11a6bd6) 

 
    # Testcase 101:  rs1:x23(0x02000000), rs2:x8(0x00000000), imm:0x0, result rd:x9(0xc21a6bd6)
inst_101:
    TEST_RRI_OP(sm4ks, x9, x23, x8, 0x0, 0xc21a6bd6, 0x2000000, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xc21a6bd6) 

 
    # Testcase 102:  rs1:x22(0x04000000), rs2:x7(0x00000000), imm:0x0, result rd:x10(0xc41a6bd6)
inst_102:
    TEST_RRI_OP(sm4ks, x10, x22, x7, 0x0, 0xc41a6bd6, 0x4000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xc41a6bd6) 

 
    # Testcase 103:  rs1:x21(0x08000000), rs2:x6(0x00000000), imm:0x0, result rd:x11(0xc81a6bd6)
inst_103:
    TEST_RRI_OP(sm4ks, x11, x21, x6, 0x0, 0xc81a6bd6, 0x8000000, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xc81a6bd6) 

 
    # Testcase 104:  rs1:x20(0x10000000), rs2:x5(0x00000000), imm:0x0, result rd:x12(0xd01a6bd6)
inst_104:
    TEST_RRI_OP(sm4ks, x12, x20, x5, 0x0, 0xd01a6bd6, 0x10000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xd01a6bd6) 





    # address for test results
    # la x5, test_22_res
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x5,signature_22_0)
 
    # Testcase 105:  rs1:x19(0x20000000), rs2:x4(0x00000000), imm:0x0, result rd:x13(0xe01a6bd6)
inst_105:
    TEST_RRI_OP(sm4ks, x13, x19, x4, 0x0, 0xe01a6bd6, 0x20000000, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0xe01a6bd6) 

 
    # Testcase 106:  rs1:x18(0x40000000), rs2:x3(0x00000000), imm:0x0, result rd:x14(0x801a6bd6)
inst_106:
    TEST_RRI_OP(sm4ks, x14, x18, x3, 0x0, 0x801a6bd6, 0x40000000, 0x0, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x801a6bd6) 

 
    # Testcase 107:  rs1:x17(0x80000000), rs2:x2(0x00000000), imm:0x0, result rd:x15(0x401a6bd6)
inst_107:
    TEST_RRI_OP(sm4ks, x15, x17, x2, 0x0, 0x401a6bd6, 0x80000000, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x401a6bd6) 

 
    # Testcase 108:  rs1:x16(0x00000000), rs2:x1(0x00000000), imm:0x0, result rd:x16(0xc01a6bd6)
inst_108:
    TEST_RRI_OP(sm4ks, x16, x16, x1, 0x0, 0xc01a6bd6, 0x0, 0x0, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0xc01a6bd6) 

 
    # Testcase 109:  rs1:x15(0xfffffffe), rs2:x31(0x00000000), imm:0x0, result rd:x17(0x3fe59428)
inst_109:
    TEST_RRI_OP(sm4ks, x17, x15, x31, 0x0, 0x3fe59428, 0xfffffffe, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0x3fe59428) 





    # address for test results
    # la x1, test_23_res
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_23_0)
 
    # Testcase 110:  rs1:x14(0xfffffffd), rs2:x30(0x00000000), imm:0x0, result rd:x18(0x3fe5942b)
inst_110:
    TEST_RRI_OP(sm4ks, x18, x14, x30, 0x0, 0x3fe5942b, 0xfffffffd, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x3fe5942b) 

 
    # Testcase 111:  rs1:x13(0xfffffffb), rs2:x29(0x00000000), imm:0x0, result rd:x19(0x3fe5942d)
inst_111:
    TEST_RRI_OP(sm4ks, x19, x13, x29, 0x0, 0x3fe5942d, 0xfffffffb, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x3fe5942d) 

 
    # Testcase 112:  rs1:x12(0xfffffff7), rs2:x28(0x00000000), imm:0x0, result rd:x20(0x3fe59421)
inst_112:
    TEST_RRI_OP(sm4ks, x20, x12, x28, 0x0, 0x3fe59421, 0xfffffff7, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x3fe59421) 

 
    # Testcase 113:  rs1:x11(0xffffffef), rs2:x27(0x00000000), imm:0x0, result rd:x21(0x3fe59439)
inst_113:
    TEST_RRI_OP(sm4ks, x21, x11, x27, 0x0, 0x3fe59439, 0xffffffef, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x3fe59439) 

 
    # Testcase 114:  rs1:x10(0xffffffdf), rs2:x26(0x00000000), imm:0x0, result rd:x22(0x3fe59409)
inst_114:
    TEST_RRI_OP(sm4ks, x22, x10, x26, 0x0, 0x3fe59409, 0xffffffdf, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x3fe59409) 





    # address for test results
    # la x1, test_24_res
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_24_0)
 
    # Testcase 115:  rs1:x9(0xffffffbf), rs2:x25(0x00000000), imm:0x0, result rd:x23(0x3fe59469)
inst_115:
    TEST_RRI_OP(sm4ks, x23, x9, x25, 0x0, 0x3fe59469, 0xffffffbf, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x3fe59469) 

 
    # Testcase 116:  rs1:x8(0xffffff7f), rs2:x24(0x00000000), imm:0x0, result rd:x24(0x3fe594a9)
inst_116:
    TEST_RRI_OP(sm4ks, x24, x8, x24, 0x0, 0x3fe594a9, 0xffffff7f, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x3fe594a9) 

 
    # Testcase 117:  rs1:x7(0xfffffeff), rs2:x23(0x00000000), imm:0x0, result rd:x25(0x3fe59529)
inst_117:
    TEST_RRI_OP(sm4ks, x25, x7, x23, 0x0, 0x3fe59529, 0xfffffeff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x3fe59529) 

 
    # Testcase 118:  rs1:x6(0xfffffdff), rs2:x22(0x00000000), imm:0x0, result rd:x26(0x3fe59629)
inst_118:
    TEST_RRI_OP(sm4ks, x26, x6, x22, 0x0, 0x3fe59629, 0xfffffdff, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x3fe59629) 

 
    # Testcase 119:  rs1:x5(0xfffffbff), rs2:x21(0x00000000), imm:0x0, result rd:x27(0x3fe59029)
inst_119:
    TEST_RRI_OP(sm4ks, x27, x5, x21, 0x0, 0x3fe59029, 0xfffffbff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x3fe59029) 





    # address for test results
    # la x5, test_25_res
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x5,signature_25_0)
 
    # Testcase 120:  rs1:x4(0xfffff7ff), rs2:x20(0x00000000), imm:0x0, result rd:x28(0x3fe59c29)
inst_120:
    TEST_RRI_OP(sm4ks, x28, x4, x20, 0x0, 0x3fe59c29, 0xfffff7ff, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0x3fe59c29) 

 
    # Testcase 121:  rs1:x3(0xffffefff), rs2:x19(0x00000000), imm:0x0, result rd:x29(0x3fe58429)
inst_121:
    TEST_RRI_OP(sm4ks, x29, x3, x19, 0x0, 0x3fe58429, 0xffffefff, 0x0, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0x3fe58429) 

 
    # Testcase 122:  rs1:x2(0xffffdfff), rs2:x18(0x00000000), imm:0x0, result rd:x30(0x3fe5b429)
inst_122:
    TEST_RRI_OP(sm4ks, x30, x2, x18, 0x0, 0x3fe5b429, 0xffffdfff, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0x3fe5b429) 

 
    # Testcase 123:  rs1:x1(0xffffbfff), rs2:x17(0x00000000), imm:0x0, result rd:x31(0x3fe5d429)
inst_123:
    TEST_RRI_OP(sm4ks, x31, x1, x17, 0x0, 0x3fe5d429, 0xffffbfff, 0x0, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x3fe5d429) 

 
    # Testcase 124:  rs1:x31(0xffff7fff), rs2:x16(0x00000000), imm:0x0, result rd:x1(0x3fe51429)
inst_124:
    TEST_RRI_OP(sm4ks, x1, x31, x16, 0x0, 0x3fe51429, 0xffff7fff, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x3fe51429) 





    # address for test results
    # la x1, test_26_res
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_26_0)
 
    # Testcase 125:  rs1:x30(0xfffeffff), rs2:x15(0x00000000), imm:0x0, result rd:x2(0x3fe49429)
inst_125:
    TEST_RRI_OP(sm4ks, x2, x30, x15, 0x0, 0x3fe49429, 0xfffeffff, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x3fe49429) 

 
    # Testcase 126:  rs1:x29(0xfffdffff), rs2:x14(0x00000000), imm:0x0, result rd:x3(0x3fe79429)
inst_126:
    TEST_RRI_OP(sm4ks, x3, x29, x14, 0x0, 0x3fe79429, 0xfffdffff, 0x0, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x3fe79429) 

 
    # Testcase 127:  rs1:x28(0xfffbffff), rs2:x13(0x00000000), imm:0x0, result rd:x4(0x3fe19429)
inst_127:
    TEST_RRI_OP(sm4ks, x4, x28, x13, 0x0, 0x3fe19429, 0xfffbffff, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x3fe19429) 

 
    # Testcase 128:  rs1:x27(0xfff7ffff), rs2:x12(0x00000000), imm:0x0, result rd:x5(0x3fed9429)
inst_128:
    TEST_RRI_OP(sm4ks, x5, x27, x12, 0x0, 0x3fed9429, 0xfff7ffff, 0x0, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x3fed9429) 

 
    # Testcase 129:  rs1:x26(0xffefffff), rs2:x11(0x00000000), imm:0x0, result rd:x6(0x3ff59429)
inst_129:
    TEST_RRI_OP(sm4ks, x6, x26, x11, 0x0, 0x3ff59429, 0xffefffff, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0x3ff59429) 





    # address for test results
    # la x1, test_27_res
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_27_0)
 
    # Testcase 130:  rs1:x25(0xffdfffff), rs2:x10(0x00000000), imm:0x0, result rd:x7(0x3fc59429)
inst_130:
    TEST_RRI_OP(sm4ks, x7, x25, x10, 0x0, 0x3fc59429, 0xffdfffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x3fc59429) 

 
    # Testcase 131:  rs1:x24(0xffbfffff), rs2:x9(0x00000000), imm:0x0, result rd:x8(0x3fa59429)
inst_131:
    TEST_RRI_OP(sm4ks, x8, x24, x9, 0x0, 0x3fa59429, 0xffbfffff, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x3fa59429) 

 
    # Testcase 132:  rs1:x23(0xff7fffff), rs2:x8(0x00000000), imm:0x3, result rd:x9(0x29bfe594)
inst_132:
    TEST_RRI_OP(sm4ks, x9, x23, x8, 0x3, 0x29bfe594, 0xff7fffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x29bfe594) 

 
    # Testcase 133:  rs1:x22(0xfeffffff), rs2:x7(0x00000000), imm:0x3, result rd:x10(0x283fe594)
inst_133:
    TEST_RRI_OP(sm4ks, x10, x22, x7, 0x3, 0x283fe594, 0xfeffffff, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x283fe594) 

 
    # Testcase 134:  rs1:x21(0xfdffffff), rs2:x6(0x00000000), imm:0x3, result rd:x11(0x2b3fe594)
inst_134:
    TEST_RRI_OP(sm4ks, x11, x21, x6, 0x3, 0x2b3fe594, 0xfdffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x2b3fe594) 





    # address for test results
    # la x6, test_28_res
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x6,signature_28_0)
 
    # Testcase 135:  rs1:x20(0xfbffffff), rs2:x5(0x00000000), imm:0x3, result rd:x12(0x2d3fe594)
inst_135:
    TEST_RRI_OP(sm4ks, x12, x20, x5, 0x3, 0x2d3fe594, 0xfbffffff, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x2d3fe594) 

 
    # Testcase 136:  rs1:x19(0xf7ffffff), rs2:x4(0x00000000), imm:0x1, result rd:x13(0xed94293f)
inst_136:
    TEST_RRI_OP(sm4ks, x13, x19, x4, 0x1, 0xed94293f, 0xf7ffffff, 0x0, x6, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0xed94293f) 

 
    # Testcase 137:  rs1:x18(0xefffffff), rs2:x3(0x00000000), imm:0x1, result rd:x14(0xf594293f)
inst_137:
    TEST_RRI_OP(sm4ks, x14, x18, x3, 0x1, 0xf594293f, 0xefffffff, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0xf594293f) 

 
    # Testcase 138:  rs1:x17(0xdfffffff), rs2:x2(0x00000000), imm:0x3, result rd:x15(0x093fe594)
inst_138:
    TEST_RRI_OP(sm4ks, x15, x17, x2, 0x3, 0x093fe594, 0xdfffffff, 0x0, x6, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x093fe594) 

 
    # Testcase 139:  rs1:x16(0xbfffffff), rs2:x1(0x00000000), imm:0x1, result rd:x16(0xa594293f)
inst_139:
    TEST_RRI_OP(sm4ks, x16, x16, x1, 0x1, 0xa594293f, 0xbfffffff, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0xa594293f) 





    # address for test results
    # la x1, test_29_res
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_29_0)
 
    # Testcase 140:  rs1:x15(0x7fffffff), rs2:x31(0x00000000), imm:0x2, result rd:x17(0x14293fe5)
inst_140:
    TEST_RRI_OP(sm4ks, x17, x15, x31, 0x2, 0x14293fe5, 0x7fffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x14293fe5) 

 
    # Testcase 141:  rs1:x14(0xffffffff), rs2:x30(0x00000000), imm:0x0, result rd:x18(0x3fe59429)
inst_141:
    TEST_RRI_OP(sm4ks, x18, x14, x30, 0x0, 0x3fe59429, 0xffffffff, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x3fe59429) 

 
    # Testcase 142:  rs1:x13(0x10fd3dedadea5195), rs2:x29(0xdf7f3844121bcc23), imm:0x2, result rd:x19(0xbecc9191)
inst_142:
    TEST_RRI_OP(sm4ks, x19, x13, x29, 0x2, 0xbecc9191, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xbecc9191) 

 
    # Testcase 143:  rs1:x12(0xbd295ce2d2ffbec1), rs2:x28(0xf5adb41aa47d105b), imm:0x1, result rd:x0(0x00000000)
inst_143:
    TEST_RRI_OP(sm4ks, x0, x12, x28, 0x1, 0x00000000, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x00000000) 

 
    # Testcase 144:  rs1:x11(0xc9649f05a8e1a8bb), rs2:x0(0x82f6747f707af2c0), imm:0x3, result rd:x21(0x7e21b2d0)
inst_144:
    TEST_RRI_OP(sm4ks, x21, x11, x0, 0x3, 0x7e21b2d0, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x7e21b2d0) 





    # address for test results
    # la x1, test_30_res
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ks)
	RVTEST_SIGBASE(x1,signature_30_0)
 
    # Testcase 145:  rs1:x0(0x3541291848c99fcb), rs2:x26(0x73a92fd4e19bfbc3), imm:0x3, result rd:x22(0x69208d34)
inst_145:
    TEST_RRI_OP(sm4ks, x22, x0, x26, 0x3, 0x69208d34, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x69208d34) 



	
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

