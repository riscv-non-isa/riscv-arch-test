// RISC-V Architectural Validation Test I-AES32DSI-01
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
// Description: Testing instruction 'aes32dsi'.

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
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x6,signature_1_0)
 
    # Testcase 0:  rs1:x31(0x10fd3dedadea5195), rs2:x16(0xdf7f3844121bcc23), imm:0x3, result rd:x1(0x94ea5195)
inst_0:
    TEST_RRI_OP(aes32dsi, x1, x31, x16, 0x3, 0x94ea5195, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x94ea5195) 

 
    # Testcase 1:  rs1:x30(0xbd295ce2d2ffbec1), rs2:x15(0xf5adb41aa47d105b), imm:0x3, result rd:x2(0xcfffbec1)
inst_1:
    TEST_RRI_OP(aes32dsi, x2, x30, x15, 0x3, 0xcfffbec1, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x6, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0xcfffbec1) 

 
    # Testcase 2:  rs1:x29(0xc9649f05a8e1a8bb), rs2:x14(0x82f6747f707af2c0), imm:0x0, result rd:x3(0xa8e1a8a4)
inst_2:
    TEST_RRI_OP(aes32dsi, x3, x29, x14, 0x0, 0xa8e1a8a4, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xa8e1a8a4) 

 
    # Testcase 3:  rs1:x28(0x3541291848c99fcb), rs2:x13(0x73a92fd4e19bfbc3), imm:0x3, result rd:x4(0xa8c99fcb)
inst_3:
    TEST_RRI_OP(aes32dsi, x4, x28, x13, 0x3, 0xa8c99fcb, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x6, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xa8c99fcb) 

 
    # Testcase 4:  rs1:x27(0x10a24740461d524f), rs2:x12(0x546b0e54528a10af), imm:0x3, result rd:x5(0x0e1d524f)
inst_4:
    TEST_RRI_OP(aes32dsi, x5, x27, x12, 0x3, 0x0e1d524f, 0x10a24740461d524f, 0x546b0e54528a10af, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x0e1d524f) 





    # address for test results
    # la x1, test_2_res
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_2_0)
 
    # Testcase 5:  rs1:x26(0x546b0e54528a10af), rs2:x11(0x10a24740461d524f), imm:0x3, result rd:x6(0xca8a10af)
inst_5:
    TEST_RRI_OP(aes32dsi, x6, x26, x11, 0x3, 0xca8a10af, 0x546b0e54528a10af, 0x10a24740461d524f, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xca8a10af) 

 
    # Testcase 6:  rs1:x25(0x73a92fd4e19bfbc3), rs2:x10(0x3541291848c99fcb), imm:0x3, result rd:x7(0x359bfbc3)
inst_6:
    TEST_RRI_OP(aes32dsi, x7, x25, x10, 0x3, 0x359bfbc3, 0x73a92fd4e19bfbc3, 0x3541291848c99fcb, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x359bfbc3) 

 
    # Testcase 7:  rs1:x24(0x82f6747f707af2c0), rs2:x9(0xc9649f05a8e1a8bb), imm:0x3, result rd:x8(0x1f7af2c0)
inst_7:
    TEST_RRI_OP(aes32dsi, x8, x24, x9, 0x3, 0x1f7af2c0, 0x82f6747f707af2c0, 0xc9649f05a8e1a8bb, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x1f7af2c0) 

 
    # Testcase 8:  rs1:x23(0xf5adb41aa47d105b), rs2:x8(0xbd295ce2d2ffbec1), imm:0x1, result rd:x9(0xa47d4a5b)
inst_8:
    TEST_RRI_OP(aes32dsi, x9, x23, x8, 0x1, 0xa47d4a5b, 0xf5adb41aa47d105b, 0xbd295ce2d2ffbec1, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xa47d4a5b) 

 
    # Testcase 9:  rs1:x22(0xdf7f3844121bcc23), rs2:x7(0x10fd3dedadea5195), imm:0x1, result rd:x10(0x121bbc23)
inst_9:
    TEST_RRI_OP(aes32dsi, x10, x22, x7, 0x1, 0x121bbc23, 0xdf7f3844121bcc23, 0x10fd3dedadea5195, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x121bbc23) 





    # address for test results
    # la x1, test_3_res
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_3_0)
 
    # Testcase 10:  rs1:x21(0x00000001), rs2:x6(0xffffffff), imm:0x3, result rd:x11(0x7d000001)
inst_10:
    TEST_RRI_OP(aes32dsi, x11, x21, x6, 0x3, 0x7d000001, 0x1, 0xffffffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x7d000001) 

 
    # Testcase 11:  rs1:x20(0x00000002), rs2:x5(0x7fffffff), imm:0x1, result rd:x12(0x00007d02)
inst_11:
    TEST_RRI_OP(aes32dsi, x12, x20, x5, 0x1, 0x00007d02, 0x2, 0x7fffffff, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x00007d02) 

 
    # Testcase 12:  rs1:x19(0x00000004), rs2:x4(0xbfffffff), imm:0x2, result rd:x13(0x007d0004)
inst_12:
    TEST_RRI_OP(aes32dsi, x13, x19, x4, 0x2, 0x007d0004, 0x4, 0xbfffffff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x007d0004) 

 
    # Testcase 13:  rs1:x18(0x00000008), rs2:x3(0xdfffffff), imm:0x0, result rd:x14(0x00000075)
inst_13:
    TEST_RRI_OP(aes32dsi, x14, x18, x3, 0x0, 0x00000075, 0x8, 0xdfffffff, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x00000075) 

 
    # Testcase 14:  rs1:x17(0x00000010), rs2:x2(0xefffffff), imm:0x2, result rd:x15(0x007d0010)
inst_14:
    TEST_RRI_OP(aes32dsi, x15, x17, x2, 0x2, 0x007d0010, 0x10, 0xefffffff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x007d0010) 





    # address for test results
    # la x2, test_4_res
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x2,signature_4_0)
 
    # Testcase 15:  rs1:x16(0x00000020), rs2:x1(0xf7ffffff), imm:0x1, result rd:x16(0x00007d20)
inst_15:
    TEST_RRI_OP(aes32dsi, x16, x16, x1, 0x1, 0x00007d20, 0x20, 0xf7ffffff, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x00007d20) 

 
    # Testcase 16:  rs1:x15(0x00000040), rs2:x31(0xfbffffff), imm:0x3, result rd:x17(0x63000040)
inst_16:
    TEST_RRI_OP(aes32dsi, x17, x15, x31, 0x3, 0x63000040, 0x40, 0xfbffffff, x2, 4, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x63000040) 

 
    # Testcase 17:  rs1:x14(0x00000080), rs2:x30(0xfdffffff), imm:0x3, result rd:x18(0x21000080)
inst_17:
    TEST_RRI_OP(aes32dsi, x18, x14, x30, 0x3, 0x21000080, 0x80, 0xfdffffff, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x21000080) 

 
    # Testcase 18:  rs1:x13(0x00000100), rs2:x29(0xfeffffff), imm:0x0, result rd:x19(0x0000017d)
inst_18:
    TEST_RRI_OP(aes32dsi, x19, x13, x29, 0x0, 0x0000017d, 0x100, 0xfeffffff, x2, 12, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x0000017d) 

 
    # Testcase 19:  rs1:x12(0x00000200), rs2:x28(0xff7fffff), imm:0x3, result rd:x20(0x7d000200)
inst_19:
    TEST_RRI_OP(aes32dsi, x20, x12, x28, 0x3, 0x7d000200, 0x200, 0xff7fffff, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x7d000200) 





    # address for test results
    # la x1, test_5_res
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_5_0)
 
    # Testcase 20:  rs1:x11(0x00000400), rs2:x27(0xffbfffff), imm:0x3, result rd:x21(0x7d000400)
inst_20:
    TEST_RRI_OP(aes32dsi, x21, x11, x27, 0x3, 0x7d000400, 0x400, 0xffbfffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x7d000400) 

 
    # Testcase 21:  rs1:x10(0x00000800), rs2:x26(0xffdfffff), imm:0x3, result rd:x22(0x7d000800)
inst_21:
    TEST_RRI_OP(aes32dsi, x22, x10, x26, 0x3, 0x7d000800, 0x800, 0xffdfffff, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x7d000800) 

 
    # Testcase 22:  rs1:x9(0x00001000), rs2:x25(0xffefffff), imm:0x3, result rd:x23(0x7d001000)
inst_22:
    TEST_RRI_OP(aes32dsi, x23, x9, x25, 0x3, 0x7d001000, 0x1000, 0xffefffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x7d001000) 

 
    # Testcase 23:  rs1:x8(0x00002000), rs2:x24(0xfff7ffff), imm:0x3, result rd:x24(0x7d002000)
inst_23:
    TEST_RRI_OP(aes32dsi, x24, x8, x24, 0x3, 0x7d002000, 0x2000, 0xfff7ffff, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x7d002000) 

 
    # Testcase 24:  rs1:x7(0x00004000), rs2:x23(0xfffbffff), imm:0x1, result rd:x25(0x00003d00)
inst_24:
    TEST_RRI_OP(aes32dsi, x25, x7, x23, 0x1, 0x00003d00, 0x4000, 0xfffbffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00003d00) 





    # address for test results
    # la x1, test_6_res
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_6_0)
 
    # Testcase 25:  rs1:x6(0x00008000), rs2:x22(0xfffdffff), imm:0x1, result rd:x26(0x0000fd00)
inst_25:
    TEST_RRI_OP(aes32dsi, x26, x6, x22, 0x1, 0x0000fd00, 0x8000, 0xfffdffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x0000fd00) 

 
    # Testcase 26:  rs1:x5(0x00010000), rs2:x21(0xfffeffff), imm:0x3, result rd:x27(0x7d010000)
inst_26:
    TEST_RRI_OP(aes32dsi, x27, x5, x21, 0x3, 0x7d010000, 0x10000, 0xfffeffff, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x7d010000) 

 
    # Testcase 27:  rs1:x4(0x00020000), rs2:x20(0xffff7fff), imm:0x1, result rd:x28(0x00026b00)
inst_27:
    TEST_RRI_OP(aes32dsi, x28, x4, x20, 0x1, 0x00026b00, 0x20000, 0xffff7fff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x00026b00) 

 
    # Testcase 28:  rs1:x3(0x00040000), rs2:x19(0xffffbfff), imm:0x2, result rd:x29(0x00790000)
inst_28:
    TEST_RRI_OP(aes32dsi, x29, x3, x19, 0x2, 0x00790000, 0x40000, 0xffffbfff, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x00790000) 

 
    # Testcase 29:  rs1:x2(0x00080000), rs2:x18(0xffffdfff), imm:0x0, result rd:x30(0x0008007d)
inst_29:
    TEST_RRI_OP(aes32dsi, x30, x2, x18, 0x0, 0x0008007d, 0x80000, 0xffffdfff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0008007d) 





    # address for test results
    # la x5, test_7_res
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x5,signature_7_0)
 
    # Testcase 30:  rs1:x1(0x00100000), rs2:x17(0xffffefff), imm:0x2, result rd:x31(0x006d0000)
inst_30:
    TEST_RRI_OP(aes32dsi, x31, x1, x17, 0x2, 0x006d0000, 0x100000, 0xffffefff, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x006d0000) 

 
    # Testcase 31:  rs1:x31(0x00200000), rs2:x16(0xfffff7ff), imm:0x1, result rd:x1(0x00202600)
inst_31:
    TEST_RRI_OP(aes32dsi, x1, x31, x16, 0x1, 0x00202600, 0x200000, 0xfffff7ff, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x00202600) 

 
    # Testcase 32:  rs1:x30(0x00400000), rs2:x15(0xfffffbff), imm:0x3, result rd:x2(0x7d400000)
inst_32:
    TEST_RRI_OP(aes32dsi, x2, x30, x15, 0x3, 0x7d400000, 0x400000, 0xfffffbff, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x7d400000) 

 
    # Testcase 33:  rs1:x29(0x00800000), rs2:x14(0xfffffdff), imm:0x3, result rd:x3(0x7d800000)
inst_33:
    TEST_RRI_OP(aes32dsi, x3, x29, x14, 0x3, 0x7d800000, 0x800000, 0xfffffdff, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x7d800000) 

 
    # Testcase 34:  rs1:x28(0x01000000), rs2:x13(0xfffffeff), imm:0x0, result rd:x4(0x0100007d)
inst_34:
    TEST_RRI_OP(aes32dsi, x4, x28, x13, 0x0, 0x0100007d, 0x1000000, 0xfffffeff, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x0100007d) 





    # address for test results
    # la x1, test_8_res
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_8_0)
 
    # Testcase 35:  rs1:x27(0x02000000), rs2:x12(0xffffff7f), imm:0x3, result rd:x5(0x7f000000)
inst_35:
    TEST_RRI_OP(aes32dsi, x5, x27, x12, 0x3, 0x7f000000, 0x2000000, 0xffffff7f, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x7f000000) 

 
    # Testcase 36:  rs1:x26(0x04000000), rs2:x11(0xffffffbf), imm:0x3, result rd:x6(0x79000000)
inst_36:
    TEST_RRI_OP(aes32dsi, x6, x26, x11, 0x3, 0x79000000, 0x4000000, 0xffffffbf, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x79000000) 

 
    # Testcase 37:  rs1:x25(0x08000000), rs2:x10(0xffffffdf), imm:0x3, result rd:x7(0x75000000)
inst_37:
    TEST_RRI_OP(aes32dsi, x7, x25, x10, 0x3, 0x75000000, 0x8000000, 0xffffffdf, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x75000000) 

 
    # Testcase 38:  rs1:x24(0x10000000), rs2:x9(0xffffffef), imm:0x3, result rd:x8(0x6d000000)
inst_38:
    TEST_RRI_OP(aes32dsi, x8, x24, x9, 0x3, 0x6d000000, 0x10000000, 0xffffffef, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x6d000000) 

 
    # Testcase 39:  rs1:x23(0x20000000), rs2:x8(0xfffffff7), imm:0x3, result rd:x9(0x5d000000)
inst_39:
    TEST_RRI_OP(aes32dsi, x9, x23, x8, 0x3, 0x5d000000, 0x20000000, 0xfffffff7, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x5d000000) 





    # address for test results
    # la x1, test_9_res
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_9_0)
 
    # Testcase 40:  rs1:x22(0x40000000), rs2:x7(0xfffffffb), imm:0x1, result rd:x10(0x40007d00)
inst_40:
    TEST_RRI_OP(aes32dsi, x10, x22, x7, 0x1, 0x40007d00, 0x40000000, 0xfffffffb, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x40007d00) 

 
    # Testcase 41:  rs1:x21(0x80000000), rs2:x6(0xfffffffd), imm:0x1, result rd:x11(0x80007d00)
inst_41:
    TEST_RRI_OP(aes32dsi, x11, x21, x6, 0x1, 0x80007d00, 0x80000000, 0xfffffffd, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x80007d00) 

 
    # Testcase 42:  rs1:x20(0x00000000), rs2:x5(0xfffffffe), imm:0x3, result rd:x12(0x7d000000)
inst_42:
    TEST_RRI_OP(aes32dsi, x12, x20, x5, 0x3, 0x7d000000, 0x0, 0xfffffffe, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x7d000000) 

 
    # Testcase 43:  rs1:x19(0xfffffffe), rs2:x4(0x00000000), imm:0x1, result rd:x13(0xffffadfe)
inst_43:
    TEST_RRI_OP(aes32dsi, x13, x19, x4, 0x1, 0xffffadfe, 0xfffffffe, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xffffadfe) 

 
    # Testcase 44:  rs1:x18(0xfffffffd), rs2:x3(0x80000000), imm:0x2, result rd:x14(0xffadfffd)
inst_44:
    TEST_RRI_OP(aes32dsi, x14, x18, x3, 0x2, 0xffadfffd, 0xfffffffd, 0x80000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0xffadfffd) 





    # address for test results
    # la x3, test_10_res
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x3,signature_10_0)
 
    # Testcase 45:  rs1:x17(0xfffffffb), rs2:x2(0x40000000), imm:0x0, result rd:x15(0xffffffa9)
inst_45:
    TEST_RRI_OP(aes32dsi, x15, x17, x2, 0x0, 0xffffffa9, 0xfffffffb, 0x40000000, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0xffffffa9) 

 
    # Testcase 46:  rs1:x16(0xfffffff7), rs2:x1(0x20000000), imm:0x2, result rd:x16(0xffadfff7)
inst_46:
    TEST_RRI_OP(aes32dsi, x16, x16, x1, 0x2, 0xffadfff7, 0xfffffff7, 0x20000000, x3, 4, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0xffadfff7) 

 
    # Testcase 47:  rs1:x15(0xffffffef), rs2:x31(0x10000000), imm:0x1, result rd:x17(0xffffadef)
inst_47:
    TEST_RRI_OP(aes32dsi, x17, x15, x31, 0x1, 0xffffadef, 0xffffffef, 0x10000000, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0xffffadef) 

 
    # Testcase 48:  rs1:x14(0xffffffdf), rs2:x30(0x08000000), imm:0x3, result rd:x18(0x40ffffdf)
inst_48:
    TEST_RRI_OP(aes32dsi, x18, x14, x30, 0x3, 0x40ffffdf, 0xffffffdf, 0x8000000, x3, 12, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x40ffffdf) 

 
    # Testcase 49:  rs1:x13(0xffffffbf), rs2:x29(0x04000000), imm:0x3, result rd:x19(0xcfffffbf)
inst_49:
    TEST_RRI_OP(aes32dsi, x19, x13, x29, 0x3, 0xcfffffbf, 0xffffffbf, 0x4000000, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0xcfffffbf) 





    # address for test results
    # la x1, test_11_res
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_11_0)
 
    # Testcase 50:  rs1:x12(0xffffff7f), rs2:x28(0x02000000), imm:0x0, result rd:x20(0xffffff2d)
inst_50:
    TEST_RRI_OP(aes32dsi, x20, x12, x28, 0x0, 0xffffff2d, 0xffffff7f, 0x2000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xffffff2d) 

 
    # Testcase 51:  rs1:x11(0xfffffeff), rs2:x27(0x01000000), imm:0x3, result rd:x21(0xf6fffeff)
inst_51:
    TEST_RRI_OP(aes32dsi, x21, x11, x27, 0x3, 0xf6fffeff, 0xfffffeff, 0x1000000, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xf6fffeff) 

 
    # Testcase 52:  rs1:x10(0xfffffdff), rs2:x26(0x00800000), imm:0x3, result rd:x22(0xadfffdff)
inst_52:
    TEST_RRI_OP(aes32dsi, x22, x10, x26, 0x3, 0xadfffdff, 0xfffffdff, 0x800000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xadfffdff) 

 
    # Testcase 53:  rs1:x9(0xfffffbff), rs2:x25(0x00400000), imm:0x3, result rd:x23(0xadfffbff)
inst_53:
    TEST_RRI_OP(aes32dsi, x23, x9, x25, 0x3, 0xadfffbff, 0xfffffbff, 0x400000, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xadfffbff) 

 
    # Testcase 54:  rs1:x8(0xfffff7ff), rs2:x24(0x00200000), imm:0x3, result rd:x24(0xadfff7ff)
inst_54:
    TEST_RRI_OP(aes32dsi, x24, x8, x24, 0x3, 0xadfff7ff, 0xfffff7ff, 0x200000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xadfff7ff) 





    # address for test results
    # la x1, test_12_res
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_12_0)
 
    # Testcase 55:  rs1:x7(0xffffefff), rs2:x23(0x00100000), imm:0x3, result rd:x25(0xadffefff)
inst_55:
    TEST_RRI_OP(aes32dsi, x25, x7, x23, 0x3, 0xadffefff, 0xffffefff, 0x100000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xadffefff) 

 
    # Testcase 56:  rs1:x6(0xffffdfff), rs2:x22(0x00080000), imm:0x1, result rd:x26(0xffff8dff)
inst_56:
    TEST_RRI_OP(aes32dsi, x26, x6, x22, 0x1, 0xffff8dff, 0xffffdfff, 0x80000, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffff8dff) 

 
    # Testcase 57:  rs1:x5(0xffffbfff), rs2:x21(0x00040000), imm:0x1, result rd:x27(0xffffedff)
inst_57:
    TEST_RRI_OP(aes32dsi, x27, x5, x21, 0x1, 0xffffedff, 0xffffbfff, 0x40000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffffedff) 

 
    # Testcase 58:  rs1:x4(0xffff7fff), rs2:x20(0x00020000), imm:0x3, result rd:x28(0xadff7fff)
inst_58:
    TEST_RRI_OP(aes32dsi, x28, x4, x20, 0x3, 0xadff7fff, 0xffff7fff, 0x20000, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xadff7fff) 

 
    # Testcase 59:  rs1:x3(0xfffeffff), rs2:x19(0x00010000), imm:0x1, result rd:x29(0xfffeadff)
inst_59:
    TEST_RRI_OP(aes32dsi, x29, x3, x19, 0x1, 0xfffeadff, 0xfffeffff, 0x10000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0xfffeadff) 





    # address for test results
    # la x4, test_13_res
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x4,signature_13_0)
 
    # Testcase 60:  rs1:x2(0xfffdffff), rs2:x18(0x00008000), imm:0x2, result rd:x30(0xffafffff)
inst_60:
    TEST_RRI_OP(aes32dsi, x30, x2, x18, 0x2, 0xffafffff, 0xfffdffff, 0x8000, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xffafffff) 

 
    # Testcase 61:  rs1:x1(0xfffbffff), rs2:x17(0x00004000), imm:0x0, result rd:x31(0xfffbffad)
inst_61:
    TEST_RRI_OP(aes32dsi, x31, x1, x17, 0x0, 0xfffbffad, 0xfffbffff, 0x4000, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xfffbffad) 

 
    # Testcase 62:  rs1:x31(0xfff7ffff), rs2:x16(0x00002000), imm:0x2, result rd:x1(0xffa5ffff)
inst_62:
    TEST_RRI_OP(aes32dsi, x1, x31, x16, 0x2, 0xffa5ffff, 0xfff7ffff, 0x2000, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xffa5ffff) 

 
    # Testcase 63:  rs1:x30(0xffefffff), rs2:x15(0x00001000), imm:0x1, result rd:x2(0xffef83ff)
inst_63:
    TEST_RRI_OP(aes32dsi, x2, x30, x15, 0x1, 0xffef83ff, 0xffefffff, 0x1000, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xffef83ff) 

 
    # Testcase 64:  rs1:x29(0xffdfffff), rs2:x14(0x00000800), imm:0x3, result rd:x3(0xaddfffff)
inst_64:
    TEST_RRI_OP(aes32dsi, x3, x29, x14, 0x3, 0xaddfffff, 0xffdfffff, 0x800, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0xaddfffff) 





    # address for test results
    # la x1, test_14_res
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_14_0)
 
    # Testcase 65:  rs1:x28(0xffbfffff), rs2:x13(0x00000400), imm:0x3, result rd:x4(0xadbfffff)
inst_65:
    TEST_RRI_OP(aes32dsi, x4, x28, x13, 0x3, 0xadbfffff, 0xffbfffff, 0x400, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xadbfffff) 

 
    # Testcase 66:  rs1:x27(0xff7fffff), rs2:x12(0x00000200), imm:0x0, result rd:x5(0xff7fffad)
inst_66:
    TEST_RRI_OP(aes32dsi, x5, x27, x12, 0x0, 0xff7fffad, 0xff7fffff, 0x200, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xff7fffad) 

 
    # Testcase 67:  rs1:x26(0xfeffffff), rs2:x11(0x00000100), imm:0x0, result rd:x6(0xfeffffad)
inst_67:
    TEST_RRI_OP(aes32dsi, x6, x26, x11, 0x0, 0xfeffffad, 0xfeffffff, 0x100, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xfeffffad) 

 
    # Testcase 68:  rs1:x25(0xfdffffff), rs2:x10(0x00000080), imm:0x0, result rd:x7(0xfdffffc5)
inst_68:
    TEST_RRI_OP(aes32dsi, x7, x25, x10, 0x0, 0xfdffffc5, 0xfdffffff, 0x80, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfdffffc5) 

 
    # Testcase 69:  rs1:x24(0xfbffffff), rs2:x9(0x00000040), imm:0x0, result rd:x8(0xfbffff8d)
inst_69:
    TEST_RRI_OP(aes32dsi, x8, x24, x9, 0x0, 0xfbffff8d, 0xfbffffff, 0x40, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xfbffff8d) 





    # address for test results
    # la x1, test_15_res
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_15_0)
 
    # Testcase 70:  rs1:x23(0xf7ffffff), rs2:x8(0x00000020), imm:0x0, result rd:x9(0xf7ffffab)
inst_70:
    TEST_RRI_OP(aes32dsi, x9, x23, x8, 0x0, 0xf7ffffab, 0xf7ffffff, 0x20, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xf7ffffab) 

 
    # Testcase 71:  rs1:x22(0xefffffff), rs2:x7(0x00000010), imm:0x0, result rd:x10(0xefffff83)
inst_71:
    TEST_RRI_OP(aes32dsi, x10, x22, x7, 0x0, 0xefffff83, 0xefffffff, 0x10, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xefffff83) 

 
    # Testcase 72:  rs1:x21(0xdfffffff), rs2:x6(0x00000008), imm:0x0, result rd:x11(0xdfffff40)
inst_72:
    TEST_RRI_OP(aes32dsi, x11, x21, x6, 0x0, 0xdfffff40, 0xdfffffff, 0x8, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xdfffff40) 

 
    # Testcase 73:  rs1:x20(0xbfffffff), rs2:x5(0x00000004), imm:0x0, result rd:x12(0xbfffffcf)
inst_73:
    TEST_RRI_OP(aes32dsi, x12, x20, x5, 0x0, 0xbfffffcf, 0xbfffffff, 0x4, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xbfffffcf) 

 
    # Testcase 74:  rs1:x19(0x7fffffff), rs2:x4(0x00000002), imm:0x0, result rd:x13(0x7fffff95)
inst_74:
    TEST_RRI_OP(aes32dsi, x13, x19, x4, 0x0, 0x7fffff95, 0x7fffffff, 0x2, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x7fffff95) 





    # address for test results
    # la x4, test_16_res
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x4,signature_16_0)
 
    # Testcase 75:  rs1:x18(0xffffffff), rs2:x3(0x00000001), imm:0x0, result rd:x14(0xfffffff6)
inst_75:
    TEST_RRI_OP(aes32dsi, x14, x18, x3, 0x0, 0xfffffff6, 0xffffffff, 0x1, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xfffffff6) 

 
    # Testcase 76:  rs1:x17(0x00000001), rs2:x2(0x00000000), imm:0x0, result rd:x15(0x00000053)
inst_76:
    TEST_RRI_OP(aes32dsi, x15, x17, x2, 0x0, 0x00000053, 0x1, 0x0, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x00000053) 

 
    # Testcase 77:  rs1:x16(0x00000002), rs2:x1(0x00000000), imm:0x0, result rd:x16(0x00000050)
inst_77:
    TEST_RRI_OP(aes32dsi, x16, x16, x1, 0x0, 0x00000050, 0x2, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x00000050) 

 
    # Testcase 78:  rs1:x15(0x00000004), rs2:x31(0x00000000), imm:0x0, result rd:x17(0x00000056)
inst_78:
    TEST_RRI_OP(aes32dsi, x17, x15, x31, 0x0, 0x00000056, 0x4, 0x0, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x00000056) 

 
    # Testcase 79:  rs1:x14(0x00000008), rs2:x30(0x00000000), imm:0x0, result rd:x18(0x0000005a)
inst_79:
    TEST_RRI_OP(aes32dsi, x18, x14, x30, 0x0, 0x0000005a, 0x8, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x0000005a) 





    # address for test results
    # la x1, test_17_res
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_17_0)
 
    # Testcase 80:  rs1:x13(0x00000010), rs2:x29(0x00000000), imm:0x0, result rd:x19(0x00000042)
inst_80:
    TEST_RRI_OP(aes32dsi, x19, x13, x29, 0x0, 0x00000042, 0x10, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x00000042) 

 
    # Testcase 81:  rs1:x12(0x00000020), rs2:x28(0x00000000), imm:0x0, result rd:x20(0x00000072)
inst_81:
    TEST_RRI_OP(aes32dsi, x20, x12, x28, 0x0, 0x00000072, 0x20, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00000072) 

 
    # Testcase 82:  rs1:x11(0x00000040), rs2:x27(0x00000000), imm:0x0, result rd:x21(0x00000012)
inst_82:
    TEST_RRI_OP(aes32dsi, x21, x11, x27, 0x0, 0x00000012, 0x40, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000012) 

 
    # Testcase 83:  rs1:x10(0x00000080), rs2:x26(0x00000000), imm:0x0, result rd:x22(0x000000d2)
inst_83:
    TEST_RRI_OP(aes32dsi, x22, x10, x26, 0x0, 0x000000d2, 0x80, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x000000d2) 

 
    # Testcase 84:  rs1:x9(0x00000100), rs2:x25(0x00000000), imm:0x0, result rd:x23(0x00000152)
inst_84:
    TEST_RRI_OP(aes32dsi, x23, x9, x25, 0x0, 0x00000152, 0x100, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000152) 





    # address for test results
    # la x1, test_18_res
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_18_0)
 
    # Testcase 85:  rs1:x8(0x00000200), rs2:x24(0x00000000), imm:0x0, result rd:x24(0x00000252)
inst_85:
    TEST_RRI_OP(aes32dsi, x24, x8, x24, 0x0, 0x00000252, 0x200, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00000252) 

 
    # Testcase 86:  rs1:x7(0x00000400), rs2:x23(0x00000000), imm:0x0, result rd:x25(0x00000452)
inst_86:
    TEST_RRI_OP(aes32dsi, x25, x7, x23, 0x0, 0x00000452, 0x400, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000452) 

 
    # Testcase 87:  rs1:x6(0x00000800), rs2:x22(0x00000000), imm:0x0, result rd:x26(0x00000852)
inst_87:
    TEST_RRI_OP(aes32dsi, x26, x6, x22, 0x0, 0x00000852, 0x800, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000852) 

 
    # Testcase 88:  rs1:x5(0x00001000), rs2:x21(0x00000000), imm:0x0, result rd:x27(0x00001052)
inst_88:
    TEST_RRI_OP(aes32dsi, x27, x5, x21, 0x0, 0x00001052, 0x1000, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00001052) 

 
    # Testcase 89:  rs1:x4(0x00002000), rs2:x20(0x00000000), imm:0x0, result rd:x28(0x00002052)
inst_89:
    TEST_RRI_OP(aes32dsi, x28, x4, x20, 0x0, 0x00002052, 0x2000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x00002052) 





    # address for test results
    # la x4, test_19_res
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x4,signature_19_0)
 
    # Testcase 90:  rs1:x3(0x00004000), rs2:x19(0x00000000), imm:0x0, result rd:x29(0x00004052)
inst_90:
    TEST_RRI_OP(aes32dsi, x29, x3, x19, 0x0, 0x00004052, 0x4000, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x00004052) 

 
    # Testcase 91:  rs1:x2(0x00008000), rs2:x18(0x00000000), imm:0x0, result rd:x30(0x00008052)
inst_91:
    TEST_RRI_OP(aes32dsi, x30, x2, x18, 0x0, 0x00008052, 0x8000, 0x0, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x00008052) 

 
    # Testcase 92:  rs1:x1(0x00010000), rs2:x17(0x00000000), imm:0x0, result rd:x31(0x00010052)
inst_92:
    TEST_RRI_OP(aes32dsi, x31, x1, x17, 0x0, 0x00010052, 0x10000, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x00010052) 

 
    # Testcase 93:  rs1:x31(0x00020000), rs2:x16(0x00000000), imm:0x0, result rd:x1(0x00020052)
inst_93:
    TEST_RRI_OP(aes32dsi, x1, x31, x16, 0x0, 0x00020052, 0x20000, 0x0, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00020052) 

 
    # Testcase 94:  rs1:x30(0x00040000), rs2:x15(0x00000000), imm:0x0, result rd:x2(0x00040052)
inst_94:
    TEST_RRI_OP(aes32dsi, x2, x30, x15, 0x0, 0x00040052, 0x40000, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00040052) 





    # address for test results
    # la x1, test_20_res
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_20_0)
 
    # Testcase 95:  rs1:x29(0x00080000), rs2:x14(0x00000000), imm:0x0, result rd:x3(0x00080052)
inst_95:
    TEST_RRI_OP(aes32dsi, x3, x29, x14, 0x0, 0x00080052, 0x80000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x00080052) 

 
    # Testcase 96:  rs1:x28(0x00100000), rs2:x13(0x00000000), imm:0x0, result rd:x4(0x00100052)
inst_96:
    TEST_RRI_OP(aes32dsi, x4, x28, x13, 0x0, 0x00100052, 0x100000, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00100052) 

 
    # Testcase 97:  rs1:x27(0x00200000), rs2:x12(0x00000000), imm:0x0, result rd:x5(0x00200052)
inst_97:
    TEST_RRI_OP(aes32dsi, x5, x27, x12, 0x0, 0x00200052, 0x200000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00200052) 

 
    # Testcase 98:  rs1:x26(0x00400000), rs2:x11(0x00000000), imm:0x0, result rd:x6(0x00400052)
inst_98:
    TEST_RRI_OP(aes32dsi, x6, x26, x11, 0x0, 0x00400052, 0x400000, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00400052) 

 
    # Testcase 99:  rs1:x25(0x00800000), rs2:x10(0x00000000), imm:0x0, result rd:x7(0x00800052)
inst_99:
    TEST_RRI_OP(aes32dsi, x7, x25, x10, 0x0, 0x00800052, 0x800000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00800052) 





    # address for test results
    # la x1, test_21_res
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_21_0)
 
    # Testcase 100:  rs1:x24(0x01000000), rs2:x9(0x00000000), imm:0x0, result rd:x8(0x01000052)
inst_100:
    TEST_RRI_OP(aes32dsi, x8, x24, x9, 0x0, 0x01000052, 0x1000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x01000052) 

 
    # Testcase 101:  rs1:x23(0x02000000), rs2:x8(0x00000000), imm:0x0, result rd:x9(0x02000052)
inst_101:
    TEST_RRI_OP(aes32dsi, x9, x23, x8, 0x0, 0x02000052, 0x2000000, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x02000052) 

 
    # Testcase 102:  rs1:x22(0x04000000), rs2:x7(0x00000000), imm:0x0, result rd:x10(0x04000052)
inst_102:
    TEST_RRI_OP(aes32dsi, x10, x22, x7, 0x0, 0x04000052, 0x4000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x04000052) 

 
    # Testcase 103:  rs1:x21(0x08000000), rs2:x6(0x00000000), imm:0x0, result rd:x11(0x08000052)
inst_103:
    TEST_RRI_OP(aes32dsi, x11, x21, x6, 0x0, 0x08000052, 0x8000000, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x08000052) 

 
    # Testcase 104:  rs1:x20(0x10000000), rs2:x5(0x00000000), imm:0x0, result rd:x12(0x10000052)
inst_104:
    TEST_RRI_OP(aes32dsi, x12, x20, x5, 0x0, 0x10000052, 0x10000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x10000052) 





    # address for test results
    # la x5, test_22_res
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x5,signature_22_0)
 
    # Testcase 105:  rs1:x19(0x20000000), rs2:x4(0x00000000), imm:0x0, result rd:x13(0x20000052)
inst_105:
    TEST_RRI_OP(aes32dsi, x13, x19, x4, 0x0, 0x20000052, 0x20000000, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x20000052) 

 
    # Testcase 106:  rs1:x18(0x40000000), rs2:x3(0x00000000), imm:0x0, result rd:x14(0x40000052)
inst_106:
    TEST_RRI_OP(aes32dsi, x14, x18, x3, 0x0, 0x40000052, 0x40000000, 0x0, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x40000052) 

 
    # Testcase 107:  rs1:x17(0x80000000), rs2:x2(0x00000000), imm:0x0, result rd:x15(0x80000052)
inst_107:
    TEST_RRI_OP(aes32dsi, x15, x17, x2, 0x0, 0x80000052, 0x80000000, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x80000052) 

 
    # Testcase 108:  rs1:x16(0x00000000), rs2:x1(0x00000000), imm:0x0, result rd:x16(0x00000052)
inst_108:
    TEST_RRI_OP(aes32dsi, x16, x16, x1, 0x0, 0x00000052, 0x0, 0x0, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x00000052) 

 
    # Testcase 109:  rs1:x15(0xfffffffe), rs2:x31(0x00000000), imm:0x0, result rd:x17(0xffffffac)
inst_109:
    TEST_RRI_OP(aes32dsi, x17, x15, x31, 0x0, 0xffffffac, 0xfffffffe, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0xffffffac) 





    # address for test results
    # la x1, test_23_res
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_23_0)
 
    # Testcase 110:  rs1:x14(0xfffffffd), rs2:x30(0x00000000), imm:0x0, result rd:x18(0xffffffaf)
inst_110:
    TEST_RRI_OP(aes32dsi, x18, x14, x30, 0x0, 0xffffffaf, 0xfffffffd, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xffffffaf) 

 
    # Testcase 111:  rs1:x13(0xfffffffb), rs2:x29(0x00000000), imm:0x0, result rd:x19(0xffffffa9)
inst_111:
    TEST_RRI_OP(aes32dsi, x19, x13, x29, 0x0, 0xffffffa9, 0xfffffffb, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xffffffa9) 

 
    # Testcase 112:  rs1:x12(0xfffffff7), rs2:x28(0x00000000), imm:0x0, result rd:x20(0xffffffa5)
inst_112:
    TEST_RRI_OP(aes32dsi, x20, x12, x28, 0x0, 0xffffffa5, 0xfffffff7, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xffffffa5) 

 
    # Testcase 113:  rs1:x11(0xffffffef), rs2:x27(0x00000000), imm:0x0, result rd:x21(0xffffffbd)
inst_113:
    TEST_RRI_OP(aes32dsi, x21, x11, x27, 0x0, 0xffffffbd, 0xffffffef, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xffffffbd) 

 
    # Testcase 114:  rs1:x10(0xffffffdf), rs2:x26(0x00000000), imm:0x0, result rd:x22(0xffffff8d)
inst_114:
    TEST_RRI_OP(aes32dsi, x22, x10, x26, 0x0, 0xffffff8d, 0xffffffdf, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffffff8d) 





    # address for test results
    # la x1, test_24_res
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_24_0)
 
    # Testcase 115:  rs1:x9(0xffffffbf), rs2:x25(0x00000000), imm:0x0, result rd:x23(0xffffffed)
inst_115:
    TEST_RRI_OP(aes32dsi, x23, x9, x25, 0x0, 0xffffffed, 0xffffffbf, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xffffffed) 

 
    # Testcase 116:  rs1:x8(0xffffff7f), rs2:x24(0x00000000), imm:0x0, result rd:x24(0xffffff2d)
inst_116:
    TEST_RRI_OP(aes32dsi, x24, x8, x24, 0x0, 0xffffff2d, 0xffffff7f, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffffff2d) 

 
    # Testcase 117:  rs1:x7(0xfffffeff), rs2:x23(0x00000000), imm:0x0, result rd:x25(0xfffffead)
inst_117:
    TEST_RRI_OP(aes32dsi, x25, x7, x23, 0x0, 0xfffffead, 0xfffffeff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xfffffead) 

 
    # Testcase 118:  rs1:x6(0xfffffdff), rs2:x22(0x00000000), imm:0x0, result rd:x26(0xfffffdad)
inst_118:
    TEST_RRI_OP(aes32dsi, x26, x6, x22, 0x0, 0xfffffdad, 0xfffffdff, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xfffffdad) 

 
    # Testcase 119:  rs1:x5(0xfffffbff), rs2:x21(0x00000000), imm:0x0, result rd:x27(0xfffffbad)
inst_119:
    TEST_RRI_OP(aes32dsi, x27, x5, x21, 0x0, 0xfffffbad, 0xfffffbff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xfffffbad) 





    # address for test results
    # la x5, test_25_res
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x5,signature_25_0)
 
    # Testcase 120:  rs1:x4(0xfffff7ff), rs2:x20(0x00000000), imm:0x0, result rd:x28(0xfffff7ad)
inst_120:
    TEST_RRI_OP(aes32dsi, x28, x4, x20, 0x0, 0xfffff7ad, 0xfffff7ff, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0xfffff7ad) 

 
    # Testcase 121:  rs1:x3(0xffffefff), rs2:x19(0x00000000), imm:0x0, result rd:x29(0xffffefad)
inst_121:
    TEST_RRI_OP(aes32dsi, x29, x3, x19, 0x0, 0xffffefad, 0xffffefff, 0x0, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0xffffefad) 

 
    # Testcase 122:  rs1:x2(0xffffdfff), rs2:x18(0x00000000), imm:0x0, result rd:x30(0xffffdfad)
inst_122:
    TEST_RRI_OP(aes32dsi, x30, x2, x18, 0x0, 0xffffdfad, 0xffffdfff, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0xffffdfad) 

 
    # Testcase 123:  rs1:x1(0xffffbfff), rs2:x17(0x00000000), imm:0x0, result rd:x31(0xffffbfad)
inst_123:
    TEST_RRI_OP(aes32dsi, x31, x1, x17, 0x0, 0xffffbfad, 0xffffbfff, 0x0, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0xffffbfad) 

 
    # Testcase 124:  rs1:x31(0xffff7fff), rs2:x16(0x00000000), imm:0x0, result rd:x1(0xffff7fad)
inst_124:
    TEST_RRI_OP(aes32dsi, x1, x31, x16, 0x0, 0xffff7fad, 0xffff7fff, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0xffff7fad) 





    # address for test results
    # la x1, test_26_res
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_26_0)
 
    # Testcase 125:  rs1:x30(0xfffeffff), rs2:x15(0x00000000), imm:0x0, result rd:x2(0xfffeffad)
inst_125:
    TEST_RRI_OP(aes32dsi, x2, x30, x15, 0x0, 0xfffeffad, 0xfffeffff, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0xfffeffad) 

 
    # Testcase 126:  rs1:x29(0xfffdffff), rs2:x14(0x00000000), imm:0x0, result rd:x3(0xfffdffad)
inst_126:
    TEST_RRI_OP(aes32dsi, x3, x29, x14, 0x0, 0xfffdffad, 0xfffdffff, 0x0, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xfffdffad) 

 
    # Testcase 127:  rs1:x28(0xfffbffff), rs2:x13(0x00000000), imm:0x0, result rd:x4(0xfffbffad)
inst_127:
    TEST_RRI_OP(aes32dsi, x4, x28, x13, 0x0, 0xfffbffad, 0xfffbffff, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xfffbffad) 

 
    # Testcase 128:  rs1:x27(0xfff7ffff), rs2:x12(0x00000000), imm:0x0, result rd:x5(0xfff7ffad)
inst_128:
    TEST_RRI_OP(aes32dsi, x5, x27, x12, 0x0, 0xfff7ffad, 0xfff7ffff, 0x0, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xfff7ffad) 

 
    # Testcase 129:  rs1:x26(0xffefffff), rs2:x11(0x00000000), imm:0x0, result rd:x6(0xffefffad)
inst_129:
    TEST_RRI_OP(aes32dsi, x6, x26, x11, 0x0, 0xffefffad, 0xffefffff, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0xffefffad) 





    # address for test results
    # la x1, test_27_res
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_27_0)
 
    # Testcase 130:  rs1:x25(0xffdfffff), rs2:x10(0x00000000), imm:0x0, result rd:x7(0xffdfffad)
inst_130:
    TEST_RRI_OP(aes32dsi, x7, x25, x10, 0x0, 0xffdfffad, 0xffdfffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xffdfffad) 

 
    # Testcase 131:  rs1:x24(0xffbfffff), rs2:x9(0x00000000), imm:0x0, result rd:x8(0xffbfffad)
inst_131:
    TEST_RRI_OP(aes32dsi, x8, x24, x9, 0x0, 0xffbfffad, 0xffbfffff, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffbfffad) 

 
    # Testcase 132:  rs1:x23(0xff7fffff), rs2:x8(0x00000000), imm:0x3, result rd:x9(0xad7fffff)
inst_132:
    TEST_RRI_OP(aes32dsi, x9, x23, x8, 0x3, 0xad7fffff, 0xff7fffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xad7fffff) 

 
    # Testcase 133:  rs1:x22(0xfeffffff), rs2:x7(0x00000000), imm:0x3, result rd:x10(0xacffffff)
inst_133:
    TEST_RRI_OP(aes32dsi, x10, x22, x7, 0x3, 0xacffffff, 0xfeffffff, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xacffffff) 

 
    # Testcase 134:  rs1:x21(0xfdffffff), rs2:x6(0x00000000), imm:0x3, result rd:x11(0xafffffff)
inst_134:
    TEST_RRI_OP(aes32dsi, x11, x21, x6, 0x3, 0xafffffff, 0xfdffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xafffffff) 





    # address for test results
    # la x6, test_28_res
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x6,signature_28_0)
 
    # Testcase 135:  rs1:x20(0xfbffffff), rs2:x5(0x00000000), imm:0x3, result rd:x12(0xa9ffffff)
inst_135:
    TEST_RRI_OP(aes32dsi, x12, x20, x5, 0x3, 0xa9ffffff, 0xfbffffff, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0xa9ffffff) 

 
    # Testcase 136:  rs1:x19(0xf7ffffff), rs2:x4(0x00000000), imm:0x1, result rd:x13(0xf7ffadff)
inst_136:
    TEST_RRI_OP(aes32dsi, x13, x19, x4, 0x1, 0xf7ffadff, 0xf7ffffff, 0x0, x6, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0xf7ffadff) 

 
    # Testcase 137:  rs1:x18(0xefffffff), rs2:x3(0x00000000), imm:0x1, result rd:x14(0xefffadff)
inst_137:
    TEST_RRI_OP(aes32dsi, x14, x18, x3, 0x1, 0xefffadff, 0xefffffff, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0xefffadff) 

 
    # Testcase 138:  rs1:x17(0xdfffffff), rs2:x2(0x00000000), imm:0x3, result rd:x15(0x8dffffff)
inst_138:
    TEST_RRI_OP(aes32dsi, x15, x17, x2, 0x3, 0x8dffffff, 0xdfffffff, 0x0, x6, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x8dffffff) 

 
    # Testcase 139:  rs1:x16(0xbfffffff), rs2:x1(0x00000000), imm:0x1, result rd:x16(0xbfffadff)
inst_139:
    TEST_RRI_OP(aes32dsi, x16, x16, x1, 0x1, 0xbfffadff, 0xbfffffff, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0xbfffadff) 





    # address for test results
    # la x1, test_29_res
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_29_0)
 
    # Testcase 140:  rs1:x15(0x7fffffff), rs2:x31(0x00000000), imm:0x2, result rd:x17(0x7fadffff)
inst_140:
    TEST_RRI_OP(aes32dsi, x17, x15, x31, 0x2, 0x7fadffff, 0x7fffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x7fadffff) 

 
    # Testcase 141:  rs1:x14(0xffffffff), rs2:x30(0x00000000), imm:0x0, result rd:x18(0xffffffad)
inst_141:
    TEST_RRI_OP(aes32dsi, x18, x14, x30, 0x0, 0xffffffad, 0xffffffff, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xffffffad) 

 
    # Testcase 142:  rs1:x13(0x10fd3dedadea5195), rs2:x29(0xdf7f3844121bcc23), imm:0x2, result rd:x19(0xadae5195)
inst_142:
    TEST_RRI_OP(aes32dsi, x19, x13, x29, 0x2, 0xadae5195, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xadae5195) 

 
    # Testcase 143:  rs1:x12(0xbd295ce2d2ffbec1), rs2:x28(0xf5adb41aa47d105b), imm:0x1, result rd:x0(0x00000000)
inst_143:
    TEST_RRI_OP(aes32dsi, x0, x12, x28, 0x1, 0x00000000, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x00000000) 

 
    # Testcase 144:  rs1:x11(0xc9649f05a8e1a8bb), rs2:x0(0x82f6747f707af2c0), imm:0x3, result rd:x21(0xfae1a8bb)
inst_144:
    TEST_RRI_OP(aes32dsi, x21, x11, x0, 0x3, 0xfae1a8bb, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xfae1a8bb) 





    # address for test results
    # la x1, test_30_res
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32dsi)
	RVTEST_SIGBASE(x1,signature_30_0)
 
    # Testcase 145:  rs1:x0(0x3541291848c99fcb), rs2:x26(0x73a92fd4e19bfbc3), imm:0x3, result rd:x22(0xe0000000)
inst_145:
    TEST_RRI_OP(aes32dsi, x22, x0, x26, 0x3, 0xe0000000, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xe0000000) 



	
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

