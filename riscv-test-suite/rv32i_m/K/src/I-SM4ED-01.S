// RISC-V Architectural Validation Test I-SM4ED-01
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
// Description: Testing instruction 'sm4ed'.

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
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x6,signature_1_0)
 
    # Testcase 0:  rs1:x31(0x10fd3dedadea5195), rs2:x16(0xdf7f3844121bcc23), imm:0x3, result rd:x1(0x5f803b0d)
inst_0:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x3, 0x5f803b0d, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x5f803b0d) 

 
    # Testcase 1:  rs1:x30(0xbd295ce2d2ffbec1), rs2:x15(0xf5adb41aa47d105b), imm:0x3, result rd:x2(0x58f5b441)
inst_1:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x3, 0x58f5b441, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x6, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x58f5b441) 

 
    # Testcase 2:  rs1:x29(0xc9649f05a8e1a8bb), rs2:x14(0x82f6747f707af2c0), imm:0x0, result rd:x3(0x9ed72702)
inst_2:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x0, 0x9ed72702, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x9ed72702) 

 
    # Testcase 3:  rs1:x28(0x3541291848c99fcb), rs2:x13(0x73a92fd4e19bfbc3), imm:0x3, result rd:x4(0x856c3aa3)
inst_3:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x3, 0x856c3aa3, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x6, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x856c3aa3) 

 
    # Testcase 4:  rs1:x27(0x10a24740461d524f), rs2:x12(0x546b0e54528a10af), imm:0x3, result rd:x5(0xc31b54cc)
inst_4:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x3, 0xc31b54cc, 0x10a24740461d524f, 0x546b0e54528a10af, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xc31b54cc) 





    # address for test results
    # la x1, test_2_res
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_2_0)
 
    # Testcase 5:  rs1:x26(0x546b0e54528a10af), rs2:x11(0x10a24740461d524f), imm:0x3, result rd:x6(0x19d64cb8)
inst_5:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x3, 0x19d64cb8, 0x546b0e54528a10af, 0x10a24740461d524f, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x19d64cb8) 

 
    # Testcase 6:  rs1:x25(0x73a92fd4e19bfbc3), rs2:x10(0x3541291848c99fcb), imm:0x3, result rd:x7(0x6e95f542)
inst_6:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x3, 0x6e95f542, 0x73a92fd4e19bfbc3, 0x3541291848c99fcb, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x6e95f542) 

 
    # Testcase 7:  rs1:x24(0x82f6747f707af2c0), rs2:x9(0xc9649f05a8e1a8bb), imm:0x3, result rd:x8(0xb079f103)
inst_7:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x3, 0xb079f103, 0x82f6747f707af2c0, 0xc9649f05a8e1a8bb, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xb079f103) 

 
    # Testcase 8:  rs1:x23(0xf5adb41aa47d105b), rs2:x8(0xbd295ce2d2ffbec1), imm:0x1, result rd:x9(0xc9272736)
inst_8:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x1, 0xc9272736, 0xf5adb41aa47d105b, 0xbd295ce2d2ffbec1, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xc9272736) 

 
    # Testcase 9:  rs1:x22(0xdf7f3844121bcc23), rs2:x7(0x10fd3dedadea5195), imm:0x1, result rd:x10(0xbf710b8e)
inst_9:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x1, 0xbf710b8e, 0xdf7f3844121bcc23, 0x10fd3dedadea5195, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xbf710b8e) 





    # address for test results
    # la x1, test_3_res
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_3_0)
 
    # Testcase 10:  rs1:x21(0x00000001), rs2:x6(0xffffffff), imm:0x3, result rd:x11(0x68212148)
inst_10:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x3, 0x68212148, 0x1, 0xffffffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x68212148) 

 
    # Testcase 11:  rs1:x20(0x00000002), rs2:x5(0x7fffffff), imm:0x1, result rd:x12(0x21496823)
inst_11:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x1, 0x21496823, 0x2, 0x7fffffff, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x21496823) 

 
    # Testcase 12:  rs1:x19(0x00000004), rs2:x4(0xbfffffff), imm:0x2, result rd:x13(0x49682125)
inst_12:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x2, 0x49682125, 0x4, 0xbfffffff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x49682125) 

 
    # Testcase 13:  rs1:x18(0x00000008), rs2:x3(0xdfffffff), imm:0x0, result rd:x14(0x21214960)
inst_13:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x0, 0x21214960, 0x8, 0xdfffffff, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x21214960) 

 
    # Testcase 14:  rs1:x17(0x00000010), rs2:x2(0xefffffff), imm:0x2, result rd:x15(0x49682131)
inst_14:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x2, 0x49682131, 0x10, 0xefffffff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x49682131) 





    # address for test results
    # la x2, test_4_res
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x2,signature_4_0)
 
    # Testcase 15:  rs1:x16(0x00000020), rs2:x1(0xf7ffffff), imm:0x1, result rd:x16(0x21496801)
inst_15:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x1, 0x21496801, 0x20, 0xf7ffffff, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x21496801) 

 
    # Testcase 16:  rs1:x15(0x00000040), rs2:x31(0xfbffffff), imm:0x3, result rd:x17(0xc6f8f87e)
inst_16:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x3, 0xc6f8f87e, 0x40, 0xfbffffff, x2, 4, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0xc6f8f87e) 

 
    # Testcase 17:  rs1:x14(0x00000080), rs2:x30(0xfdffffff), imm:0x3, result rd:x18(0xe72f2f48)
inst_17:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x3, 0xe72f2f48, 0x80, 0xfdffffff, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0xe72f2f48) 

 
    # Testcase 18:  rs1:x13(0x00000100), rs2:x29(0xfeffffff), imm:0x0, result rd:x19(0x21214868)
inst_18:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x0, 0x21214868, 0x100, 0xfeffffff, x2, 12, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x21214868) 

 
    # Testcase 19:  rs1:x12(0x00000200), rs2:x28(0xff7fffff), imm:0x3, result rd:x20(0x68212349)
inst_19:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x3, 0x68212349, 0x200, 0xff7fffff, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x68212349) 





    # address for test results
    # la x1, test_5_res
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_5_0)
 
    # Testcase 20:  rs1:x11(0x00000400), rs2:x27(0xffbfffff), imm:0x3, result rd:x21(0x68212549)
inst_20:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x3, 0x68212549, 0x400, 0xffbfffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x68212549) 

 
    # Testcase 21:  rs1:x10(0x00000800), rs2:x26(0xffdfffff), imm:0x3, result rd:x22(0x68212949)
inst_21:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x3, 0x68212949, 0x800, 0xffdfffff, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x68212949) 

 
    # Testcase 22:  rs1:x9(0x00001000), rs2:x25(0xffefffff), imm:0x3, result rd:x23(0x68213149)
inst_22:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x3, 0x68213149, 0x1000, 0xffefffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x68213149) 

 
    # Testcase 23:  rs1:x8(0x00002000), rs2:x24(0xfff7ffff), imm:0x3, result rd:x24(0x68210149)
inst_23:
    TEST_RRI_OP(sm4ed, x24, x8, x24, 0x3, 0x68210149, 0x2000, 0xfff7ffff, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x68210149) 

 
    # Testcase 24:  rs1:x7(0x00004000), rs2:x23(0xfffbffff), imm:0x1, result rd:x25(0x21492821)
inst_24:
    TEST_RRI_OP(sm4ed, x25, x7, x23, 0x1, 0x21492821, 0x4000, 0xfffbffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x21492821) 





    # address for test results
    # la x1, test_6_res
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_6_0)
 
    # Testcase 25:  rs1:x6(0x00008000), rs2:x22(0xfffdffff), imm:0x1, result rd:x26(0x2149e821)
inst_25:
    TEST_RRI_OP(sm4ed, x26, x6, x22, 0x1, 0x2149e821, 0x8000, 0xfffdffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x2149e821) 

 
    # Testcase 26:  rs1:x5(0x00010000), rs2:x21(0xfffeffff), imm:0x3, result rd:x27(0x68202149)
inst_26:
    TEST_RRI_OP(sm4ed, x27, x5, x21, 0x3, 0x68202149, 0x10000, 0xfffeffff, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x68202149) 

 
    # Testcase 27:  rs1:x4(0x00020000), rs2:x20(0xffff7fff), imm:0x1, result rd:x28(0x7a9ee67a)
inst_27:
    TEST_RRI_OP(sm4ed, x28, x4, x20, 0x1, 0x7a9ee67a, 0x20000, 0xffff7fff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x7a9ee67a) 

 
    # Testcase 28:  rs1:x3(0x00040000), rs2:x19(0xffffbfff), imm:0x2, result rd:x29(0x496c2121)
inst_28:
    TEST_RRI_OP(sm4ed, x29, x3, x19, 0x2, 0x496c2121, 0x40000, 0xffffbfff, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x496c2121) 

 
    # Testcase 29:  rs1:x2(0x00080000), rs2:x18(0xffffdfff), imm:0x0, result rd:x30(0x21294968)
inst_29:
    TEST_RRI_OP(sm4ed, x30, x2, x18, 0x0, 0x21294968, 0x80000, 0xffffdfff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x21294968) 





    # address for test results
    # la x5, test_7_res
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x5,signature_7_0)
 
    # Testcase 30:  rs1:x1(0x00100000), rs2:x17(0xffffefff), imm:0x2, result rd:x31(0x49782121)
inst_30:
    TEST_RRI_OP(sm4ed, x31, x1, x17, 0x2, 0x49782121, 0x100000, 0xffffefff, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x49782121) 

 
    # Testcase 31:  rs1:x31(0x00200000), rs2:x16(0xfffff7ff), imm:0x1, result rd:x1(0x8000a080)
inst_31:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x1, 0x8000a080, 0x200000, 0xfffff7ff, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x8000a080) 

 
    # Testcase 32:  rs1:x30(0x00400000), rs2:x15(0xfffffbff), imm:0x3, result rd:x2(0x68612149)
inst_32:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x3, 0x68612149, 0x400000, 0xfffffbff, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x68612149) 

 
    # Testcase 33:  rs1:x29(0x00800000), rs2:x14(0xfffffdff), imm:0x3, result rd:x3(0x68a12149)
inst_33:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x3, 0x68a12149, 0x800000, 0xfffffdff, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x68a12149) 

 
    # Testcase 34:  rs1:x28(0x01000000), rs2:x13(0xfffffeff), imm:0x0, result rd:x4(0x20214968)
inst_34:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x0, 0x20214968, 0x1000000, 0xfffffeff, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x20214968) 





    # address for test results
    # la x1, test_8_res
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_8_0)
 
    # Testcase 35:  rs1:x27(0x02000000), rs2:x12(0xffffff7f), imm:0x3, result rd:x5(0x6a212149)
inst_35:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x3, 0x6a212149, 0x2000000, 0xffffff7f, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x6a212149) 

 
    # Testcase 36:  rs1:x26(0x04000000), rs2:x11(0xffffffbf), imm:0x3, result rd:x6(0x6c212149)
inst_36:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x3, 0x6c212149, 0x4000000, 0xffffffbf, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x6c212149) 

 
    # Testcase 37:  rs1:x25(0x08000000), rs2:x10(0xffffffdf), imm:0x3, result rd:x7(0x60212149)
inst_37:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x3, 0x60212149, 0x8000000, 0xffffffdf, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x60212149) 

 
    # Testcase 38:  rs1:x24(0x10000000), rs2:x9(0xffffffef), imm:0x3, result rd:x8(0x78212149)
inst_38:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x3, 0x78212149, 0x10000000, 0xffffffef, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x78212149) 

 
    # Testcase 39:  rs1:x23(0x20000000), rs2:x8(0xfffffff7), imm:0x3, result rd:x9(0x48212149)
inst_39:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x3, 0x48212149, 0x20000000, 0xfffffff7, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x48212149) 





    # address for test results
    # la x1, test_9_res
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_9_0)
 
    # Testcase 40:  rs1:x22(0x40000000), rs2:x7(0xfffffffb), imm:0x1, result rd:x10(0x61496821)
inst_40:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x1, 0x61496821, 0x40000000, 0xfffffffb, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x61496821) 

 
    # Testcase 41:  rs1:x21(0x80000000), rs2:x6(0xfffffffd), imm:0x1, result rd:x11(0xa1496821)
inst_41:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x1, 0xa1496821, 0x80000000, 0xfffffffd, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xa1496821) 

 
    # Testcase 42:  rs1:x20(0x00000000), rs2:x5(0xfffffffe), imm:0x3, result rd:x12(0x68212149)
inst_42:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x3, 0x68212149, 0x0, 0xfffffffe, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x68212149) 

 
    # Testcase 43:  rs1:x19(0xfffffffe), rs2:x4(0x00000000), imm:0x1, result rd:x13(0xa42a71a5)
inst_43:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x1, 0xa42a71a5, 0xfffffffe, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xa42a71a5) 

 
    # Testcase 44:  rs1:x18(0xfffffffd), rs2:x3(0x80000000), imm:0x2, result rd:x14(0x2a71a4a6)
inst_44:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x2, 0x2a71a4a6, 0xfffffffd, 0x80000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x2a71a4a6) 





    # address for test results
    # la x3, test_10_res
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x3,signature_10_0)
 
    # Testcase 45:  rs1:x17(0xfffffffb), rs2:x2(0x40000000), imm:0x0, result rd:x15(0xa4a42a75)
inst_45:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x0, 0xa4a42a75, 0xfffffffb, 0x40000000, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0xa4a42a75) 

 
    # Testcase 46:  rs1:x16(0xfffffff7), rs2:x1(0x20000000), imm:0x2, result rd:x16(0x2a71a4ac)
inst_46:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x2, 0x2a71a4ac, 0xfffffff7, 0x20000000, x3, 4, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x2a71a4ac) 

 
    # Testcase 47:  rs1:x15(0xffffffef), rs2:x31(0x10000000), imm:0x1, result rd:x17(0xa42a71b4)
inst_47:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x1, 0xa42a71b4, 0xffffffef, 0x10000000, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0xa42a71b4) 

 
    # Testcase 48:  rs1:x14(0xffffffdf), rs2:x30(0x08000000), imm:0x3, result rd:x18(0xb1a7a7c9)
inst_48:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x3, 0xb1a7a7c9, 0xffffffdf, 0x8000000, x3, 12, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0xb1a7a7c9) 

 
    # Testcase 49:  rs1:x13(0xffffffbf), rs2:x29(0x04000000), imm:0x3, result rd:x19(0x03cccc70)
inst_49:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x3, 0x03cccc70, 0xffffffbf, 0x4000000, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x03cccc70) 





    # address for test results
    # la x1, test_11_res
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_11_0)
 
    # Testcase 50:  rs1:x12(0xffffff7f), rs2:x28(0x02000000), imm:0x0, result rd:x20(0xa4a42af1)
inst_50:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x0, 0xa4a42af1, 0xffffff7f, 0x2000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xa4a42af1) 

 
    # Testcase 51:  rs1:x11(0xfffffeff), rs2:x27(0x01000000), imm:0x3, result rd:x21(0x2fbdbc6d)
inst_51:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x3, 0x2fbdbc6d, 0xfffffeff, 0x1000000, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x2fbdbc6d) 

 
    # Testcase 52:  rs1:x10(0xfffffdff), rs2:x26(0x00800000), imm:0x3, result rd:x22(0x71a4a62a)
inst_52:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x3, 0x71a4a62a, 0xfffffdff, 0x800000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x71a4a62a) 

 
    # Testcase 53:  rs1:x9(0xfffffbff), rs2:x25(0x00400000), imm:0x3, result rd:x23(0x71a4a02a)
inst_53:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x3, 0x71a4a02a, 0xfffffbff, 0x400000, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x71a4a02a) 

 
    # Testcase 54:  rs1:x8(0xfffff7ff), rs2:x24(0x00200000), imm:0x3, result rd:x24(0x71a4ac2a)
inst_54:
    TEST_RRI_OP(sm4ed, x24, x8, x24, 0x3, 0x71a4ac2a, 0xfffff7ff, 0x200000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x71a4ac2a) 





    # address for test results
    # la x1, test_12_res
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_12_0)
 
    # Testcase 55:  rs1:x7(0xffffefff), rs2:x23(0x00100000), imm:0x3, result rd:x25(0x71a4b42a)
inst_55:
    TEST_RRI_OP(sm4ed, x25, x7, x23, 0x3, 0x71a4b42a, 0xffffefff, 0x100000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x71a4b42a) 

 
    # Testcase 56:  rs1:x6(0xffffdfff), rs2:x22(0x00080000), imm:0x1, result rd:x26(0xa42a51a4)
inst_56:
    TEST_RRI_OP(sm4ed, x26, x6, x22, 0x1, 0xa42a51a4, 0xffffdfff, 0x80000, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xa42a51a4) 

 
    # Testcase 57:  rs1:x5(0xffffbfff), rs2:x21(0x00040000), imm:0x1, result rd:x27(0xa42a31a4)
inst_57:
    TEST_RRI_OP(sm4ed, x27, x5, x21, 0x1, 0xa42a31a4, 0xffffbfff, 0x40000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xa42a31a4) 

 
    # Testcase 58:  rs1:x4(0xffff7fff), rs2:x20(0x00020000), imm:0x3, result rd:x28(0x71a4242a)
inst_58:
    TEST_RRI_OP(sm4ed, x28, x4, x20, 0x3, 0x71a4242a, 0xffff7fff, 0x20000, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x71a4242a) 

 
    # Testcase 59:  rs1:x3(0xfffeffff), rs2:x19(0x00010000), imm:0x1, result rd:x29(0xa42b71a4)
inst_59:
    TEST_RRI_OP(sm4ed, x29, x3, x19, 0x1, 0xa42b71a4, 0xfffeffff, 0x10000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0xa42b71a4) 





    # address for test results
    # la x4, test_13_res
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x4,signature_13_0)
 
    # Testcase 60:  rs1:x2(0xfffdffff), rs2:x18(0x00008000), imm:0x2, result rd:x30(0x2a73a4a4)
inst_60:
    TEST_RRI_OP(sm4ed, x30, x2, x18, 0x2, 0x2a73a4a4, 0xfffdffff, 0x8000, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x2a73a4a4) 

 
    # Testcase 61:  rs1:x1(0xfffbffff), rs2:x17(0x00004000), imm:0x0, result rd:x31(0xa4a02a71)
inst_61:
    TEST_RRI_OP(sm4ed, x31, x1, x17, 0x0, 0xa4a02a71, 0xfffbffff, 0x4000, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xa4a02a71) 

 
    # Testcase 62:  rs1:x31(0xfff7ffff), rs2:x16(0x00002000), imm:0x2, result rd:x1(0x2a79a4a4)
inst_62:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x2, 0x2a79a4a4, 0xfff7ffff, 0x2000, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x2a79a4a4) 

 
    # Testcase 63:  rs1:x30(0xffefffff), rs2:x15(0x00001000), imm:0x1, result rd:x2(0x53c47853)
inst_63:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x1, 0x53c47853, 0xffefffff, 0x1000, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x53c47853) 

 
    # Testcase 64:  rs1:x29(0xffdfffff), rs2:x14(0x00000800), imm:0x3, result rd:x3(0x7184a42a)
inst_64:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x3, 0x7184a42a, 0xffdfffff, 0x800, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x7184a42a) 





    # address for test results
    # la x1, test_14_res
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_14_0)
 
    # Testcase 65:  rs1:x28(0xffbfffff), rs2:x13(0x00000400), imm:0x3, result rd:x4(0x71e4a42a)
inst_65:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x3, 0x71e4a42a, 0xffbfffff, 0x400, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x71e4a42a) 

 
    # Testcase 66:  rs1:x27(0xff7fffff), rs2:x12(0x00000200), imm:0x0, result rd:x5(0xa4242a71)
inst_66:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x0, 0xa4242a71, 0xff7fffff, 0x200, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xa4242a71) 

 
    # Testcase 67:  rs1:x26(0xfeffffff), rs2:x11(0x00000100), imm:0x0, result rd:x6(0xa5a42a71)
inst_67:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x0, 0xa5a42a71, 0xfeffffff, 0x100, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xa5a42a71) 

 
    # Testcase 68:  rs1:x25(0xfdffffff), rs2:x10(0x00000080), imm:0x0, result rd:x7(0x565416bd)
inst_68:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x0, 0x565416bd, 0xfdffffff, 0x80, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x565416bd) 

 
    # Testcase 69:  rs1:x24(0xfbffffff), rs2:x9(0x00000040), imm:0x0, result rd:x8(0xe6e2b9a4)
inst_69:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x0, 0xe6e2b9a4, 0xfbffffff, 0x40, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xe6e2b9a4) 





    # address for test results
    # la x1, test_15_res
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_15_0)
 
    # Testcase 70:  rs1:x23(0xf7ffffff), rs2:x8(0x00000020), imm:0x0, result rd:x9(0x858d6113)
inst_70:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x0, 0x858d6113, 0xf7ffffff, 0x20, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x858d6113) 

 
    # Testcase 71:  rs1:x22(0xefffffff), rs2:x7(0x00000010), imm:0x0, result rd:x10(0x4353d478)
inst_71:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x0, 0x4353d478, 0xefffffff, 0x10, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x4353d478) 

 
    # Testcase 72:  rs1:x21(0xdfffffff), rs2:x6(0x00000008), imm:0x0, result rd:x11(0x87a7e9b1)
inst_72:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x0, 0x87a7e9b1, 0xdfffffff, 0x8, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x87a7e9b1) 

 
    # Testcase 73:  rs1:x20(0xbfffffff), rs2:x5(0x00000004), imm:0x0, result rd:x12(0x8ccc3003)
inst_73:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x0, 0x8ccc3003, 0xbfffffff, 0x4, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x8ccc3003) 

 
    # Testcase 74:  rs1:x19(0x7fffffff), rs2:x4(0x00000002), imm:0x0, result rd:x13(0xd85815b2)
inst_74:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x0, 0xd85815b2, 0x7fffffff, 0x2, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xd85815b2) 





    # address for test results
    # la x4, test_16_res
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x4,signature_16_0)
 
    # Testcase 75:  rs1:x18(0xffffffff), rs2:x3(0x00000001), imm:0x0, result rd:x14(0xbdbd6d2f)
inst_75:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x0, 0xbdbd6d2f, 0xffffffff, 0x1, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xbdbd6d2f) 

 
    # Testcase 76:  rs1:x17(0x00000001), rs2:x2(0x00000000), imm:0x0, result rd:x15(0x5b5bd58f)
inst_76:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x0, 0x5b5bd58f, 0x1, 0x0, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x5b5bd58f) 

 
    # Testcase 77:  rs1:x16(0x00000002), rs2:x1(0x00000000), imm:0x0, result rd:x16(0x5b5bd58c)
inst_77:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x0, 0x5b5bd58c, 0x2, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x5b5bd58c) 

 
    # Testcase 78:  rs1:x15(0x00000004), rs2:x31(0x00000000), imm:0x0, result rd:x17(0x5b5bd58a)
inst_78:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x0, 0x5b5bd58a, 0x4, 0x0, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x5b5bd58a) 

 
    # Testcase 79:  rs1:x14(0x00000008), rs2:x30(0x00000000), imm:0x0, result rd:x18(0x5b5bd586)
inst_79:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x0, 0x5b5bd586, 0x8, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x5b5bd586) 





    # address for test results
    # la x1, test_17_res
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_17_0)
 
    # Testcase 80:  rs1:x13(0x00000010), rs2:x29(0x00000000), imm:0x0, result rd:x19(0x5b5bd59e)
inst_80:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x0, 0x5b5bd59e, 0x10, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x5b5bd59e) 

 
    # Testcase 81:  rs1:x12(0x00000020), rs2:x28(0x00000000), imm:0x0, result rd:x20(0x5b5bd5ae)
inst_81:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x0, 0x5b5bd5ae, 0x20, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x5b5bd5ae) 

 
    # Testcase 82:  rs1:x11(0x00000040), rs2:x27(0x00000000), imm:0x0, result rd:x21(0x5b5bd5ce)
inst_82:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x0, 0x5b5bd5ce, 0x40, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x5b5bd5ce) 

 
    # Testcase 83:  rs1:x10(0x00000080), rs2:x26(0x00000000), imm:0x0, result rd:x22(0x5b5bd50e)
inst_83:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x0, 0x5b5bd50e, 0x80, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x5b5bd50e) 

 
    # Testcase 84:  rs1:x9(0x00000100), rs2:x25(0x00000000), imm:0x0, result rd:x23(0x5b5bd48e)
inst_84:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x0, 0x5b5bd48e, 0x100, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x5b5bd48e) 





    # address for test results
    # la x1, test_18_res
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_18_0)
 
    # Testcase 85:  rs1:x8(0x00000200), rs2:x24(0x00000000), imm:0x0, result rd:x24(0x5b5bd78e)
inst_85:
    TEST_RRI_OP(sm4ed, x24, x8, x24, 0x0, 0x5b5bd78e, 0x200, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x5b5bd78e) 

 
    # Testcase 86:  rs1:x7(0x00000400), rs2:x23(0x00000000), imm:0x0, result rd:x25(0x5b5bd18e)
inst_86:
    TEST_RRI_OP(sm4ed, x25, x7, x23, 0x0, 0x5b5bd18e, 0x400, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x5b5bd18e) 

 
    # Testcase 87:  rs1:x6(0x00000800), rs2:x22(0x00000000), imm:0x0, result rd:x26(0x5b5bdd8e)
inst_87:
    TEST_RRI_OP(sm4ed, x26, x6, x22, 0x0, 0x5b5bdd8e, 0x800, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x5b5bdd8e) 

 
    # Testcase 88:  rs1:x5(0x00001000), rs2:x21(0x00000000), imm:0x0, result rd:x27(0x5b5bc58e)
inst_88:
    TEST_RRI_OP(sm4ed, x27, x5, x21, 0x0, 0x5b5bc58e, 0x1000, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x5b5bc58e) 

 
    # Testcase 89:  rs1:x4(0x00002000), rs2:x20(0x00000000), imm:0x0, result rd:x28(0x5b5bf58e)
inst_89:
    TEST_RRI_OP(sm4ed, x28, x4, x20, 0x0, 0x5b5bf58e, 0x2000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x5b5bf58e) 





    # address for test results
    # la x4, test_19_res
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x4,signature_19_0)
 
    # Testcase 90:  rs1:x3(0x00004000), rs2:x19(0x00000000), imm:0x0, result rd:x29(0x5b5b958e)
inst_90:
    TEST_RRI_OP(sm4ed, x29, x3, x19, 0x0, 0x5b5b958e, 0x4000, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x5b5b958e) 

 
    # Testcase 91:  rs1:x2(0x00008000), rs2:x18(0x00000000), imm:0x0, result rd:x30(0x5b5b558e)
inst_91:
    TEST_RRI_OP(sm4ed, x30, x2, x18, 0x0, 0x5b5b558e, 0x8000, 0x0, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x5b5b558e) 

 
    # Testcase 92:  rs1:x1(0x00010000), rs2:x17(0x00000000), imm:0x0, result rd:x31(0x5b5ad58e)
inst_92:
    TEST_RRI_OP(sm4ed, x31, x1, x17, 0x0, 0x5b5ad58e, 0x10000, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x5b5ad58e) 

 
    # Testcase 93:  rs1:x31(0x00020000), rs2:x16(0x00000000), imm:0x0, result rd:x1(0x5b59d58e)
inst_93:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x0, 0x5b59d58e, 0x20000, 0x0, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x5b59d58e) 

 
    # Testcase 94:  rs1:x30(0x00040000), rs2:x15(0x00000000), imm:0x0, result rd:x2(0x5b5fd58e)
inst_94:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x0, 0x5b5fd58e, 0x40000, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x5b5fd58e) 





    # address for test results
    # la x1, test_20_res
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_20_0)
 
    # Testcase 95:  rs1:x29(0x00080000), rs2:x14(0x00000000), imm:0x0, result rd:x3(0x5b53d58e)
inst_95:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x0, 0x5b53d58e, 0x80000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x5b53d58e) 

 
    # Testcase 96:  rs1:x28(0x00100000), rs2:x13(0x00000000), imm:0x0, result rd:x4(0x5b4bd58e)
inst_96:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x0, 0x5b4bd58e, 0x100000, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x5b4bd58e) 

 
    # Testcase 97:  rs1:x27(0x00200000), rs2:x12(0x00000000), imm:0x0, result rd:x5(0x5b7bd58e)
inst_97:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x0, 0x5b7bd58e, 0x200000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x5b7bd58e) 

 
    # Testcase 98:  rs1:x26(0x00400000), rs2:x11(0x00000000), imm:0x0, result rd:x6(0x5b1bd58e)
inst_98:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x0, 0x5b1bd58e, 0x400000, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x5b1bd58e) 

 
    # Testcase 99:  rs1:x25(0x00800000), rs2:x10(0x00000000), imm:0x0, result rd:x7(0x5bdbd58e)
inst_99:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x0, 0x5bdbd58e, 0x800000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x5bdbd58e) 





    # address for test results
    # la x1, test_21_res
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_21_0)
 
    # Testcase 100:  rs1:x24(0x01000000), rs2:x9(0x00000000), imm:0x0, result rd:x8(0x5a5bd58e)
inst_100:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x0, 0x5a5bd58e, 0x1000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x5a5bd58e) 

 
    # Testcase 101:  rs1:x23(0x02000000), rs2:x8(0x00000000), imm:0x0, result rd:x9(0x595bd58e)
inst_101:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x0, 0x595bd58e, 0x2000000, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x595bd58e) 

 
    # Testcase 102:  rs1:x22(0x04000000), rs2:x7(0x00000000), imm:0x0, result rd:x10(0x5f5bd58e)
inst_102:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x0, 0x5f5bd58e, 0x4000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x5f5bd58e) 

 
    # Testcase 103:  rs1:x21(0x08000000), rs2:x6(0x00000000), imm:0x0, result rd:x11(0x535bd58e)
inst_103:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x0, 0x535bd58e, 0x8000000, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x535bd58e) 

 
    # Testcase 104:  rs1:x20(0x10000000), rs2:x5(0x00000000), imm:0x0, result rd:x12(0x4b5bd58e)
inst_104:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x0, 0x4b5bd58e, 0x10000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x4b5bd58e) 





    # address for test results
    # la x5, test_22_res
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x5,signature_22_0)
 
    # Testcase 105:  rs1:x19(0x20000000), rs2:x4(0x00000000), imm:0x0, result rd:x13(0x7b5bd58e)
inst_105:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x0, 0x7b5bd58e, 0x20000000, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x7b5bd58e) 

 
    # Testcase 106:  rs1:x18(0x40000000), rs2:x3(0x00000000), imm:0x0, result rd:x14(0x1b5bd58e)
inst_106:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x0, 0x1b5bd58e, 0x40000000, 0x0, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x1b5bd58e) 

 
    # Testcase 107:  rs1:x17(0x80000000), rs2:x2(0x00000000), imm:0x0, result rd:x15(0xdb5bd58e)
inst_107:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x0, 0xdb5bd58e, 0x80000000, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0xdb5bd58e) 

 
    # Testcase 108:  rs1:x16(0x00000000), rs2:x1(0x00000000), imm:0x0, result rd:x16(0x5b5bd58e)
inst_108:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x0, 0x5b5bd58e, 0x0, 0x0, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x5b5bd58e) 

 
    # Testcase 109:  rs1:x15(0xfffffffe), rs2:x31(0x00000000), imm:0x0, result rd:x17(0xa4a42a70)
inst_109:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x0, 0xa4a42a70, 0xfffffffe, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0xa4a42a70) 





    # address for test results
    # la x1, test_23_res
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_23_0)
 
    # Testcase 110:  rs1:x14(0xfffffffd), rs2:x30(0x00000000), imm:0x0, result rd:x18(0xa4a42a73)
inst_110:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x0, 0xa4a42a73, 0xfffffffd, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xa4a42a73) 

 
    # Testcase 111:  rs1:x13(0xfffffffb), rs2:x29(0x00000000), imm:0x0, result rd:x19(0xa4a42a75)
inst_111:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x0, 0xa4a42a75, 0xfffffffb, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xa4a42a75) 

 
    # Testcase 112:  rs1:x12(0xfffffff7), rs2:x28(0x00000000), imm:0x0, result rd:x20(0xa4a42a79)
inst_112:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x0, 0xa4a42a79, 0xfffffff7, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xa4a42a79) 

 
    # Testcase 113:  rs1:x11(0xffffffef), rs2:x27(0x00000000), imm:0x0, result rd:x21(0xa4a42a61)
inst_113:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x0, 0xa4a42a61, 0xffffffef, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xa4a42a61) 

 
    # Testcase 114:  rs1:x10(0xffffffdf), rs2:x26(0x00000000), imm:0x0, result rd:x22(0xa4a42a51)
inst_114:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x0, 0xa4a42a51, 0xffffffdf, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xa4a42a51) 





    # address for test results
    # la x1, test_24_res
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_24_0)
 
    # Testcase 115:  rs1:x9(0xffffffbf), rs2:x25(0x00000000), imm:0x0, result rd:x23(0xa4a42a31)
inst_115:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x0, 0xa4a42a31, 0xffffffbf, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xa4a42a31) 

 
    # Testcase 116:  rs1:x8(0xffffff7f), rs2:x24(0x00000000), imm:0x0, result rd:x24(0xa4a42af1)
inst_116:
    TEST_RRI_OP(sm4ed, x24, x8, x24, 0x0, 0xa4a42af1, 0xffffff7f, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xa4a42af1) 

 
    # Testcase 117:  rs1:x7(0xfffffeff), rs2:x23(0x00000000), imm:0x0, result rd:x25(0xa4a42b71)
inst_117:
    TEST_RRI_OP(sm4ed, x25, x7, x23, 0x0, 0xa4a42b71, 0xfffffeff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xa4a42b71) 

 
    # Testcase 118:  rs1:x6(0xfffffdff), rs2:x22(0x00000000), imm:0x0, result rd:x26(0xa4a42871)
inst_118:
    TEST_RRI_OP(sm4ed, x26, x6, x22, 0x0, 0xa4a42871, 0xfffffdff, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xa4a42871) 

 
    # Testcase 119:  rs1:x5(0xfffffbff), rs2:x21(0x00000000), imm:0x0, result rd:x27(0xa4a42e71)
inst_119:
    TEST_RRI_OP(sm4ed, x27, x5, x21, 0x0, 0xa4a42e71, 0xfffffbff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xa4a42e71) 





    # address for test results
    # la x5, test_25_res
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x5,signature_25_0)
 
    # Testcase 120:  rs1:x4(0xfffff7ff), rs2:x20(0x00000000), imm:0x0, result rd:x28(0xa4a42271)
inst_120:
    TEST_RRI_OP(sm4ed, x28, x4, x20, 0x0, 0xa4a42271, 0xfffff7ff, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0xa4a42271) 

 
    # Testcase 121:  rs1:x3(0xffffefff), rs2:x19(0x00000000), imm:0x0, result rd:x29(0xa4a43a71)
inst_121:
    TEST_RRI_OP(sm4ed, x29, x3, x19, 0x0, 0xa4a43a71, 0xffffefff, 0x0, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0xa4a43a71) 

 
    # Testcase 122:  rs1:x2(0xffffdfff), rs2:x18(0x00000000), imm:0x0, result rd:x30(0xa4a40a71)
inst_122:
    TEST_RRI_OP(sm4ed, x30, x2, x18, 0x0, 0xa4a40a71, 0xffffdfff, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0xa4a40a71) 

 
    # Testcase 123:  rs1:x1(0xffffbfff), rs2:x17(0x00000000), imm:0x0, result rd:x31(0xa4a46a71)
inst_123:
    TEST_RRI_OP(sm4ed, x31, x1, x17, 0x0, 0xa4a46a71, 0xffffbfff, 0x0, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0xa4a46a71) 

 
    # Testcase 124:  rs1:x31(0xffff7fff), rs2:x16(0x00000000), imm:0x0, result rd:x1(0xa4a4aa71)
inst_124:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x0, 0xa4a4aa71, 0xffff7fff, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0xa4a4aa71) 





    # address for test results
    # la x1, test_26_res
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_26_0)
 
    # Testcase 125:  rs1:x30(0xfffeffff), rs2:x15(0x00000000), imm:0x0, result rd:x2(0xa4a52a71)
inst_125:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x0, 0xa4a52a71, 0xfffeffff, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0xa4a52a71) 

 
    # Testcase 126:  rs1:x29(0xfffdffff), rs2:x14(0x00000000), imm:0x0, result rd:x3(0xa4a62a71)
inst_126:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x0, 0xa4a62a71, 0xfffdffff, 0x0, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xa4a62a71) 

 
    # Testcase 127:  rs1:x28(0xfffbffff), rs2:x13(0x00000000), imm:0x0, result rd:x4(0xa4a02a71)
inst_127:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x0, 0xa4a02a71, 0xfffbffff, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xa4a02a71) 

 
    # Testcase 128:  rs1:x27(0xfff7ffff), rs2:x12(0x00000000), imm:0x0, result rd:x5(0xa4ac2a71)
inst_128:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x0, 0xa4ac2a71, 0xfff7ffff, 0x0, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xa4ac2a71) 

 
    # Testcase 129:  rs1:x26(0xffefffff), rs2:x11(0x00000000), imm:0x0, result rd:x6(0xa4b42a71)
inst_129:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x0, 0xa4b42a71, 0xffefffff, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0xa4b42a71) 





    # address for test results
    # la x1, test_27_res
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_27_0)
 
    # Testcase 130:  rs1:x25(0xffdfffff), rs2:x10(0x00000000), imm:0x0, result rd:x7(0xa4842a71)
inst_130:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x0, 0xa4842a71, 0xffdfffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xa4842a71) 

 
    # Testcase 131:  rs1:x24(0xffbfffff), rs2:x9(0x00000000), imm:0x0, result rd:x8(0xa4e42a71)
inst_131:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x0, 0xa4e42a71, 0xffbfffff, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xa4e42a71) 

 
    # Testcase 132:  rs1:x23(0xff7fffff), rs2:x8(0x00000000), imm:0x3, result rd:x9(0x7124a42a)
inst_132:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x3, 0x7124a42a, 0xff7fffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x7124a42a) 

 
    # Testcase 133:  rs1:x22(0xfeffffff), rs2:x7(0x00000000), imm:0x3, result rd:x10(0x70a4a42a)
inst_133:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x3, 0x70a4a42a, 0xfeffffff, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x70a4a42a) 

 
    # Testcase 134:  rs1:x21(0xfdffffff), rs2:x6(0x00000000), imm:0x3, result rd:x11(0x73a4a42a)
inst_134:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x3, 0x73a4a42a, 0xfdffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x73a4a42a) 





    # address for test results
    # la x6, test_28_res
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x6,signature_28_0)
 
    # Testcase 135:  rs1:x20(0xfbffffff), rs2:x5(0x00000000), imm:0x3, result rd:x12(0x75a4a42a)
inst_135:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x3, 0x75a4a42a, 0xfbffffff, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x75a4a42a) 

 
    # Testcase 136:  rs1:x19(0xf7ffffff), rs2:x4(0x00000000), imm:0x1, result rd:x13(0xac2a71a4)
inst_136:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x1, 0xac2a71a4, 0xf7ffffff, 0x0, x6, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0xac2a71a4) 

 
    # Testcase 137:  rs1:x18(0xefffffff), rs2:x3(0x00000000), imm:0x1, result rd:x14(0xb42a71a4)
inst_137:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x1, 0xb42a71a4, 0xefffffff, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0xb42a71a4) 

 
    # Testcase 138:  rs1:x17(0xdfffffff), rs2:x2(0x00000000), imm:0x3, result rd:x15(0x51a4a42a)
inst_138:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x3, 0x51a4a42a, 0xdfffffff, 0x0, x6, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x51a4a42a) 

 
    # Testcase 139:  rs1:x16(0xbfffffff), rs2:x1(0x00000000), imm:0x1, result rd:x16(0xe42a71a4)
inst_139:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x1, 0xe42a71a4, 0xbfffffff, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0xe42a71a4) 





    # address for test results
    # la x1, test_29_res
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_29_0)
 
    # Testcase 140:  rs1:x15(0x7fffffff), rs2:x31(0x00000000), imm:0x2, result rd:x17(0xaa71a4a4)
inst_140:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x2, 0xaa71a4a4, 0x7fffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0xaa71a4a4) 

 
    # Testcase 141:  rs1:x14(0xffffffff), rs2:x30(0x00000000), imm:0x0, result rd:x18(0xa4a42a71)
inst_141:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x0, 0xa4a42a71, 0xffffffff, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xa4a42a71) 

 
    # Testcase 142:  rs1:x13(0x10fd3dedadea5195), rs2:x29(0xdf7f3844121bcc23), imm:0x2, result rd:x19(0x8b54c90d)
inst_142:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x2, 0x8b54c90d, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x8b54c90d) 

 
    # Testcase 143:  rs1:x12(0xbd295ce2d2ffbec1), rs2:x28(0xf5adb41aa47d105b), imm:0x1, result rd:x0(0x00000000)
inst_143:
    TEST_RRI_OP(sm4ed, x0, x12, x28, 0x1, 0x00000000, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x00000000) 

 
    # Testcase 144:  rs1:x11(0xc9649f05a8e1a8bb), rs2:x0(0x82f6747f707af2c0), imm:0x3, result rd:x21(0x26baf36e)
inst_144:
    TEST_RRI_OP(sm4ed, x21, x11, x0, 0x3, 0x26baf36e, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x26baf36e) 





    # address for test results
    # la x1, test_30_res
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_30_0)
 
    # Testcase 145:  rs1:x0(0x3541291848c99fcb), rs2:x26(0x73a92fd4e19bfbc3), imm:0x3, result rd:x22(0xcda5a568)
inst_145:
    TEST_RRI_OP(sm4ed, x22, x0, x26, 0x3, 0xcda5a568, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xcda5a568) 



	
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

