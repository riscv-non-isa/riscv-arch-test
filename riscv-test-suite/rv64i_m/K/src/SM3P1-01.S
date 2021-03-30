// RISC-V Architectural Validation Test SM3P1-01
//
//
// Copyright (c) 2021 Imperas Software Ltd., www.imperas.com
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
// either express or implied.
//
// See the License for the specific language governing permissions and
// limitations under the License.
//
//

//
// Specification: K Crypto/Scalar
// Description: Testing instruction 'sm3p1'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV64IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1


    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x6,signature_1_0)

 
 inst_0:
    // Test 0:  Test with random values
    // result rd:x1(0x000000004ff67248), rs1:x31(0x10fd3dedadea5195)
    li  x31, 0x10fd3dedadea5195
    sm3p1 x1, x31
    sd x1, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x000000004ff67248)
 
 inst_1:
    // Test 1:  Test with random values
    // result rd:x2(0x000000006d762861), rs1:x30(0xbd295ce2d2ffbec1)
    li  x30, 0xbd295ce2d2ffbec1
    sm3p1 x2, x30
    sd x2, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x000000006d762861)
 
 inst_2:
    // Test 2:  Test with random values
    // result rd:x3(0x0000000021680c1f), rs1:x29(0xc9649f05a8e1a8bb)
    li  x29, 0xc9649f05a8e1a8bb
    sm3p1 x3, x29
    sd x3, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x0000000021680c1f)
 
 inst_3:
    // Test 3:  Test with random values
    // result rd:x4(0x0000000062885f60), rs1:x28(0x3541291848c99fcb)
    li  x28, 0x3541291848c99fcb
    sm3p1 x4, x28
    sd x4, 24(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x0000000062885f60)
 
 inst_4:
    // Test 4:  Test with random values
    // result rd:x5(0x00000000c899ffe8), rs1:x27(0x10a24740461d524f)
    li  x27, 0x10a24740461d524f
    sm3p1 x5, x27
    sd x5, 32(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x00000000c899ffe8)


    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_2_0)

 
 inst_5:
    // Test 5:  Test with random values
    // result rd:x6(0x000000000d74fce2), rs1:x26(0x546b0e54528a10af)
    li  x26, 0x546b0e54528a10af
    sm3p1 x6, x26
    sd x6, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x000000000d74fce2)
 
 inst_6:
    // Test 6:  Test with random values
    // result rd:x7(0x00000000fd8ac6f3), rs1:x25(0x73a92fd4e19bfbc3)
    li  x25, 0x73a92fd4e19bfbc3
    sm3p1 x7, x25
    sd x7, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000000fd8ac6f3)
 
 inst_7:
    // Test 7:  Test with random values
    // result rd:x8(0x000000006922f784), rs1:x24(0x82f6747f707af2c0)
    li  x24, 0x82f6747f707af2c0
    sm3p1 x8, x24
    sd x8, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x000000006922f784)
 
 inst_8:
    // Test 8:  Test with random values
    // result rd:x9(0x000000000182fced), rs1:x23(0xf5adb41aa47d105b)
    li  x23, 0xf5adb41aa47d105b
    sm3p1 x9, x23
    sd x9, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x000000000182fced)
 
 inst_9:
    // Test 9:  Test with random values
    // result rd:x10(0x00000000e58348c8), rs1:x22(0xdf7f3844121bcc23)
    li  x22, 0xdf7f3844121bcc23
    sm3p1 x10, x22
    sd x10, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000e58348c8)


    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_3_0)

 
 inst_10:
    // Test 10:  Test with marching zeros/ones
    // result rd:x11(0x0000000000808001), rs1:x21(0x0000000000000001)
    li  x21, 0x1
    sm3p1 x11, x21
    sd x11, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x0000000000808001)
 
 inst_11:
    // Test 11:  Test with marching zeros/ones
    // result rd:x12(0x0000000001010002), rs1:x20(0x0000000000000002)
    li  x20, 0x2
    sm3p1 x12, x20
    sd x12, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x0000000001010002)
 
 inst_12:
    // Test 12:  Test with marching zeros/ones
    // result rd:x13(0x0000000002020004), rs1:x19(0x0000000000000004)
    li  x19, 0x4
    sm3p1 x13, x19
    sd x13, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x0000000002020004)
 
 inst_13:
    // Test 13:  Test with marching zeros/ones
    // result rd:x14(0x0000000004040008), rs1:x18(0x0000000000000008)
    li  x18, 0x8
    sm3p1 x14, x18
    sd x14, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x0000000004040008)
 
 inst_14:
    // Test 14:  Test with marching zeros/ones
    // result rd:x15(0x0000000008080010), rs1:x17(0x0000000000000010)
    li  x17, 0x10
    sm3p1 x15, x17
    sd x15, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x0000000008080010)


    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x2,signature_4_0)

 
 inst_15:
    // Test 15:  Test with marching zeros/ones
    // result rd:x16(0x0000000010100020), rs1:x16(0x0000000000000020)
    li  x16, 0x20
    sm3p1 x16, x16
    sd x16, 0(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x0000000010100020)
 
 inst_16:
    // Test 16:  Test with marching zeros/ones
    // result rd:x17(0x0000000020200040), rs1:x15(0x0000000000000040)
    li  x15, 0x40
    sm3p1 x17, x15
    sd x17, 8(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x0000000020200040)
 
 inst_17:
    // Test 17:  Test with marching zeros/ones
    // result rd:x18(0x0000000040400080), rs1:x14(0x0000000000000080)
    li  x14, 0x80
    sm3p1 x18, x14
    sd x18, 16(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x0000000040400080)
 
 inst_18:
    // Test 18:  Test with marching zeros/ones
    // result rd:x19(0x0000000080800100), rs1:x13(0x0000000000000100)
    li  x13, 0x100
    sm3p1 x19, x13
    sd x19, 24(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x0000000080800100)
 
 inst_19:
    // Test 19:  Test with marching zeros/ones
    // result rd:x20(0x0000000001000201), rs1:x12(0x0000000000000200)
    li  x12, 0x200
    sm3p1 x20, x12
    sd x20, 32(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x0000000001000201)


    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_5_0)

 
 inst_20:
    // Test 20:  Test with marching zeros/ones
    // result rd:x21(0x0000000002000402), rs1:x11(0x0000000000000400)
    li  x11, 0x400
    sm3p1 x21, x11
    sd x21, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000002000402)
 
 inst_21:
    // Test 21:  Test with marching zeros/ones
    // result rd:x22(0x0000000004000804), rs1:x10(0x0000000000000800)
    li  x10, 0x800
    sm3p1 x22, x10
    sd x22, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000004000804)
 
 inst_22:
    // Test 22:  Test with marching zeros/ones
    // result rd:x23(0x0000000008001008), rs1:x9(0x0000000000001000)
    li  x9, 0x1000
    sm3p1 x23, x9
    sd x23, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000008001008)
 
 inst_23:
    // Test 23:  Test with marching zeros/ones
    // result rd:x24(0x0000000010002010), rs1:x8(0x0000000000002000)
    li  x8, 0x2000
    sm3p1 x24, x8
    sd x24, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000010002010)
 
 inst_24:
    // Test 24:  Test with marching zeros/ones
    // result rd:x25(0x0000000020004020), rs1:x7(0x0000000000004000)
    li  x7, 0x4000
    sm3p1 x25, x7
    sd x25, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000020004020)


    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_6_0)

 
 inst_25:
    // Test 25:  Test with marching zeros/ones
    // result rd:x26(0x0000000040008040), rs1:x6(0x0000000000008000)
    li  x6, 0x8000
    sm3p1 x26, x6
    sd x26, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x0000000040008040)
 
 inst_26:
    // Test 26:  Test with marching zeros/ones
    // result rd:x27(0x0000000080010080), rs1:x5(0x0000000000010000)
    li  x5, 0x10000
    sm3p1 x27, x5
    sd x27, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x0000000080010080)
 
 inst_27:
    // Test 27:  Test with marching zeros/ones
    // result rd:x28(0x0000000000020101), rs1:x4(0x0000000000020000)
    li  x4, 0x20000
    sm3p1 x28, x4
    sd x28, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x0000000000020101)
 
 inst_28:
    // Test 28:  Test with marching zeros/ones
    // result rd:x29(0x0000000000040202), rs1:x3(0x0000000000040000)
    li  x3, 0x40000
    sm3p1 x29, x3
    sd x29, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x0000000000040202)
 
 inst_29:
    // Test 29:  Test with marching zeros/ones
    // result rd:x30(0x0000000000080404), rs1:x2(0x0000000000080000)
    li  x2, 0x80000
    sm3p1 x30, x2
    sd x30, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000000000080404)


    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x5,signature_7_0)

 
 inst_30:
    // Test 30:  Test with marching zeros/ones
    // result rd:x31(0x0000000000100808), rs1:x1(0x0000000000100000)
    li  x1, 0x100000
    sm3p1 x31, x1
    sd x31, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x0000000000100808)
 
 inst_31:
    // Test 31:  Test with marching zeros/ones
    // result rd:x1(0x0000000000201010), rs1:x31(0x0000000000200000)
    li  x31, 0x200000
    sm3p1 x1, x31
    sd x1, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x0000000000201010)
 
 inst_32:
    // Test 32:  Test with marching zeros/ones
    // result rd:x2(0x0000000000402020), rs1:x30(0x0000000000400000)
    li  x30, 0x400000
    sm3p1 x2, x30
    sd x2, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x0000000000402020)
 
 inst_33:
    // Test 33:  Test with marching zeros/ones
    // result rd:x3(0x0000000000804040), rs1:x29(0x0000000000800000)
    li  x29, 0x800000
    sm3p1 x3, x29
    sd x3, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x0000000000804040)
 
 inst_34:
    // Test 34:  Test with marching zeros/ones
    // result rd:x4(0x0000000001008080), rs1:x28(0x0000000001000000)
    li  x28, 0x1000000
    sm3p1 x4, x28
    sd x4, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x0000000001008080)


    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_8_0)

 
 inst_35:
    // Test 35:  Test with marching zeros/ones
    // result rd:x5(0x0000000002010100), rs1:x27(0x0000000002000000)
    li  x27, 0x2000000
    sm3p1 x5, x27
    sd x5, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0000000002010100)
 
 inst_36:
    // Test 36:  Test with marching zeros/ones
    // result rd:x6(0x0000000004020200), rs1:x26(0x0000000004000000)
    li  x26, 0x4000000
    sm3p1 x6, x26
    sd x6, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000004020200)
 
 inst_37:
    // Test 37:  Test with marching zeros/ones
    // result rd:x7(0x0000000008040400), rs1:x25(0x0000000008000000)
    li  x25, 0x8000000
    sm3p1 x7, x25
    sd x7, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000008040400)
 
 inst_38:
    // Test 38:  Test with marching zeros/ones
    // result rd:x8(0x0000000010080800), rs1:x24(0x0000000010000000)
    li  x24, 0x10000000
    sm3p1 x8, x24
    sd x8, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000010080800)
 
 inst_39:
    // Test 39:  Test with marching zeros/ones
    // result rd:x9(0x0000000020101000), rs1:x23(0x0000000020000000)
    li  x23, 0x20000000
    sm3p1 x9, x23
    sd x9, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000020101000)


    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_9_0)

 
 inst_40:
    // Test 40:  Test with marching zeros/ones
    // result rd:x10(0x0000000040202000), rs1:x22(0x0000000040000000)
    li  x22, 0x40000000
    sm3p1 x10, x22
    sd x10, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000040202000)
 
 inst_41:
    // Test 41:  Test with marching zeros/ones
    // result rd:x11(0x0000000080404000), rs1:x21(0x0000000080000000)
    li  x21, 0x80000000
    sm3p1 x11, x21
    sd x11, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0000000080404000)
 
 inst_42:
    // Test 42:  Test with marching zeros/ones
    // result rd:x12(0x0000000000000000), rs1:x20(0x0000000100000000)
    li  x20, 0x100000000
    sm3p1 x12, x20
    sd x12, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0000000000000000)
 
 inst_43:
    // Test 43:  Test with marching zeros/ones
    // result rd:x13(0x0000000000000000), rs1:x19(0x0000000200000000)
    li  x19, 0x200000000
    sm3p1 x13, x19
    sd x13, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0000000000000000)
 
 inst_44:
    // Test 44:  Test with marching zeros/ones
    // result rd:x14(0x0000000000000000), rs1:x18(0x0000000400000000)
    li  x18, 0x400000000
    sm3p1 x14, x18
    sd x14, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x0000000000000000)


    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x3,signature_10_0)

 
 inst_45:
    // Test 45:  Test with marching zeros/ones
    // result rd:x15(0x0000000000000000), rs1:x17(0x0000000800000000)
    li  x17, 0x800000000
    sm3p1 x15, x17
    sd x15, 0(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x0000000000000000)
 
 inst_46:
    // Test 46:  Test with marching zeros/ones
    // result rd:x16(0x0000000000000000), rs1:x16(0x0000001000000000)
    li  x16, 0x1000000000
    sm3p1 x16, x16
    sd x16, 8(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x0000000000000000)
 
 inst_47:
    // Test 47:  Test with marching zeros/ones
    // result rd:x17(0x0000000000000000), rs1:x15(0x0000002000000000)
    li  x15, 0x2000000000
    sm3p1 x17, x15
    sd x17, 16(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x0000000000000000)
 
 inst_48:
    // Test 48:  Test with marching zeros/ones
    // result rd:x18(0x0000000000000000), rs1:x14(0x0000004000000000)
    li  x14, 0x4000000000
    sm3p1 x18, x14
    sd x18, 24(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x0000000000000000)
 
 inst_49:
    // Test 49:  Test with marching zeros/ones
    // result rd:x19(0x0000000000000000), rs1:x13(0x0000008000000000)
    li  x13, 0x8000000000
    sm3p1 x19, x13
    sd x19, 32(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x0000000000000000)


    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_11_0)

 
 inst_50:
    // Test 50:  Test with marching zeros/ones
    // result rd:x20(0x0000000000000000), rs1:x12(0x0000010000000000)
    li  x12, 0x10000000000
    sm3p1 x20, x12
    sd x20, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x0000000000000000)
 
 inst_51:
    // Test 51:  Test with marching zeros/ones
    // result rd:x21(0x0000000000000000), rs1:x11(0x0000020000000000)
    li  x11, 0x20000000000
    sm3p1 x21, x11
    sd x21, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000000000000)
 
 inst_52:
    // Test 52:  Test with marching zeros/ones
    // result rd:x22(0x0000000000000000), rs1:x10(0x0000040000000000)
    li  x10, 0x40000000000
    sm3p1 x22, x10
    sd x22, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000000000000)
 
 inst_53:
    // Test 53:  Test with marching zeros/ones
    // result rd:x23(0x0000000000000000), rs1:x9(0x0000080000000000)
    li  x9, 0x80000000000
    sm3p1 x23, x9
    sd x23, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000000000000)
 
 inst_54:
    // Test 54:  Test with marching zeros/ones
    // result rd:x24(0x0000000000000000), rs1:x8(0x0000100000000000)
    li  x8, 0x100000000000
    sm3p1 x24, x8
    sd x24, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000000000000)


    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_12_0)

 
 inst_55:
    // Test 55:  Test with marching zeros/ones
    // result rd:x25(0x0000000000000000), rs1:x7(0x0000200000000000)
    li  x7, 0x200000000000
    sm3p1 x25, x7
    sd x25, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000000000000)
 
 inst_56:
    // Test 56:  Test with marching zeros/ones
    // result rd:x26(0x0000000000000000), rs1:x6(0x0000400000000000)
    li  x6, 0x400000000000
    sm3p1 x26, x6
    sd x26, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0000000000000000)
 
 inst_57:
    // Test 57:  Test with marching zeros/ones
    // result rd:x27(0x0000000000000000), rs1:x5(0x0000800000000000)
    li  x5, 0x800000000000
    sm3p1 x27, x5
    sd x27, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x0000000000000000)
 
 inst_58:
    // Test 58:  Test with marching zeros/ones
    // result rd:x28(0x0000000000000000), rs1:x4(0x0001000000000000)
    li  x4, 0x1000000000000
    sm3p1 x28, x4
    sd x28, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x0000000000000000)
 
 inst_59:
    // Test 59:  Test with marching zeros/ones
    // result rd:x29(0x0000000000000000), rs1:x3(0x0002000000000000)
    li  x3, 0x2000000000000
    sm3p1 x29, x3
    sd x29, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x0000000000000000)


    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x4,signature_13_0)

 
 inst_60:
    // Test 60:  Test with marching zeros/ones
    // result rd:x30(0x0000000000000000), rs1:x2(0x0004000000000000)
    li  x2, 0x4000000000000
    sm3p1 x30, x2
    sd x30, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x0000000000000000)
 
 inst_61:
    // Test 61:  Test with marching zeros/ones
    // result rd:x31(0x0000000000000000), rs1:x1(0x0008000000000000)
    li  x1, 0x8000000000000
    sm3p1 x31, x1
    sd x31, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x0000000000000000)
 
 inst_62:
    // Test 62:  Test with marching zeros/ones
    // result rd:x1(0x0000000000000000), rs1:x31(0x0010000000000000)
    li  x31, 0x10000000000000
    sm3p1 x1, x31
    sd x1, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x0000000000000000)
 
 inst_63:
    // Test 63:  Test with marching zeros/ones
    // result rd:x2(0x0000000000000000), rs1:x30(0x0020000000000000)
    li  x30, 0x20000000000000
    sm3p1 x2, x30
    sd x2, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x0000000000000000)
 
 inst_64:
    // Test 64:  Test with marching zeros/ones
    // result rd:x3(0x0000000000000000), rs1:x29(0x0040000000000000)
    li  x29, 0x40000000000000
    sm3p1 x3, x29
    sd x3, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x0000000000000000)


    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_14_0)

 
 inst_65:
    // Test 65:  Test with marching zeros/ones
    // result rd:x4(0x0000000000000000), rs1:x28(0x0080000000000000)
    li  x28, 0x80000000000000
    sm3p1 x4, x28
    sd x4, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x0000000000000000)
 
 inst_66:
    // Test 66:  Test with marching zeros/ones
    // result rd:x5(0x0000000000000000), rs1:x27(0x0100000000000000)
    li  x27, 0x100000000000000
    sm3p1 x5, x27
    sd x5, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0000000000000000)
 
 inst_67:
    // Test 67:  Test with marching zeros/ones
    // result rd:x6(0x0000000000000000), rs1:x26(0x0200000000000000)
    li  x26, 0x200000000000000
    sm3p1 x6, x26
    sd x6, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000000000000)
 
 inst_68:
    // Test 68:  Test with marching zeros/ones
    // result rd:x7(0x0000000000000000), rs1:x25(0x0400000000000000)
    li  x25, 0x400000000000000
    sm3p1 x7, x25
    sd x7, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000000000000)
 
 inst_69:
    // Test 69:  Test with marching zeros/ones
    // result rd:x8(0x0000000000000000), rs1:x24(0x0800000000000000)
    li  x24, 0x800000000000000
    sm3p1 x8, x24
    sd x8, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000000000000)


    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_15_0)

 
 inst_70:
    // Test 70:  Test with marching zeros/ones
    // result rd:x9(0x0000000000000000), rs1:x23(0x1000000000000000)
    li  x23, 0x1000000000000000
    sm3p1 x9, x23
    sd x9, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000000000000)
 
 inst_71:
    // Test 71:  Test with marching zeros/ones
    // result rd:x10(0x0000000000000000), rs1:x22(0x2000000000000000)
    li  x22, 0x2000000000000000
    sm3p1 x10, x22
    sd x10, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000000000000)
 
 inst_72:
    // Test 72:  Test with marching zeros/ones
    // result rd:x11(0x0000000000000000), rs1:x21(0x4000000000000000)
    li  x21, 0x4000000000000000
    sm3p1 x11, x21
    sd x11, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0000000000000000)
 
 inst_73:
    // Test 73:  Test with marching zeros/ones
    // result rd:x12(0x0000000000000000), rs1:x20(0x8000000000000000)
    li  x20, 0x8000000000000000
    sm3p1 x12, x20
    sd x12, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0000000000000000)
 
 inst_74:
    // Test 74:  Test with marching zeros/ones
    // result rd:x13(0x0000000000000000), rs1:x19(0x0000000000000000)
    li  x19, 0x0
    sm3p1 x13, x19
    sd x13, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0000000000000000)


    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x4,signature_16_0)

 
 inst_75:
    // Test 75:  Test with marching zeros/ones
    // result rd:x14(0x00000000ff7f7ffe), rs1:x18(0xfffffffffffffffe)
    li  x18, 0xfffffffffffffffe
    sm3p1 x14, x18
    sd x14, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0x00000000ff7f7ffe)
 
 inst_76:
    // Test 76:  Test with marching zeros/ones
    // result rd:x15(0x00000000fefefffd), rs1:x17(0xfffffffffffffffd)
    li  x17, 0xfffffffffffffffd
    sm3p1 x15, x17
    sd x15, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x00000000fefefffd)
 
 inst_77:
    // Test 77:  Test with marching zeros/ones
    // result rd:x16(0x00000000fdfdfffb), rs1:x16(0xfffffffffffffffb)
    li  x16, 0xfffffffffffffffb
    sm3p1 x16, x16
    sd x16, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x00000000fdfdfffb)
 
 inst_78:
    // Test 78:  Test with marching zeros/ones
    // result rd:x17(0x00000000fbfbfff7), rs1:x15(0xfffffffffffffff7)
    li  x15, 0xfffffffffffffff7
    sm3p1 x17, x15
    sd x17, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x00000000fbfbfff7)
 
 inst_79:
    // Test 79:  Test with marching zeros/ones
    // result rd:x18(0x00000000f7f7ffef), rs1:x14(0xffffffffffffffef)
    li  x14, 0xffffffffffffffef
    sm3p1 x18, x14
    sd x18, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x00000000f7f7ffef)


    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_17_0)

 
 inst_80:
    // Test 80:  Test with marching zeros/ones
    // result rd:x19(0x00000000efefffdf), rs1:x13(0xffffffffffffffdf)
    li  x13, 0xffffffffffffffdf
    sm3p1 x19, x13
    sd x19, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x00000000efefffdf)
 
 inst_81:
    // Test 81:  Test with marching zeros/ones
    // result rd:x20(0x00000000dfdfffbf), rs1:x12(0xffffffffffffffbf)
    li  x12, 0xffffffffffffffbf
    sm3p1 x20, x12
    sd x20, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00000000dfdfffbf)
 
 inst_82:
    // Test 82:  Test with marching zeros/ones
    // result rd:x21(0x00000000bfbfff7f), rs1:x11(0xffffffffffffff7f)
    li  x11, 0xffffffffffffff7f
    sm3p1 x21, x11
    sd x21, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000000bfbfff7f)
 
 inst_83:
    // Test 83:  Test with marching zeros/ones
    // result rd:x22(0x000000007f7ffeff), rs1:x10(0xfffffffffffffeff)
    li  x10, 0xfffffffffffffeff
    sm3p1 x22, x10
    sd x22, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x000000007f7ffeff)
 
 inst_84:
    // Test 84:  Test with marching zeros/ones
    // result rd:x23(0x00000000fefffdfe), rs1:x9(0xfffffffffffffdff)
    li  x9, 0xfffffffffffffdff
    sm3p1 x23, x9
    sd x23, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000000fefffdfe)


    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_18_0)

 
 inst_85:
    // Test 85:  Test with marching zeros/ones
    // result rd:x24(0x00000000fdfffbfd), rs1:x8(0xfffffffffffffbff)
    li  x8, 0xfffffffffffffbff
    sm3p1 x24, x8
    sd x24, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00000000fdfffbfd)
 
 inst_86:
    // Test 86:  Test with marching zeros/ones
    // result rd:x25(0x00000000fbfff7fb), rs1:x7(0xfffffffffffff7ff)
    li  x7, 0xfffffffffffff7ff
    sm3p1 x25, x7
    sd x25, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000000fbfff7fb)
 
 inst_87:
    // Test 87:  Test with marching zeros/ones
    // result rd:x26(0x00000000f7ffeff7), rs1:x6(0xffffffffffffefff)
    li  x6, 0xffffffffffffefff
    sm3p1 x26, x6
    sd x26, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000000f7ffeff7)
 
 inst_88:
    // Test 88:  Test with marching zeros/ones
    // result rd:x27(0x00000000efffdfef), rs1:x5(0xffffffffffffdfff)
    li  x5, 0xffffffffffffdfff
    sm3p1 x27, x5
    sd x27, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00000000efffdfef)
 
 inst_89:
    // Test 89:  Test with marching zeros/ones
    // result rd:x28(0x00000000dfffbfdf), rs1:x4(0xffffffffffffbfff)
    li  x4, 0xffffffffffffbfff
    sm3p1 x28, x4
    sd x28, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x00000000dfffbfdf)


    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x4,signature_19_0)

 
 inst_90:
    // Test 90:  Test with marching zeros/ones
    // result rd:x29(0x00000000bfff7fbf), rs1:x3(0xffffffffffff7fff)
    li  x3, 0xffffffffffff7fff
    sm3p1 x29, x3
    sd x29, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x00000000bfff7fbf)
 
 inst_91:
    // Test 91:  Test with marching zeros/ones
    // result rd:x30(0x000000007ffeff7f), rs1:x2(0xfffffffffffeffff)
    li  x2, 0xfffffffffffeffff
    sm3p1 x30, x2
    sd x30, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x000000007ffeff7f)
 
 inst_92:
    // Test 92:  Test with marching zeros/ones
    // result rd:x31(0x00000000fffdfefe), rs1:x1(0xfffffffffffdffff)
    li  x1, 0xfffffffffffdffff
    sm3p1 x31, x1
    sd x31, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x00000000fffdfefe)
 
 inst_93:
    // Test 93:  Test with marching zeros/ones
    // result rd:x1(0x00000000fffbfdfd), rs1:x31(0xfffffffffffbffff)
    li  x31, 0xfffffffffffbffff
    sm3p1 x1, x31
    sd x1, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00000000fffbfdfd)
 
 inst_94:
    // Test 94:  Test with marching zeros/ones
    // result rd:x2(0x00000000fff7fbfb), rs1:x30(0xfffffffffff7ffff)
    li  x30, 0xfffffffffff7ffff
    sm3p1 x2, x30
    sd x2, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00000000fff7fbfb)


    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_20_0)

 
 inst_95:
    // Test 95:  Test with marching zeros/ones
    // result rd:x3(0x00000000ffeff7f7), rs1:x29(0xffffffffffefffff)
    li  x29, 0xffffffffffefffff
    sm3p1 x3, x29
    sd x3, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x00000000ffeff7f7)
 
 inst_96:
    // Test 96:  Test with marching zeros/ones
    // result rd:x4(0x00000000ffdfefef), rs1:x28(0xffffffffffdfffff)
    li  x28, 0xffffffffffdfffff
    sm3p1 x4, x28
    sd x4, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00000000ffdfefef)
 
 inst_97:
    // Test 97:  Test with marching zeros/ones
    // result rd:x5(0x00000000ffbfdfdf), rs1:x27(0xffffffffffbfffff)
    li  x27, 0xffffffffffbfffff
    sm3p1 x5, x27
    sd x5, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00000000ffbfdfdf)
 
 inst_98:
    // Test 98:  Test with marching zeros/ones
    // result rd:x6(0x00000000ff7fbfbf), rs1:x26(0xffffffffff7fffff)
    li  x26, 0xffffffffff7fffff
    sm3p1 x6, x26
    sd x6, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00000000ff7fbfbf)
 
 inst_99:
    // Test 99:  Test with marching zeros/ones
    // result rd:x7(0x00000000feff7f7f), rs1:x25(0xfffffffffeffffff)
    li  x25, 0xfffffffffeffffff
    sm3p1 x7, x25
    sd x7, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000000feff7f7f)


    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_21_0)

 
 inst_100:
    // Test 100:  Test with marching zeros/ones
    // result rd:x8(0x00000000fdfefeff), rs1:x24(0xfffffffffdffffff)
    li  x24, 0xfffffffffdffffff
    sm3p1 x8, x24
    sd x8, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000000fdfefeff)
 
 inst_101:
    // Test 101:  Test with marching zeros/ones
    // result rd:x9(0x00000000fbfdfdff), rs1:x23(0xfffffffffbffffff)
    li  x23, 0xfffffffffbffffff
    sm3p1 x9, x23
    sd x9, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000000fbfdfdff)
 
 inst_102:
    // Test 102:  Test with marching zeros/ones
    // result rd:x10(0x00000000f7fbfbff), rs1:x22(0xfffffffff7ffffff)
    li  x22, 0xfffffffff7ffffff
    sm3p1 x10, x22
    sd x10, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000f7fbfbff)
 
 inst_103:
    // Test 103:  Test with marching zeros/ones
    // result rd:x11(0x00000000eff7f7ff), rs1:x21(0xffffffffefffffff)
    li  x21, 0xffffffffefffffff
    sm3p1 x11, x21
    sd x11, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00000000eff7f7ff)
 
 inst_104:
    // Test 104:  Test with marching zeros/ones
    // result rd:x12(0x00000000dfefefff), rs1:x20(0xffffffffdfffffff)
    li  x20, 0xffffffffdfffffff
    sm3p1 x12, x20
    sd x12, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000dfefefff)


    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x5,signature_22_0)

 
 inst_105:
    // Test 105:  Test with marching zeros/ones
    // result rd:x13(0x00000000bfdfdfff), rs1:x19(0xffffffffbfffffff)
    li  x19, 0xffffffffbfffffff
    sm3p1 x13, x19
    sd x13, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x00000000bfdfdfff)
 
 inst_106:
    // Test 106:  Test with marching zeros/ones
    // result rd:x14(0x000000007fbfbfff), rs1:x18(0xffffffff7fffffff)
    li  x18, 0xffffffff7fffffff
    sm3p1 x14, x18
    sd x14, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x000000007fbfbfff)
 
 inst_107:
    // Test 107:  Test with marching zeros/ones
    // result rd:x15(0x00000000ffffffff), rs1:x17(0xfffffffeffffffff)
    li  x17, 0xfffffffeffffffff
    sm3p1 x15, x17
    sd x15, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x00000000ffffffff)
 
 inst_108:
    // Test 108:  Test with marching zeros/ones
    // result rd:x16(0x00000000ffffffff), rs1:x16(0xfffffffdffffffff)
    li  x16, 0xfffffffdffffffff
    sm3p1 x16, x16
    sd x16, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x00000000ffffffff)
 
 inst_109:
    // Test 109:  Test with marching zeros/ones
    // result rd:x17(0x00000000ffffffff), rs1:x15(0xfffffffbffffffff)
    li  x15, 0xfffffffbffffffff
    sm3p1 x17, x15
    sd x17, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0x00000000ffffffff)


    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_23_0)

 
 inst_110:
    // Test 110:  Test with marching zeros/ones
    // result rd:x18(0x00000000ffffffff), rs1:x14(0xfffffff7ffffffff)
    li  x14, 0xfffffff7ffffffff
    sm3p1 x18, x14
    sd x18, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x00000000ffffffff)
 
 inst_111:
    // Test 111:  Test with marching zeros/ones
    // result rd:x19(0x00000000ffffffff), rs1:x13(0xffffffefffffffff)
    li  x13, 0xffffffefffffffff
    sm3p1 x19, x13
    sd x19, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x00000000ffffffff)
 
 inst_112:
    // Test 112:  Test with marching zeros/ones
    // result rd:x20(0x00000000ffffffff), rs1:x12(0xffffffdfffffffff)
    li  x12, 0xffffffdfffffffff
    sm3p1 x20, x12
    sd x20, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00000000ffffffff)
 
 inst_113:
    // Test 113:  Test with marching zeros/ones
    // result rd:x21(0x00000000ffffffff), rs1:x11(0xffffffbfffffffff)
    li  x11, 0xffffffbfffffffff
    sm3p1 x21, x11
    sd x21, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000000ffffffff)
 
 inst_114:
    // Test 114:  Test with marching zeros/ones
    // result rd:x22(0x00000000ffffffff), rs1:x10(0xffffff7fffffffff)
    li  x10, 0xffffff7fffffffff
    sm3p1 x22, x10
    sd x22, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000ffffffff)


    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_24_0)

 
 inst_115:
    // Test 115:  Test with marching zeros/ones
    // result rd:x23(0x00000000ffffffff), rs1:x9(0xfffffeffffffffff)
    li  x9, 0xfffffeffffffffff
    sm3p1 x23, x9
    sd x23, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000000ffffffff)
 
 inst_116:
    // Test 116:  Test with marching zeros/ones
    // result rd:x24(0x00000000ffffffff), rs1:x8(0xfffffdffffffffff)
    li  x8, 0xfffffdffffffffff
    sm3p1 x24, x8
    sd x24, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00000000ffffffff)
 
 inst_117:
    // Test 117:  Test with marching zeros/ones
    // result rd:x25(0x00000000ffffffff), rs1:x7(0xfffffbffffffffff)
    li  x7, 0xfffffbffffffffff
    sm3p1 x25, x7
    sd x25, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000000ffffffff)
 
 inst_118:
    // Test 118:  Test with marching zeros/ones
    // result rd:x26(0x00000000ffffffff), rs1:x6(0xfffff7ffffffffff)
    li  x6, 0xfffff7ffffffffff
    sm3p1 x26, x6
    sd x26, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000000ffffffff)
 
 inst_119:
    // Test 119:  Test with marching zeros/ones
    // result rd:x27(0x00000000ffffffff), rs1:x5(0xffffefffffffffff)
    li  x5, 0xffffefffffffffff
    sm3p1 x27, x5
    sd x27, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00000000ffffffff)


    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x5,signature_25_0)

 
 inst_120:
    // Test 120:  Test with marching zeros/ones
    // result rd:x28(0x00000000ffffffff), rs1:x4(0xffffdfffffffffff)
    li  x4, 0xffffdfffffffffff
    sm3p1 x28, x4
    sd x28, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0x00000000ffffffff)
 
 inst_121:
    // Test 121:  Test with marching zeros/ones
    // result rd:x29(0x00000000ffffffff), rs1:x3(0xffffbfffffffffff)
    li  x3, 0xffffbfffffffffff
    sm3p1 x29, x3
    sd x29, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0x00000000ffffffff)
 
 inst_122:
    // Test 122:  Test with marching zeros/ones
    // result rd:x30(0x00000000ffffffff), rs1:x2(0xffff7fffffffffff)
    li  x2, 0xffff7fffffffffff
    sm3p1 x30, x2
    sd x30, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0x00000000ffffffff)
 
 inst_123:
    // Test 123:  Test with marching zeros/ones
    // result rd:x31(0x00000000ffffffff), rs1:x1(0xfffeffffffffffff)
    li  x1, 0xfffeffffffffffff
    sm3p1 x31, x1
    sd x31, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x00000000ffffffff)
 
 inst_124:
    // Test 124:  Test with marching zeros/ones
    // result rd:x1(0x00000000ffffffff), rs1:x31(0xfffdffffffffffff)
    li  x31, 0xfffdffffffffffff
    sm3p1 x1, x31
    sd x1, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x00000000ffffffff)


    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_26_0)

 
 inst_125:
    // Test 125:  Test with marching zeros/ones
    // result rd:x2(0x00000000ffffffff), rs1:x30(0xfffbffffffffffff)
    li  x30, 0xfffbffffffffffff
    sm3p1 x2, x30
    sd x2, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x00000000ffffffff)
 
 inst_126:
    // Test 126:  Test with marching zeros/ones
    // result rd:x3(0x00000000ffffffff), rs1:x29(0xfff7ffffffffffff)
    li  x29, 0xfff7ffffffffffff
    sm3p1 x3, x29
    sd x3, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x00000000ffffffff)
 
 inst_127:
    // Test 127:  Test with marching zeros/ones
    // result rd:x4(0x00000000ffffffff), rs1:x28(0xffefffffffffffff)
    li  x28, 0xffefffffffffffff
    sm3p1 x4, x28
    sd x4, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x00000000ffffffff)
 
 inst_128:
    // Test 128:  Test with marching zeros/ones
    // result rd:x5(0x00000000ffffffff), rs1:x27(0xffdfffffffffffff)
    li  x27, 0xffdfffffffffffff
    sm3p1 x5, x27
    sd x5, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x00000000ffffffff)
 
 inst_129:
    // Test 129:  Test with marching zeros/ones
    // result rd:x6(0x00000000ffffffff), rs1:x26(0xffbfffffffffffff)
    li  x26, 0xffbfffffffffffff
    sm3p1 x6, x26
    sd x6, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0x00000000ffffffff)


    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_27_0)

 
 inst_130:
    // Test 130:  Test with marching zeros/ones
    // result rd:x7(0x00000000ffffffff), rs1:x25(0xff7fffffffffffff)
    li  x25, 0xff7fffffffffffff
    sm3p1 x7, x25
    sd x7, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000000ffffffff)
 
 inst_131:
    // Test 131:  Test with marching zeros/ones
    // result rd:x8(0x00000000ffffffff), rs1:x24(0xfeffffffffffffff)
    li  x24, 0xfeffffffffffffff
    sm3p1 x8, x24
    sd x8, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000000ffffffff)
 
 inst_132:
    // Test 132:  Test with marching zeros/ones
    // result rd:x9(0x00000000ffffffff), rs1:x23(0xfdffffffffffffff)
    li  x23, 0xfdffffffffffffff
    sm3p1 x9, x23
    sd x9, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000000ffffffff)
 
 inst_133:
    // Test 133:  Test with marching zeros/ones
    // result rd:x10(0x00000000ffffffff), rs1:x22(0xfbffffffffffffff)
    li  x22, 0xfbffffffffffffff
    sm3p1 x10, x22
    sd x10, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000ffffffff)
 
 inst_134:
    // Test 134:  Test with marching zeros/ones
    // result rd:x11(0x00000000ffffffff), rs1:x21(0xf7ffffffffffffff)
    li  x21, 0xf7ffffffffffffff
    sm3p1 x11, x21
    sd x11, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00000000ffffffff)


    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x6,signature_28_0)

 
 inst_135:
    // Test 135:  Test with marching zeros/ones
    // result rd:x12(0x00000000ffffffff), rs1:x20(0xefffffffffffffff)
    li  x20, 0xefffffffffffffff
    sm3p1 x12, x20
    sd x12, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x00000000ffffffff)
 
 inst_136:
    // Test 136:  Test with marching zeros/ones
    // result rd:x13(0x00000000ffffffff), rs1:x19(0xdfffffffffffffff)
    li  x19, 0xdfffffffffffffff
    sm3p1 x13, x19
    sd x13, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x00000000ffffffff)
 
 inst_137:
    // Test 137:  Test with marching zeros/ones
    // result rd:x14(0x00000000ffffffff), rs1:x18(0xbfffffffffffffff)
    li  x18, 0xbfffffffffffffff
    sm3p1 x14, x18
    sd x14, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x00000000ffffffff)
 
 inst_138:
    // Test 138:  Test with marching zeros/ones
    // result rd:x15(0x00000000ffffffff), rs1:x17(0x7fffffffffffffff)
    li  x17, 0x7fffffffffffffff
    sm3p1 x15, x17
    sd x15, 24(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x00000000ffffffff)
 
 inst_139:
    // Test 139:  Test with marching zeros/ones
    // result rd:x16(0x00000000ffffffff), rs1:x16(0xffffffffffffffff)
    li  x16, 0xffffffffffffffff
    sm3p1 x16, x16
    sd x16, 32(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0x00000000ffffffff)


    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_29_0)

 
 inst_140:
    // Test 140:  Test with marching zeros/ones
    // result rd:x17(0x0000000000808001), rs1:x15(0x0000000000000001)
    li  x15, 0x1
    sm3p1 x17, x15
    sd x17, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x0000000000808001)
 
 inst_141:
    // Test 141:  Test with marching zeros/ones
    // result rd:x18(0x0000000001010002), rs1:x14(0x0000000000000002)
    li  x14, 0x2
    sm3p1 x18, x14
    sd x18, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x0000000001010002)
 
 inst_142:
    // Test 142:  Test with marching zeros/ones
    // result rd:x19(0x0000000002020004), rs1:x13(0x0000000000000004)
    li  x13, 0x4
    sm3p1 x19, x13
    sd x19, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x0000000002020004)
 
 inst_143:
    // Test 143:  Test with marching zeros/ones
    // result rd:x20(0x0000000004040008), rs1:x12(0x0000000000000008)
    li  x12, 0x8
    sm3p1 x20, x12
    sd x20, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x0000000004040008)
 
 inst_144:
    // Test 144:  Test with marching zeros/ones
    // result rd:x21(0x0000000008080010), rs1:x11(0x0000000000000010)
    li  x11, 0x10
    sm3p1 x21, x11
    sd x21, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000008080010)


    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_30_0)

 
 inst_145:
    // Test 145:  Test with marching zeros/ones
    // result rd:x22(0x0000000010100020), rs1:x10(0x0000000000000020)
    li  x10, 0x20
    sm3p1 x22, x10
    sd x22, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000010100020)
 
 inst_146:
    // Test 146:  Test with marching zeros/ones
    // result rd:x23(0x0000000020200040), rs1:x9(0x0000000000000040)
    li  x9, 0x40
    sm3p1 x23, x9
    sd x23, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000020200040)
 
 inst_147:
    // Test 147:  Test with marching zeros/ones
    // result rd:x24(0x0000000040400080), rs1:x8(0x0000000000000080)
    li  x8, 0x80
    sm3p1 x24, x8
    sd x24, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000040400080)
 
 inst_148:
    // Test 148:  Test with marching zeros/ones
    // result rd:x25(0x0000000080800100), rs1:x7(0x0000000000000100)
    li  x7, 0x100
    sm3p1 x25, x7
    sd x25, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000080800100)
 
 inst_149:
    // Test 149:  Test with marching zeros/ones
    // result rd:x26(0x0000000001000201), rs1:x6(0x0000000000000200)
    li  x6, 0x200
    sm3p1 x26, x6
    sd x26, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0000000001000201)


    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x6,signature_31_0)

 
 inst_150:
    // Test 150:  Test with marching zeros/ones
    // result rd:x27(0x0000000002000402), rs1:x5(0x0000000000000400)
    li  x5, 0x400
    sm3p1 x27, x5
    sd x27, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x0000000002000402)
 
 inst_151:
    // Test 151:  Test with marching zeros/ones
    // result rd:x28(0x0000000004000804), rs1:x4(0x0000000000000800)
    li  x4, 0x800
    sm3p1 x28, x4
    sd x28, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x0000000004000804)
 
 inst_152:
    // Test 152:  Test with marching zeros/ones
    // result rd:x29(0x0000000008001008), rs1:x3(0x0000000000001000)
    li  x3, 0x1000
    sm3p1 x29, x3
    sd x29, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x0000000008001008)
 
 inst_153:
    // Test 153:  Test with marching zeros/ones
    // result rd:x30(0x0000000010002010), rs1:x2(0x0000000000002000)
    li  x2, 0x2000
    sm3p1 x30, x2
    sd x30, 24(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000000010002010)
 
 inst_154:
    // Test 154:  Test with marching zeros/ones
    // result rd:x31(0x0000000020004020), rs1:x1(0x0000000000004000)
    li  x1, 0x4000
    sm3p1 x31, x1
    sd x31, 32(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x31, 0x0000000020004020)


    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x6,signature_32_0)

 
 inst_155:
    // Test 155:  Test with marching zeros/ones
    // result rd:x1(0x0000000040008040), rs1:x31(0x0000000000008000)
    li  x31, 0x8000
    sm3p1 x1, x31
    sd x1, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x0000000040008040)
 
 inst_156:
    // Test 156:  Test with marching zeros/ones
    // result rd:x2(0x0000000080010080), rs1:x30(0x0000000000010000)
    li  x30, 0x10000
    sm3p1 x2, x30
    sd x2, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x0000000080010080)
 
 inst_157:
    // Test 157:  Test with marching zeros/ones
    // result rd:x3(0x0000000000020101), rs1:x29(0x0000000000020000)
    li  x29, 0x20000
    sm3p1 x3, x29
    sd x3, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x0000000000020101)
 
 inst_158:
    // Test 158:  Test with marching zeros/ones
    // result rd:x4(0x0000000000040202), rs1:x28(0x0000000000040000)
    li  x28, 0x40000
    sm3p1 x4, x28
    sd x4, 24(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x0000000000040202)
 
 inst_159:
    // Test 159:  Test with marching zeros/ones
    // result rd:x5(0x0000000000080404), rs1:x27(0x0000000000080000)
    li  x27, 0x80000
    sm3p1 x5, x27
    sd x5, 32(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x0000000000080404)


    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_33_0)

 
 inst_160:
    // Test 160:  Test with marching zeros/ones
    // result rd:x6(0x0000000000100808), rs1:x26(0x0000000000100000)
    li  x26, 0x100000
    sm3p1 x6, x26
    sd x6, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000000100808)
 
 inst_161:
    // Test 161:  Test with marching zeros/ones
    // result rd:x7(0x0000000000201010), rs1:x25(0x0000000000200000)
    li  x25, 0x200000
    sm3p1 x7, x25
    sd x7, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000000201010)
 
 inst_162:
    // Test 162:  Test with marching zeros/ones
    // result rd:x8(0x0000000000402020), rs1:x24(0x0000000000400000)
    li  x24, 0x400000
    sm3p1 x8, x24
    sd x8, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000000402020)
 
 inst_163:
    // Test 163:  Test with marching zeros/ones
    // result rd:x9(0x0000000000804040), rs1:x23(0x0000000000800000)
    li  x23, 0x800000
    sm3p1 x9, x23
    sd x9, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000000804040)
 
 inst_164:
    // Test 164:  Test with marching zeros/ones
    // result rd:x10(0x0000000001008080), rs1:x22(0x0000000001000000)
    li  x22, 0x1000000
    sm3p1 x10, x22
    sd x10, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000001008080)


    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_34_0)

 
 inst_165:
    // Test 165:  Test with marching zeros/ones
    // result rd:x11(0x0000000002010100), rs1:x21(0x0000000002000000)
    li  x21, 0x2000000
    sm3p1 x11, x21
    sd x11, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x0000000002010100)
 
 inst_166:
    // Test 166:  Test with marching zeros/ones
    // result rd:x12(0x0000000004020200), rs1:x20(0x0000000004000000)
    li  x20, 0x4000000
    sm3p1 x12, x20
    sd x12, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x0000000004020200)
 
 inst_167:
    // Test 167:  Test with marching zeros/ones
    // result rd:x13(0x0000000008040400), rs1:x19(0x0000000008000000)
    li  x19, 0x8000000
    sm3p1 x13, x19
    sd x13, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x0000000008040400)
 
 inst_168:
    // Test 168:  Test with marching zeros/ones
    // result rd:x14(0x0000000010080800), rs1:x18(0x0000000010000000)
    li  x18, 0x10000000
    sm3p1 x14, x18
    sd x14, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x0000000010080800)
 
 inst_169:
    // Test 169:  Test with marching zeros/ones
    // result rd:x15(0x0000000020101000), rs1:x17(0x0000000020000000)
    li  x17, 0x20000000
    sm3p1 x15, x17
    sd x15, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x0000000020101000)


    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x2,signature_35_0)

 
 inst_170:
    // Test 170:  Test with marching zeros/ones
    // result rd:x16(0x0000000040202000), rs1:x16(0x0000000040000000)
    li  x16, 0x40000000
    sm3p1 x16, x16
    sd x16, 0(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x0000000040202000)
 
 inst_171:
    // Test 171:  Test with marching zeros/ones
    // result rd:x17(0x0000000080404000), rs1:x15(0x0000000080000000)
    li  x15, 0x80000000
    sm3p1 x17, x15
    sd x17, 8(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x0000000080404000)
 
 inst_172:
    // Test 172:  Test with marching zeros/ones
    // result rd:x18(0x0000000000000000), rs1:x14(0x0000000100000000)
    li  x14, 0x100000000
    sm3p1 x18, x14
    sd x18, 16(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x0000000000000000)
 
 inst_173:
    // Test 173:  Test with marching zeros/ones
    // result rd:x19(0x0000000000000000), rs1:x13(0x0000000200000000)
    li  x13, 0x200000000
    sm3p1 x19, x13
    sd x19, 24(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x0000000000000000)
 
 inst_174:
    // Test 174:  Test with marching zeros/ones
    // result rd:x20(0x0000000000000000), rs1:x12(0x0000000400000000)
    li  x12, 0x400000000
    sm3p1 x20, x12
    sd x20, 32(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x0000000000000000)


    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_36_0)

 
 inst_175:
    // Test 175:  Test with marching zeros/ones
    // result rd:x21(0x0000000000000000), rs1:x11(0x0000000800000000)
    li  x11, 0x800000000
    sm3p1 x21, x11
    sd x21, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000000000000)
 
 inst_176:
    // Test 176:  Test with marching zeros/ones
    // result rd:x22(0x0000000000000000), rs1:x10(0x0000001000000000)
    li  x10, 0x1000000000
    sm3p1 x22, x10
    sd x22, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000000000000)
 
 inst_177:
    // Test 177:  Test with marching zeros/ones
    // result rd:x23(0x0000000000000000), rs1:x9(0x0000002000000000)
    li  x9, 0x2000000000
    sm3p1 x23, x9
    sd x23, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000000000000)
 
 inst_178:
    // Test 178:  Test with marching zeros/ones
    // result rd:x24(0x0000000000000000), rs1:x8(0x0000004000000000)
    li  x8, 0x4000000000
    sm3p1 x24, x8
    sd x24, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000000000000)
 
 inst_179:
    // Test 179:  Test with marching zeros/ones
    // result rd:x25(0x0000000000000000), rs1:x7(0x0000008000000000)
    li  x7, 0x8000000000
    sm3p1 x25, x7
    sd x25, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000000000000)


    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_37_0)

 
 inst_180:
    // Test 180:  Test with marching zeros/ones
    // result rd:x26(0x0000000000000000), rs1:x6(0x0000010000000000)
    li  x6, 0x10000000000
    sm3p1 x26, x6
    sd x26, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x0000000000000000)
 
 inst_181:
    // Test 181:  Test with marching zeros/ones
    // result rd:x27(0x0000000000000000), rs1:x5(0x0000020000000000)
    li  x5, 0x20000000000
    sm3p1 x27, x5
    sd x27, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x0000000000000000)
 
 inst_182:
    // Test 182:  Test with marching zeros/ones
    // result rd:x28(0x0000000000000000), rs1:x4(0x0000040000000000)
    li  x4, 0x40000000000
    sm3p1 x28, x4
    sd x28, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x0000000000000000)
 
 inst_183:
    // Test 183:  Test with marching zeros/ones
    // result rd:x29(0x0000000000000000), rs1:x3(0x0000080000000000)
    li  x3, 0x80000000000
    sm3p1 x29, x3
    sd x29, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x0000000000000000)
 
 inst_184:
    // Test 184:  Test with marching zeros/ones
    // result rd:x30(0x0000000000000000), rs1:x2(0x0000100000000000)
    li  x2, 0x100000000000
    sm3p1 x30, x2
    sd x30, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000000000000000)


    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x5,signature_38_0)

 
 inst_185:
    // Test 185:  Test with marching zeros/ones
    // result rd:x31(0x0000000000000000), rs1:x1(0x0000200000000000)
    li  x1, 0x200000000000
    sm3p1 x31, x1
    sd x31, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x0000000000000000)
 
 inst_186:
    // Test 186:  Test with marching zeros/ones
    // result rd:x1(0x0000000000000000), rs1:x31(0x0000400000000000)
    li  x31, 0x400000000000
    sm3p1 x1, x31
    sd x1, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x0000000000000000)
 
 inst_187:
    // Test 187:  Test with marching zeros/ones
    // result rd:x2(0x0000000000000000), rs1:x30(0x0000800000000000)
    li  x30, 0x800000000000
    sm3p1 x2, x30
    sd x2, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x0000000000000000)
 
 inst_188:
    // Test 188:  Test with marching zeros/ones
    // result rd:x3(0x0000000000000000), rs1:x29(0x0001000000000000)
    li  x29, 0x1000000000000
    sm3p1 x3, x29
    sd x3, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x0000000000000000)
 
 inst_189:
    // Test 189:  Test with marching zeros/ones
    // result rd:x4(0x0000000000000000), rs1:x28(0x0002000000000000)
    li  x28, 0x2000000000000
    sm3p1 x4, x28
    sd x4, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x0000000000000000)


    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_39_0)

 
 inst_190:
    // Test 190:  Test with marching zeros/ones
    // result rd:x5(0x0000000000000000), rs1:x27(0x0004000000000000)
    li  x27, 0x4000000000000
    sm3p1 x5, x27
    sd x5, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0000000000000000)
 
 inst_191:
    // Test 191:  Test with marching zeros/ones
    // result rd:x6(0x0000000000000000), rs1:x26(0x0008000000000000)
    li  x26, 0x8000000000000
    sm3p1 x6, x26
    sd x6, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000000000000)
 
 inst_192:
    // Test 192:  Test with marching zeros/ones
    // result rd:x7(0x0000000000000000), rs1:x25(0x0010000000000000)
    li  x25, 0x10000000000000
    sm3p1 x7, x25
    sd x7, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000000000000)
 
 inst_193:
    // Test 193:  Test with marching zeros/ones
    // result rd:x8(0x0000000000000000), rs1:x24(0x0020000000000000)
    li  x24, 0x20000000000000
    sm3p1 x8, x24
    sd x8, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000000000000)
 
 inst_194:
    // Test 194:  Test with marching zeros/ones
    // result rd:x9(0x0000000000000000), rs1:x23(0x0040000000000000)
    li  x23, 0x40000000000000
    sm3p1 x9, x23
    sd x9, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000000000000)


    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_40_0)

 
 inst_195:
    // Test 195:  Test with marching zeros/ones
    // result rd:x10(0x0000000000000000), rs1:x22(0x0080000000000000)
    li  x22, 0x80000000000000
    sm3p1 x10, x22
    sd x10, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000000000000)
 
 inst_196:
    // Test 196:  Test with marching zeros/ones
    // result rd:x11(0x0000000000000000), rs1:x21(0x0100000000000000)
    li  x21, 0x100000000000000
    sm3p1 x11, x21
    sd x11, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0000000000000000)
 
 inst_197:
    // Test 197:  Test with marching zeros/ones
    // result rd:x12(0x0000000000000000), rs1:x20(0x0200000000000000)
    li  x20, 0x200000000000000
    sm3p1 x12, x20
    sd x12, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0000000000000000)
 
 inst_198:
    // Test 198:  Test with marching zeros/ones
    // result rd:x13(0x0000000000000000), rs1:x19(0x0400000000000000)
    li  x19, 0x400000000000000
    sm3p1 x13, x19
    sd x13, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0000000000000000)
 
 inst_199:
    // Test 199:  Test with marching zeros/ones
    // result rd:x14(0x0000000000000000), rs1:x18(0x0800000000000000)
    li  x18, 0x800000000000000
    sm3p1 x14, x18
    sd x14, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x0000000000000000)


    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x3,signature_41_0)

 
 inst_200:
    // Test 200:  Test with marching zeros/ones
    // result rd:x15(0x0000000000000000), rs1:x17(0x1000000000000000)
    li  x17, 0x1000000000000000
    sm3p1 x15, x17
    sd x15, 0(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x0000000000000000)
 
 inst_201:
    // Test 201:  Test with marching zeros/ones
    // result rd:x16(0x0000000000000000), rs1:x16(0x2000000000000000)
    li  x16, 0x2000000000000000
    sm3p1 x16, x16
    sd x16, 8(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x0000000000000000)
 
 inst_202:
    // Test 202:  Test with marching zeros/ones
    // result rd:x17(0x0000000000000000), rs1:x15(0x4000000000000000)
    li  x15, 0x4000000000000000
    sm3p1 x17, x15
    sd x17, 16(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x0000000000000000)
 
 inst_203:
    // Test 203:  Test with marching zeros/ones
    // result rd:x18(0x0000000000000000), rs1:x14(0x8000000000000000)
    li  x14, 0x8000000000000000
    sm3p1 x18, x14
    sd x18, 24(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x0000000000000000)
 
 inst_204:
    // Test 204:  Test with marching zeros/ones
    // result rd:x19(0x0000000000000000), rs1:x13(0x0000000000000000)
    li  x13, 0x0
    sm3p1 x19, x13
    sd x19, 32(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x0000000000000000)


    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_42_0)

 
 inst_205:
    // Test 205:  Test with marching zeros/ones
    // result rd:x20(0x00000000ff7f7ffe), rs1:x12(0xfffffffffffffffe)
    li  x12, 0xfffffffffffffffe
    sm3p1 x20, x12
    sd x20, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00000000ff7f7ffe)
 
 inst_206:
    // Test 206:  Test with marching zeros/ones
    // result rd:x21(0x00000000fefefffd), rs1:x11(0xfffffffffffffffd)
    li  x11, 0xfffffffffffffffd
    sm3p1 x21, x11
    sd x21, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000000fefefffd)
 
 inst_207:
    // Test 207:  Test with marching zeros/ones
    // result rd:x22(0x00000000fdfdfffb), rs1:x10(0xfffffffffffffffb)
    li  x10, 0xfffffffffffffffb
    sm3p1 x22, x10
    sd x22, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000fdfdfffb)
 
 inst_208:
    // Test 208:  Test with marching zeros/ones
    // result rd:x23(0x00000000fbfbfff7), rs1:x9(0xfffffffffffffff7)
    li  x9, 0xfffffffffffffff7
    sm3p1 x23, x9
    sd x23, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000000fbfbfff7)
 
 inst_209:
    // Test 209:  Test with marching zeros/ones
    // result rd:x24(0x00000000f7f7ffef), rs1:x8(0xffffffffffffffef)
    li  x8, 0xffffffffffffffef
    sm3p1 x24, x8
    sd x24, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00000000f7f7ffef)


    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_43_0)

 
 inst_210:
    // Test 210:  Test with marching zeros/ones
    // result rd:x25(0x00000000efefffdf), rs1:x7(0xffffffffffffffdf)
    li  x7, 0xffffffffffffffdf
    sm3p1 x25, x7
    sd x25, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000000efefffdf)
 
 inst_211:
    // Test 211:  Test with marching zeros/ones
    // result rd:x26(0x00000000dfdfffbf), rs1:x6(0xffffffffffffffbf)
    li  x6, 0xffffffffffffffbf
    sm3p1 x26, x6
    sd x26, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000000dfdfffbf)
 
 inst_212:
    // Test 212:  Test with marching zeros/ones
    // result rd:x27(0x00000000bfbfff7f), rs1:x5(0xffffffffffffff7f)
    li  x5, 0xffffffffffffff7f
    sm3p1 x27, x5
    sd x27, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00000000bfbfff7f)
 
 inst_213:
    // Test 213:  Test with marching zeros/ones
    // result rd:x28(0x000000007f7ffeff), rs1:x4(0xfffffffffffffeff)
    li  x4, 0xfffffffffffffeff
    sm3p1 x28, x4
    sd x28, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x000000007f7ffeff)
 
 inst_214:
    // Test 214:  Test with marching zeros/ones
    // result rd:x29(0x00000000fefffdfe), rs1:x3(0xfffffffffffffdff)
    li  x3, 0xfffffffffffffdff
    sm3p1 x29, x3
    sd x29, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x00000000fefffdfe)


    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x4,signature_44_0)

 
 inst_215:
    // Test 215:  Test with marching zeros/ones
    // result rd:x30(0x00000000fdfffbfd), rs1:x2(0xfffffffffffffbff)
    li  x2, 0xfffffffffffffbff
    sm3p1 x30, x2
    sd x30, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x00000000fdfffbfd)
 
 inst_216:
    // Test 216:  Test with marching zeros/ones
    // result rd:x31(0x00000000fbfff7fb), rs1:x1(0xfffffffffffff7ff)
    li  x1, 0xfffffffffffff7ff
    sm3p1 x31, x1
    sd x31, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x00000000fbfff7fb)
 
 inst_217:
    // Test 217:  Test with marching zeros/ones
    // result rd:x1(0x00000000f7ffeff7), rs1:x31(0xffffffffffffefff)
    li  x31, 0xffffffffffffefff
    sm3p1 x1, x31
    sd x1, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00000000f7ffeff7)
 
 inst_218:
    // Test 218:  Test with marching zeros/ones
    // result rd:x2(0x00000000efffdfef), rs1:x30(0xffffffffffffdfff)
    li  x30, 0xffffffffffffdfff
    sm3p1 x2, x30
    sd x2, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00000000efffdfef)
 
 inst_219:
    // Test 219:  Test with marching zeros/ones
    // result rd:x3(0x00000000dfffbfdf), rs1:x29(0xffffffffffffbfff)
    li  x29, 0xffffffffffffbfff
    sm3p1 x3, x29
    sd x3, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x00000000dfffbfdf)


    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_45_0)

 
 inst_220:
    // Test 220:  Test with marching zeros/ones
    // result rd:x4(0x00000000bfff7fbf), rs1:x28(0xffffffffffff7fff)
    li  x28, 0xffffffffffff7fff
    sm3p1 x4, x28
    sd x4, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00000000bfff7fbf)
 
 inst_221:
    // Test 221:  Test with marching zeros/ones
    // result rd:x5(0x000000007ffeff7f), rs1:x27(0xfffffffffffeffff)
    li  x27, 0xfffffffffffeffff
    sm3p1 x5, x27
    sd x5, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x000000007ffeff7f)
 
 inst_222:
    // Test 222:  Test with marching zeros/ones
    // result rd:x6(0x00000000fffdfefe), rs1:x26(0xfffffffffffdffff)
    li  x26, 0xfffffffffffdffff
    sm3p1 x6, x26
    sd x6, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00000000fffdfefe)
 
 inst_223:
    // Test 223:  Test with marching zeros/ones
    // result rd:x7(0x00000000fffbfdfd), rs1:x25(0xfffffffffffbffff)
    li  x25, 0xfffffffffffbffff
    sm3p1 x7, x25
    sd x7, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000000fffbfdfd)
 
 inst_224:
    // Test 224:  Test with marching zeros/ones
    // result rd:x8(0x00000000fff7fbfb), rs1:x24(0xfffffffffff7ffff)
    li  x24, 0xfffffffffff7ffff
    sm3p1 x8, x24
    sd x8, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000000fff7fbfb)


    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_46_0)

 
 inst_225:
    // Test 225:  Test with marching zeros/ones
    // result rd:x9(0x00000000ffeff7f7), rs1:x23(0xffffffffffefffff)
    li  x23, 0xffffffffffefffff
    sm3p1 x9, x23
    sd x9, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000000ffeff7f7)
 
 inst_226:
    // Test 226:  Test with marching zeros/ones
    // result rd:x10(0x00000000ffdfefef), rs1:x22(0xffffffffffdfffff)
    li  x22, 0xffffffffffdfffff
    sm3p1 x10, x22
    sd x10, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000ffdfefef)
 
 inst_227:
    // Test 227:  Test with marching zeros/ones
    // result rd:x11(0x00000000ffbfdfdf), rs1:x21(0xffffffffffbfffff)
    li  x21, 0xffffffffffbfffff
    sm3p1 x11, x21
    sd x11, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00000000ffbfdfdf)
 
 inst_228:
    // Test 228:  Test with marching zeros/ones
    // result rd:x12(0x00000000ff7fbfbf), rs1:x20(0xffffffffff7fffff)
    li  x20, 0xffffffffff7fffff
    sm3p1 x12, x20
    sd x12, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000ff7fbfbf)
 
 inst_229:
    // Test 229:  Test with marching zeros/ones
    // result rd:x13(0x00000000feff7f7f), rs1:x19(0xfffffffffeffffff)
    li  x19, 0xfffffffffeffffff
    sm3p1 x13, x19
    sd x13, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x00000000feff7f7f)


    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x4,signature_47_0)

 
 inst_230:
    // Test 230:  Test with marching zeros/ones
    // result rd:x14(0x00000000fdfefeff), rs1:x18(0xfffffffffdffffff)
    li  x18, 0xfffffffffdffffff
    sm3p1 x14, x18
    sd x14, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0x00000000fdfefeff)
 
 inst_231:
    // Test 231:  Test with marching zeros/ones
    // result rd:x15(0x00000000fbfdfdff), rs1:x17(0xfffffffffbffffff)
    li  x17, 0xfffffffffbffffff
    sm3p1 x15, x17
    sd x15, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x00000000fbfdfdff)
 
 inst_232:
    // Test 232:  Test with marching zeros/ones
    // result rd:x16(0x00000000f7fbfbff), rs1:x16(0xfffffffff7ffffff)
    li  x16, 0xfffffffff7ffffff
    sm3p1 x16, x16
    sd x16, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x00000000f7fbfbff)
 
 inst_233:
    // Test 233:  Test with marching zeros/ones
    // result rd:x17(0x00000000eff7f7ff), rs1:x15(0xffffffffefffffff)
    li  x15, 0xffffffffefffffff
    sm3p1 x17, x15
    sd x17, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x00000000eff7f7ff)
 
 inst_234:
    // Test 234:  Test with marching zeros/ones
    // result rd:x18(0x00000000dfefefff), rs1:x14(0xffffffffdfffffff)
    li  x14, 0xffffffffdfffffff
    sm3p1 x18, x14
    sd x18, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x00000000dfefefff)


    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_48_0)

 
 inst_235:
    // Test 235:  Test with marching zeros/ones
    // result rd:x19(0x00000000bfdfdfff), rs1:x13(0xffffffffbfffffff)
    li  x13, 0xffffffffbfffffff
    sm3p1 x19, x13
    sd x19, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x00000000bfdfdfff)
 
 inst_236:
    // Test 236:  Test with marching zeros/ones
    // result rd:x20(0x000000007fbfbfff), rs1:x12(0xffffffff7fffffff)
    li  x12, 0xffffffff7fffffff
    sm3p1 x20, x12
    sd x20, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x000000007fbfbfff)
 
 inst_237:
    // Test 237:  Test with marching zeros/ones
    // result rd:x21(0x00000000ffffffff), rs1:x11(0xfffffffeffffffff)
    li  x11, 0xfffffffeffffffff
    sm3p1 x21, x11
    sd x21, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000000ffffffff)
 
 inst_238:
    // Test 238:  Test with marching zeros/ones
    // result rd:x22(0x00000000ffffffff), rs1:x10(0xfffffffdffffffff)
    li  x10, 0xfffffffdffffffff
    sm3p1 x22, x10
    sd x22, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000ffffffff)
 
 inst_239:
    // Test 239:  Test with marching zeros/ones
    // result rd:x23(0x00000000ffffffff), rs1:x9(0xfffffffbffffffff)
    li  x9, 0xfffffffbffffffff
    sm3p1 x23, x9
    sd x23, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000000ffffffff)


    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_49_0)

 
 inst_240:
    // Test 240:  Test with marching zeros/ones
    // result rd:x24(0x00000000ffffffff), rs1:x8(0xfffffff7ffffffff)
    li  x8, 0xfffffff7ffffffff
    sm3p1 x24, x8
    sd x24, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00000000ffffffff)
 
 inst_241:
    // Test 241:  Test with marching zeros/ones
    // result rd:x25(0x00000000ffffffff), rs1:x7(0xffffffefffffffff)
    li  x7, 0xffffffefffffffff
    sm3p1 x25, x7
    sd x25, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000000ffffffff)
 
 inst_242:
    // Test 242:  Test with marching zeros/ones
    // result rd:x26(0x00000000ffffffff), rs1:x6(0xffffffdfffffffff)
    li  x6, 0xffffffdfffffffff
    sm3p1 x26, x6
    sd x26, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000000ffffffff)
 
 inst_243:
    // Test 243:  Test with marching zeros/ones
    // result rd:x27(0x00000000ffffffff), rs1:x5(0xffffffbfffffffff)
    li  x5, 0xffffffbfffffffff
    sm3p1 x27, x5
    sd x27, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00000000ffffffff)
 
 inst_244:
    // Test 244:  Test with marching zeros/ones
    // result rd:x28(0x00000000ffffffff), rs1:x4(0xffffff7fffffffff)
    li  x4, 0xffffff7fffffffff
    sm3p1 x28, x4
    sd x28, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x00000000ffffffff)


    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x4,signature_50_0)

 
 inst_245:
    // Test 245:  Test with marching zeros/ones
    // result rd:x29(0x00000000ffffffff), rs1:x3(0xfffffeffffffffff)
    li  x3, 0xfffffeffffffffff
    sm3p1 x29, x3
    sd x29, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x00000000ffffffff)
 
 inst_246:
    // Test 246:  Test with marching zeros/ones
    // result rd:x30(0x00000000ffffffff), rs1:x2(0xfffffdffffffffff)
    li  x2, 0xfffffdffffffffff
    sm3p1 x30, x2
    sd x30, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x00000000ffffffff)
 
 inst_247:
    // Test 247:  Test with marching zeros/ones
    // result rd:x31(0x00000000ffffffff), rs1:x1(0xfffffbffffffffff)
    li  x1, 0xfffffbffffffffff
    sm3p1 x31, x1
    sd x31, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x00000000ffffffff)
 
 inst_248:
    // Test 248:  Test with marching zeros/ones
    // result rd:x1(0x00000000ffffffff), rs1:x31(0xfffff7ffffffffff)
    li  x31, 0xfffff7ffffffffff
    sm3p1 x1, x31
    sd x1, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00000000ffffffff)
 
 inst_249:
    // Test 249:  Test with marching zeros/ones
    // result rd:x2(0x00000000ffffffff), rs1:x30(0xffffefffffffffff)
    li  x30, 0xffffefffffffffff
    sm3p1 x2, x30
    sd x2, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00000000ffffffff)


    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_51_0)

 
 inst_250:
    // Test 250:  Test with marching zeros/ones
    // result rd:x3(0x00000000ffffffff), rs1:x29(0xffffdfffffffffff)
    li  x29, 0xffffdfffffffffff
    sm3p1 x3, x29
    sd x3, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x00000000ffffffff)
 
 inst_251:
    // Test 251:  Test with marching zeros/ones
    // result rd:x4(0x00000000ffffffff), rs1:x28(0xffffbfffffffffff)
    li  x28, 0xffffbfffffffffff
    sm3p1 x4, x28
    sd x4, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00000000ffffffff)
 
 inst_252:
    // Test 252:  Test with marching zeros/ones
    // result rd:x5(0x00000000ffffffff), rs1:x27(0xffff7fffffffffff)
    li  x27, 0xffff7fffffffffff
    sm3p1 x5, x27
    sd x5, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00000000ffffffff)
 
 inst_253:
    // Test 253:  Test with marching zeros/ones
    // result rd:x6(0x00000000ffffffff), rs1:x26(0xfffeffffffffffff)
    li  x26, 0xfffeffffffffffff
    sm3p1 x6, x26
    sd x6, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00000000ffffffff)
 
 inst_254:
    // Test 254:  Test with marching zeros/ones
    // result rd:x7(0x00000000ffffffff), rs1:x25(0xfffdffffffffffff)
    li  x25, 0xfffdffffffffffff
    sm3p1 x7, x25
    sd x7, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000000ffffffff)


    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_52_0)

 
 inst_255:
    // Test 255:  Test with marching zeros/ones
    // result rd:x8(0x00000000ffffffff), rs1:x24(0xfffbffffffffffff)
    li  x24, 0xfffbffffffffffff
    sm3p1 x8, x24
    sd x8, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000000ffffffff)
 
 inst_256:
    // Test 256:  Test with marching zeros/ones
    // result rd:x9(0x00000000ffffffff), rs1:x23(0xfff7ffffffffffff)
    li  x23, 0xfff7ffffffffffff
    sm3p1 x9, x23
    sd x9, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000000ffffffff)
 
 inst_257:
    // Test 257:  Test with marching zeros/ones
    // result rd:x10(0x00000000ffffffff), rs1:x22(0xffefffffffffffff)
    li  x22, 0xffefffffffffffff
    sm3p1 x10, x22
    sd x10, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000ffffffff)
 
 inst_258:
    // Test 258:  Test with marching zeros/ones
    // result rd:x11(0x00000000ffffffff), rs1:x21(0xffdfffffffffffff)
    li  x21, 0xffdfffffffffffff
    sm3p1 x11, x21
    sd x11, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00000000ffffffff)
 
 inst_259:
    // Test 259:  Test with marching zeros/ones
    // result rd:x12(0x00000000ffffffff), rs1:x20(0xffbfffffffffffff)
    li  x20, 0xffbfffffffffffff
    sm3p1 x12, x20
    sd x12, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000ffffffff)


    
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x5,signature_53_0)

 
 inst_260:
    // Test 260:  Test with marching zeros/ones
    // result rd:x13(0x00000000ffffffff), rs1:x19(0xff7fffffffffffff)
    li  x19, 0xff7fffffffffffff
    sm3p1 x13, x19
    sd x13, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x00000000ffffffff)
 
 inst_261:
    // Test 261:  Test with marching zeros/ones
    // result rd:x14(0x00000000ffffffff), rs1:x18(0xfeffffffffffffff)
    li  x18, 0xfeffffffffffffff
    sm3p1 x14, x18
    sd x14, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x00000000ffffffff)
 
 inst_262:
    // Test 262:  Test with marching zeros/ones
    // result rd:x15(0x00000000ffffffff), rs1:x17(0xfdffffffffffffff)
    li  x17, 0xfdffffffffffffff
    sm3p1 x15, x17
    sd x15, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x00000000ffffffff)
 
 inst_263:
    // Test 263:  Test with marching zeros/ones
    // result rd:x16(0x00000000ffffffff), rs1:x16(0xfbffffffffffffff)
    li  x16, 0xfbffffffffffffff
    sm3p1 x16, x16
    sd x16, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x00000000ffffffff)
 
 inst_264:
    // Test 264:  Test with marching zeros/ones
    // result rd:x17(0x00000000ffffffff), rs1:x15(0xf7ffffffffffffff)
    li  x15, 0xf7ffffffffffffff
    sm3p1 x17, x15
    sd x17, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0x00000000ffffffff)


    
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_54_0)

 
 inst_265:
    // Test 265:  Test with marching zeros/ones
    // result rd:x18(0x00000000ffffffff), rs1:x14(0xefffffffffffffff)
    li  x14, 0xefffffffffffffff
    sm3p1 x18, x14
    sd x18, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x00000000ffffffff)
 
 inst_266:
    // Test 266:  Test with marching zeros/ones
    // result rd:x19(0x00000000ffffffff), rs1:x13(0xdfffffffffffffff)
    li  x13, 0xdfffffffffffffff
    sm3p1 x19, x13
    sd x19, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x00000000ffffffff)
 
 inst_267:
    // Test 267:  Test with marching zeros/ones
    // result rd:x20(0x00000000ffffffff), rs1:x12(0xbfffffffffffffff)
    li  x12, 0xbfffffffffffffff
    sm3p1 x20, x12
    sd x20, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00000000ffffffff)
 
 inst_268:
    // Test 268:  Test with marching zeros/ones
    // result rd:x21(0x00000000ffffffff), rs1:x11(0x7fffffffffffffff)
    li  x11, 0x7fffffffffffffff
    sm3p1 x21, x11
    sd x21, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000000ffffffff)
 
 inst_269:
    // Test 269:  Test with marching zeros/ones
    // result rd:x22(0x00000000ffffffff), rs1:x10(0xffffffffffffffff)
    li  x10, 0xffffffffffffffff
    sm3p1 x22, x10
    sd x22, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000ffffffff)


    
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm3p1)

    RVTEST_SIGBASE(x1,signature_55_0)

 
 inst_270:
    // Test 270:  Test with random values
    // result rd:x23(0x000000004ff67248), rs1:x9(0x10fd3dedadea5195)
    li  x9, 0x10fd3dedadea5195
    sm3p1 x23, x9
    sd x23, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x000000004ff67248)
 
 inst_271:
    // Test 271:  Test with rd == x0
    // result rd:x0(0x0000000000000000), rs1:x8(0xbd295ce2d2ffbec1)
    li  x8, 0xbd295ce2d2ffbec1
    sm3p1 x0, x8
    sd x0, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x0000000000000000)
 
 inst_272:
    // Test 272:  Test with rs2 == x0
    // result rd:x25(0x0000000021680c1f), rs1:x7(0xc9649f05a8e1a8bb)
    li  x7, 0xc9649f05a8e1a8bb
    sm3p1 x25, x7
    sd x25, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000021680c1f)
 
 inst_273:
    // Test 273:  Test with rs1 == x0
    // result rd:x26(0x0000000000000000), rs1:x0(0x3541291848c99fcb)
    li  x0, 0x3541291848c99fcb
    sm3p1 x26, x0
    sd x26, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0000000000000000)
	
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe

# Input data section.
	.data

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

