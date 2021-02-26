// RISC-V Architectural Validation Test I-SHA512SUM1-01
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
// Description: Testing instruction 'sha512sum1'.

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
    #la x6, test_1_res
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x6,signature_1_0)

 
    # Testcase 0:  rs1:x31(0x10fd3dedadea5195), result rd:x1(0x24e7f2e37245a24d)
inst_0:
    li  x31, 0x10fd3dedadea5195
    sha512sum1 x1, x31
    sd x1, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x24e7f2e37245a24d)
 
    # Testcase 1:  rs1:x30(0xbd295ce2d2ffbec1), result rd:x2(0x65dfe430446d6bef)
inst_1:
    li  x30, 0xbd295ce2d2ffbec1
    sha512sum1 x2, x30
    sd x2, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x65dfe430446d6bef)
 
    # Testcase 2:  rs1:x29(0xc9649f05a8e1a8bb), result rd:x3(0x4a15a71f06337bf1)
inst_2:
    li  x29, 0xc9649f05a8e1a8bb
    sha512sum1 x3, x29
    sd x3, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x4a15a71f06337bf1)
 
    # Testcase 3:  rs1:x28(0x3541291848c99fcb), result rd:x4(0x94fa7c9b0bbd9180)
inst_3:
    li  x28, 0x3541291848c99fcb
    sha512sum1 x4, x28
    sd x4, 24(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x94fa7c9b0bbd9180)
 
    # Testcase 4:  rs1:x27(0x10a24740461d524f), result rd:x5(0xbd8c8808ab5958d1)
inst_4:
    li  x27, 0x10a24740461d524f
    sha512sum1 x5, x27
    sd x5, 32(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xbd8c8808ab5958d1)




    # address for test results
    #la x1, test_2_res
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_2_0)

 
    # Testcase 5:  rs1:x26(0x546b0e54528a10af), result rd:x6(0xecbfc1bead6e6b0d)
inst_5:
    li  x26, 0x546b0e54528a10af
    sha512sum1 x6, x26
    sd x6, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xecbfc1bead6e6b0d)
 
    # Testcase 6:  rs1:x25(0x73a92fd4e19bfbc3), result rd:x7(0xfb8ddfb3151f6a9e)
inst_6:
    li  x25, 0x73a92fd4e19bfbc3
    sha512sum1 x7, x25
    sd x7, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfb8ddfb3151f6a9e)
 
    # Testcase 7:  rs1:x24(0x82f6747f707af2c0), result rd:x8(0x480a161d2ca366cf)
inst_7:
    li  x24, 0x82f6747f707af2c0
    sha512sum1 x8, x24
    sd x8, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x480a161d2ca366cf)
 
    # Testcase 8:  rs1:x23(0xf5adb41aa47d105b), result rd:x9(0x082b15559096ee31)
inst_8:
    li  x23, 0xf5adb41aa47d105b
    sha512sum1 x9, x23
    sd x9, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x082b15559096ee31)
 
    # Testcase 9:  rs1:x22(0xdf7f3844121bcc23), result rd:x10(0xe18e87c53eeef375)
inst_9:
    li  x22, 0xdf7f3844121bcc23
    sha512sum1 x10, x22
    sd x10, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xe18e87c53eeef375)




    # address for test results
    #la x1, test_3_res
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_3_0)

 
    # Testcase 10:  rs1:x21(0x0000000000000001), result rd:x11(0x0004400000800000)
inst_10:
    li  x21, 0x1
    sha512sum1 x11, x21
    sd x11, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x0004400000800000)
 
    # Testcase 11:  rs1:x20(0x0000000000000002), result rd:x12(0x0008800001000000)
inst_11:
    li  x20, 0x2
    sha512sum1 x12, x20
    sd x12, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x0008800001000000)
 
    # Testcase 12:  rs1:x19(0x0000000000000004), result rd:x13(0x0011000002000000)
inst_12:
    li  x19, 0x4
    sha512sum1 x13, x19
    sd x13, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x0011000002000000)
 
    # Testcase 13:  rs1:x18(0x0000000000000008), result rd:x14(0x0022000004000000)
inst_13:
    li  x18, 0x8
    sha512sum1 x14, x18
    sd x14, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x0022000004000000)
 
    # Testcase 14:  rs1:x17(0x0000000000000010), result rd:x15(0x0044000008000000)
inst_14:
    li  x17, 0x10
    sha512sum1 x15, x17
    sd x15, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x0044000008000000)




    # address for test results
    #la x2, test_4_res
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x2,signature_4_0)

 
    # Testcase 15:  rs1:x16(0x0000000000000020), result rd:x16(0x0088000010000000)
inst_15:
    li  x16, 0x20
    sha512sum1 x16, x16
    sd x16, 0(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x0088000010000000)
 
    # Testcase 16:  rs1:x15(0x0000000000000040), result rd:x17(0x0110000020000000)
inst_16:
    li  x15, 0x40
    sha512sum1 x17, x15
    sd x17, 8(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x0110000020000000)
 
    # Testcase 17:  rs1:x14(0x0000000000000080), result rd:x18(0x0220000040000000)
inst_17:
    li  x14, 0x80
    sha512sum1 x18, x14
    sd x18, 16(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x0220000040000000)
 
    # Testcase 18:  rs1:x13(0x0000000000000100), result rd:x19(0x0440000080000000)
inst_18:
    li  x13, 0x100
    sha512sum1 x19, x13
    sd x19, 24(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x0440000080000000)
 
    # Testcase 19:  rs1:x12(0x0000000000000200), result rd:x20(0x0880000100000000)
inst_19:
    li  x12, 0x200
    sha512sum1 x20, x12
    sd x20, 32(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x0880000100000000)




    # address for test results
    #la x1, test_5_res
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_5_0)

 
    # Testcase 20:  rs1:x11(0x0000000000000400), result rd:x21(0x1100000200000000)
inst_20:
    li  x11, 0x400
    sha512sum1 x21, x11
    sd x21, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x1100000200000000)
 
    # Testcase 21:  rs1:x10(0x0000000000000800), result rd:x22(0x2200000400000000)
inst_21:
    li  x10, 0x800
    sha512sum1 x22, x10
    sd x22, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x2200000400000000)
 
    # Testcase 22:  rs1:x9(0x0000000000001000), result rd:x23(0x4400000800000000)
inst_22:
    li  x9, 0x1000
    sha512sum1 x23, x9
    sd x23, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x4400000800000000)
 
    # Testcase 23:  rs1:x8(0x0000000000002000), result rd:x24(0x8800001000000000)
inst_23:
    li  x8, 0x2000
    sha512sum1 x24, x8
    sd x24, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x8800001000000000)
 
    # Testcase 24:  rs1:x7(0x0000000000004000), result rd:x25(0x1000002000000001)
inst_24:
    li  x7, 0x4000
    sha512sum1 x25, x7
    sd x25, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x1000002000000001)




    # address for test results
    #la x1, test_6_res
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_6_0)

 
    # Testcase 25:  rs1:x6(0x0000000000008000), result rd:x26(0x2000004000000002)
inst_25:
    li  x6, 0x8000
    sha512sum1 x26, x6
    sd x26, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x2000004000000002)
 
    # Testcase 26:  rs1:x5(0x0000000000010000), result rd:x27(0x4000008000000004)
inst_26:
    li  x5, 0x10000
    sha512sum1 x27, x5
    sd x27, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x4000008000000004)
 
    # Testcase 27:  rs1:x4(0x0000000000020000), result rd:x28(0x8000010000000008)
inst_27:
    li  x4, 0x20000
    sha512sum1 x28, x4
    sd x28, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x8000010000000008)
 
    # Testcase 28:  rs1:x3(0x0000000000040000), result rd:x29(0x0000020000000011)
inst_28:
    li  x3, 0x40000
    sha512sum1 x29, x3
    sd x29, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x0000020000000011)
 
    # Testcase 29:  rs1:x2(0x0000000000080000), result rd:x30(0x0000040000000022)
inst_29:
    li  x2, 0x80000
    sha512sum1 x30, x2
    sd x30, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000040000000022)




    # address for test results
    #la x5, test_7_res
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x5,signature_7_0)

 
    # Testcase 30:  rs1:x1(0x0000000000100000), result rd:x31(0x0000080000000044)
inst_30:
    li  x1, 0x100000
    sha512sum1 x31, x1
    sd x31, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x0000080000000044)
 
    # Testcase 31:  rs1:x31(0x0000000000200000), result rd:x1(0x0000100000000088)
inst_31:
    li  x31, 0x200000
    sha512sum1 x1, x31
    sd x1, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x0000100000000088)
 
    # Testcase 32:  rs1:x30(0x0000000000400000), result rd:x2(0x0000200000000110)
inst_32:
    li  x30, 0x400000
    sha512sum1 x2, x30
    sd x2, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x0000200000000110)
 
    # Testcase 33:  rs1:x29(0x0000000000800000), result rd:x3(0x0000400000000220)
inst_33:
    li  x29, 0x800000
    sha512sum1 x3, x29
    sd x3, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x0000400000000220)
 
    # Testcase 34:  rs1:x28(0x0000000001000000), result rd:x4(0x0000800000000440)
inst_34:
    li  x28, 0x1000000
    sha512sum1 x4, x28
    sd x4, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x0000800000000440)




    # address for test results
    #la x1, test_8_res
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_8_0)

 
    # Testcase 35:  rs1:x27(0x0000000002000000), result rd:x5(0x0001000000000880)
inst_35:
    li  x27, 0x2000000
    sha512sum1 x5, x27
    sd x5, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0001000000000880)
 
    # Testcase 36:  rs1:x26(0x0000000004000000), result rd:x6(0x0002000000001100)
inst_36:
    li  x26, 0x4000000
    sha512sum1 x6, x26
    sd x6, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0002000000001100)
 
    # Testcase 37:  rs1:x25(0x0000000008000000), result rd:x7(0x0004000000002200)
inst_37:
    li  x25, 0x8000000
    sha512sum1 x7, x25
    sd x7, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0004000000002200)
 
    # Testcase 38:  rs1:x24(0x0000000010000000), result rd:x8(0x0008000000004400)
inst_38:
    li  x24, 0x10000000
    sha512sum1 x8, x24
    sd x8, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0008000000004400)
 
    # Testcase 39:  rs1:x23(0x0000000020000000), result rd:x9(0x0010000000008800)
inst_39:
    li  x23, 0x20000000
    sha512sum1 x9, x23
    sd x9, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0010000000008800)




    # address for test results
    #la x1, test_9_res
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_9_0)

 
    # Testcase 40:  rs1:x22(0x0000000040000000), result rd:x10(0x0020000000011000)
inst_40:
    li  x22, 0x40000000
    sha512sum1 x10, x22
    sd x10, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0020000000011000)
 
    # Testcase 41:  rs1:x21(0x0000000080000000), result rd:x11(0x0040000000022000)
inst_41:
    li  x21, 0x80000000
    sha512sum1 x11, x21
    sd x11, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0040000000022000)
 
    # Testcase 42:  rs1:x20(0x0000000100000000), result rd:x12(0x0080000000044000)
inst_42:
    li  x20, 0x100000000
    sha512sum1 x12, x20
    sd x12, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0080000000044000)
 
    # Testcase 43:  rs1:x19(0x0000000200000000), result rd:x13(0x0100000000088000)
inst_43:
    li  x19, 0x200000000
    sha512sum1 x13, x19
    sd x13, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0100000000088000)
 
    # Testcase 44:  rs1:x18(0x0000000400000000), result rd:x14(0x0200000000110000)
inst_44:
    li  x18, 0x400000000
    sha512sum1 x14, x18
    sd x14, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x0200000000110000)




    # address for test results
    #la x3, test_10_res
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x3,signature_10_0)

 
    # Testcase 45:  rs1:x17(0x0000000800000000), result rd:x15(0x0400000000220000)
inst_45:
    li  x17, 0x800000000
    sha512sum1 x15, x17
    sd x15, 0(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x0400000000220000)
 
    # Testcase 46:  rs1:x16(0x0000001000000000), result rd:x16(0x0800000000440000)
inst_46:
    li  x16, 0x1000000000
    sha512sum1 x16, x16
    sd x16, 8(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x0800000000440000)
 
    # Testcase 47:  rs1:x15(0x0000002000000000), result rd:x17(0x1000000000880000)
inst_47:
    li  x15, 0x2000000000
    sha512sum1 x17, x15
    sd x17, 16(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x1000000000880000)
 
    # Testcase 48:  rs1:x14(0x0000004000000000), result rd:x18(0x2000000001100000)
inst_48:
    li  x14, 0x4000000000
    sha512sum1 x18, x14
    sd x18, 24(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x2000000001100000)
 
    # Testcase 49:  rs1:x13(0x0000008000000000), result rd:x19(0x4000000002200000)
inst_49:
    li  x13, 0x8000000000
    sha512sum1 x19, x13
    sd x19, 32(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x4000000002200000)




    # address for test results
    #la x1, test_11_res
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_11_0)

 
    # Testcase 50:  rs1:x12(0x0000010000000000), result rd:x20(0x8000000004400000)
inst_50:
    li  x12, 0x10000000000
    sha512sum1 x20, x12
    sd x20, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x8000000004400000)
 
    # Testcase 51:  rs1:x11(0x0000020000000000), result rd:x21(0x0000000008800001)
inst_51:
    li  x11, 0x20000000000
    sha512sum1 x21, x11
    sd x21, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000008800001)
 
    # Testcase 52:  rs1:x10(0x0000040000000000), result rd:x22(0x0000000011000002)
inst_52:
    li  x10, 0x40000000000
    sha512sum1 x22, x10
    sd x22, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000011000002)
 
    # Testcase 53:  rs1:x9(0x0000080000000000), result rd:x23(0x0000000022000004)
inst_53:
    li  x9, 0x80000000000
    sha512sum1 x23, x9
    sd x23, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000022000004)
 
    # Testcase 54:  rs1:x8(0x0000100000000000), result rd:x24(0x0000000044000008)
inst_54:
    li  x8, 0x100000000000
    sha512sum1 x24, x8
    sd x24, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000044000008)




    # address for test results
    #la x1, test_12_res
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_12_0)

 
    # Testcase 55:  rs1:x7(0x0000200000000000), result rd:x25(0x0000000088000010)
inst_55:
    li  x7, 0x200000000000
    sha512sum1 x25, x7
    sd x25, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000088000010)
 
    # Testcase 56:  rs1:x6(0x0000400000000000), result rd:x26(0x0000000110000020)
inst_56:
    li  x6, 0x400000000000
    sha512sum1 x26, x6
    sd x26, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0000000110000020)
 
    # Testcase 57:  rs1:x5(0x0000800000000000), result rd:x27(0x0000000220000040)
inst_57:
    li  x5, 0x800000000000
    sha512sum1 x27, x5
    sd x27, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x0000000220000040)
 
    # Testcase 58:  rs1:x4(0x0001000000000000), result rd:x28(0x0000000440000080)
inst_58:
    li  x4, 0x1000000000000
    sha512sum1 x28, x4
    sd x28, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x0000000440000080)
 
    # Testcase 59:  rs1:x3(0x0002000000000000), result rd:x29(0x0000000880000100)
inst_59:
    li  x3, 0x2000000000000
    sha512sum1 x29, x3
    sd x29, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x0000000880000100)




    # address for test results
    #la x4, test_13_res
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x4,signature_13_0)

 
    # Testcase 60:  rs1:x2(0x0004000000000000), result rd:x30(0x0000001100000200)
inst_60:
    li  x2, 0x4000000000000
    sha512sum1 x30, x2
    sd x30, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x0000001100000200)
 
    # Testcase 61:  rs1:x1(0x0008000000000000), result rd:x31(0x0000002200000400)
inst_61:
    li  x1, 0x8000000000000
    sha512sum1 x31, x1
    sd x31, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x0000002200000400)
 
    # Testcase 62:  rs1:x31(0x0010000000000000), result rd:x1(0x0000004400000800)
inst_62:
    li  x31, 0x10000000000000
    sha512sum1 x1, x31
    sd x1, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x0000004400000800)
 
    # Testcase 63:  rs1:x30(0x0020000000000000), result rd:x2(0x0000008800001000)
inst_63:
    li  x30, 0x20000000000000
    sha512sum1 x2, x30
    sd x2, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x0000008800001000)
 
    # Testcase 64:  rs1:x29(0x0040000000000000), result rd:x3(0x0000011000002000)
inst_64:
    li  x29, 0x40000000000000
    sha512sum1 x3, x29
    sd x3, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x0000011000002000)




    # address for test results
    #la x1, test_14_res
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_14_0)

 
    # Testcase 65:  rs1:x28(0x0080000000000000), result rd:x4(0x0000022000004000)
inst_65:
    li  x28, 0x80000000000000
    sha512sum1 x4, x28
    sd x4, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x0000022000004000)
 
    # Testcase 66:  rs1:x27(0x0100000000000000), result rd:x5(0x0000044000008000)
inst_66:
    li  x27, 0x100000000000000
    sha512sum1 x5, x27
    sd x5, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0000044000008000)
 
    # Testcase 67:  rs1:x26(0x0200000000000000), result rd:x6(0x0000088000010000)
inst_67:
    li  x26, 0x200000000000000
    sha512sum1 x6, x26
    sd x6, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000088000010000)
 
    # Testcase 68:  rs1:x25(0x0400000000000000), result rd:x7(0x0000110000020000)
inst_68:
    li  x25, 0x400000000000000
    sha512sum1 x7, x25
    sd x7, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000110000020000)
 
    # Testcase 69:  rs1:x24(0x0800000000000000), result rd:x8(0x0000220000040000)
inst_69:
    li  x24, 0x800000000000000
    sha512sum1 x8, x24
    sd x8, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000220000040000)




    # address for test results
    #la x1, test_15_res
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_15_0)

 
    # Testcase 70:  rs1:x23(0x1000000000000000), result rd:x9(0x0000440000080000)
inst_70:
    li  x23, 0x1000000000000000
    sha512sum1 x9, x23
    sd x9, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000440000080000)
 
    # Testcase 71:  rs1:x22(0x2000000000000000), result rd:x10(0x0000880000100000)
inst_71:
    li  x22, 0x2000000000000000
    sha512sum1 x10, x22
    sd x10, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000880000100000)
 
    # Testcase 72:  rs1:x21(0x4000000000000000), result rd:x11(0x0001100000200000)
inst_72:
    li  x21, 0x4000000000000000
    sha512sum1 x11, x21
    sd x11, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0001100000200000)
 
    # Testcase 73:  rs1:x20(0x8000000000000000), result rd:x12(0x0002200000400000)
inst_73:
    li  x20, 0x8000000000000000
    sha512sum1 x12, x20
    sd x12, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0002200000400000)
 
    # Testcase 74:  rs1:x19(0x0000000000000000), result rd:x13(0x0000000000000000)
inst_74:
    li  x19, 0x0
    sha512sum1 x13, x19
    sd x13, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0000000000000000)




    # address for test results
    #la x4, test_16_res
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x4,signature_16_0)

 
    # Testcase 75:  rs1:x18(0xfffffffffffffffe), result rd:x14(0xfffbbfffff7fffff)
inst_75:
    li  x18, 0xfffffffffffffffe
    sha512sum1 x14, x18
    sd x14, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xfffbbfffff7fffff)
 
    # Testcase 76:  rs1:x17(0xfffffffffffffffd), result rd:x15(0xfff77ffffeffffff)
inst_76:
    li  x17, 0xfffffffffffffffd
    sha512sum1 x15, x17
    sd x15, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0xfff77ffffeffffff)
 
    # Testcase 77:  rs1:x16(0xfffffffffffffffb), result rd:x16(0xffeefffffdffffff)
inst_77:
    li  x16, 0xfffffffffffffffb
    sha512sum1 x16, x16
    sd x16, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0xffeefffffdffffff)
 
    # Testcase 78:  rs1:x15(0xfffffffffffffff7), result rd:x17(0xffddfffffbffffff)
inst_78:
    li  x15, 0xfffffffffffffff7
    sha512sum1 x17, x15
    sd x17, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0xffddfffffbffffff)
 
    # Testcase 79:  rs1:x14(0xffffffffffffffef), result rd:x18(0xffbbfffff7ffffff)
inst_79:
    li  x14, 0xffffffffffffffef
    sha512sum1 x18, x14
    sd x18, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0xffbbfffff7ffffff)




    # address for test results
    #la x1, test_17_res
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_17_0)

 
    # Testcase 80:  rs1:x13(0xffffffffffffffdf), result rd:x19(0xff77ffffefffffff)
inst_80:
    li  x13, 0xffffffffffffffdf
    sha512sum1 x19, x13
    sd x19, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xff77ffffefffffff)
 
    # Testcase 81:  rs1:x12(0xffffffffffffffbf), result rd:x20(0xfeefffffdfffffff)
inst_81:
    li  x12, 0xffffffffffffffbf
    sha512sum1 x20, x12
    sd x20, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xfeefffffdfffffff)
 
    # Testcase 82:  rs1:x11(0xffffffffffffff7f), result rd:x21(0xfddfffffbfffffff)
inst_82:
    li  x11, 0xffffffffffffff7f
    sha512sum1 x21, x11
    sd x21, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xfddfffffbfffffff)
 
    # Testcase 83:  rs1:x10(0xfffffffffffffeff), result rd:x22(0xfbbfffff7fffffff)
inst_83:
    li  x10, 0xfffffffffffffeff
    sha512sum1 x22, x10
    sd x22, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xfbbfffff7fffffff)
 
    # Testcase 84:  rs1:x9(0xfffffffffffffdff), result rd:x23(0xf77ffffeffffffff)
inst_84:
    li  x9, 0xfffffffffffffdff
    sha512sum1 x23, x9
    sd x23, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xf77ffffeffffffff)




    # address for test results
    #la x1, test_18_res
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_18_0)

 
    # Testcase 85:  rs1:x8(0xfffffffffffffbff), result rd:x24(0xeefffffdffffffff)
inst_85:
    li  x8, 0xfffffffffffffbff
    sha512sum1 x24, x8
    sd x24, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xeefffffdffffffff)
 
    # Testcase 86:  rs1:x7(0xfffffffffffff7ff), result rd:x25(0xddfffffbffffffff)
inst_86:
    li  x7, 0xfffffffffffff7ff
    sha512sum1 x25, x7
    sd x25, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xddfffffbffffffff)
 
    # Testcase 87:  rs1:x6(0xffffffffffffefff), result rd:x26(0xbbfffff7ffffffff)
inst_87:
    li  x6, 0xffffffffffffefff
    sha512sum1 x26, x6
    sd x26, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xbbfffff7ffffffff)
 
    # Testcase 88:  rs1:x5(0xffffffffffffdfff), result rd:x27(0x77ffffefffffffff)
inst_88:
    li  x5, 0xffffffffffffdfff
    sha512sum1 x27, x5
    sd x27, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x77ffffefffffffff)
 
    # Testcase 89:  rs1:x4(0xffffffffffffbfff), result rd:x28(0xefffffdffffffffe)
inst_89:
    li  x4, 0xffffffffffffbfff
    sha512sum1 x28, x4
    sd x28, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xefffffdffffffffe)




    # address for test results
    #la x4, test_19_res
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x4,signature_19_0)

 
    # Testcase 90:  rs1:x3(0xffffffffffff7fff), result rd:x29(0xdfffffbffffffffd)
inst_90:
    li  x3, 0xffffffffffff7fff
    sha512sum1 x29, x3
    sd x29, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0xdfffffbffffffffd)
 
    # Testcase 91:  rs1:x2(0xfffffffffffeffff), result rd:x30(0xbfffff7ffffffffb)
inst_91:
    li  x2, 0xfffffffffffeffff
    sha512sum1 x30, x2
    sd x30, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xbfffff7ffffffffb)
 
    # Testcase 92:  rs1:x1(0xfffffffffffdffff), result rd:x31(0x7ffffefffffffff7)
inst_92:
    li  x1, 0xfffffffffffdffff
    sha512sum1 x31, x1
    sd x31, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x7ffffefffffffff7)
 
    # Testcase 93:  rs1:x31(0xfffffffffffbffff), result rd:x1(0xfffffdffffffffee)
inst_93:
    li  x31, 0xfffffffffffbffff
    sha512sum1 x1, x31
    sd x1, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xfffffdffffffffee)
 
    # Testcase 94:  rs1:x30(0xfffffffffff7ffff), result rd:x2(0xfffffbffffffffdd)
inst_94:
    li  x30, 0xfffffffffff7ffff
    sha512sum1 x2, x30
    sd x2, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xfffffbffffffffdd)




    # address for test results
    #la x1, test_20_res
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_20_0)

 
    # Testcase 95:  rs1:x29(0xffffffffffefffff), result rd:x3(0xfffff7ffffffffbb)
inst_95:
    li  x29, 0xffffffffffefffff
    sha512sum1 x3, x29
    sd x3, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0xfffff7ffffffffbb)
 
    # Testcase 96:  rs1:x28(0xffffffffffdfffff), result rd:x4(0xffffefffffffff77)
inst_96:
    li  x28, 0xffffffffffdfffff
    sha512sum1 x4, x28
    sd x4, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xffffefffffffff77)
 
    # Testcase 97:  rs1:x27(0xffffffffffbfffff), result rd:x5(0xffffdffffffffeef)
inst_97:
    li  x27, 0xffffffffffbfffff
    sha512sum1 x5, x27
    sd x5, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xffffdffffffffeef)
 
    # Testcase 98:  rs1:x26(0xffffffffff7fffff), result rd:x6(0xffffbffffffffddf)
inst_98:
    li  x26, 0xffffffffff7fffff
    sha512sum1 x6, x26
    sd x6, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xffffbffffffffddf)
 
    # Testcase 99:  rs1:x25(0xfffffffffeffffff), result rd:x7(0xffff7ffffffffbbf)
inst_99:
    li  x25, 0xfffffffffeffffff
    sha512sum1 x7, x25
    sd x7, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xffff7ffffffffbbf)




    # address for test results
    #la x1, test_21_res
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_21_0)

 
    # Testcase 100:  rs1:x24(0xfffffffffdffffff), result rd:x8(0xfffefffffffff77f)
inst_100:
    li  x24, 0xfffffffffdffffff
    sha512sum1 x8, x24
    sd x8, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xfffefffffffff77f)
 
    # Testcase 101:  rs1:x23(0xfffffffffbffffff), result rd:x9(0xfffdffffffffeeff)
inst_101:
    li  x23, 0xfffffffffbffffff
    sha512sum1 x9, x23
    sd x9, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xfffdffffffffeeff)
 
    # Testcase 102:  rs1:x22(0xfffffffff7ffffff), result rd:x10(0xfffbffffffffddff)
inst_102:
    li  x22, 0xfffffffff7ffffff
    sha512sum1 x10, x22
    sd x10, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xfffbffffffffddff)
 
    # Testcase 103:  rs1:x21(0xffffffffefffffff), result rd:x11(0xfff7ffffffffbbff)
inst_103:
    li  x21, 0xffffffffefffffff
    sha512sum1 x11, x21
    sd x11, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xfff7ffffffffbbff)
 
    # Testcase 104:  rs1:x20(0xffffffffdfffffff), result rd:x12(0xffefffffffff77ff)
inst_104:
    li  x20, 0xffffffffdfffffff
    sha512sum1 x12, x20
    sd x12, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xffefffffffff77ff)




    # address for test results
    #la x5, test_22_res
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x5,signature_22_0)

 
    # Testcase 105:  rs1:x19(0xffffffffbfffffff), result rd:x13(0xffdffffffffeefff)
inst_105:
    li  x19, 0xffffffffbfffffff
    sha512sum1 x13, x19
    sd x13, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0xffdffffffffeefff)
 
    # Testcase 106:  rs1:x18(0xffffffff7fffffff), result rd:x14(0xffbffffffffddfff)
inst_106:
    li  x18, 0xffffffff7fffffff
    sha512sum1 x14, x18
    sd x14, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0xffbffffffffddfff)
 
    # Testcase 107:  rs1:x17(0xfffffffeffffffff), result rd:x15(0xff7ffffffffbbfff)
inst_107:
    li  x17, 0xfffffffeffffffff
    sha512sum1 x15, x17
    sd x15, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0xff7ffffffffbbfff)
 
    # Testcase 108:  rs1:x16(0xfffffffdffffffff), result rd:x16(0xfefffffffff77fff)
inst_108:
    li  x16, 0xfffffffdffffffff
    sha512sum1 x16, x16
    sd x16, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0xfefffffffff77fff)
 
    # Testcase 109:  rs1:x15(0xfffffffbffffffff), result rd:x17(0xfdffffffffeeffff)
inst_109:
    li  x15, 0xfffffffbffffffff
    sha512sum1 x17, x15
    sd x17, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0xfdffffffffeeffff)




    # address for test results
    #la x1, test_23_res
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_23_0)

 
    # Testcase 110:  rs1:x14(0xfffffff7ffffffff), result rd:x18(0xfbffffffffddffff)
inst_110:
    li  x14, 0xfffffff7ffffffff
    sha512sum1 x18, x14
    sd x18, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xfbffffffffddffff)
 
    # Testcase 111:  rs1:x13(0xffffffefffffffff), result rd:x19(0xf7ffffffffbbffff)
inst_111:
    li  x13, 0xffffffefffffffff
    sha512sum1 x19, x13
    sd x19, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xf7ffffffffbbffff)
 
    # Testcase 112:  rs1:x12(0xffffffdfffffffff), result rd:x20(0xefffffffff77ffff)
inst_112:
    li  x12, 0xffffffdfffffffff
    sha512sum1 x20, x12
    sd x20, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xefffffffff77ffff)
 
    # Testcase 113:  rs1:x11(0xffffffbfffffffff), result rd:x21(0xdffffffffeefffff)
inst_113:
    li  x11, 0xffffffbfffffffff
    sha512sum1 x21, x11
    sd x21, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xdffffffffeefffff)
 
    # Testcase 114:  rs1:x10(0xffffff7fffffffff), result rd:x22(0xbffffffffddfffff)
inst_114:
    li  x10, 0xffffff7fffffffff
    sha512sum1 x22, x10
    sd x22, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xbffffffffddfffff)




    # address for test results
    #la x1, test_24_res
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_24_0)

 
    # Testcase 115:  rs1:x9(0xfffffeffffffffff), result rd:x23(0x7ffffffffbbfffff)
inst_115:
    li  x9, 0xfffffeffffffffff
    sha512sum1 x23, x9
    sd x23, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x7ffffffffbbfffff)
 
    # Testcase 116:  rs1:x8(0xfffffdffffffffff), result rd:x24(0xfffffffff77ffffe)
inst_116:
    li  x8, 0xfffffdffffffffff
    sha512sum1 x24, x8
    sd x24, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xfffffffff77ffffe)
 
    # Testcase 117:  rs1:x7(0xfffffbffffffffff), result rd:x25(0xffffffffeefffffd)
inst_117:
    li  x7, 0xfffffbffffffffff
    sha512sum1 x25, x7
    sd x25, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffffffffeefffffd)
 
    # Testcase 118:  rs1:x6(0xfffff7ffffffffff), result rd:x26(0xffffffffddfffffb)
inst_118:
    li  x6, 0xfffff7ffffffffff
    sha512sum1 x26, x6
    sd x26, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffffffffddfffffb)
 
    # Testcase 119:  rs1:x5(0xffffefffffffffff), result rd:x27(0xffffffffbbfffff7)
inst_119:
    li  x5, 0xffffefffffffffff
    sha512sum1 x27, x5
    sd x27, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffffffffbbfffff7)




    # address for test results
    #la x5, test_25_res
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x5,signature_25_0)

 
    # Testcase 120:  rs1:x4(0xffffdfffffffffff), result rd:x28(0xffffffff77ffffef)
inst_120:
    li  x4, 0xffffdfffffffffff
    sha512sum1 x28, x4
    sd x28, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0xffffffff77ffffef)
 
    # Testcase 121:  rs1:x3(0xffffbfffffffffff), result rd:x29(0xfffffffeefffffdf)
inst_121:
    li  x3, 0xffffbfffffffffff
    sha512sum1 x29, x3
    sd x29, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0xfffffffeefffffdf)
 
    # Testcase 122:  rs1:x2(0xffff7fffffffffff), result rd:x30(0xfffffffddfffffbf)
inst_122:
    li  x2, 0xffff7fffffffffff
    sha512sum1 x30, x2
    sd x30, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0xfffffffddfffffbf)
 
    # Testcase 123:  rs1:x1(0xfffeffffffffffff), result rd:x31(0xfffffffbbfffff7f)
inst_123:
    li  x1, 0xfffeffffffffffff
    sha512sum1 x31, x1
    sd x31, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0xfffffffbbfffff7f)
 
    # Testcase 124:  rs1:x31(0xfffdffffffffffff), result rd:x1(0xfffffff77ffffeff)
inst_124:
    li  x31, 0xfffdffffffffffff
    sha512sum1 x1, x31
    sd x1, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0xfffffff77ffffeff)




    # address for test results
    #la x1, test_26_res
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_26_0)

 
    # Testcase 125:  rs1:x30(0xfffbffffffffffff), result rd:x2(0xffffffeefffffdff)
inst_125:
    li  x30, 0xfffbffffffffffff
    sha512sum1 x2, x30
    sd x2, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0xffffffeefffffdff)
 
    # Testcase 126:  rs1:x29(0xfff7ffffffffffff), result rd:x3(0xffffffddfffffbff)
inst_126:
    li  x29, 0xfff7ffffffffffff
    sha512sum1 x3, x29
    sd x3, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xffffffddfffffbff)
 
    # Testcase 127:  rs1:x28(0xffefffffffffffff), result rd:x4(0xffffffbbfffff7ff)
inst_127:
    li  x28, 0xffefffffffffffff
    sha512sum1 x4, x28
    sd x4, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xffffffbbfffff7ff)
 
    # Testcase 128:  rs1:x27(0xffdfffffffffffff), result rd:x5(0xffffff77ffffefff)
inst_128:
    li  x27, 0xffdfffffffffffff
    sha512sum1 x5, x27
    sd x5, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xffffff77ffffefff)
 
    # Testcase 129:  rs1:x26(0xffbfffffffffffff), result rd:x6(0xfffffeefffffdfff)
inst_129:
    li  x26, 0xffbfffffffffffff
    sha512sum1 x6, x26
    sd x6, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0xfffffeefffffdfff)




    # address for test results
    #la x1, test_27_res
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_27_0)

 
    # Testcase 130:  rs1:x25(0xff7fffffffffffff), result rd:x7(0xfffffddfffffbfff)
inst_130:
    li  x25, 0xff7fffffffffffff
    sha512sum1 x7, x25
    sd x7, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfffffddfffffbfff)
 
    # Testcase 131:  rs1:x24(0xfeffffffffffffff), result rd:x8(0xfffffbbfffff7fff)
inst_131:
    li  x24, 0xfeffffffffffffff
    sha512sum1 x8, x24
    sd x8, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xfffffbbfffff7fff)
 
    # Testcase 132:  rs1:x23(0xfdffffffffffffff), result rd:x9(0xfffff77ffffeffff)
inst_132:
    li  x23, 0xfdffffffffffffff
    sha512sum1 x9, x23
    sd x9, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xfffff77ffffeffff)
 
    # Testcase 133:  rs1:x22(0xfbffffffffffffff), result rd:x10(0xffffeefffffdffff)
inst_133:
    li  x22, 0xfbffffffffffffff
    sha512sum1 x10, x22
    sd x10, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffeefffffdffff)
 
    # Testcase 134:  rs1:x21(0xf7ffffffffffffff), result rd:x11(0xffffddfffffbffff)
inst_134:
    li  x21, 0xf7ffffffffffffff
    sha512sum1 x11, x21
    sd x11, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffffddfffffbffff)




    # address for test results
    #la x6, test_28_res
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x6,signature_28_0)

 
    # Testcase 135:  rs1:x20(0xefffffffffffffff), result rd:x12(0xffffbbfffff7ffff)
inst_135:
    li  x20, 0xefffffffffffffff
    sha512sum1 x12, x20
    sd x12, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0xffffbbfffff7ffff)
 
    # Testcase 136:  rs1:x19(0xdfffffffffffffff), result rd:x13(0xffff77ffffefffff)
inst_136:
    li  x19, 0xdfffffffffffffff
    sha512sum1 x13, x19
    sd x13, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0xffff77ffffefffff)
 
    # Testcase 137:  rs1:x18(0xbfffffffffffffff), result rd:x14(0xfffeefffffdfffff)
inst_137:
    li  x18, 0xbfffffffffffffff
    sha512sum1 x14, x18
    sd x14, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0xfffeefffffdfffff)
 
    # Testcase 138:  rs1:x17(0x7fffffffffffffff), result rd:x15(0xfffddfffffbfffff)
inst_138:
    li  x17, 0x7fffffffffffffff
    sha512sum1 x15, x17
    sd x15, 24(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0xfffddfffffbfffff)
 
    # Testcase 139:  rs1:x16(0xffffffffffffffff), result rd:x16(0xffffffffffffffff)
inst_139:
    li  x16, 0xffffffffffffffff
    sha512sum1 x16, x16
    sd x16, 32(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0xffffffffffffffff)




    # address for test results
    #la x1, test_29_res
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_29_0)

 
    # Testcase 140:  rs1:x15(0x0000000000000001), result rd:x17(0x0004400000800000)
inst_140:
    li  x15, 0x1
    sha512sum1 x17, x15
    sd x17, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x0004400000800000)
 
    # Testcase 141:  rs1:x14(0x0000000000000002), result rd:x18(0x0008800001000000)
inst_141:
    li  x14, 0x2
    sha512sum1 x18, x14
    sd x18, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x0008800001000000)
 
    # Testcase 142:  rs1:x13(0x0000000000000004), result rd:x19(0x0011000002000000)
inst_142:
    li  x13, 0x4
    sha512sum1 x19, x13
    sd x19, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x0011000002000000)
 
    # Testcase 143:  rs1:x12(0x0000000000000008), result rd:x20(0x0022000004000000)
inst_143:
    li  x12, 0x8
    sha512sum1 x20, x12
    sd x20, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x0022000004000000)
 
    # Testcase 144:  rs1:x11(0x0000000000000010), result rd:x21(0x0044000008000000)
inst_144:
    li  x11, 0x10
    sha512sum1 x21, x11
    sd x21, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0044000008000000)




    # address for test results
    #la x1, test_30_res
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_30_0)

 
    # Testcase 145:  rs1:x10(0x0000000000000020), result rd:x22(0x0088000010000000)
inst_145:
    li  x10, 0x20
    sha512sum1 x22, x10
    sd x22, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0088000010000000)
 
    # Testcase 146:  rs1:x9(0x0000000000000040), result rd:x23(0x0110000020000000)
inst_146:
    li  x9, 0x40
    sha512sum1 x23, x9
    sd x23, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0110000020000000)
 
    # Testcase 147:  rs1:x8(0x0000000000000080), result rd:x24(0x0220000040000000)
inst_147:
    li  x8, 0x80
    sha512sum1 x24, x8
    sd x24, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0220000040000000)
 
    # Testcase 148:  rs1:x7(0x0000000000000100), result rd:x25(0x0440000080000000)
inst_148:
    li  x7, 0x100
    sha512sum1 x25, x7
    sd x25, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0440000080000000)
 
    # Testcase 149:  rs1:x6(0x0000000000000200), result rd:x26(0x0880000100000000)
inst_149:
    li  x6, 0x200
    sha512sum1 x26, x6
    sd x26, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0880000100000000)




    # address for test results
    #la x6, test_31_res
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x6,signature_31_0)

 
    # Testcase 150:  rs1:x5(0x0000000000000400), result rd:x27(0x1100000200000000)
inst_150:
    li  x5, 0x400
    sha512sum1 x27, x5
    sd x27, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x1100000200000000)
 
    # Testcase 151:  rs1:x4(0x0000000000000800), result rd:x28(0x2200000400000000)
inst_151:
    li  x4, 0x800
    sha512sum1 x28, x4
    sd x28, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x2200000400000000)
 
    # Testcase 152:  rs1:x3(0x0000000000001000), result rd:x29(0x4400000800000000)
inst_152:
    li  x3, 0x1000
    sha512sum1 x29, x3
    sd x29, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x4400000800000000)
 
    # Testcase 153:  rs1:x2(0x0000000000002000), result rd:x30(0x8800001000000000)
inst_153:
    li  x2, 0x2000
    sha512sum1 x30, x2
    sd x30, 24(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x8800001000000000)
 
    # Testcase 154:  rs1:x1(0x0000000000004000), result rd:x31(0x1000002000000001)
inst_154:
    li  x1, 0x4000
    sha512sum1 x31, x1
    sd x31, 32(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x31, 0x1000002000000001)




    # address for test results
    #la x6, test_32_res
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x6,signature_32_0)

 
    # Testcase 155:  rs1:x31(0x0000000000008000), result rd:x1(0x2000004000000002)
inst_155:
    li  x31, 0x8000
    sha512sum1 x1, x31
    sd x1, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x2000004000000002)
 
    # Testcase 156:  rs1:x30(0x0000000000010000), result rd:x2(0x4000008000000004)
inst_156:
    li  x30, 0x10000
    sha512sum1 x2, x30
    sd x2, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x4000008000000004)
 
    # Testcase 157:  rs1:x29(0x0000000000020000), result rd:x3(0x8000010000000008)
inst_157:
    li  x29, 0x20000
    sha512sum1 x3, x29
    sd x3, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x8000010000000008)
 
    # Testcase 158:  rs1:x28(0x0000000000040000), result rd:x4(0x0000020000000011)
inst_158:
    li  x28, 0x40000
    sha512sum1 x4, x28
    sd x4, 24(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x0000020000000011)
 
    # Testcase 159:  rs1:x27(0x0000000000080000), result rd:x5(0x0000040000000022)
inst_159:
    li  x27, 0x80000
    sha512sum1 x5, x27
    sd x5, 32(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x0000040000000022)




    # address for test results
    #la x1, test_33_res
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_33_0)

 
    # Testcase 160:  rs1:x26(0x0000000000100000), result rd:x6(0x0000080000000044)
inst_160:
    li  x26, 0x100000
    sha512sum1 x6, x26
    sd x6, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000080000000044)
 
    # Testcase 161:  rs1:x25(0x0000000000200000), result rd:x7(0x0000100000000088)
inst_161:
    li  x25, 0x200000
    sha512sum1 x7, x25
    sd x7, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000100000000088)
 
    # Testcase 162:  rs1:x24(0x0000000000400000), result rd:x8(0x0000200000000110)
inst_162:
    li  x24, 0x400000
    sha512sum1 x8, x24
    sd x8, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000200000000110)
 
    # Testcase 163:  rs1:x23(0x0000000000800000), result rd:x9(0x0000400000000220)
inst_163:
    li  x23, 0x800000
    sha512sum1 x9, x23
    sd x9, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000400000000220)
 
    # Testcase 164:  rs1:x22(0x0000000001000000), result rd:x10(0x0000800000000440)
inst_164:
    li  x22, 0x1000000
    sha512sum1 x10, x22
    sd x10, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000800000000440)




    # address for test results
    #la x1, test_34_res
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_34_0)

 
    # Testcase 165:  rs1:x21(0x0000000002000000), result rd:x11(0x0001000000000880)
inst_165:
    li  x21, 0x2000000
    sha512sum1 x11, x21
    sd x11, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x0001000000000880)
 
    # Testcase 166:  rs1:x20(0x0000000004000000), result rd:x12(0x0002000000001100)
inst_166:
    li  x20, 0x4000000
    sha512sum1 x12, x20
    sd x12, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x0002000000001100)
 
    # Testcase 167:  rs1:x19(0x0000000008000000), result rd:x13(0x0004000000002200)
inst_167:
    li  x19, 0x8000000
    sha512sum1 x13, x19
    sd x13, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x0004000000002200)
 
    # Testcase 168:  rs1:x18(0x0000000010000000), result rd:x14(0x0008000000004400)
inst_168:
    li  x18, 0x10000000
    sha512sum1 x14, x18
    sd x14, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x0008000000004400)
 
    # Testcase 169:  rs1:x17(0x0000000020000000), result rd:x15(0x0010000000008800)
inst_169:
    li  x17, 0x20000000
    sha512sum1 x15, x17
    sd x15, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x0010000000008800)




    # address for test results
    #la x2, test_35_res
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x2,signature_35_0)

 
    # Testcase 170:  rs1:x16(0x0000000040000000), result rd:x16(0x0020000000011000)
inst_170:
    li  x16, 0x40000000
    sha512sum1 x16, x16
    sd x16, 0(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x0020000000011000)
 
    # Testcase 171:  rs1:x15(0x0000000080000000), result rd:x17(0x0040000000022000)
inst_171:
    li  x15, 0x80000000
    sha512sum1 x17, x15
    sd x17, 8(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x0040000000022000)
 
    # Testcase 172:  rs1:x14(0x0000000100000000), result rd:x18(0x0080000000044000)
inst_172:
    li  x14, 0x100000000
    sha512sum1 x18, x14
    sd x18, 16(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x0080000000044000)
 
    # Testcase 173:  rs1:x13(0x0000000200000000), result rd:x19(0x0100000000088000)
inst_173:
    li  x13, 0x200000000
    sha512sum1 x19, x13
    sd x19, 24(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x0100000000088000)
 
    # Testcase 174:  rs1:x12(0x0000000400000000), result rd:x20(0x0200000000110000)
inst_174:
    li  x12, 0x400000000
    sha512sum1 x20, x12
    sd x20, 32(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x0200000000110000)




    # address for test results
    #la x1, test_36_res
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_36_0)

 
    # Testcase 175:  rs1:x11(0x0000000800000000), result rd:x21(0x0400000000220000)
inst_175:
    li  x11, 0x800000000
    sha512sum1 x21, x11
    sd x21, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0400000000220000)
 
    # Testcase 176:  rs1:x10(0x0000001000000000), result rd:x22(0x0800000000440000)
inst_176:
    li  x10, 0x1000000000
    sha512sum1 x22, x10
    sd x22, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0800000000440000)
 
    # Testcase 177:  rs1:x9(0x0000002000000000), result rd:x23(0x1000000000880000)
inst_177:
    li  x9, 0x2000000000
    sha512sum1 x23, x9
    sd x23, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x1000000000880000)
 
    # Testcase 178:  rs1:x8(0x0000004000000000), result rd:x24(0x2000000001100000)
inst_178:
    li  x8, 0x4000000000
    sha512sum1 x24, x8
    sd x24, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x2000000001100000)
 
    # Testcase 179:  rs1:x7(0x0000008000000000), result rd:x25(0x4000000002200000)
inst_179:
    li  x7, 0x8000000000
    sha512sum1 x25, x7
    sd x25, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x4000000002200000)




    # address for test results
    #la x1, test_37_res
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_37_0)

 
    # Testcase 180:  rs1:x6(0x0000010000000000), result rd:x26(0x8000000004400000)
inst_180:
    li  x6, 0x10000000000
    sha512sum1 x26, x6
    sd x26, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x8000000004400000)
 
    # Testcase 181:  rs1:x5(0x0000020000000000), result rd:x27(0x0000000008800001)
inst_181:
    li  x5, 0x20000000000
    sha512sum1 x27, x5
    sd x27, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x0000000008800001)
 
    # Testcase 182:  rs1:x4(0x0000040000000000), result rd:x28(0x0000000011000002)
inst_182:
    li  x4, 0x40000000000
    sha512sum1 x28, x4
    sd x28, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x0000000011000002)
 
    # Testcase 183:  rs1:x3(0x0000080000000000), result rd:x29(0x0000000022000004)
inst_183:
    li  x3, 0x80000000000
    sha512sum1 x29, x3
    sd x29, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x0000000022000004)
 
    # Testcase 184:  rs1:x2(0x0000100000000000), result rd:x30(0x0000000044000008)
inst_184:
    li  x2, 0x100000000000
    sha512sum1 x30, x2
    sd x30, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000000044000008)




    # address for test results
    #la x5, test_38_res
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x5,signature_38_0)

 
    # Testcase 185:  rs1:x1(0x0000200000000000), result rd:x31(0x0000000088000010)
inst_185:
    li  x1, 0x200000000000
    sha512sum1 x31, x1
    sd x31, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x0000000088000010)
 
    # Testcase 186:  rs1:x31(0x0000400000000000), result rd:x1(0x0000000110000020)
inst_186:
    li  x31, 0x400000000000
    sha512sum1 x1, x31
    sd x1, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x0000000110000020)
 
    # Testcase 187:  rs1:x30(0x0000800000000000), result rd:x2(0x0000000220000040)
inst_187:
    li  x30, 0x800000000000
    sha512sum1 x2, x30
    sd x2, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x0000000220000040)
 
    # Testcase 188:  rs1:x29(0x0001000000000000), result rd:x3(0x0000000440000080)
inst_188:
    li  x29, 0x1000000000000
    sha512sum1 x3, x29
    sd x3, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x0000000440000080)
 
    # Testcase 189:  rs1:x28(0x0002000000000000), result rd:x4(0x0000000880000100)
inst_189:
    li  x28, 0x2000000000000
    sha512sum1 x4, x28
    sd x4, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x0000000880000100)




    # address for test results
    #la x1, test_39_res
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_39_0)

 
    # Testcase 190:  rs1:x27(0x0004000000000000), result rd:x5(0x0000001100000200)
inst_190:
    li  x27, 0x4000000000000
    sha512sum1 x5, x27
    sd x5, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0000001100000200)
 
    # Testcase 191:  rs1:x26(0x0008000000000000), result rd:x6(0x0000002200000400)
inst_191:
    li  x26, 0x8000000000000
    sha512sum1 x6, x26
    sd x6, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000002200000400)
 
    # Testcase 192:  rs1:x25(0x0010000000000000), result rd:x7(0x0000004400000800)
inst_192:
    li  x25, 0x10000000000000
    sha512sum1 x7, x25
    sd x7, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000004400000800)
 
    # Testcase 193:  rs1:x24(0x0020000000000000), result rd:x8(0x0000008800001000)
inst_193:
    li  x24, 0x20000000000000
    sha512sum1 x8, x24
    sd x8, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000008800001000)
 
    # Testcase 194:  rs1:x23(0x0040000000000000), result rd:x9(0x0000011000002000)
inst_194:
    li  x23, 0x40000000000000
    sha512sum1 x9, x23
    sd x9, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000011000002000)




    # address for test results
    #la x1, test_40_res
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_40_0)

 
    # Testcase 195:  rs1:x22(0x0080000000000000), result rd:x10(0x0000022000004000)
inst_195:
    li  x22, 0x80000000000000
    sha512sum1 x10, x22
    sd x10, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000022000004000)
 
    # Testcase 196:  rs1:x21(0x0100000000000000), result rd:x11(0x0000044000008000)
inst_196:
    li  x21, 0x100000000000000
    sha512sum1 x11, x21
    sd x11, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0000044000008000)
 
    # Testcase 197:  rs1:x20(0x0200000000000000), result rd:x12(0x0000088000010000)
inst_197:
    li  x20, 0x200000000000000
    sha512sum1 x12, x20
    sd x12, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0000088000010000)
 
    # Testcase 198:  rs1:x19(0x0400000000000000), result rd:x13(0x0000110000020000)
inst_198:
    li  x19, 0x400000000000000
    sha512sum1 x13, x19
    sd x13, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0000110000020000)
 
    # Testcase 199:  rs1:x18(0x0800000000000000), result rd:x14(0x0000220000040000)
inst_199:
    li  x18, 0x800000000000000
    sha512sum1 x14, x18
    sd x14, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x0000220000040000)




    # address for test results
    #la x3, test_41_res
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x3,signature_41_0)

 
    # Testcase 200:  rs1:x17(0x1000000000000000), result rd:x15(0x0000440000080000)
inst_200:
    li  x17, 0x1000000000000000
    sha512sum1 x15, x17
    sd x15, 0(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x0000440000080000)
 
    # Testcase 201:  rs1:x16(0x2000000000000000), result rd:x16(0x0000880000100000)
inst_201:
    li  x16, 0x2000000000000000
    sha512sum1 x16, x16
    sd x16, 8(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x0000880000100000)
 
    # Testcase 202:  rs1:x15(0x4000000000000000), result rd:x17(0x0001100000200000)
inst_202:
    li  x15, 0x4000000000000000
    sha512sum1 x17, x15
    sd x17, 16(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x0001100000200000)
 
    # Testcase 203:  rs1:x14(0x8000000000000000), result rd:x18(0x0002200000400000)
inst_203:
    li  x14, 0x8000000000000000
    sha512sum1 x18, x14
    sd x18, 24(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x0002200000400000)
 
    # Testcase 204:  rs1:x13(0x0000000000000000), result rd:x19(0x0000000000000000)
inst_204:
    li  x13, 0x0
    sha512sum1 x19, x13
    sd x19, 32(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x0000000000000000)




    # address for test results
    #la x1, test_42_res
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_42_0)

 
    # Testcase 205:  rs1:x12(0xfffffffffffffffe), result rd:x20(0xfffbbfffff7fffff)
inst_205:
    li  x12, 0xfffffffffffffffe
    sha512sum1 x20, x12
    sd x20, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xfffbbfffff7fffff)
 
    # Testcase 206:  rs1:x11(0xfffffffffffffffd), result rd:x21(0xfff77ffffeffffff)
inst_206:
    li  x11, 0xfffffffffffffffd
    sha512sum1 x21, x11
    sd x21, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xfff77ffffeffffff)
 
    # Testcase 207:  rs1:x10(0xfffffffffffffffb), result rd:x22(0xffeefffffdffffff)
inst_207:
    li  x10, 0xfffffffffffffffb
    sha512sum1 x22, x10
    sd x22, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffeefffffdffffff)
 
    # Testcase 208:  rs1:x9(0xfffffffffffffff7), result rd:x23(0xffddfffffbffffff)
inst_208:
    li  x9, 0xfffffffffffffff7
    sha512sum1 x23, x9
    sd x23, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xffddfffffbffffff)
 
    # Testcase 209:  rs1:x8(0xffffffffffffffef), result rd:x24(0xffbbfffff7ffffff)
inst_209:
    li  x8, 0xffffffffffffffef
    sha512sum1 x24, x8
    sd x24, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffbbfffff7ffffff)




    # address for test results
    #la x1, test_43_res
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_43_0)

 
    # Testcase 210:  rs1:x7(0xffffffffffffffdf), result rd:x25(0xff77ffffefffffff)
inst_210:
    li  x7, 0xffffffffffffffdf
    sha512sum1 x25, x7
    sd x25, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xff77ffffefffffff)
 
    # Testcase 211:  rs1:x6(0xffffffffffffffbf), result rd:x26(0xfeefffffdfffffff)
inst_211:
    li  x6, 0xffffffffffffffbf
    sha512sum1 x26, x6
    sd x26, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xfeefffffdfffffff)
 
    # Testcase 212:  rs1:x5(0xffffffffffffff7f), result rd:x27(0xfddfffffbfffffff)
inst_212:
    li  x5, 0xffffffffffffff7f
    sha512sum1 x27, x5
    sd x27, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xfddfffffbfffffff)
 
    # Testcase 213:  rs1:x4(0xfffffffffffffeff), result rd:x28(0xfbbfffff7fffffff)
inst_213:
    li  x4, 0xfffffffffffffeff
    sha512sum1 x28, x4
    sd x28, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xfbbfffff7fffffff)
 
    # Testcase 214:  rs1:x3(0xfffffffffffffdff), result rd:x29(0xf77ffffeffffffff)
inst_214:
    li  x3, 0xfffffffffffffdff
    sha512sum1 x29, x3
    sd x29, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0xf77ffffeffffffff)




    # address for test results
    #la x4, test_44_res
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x4,signature_44_0)

 
    # Testcase 215:  rs1:x2(0xfffffffffffffbff), result rd:x30(0xeefffffdffffffff)
inst_215:
    li  x2, 0xfffffffffffffbff
    sha512sum1 x30, x2
    sd x30, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xeefffffdffffffff)
 
    # Testcase 216:  rs1:x1(0xfffffffffffff7ff), result rd:x31(0xddfffffbffffffff)
inst_216:
    li  x1, 0xfffffffffffff7ff
    sha512sum1 x31, x1
    sd x31, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xddfffffbffffffff)
 
    # Testcase 217:  rs1:x31(0xffffffffffffefff), result rd:x1(0xbbfffff7ffffffff)
inst_217:
    li  x31, 0xffffffffffffefff
    sha512sum1 x1, x31
    sd x1, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xbbfffff7ffffffff)
 
    # Testcase 218:  rs1:x30(0xffffffffffffdfff), result rd:x2(0x77ffffefffffffff)
inst_218:
    li  x30, 0xffffffffffffdfff
    sha512sum1 x2, x30
    sd x2, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x77ffffefffffffff)
 
    # Testcase 219:  rs1:x29(0xffffffffffffbfff), result rd:x3(0xefffffdffffffffe)
inst_219:
    li  x29, 0xffffffffffffbfff
    sha512sum1 x3, x29
    sd x3, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0xefffffdffffffffe)




    # address for test results
    #la x1, test_45_res
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_45_0)

 
    # Testcase 220:  rs1:x28(0xffffffffffff7fff), result rd:x4(0xdfffffbffffffffd)
inst_220:
    li  x28, 0xffffffffffff7fff
    sha512sum1 x4, x28
    sd x4, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xdfffffbffffffffd)
 
    # Testcase 221:  rs1:x27(0xfffffffffffeffff), result rd:x5(0xbfffff7ffffffffb)
inst_221:
    li  x27, 0xfffffffffffeffff
    sha512sum1 x5, x27
    sd x5, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xbfffff7ffffffffb)
 
    # Testcase 222:  rs1:x26(0xfffffffffffdffff), result rd:x6(0x7ffffefffffffff7)
inst_222:
    li  x26, 0xfffffffffffdffff
    sha512sum1 x6, x26
    sd x6, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x7ffffefffffffff7)
 
    # Testcase 223:  rs1:x25(0xfffffffffffbffff), result rd:x7(0xfffffdffffffffee)
inst_223:
    li  x25, 0xfffffffffffbffff
    sha512sum1 x7, x25
    sd x7, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfffffdffffffffee)
 
    # Testcase 224:  rs1:x24(0xfffffffffff7ffff), result rd:x8(0xfffffbffffffffdd)
inst_224:
    li  x24, 0xfffffffffff7ffff
    sha512sum1 x8, x24
    sd x8, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xfffffbffffffffdd)




    # address for test results
    #la x1, test_46_res
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_46_0)

 
    # Testcase 225:  rs1:x23(0xffffffffffefffff), result rd:x9(0xfffff7ffffffffbb)
inst_225:
    li  x23, 0xffffffffffefffff
    sha512sum1 x9, x23
    sd x9, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xfffff7ffffffffbb)
 
    # Testcase 226:  rs1:x22(0xffffffffffdfffff), result rd:x10(0xffffefffffffff77)
inst_226:
    li  x22, 0xffffffffffdfffff
    sha512sum1 x10, x22
    sd x10, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffefffffffff77)
 
    # Testcase 227:  rs1:x21(0xffffffffffbfffff), result rd:x11(0xffffdffffffffeef)
inst_227:
    li  x21, 0xffffffffffbfffff
    sha512sum1 x11, x21
    sd x11, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffffdffffffffeef)
 
    # Testcase 228:  rs1:x20(0xffffffffff7fffff), result rd:x12(0xffffbffffffffddf)
inst_228:
    li  x20, 0xffffffffff7fffff
    sha512sum1 x12, x20
    sd x12, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xffffbffffffffddf)
 
    # Testcase 229:  rs1:x19(0xfffffffffeffffff), result rd:x13(0xffff7ffffffffbbf)
inst_229:
    li  x19, 0xfffffffffeffffff
    sha512sum1 x13, x19
    sd x13, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xffff7ffffffffbbf)




    # address for test results
    #la x4, test_47_res
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x4,signature_47_0)

 
    # Testcase 230:  rs1:x18(0xfffffffffdffffff), result rd:x14(0xfffefffffffff77f)
inst_230:
    li  x18, 0xfffffffffdffffff
    sha512sum1 x14, x18
    sd x14, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xfffefffffffff77f)
 
    # Testcase 231:  rs1:x17(0xfffffffffbffffff), result rd:x15(0xfffdffffffffeeff)
inst_231:
    li  x17, 0xfffffffffbffffff
    sha512sum1 x15, x17
    sd x15, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0xfffdffffffffeeff)
 
    # Testcase 232:  rs1:x16(0xfffffffff7ffffff), result rd:x16(0xfffbffffffffddff)
inst_232:
    li  x16, 0xfffffffff7ffffff
    sha512sum1 x16, x16
    sd x16, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0xfffbffffffffddff)
 
    # Testcase 233:  rs1:x15(0xffffffffefffffff), result rd:x17(0xfff7ffffffffbbff)
inst_233:
    li  x15, 0xffffffffefffffff
    sha512sum1 x17, x15
    sd x17, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0xfff7ffffffffbbff)
 
    # Testcase 234:  rs1:x14(0xffffffffdfffffff), result rd:x18(0xffefffffffff77ff)
inst_234:
    li  x14, 0xffffffffdfffffff
    sha512sum1 x18, x14
    sd x18, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0xffefffffffff77ff)




    # address for test results
    #la x1, test_48_res
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_48_0)

 
    # Testcase 235:  rs1:x13(0xffffffffbfffffff), result rd:x19(0xffdffffffffeefff)
inst_235:
    li  x13, 0xffffffffbfffffff
    sha512sum1 x19, x13
    sd x19, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xffdffffffffeefff)
 
    # Testcase 236:  rs1:x12(0xffffffff7fffffff), result rd:x20(0xffbffffffffddfff)
inst_236:
    li  x12, 0xffffffff7fffffff
    sha512sum1 x20, x12
    sd x20, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xffbffffffffddfff)
 
    # Testcase 237:  rs1:x11(0xfffffffeffffffff), result rd:x21(0xff7ffffffffbbfff)
inst_237:
    li  x11, 0xfffffffeffffffff
    sha512sum1 x21, x11
    sd x21, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xff7ffffffffbbfff)
 
    # Testcase 238:  rs1:x10(0xfffffffdffffffff), result rd:x22(0xfefffffffff77fff)
inst_238:
    li  x10, 0xfffffffdffffffff
    sha512sum1 x22, x10
    sd x22, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xfefffffffff77fff)
 
    # Testcase 239:  rs1:x9(0xfffffffbffffffff), result rd:x23(0xfdffffffffeeffff)
inst_239:
    li  x9, 0xfffffffbffffffff
    sha512sum1 x23, x9
    sd x23, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xfdffffffffeeffff)




    # address for test results
    #la x1, test_49_res
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_49_0)

 
    # Testcase 240:  rs1:x8(0xfffffff7ffffffff), result rd:x24(0xfbffffffffddffff)
inst_240:
    li  x8, 0xfffffff7ffffffff
    sha512sum1 x24, x8
    sd x24, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xfbffffffffddffff)
 
    # Testcase 241:  rs1:x7(0xffffffefffffffff), result rd:x25(0xf7ffffffffbbffff)
inst_241:
    li  x7, 0xffffffefffffffff
    sha512sum1 x25, x7
    sd x25, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xf7ffffffffbbffff)
 
    # Testcase 242:  rs1:x6(0xffffffdfffffffff), result rd:x26(0xefffffffff77ffff)
inst_242:
    li  x6, 0xffffffdfffffffff
    sha512sum1 x26, x6
    sd x26, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xefffffffff77ffff)
 
    # Testcase 243:  rs1:x5(0xffffffbfffffffff), result rd:x27(0xdffffffffeefffff)
inst_243:
    li  x5, 0xffffffbfffffffff
    sha512sum1 x27, x5
    sd x27, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xdffffffffeefffff)
 
    # Testcase 244:  rs1:x4(0xffffff7fffffffff), result rd:x28(0xbffffffffddfffff)
inst_244:
    li  x4, 0xffffff7fffffffff
    sha512sum1 x28, x4
    sd x28, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xbffffffffddfffff)




    # address for test results
    #la x4, test_50_res
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x4,signature_50_0)

 
    # Testcase 245:  rs1:x3(0xfffffeffffffffff), result rd:x29(0x7ffffffffbbfffff)
inst_245:
    li  x3, 0xfffffeffffffffff
    sha512sum1 x29, x3
    sd x29, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x7ffffffffbbfffff)
 
    # Testcase 246:  rs1:x2(0xfffffdffffffffff), result rd:x30(0xfffffffff77ffffe)
inst_246:
    li  x2, 0xfffffdffffffffff
    sha512sum1 x30, x2
    sd x30, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xfffffffff77ffffe)
 
    # Testcase 247:  rs1:x1(0xfffffbffffffffff), result rd:x31(0xffffffffeefffffd)
inst_247:
    li  x1, 0xfffffbffffffffff
    sha512sum1 x31, x1
    sd x31, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xffffffffeefffffd)
 
    # Testcase 248:  rs1:x31(0xfffff7ffffffffff), result rd:x1(0xffffffffddfffffb)
inst_248:
    li  x31, 0xfffff7ffffffffff
    sha512sum1 x1, x31
    sd x1, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xffffffffddfffffb)
 
    # Testcase 249:  rs1:x30(0xffffefffffffffff), result rd:x2(0xffffffffbbfffff7)
inst_249:
    li  x30, 0xffffefffffffffff
    sha512sum1 x2, x30
    sd x2, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xffffffffbbfffff7)




    # address for test results
    #la x1, test_51_res
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_51_0)

 
    # Testcase 250:  rs1:x29(0xffffdfffffffffff), result rd:x3(0xffffffff77ffffef)
inst_250:
    li  x29, 0xffffdfffffffffff
    sha512sum1 x3, x29
    sd x3, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0xffffffff77ffffef)
 
    # Testcase 251:  rs1:x28(0xffffbfffffffffff), result rd:x4(0xfffffffeefffffdf)
inst_251:
    li  x28, 0xffffbfffffffffff
    sha512sum1 x4, x28
    sd x4, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xfffffffeefffffdf)
 
    # Testcase 252:  rs1:x27(0xffff7fffffffffff), result rd:x5(0xfffffffddfffffbf)
inst_252:
    li  x27, 0xffff7fffffffffff
    sha512sum1 x5, x27
    sd x5, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xfffffffddfffffbf)
 
    # Testcase 253:  rs1:x26(0xfffeffffffffffff), result rd:x6(0xfffffffbbfffff7f)
inst_253:
    li  x26, 0xfffeffffffffffff
    sha512sum1 x6, x26
    sd x6, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xfffffffbbfffff7f)
 
    # Testcase 254:  rs1:x25(0xfffdffffffffffff), result rd:x7(0xfffffff77ffffeff)
inst_254:
    li  x25, 0xfffdffffffffffff
    sha512sum1 x7, x25
    sd x7, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfffffff77ffffeff)




    # address for test results
    #la x1, test_52_res
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_52_0)

 
    # Testcase 255:  rs1:x24(0xfffbffffffffffff), result rd:x8(0xffffffeefffffdff)
inst_255:
    li  x24, 0xfffbffffffffffff
    sha512sum1 x8, x24
    sd x8, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffffffeefffffdff)
 
    # Testcase 256:  rs1:x23(0xfff7ffffffffffff), result rd:x9(0xffffffddfffffbff)
inst_256:
    li  x23, 0xfff7ffffffffffff
    sha512sum1 x9, x23
    sd x9, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xffffffddfffffbff)
 
    # Testcase 257:  rs1:x22(0xffefffffffffffff), result rd:x10(0xffffffbbfffff7ff)
inst_257:
    li  x22, 0xffefffffffffffff
    sha512sum1 x10, x22
    sd x10, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffffbbfffff7ff)
 
    # Testcase 258:  rs1:x21(0xffdfffffffffffff), result rd:x11(0xffffff77ffffefff)
inst_258:
    li  x21, 0xffdfffffffffffff
    sha512sum1 x11, x21
    sd x11, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffffff77ffffefff)
 
    # Testcase 259:  rs1:x20(0xffbfffffffffffff), result rd:x12(0xfffffeefffffdfff)
inst_259:
    li  x20, 0xffbfffffffffffff
    sha512sum1 x12, x20
    sd x12, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xfffffeefffffdfff)




    # address for test results
    #la x5, test_53_res
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x5,signature_53_0)

 
    # Testcase 260:  rs1:x19(0xff7fffffffffffff), result rd:x13(0xfffffddfffffbfff)
inst_260:
    li  x19, 0xff7fffffffffffff
    sha512sum1 x13, x19
    sd x13, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0xfffffddfffffbfff)
 
    # Testcase 261:  rs1:x18(0xfeffffffffffffff), result rd:x14(0xfffffbbfffff7fff)
inst_261:
    li  x18, 0xfeffffffffffffff
    sha512sum1 x14, x18
    sd x14, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0xfffffbbfffff7fff)
 
    # Testcase 262:  rs1:x17(0xfdffffffffffffff), result rd:x15(0xfffff77ffffeffff)
inst_262:
    li  x17, 0xfdffffffffffffff
    sha512sum1 x15, x17
    sd x15, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0xfffff77ffffeffff)
 
    # Testcase 263:  rs1:x16(0xfbffffffffffffff), result rd:x16(0xffffeefffffdffff)
inst_263:
    li  x16, 0xfbffffffffffffff
    sha512sum1 x16, x16
    sd x16, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0xffffeefffffdffff)
 
    # Testcase 264:  rs1:x15(0xf7ffffffffffffff), result rd:x17(0xffffddfffffbffff)
inst_264:
    li  x15, 0xf7ffffffffffffff
    sha512sum1 x17, x15
    sd x17, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0xffffddfffffbffff)




    # address for test results
    #la x1, test_54_res
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_54_0)

 
    # Testcase 265:  rs1:x14(0xefffffffffffffff), result rd:x18(0xffffbbfffff7ffff)
inst_265:
    li  x14, 0xefffffffffffffff
    sha512sum1 x18, x14
    sd x18, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xffffbbfffff7ffff)
 
    # Testcase 266:  rs1:x13(0xdfffffffffffffff), result rd:x19(0xffff77ffffefffff)
inst_266:
    li  x13, 0xdfffffffffffffff
    sha512sum1 x19, x13
    sd x19, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xffff77ffffefffff)
 
    # Testcase 267:  rs1:x12(0xbfffffffffffffff), result rd:x20(0xfffeefffffdfffff)
inst_267:
    li  x12, 0xbfffffffffffffff
    sha512sum1 x20, x12
    sd x20, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xfffeefffffdfffff)
 
    # Testcase 268:  rs1:x11(0x7fffffffffffffff), result rd:x21(0xfffddfffffbfffff)
inst_268:
    li  x11, 0x7fffffffffffffff
    sha512sum1 x21, x11
    sd x21, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xfffddfffffbfffff)
 
    # Testcase 269:  rs1:x10(0xffffffffffffffff), result rd:x22(0xffffffffffffffff)
inst_269:
    li  x10, 0xffffffffffffffff
    sha512sum1 x22, x10
    sd x22, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffffffffffffffff)




    # address for test results
    #la x1, test_55_res
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sum1)
    RVTEST_SIGBASE(x1,signature_55_0)

 
    # Testcase 270:  rs1:x9(0x10fd3dedadea5195), result rd:x23(0x24e7f2e37245a24d)
inst_270:
    li  x9, 0x10fd3dedadea5195
    sha512sum1 x23, x9
    sd x23, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x24e7f2e37245a24d)
 
    # Testcase 271:  rs1:x8(0xbd295ce2d2ffbec1), result rd:x0(0x0000000000000000)
inst_271:
    li  x8, 0xbd295ce2d2ffbec1
    sha512sum1 x0, x8
    sd x0, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x0000000000000000)
 
    # Testcase 272:  rs1:x7(0xc9649f05a8e1a8bb), result rd:x25(0x4a15a71f06337bf1)
inst_272:
    li  x7, 0xc9649f05a8e1a8bb
    sha512sum1 x25, x7
    sd x25, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x4a15a71f06337bf1)
 
    # Testcase 273:  rs1:x0(0x3541291848c99fcb), result rd:x26(0x0000000000000000)
inst_273:
    li  x0, 0x3541291848c99fcb
    sha512sum1 x26, x0
    sd x26, 24(x1)
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

