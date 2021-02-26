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
RVTEST_ISA(RV64IK)

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
 
    # Testcase 0:  rs1:x31(0x10fd3dedadea5195), rs2:x16(0xdf7f3844121bcc23), imm:0x3, result rd:x1(0x000000005f803b0d)
inst_0:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x3, 0x000000005f803b0d, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x000000005f803b0d) 

 
    # Testcase 1:  rs1:x30(0xbd295ce2d2ffbec1), rs2:x15(0xf5adb41aa47d105b), imm:0x3, result rd:x2(0x0000000058f5b441)
inst_1:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x3, 0x0000000058f5b441, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x0000000058f5b441) 

 
    # Testcase 2:  rs1:x29(0xc9649f05a8e1a8bb), rs2:x14(0x82f6747f707af2c0), imm:0x0, result rd:x3(0x000000009ed72702)
inst_2:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x0, 0x000000009ed72702, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x000000009ed72702) 

 
    # Testcase 3:  rs1:x28(0x3541291848c99fcb), rs2:x13(0x73a92fd4e19bfbc3), imm:0x3, result rd:x4(0x00000000856c3aa3)
inst_3:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x3, 0x00000000856c3aa3, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x00000000856c3aa3) 

 
    # Testcase 4:  rs1:x27(0x10a24740461d524f), rs2:x12(0x546b0e54528a10af), imm:0x3, result rd:x5(0x00000000c31b54cc)
inst_4:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x3, 0x00000000c31b54cc, 0x10a24740461d524f, 0x546b0e54528a10af, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x00000000c31b54cc) 





    # address for test results
    # la x1, test_2_res
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_2_0)
 
    # Testcase 5:  rs1:x26(0x546b0e54528a10af), rs2:x11(0x10a24740461d524f), imm:0x3, result rd:x6(0x0000000019d64cb8)
inst_5:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x3, 0x0000000019d64cb8, 0x546b0e54528a10af, 0x10a24740461d524f, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000019d64cb8) 

 
    # Testcase 6:  rs1:x25(0x73a92fd4e19bfbc3), rs2:x10(0x3541291848c99fcb), imm:0x3, result rd:x7(0x000000006e95f542)
inst_6:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x3, 0x000000006e95f542, 0x73a92fd4e19bfbc3, 0x3541291848c99fcb, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x000000006e95f542) 

 
    # Testcase 7:  rs1:x24(0x82f6747f707af2c0), rs2:x9(0xc9649f05a8e1a8bb), imm:0x3, result rd:x8(0x00000000b079f103)
inst_7:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x3, 0x00000000b079f103, 0x82f6747f707af2c0, 0xc9649f05a8e1a8bb, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000000b079f103) 

 
    # Testcase 8:  rs1:x23(0xf5adb41aa47d105b), rs2:x8(0xbd295ce2d2ffbec1), imm:0x1, result rd:x9(0x00000000c9272736)
inst_8:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x1, 0x00000000c9272736, 0xf5adb41aa47d105b, 0xbd295ce2d2ffbec1, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000000c9272736) 

 
    # Testcase 9:  rs1:x22(0xdf7f3844121bcc23), rs2:x7(0x10fd3dedadea5195), imm:0x1, result rd:x10(0x00000000bf710b8e)
inst_9:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x1, 0x00000000bf710b8e, 0xdf7f3844121bcc23, 0x10fd3dedadea5195, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000bf710b8e) 





    # address for test results
    # la x1, test_3_res
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_3_0)
 
    # Testcase 10:  rs1:x21(0x0000000000000001), rs2:x6(0xffffffffffffffff), imm:0x3, result rd:x11(0x0000000068212148)
inst_10:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x3, 0x0000000068212148, 0x1, 0xffffffffffffffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x0000000068212148) 

 
    # Testcase 11:  rs1:x20(0x0000000000000002), rs2:x5(0x7fffffffffffffff), imm:0x1, result rd:x12(0x0000000021496823)
inst_11:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x1, 0x0000000021496823, 0x2, 0x7fffffffffffffff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x0000000021496823) 

 
    # Testcase 12:  rs1:x19(0x0000000000000004), rs2:x4(0xbfffffffffffffff), imm:0x2, result rd:x13(0x0000000049682125)
inst_12:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x2, 0x0000000049682125, 0x4, 0xbfffffffffffffff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x0000000049682125) 

 
    # Testcase 13:  rs1:x18(0x0000000000000008), rs2:x3(0xdfffffffffffffff), imm:0x0, result rd:x14(0x0000000021214960)
inst_13:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x0, 0x0000000021214960, 0x8, 0xdfffffffffffffff, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x0000000021214960) 

 
    # Testcase 14:  rs1:x17(0x0000000000000010), rs2:x2(0xefffffffffffffff), imm:0x2, result rd:x15(0x0000000049682131)
inst_14:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x2, 0x0000000049682131, 0x10, 0xefffffffffffffff, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x0000000049682131) 





    # address for test results
    # la x2, test_4_res
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x2,signature_4_0)
 
    # Testcase 15:  rs1:x16(0x0000000000000020), rs2:x1(0xf7ffffffffffffff), imm:0x1, result rd:x16(0x0000000021496801)
inst_15:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x1, 0x0000000021496801, 0x20, 0xf7ffffffffffffff, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x0000000021496801) 

 
    # Testcase 16:  rs1:x15(0x0000000000000040), rs2:x31(0xfbffffffffffffff), imm:0x3, result rd:x17(0x0000000068212109)
inst_16:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x3, 0x0000000068212109, 0x40, 0xfbffffffffffffff, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x0000000068212109) 

 
    # Testcase 17:  rs1:x14(0x0000000000000080), rs2:x30(0xfdffffffffffffff), imm:0x3, result rd:x18(0x00000000682121c9)
inst_17:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x3, 0x00000000682121c9, 0x80, 0xfdffffffffffffff, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x00000000682121c9) 

 
    # Testcase 18:  rs1:x13(0x0000000000000100), rs2:x29(0xfeffffffffffffff), imm:0x0, result rd:x19(0x0000000021214868)
inst_18:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x0, 0x0000000021214868, 0x100, 0xfeffffffffffffff, x2, 24, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x0000000021214868) 

 
    # Testcase 19:  rs1:x12(0x0000000000000200), rs2:x28(0xff7fffffffffffff), imm:0x3, result rd:x20(0x0000000068212349)
inst_19:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x3, 0x0000000068212349, 0x200, 0xff7fffffffffffff, x2, 32, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x0000000068212349) 





    # address for test results
    # la x1, test_5_res
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_5_0)
 
    # Testcase 20:  rs1:x11(0x0000000000000400), rs2:x27(0xffbfffffffffffff), imm:0x3, result rd:x21(0x0000000068212549)
inst_20:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x3, 0x0000000068212549, 0x400, 0xffbfffffffffffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000068212549) 

 
    # Testcase 21:  rs1:x10(0x0000000000000800), rs2:x26(0xffdfffffffffffff), imm:0x3, result rd:x22(0x0000000068212949)
inst_21:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x3, 0x0000000068212949, 0x800, 0xffdfffffffffffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000068212949) 

 
    # Testcase 22:  rs1:x9(0x0000000000001000), rs2:x25(0xffefffffffffffff), imm:0x3, result rd:x23(0x0000000068213149)
inst_22:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x3, 0x0000000068213149, 0x1000, 0xffefffffffffffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000068213149) 

 
    # Testcase 23:  rs1:x8(0x0000000000002000), rs2:x24(0xfff7ffffffffffff), imm:0x3, result rd:x24(0x0000000068210149)
inst_23:
    TEST_RRI_OP(sm4ed, x24, x8, x24, 0x3, 0x0000000068210149, 0x2000, 0xfff7ffffffffffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000068210149) 

 
    # Testcase 24:  rs1:x7(0x0000000000004000), rs2:x23(0xfffbffffffffffff), imm:0x1, result rd:x25(0x0000000021492821)
inst_24:
    TEST_RRI_OP(sm4ed, x25, x7, x23, 0x1, 0x0000000021492821, 0x4000, 0xfffbffffffffffff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000021492821) 





    # address for test results
    # la x1, test_6_res
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_6_0)
 
    # Testcase 25:  rs1:x6(0x0000000000008000), rs2:x22(0xfffdffffffffffff), imm:0x1, result rd:x26(0x000000002149e821)
inst_25:
    TEST_RRI_OP(sm4ed, x26, x6, x22, 0x1, 0x000000002149e821, 0x8000, 0xfffdffffffffffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x000000002149e821) 

 
    # Testcase 26:  rs1:x5(0x0000000000010000), rs2:x21(0xfffeffffffffffff), imm:0x3, result rd:x27(0x0000000068202149)
inst_26:
    TEST_RRI_OP(sm4ed, x27, x5, x21, 0x3, 0x0000000068202149, 0x10000, 0xfffeffffffffffff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x0000000068202149) 

 
    # Testcase 27:  rs1:x4(0x0000000000020000), rs2:x20(0xffff7fffffffffff), imm:0x1, result rd:x28(0x00000000214b6821)
inst_27:
    TEST_RRI_OP(sm4ed, x28, x4, x20, 0x1, 0x00000000214b6821, 0x20000, 0xffff7fffffffffff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x00000000214b6821) 

 
    # Testcase 28:  rs1:x3(0x0000000000040000), rs2:x19(0xffffbfffffffffff), imm:0x2, result rd:x29(0x00000000496c2121)
inst_28:
    TEST_RRI_OP(sm4ed, x29, x3, x19, 0x2, 0x00000000496c2121, 0x40000, 0xffffbfffffffffff, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x00000000496c2121) 

 
    # Testcase 29:  rs1:x2(0x0000000000080000), rs2:x18(0xffffdfffffffffff), imm:0x0, result rd:x30(0x0000000021294968)
inst_29:
    TEST_RRI_OP(sm4ed, x30, x2, x18, 0x0, 0x0000000021294968, 0x80000, 0xffffdfffffffffff, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000000021294968) 





    # address for test results
    # la x5, test_7_res
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x5,signature_7_0)
 
    # Testcase 30:  rs1:x1(0x0000000000100000), rs2:x17(0xffffefffffffffff), imm:0x2, result rd:x31(0x0000000049782121)
inst_30:
    TEST_RRI_OP(sm4ed, x31, x1, x17, 0x2, 0x0000000049782121, 0x100000, 0xffffefffffffffff, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x0000000049782121) 

 
    # Testcase 31:  rs1:x31(0x0000000000200000), rs2:x16(0xfffff7ffffffffff), imm:0x1, result rd:x1(0x0000000021696821)
inst_31:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x1, 0x0000000021696821, 0x200000, 0xfffff7ffffffffff, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x0000000021696821) 

 
    # Testcase 32:  rs1:x30(0x0000000000400000), rs2:x15(0xfffffbffffffffff), imm:0x3, result rd:x2(0x0000000068612149)
inst_32:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x3, 0x0000000068612149, 0x400000, 0xfffffbffffffffff, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x0000000068612149) 

 
    # Testcase 33:  rs1:x29(0x0000000000800000), rs2:x14(0xfffffdffffffffff), imm:0x3, result rd:x3(0x0000000068a12149)
inst_33:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x3, 0x0000000068a12149, 0x800000, 0xfffffdffffffffff, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x0000000068a12149) 

 
    # Testcase 34:  rs1:x28(0x0000000001000000), rs2:x13(0xfffffeffffffffff), imm:0x0, result rd:x4(0x0000000020214968)
inst_34:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x0, 0x0000000020214968, 0x1000000, 0xfffffeffffffffff, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x0000000020214968) 





    # address for test results
    # la x1, test_8_res
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_8_0)
 
    # Testcase 35:  rs1:x27(0x0000000002000000), rs2:x12(0xffffff7fffffffff), imm:0x3, result rd:x5(0x000000006a212149)
inst_35:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x3, 0x000000006a212149, 0x2000000, 0xffffff7fffffffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x000000006a212149) 

 
    # Testcase 36:  rs1:x26(0x0000000004000000), rs2:x11(0xffffffbfffffffff), imm:0x3, result rd:x6(0x000000006c212149)
inst_36:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x3, 0x000000006c212149, 0x4000000, 0xffffffbfffffffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x000000006c212149) 

 
    # Testcase 37:  rs1:x25(0x0000000008000000), rs2:x10(0xffffffdfffffffff), imm:0x3, result rd:x7(0x0000000060212149)
inst_37:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x3, 0x0000000060212149, 0x8000000, 0xffffffdfffffffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000060212149) 

 
    # Testcase 38:  rs1:x24(0x0000000010000000), rs2:x9(0xffffffefffffffff), imm:0x3, result rd:x8(0x0000000078212149)
inst_38:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x3, 0x0000000078212149, 0x10000000, 0xffffffefffffffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000078212149) 

 
    # Testcase 39:  rs1:x23(0x0000000020000000), rs2:x8(0xfffffff7ffffffff), imm:0x3, result rd:x9(0x0000000048212149)
inst_39:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x3, 0x0000000048212149, 0x20000000, 0xfffffff7ffffffff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000048212149) 





    # address for test results
    # la x1, test_9_res
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_9_0)
 
    # Testcase 40:  rs1:x22(0x0000000040000000), rs2:x7(0xfffffffbffffffff), imm:0x1, result rd:x10(0x0000000061496821)
inst_40:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x1, 0x0000000061496821, 0x40000000, 0xfffffffbffffffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000061496821) 

 
    # Testcase 41:  rs1:x21(0x0000000080000000), rs2:x6(0xfffffffdffffffff), imm:0x1, result rd:x11(0x00000000a1496821)
inst_41:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x1, 0x00000000a1496821, 0x80000000, 0xfffffffdffffffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00000000a1496821) 

 
    # Testcase 42:  rs1:x20(0x0000000100000000), rs2:x5(0xfffffffeffffffff), imm:0x3, result rd:x12(0x0000000068212149)
inst_42:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x3, 0x0000000068212149, 0x100000000, 0xfffffffeffffffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0000000068212149) 

 
    # Testcase 43:  rs1:x19(0x0000000200000000), rs2:x4(0xffffffff7fffffff), imm:0x1, result rd:x13(0x0000000021496821)
inst_43:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x1, 0x0000000021496821, 0x200000000, 0xffffffff7fffffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0000000021496821) 

 
    # Testcase 44:  rs1:x18(0x0000000400000000), rs2:x3(0xffffffffbfffffff), imm:0x2, result rd:x14(0x0000000049682121)
inst_44:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x2, 0x0000000049682121, 0x400000000, 0xffffffffbfffffff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x0000000049682121) 





    # address for test results
    # la x3, test_10_res
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x3,signature_10_0)
 
    # Testcase 45:  rs1:x17(0x0000000800000000), rs2:x2(0xffffffffdfffffff), imm:0x0, result rd:x15(0x0000000021214968)
inst_45:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x0, 0x0000000021214968, 0x800000000, 0xffffffffdfffffff, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x0000000021214968) 

 
    # Testcase 46:  rs1:x16(0x0000001000000000), rs2:x1(0xffffffffefffffff), imm:0x2, result rd:x16(0x0000000049682121)
inst_46:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x2, 0x0000000049682121, 0x1000000000, 0xffffffffefffffff, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x0000000049682121) 

 
    # Testcase 47:  rs1:x15(0x0000002000000000), rs2:x31(0xfffffffff7ffffff), imm:0x1, result rd:x17(0x0000000021496821)
inst_47:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x1, 0x0000000021496821, 0x2000000000, 0xfffffffff7ffffff, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x0000000021496821) 

 
    # Testcase 48:  rs1:x14(0x0000004000000000), rs2:x30(0xfffffffffbffffff), imm:0x3, result rd:x18(0x00000000c6f8f83e)
inst_48:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x3, 0x00000000c6f8f83e, 0x4000000000, 0xfffffffffbffffff, x3, 24, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x00000000c6f8f83e) 

 
    # Testcase 49:  rs1:x13(0x0000008000000000), rs2:x29(0xfffffffffdffffff), imm:0x3, result rd:x19(0x00000000e72f2fc8)
inst_49:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x3, 0x00000000e72f2fc8, 0x8000000000, 0xfffffffffdffffff, x3, 32, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x00000000e72f2fc8) 





    # address for test results
    # la x1, test_11_res
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_11_0)
 
    # Testcase 50:  rs1:x12(0x0000010000000000), rs2:x28(0xfffffffffeffffff), imm:0x0, result rd:x20(0x0000000021214968)
inst_50:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x0, 0x0000000021214968, 0x10000000000, 0xfffffffffeffffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x0000000021214968) 

 
    # Testcase 51:  rs1:x11(0x0000020000000000), rs2:x27(0xffffffffff7fffff), imm:0x3, result rd:x21(0x0000000068212149)
inst_51:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x3, 0x0000000068212149, 0x20000000000, 0xffffffffff7fffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000068212149) 

 
    # Testcase 52:  rs1:x10(0x0000040000000000), rs2:x26(0xffffffffffbfffff), imm:0x3, result rd:x22(0x0000000068212149)
inst_52:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x3, 0x0000000068212149, 0x40000000000, 0xffffffffffbfffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000068212149) 

 
    # Testcase 53:  rs1:x9(0x0000080000000000), rs2:x25(0xffffffffffdfffff), imm:0x3, result rd:x23(0x0000000068212149)
inst_53:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x3, 0x0000000068212149, 0x80000000000, 0xffffffffffdfffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000068212149) 

 
    # Testcase 54:  rs1:x8(0x0000100000000000), rs2:x24(0xffffffffffefffff), imm:0x3, result rd:x24(0x0000000068212149)
inst_54:
    TEST_RRI_OP(sm4ed, x24, x8, x24, 0x3, 0x0000000068212149, 0x100000000000, 0xffffffffffefffff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000068212149) 





    # address for test results
    # la x1, test_12_res
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_12_0)
 
    # Testcase 55:  rs1:x7(0x0000200000000000), rs2:x23(0xfffffffffff7ffff), imm:0x3, result rd:x25(0x0000000068212149)
inst_55:
    TEST_RRI_OP(sm4ed, x25, x7, x23, 0x3, 0x0000000068212149, 0x200000000000, 0xfffffffffff7ffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000068212149) 

 
    # Testcase 56:  rs1:x6(0x0000400000000000), rs2:x22(0xfffffffffffbffff), imm:0x1, result rd:x26(0x0000000021496821)
inst_56:
    TEST_RRI_OP(sm4ed, x26, x6, x22, 0x1, 0x0000000021496821, 0x400000000000, 0xfffffffffffbffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0000000021496821) 

 
    # Testcase 57:  rs1:x5(0x0000800000000000), rs2:x21(0xfffffffffffdffff), imm:0x1, result rd:x27(0x0000000021496821)
inst_57:
    TEST_RRI_OP(sm4ed, x27, x5, x21, 0x1, 0x0000000021496821, 0x800000000000, 0xfffffffffffdffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x0000000021496821) 

 
    # Testcase 58:  rs1:x4(0x0001000000000000), rs2:x20(0xfffffffffffeffff), imm:0x3, result rd:x28(0x0000000068212149)
inst_58:
    TEST_RRI_OP(sm4ed, x28, x4, x20, 0x3, 0x0000000068212149, 0x1000000000000, 0xfffffffffffeffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x0000000068212149) 

 
    # Testcase 59:  rs1:x3(0x0002000000000000), rs2:x19(0xffffffffffff7fff), imm:0x1, result rd:x29(0x000000007a9ce67a)
inst_59:
    TEST_RRI_OP(sm4ed, x29, x3, x19, 0x1, 0x000000007a9ce67a, 0x2000000000000, 0xffffffffffff7fff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x000000007a9ce67a) 





    # address for test results
    # la x4, test_13_res
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x4,signature_13_0)
 
    # Testcase 60:  rs1:x2(0x0004000000000000), rs2:x18(0xffffffffffffbfff), imm:0x2, result rd:x30(0x0000000049682121)
inst_60:
    TEST_RRI_OP(sm4ed, x30, x2, x18, 0x2, 0x0000000049682121, 0x4000000000000, 0xffffffffffffbfff, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x0000000049682121) 

 
    # Testcase 61:  rs1:x1(0x0008000000000000), rs2:x17(0xffffffffffffdfff), imm:0x0, result rd:x31(0x0000000021214968)
inst_61:
    TEST_RRI_OP(sm4ed, x31, x1, x17, 0x0, 0x0000000021214968, 0x8000000000000, 0xffffffffffffdfff, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x0000000021214968) 

 
    # Testcase 62:  rs1:x31(0x0010000000000000), rs2:x16(0xffffffffffffefff), imm:0x2, result rd:x1(0x0000000049682121)
inst_62:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x2, 0x0000000049682121, 0x10000000000000, 0xffffffffffffefff, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x0000000049682121) 

 
    # Testcase 63:  rs1:x30(0x0020000000000000), rs2:x15(0xfffffffffffff7ff), imm:0x1, result rd:x2(0x000000008020a080)
inst_63:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x1, 0x000000008020a080, 0x20000000000000, 0xfffffffffffff7ff, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x000000008020a080) 

 
    # Testcase 64:  rs1:x29(0x0040000000000000), rs2:x14(0xfffffffffffffbff), imm:0x3, result rd:x3(0x0000000068212149)
inst_64:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x3, 0x0000000068212149, 0x40000000000000, 0xfffffffffffffbff, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x0000000068212149) 





    # address for test results
    # la x1, test_14_res
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_14_0)
 
    # Testcase 65:  rs1:x28(0x0080000000000000), rs2:x13(0xfffffffffffffdff), imm:0x3, result rd:x4(0x0000000068212149)
inst_65:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x3, 0x0000000068212149, 0x80000000000000, 0xfffffffffffffdff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x0000000068212149) 

 
    # Testcase 66:  rs1:x27(0x0100000000000000), rs2:x12(0xfffffffffffffeff), imm:0x0, result rd:x5(0x0000000021214968)
inst_66:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x0, 0x0000000021214968, 0x100000000000000, 0xfffffffffffffeff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0000000021214968) 

 
    # Testcase 67:  rs1:x26(0x0200000000000000), rs2:x11(0xffffffffffffff7f), imm:0x3, result rd:x6(0x0000000068212149)
inst_67:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x3, 0x0000000068212149, 0x200000000000000, 0xffffffffffffff7f, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000068212149) 

 
    # Testcase 68:  rs1:x25(0x0400000000000000), rs2:x10(0xffffffffffffffbf), imm:0x3, result rd:x7(0x0000000068212149)
inst_68:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x3, 0x0000000068212149, 0x400000000000000, 0xffffffffffffffbf, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000068212149) 

 
    # Testcase 69:  rs1:x24(0x0800000000000000), rs2:x9(0xffffffffffffffdf), imm:0x3, result rd:x8(0x0000000068212149)
inst_69:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x3, 0x0000000068212149, 0x800000000000000, 0xffffffffffffffdf, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000068212149) 





    # address for test results
    # la x1, test_15_res
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_15_0)
 
    # Testcase 70:  rs1:x23(0x1000000000000000), rs2:x8(0xffffffffffffffef), imm:0x3, result rd:x9(0x0000000068212149)
inst_70:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x3, 0x0000000068212149, 0x1000000000000000, 0xffffffffffffffef, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000068212149) 

 
    # Testcase 71:  rs1:x22(0x2000000000000000), rs2:x7(0xfffffffffffffff7), imm:0x3, result rd:x10(0x0000000068212149)
inst_71:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x3, 0x0000000068212149, 0x2000000000000000, 0xfffffffffffffff7, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000068212149) 

 
    # Testcase 72:  rs1:x21(0x4000000000000000), rs2:x6(0xfffffffffffffffb), imm:0x1, result rd:x11(0x0000000021496821)
inst_72:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x1, 0x0000000021496821, 0x4000000000000000, 0xfffffffffffffffb, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0000000021496821) 

 
    # Testcase 73:  rs1:x20(0x8000000000000000), rs2:x5(0xfffffffffffffffd), imm:0x1, result rd:x12(0x0000000021496821)
inst_73:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x1, 0x0000000021496821, 0x8000000000000000, 0xfffffffffffffffd, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0000000021496821) 

 
    # Testcase 74:  rs1:x19(0x0000000000000000), rs2:x4(0xfffffffffffffffe), imm:0x3, result rd:x13(0x0000000068212149)
inst_74:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x3, 0x0000000068212149, 0x0, 0xfffffffffffffffe, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0000000068212149) 





    # address for test results
    # la x4, test_16_res
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x4,signature_16_0)
 
    # Testcase 75:  rs1:x18(0xfffffffffffffffe), rs2:x3(0x0000000000000000), imm:0x1, result rd:x14(0x00000000a42a71a5)
inst_75:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x1, 0x00000000a42a71a5, 0xfffffffffffffffe, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0x00000000a42a71a5) 

 
    # Testcase 76:  rs1:x17(0xfffffffffffffffd), rs2:x2(0x8000000000000000), imm:0x2, result rd:x15(0x000000002a71a4a6)
inst_76:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x2, 0x000000002a71a4a6, 0xfffffffffffffffd, 0x8000000000000000, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x000000002a71a4a6) 

 
    # Testcase 77:  rs1:x16(0xfffffffffffffffb), rs2:x1(0x4000000000000000), imm:0x0, result rd:x16(0x00000000a4a42a75)
inst_77:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x0, 0x00000000a4a42a75, 0xfffffffffffffffb, 0x4000000000000000, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x00000000a4a42a75) 

 
    # Testcase 78:  rs1:x15(0xfffffffffffffff7), rs2:x31(0x2000000000000000), imm:0x2, result rd:x17(0x000000002a71a4ac)
inst_78:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x2, 0x000000002a71a4ac, 0xfffffffffffffff7, 0x2000000000000000, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x000000002a71a4ac) 

 
    # Testcase 79:  rs1:x14(0xffffffffffffffef), rs2:x30(0x1000000000000000), imm:0x1, result rd:x18(0x00000000a42a71b4)
inst_79:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x1, 0x00000000a42a71b4, 0xffffffffffffffef, 0x1000000000000000, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x00000000a42a71b4) 





    # address for test results
    # la x1, test_17_res
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_17_0)
 
    # Testcase 80:  rs1:x13(0xffffffffffffffdf), rs2:x29(0x0800000000000000), imm:0x3, result rd:x19(0x0000000071a4a40a)
inst_80:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x3, 0x0000000071a4a40a, 0xffffffffffffffdf, 0x800000000000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x0000000071a4a40a) 

 
    # Testcase 81:  rs1:x12(0xffffffffffffffbf), rs2:x28(0x0400000000000000), imm:0x3, result rd:x20(0x0000000071a4a46a)
inst_81:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x3, 0x0000000071a4a46a, 0xffffffffffffffbf, 0x400000000000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x0000000071a4a46a) 

 
    # Testcase 82:  rs1:x11(0xffffffffffffff7f), rs2:x27(0x0200000000000000), imm:0x0, result rd:x21(0x00000000a4a42af1)
inst_82:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x0, 0x00000000a4a42af1, 0xffffffffffffff7f, 0x200000000000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000000a4a42af1) 

 
    # Testcase 83:  rs1:x10(0xfffffffffffffeff), rs2:x26(0x0100000000000000), imm:0x3, result rd:x22(0x0000000071a4a52a)
inst_83:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x3, 0x0000000071a4a52a, 0xfffffffffffffeff, 0x100000000000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000071a4a52a) 

 
    # Testcase 84:  rs1:x9(0xfffffffffffffdff), rs2:x25(0x0080000000000000), imm:0x3, result rd:x23(0x0000000071a4a62a)
inst_84:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x3, 0x0000000071a4a62a, 0xfffffffffffffdff, 0x80000000000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000071a4a62a) 





    # address for test results
    # la x1, test_18_res
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_18_0)
 
    # Testcase 85:  rs1:x8(0xfffffffffffffbff), rs2:x24(0x0040000000000000), imm:0x3, result rd:x24(0x0000000071a4a02a)
inst_85:
    TEST_RRI_OP(sm4ed, x24, x8, x24, 0x3, 0x0000000071a4a02a, 0xfffffffffffffbff, 0x40000000000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000071a4a02a) 

 
    # Testcase 86:  rs1:x7(0xfffffffffffff7ff), rs2:x23(0x0020000000000000), imm:0x3, result rd:x25(0x0000000071a4ac2a)
inst_86:
    TEST_RRI_OP(sm4ed, x25, x7, x23, 0x3, 0x0000000071a4ac2a, 0xfffffffffffff7ff, 0x20000000000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000071a4ac2a) 

 
    # Testcase 87:  rs1:x6(0xffffffffffffefff), rs2:x22(0x0010000000000000), imm:0x3, result rd:x26(0x0000000071a4b42a)
inst_87:
    TEST_RRI_OP(sm4ed, x26, x6, x22, 0x3, 0x0000000071a4b42a, 0xffffffffffffefff, 0x10000000000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0000000071a4b42a) 

 
    # Testcase 88:  rs1:x5(0xffffffffffffdfff), rs2:x21(0x0008000000000000), imm:0x1, result rd:x27(0x00000000a42a51a4)
inst_88:
    TEST_RRI_OP(sm4ed, x27, x5, x21, 0x1, 0x00000000a42a51a4, 0xffffffffffffdfff, 0x8000000000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00000000a42a51a4) 

 
    # Testcase 89:  rs1:x4(0xffffffffffffbfff), rs2:x20(0x0004000000000000), imm:0x1, result rd:x28(0x00000000a42a31a4)
inst_89:
    TEST_RRI_OP(sm4ed, x28, x4, x20, 0x1, 0x00000000a42a31a4, 0xffffffffffffbfff, 0x4000000000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x00000000a42a31a4) 





    # address for test results
    # la x4, test_19_res
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x4,signature_19_0)
 
    # Testcase 90:  rs1:x3(0xffffffffffff7fff), rs2:x19(0x0002000000000000), imm:0x3, result rd:x29(0x0000000071a4242a)
inst_90:
    TEST_RRI_OP(sm4ed, x29, x3, x19, 0x3, 0x0000000071a4242a, 0xffffffffffff7fff, 0x2000000000000, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x0000000071a4242a) 

 
    # Testcase 91:  rs1:x2(0xfffffffffffeffff), rs2:x18(0x0001000000000000), imm:0x1, result rd:x30(0x00000000a42b71a4)
inst_91:
    TEST_RRI_OP(sm4ed, x30, x2, x18, 0x1, 0x00000000a42b71a4, 0xfffffffffffeffff, 0x1000000000000, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x00000000a42b71a4) 

 
    # Testcase 92:  rs1:x1(0xfffffffffffdffff), rs2:x17(0x0000800000000000), imm:0x2, result rd:x31(0x000000002a73a4a4)
inst_92:
    TEST_RRI_OP(sm4ed, x31, x1, x17, 0x2, 0x000000002a73a4a4, 0xfffffffffffdffff, 0x800000000000, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x000000002a73a4a4) 

 
    # Testcase 93:  rs1:x31(0xfffffffffffbffff), rs2:x16(0x0000400000000000), imm:0x0, result rd:x1(0x00000000a4a02a71)
inst_93:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x0, 0x00000000a4a02a71, 0xfffffffffffbffff, 0x400000000000, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00000000a4a02a71) 

 
    # Testcase 94:  rs1:x30(0xfffffffffff7ffff), rs2:x15(0x0000200000000000), imm:0x2, result rd:x2(0x000000002a79a4a4)
inst_94:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x2, 0x000000002a79a4a4, 0xfffffffffff7ffff, 0x200000000000, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x000000002a79a4a4) 





    # address for test results
    # la x1, test_20_res
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_20_0)
 
    # Testcase 95:  rs1:x29(0xffffffffffefffff), rs2:x14(0x0000100000000000), imm:0x1, result rd:x3(0x00000000a43a71a4)
inst_95:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x1, 0x00000000a43a71a4, 0xffffffffffefffff, 0x100000000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x00000000a43a71a4) 

 
    # Testcase 96:  rs1:x28(0xffffffffffdfffff), rs2:x13(0x0000080000000000), imm:0x3, result rd:x4(0x000000007184a42a)
inst_96:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x3, 0x000000007184a42a, 0xffffffffffdfffff, 0x80000000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x000000007184a42a) 

 
    # Testcase 97:  rs1:x27(0xffffffffffbfffff), rs2:x12(0x0000040000000000), imm:0x3, result rd:x5(0x0000000071e4a42a)
inst_97:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x3, 0x0000000071e4a42a, 0xffffffffffbfffff, 0x40000000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0000000071e4a42a) 

 
    # Testcase 98:  rs1:x26(0xffffffffff7fffff), rs2:x11(0x0000020000000000), imm:0x0, result rd:x6(0x00000000a4242a71)
inst_98:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x0, 0x00000000a4242a71, 0xffffffffff7fffff, 0x20000000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00000000a4242a71) 

 
    # Testcase 99:  rs1:x25(0xfffffffffeffffff), rs2:x10(0x0000010000000000), imm:0x3, result rd:x7(0x0000000070a4a42a)
inst_99:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x3, 0x0000000070a4a42a, 0xfffffffffeffffff, 0x10000000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000070a4a42a) 





    # address for test results
    # la x1, test_21_res
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_21_0)
 
    # Testcase 100:  rs1:x24(0xfffffffffdffffff), rs2:x9(0x0000008000000000), imm:0x3, result rd:x8(0x0000000073a4a42a)
inst_100:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x3, 0x0000000073a4a42a, 0xfffffffffdffffff, 0x8000000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000073a4a42a) 

 
    # Testcase 101:  rs1:x23(0xfffffffffbffffff), rs2:x8(0x0000004000000000), imm:0x3, result rd:x9(0x0000000075a4a42a)
inst_101:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x3, 0x0000000075a4a42a, 0xfffffffffbffffff, 0x4000000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000075a4a42a) 

 
    # Testcase 102:  rs1:x22(0xfffffffff7ffffff), rs2:x7(0x0000002000000000), imm:0x3, result rd:x10(0x0000000079a4a42a)
inst_102:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x3, 0x0000000079a4a42a, 0xfffffffff7ffffff, 0x2000000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000079a4a42a) 

 
    # Testcase 103:  rs1:x21(0xffffffffefffffff), rs2:x6(0x0000001000000000), imm:0x3, result rd:x11(0x0000000061a4a42a)
inst_103:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x3, 0x0000000061a4a42a, 0xffffffffefffffff, 0x1000000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0000000061a4a42a) 

 
    # Testcase 104:  rs1:x20(0xffffffffdfffffff), rs2:x5(0x0000000800000000), imm:0x1, result rd:x12(0x00000000842a71a4)
inst_104:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x1, 0x00000000842a71a4, 0xffffffffdfffffff, 0x800000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000842a71a4) 





    # address for test results
    # la x5, test_22_res
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x5,signature_22_0)
 
    # Testcase 105:  rs1:x19(0xffffffffbfffffff), rs2:x4(0x0000000400000000), imm:0x1, result rd:x13(0x00000000e42a71a4)
inst_105:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x1, 0x00000000e42a71a4, 0xffffffffbfffffff, 0x400000000, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x00000000e42a71a4) 

 
    # Testcase 106:  rs1:x18(0xffffffff7fffffff), rs2:x3(0x0000000200000000), imm:0x3, result rd:x14(0x00000000f1a4a42a)
inst_106:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x3, 0x00000000f1a4a42a, 0xffffffff7fffffff, 0x200000000, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x00000000f1a4a42a) 

 
    # Testcase 107:  rs1:x17(0xfffffffeffffffff), rs2:x2(0x0000000100000000), imm:0x1, result rd:x15(0x00000000a42a71a4)
inst_107:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x1, 0x00000000a42a71a4, 0xfffffffeffffffff, 0x100000000, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x00000000a42a71a4) 

 
    # Testcase 108:  rs1:x16(0xfffffffdffffffff), rs2:x1(0x0000000080000000), imm:0x2, result rd:x16(0x000000002a71a4a4)
inst_108:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x2, 0x000000002a71a4a4, 0xfffffffdffffffff, 0x80000000, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x000000002a71a4a4) 

 
    # Testcase 109:  rs1:x15(0xfffffffbffffffff), rs2:x31(0x0000000040000000), imm:0x0, result rd:x17(0x00000000a4a42a71)
inst_109:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x0, 0x00000000a4a42a71, 0xfffffffbffffffff, 0x40000000, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0x00000000a4a42a71) 





    # address for test results
    # la x1, test_23_res
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_23_0)
 
    # Testcase 110:  rs1:x14(0xfffffff7ffffffff), rs2:x30(0x0000000020000000), imm:0x2, result rd:x18(0x000000002a71a4a4)
inst_110:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x2, 0x000000002a71a4a4, 0xfffffff7ffffffff, 0x20000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x000000002a71a4a4) 

 
    # Testcase 111:  rs1:x13(0xffffffefffffffff), rs2:x29(0x0000000010000000), imm:0x1, result rd:x19(0x00000000a42a71a4)
inst_111:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x1, 0x00000000a42a71a4, 0xffffffefffffffff, 0x10000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x00000000a42a71a4) 

 
    # Testcase 112:  rs1:x12(0xffffffdfffffffff), rs2:x28(0x0000000008000000), imm:0x3, result rd:x20(0x00000000b1a7a7e9)
inst_112:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x3, 0x00000000b1a7a7e9, 0xffffffdfffffffff, 0x8000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00000000b1a7a7e9) 

 
    # Testcase 113:  rs1:x11(0xffffffbfffffffff), rs2:x27(0x0000000004000000), imm:0x3, result rd:x21(0x0000000003cccc30)
inst_113:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x3, 0x0000000003cccc30, 0xffffffbfffffffff, 0x4000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000003cccc30) 

 
    # Testcase 114:  rs1:x10(0xffffff7fffffffff), rs2:x26(0x0000000002000000), imm:0x0, result rd:x22(0x00000000a4a42a71)
inst_114:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x0, 0x00000000a4a42a71, 0xffffff7fffffffff, 0x2000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000a4a42a71) 





    # address for test results
    # la x1, test_24_res
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_24_0)
 
    # Testcase 115:  rs1:x9(0xfffffeffffffffff), rs2:x25(0x0000000001000000), imm:0x3, result rd:x23(0x000000002fbdbd6d)
inst_115:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x3, 0x000000002fbdbd6d, 0xfffffeffffffffff, 0x1000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x000000002fbdbd6d) 

 
    # Testcase 116:  rs1:x8(0xfffffdffffffffff), rs2:x24(0x0000000000800000), imm:0x3, result rd:x24(0x0000000071a4a42a)
inst_116:
    TEST_RRI_OP(sm4ed, x24, x8, x24, 0x3, 0x0000000071a4a42a, 0xfffffdffffffffff, 0x800000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000071a4a42a) 

 
    # Testcase 117:  rs1:x7(0xfffffbffffffffff), rs2:x23(0x0000000000400000), imm:0x3, result rd:x25(0x0000000071a4a42a)
inst_117:
    TEST_RRI_OP(sm4ed, x25, x7, x23, 0x3, 0x0000000071a4a42a, 0xfffffbffffffffff, 0x400000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000071a4a42a) 

 
    # Testcase 118:  rs1:x6(0xfffff7ffffffffff), rs2:x22(0x0000000000200000), imm:0x3, result rd:x26(0x0000000071a4a42a)
inst_118:
    TEST_RRI_OP(sm4ed, x26, x6, x22, 0x3, 0x0000000071a4a42a, 0xfffff7ffffffffff, 0x200000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0000000071a4a42a) 

 
    # Testcase 119:  rs1:x5(0xffffefffffffffff), rs2:x21(0x0000000000100000), imm:0x3, result rd:x27(0x0000000071a4a42a)
inst_119:
    TEST_RRI_OP(sm4ed, x27, x5, x21, 0x3, 0x0000000071a4a42a, 0xffffefffffffffff, 0x100000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x0000000071a4a42a) 





    # address for test results
    # la x5, test_25_res
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x5,signature_25_0)
 
    # Testcase 120:  rs1:x4(0xffffdfffffffffff), rs2:x20(0x0000000000080000), imm:0x1, result rd:x28(0x00000000a42a71a4)
inst_120:
    TEST_RRI_OP(sm4ed, x28, x4, x20, 0x1, 0x00000000a42a71a4, 0xffffdfffffffffff, 0x80000, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0x00000000a42a71a4) 

 
    # Testcase 121:  rs1:x3(0xffffbfffffffffff), rs2:x19(0x0000000000040000), imm:0x1, result rd:x29(0x00000000a42a71a4)
inst_121:
    TEST_RRI_OP(sm4ed, x29, x3, x19, 0x1, 0x00000000a42a71a4, 0xffffbfffffffffff, 0x40000, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0x00000000a42a71a4) 

 
    # Testcase 122:  rs1:x2(0xffff7fffffffffff), rs2:x18(0x0000000000020000), imm:0x3, result rd:x30(0x0000000071a4a42a)
inst_122:
    TEST_RRI_OP(sm4ed, x30, x2, x18, 0x3, 0x0000000071a4a42a, 0xffff7fffffffffff, 0x20000, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0x0000000071a4a42a) 

 
    # Testcase 123:  rs1:x1(0xfffeffffffffffff), rs2:x17(0x0000000000010000), imm:0x1, result rd:x31(0x00000000a42a71a4)
inst_123:
    TEST_RRI_OP(sm4ed, x31, x1, x17, 0x1, 0x00000000a42a71a4, 0xfffeffffffffffff, 0x10000, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x00000000a42a71a4) 

 
    # Testcase 124:  rs1:x31(0xfffdffffffffffff), rs2:x16(0x0000000000008000), imm:0x2, result rd:x1(0x000000002a71a4a4)
inst_124:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x2, 0x000000002a71a4a4, 0xfffdffffffffffff, 0x8000, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x000000002a71a4a4) 





    # address for test results
    # la x1, test_26_res
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_26_0)
 
    # Testcase 125:  rs1:x30(0xfffbffffffffffff), rs2:x15(0x0000000000004000), imm:0x0, result rd:x2(0x00000000a4a42a71)
inst_125:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x0, 0x00000000a4a42a71, 0xfffbffffffffffff, 0x4000, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x00000000a4a42a71) 

 
    # Testcase 126:  rs1:x29(0xfff7ffffffffffff), rs2:x14(0x0000000000002000), imm:0x2, result rd:x3(0x000000002a71a4a4)
inst_126:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x2, 0x000000002a71a4a4, 0xfff7ffffffffffff, 0x2000, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x000000002a71a4a4) 

 
    # Testcase 127:  rs1:x28(0xffefffffffffffff), rs2:x13(0x0000000000001000), imm:0x1, result rd:x4(0x0000000053d47853)
inst_127:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x1, 0x0000000053d47853, 0xffefffffffffffff, 0x1000, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x0000000053d47853) 

 
    # Testcase 128:  rs1:x27(0xffdfffffffffffff), rs2:x12(0x0000000000000800), imm:0x3, result rd:x5(0x0000000071a4a42a)
inst_128:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x3, 0x0000000071a4a42a, 0xffdfffffffffffff, 0x800, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x0000000071a4a42a) 

 
    # Testcase 129:  rs1:x26(0xffbfffffffffffff), rs2:x11(0x0000000000000400), imm:0x3, result rd:x6(0x0000000071a4a42a)
inst_129:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x3, 0x0000000071a4a42a, 0xffbfffffffffffff, 0x400, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0x0000000071a4a42a) 





    # address for test results
    # la x1, test_27_res
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_27_0)
 
    # Testcase 130:  rs1:x25(0xff7fffffffffffff), rs2:x10(0x0000000000000200), imm:0x0, result rd:x7(0x00000000a4a42a71)
inst_130:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x0, 0x00000000a4a42a71, 0xff7fffffffffffff, 0x200, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000000a4a42a71) 

 
    # Testcase 131:  rs1:x24(0xfeffffffffffffff), rs2:x9(0x0000000000000100), imm:0x0, result rd:x8(0x00000000a4a42a71)
inst_131:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x0, 0x00000000a4a42a71, 0xfeffffffffffffff, 0x100, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000000a4a42a71) 

 
    # Testcase 132:  rs1:x23(0xfdffffffffffffff), rs2:x8(0x0000000000000080), imm:0x0, result rd:x9(0x00000000545416bd)
inst_132:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x0, 0x00000000545416bd, 0xfdffffffffffffff, 0x80, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000000545416bd) 

 
    # Testcase 133:  rs1:x22(0xfbffffffffffffff), rs2:x7(0x0000000000000040), imm:0x0, result rd:x10(0x00000000e2e2b9a4)
inst_133:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x0, 0x00000000e2e2b9a4, 0xfbffffffffffffff, 0x40, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000e2e2b9a4) 

 
    # Testcase 134:  rs1:x21(0xf7ffffffffffffff), rs2:x6(0x0000000000000020), imm:0x0, result rd:x11(0x000000008d8d6113)
inst_134:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x0, 0x000000008d8d6113, 0xf7ffffffffffffff, 0x20, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x000000008d8d6113) 





    # address for test results
    # la x6, test_28_res
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x6,signature_28_0)
 
    # Testcase 135:  rs1:x20(0xefffffffffffffff), rs2:x5(0x0000000000000010), imm:0x0, result rd:x12(0x000000005353d478)
inst_135:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x0, 0x000000005353d478, 0xefffffffffffffff, 0x10, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x000000005353d478) 

 
    # Testcase 136:  rs1:x19(0xdfffffffffffffff), rs2:x4(0x0000000000000008), imm:0x0, result rd:x13(0x00000000a7a7e9b1)
inst_136:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x0, 0x00000000a7a7e9b1, 0xdfffffffffffffff, 0x8, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x00000000a7a7e9b1) 

 
    # Testcase 137:  rs1:x18(0xbfffffffffffffff), rs2:x3(0x0000000000000004), imm:0x0, result rd:x14(0x00000000cccc3003)
inst_137:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x0, 0x00000000cccc3003, 0xbfffffffffffffff, 0x4, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x00000000cccc3003) 

 
    # Testcase 138:  rs1:x17(0x7fffffffffffffff), rs2:x2(0x0000000000000002), imm:0x0, result rd:x15(0x00000000585815b2)
inst_138:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x0, 0x00000000585815b2, 0x7fffffffffffffff, 0x2, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x00000000585815b2) 

 
    # Testcase 139:  rs1:x16(0xffffffffffffffff), rs2:x1(0x0000000000000001), imm:0x0, result rd:x16(0x00000000bdbd6d2f)
inst_139:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x0, 0x00000000bdbd6d2f, 0xffffffffffffffff, 0x1, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0x00000000bdbd6d2f) 





    # address for test results
    # la x1, test_29_res
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_29_0)
 
    # Testcase 140:  rs1:x15(0x0000000000000001), rs2:x31(0x0000000000000000), imm:0x0, result rd:x17(0x000000005b5bd58f)
inst_140:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x0, 0x000000005b5bd58f, 0x1, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x000000005b5bd58f) 

 
    # Testcase 141:  rs1:x14(0x0000000000000002), rs2:x30(0x0000000000000000), imm:0x0, result rd:x18(0x000000005b5bd58c)
inst_141:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x0, 0x000000005b5bd58c, 0x2, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x000000005b5bd58c) 

 
    # Testcase 142:  rs1:x13(0x0000000000000004), rs2:x29(0x0000000000000000), imm:0x0, result rd:x19(0x000000005b5bd58a)
inst_142:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x0, 0x000000005b5bd58a, 0x4, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x000000005b5bd58a) 

 
    # Testcase 143:  rs1:x12(0x0000000000000008), rs2:x28(0x0000000000000000), imm:0x0, result rd:x20(0x000000005b5bd586)
inst_143:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x0, 0x000000005b5bd586, 0x8, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x000000005b5bd586) 

 
    # Testcase 144:  rs1:x11(0x0000000000000010), rs2:x27(0x0000000000000000), imm:0x0, result rd:x21(0x000000005b5bd59e)
inst_144:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x0, 0x000000005b5bd59e, 0x10, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x000000005b5bd59e) 





    # address for test results
    # la x1, test_30_res
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_30_0)
 
    # Testcase 145:  rs1:x10(0x0000000000000020), rs2:x26(0x0000000000000000), imm:0x0, result rd:x22(0x000000005b5bd5ae)
inst_145:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x0, 0x000000005b5bd5ae, 0x20, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x000000005b5bd5ae) 

 
    # Testcase 146:  rs1:x9(0x0000000000000040), rs2:x25(0x0000000000000000), imm:0x0, result rd:x23(0x000000005b5bd5ce)
inst_146:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x0, 0x000000005b5bd5ce, 0x40, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x000000005b5bd5ce) 

 
    # Testcase 147:  rs1:x8(0x0000000000000080), rs2:x24(0x0000000000000000), imm:0x0, result rd:x24(0x000000005b5bd50e)
inst_147:
    TEST_RRI_OP(sm4ed, x24, x8, x24, 0x0, 0x000000005b5bd50e, 0x80, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x000000005b5bd50e) 

 
    # Testcase 148:  rs1:x7(0x0000000000000100), rs2:x23(0x0000000000000000), imm:0x0, result rd:x25(0x000000005b5bd48e)
inst_148:
    TEST_RRI_OP(sm4ed, x25, x7, x23, 0x0, 0x000000005b5bd48e, 0x100, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x000000005b5bd48e) 

 
    # Testcase 149:  rs1:x6(0x0000000000000200), rs2:x22(0x0000000000000000), imm:0x0, result rd:x26(0x000000005b5bd78e)
inst_149:
    TEST_RRI_OP(sm4ed, x26, x6, x22, 0x0, 0x000000005b5bd78e, 0x200, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x000000005b5bd78e) 





    # address for test results
    # la x6, test_31_res
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x6,signature_31_0)
 
    # Testcase 150:  rs1:x5(0x0000000000000400), rs2:x21(0x0000000000000000), imm:0x0, result rd:x27(0x000000005b5bd18e)
inst_150:
    TEST_RRI_OP(sm4ed, x27, x5, x21, 0x0, 0x000000005b5bd18e, 0x400, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x000000005b5bd18e) 

 
    # Testcase 151:  rs1:x4(0x0000000000000800), rs2:x20(0x0000000000000000), imm:0x0, result rd:x28(0x000000005b5bdd8e)
inst_151:
    TEST_RRI_OP(sm4ed, x28, x4, x20, 0x0, 0x000000005b5bdd8e, 0x800, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x000000005b5bdd8e) 

 
    # Testcase 152:  rs1:x3(0x0000000000001000), rs2:x19(0x0000000000000000), imm:0x0, result rd:x29(0x000000005b5bc58e)
inst_152:
    TEST_RRI_OP(sm4ed, x29, x3, x19, 0x0, 0x000000005b5bc58e, 0x1000, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x000000005b5bc58e) 

 
    # Testcase 153:  rs1:x2(0x0000000000002000), rs2:x18(0x0000000000000000), imm:0x0, result rd:x30(0x000000005b5bf58e)
inst_153:
    TEST_RRI_OP(sm4ed, x30, x2, x18, 0x0, 0x000000005b5bf58e, 0x2000, 0x0, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x000000005b5bf58e) 

 
    # Testcase 154:  rs1:x1(0x0000000000004000), rs2:x17(0x0000000000000000), imm:0x0, result rd:x31(0x000000005b5b958e)
inst_154:
    TEST_RRI_OP(sm4ed, x31, x1, x17, 0x0, 0x000000005b5b958e, 0x4000, 0x0, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x31, 0x000000005b5b958e) 





    # address for test results
    # la x6, test_32_res
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x6,signature_32_0)
 
    # Testcase 155:  rs1:x31(0x0000000000008000), rs2:x16(0x0000000000000000), imm:0x0, result rd:x1(0x000000005b5b558e)
inst_155:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x0, 0x000000005b5b558e, 0x8000, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x000000005b5b558e) 

 
    # Testcase 156:  rs1:x30(0x0000000000010000), rs2:x15(0x0000000000000000), imm:0x0, result rd:x2(0x000000005b5ad58e)
inst_156:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x0, 0x000000005b5ad58e, 0x10000, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x000000005b5ad58e) 

 
    # Testcase 157:  rs1:x29(0x0000000000020000), rs2:x14(0x0000000000000000), imm:0x0, result rd:x3(0x000000005b59d58e)
inst_157:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x0, 0x000000005b59d58e, 0x20000, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x000000005b59d58e) 

 
    # Testcase 158:  rs1:x28(0x0000000000040000), rs2:x13(0x0000000000000000), imm:0x0, result rd:x4(0x000000005b5fd58e)
inst_158:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x0, 0x000000005b5fd58e, 0x40000, 0x0, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x000000005b5fd58e) 

 
    # Testcase 159:  rs1:x27(0x0000000000080000), rs2:x12(0x0000000000000000), imm:0x0, result rd:x5(0x000000005b53d58e)
inst_159:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x0, 0x000000005b53d58e, 0x80000, 0x0, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x000000005b53d58e) 





    # address for test results
    # la x1, test_33_res
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_33_0)
 
    # Testcase 160:  rs1:x26(0x0000000000100000), rs2:x11(0x0000000000000000), imm:0x0, result rd:x6(0x000000005b4bd58e)
inst_160:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x0, 0x000000005b4bd58e, 0x100000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x000000005b4bd58e) 

 
    # Testcase 161:  rs1:x25(0x0000000000200000), rs2:x10(0x0000000000000000), imm:0x0, result rd:x7(0x000000005b7bd58e)
inst_161:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x0, 0x000000005b7bd58e, 0x200000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x000000005b7bd58e) 

 
    # Testcase 162:  rs1:x24(0x0000000000400000), rs2:x9(0x0000000000000000), imm:0x0, result rd:x8(0x000000005b1bd58e)
inst_162:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x0, 0x000000005b1bd58e, 0x400000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x000000005b1bd58e) 

 
    # Testcase 163:  rs1:x23(0x0000000000800000), rs2:x8(0x0000000000000000), imm:0x0, result rd:x9(0x000000005bdbd58e)
inst_163:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x0, 0x000000005bdbd58e, 0x800000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x000000005bdbd58e) 

 
    # Testcase 164:  rs1:x22(0x0000000001000000), rs2:x7(0x0000000000000000), imm:0x0, result rd:x10(0x000000005a5bd58e)
inst_164:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x0, 0x000000005a5bd58e, 0x1000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x000000005a5bd58e) 





    # address for test results
    # la x1, test_34_res
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_34_0)
 
    # Testcase 165:  rs1:x21(0x0000000002000000), rs2:x6(0x0000000000000000), imm:0x0, result rd:x11(0x00000000595bd58e)
inst_165:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x0, 0x00000000595bd58e, 0x2000000, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x00000000595bd58e) 

 
    # Testcase 166:  rs1:x20(0x0000000004000000), rs2:x5(0x0000000000000000), imm:0x0, result rd:x12(0x000000005f5bd58e)
inst_166:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x0, 0x000000005f5bd58e, 0x4000000, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x000000005f5bd58e) 

 
    # Testcase 167:  rs1:x19(0x0000000008000000), rs2:x4(0x0000000000000000), imm:0x0, result rd:x13(0x00000000535bd58e)
inst_167:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x0, 0x00000000535bd58e, 0x8000000, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x00000000535bd58e) 

 
    # Testcase 168:  rs1:x18(0x0000000010000000), rs2:x3(0x0000000000000000), imm:0x0, result rd:x14(0x000000004b5bd58e)
inst_168:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x0, 0x000000004b5bd58e, 0x10000000, 0x0, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x000000004b5bd58e) 

 
    # Testcase 169:  rs1:x17(0x0000000020000000), rs2:x2(0x0000000000000000), imm:0x0, result rd:x15(0x000000007b5bd58e)
inst_169:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x0, 0x000000007b5bd58e, 0x20000000, 0x0, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x000000007b5bd58e) 





    # address for test results
    # la x2, test_35_res
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x2,signature_35_0)
 
    # Testcase 170:  rs1:x16(0x0000000040000000), rs2:x1(0x0000000000000000), imm:0x0, result rd:x16(0x000000001b5bd58e)
inst_170:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x0, 0x000000001b5bd58e, 0x40000000, 0x0, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x000000001b5bd58e) 

 
    # Testcase 171:  rs1:x15(0x0000000080000000), rs2:x31(0x0000000000000000), imm:0x0, result rd:x17(0x00000000db5bd58e)
inst_171:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x0, 0x00000000db5bd58e, 0x80000000, 0x0, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x00000000db5bd58e) 

 
    # Testcase 172:  rs1:x14(0x0000000100000000), rs2:x30(0x0000000000000000), imm:0x0, result rd:x18(0x000000005b5bd58e)
inst_172:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x0, 0x000000005b5bd58e, 0x100000000, 0x0, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x000000005b5bd58e) 

 
    # Testcase 173:  rs1:x13(0x0000000200000000), rs2:x29(0x0000000000000000), imm:0x0, result rd:x19(0x000000005b5bd58e)
inst_173:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x0, 0x000000005b5bd58e, 0x200000000, 0x0, x2, 24, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x000000005b5bd58e) 

 
    # Testcase 174:  rs1:x12(0x0000000400000000), rs2:x28(0x0000000000000000), imm:0x0, result rd:x20(0x000000005b5bd58e)
inst_174:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x0, 0x000000005b5bd58e, 0x400000000, 0x0, x2, 32, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x000000005b5bd58e) 





    # address for test results
    # la x1, test_36_res
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_36_0)
 
    # Testcase 175:  rs1:x11(0x0000000800000000), rs2:x27(0x0000000000000000), imm:0x0, result rd:x21(0x000000005b5bd58e)
inst_175:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x0, 0x000000005b5bd58e, 0x800000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x000000005b5bd58e) 

 
    # Testcase 176:  rs1:x10(0x0000001000000000), rs2:x26(0x0000000000000000), imm:0x0, result rd:x22(0x000000005b5bd58e)
inst_176:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x0, 0x000000005b5bd58e, 0x1000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x000000005b5bd58e) 

 
    # Testcase 177:  rs1:x9(0x0000002000000000), rs2:x25(0x0000000000000000), imm:0x0, result rd:x23(0x000000005b5bd58e)
inst_177:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x0, 0x000000005b5bd58e, 0x2000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x000000005b5bd58e) 

 
    # Testcase 178:  rs1:x8(0x0000004000000000), rs2:x24(0x0000000000000000), imm:0x0, result rd:x24(0x000000005b5bd58e)
inst_178:
    TEST_RRI_OP(sm4ed, x24, x8, x24, 0x0, 0x000000005b5bd58e, 0x4000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x000000005b5bd58e) 

 
    # Testcase 179:  rs1:x7(0x0000008000000000), rs2:x23(0x0000000000000000), imm:0x0, result rd:x25(0x000000005b5bd58e)
inst_179:
    TEST_RRI_OP(sm4ed, x25, x7, x23, 0x0, 0x000000005b5bd58e, 0x8000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x000000005b5bd58e) 





    # address for test results
    # la x1, test_37_res
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_37_0)
 
    # Testcase 180:  rs1:x6(0x0000010000000000), rs2:x22(0x0000000000000000), imm:0x0, result rd:x26(0x000000005b5bd58e)
inst_180:
    TEST_RRI_OP(sm4ed, x26, x6, x22, 0x0, 0x000000005b5bd58e, 0x10000000000, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x000000005b5bd58e) 

 
    # Testcase 181:  rs1:x5(0x0000020000000000), rs2:x21(0x0000000000000000), imm:0x0, result rd:x27(0x000000005b5bd58e)
inst_181:
    TEST_RRI_OP(sm4ed, x27, x5, x21, 0x0, 0x000000005b5bd58e, 0x20000000000, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x000000005b5bd58e) 

 
    # Testcase 182:  rs1:x4(0x0000040000000000), rs2:x20(0x0000000000000000), imm:0x0, result rd:x28(0x000000005b5bd58e)
inst_182:
    TEST_RRI_OP(sm4ed, x28, x4, x20, 0x0, 0x000000005b5bd58e, 0x40000000000, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x000000005b5bd58e) 

 
    # Testcase 183:  rs1:x3(0x0000080000000000), rs2:x19(0x0000000000000000), imm:0x0, result rd:x29(0x000000005b5bd58e)
inst_183:
    TEST_RRI_OP(sm4ed, x29, x3, x19, 0x0, 0x000000005b5bd58e, 0x80000000000, 0x0, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x000000005b5bd58e) 

 
    # Testcase 184:  rs1:x2(0x0000100000000000), rs2:x18(0x0000000000000000), imm:0x0, result rd:x30(0x000000005b5bd58e)
inst_184:
    TEST_RRI_OP(sm4ed, x30, x2, x18, 0x0, 0x000000005b5bd58e, 0x100000000000, 0x0, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x000000005b5bd58e) 





    # address for test results
    # la x5, test_38_res
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x5,signature_38_0)
 
    # Testcase 185:  rs1:x1(0x0000200000000000), rs2:x17(0x0000000000000000), imm:0x0, result rd:x31(0x000000005b5bd58e)
inst_185:
    TEST_RRI_OP(sm4ed, x31, x1, x17, 0x0, 0x000000005b5bd58e, 0x200000000000, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x000000005b5bd58e) 

 
    # Testcase 186:  rs1:x31(0x0000400000000000), rs2:x16(0x0000000000000000), imm:0x0, result rd:x1(0x000000005b5bd58e)
inst_186:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x0, 0x000000005b5bd58e, 0x400000000000, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x000000005b5bd58e) 

 
    # Testcase 187:  rs1:x30(0x0000800000000000), rs2:x15(0x0000000000000000), imm:0x0, result rd:x2(0x000000005b5bd58e)
inst_187:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x0, 0x000000005b5bd58e, 0x800000000000, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x000000005b5bd58e) 

 
    # Testcase 188:  rs1:x29(0x0001000000000000), rs2:x14(0x0000000000000000), imm:0x0, result rd:x3(0x000000005b5bd58e)
inst_188:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x0, 0x000000005b5bd58e, 0x1000000000000, 0x0, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x000000005b5bd58e) 

 
    # Testcase 189:  rs1:x28(0x0002000000000000), rs2:x13(0x0000000000000000), imm:0x0, result rd:x4(0x000000005b5bd58e)
inst_189:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x0, 0x000000005b5bd58e, 0x2000000000000, 0x0, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x000000005b5bd58e) 





    # address for test results
    # la x1, test_39_res
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_39_0)
 
    # Testcase 190:  rs1:x27(0x0004000000000000), rs2:x12(0x0000000000000000), imm:0x0, result rd:x5(0x000000005b5bd58e)
inst_190:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x0, 0x000000005b5bd58e, 0x4000000000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x000000005b5bd58e) 

 
    # Testcase 191:  rs1:x26(0x0008000000000000), rs2:x11(0x0000000000000000), imm:0x0, result rd:x6(0x000000005b5bd58e)
inst_191:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x0, 0x000000005b5bd58e, 0x8000000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x000000005b5bd58e) 

 
    # Testcase 192:  rs1:x25(0x0010000000000000), rs2:x10(0x0000000000000000), imm:0x0, result rd:x7(0x000000005b5bd58e)
inst_192:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x0, 0x000000005b5bd58e, 0x10000000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x000000005b5bd58e) 

 
    # Testcase 193:  rs1:x24(0x0020000000000000), rs2:x9(0x0000000000000000), imm:0x0, result rd:x8(0x000000005b5bd58e)
inst_193:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x0, 0x000000005b5bd58e, 0x20000000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x000000005b5bd58e) 

 
    # Testcase 194:  rs1:x23(0x0040000000000000), rs2:x8(0x0000000000000000), imm:0x0, result rd:x9(0x000000005b5bd58e)
inst_194:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x0, 0x000000005b5bd58e, 0x40000000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x000000005b5bd58e) 





    # address for test results
    # la x1, test_40_res
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_40_0)
 
    # Testcase 195:  rs1:x22(0x0080000000000000), rs2:x7(0x0000000000000000), imm:0x0, result rd:x10(0x000000005b5bd58e)
inst_195:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x0, 0x000000005b5bd58e, 0x80000000000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x000000005b5bd58e) 

 
    # Testcase 196:  rs1:x21(0x0100000000000000), rs2:x6(0x0000000000000000), imm:0x0, result rd:x11(0x000000005b5bd58e)
inst_196:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x0, 0x000000005b5bd58e, 0x100000000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x000000005b5bd58e) 

 
    # Testcase 197:  rs1:x20(0x0200000000000000), rs2:x5(0x0000000000000000), imm:0x0, result rd:x12(0x000000005b5bd58e)
inst_197:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x0, 0x000000005b5bd58e, 0x200000000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x000000005b5bd58e) 

 
    # Testcase 198:  rs1:x19(0x0400000000000000), rs2:x4(0x0000000000000000), imm:0x0, result rd:x13(0x000000005b5bd58e)
inst_198:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x0, 0x000000005b5bd58e, 0x400000000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x000000005b5bd58e) 

 
    # Testcase 199:  rs1:x18(0x0800000000000000), rs2:x3(0x0000000000000000), imm:0x0, result rd:x14(0x000000005b5bd58e)
inst_199:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x0, 0x000000005b5bd58e, 0x800000000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x000000005b5bd58e) 





    # address for test results
    # la x3, test_41_res
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x3,signature_41_0)
 
    # Testcase 200:  rs1:x17(0x1000000000000000), rs2:x2(0x0000000000000000), imm:0x0, result rd:x15(0x000000005b5bd58e)
inst_200:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x0, 0x000000005b5bd58e, 0x1000000000000000, 0x0, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x000000005b5bd58e) 

 
    # Testcase 201:  rs1:x16(0x2000000000000000), rs2:x1(0x0000000000000000), imm:0x0, result rd:x16(0x000000005b5bd58e)
inst_201:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x0, 0x000000005b5bd58e, 0x2000000000000000, 0x0, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x000000005b5bd58e) 

 
    # Testcase 202:  rs1:x15(0x4000000000000000), rs2:x31(0x0000000000000000), imm:0x0, result rd:x17(0x000000005b5bd58e)
inst_202:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x0, 0x000000005b5bd58e, 0x4000000000000000, 0x0, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x000000005b5bd58e) 

 
    # Testcase 203:  rs1:x14(0x8000000000000000), rs2:x30(0x0000000000000000), imm:0x0, result rd:x18(0x000000005b5bd58e)
inst_203:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x0, 0x000000005b5bd58e, 0x8000000000000000, 0x0, x3, 24, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x000000005b5bd58e) 

 
    # Testcase 204:  rs1:x13(0x0000000000000000), rs2:x29(0x0000000000000000), imm:0x0, result rd:x19(0x000000005b5bd58e)
inst_204:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x0, 0x000000005b5bd58e, 0x0, 0x0, x3, 32, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x000000005b5bd58e) 





    # address for test results
    # la x1, test_42_res
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_42_0)
 
    # Testcase 205:  rs1:x12(0xfffffffffffffffe), rs2:x28(0x0000000000000000), imm:0x0, result rd:x20(0x00000000a4a42a70)
inst_205:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x0, 0x00000000a4a42a70, 0xfffffffffffffffe, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00000000a4a42a70) 

 
    # Testcase 206:  rs1:x11(0xfffffffffffffffd), rs2:x27(0x0000000000000000), imm:0x0, result rd:x21(0x00000000a4a42a73)
inst_206:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x0, 0x00000000a4a42a73, 0xfffffffffffffffd, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000000a4a42a73) 

 
    # Testcase 207:  rs1:x10(0xfffffffffffffffb), rs2:x26(0x0000000000000000), imm:0x0, result rd:x22(0x00000000a4a42a75)
inst_207:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x0, 0x00000000a4a42a75, 0xfffffffffffffffb, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000a4a42a75) 

 
    # Testcase 208:  rs1:x9(0xfffffffffffffff7), rs2:x25(0x0000000000000000), imm:0x0, result rd:x23(0x00000000a4a42a79)
inst_208:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x0, 0x00000000a4a42a79, 0xfffffffffffffff7, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000000a4a42a79) 

 
    # Testcase 209:  rs1:x8(0xffffffffffffffef), rs2:x24(0x0000000000000000), imm:0x0, result rd:x24(0x00000000a4a42a61)
inst_209:
    TEST_RRI_OP(sm4ed, x24, x8, x24, 0x0, 0x00000000a4a42a61, 0xffffffffffffffef, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00000000a4a42a61) 





    # address for test results
    # la x1, test_43_res
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_43_0)
 
    # Testcase 210:  rs1:x7(0xffffffffffffffdf), rs2:x23(0x0000000000000000), imm:0x0, result rd:x25(0x00000000a4a42a51)
inst_210:
    TEST_RRI_OP(sm4ed, x25, x7, x23, 0x0, 0x00000000a4a42a51, 0xffffffffffffffdf, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000000a4a42a51) 

 
    # Testcase 211:  rs1:x6(0xffffffffffffffbf), rs2:x22(0x0000000000000000), imm:0x0, result rd:x26(0x00000000a4a42a31)
inst_211:
    TEST_RRI_OP(sm4ed, x26, x6, x22, 0x0, 0x00000000a4a42a31, 0xffffffffffffffbf, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000000a4a42a31) 

 
    # Testcase 212:  rs1:x5(0xffffffffffffff7f), rs2:x21(0x0000000000000000), imm:0x0, result rd:x27(0x00000000a4a42af1)
inst_212:
    TEST_RRI_OP(sm4ed, x27, x5, x21, 0x0, 0x00000000a4a42af1, 0xffffffffffffff7f, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00000000a4a42af1) 

 
    # Testcase 213:  rs1:x4(0xfffffffffffffeff), rs2:x20(0x0000000000000000), imm:0x0, result rd:x28(0x00000000a4a42b71)
inst_213:
    TEST_RRI_OP(sm4ed, x28, x4, x20, 0x0, 0x00000000a4a42b71, 0xfffffffffffffeff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x00000000a4a42b71) 

 
    # Testcase 214:  rs1:x3(0xfffffffffffffdff), rs2:x19(0x0000000000000000), imm:0x0, result rd:x29(0x00000000a4a42871)
inst_214:
    TEST_RRI_OP(sm4ed, x29, x3, x19, 0x0, 0x00000000a4a42871, 0xfffffffffffffdff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x00000000a4a42871) 





    # address for test results
    # la x4, test_44_res
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x4,signature_44_0)
 
    # Testcase 215:  rs1:x2(0xfffffffffffffbff), rs2:x18(0x0000000000000000), imm:0x0, result rd:x30(0x00000000a4a42e71)
inst_215:
    TEST_RRI_OP(sm4ed, x30, x2, x18, 0x0, 0x00000000a4a42e71, 0xfffffffffffffbff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x00000000a4a42e71) 

 
    # Testcase 216:  rs1:x1(0xfffffffffffff7ff), rs2:x17(0x0000000000000000), imm:0x0, result rd:x31(0x00000000a4a42271)
inst_216:
    TEST_RRI_OP(sm4ed, x31, x1, x17, 0x0, 0x00000000a4a42271, 0xfffffffffffff7ff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x00000000a4a42271) 

 
    # Testcase 217:  rs1:x31(0xffffffffffffefff), rs2:x16(0x0000000000000000), imm:0x0, result rd:x1(0x00000000a4a43a71)
inst_217:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x0, 0x00000000a4a43a71, 0xffffffffffffefff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00000000a4a43a71) 

 
    # Testcase 218:  rs1:x30(0xffffffffffffdfff), rs2:x15(0x0000000000000000), imm:0x0, result rd:x2(0x00000000a4a40a71)
inst_218:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x0, 0x00000000a4a40a71, 0xffffffffffffdfff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00000000a4a40a71) 

 
    # Testcase 219:  rs1:x29(0xffffffffffffbfff), rs2:x14(0x0000000000000000), imm:0x0, result rd:x3(0x00000000a4a46a71)
inst_219:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x0, 0x00000000a4a46a71, 0xffffffffffffbfff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x00000000a4a46a71) 





    # address for test results
    # la x1, test_45_res
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_45_0)
 
    # Testcase 220:  rs1:x28(0xffffffffffff7fff), rs2:x13(0x0000000000000000), imm:0x0, result rd:x4(0x00000000a4a4aa71)
inst_220:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x0, 0x00000000a4a4aa71, 0xffffffffffff7fff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00000000a4a4aa71) 

 
    # Testcase 221:  rs1:x27(0xfffffffffffeffff), rs2:x12(0x0000000000000000), imm:0x0, result rd:x5(0x00000000a4a52a71)
inst_221:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x0, 0x00000000a4a52a71, 0xfffffffffffeffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00000000a4a52a71) 

 
    # Testcase 222:  rs1:x26(0xfffffffffffdffff), rs2:x11(0x0000000000000000), imm:0x0, result rd:x6(0x00000000a4a62a71)
inst_222:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x0, 0x00000000a4a62a71, 0xfffffffffffdffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00000000a4a62a71) 

 
    # Testcase 223:  rs1:x25(0xfffffffffffbffff), rs2:x10(0x0000000000000000), imm:0x0, result rd:x7(0x00000000a4a02a71)
inst_223:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x0, 0x00000000a4a02a71, 0xfffffffffffbffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000000a4a02a71) 

 
    # Testcase 224:  rs1:x24(0xfffffffffff7ffff), rs2:x9(0x0000000000000000), imm:0x0, result rd:x8(0x00000000a4ac2a71)
inst_224:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x0, 0x00000000a4ac2a71, 0xfffffffffff7ffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000000a4ac2a71) 





    # address for test results
    # la x1, test_46_res
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_46_0)
 
    # Testcase 225:  rs1:x23(0xffffffffffefffff), rs2:x8(0x0000000000000000), imm:0x0, result rd:x9(0x00000000a4b42a71)
inst_225:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x0, 0x00000000a4b42a71, 0xffffffffffefffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000000a4b42a71) 

 
    # Testcase 226:  rs1:x22(0xffffffffffdfffff), rs2:x7(0x0000000000000000), imm:0x0, result rd:x10(0x00000000a4842a71)
inst_226:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x0, 0x00000000a4842a71, 0xffffffffffdfffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000a4842a71) 

 
    # Testcase 227:  rs1:x21(0xffffffffffbfffff), rs2:x6(0x0000000000000000), imm:0x0, result rd:x11(0x00000000a4e42a71)
inst_227:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x0, 0x00000000a4e42a71, 0xffffffffffbfffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00000000a4e42a71) 

 
    # Testcase 228:  rs1:x20(0xffffffffff7fffff), rs2:x5(0x0000000000000000), imm:0x0, result rd:x12(0x00000000a4242a71)
inst_228:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x0, 0x00000000a4242a71, 0xffffffffff7fffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000a4242a71) 

 
    # Testcase 229:  rs1:x19(0xfffffffffeffffff), rs2:x4(0x0000000000000000), imm:0x0, result rd:x13(0x00000000a5a42a71)
inst_229:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x0, 0x00000000a5a42a71, 0xfffffffffeffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x00000000a5a42a71) 





    # address for test results
    # la x4, test_47_res
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x4,signature_47_0)
 
    # Testcase 230:  rs1:x18(0xfffffffffdffffff), rs2:x3(0x0000000000000000), imm:0x0, result rd:x14(0x00000000a6a42a71)
inst_230:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x0, 0x00000000a6a42a71, 0xfffffffffdffffff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0x00000000a6a42a71) 

 
    # Testcase 231:  rs1:x17(0xfffffffffbffffff), rs2:x2(0x0000000000000000), imm:0x0, result rd:x15(0x00000000a0a42a71)
inst_231:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x0, 0x00000000a0a42a71, 0xfffffffffbffffff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x00000000a0a42a71) 

 
    # Testcase 232:  rs1:x16(0xfffffffff7ffffff), rs2:x1(0x0000000000000000), imm:0x0, result rd:x16(0x00000000aca42a71)
inst_232:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x0, 0x00000000aca42a71, 0xfffffffff7ffffff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x00000000aca42a71) 

 
    # Testcase 233:  rs1:x15(0xffffffffefffffff), rs2:x31(0x0000000000000000), imm:0x0, result rd:x17(0x00000000b4a42a71)
inst_233:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x0, 0x00000000b4a42a71, 0xffffffffefffffff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x00000000b4a42a71) 

 
    # Testcase 234:  rs1:x14(0xffffffffdfffffff), rs2:x30(0x0000000000000000), imm:0x0, result rd:x18(0x0000000084a42a71)
inst_234:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x0, 0x0000000084a42a71, 0xffffffffdfffffff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x0000000084a42a71) 





    # address for test results
    # la x1, test_48_res
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_48_0)
 
    # Testcase 235:  rs1:x13(0xffffffffbfffffff), rs2:x29(0x0000000000000000), imm:0x0, result rd:x19(0x00000000e4a42a71)
inst_235:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x0, 0x00000000e4a42a71, 0xffffffffbfffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x00000000e4a42a71) 

 
    # Testcase 236:  rs1:x12(0xffffffff7fffffff), rs2:x28(0x0000000000000000), imm:0x0, result rd:x20(0x0000000024a42a71)
inst_236:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x0, 0x0000000024a42a71, 0xffffffff7fffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x0000000024a42a71) 

 
    # Testcase 237:  rs1:x11(0xfffffffeffffffff), rs2:x27(0x0000000000000000), imm:0x0, result rd:x21(0x00000000a4a42a71)
inst_237:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x0, 0x00000000a4a42a71, 0xfffffffeffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000000a4a42a71) 

 
    # Testcase 238:  rs1:x10(0xfffffffdffffffff), rs2:x26(0x0000000000000000), imm:0x0, result rd:x22(0x00000000a4a42a71)
inst_238:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x0, 0x00000000a4a42a71, 0xfffffffdffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000a4a42a71) 

 
    # Testcase 239:  rs1:x9(0xfffffffbffffffff), rs2:x25(0x0000000000000000), imm:0x0, result rd:x23(0x00000000a4a42a71)
inst_239:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x0, 0x00000000a4a42a71, 0xfffffffbffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000000a4a42a71) 





    # address for test results
    # la x1, test_49_res
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_49_0)
 
    # Testcase 240:  rs1:x8(0xfffffff7ffffffff), rs2:x24(0x0000000000000000), imm:0x0, result rd:x24(0x00000000a4a42a71)
inst_240:
    TEST_RRI_OP(sm4ed, x24, x8, x24, 0x0, 0x00000000a4a42a71, 0xfffffff7ffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00000000a4a42a71) 

 
    # Testcase 241:  rs1:x7(0xffffffefffffffff), rs2:x23(0x0000000000000000), imm:0x0, result rd:x25(0x00000000a4a42a71)
inst_241:
    TEST_RRI_OP(sm4ed, x25, x7, x23, 0x0, 0x00000000a4a42a71, 0xffffffefffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000000a4a42a71) 

 
    # Testcase 242:  rs1:x6(0xffffffdfffffffff), rs2:x22(0x0000000000000000), imm:0x0, result rd:x26(0x00000000a4a42a71)
inst_242:
    TEST_RRI_OP(sm4ed, x26, x6, x22, 0x0, 0x00000000a4a42a71, 0xffffffdfffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000000a4a42a71) 

 
    # Testcase 243:  rs1:x5(0xffffffbfffffffff), rs2:x21(0x0000000000000000), imm:0x0, result rd:x27(0x00000000a4a42a71)
inst_243:
    TEST_RRI_OP(sm4ed, x27, x5, x21, 0x0, 0x00000000a4a42a71, 0xffffffbfffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00000000a4a42a71) 

 
    # Testcase 244:  rs1:x4(0xffffff7fffffffff), rs2:x20(0x0000000000000000), imm:0x0, result rd:x28(0x00000000a4a42a71)
inst_244:
    TEST_RRI_OP(sm4ed, x28, x4, x20, 0x0, 0x00000000a4a42a71, 0xffffff7fffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x00000000a4a42a71) 





    # address for test results
    # la x4, test_50_res
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x4,signature_50_0)
 
    # Testcase 245:  rs1:x3(0xfffffeffffffffff), rs2:x19(0x0000000000000000), imm:0x0, result rd:x29(0x00000000a4a42a71)
inst_245:
    TEST_RRI_OP(sm4ed, x29, x3, x19, 0x0, 0x00000000a4a42a71, 0xfffffeffffffffff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x00000000a4a42a71) 

 
    # Testcase 246:  rs1:x2(0xfffffdffffffffff), rs2:x18(0x0000000000000000), imm:0x0, result rd:x30(0x00000000a4a42a71)
inst_246:
    TEST_RRI_OP(sm4ed, x30, x2, x18, 0x0, 0x00000000a4a42a71, 0xfffffdffffffffff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x00000000a4a42a71) 

 
    # Testcase 247:  rs1:x1(0xfffffbffffffffff), rs2:x17(0x0000000000000000), imm:0x0, result rd:x31(0x00000000a4a42a71)
inst_247:
    TEST_RRI_OP(sm4ed, x31, x1, x17, 0x0, 0x00000000a4a42a71, 0xfffffbffffffffff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x00000000a4a42a71) 

 
    # Testcase 248:  rs1:x31(0xfffff7ffffffffff), rs2:x16(0x0000000000000000), imm:0x0, result rd:x1(0x00000000a4a42a71)
inst_248:
    TEST_RRI_OP(sm4ed, x1, x31, x16, 0x0, 0x00000000a4a42a71, 0xfffff7ffffffffff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00000000a4a42a71) 

 
    # Testcase 249:  rs1:x30(0xffffefffffffffff), rs2:x15(0x0000000000000000), imm:0x0, result rd:x2(0x00000000a4a42a71)
inst_249:
    TEST_RRI_OP(sm4ed, x2, x30, x15, 0x0, 0x00000000a4a42a71, 0xffffefffffffffff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00000000a4a42a71) 





    # address for test results
    # la x1, test_51_res
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_51_0)
 
    # Testcase 250:  rs1:x29(0xffffdfffffffffff), rs2:x14(0x0000000000000000), imm:0x0, result rd:x3(0x00000000a4a42a71)
inst_250:
    TEST_RRI_OP(sm4ed, x3, x29, x14, 0x0, 0x00000000a4a42a71, 0xffffdfffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x00000000a4a42a71) 

 
    # Testcase 251:  rs1:x28(0xffffbfffffffffff), rs2:x13(0x0000000000000000), imm:0x0, result rd:x4(0x00000000a4a42a71)
inst_251:
    TEST_RRI_OP(sm4ed, x4, x28, x13, 0x0, 0x00000000a4a42a71, 0xffffbfffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00000000a4a42a71) 

 
    # Testcase 252:  rs1:x27(0xffff7fffffffffff), rs2:x12(0x0000000000000000), imm:0x0, result rd:x5(0x00000000a4a42a71)
inst_252:
    TEST_RRI_OP(sm4ed, x5, x27, x12, 0x0, 0x00000000a4a42a71, 0xffff7fffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00000000a4a42a71) 

 
    # Testcase 253:  rs1:x26(0xfffeffffffffffff), rs2:x11(0x0000000000000000), imm:0x0, result rd:x6(0x00000000a4a42a71)
inst_253:
    TEST_RRI_OP(sm4ed, x6, x26, x11, 0x0, 0x00000000a4a42a71, 0xfffeffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00000000a4a42a71) 

 
    # Testcase 254:  rs1:x25(0xfffdffffffffffff), rs2:x10(0x0000000000000000), imm:0x0, result rd:x7(0x00000000a4a42a71)
inst_254:
    TEST_RRI_OP(sm4ed, x7, x25, x10, 0x0, 0x00000000a4a42a71, 0xfffdffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000000a4a42a71) 





    # address for test results
    # la x1, test_52_res
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_52_0)
 
    # Testcase 255:  rs1:x24(0xfffbffffffffffff), rs2:x9(0x0000000000000000), imm:0x0, result rd:x8(0x00000000a4a42a71)
inst_255:
    TEST_RRI_OP(sm4ed, x8, x24, x9, 0x0, 0x00000000a4a42a71, 0xfffbffffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000000a4a42a71) 

 
    # Testcase 256:  rs1:x23(0xfff7ffffffffffff), rs2:x8(0x0000000000000000), imm:0x0, result rd:x9(0x00000000a4a42a71)
inst_256:
    TEST_RRI_OP(sm4ed, x9, x23, x8, 0x0, 0x00000000a4a42a71, 0xfff7ffffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000000a4a42a71) 

 
    # Testcase 257:  rs1:x22(0xffefffffffffffff), rs2:x7(0x0000000000000000), imm:0x0, result rd:x10(0x00000000a4a42a71)
inst_257:
    TEST_RRI_OP(sm4ed, x10, x22, x7, 0x0, 0x00000000a4a42a71, 0xffefffffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000a4a42a71) 

 
    # Testcase 258:  rs1:x21(0xffdfffffffffffff), rs2:x6(0x0000000000000000), imm:0x0, result rd:x11(0x00000000a4a42a71)
inst_258:
    TEST_RRI_OP(sm4ed, x11, x21, x6, 0x0, 0x00000000a4a42a71, 0xffdfffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00000000a4a42a71) 

 
    # Testcase 259:  rs1:x20(0xffbfffffffffffff), rs2:x5(0x0000000000000000), imm:0x0, result rd:x12(0x00000000a4a42a71)
inst_259:
    TEST_RRI_OP(sm4ed, x12, x20, x5, 0x0, 0x00000000a4a42a71, 0xffbfffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000a4a42a71) 





    # address for test results
    # la x5, test_53_res
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x5,signature_53_0)
 
    # Testcase 260:  rs1:x19(0xff7fffffffffffff), rs2:x4(0x0000000000000000), imm:0x3, result rd:x13(0x0000000071a4a42a)
inst_260:
    TEST_RRI_OP(sm4ed, x13, x19, x4, 0x3, 0x0000000071a4a42a, 0xff7fffffffffffff, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x0000000071a4a42a) 

 
    # Testcase 261:  rs1:x18(0xfeffffffffffffff), rs2:x3(0x0000000000000000), imm:0x3, result rd:x14(0x0000000071a4a42a)
inst_261:
    TEST_RRI_OP(sm4ed, x14, x18, x3, 0x3, 0x0000000071a4a42a, 0xfeffffffffffffff, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x0000000071a4a42a) 

 
    # Testcase 262:  rs1:x17(0xfdffffffffffffff), rs2:x2(0x0000000000000000), imm:0x3, result rd:x15(0x0000000071a4a42a)
inst_262:
    TEST_RRI_OP(sm4ed, x15, x17, x2, 0x3, 0x0000000071a4a42a, 0xfdffffffffffffff, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x0000000071a4a42a) 

 
    # Testcase 263:  rs1:x16(0xfbffffffffffffff), rs2:x1(0x0000000000000000), imm:0x3, result rd:x16(0x0000000071a4a42a)
inst_263:
    TEST_RRI_OP(sm4ed, x16, x16, x1, 0x3, 0x0000000071a4a42a, 0xfbffffffffffffff, 0x0, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x0000000071a4a42a) 

 
    # Testcase 264:  rs1:x15(0xf7ffffffffffffff), rs2:x31(0x0000000000000000), imm:0x1, result rd:x17(0x00000000a42a71a4)
inst_264:
    TEST_RRI_OP(sm4ed, x17, x15, x31, 0x1, 0x00000000a42a71a4, 0xf7ffffffffffffff, 0x0, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0x00000000a42a71a4) 





    # address for test results
    # la x1, test_54_res
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_54_0)
 
    # Testcase 265:  rs1:x14(0xefffffffffffffff), rs2:x30(0x0000000000000000), imm:0x1, result rd:x18(0x00000000a42a71a4)
inst_265:
    TEST_RRI_OP(sm4ed, x18, x14, x30, 0x1, 0x00000000a42a71a4, 0xefffffffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x00000000a42a71a4) 

 
    # Testcase 266:  rs1:x13(0xdfffffffffffffff), rs2:x29(0x0000000000000000), imm:0x3, result rd:x19(0x0000000071a4a42a)
inst_266:
    TEST_RRI_OP(sm4ed, x19, x13, x29, 0x3, 0x0000000071a4a42a, 0xdfffffffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x0000000071a4a42a) 

 
    # Testcase 267:  rs1:x12(0xbfffffffffffffff), rs2:x28(0x0000000000000000), imm:0x1, result rd:x20(0x00000000a42a71a4)
inst_267:
    TEST_RRI_OP(sm4ed, x20, x12, x28, 0x1, 0x00000000a42a71a4, 0xbfffffffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00000000a42a71a4) 

 
    # Testcase 268:  rs1:x11(0x7fffffffffffffff), rs2:x27(0x0000000000000000), imm:0x2, result rd:x21(0x000000002a71a4a4)
inst_268:
    TEST_RRI_OP(sm4ed, x21, x11, x27, 0x2, 0x000000002a71a4a4, 0x7fffffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x000000002a71a4a4) 

 
    # Testcase 269:  rs1:x10(0xffffffffffffffff), rs2:x26(0x0000000000000000), imm:0x0, result rd:x22(0x00000000a4a42a71)
inst_269:
    TEST_RRI_OP(sm4ed, x22, x10, x26, 0x0, 0x00000000a4a42a71, 0xffffffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000a4a42a71) 





    # address for test results
    # la x1, test_55_res
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm4ed)
	RVTEST_SIGBASE(x1,signature_55_0)
 
    # Testcase 270:  rs1:x9(0x10fd3dedadea5195), rs2:x25(0xdf7f3844121bcc23), imm:0x2, result rd:x23(0x000000008b54c90d)
inst_270:
    TEST_RRI_OP(sm4ed, x23, x9, x25, 0x2, 0x000000008b54c90d, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x000000008b54c90d) 

 
    # Testcase 271:  rs1:x8(0xbd295ce2d2ffbec1), rs2:x24(0xf5adb41aa47d105b), imm:0x1, result rd:x0(0x0000000000000000)
inst_271:
    TEST_RRI_OP(sm4ed, x0, x8, x24, 0x1, 0x0000000000000000, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x0000000000000000) 

 
    # Testcase 272:  rs1:x7(0xc9649f05a8e1a8bb), rs2:x0(0x82f6747f707af2c0), imm:0x3, result rd:x25(0x0000000026baf36e)
inst_272:
    TEST_RRI_OP(sm4ed, x25, x7, x0, 0x3, 0x0000000026baf36e, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000026baf36e) 

 
    # Testcase 273:  rs1:x0(0x3541291848c99fcb), rs2:x22(0x73a92fd4e19bfbc3), imm:0x3, result rd:x26(0x00000000cda5a568)
inst_273:
    TEST_RRI_OP(sm4ed, x26, x0, x22, 0x3, 0x00000000cda5a568, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000000cda5a568) 



	
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

