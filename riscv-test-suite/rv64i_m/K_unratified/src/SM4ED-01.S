// RISC-V Architectural Validation Test SM4ED-01
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


    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with random values
    // result rd:x1(0x000000005f803b0d), rs1=>rd:x1(0x10fd3dedadea5195), rs2:x16(0xdf7f3844121bcc23), imm:0x3
    TEST_RI_OP(sm4ed, x1, x16, 0x3, 0x000000005f803b0d, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x6, 0, x7)

inst_1:
    // Test 1:  Test with random values
    // result rd:x2(0x0000000058f5b441), rs1=>rd:x2(0xbd295ce2d2ffbec1), rs2:x15(0xf5adb41aa47d105b), imm:0x3
    TEST_RI_OP(sm4ed, x2, x15, 0x3, 0x0000000058f5b441, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x6, 8, x7)

inst_2:
    // Test 2:  Test with random values
    // result rd:x3(0x000000009ed72702), rs1=>rd:x3(0xc9649f05a8e1a8bb), rs2:x14(0x82f6747f707af2c0), imm:0x0
    TEST_RI_OP(sm4ed, x3, x14, 0x0, 0x000000009ed72702, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x6, 16, x7)

inst_3:
    // Test 3:  Test with random values
    // result rd:x4(0x00000000856c3aa3), rs1=>rd:x4(0x3541291848c99fcb), rs2:x13(0x73a92fd4e19bfbc3), imm:0x3
    TEST_RI_OP(sm4ed, x4, x13, 0x3, 0x00000000856c3aa3, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x6, 24, x7)

inst_4:
    // Test 4:  Test with random values
    // result rd:x5(0x00000000c31b54cc), rs1=>rd:x5(0x10a24740461d524f), rs2:x12(0x546b0e54528a10af), imm:0x3
    TEST_RI_OP(sm4ed, x5, x12, 0x3, 0x00000000c31b54cc, 0x10a24740461d524f, 0x546b0e54528a10af, x6, 32, x7)


    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with random values
    // result rd:x6(0x0000000019d64cb8), rs1=>rd:x6(0x546b0e54528a10af), rs2:x11(0x10a24740461d524f), imm:0x3
    TEST_RI_OP(sm4ed, x6, x11, 0x3, 0x0000000019d64cb8, 0x546b0e54528a10af, 0x10a24740461d524f, x1, 0, x2)

inst_6:
    // Test 6:  Test with random values
    // result rd:x7(0x000000006e95f542), rs1=>rd:x7(0x73a92fd4e19bfbc3), rs2:x10(0x3541291848c99fcb), imm:0x3
    TEST_RI_OP(sm4ed, x7, x10, 0x3, 0x000000006e95f542, 0x73a92fd4e19bfbc3, 0x3541291848c99fcb, x1, 8, x2)

inst_7:
    // Test 7:  Test with random values
    // result rd:x8(0x00000000b079f103), rs1=>rd:x8(0x82f6747f707af2c0), rs2:x9(0xc9649f05a8e1a8bb), imm:0x3
    TEST_RI_OP(sm4ed, x8, x9, 0x3, 0x00000000b079f103, 0x82f6747f707af2c0, 0xc9649f05a8e1a8bb, x1, 16, x2)

inst_8:
    // Test 8:  Test with random values
    // result rd:x9(0x00000000c9272736), rs1=>rd:x9(0xf5adb41aa47d105b), rs2:x8(0xbd295ce2d2ffbec1), imm:0x1
    TEST_RI_OP(sm4ed, x9, x8, 0x1, 0x00000000c9272736, 0xf5adb41aa47d105b, 0xbd295ce2d2ffbec1, x1, 24, x2)

inst_9:
    // Test 9:  Test with random values
    // result rd:x10(0x00000000bf710b8e), rs1=>rd:x10(0xdf7f3844121bcc23), rs2:x7(0x10fd3dedadea5195), imm:0x1
    TEST_RI_OP(sm4ed, x10, x7, 0x1, 0x00000000bf710b8e, 0xdf7f3844121bcc23, 0x10fd3dedadea5195, x1, 32, x2)


    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with marching zeros/ones
    // result rd:x11(0x0000000068212148), rs1=>rd:x11(0x0000000000000001), rs2:x6(0xffffffffffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x11, x6, 0x3, 0x0000000068212148, 0x0000000000000001, 0xffffffffffffffff, x1, 0, x7)

inst_11:
    // Test 11:  Test with marching zeros/ones
    // result rd:x12(0x0000000021496823), rs1=>rd:x12(0x0000000000000002), rs2:x5(0x7fffffffffffffff), imm:0x1
    TEST_RI_OP(sm4ed, x12, x5, 0x1, 0x0000000021496823, 0x0000000000000002, 0x7fffffffffffffff, x1, 8, x7)

inst_12:
    // Test 12:  Test with marching zeros/ones
    // result rd:x13(0x0000000049682125), rs1=>rd:x13(0x0000000000000004), rs2:x4(0xbfffffffffffffff), imm:0x2
    TEST_RI_OP(sm4ed, x13, x4, 0x2, 0x0000000049682125, 0x0000000000000004, 0xbfffffffffffffff, x1, 16, x7)

inst_13:
    // Test 13:  Test with marching zeros/ones
    // result rd:x14(0x0000000021214960), rs1=>rd:x14(0x0000000000000008), rs2:x3(0xdfffffffffffffff), imm:0x0
    TEST_RI_OP(sm4ed, x14, x3, 0x0, 0x0000000021214960, 0x0000000000000008, 0xdfffffffffffffff, x1, 24, x7)

inst_14:
    // Test 14:  Test with marching zeros/ones
    // result rd:x15(0x0000000049682131), rs1=>rd:x15(0x0000000000000010), rs2:x2(0xefffffffffffffff), imm:0x2
    TEST_RI_OP(sm4ed, x15, x2, 0x2, 0x0000000049682131, 0x0000000000000010, 0xefffffffffffffff, x1, 32, x7)


    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with marching zeros/ones
    // result rd:x16(0x0000000021496801), rs1=>rd:x16(0x0000000000000020), rs2:x1(0xf7ffffffffffffff), imm:0x1
    TEST_RI_OP(sm4ed, x16, x1, 0x1, 0x0000000021496801, 0x0000000000000020, 0xf7ffffffffffffff, x2, 0, x3)

inst_16:
    // Test 16:  Test with marching zeros/ones
    // result rd:x17(0x0000000068212109), rs1=>rd:x17(0x0000000000000040), rs2:x31(0xfbffffffffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x17, x31, 0x3, 0x0000000068212109, 0x0000000000000040, 0xfbffffffffffffff, x2, 8, x3)

inst_17:
    // Test 17:  Test with marching zeros/ones
    // result rd:x18(0x00000000682121c9), rs1=>rd:x18(0x0000000000000080), rs2:x30(0xfdffffffffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x18, x30, 0x3, 0x00000000682121c9, 0x0000000000000080, 0xfdffffffffffffff, x2, 16, x3)

inst_18:
    // Test 18:  Test with marching zeros/ones
    // result rd:x19(0x0000000021214868), rs1=>rd:x19(0x0000000000000100), rs2:x29(0xfeffffffffffffff), imm:0x0
    TEST_RI_OP(sm4ed, x19, x29, 0x0, 0x0000000021214868, 0x0000000000000100, 0xfeffffffffffffff, x2, 24, x3)

inst_19:
    // Test 19:  Test with marching zeros/ones
    // result rd:x20(0x0000000068212349), rs1=>rd:x20(0x0000000000000200), rs2:x28(0xff7fffffffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x20, x28, 0x3, 0x0000000068212349, 0x0000000000000200, 0xff7fffffffffffff, x2, 32, x3)


    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with marching zeros/ones
    // result rd:x21(0x0000000068212549), rs1=>rd:x21(0x0000000000000400), rs2:x27(0xffbfffffffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x21, x27, 0x3, 0x0000000068212549, 0x0000000000000400, 0xffbfffffffffffff, x1, 0, x2)

inst_21:
    // Test 21:  Test with marching zeros/ones
    // result rd:x22(0x0000000068212949), rs1=>rd:x22(0x0000000000000800), rs2:x26(0xffdfffffffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x22, x26, 0x3, 0x0000000068212949, 0x0000000000000800, 0xffdfffffffffffff, x1, 8, x2)

inst_22:
    // Test 22:  Test with marching zeros/ones
    // result rd:x23(0x0000000068213149), rs1=>rd:x23(0x0000000000001000), rs2:x25(0xffefffffffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x23, x25, 0x3, 0x0000000068213149, 0x0000000000001000, 0xffefffffffffffff, x1, 16, x2)

inst_23:
    // Test 23:  Test with marching zeros/ones
    // result rd:x24(0x0000000097dedeb6), rs1=>rd:x24(0x0000000000002000), rs2:x24(0xfff7ffffffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x24, x24, 0x3, 0x0000000097dedeb6, 0x0000000000002000, 0xfff7ffffffffffff, x1, 24, x2)

inst_24:
    // Test 24:  Test with marching zeros/ones
    // result rd:x25(0x0000000021492821), rs1=>rd:x25(0x0000000000004000), rs2:x23(0xfffbffffffffffff), imm:0x1
    TEST_RI_OP(sm4ed, x25, x23, 0x1, 0x0000000021492821, 0x0000000000004000, 0xfffbffffffffffff, x1, 32, x2)


    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with marching zeros/ones
    // result rd:x26(0x000000002149e821), rs1=>rd:x26(0x0000000000008000), rs2:x22(0xfffdffffffffffff), imm:0x1
    TEST_RI_OP(sm4ed, x26, x22, 0x1, 0x000000002149e821, 0x0000000000008000, 0xfffdffffffffffff, x1, 0, x7)

inst_26:
    // Test 26:  Test with marching zeros/ones
    // result rd:x27(0x0000000068202149), rs1=>rd:x27(0x0000000000010000), rs2:x21(0xfffeffffffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x27, x21, 0x3, 0x0000000068202149, 0x0000000000010000, 0xfffeffffffffffff, x1, 8, x7)

inst_27:
    // Test 27:  Test with marching zeros/ones
    // result rd:x28(0x00000000214b6821), rs1=>rd:x28(0x0000000000020000), rs2:x20(0xffff7fffffffffff), imm:0x1
    TEST_RI_OP(sm4ed, x28, x20, 0x1, 0x00000000214b6821, 0x0000000000020000, 0xffff7fffffffffff, x1, 16, x7)

inst_28:
    // Test 28:  Test with marching zeros/ones
    // result rd:x29(0x00000000496c2121), rs1=>rd:x29(0x0000000000040000), rs2:x19(0xffffbfffffffffff), imm:0x2
    TEST_RI_OP(sm4ed, x29, x19, 0x2, 0x00000000496c2121, 0x0000000000040000, 0xffffbfffffffffff, x1, 24, x7)

inst_29:
    // Test 29:  Test with marching zeros/ones
    // result rd:x30(0x0000000021294968), rs1=>rd:x30(0x0000000000080000), rs2:x18(0xffffdfffffffffff), imm:0x0
    TEST_RI_OP(sm4ed, x30, x18, 0x0, 0x0000000021294968, 0x0000000000080000, 0xffffdfffffffffff, x1, 32, x7)


    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with marching zeros/ones
    // result rd:x31(0x0000000049782121), rs1=>rd:x31(0x0000000000100000), rs2:x17(0xffffefffffffffff), imm:0x2
    TEST_RI_OP(sm4ed, x31, x17, 0x2, 0x0000000049782121, 0x0000000000100000, 0xffffefffffffffff, x5, 0, x6)

inst_31:
    // Test 31:  Test with marching zeros/ones
    // result rd:x1(0x0000000021696821), rs1=>rd:x1(0x0000000000200000), rs2:x16(0xfffff7ffffffffff), imm:0x1
    TEST_RI_OP(sm4ed, x1, x16, 0x1, 0x0000000021696821, 0x0000000000200000, 0xfffff7ffffffffff, x5, 8, x6)

inst_32:
    // Test 32:  Test with marching zeros/ones
    // result rd:x2(0x0000000068612149), rs1=>rd:x2(0x0000000000400000), rs2:x15(0xfffffbffffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x2, x15, 0x3, 0x0000000068612149, 0x0000000000400000, 0xfffffbffffffffff, x5, 16, x6)

inst_33:
    // Test 33:  Test with marching zeros/ones
    // result rd:x3(0x0000000068a12149), rs1=>rd:x3(0x0000000000800000), rs2:x14(0xfffffdffffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x3, x14, 0x3, 0x0000000068a12149, 0x0000000000800000, 0xfffffdffffffffff, x5, 24, x6)

inst_34:
    // Test 34:  Test with marching zeros/ones
    // result rd:x4(0x0000000020214968), rs1=>rd:x4(0x0000000001000000), rs2:x13(0xfffffeffffffffff), imm:0x0
    TEST_RI_OP(sm4ed, x4, x13, 0x0, 0x0000000020214968, 0x0000000001000000, 0xfffffeffffffffff, x5, 32, x6)


    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with marching zeros/ones
    // result rd:x5(0x000000006a212149), rs1=>rd:x5(0x0000000002000000), rs2:x12(0xffffff7fffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x5, x12, 0x3, 0x000000006a212149, 0x0000000002000000, 0xffffff7fffffffff, x1, 0, x2)

inst_36:
    // Test 36:  Test with marching zeros/ones
    // result rd:x6(0x000000006c212149), rs1=>rd:x6(0x0000000004000000), rs2:x11(0xffffffbfffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x6, x11, 0x3, 0x000000006c212149, 0x0000000004000000, 0xffffffbfffffffff, x1, 8, x2)

inst_37:
    // Test 37:  Test with marching zeros/ones
    // result rd:x7(0x0000000060212149), rs1=>rd:x7(0x0000000008000000), rs2:x10(0xffffffdfffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x7, x10, 0x3, 0x0000000060212149, 0x0000000008000000, 0xffffffdfffffffff, x1, 16, x2)

inst_38:
    // Test 38:  Test with marching zeros/ones
    // result rd:x8(0x0000000078212149), rs1=>rd:x8(0x0000000010000000), rs2:x9(0xffffffefffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x8, x9, 0x3, 0x0000000078212149, 0x0000000010000000, 0xffffffefffffffff, x1, 24, x2)

inst_39:
    // Test 39:  Test with marching zeros/ones
    // result rd:x9(0x0000000048212149), rs1=>rd:x9(0x0000000020000000), rs2:x8(0xfffffff7ffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x9, x8, 0x3, 0x0000000048212149, 0x0000000020000000, 0xfffffff7ffffffff, x1, 32, x2)


    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with marching zeros/ones
    // result rd:x10(0x0000000061496821), rs1=>rd:x10(0x0000000040000000), rs2:x7(0xfffffffbffffffff), imm:0x1
    TEST_RI_OP(sm4ed, x10, x7, 0x1, 0x0000000061496821, 0x0000000040000000, 0xfffffffbffffffff, x1, 0, x2)

inst_41:
    // Test 41:  Test with marching zeros/ones
    // result rd:x11(0x00000000a1496821), rs1=>rd:x11(0x0000000080000000), rs2:x6(0xfffffffdffffffff), imm:0x1
    TEST_RI_OP(sm4ed, x11, x6, 0x1, 0x00000000a1496821, 0x0000000080000000, 0xfffffffdffffffff, x1, 8, x2)

inst_42:
    // Test 42:  Test with marching zeros/ones
    // result rd:x12(0x0000000068212149), rs1=>rd:x12(0x0000000100000000), rs2:x5(0xfffffffeffffffff), imm:0x3
    TEST_RI_OP(sm4ed, x12, x5, 0x3, 0x0000000068212149, 0x0000000100000000, 0xfffffffeffffffff, x1, 16, x2)

inst_43:
    // Test 43:  Test with marching zeros/ones
    // result rd:x13(0x0000000021496821), rs1=>rd:x13(0x0000000200000000), rs2:x4(0xffffffff7fffffff), imm:0x1
    TEST_RI_OP(sm4ed, x13, x4, 0x1, 0x0000000021496821, 0x0000000200000000, 0xffffffff7fffffff, x1, 24, x2)

inst_44:
    // Test 44:  Test with marching zeros/ones
    // result rd:x14(0x0000000049682121), rs1=>rd:x14(0x0000000400000000), rs2:x3(0xffffffffbfffffff), imm:0x2
    TEST_RI_OP(sm4ed, x14, x3, 0x2, 0x0000000049682121, 0x0000000400000000, 0xffffffffbfffffff, x1, 32, x2)


    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with marching zeros/ones
    // result rd:x15(0x0000000021214968), rs1=>rd:x15(0x0000000800000000), rs2:x2(0xffffffffdfffffff), imm:0x0
    TEST_RI_OP(sm4ed, x15, x2, 0x0, 0x0000000021214968, 0x0000000800000000, 0xffffffffdfffffff, x3, 0, x4)

inst_46:
    // Test 46:  Test with marching zeros/ones
    // result rd:x16(0x0000000049682121), rs1=>rd:x16(0x0000001000000000), rs2:x1(0xffffffffefffffff), imm:0x2
    TEST_RI_OP(sm4ed, x16, x1, 0x2, 0x0000000049682121, 0x0000001000000000, 0xffffffffefffffff, x3, 8, x4)

inst_47:
    // Test 47:  Test with marching zeros/ones
    // result rd:x17(0x0000000021496821), rs1=>rd:x17(0x0000002000000000), rs2:x31(0xfffffffff7ffffff), imm:0x1
    TEST_RI_OP(sm4ed, x17, x31, 0x1, 0x0000000021496821, 0x0000002000000000, 0xfffffffff7ffffff, x3, 16, x4)

inst_48:
    // Test 48:  Test with marching zeros/ones
    // result rd:x18(0x00000000c6f8f83e), rs1=>rd:x18(0x0000004000000000), rs2:x30(0xfffffffffbffffff), imm:0x3
    TEST_RI_OP(sm4ed, x18, x30, 0x3, 0x00000000c6f8f83e, 0x0000004000000000, 0xfffffffffbffffff, x3, 24, x4)

inst_49:
    // Test 49:  Test with marching zeros/ones
    // result rd:x19(0x00000000e72f2fc8), rs1=>rd:x19(0x0000008000000000), rs2:x29(0xfffffffffdffffff), imm:0x3
    TEST_RI_OP(sm4ed, x19, x29, 0x3, 0x00000000e72f2fc8, 0x0000008000000000, 0xfffffffffdffffff, x3, 32, x4)


    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with marching zeros/ones
    // result rd:x20(0x0000000021214968), rs1=>rd:x20(0x0000010000000000), rs2:x28(0xfffffffffeffffff), imm:0x0
    TEST_RI_OP(sm4ed, x20, x28, 0x0, 0x0000000021214968, 0x0000010000000000, 0xfffffffffeffffff, x1, 0, x2)

inst_51:
    // Test 51:  Test with marching zeros/ones
    // result rd:x21(0x0000000068212149), rs1=>rd:x21(0x0000020000000000), rs2:x27(0xffffffffff7fffff), imm:0x3
    TEST_RI_OP(sm4ed, x21, x27, 0x3, 0x0000000068212149, 0x0000020000000000, 0xffffffffff7fffff, x1, 8, x2)

inst_52:
    // Test 52:  Test with marching zeros/ones
    // result rd:x22(0x0000000068212149), rs1=>rd:x22(0x0000040000000000), rs2:x26(0xffffffffffbfffff), imm:0x3
    TEST_RI_OP(sm4ed, x22, x26, 0x3, 0x0000000068212149, 0x0000040000000000, 0xffffffffffbfffff, x1, 16, x2)

inst_53:
    // Test 53:  Test with marching zeros/ones
    // result rd:x23(0x0000000068212149), rs1=>rd:x23(0x0000080000000000), rs2:x25(0xffffffffffdfffff), imm:0x3
    TEST_RI_OP(sm4ed, x23, x25, 0x3, 0x0000000068212149, 0x0000080000000000, 0xffffffffffdfffff, x1, 24, x2)

inst_54:
    // Test 54:  Test with marching zeros/ones
    // result rd:x24(0x0000000097cedeb6), rs1=>rd:x24(0x0000100000000000), rs2:x24(0xffffffffffefffff), imm:0x3
    TEST_RI_OP(sm4ed, x24, x24, 0x3, 0x0000000097cedeb6, 0x0000100000000000, 0xffffffffffefffff, x1, 32, x2)


    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with marching zeros/ones
    // result rd:x25(0x0000000068212149), rs1=>rd:x25(0x0000200000000000), rs2:x23(0xfffffffffff7ffff), imm:0x3
    TEST_RI_OP(sm4ed, x25, x23, 0x3, 0x0000000068212149, 0x0000200000000000, 0xfffffffffff7ffff, x1, 0, x2)

inst_56:
    // Test 56:  Test with marching zeros/ones
    // result rd:x26(0x0000000021496821), rs1=>rd:x26(0x0000400000000000), rs2:x22(0xfffffffffffbffff), imm:0x1
    TEST_RI_OP(sm4ed, x26, x22, 0x1, 0x0000000021496821, 0x0000400000000000, 0xfffffffffffbffff, x1, 8, x2)

inst_57:
    // Test 57:  Test with marching zeros/ones
    // result rd:x27(0x0000000021496821), rs1=>rd:x27(0x0000800000000000), rs2:x21(0xfffffffffffdffff), imm:0x1
    TEST_RI_OP(sm4ed, x27, x21, 0x1, 0x0000000021496821, 0x0000800000000000, 0xfffffffffffdffff, x1, 16, x2)

inst_58:
    // Test 58:  Test with marching zeros/ones
    // result rd:x28(0x0000000068212149), rs1=>rd:x28(0x0001000000000000), rs2:x20(0xfffffffffffeffff), imm:0x3
    TEST_RI_OP(sm4ed, x28, x20, 0x3, 0x0000000068212149, 0x0001000000000000, 0xfffffffffffeffff, x1, 24, x2)

inst_59:
    // Test 59:  Test with marching zeros/ones
    // result rd:x29(0x000000007a9ce67a), rs1=>rd:x29(0x0002000000000000), rs2:x19(0xffffffffffff7fff), imm:0x1
    TEST_RI_OP(sm4ed, x29, x19, 0x1, 0x000000007a9ce67a, 0x0002000000000000, 0xffffffffffff7fff, x1, 32, x2)


    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with marching zeros/ones
    // result rd:x30(0x0000000049682121), rs1=>rd:x30(0x0004000000000000), rs2:x18(0xffffffffffffbfff), imm:0x2
    TEST_RI_OP(sm4ed, x30, x18, 0x2, 0x0000000049682121, 0x0004000000000000, 0xffffffffffffbfff, x4, 0, x5)

inst_61:
    // Test 61:  Test with marching zeros/ones
    // result rd:x31(0x0000000021214968), rs1=>rd:x31(0x0008000000000000), rs2:x17(0xffffffffffffdfff), imm:0x0
    TEST_RI_OP(sm4ed, x31, x17, 0x0, 0x0000000021214968, 0x0008000000000000, 0xffffffffffffdfff, x4, 8, x5)

inst_62:
    // Test 62:  Test with marching zeros/ones
    // result rd:x1(0x0000000049682121), rs1=>rd:x1(0x0010000000000000), rs2:x16(0xffffffffffffefff), imm:0x2
    TEST_RI_OP(sm4ed, x1, x16, 0x2, 0x0000000049682121, 0x0010000000000000, 0xffffffffffffefff, x4, 16, x5)

inst_63:
    // Test 63:  Test with marching zeros/ones
    // result rd:x2(0x000000008020a080), rs1=>rd:x2(0x0020000000000000), rs2:x15(0xfffffffffffff7ff), imm:0x1
    TEST_RI_OP(sm4ed, x2, x15, 0x1, 0x000000008020a080, 0x0020000000000000, 0xfffffffffffff7ff, x4, 24, x5)

inst_64:
    // Test 64:  Test with marching zeros/ones
    // result rd:x3(0x0000000068212149), rs1=>rd:x3(0x0040000000000000), rs2:x14(0xfffffffffffffbff), imm:0x3
    TEST_RI_OP(sm4ed, x3, x14, 0x3, 0x0000000068212149, 0x0040000000000000, 0xfffffffffffffbff, x4, 32, x5)


    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with marching zeros/ones
    // result rd:x4(0x0000000068212149), rs1=>rd:x4(0x0080000000000000), rs2:x13(0xfffffffffffffdff), imm:0x3
    TEST_RI_OP(sm4ed, x4, x13, 0x3, 0x0000000068212149, 0x0080000000000000, 0xfffffffffffffdff, x1, 0, x2)

inst_66:
    // Test 66:  Test with marching zeros/ones
    // result rd:x5(0x0000000021214968), rs1=>rd:x5(0x0100000000000000), rs2:x12(0xfffffffffffffeff), imm:0x0
    TEST_RI_OP(sm4ed, x5, x12, 0x0, 0x0000000021214968, 0x0100000000000000, 0xfffffffffffffeff, x1, 8, x2)

inst_67:
    // Test 67:  Test with marching zeros/ones
    // result rd:x6(0x0000000068212149), rs1=>rd:x6(0x0200000000000000), rs2:x11(0xffffffffffffff7f), imm:0x3
    TEST_RI_OP(sm4ed, x6, x11, 0x3, 0x0000000068212149, 0x0200000000000000, 0xffffffffffffff7f, x1, 16, x2)

inst_68:
    // Test 68:  Test with marching zeros/ones
    // result rd:x7(0x0000000068212149), rs1=>rd:x7(0x0400000000000000), rs2:x10(0xffffffffffffffbf), imm:0x3
    TEST_RI_OP(sm4ed, x7, x10, 0x3, 0x0000000068212149, 0x0400000000000000, 0xffffffffffffffbf, x1, 24, x2)

inst_69:
    // Test 69:  Test with marching zeros/ones
    // result rd:x8(0x0000000068212149), rs1=>rd:x8(0x0800000000000000), rs2:x9(0xffffffffffffffdf), imm:0x3
    TEST_RI_OP(sm4ed, x8, x9, 0x3, 0x0000000068212149, 0x0800000000000000, 0xffffffffffffffdf, x1, 32, x2)


    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with marching zeros/ones
    // result rd:x9(0x0000000068212149), rs1=>rd:x9(0x1000000000000000), rs2:x8(0xffffffffffffffef), imm:0x3
    TEST_RI_OP(sm4ed, x9, x8, 0x3, 0x0000000068212149, 0x1000000000000000, 0xffffffffffffffef, x1, 0, x2)

inst_71:
    // Test 71:  Test with marching zeros/ones
    // result rd:x10(0x0000000068212149), rs1=>rd:x10(0x2000000000000000), rs2:x7(0xfffffffffffffff7), imm:0x3
    TEST_RI_OP(sm4ed, x10, x7, 0x3, 0x0000000068212149, 0x2000000000000000, 0xfffffffffffffff7, x1, 8, x2)

inst_72:
    // Test 72:  Test with marching zeros/ones
    // result rd:x11(0x0000000021496821), rs1=>rd:x11(0x4000000000000000), rs2:x6(0xfffffffffffffffb), imm:0x1
    TEST_RI_OP(sm4ed, x11, x6, 0x1, 0x0000000021496821, 0x4000000000000000, 0xfffffffffffffffb, x1, 16, x2)

inst_73:
    // Test 73:  Test with marching zeros/ones
    // result rd:x12(0x0000000021496821), rs1=>rd:x12(0x8000000000000000), rs2:x5(0xfffffffffffffffd), imm:0x1
    TEST_RI_OP(sm4ed, x12, x5, 0x1, 0x0000000021496821, 0x8000000000000000, 0xfffffffffffffffd, x1, 24, x2)

inst_74:
    // Test 74:  Test with marching zeros/ones
    // result rd:x13(0x0000000068212149), rs1=>rd:x13(0x0000000000000000), rs2:x4(0xfffffffffffffffe), imm:0x3
    TEST_RI_OP(sm4ed, x13, x4, 0x3, 0x0000000068212149, 0x0000000000000000, 0xfffffffffffffffe, x1, 32, x2)


    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with marching zeros/ones
    // result rd:x14(0x00000000a42a71a5), rs1=>rd:x14(0xfffffffffffffffe), rs2:x3(0x0000000000000000), imm:0x1
    TEST_RI_OP(sm4ed, x14, x3, 0x1, 0x00000000a42a71a5, 0xfffffffffffffffe, 0x0000000000000000, x4, 0, x5)

inst_76:
    // Test 76:  Test with marching zeros/ones
    // result rd:x15(0x000000002a71a4a6), rs1=>rd:x15(0xfffffffffffffffd), rs2:x2(0x8000000000000000), imm:0x2
    TEST_RI_OP(sm4ed, x15, x2, 0x2, 0x000000002a71a4a6, 0xfffffffffffffffd, 0x8000000000000000, x4, 8, x5)

inst_77:
    // Test 77:  Test with marching zeros/ones
    // result rd:x16(0x00000000a4a42a75), rs1=>rd:x16(0xfffffffffffffffb), rs2:x1(0x4000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x16, x1, 0x0, 0x00000000a4a42a75, 0xfffffffffffffffb, 0x4000000000000000, x4, 16, x5)

inst_78:
    // Test 78:  Test with marching zeros/ones
    // result rd:x17(0x000000002a71a4ac), rs1=>rd:x17(0xfffffffffffffff7), rs2:x31(0x2000000000000000), imm:0x2
    TEST_RI_OP(sm4ed, x17, x31, 0x2, 0x000000002a71a4ac, 0xfffffffffffffff7, 0x2000000000000000, x4, 24, x5)

inst_79:
    // Test 79:  Test with marching zeros/ones
    // result rd:x18(0x00000000a42a71b4), rs1=>rd:x18(0xffffffffffffffef), rs2:x30(0x1000000000000000), imm:0x1
    TEST_RI_OP(sm4ed, x18, x30, 0x1, 0x00000000a42a71b4, 0xffffffffffffffef, 0x1000000000000000, x4, 32, x5)


    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with marching zeros/ones
    // result rd:x19(0x0000000071a4a40a), rs1=>rd:x19(0xffffffffffffffdf), rs2:x29(0x0800000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x19, x29, 0x3, 0x0000000071a4a40a, 0xffffffffffffffdf, 0x0800000000000000, x1, 0, x2)

inst_81:
    // Test 81:  Test with marching zeros/ones
    // result rd:x20(0x0000000071a4a46a), rs1=>rd:x20(0xffffffffffffffbf), rs2:x28(0x0400000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x20, x28, 0x3, 0x0000000071a4a46a, 0xffffffffffffffbf, 0x0400000000000000, x1, 8, x2)

inst_82:
    // Test 82:  Test with marching zeros/ones
    // result rd:x21(0x00000000a4a42af1), rs1=>rd:x21(0xffffffffffffff7f), rs2:x27(0x0200000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x21, x27, 0x0, 0x00000000a4a42af1, 0xffffffffffffff7f, 0x0200000000000000, x1, 16, x2)

inst_83:
    // Test 83:  Test with marching zeros/ones
    // result rd:x22(0x0000000071a4a52a), rs1=>rd:x22(0xfffffffffffffeff), rs2:x26(0x0100000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x22, x26, 0x3, 0x0000000071a4a52a, 0xfffffffffffffeff, 0x0100000000000000, x1, 24, x2)

inst_84:
    // Test 84:  Test with marching zeros/ones
    // result rd:x23(0x0000000071a4a62a), rs1=>rd:x23(0xfffffffffffffdff), rs2:x25(0x0080000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x23, x25, 0x3, 0x0000000071a4a62a, 0xfffffffffffffdff, 0x0080000000000000, x1, 32, x2)


    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with marching zeros/ones
    // result rd:x24(0x000000008e5b5bd5), rs1=>rd:x24(0xfffffffffffffbff), rs2:x24(0x0040000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x24, x24, 0x3, 0x000000008e5b5bd5, 0xfffffffffffffbff, 0x0040000000000000, x1, 0, x2)

inst_86:
    // Test 86:  Test with marching zeros/ones
    // result rd:x25(0x0000000071a4ac2a), rs1=>rd:x25(0xfffffffffffff7ff), rs2:x23(0x0020000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x25, x23, 0x3, 0x0000000071a4ac2a, 0xfffffffffffff7ff, 0x0020000000000000, x1, 8, x2)

inst_87:
    // Test 87:  Test with marching zeros/ones
    // result rd:x26(0x0000000071a4b42a), rs1=>rd:x26(0xffffffffffffefff), rs2:x22(0x0010000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x26, x22, 0x3, 0x0000000071a4b42a, 0xffffffffffffefff, 0x0010000000000000, x1, 16, x2)

inst_88:
    // Test 88:  Test with marching zeros/ones
    // result rd:x27(0x00000000a42a51a4), rs1=>rd:x27(0xffffffffffffdfff), rs2:x21(0x0008000000000000), imm:0x1
    TEST_RI_OP(sm4ed, x27, x21, 0x1, 0x00000000a42a51a4, 0xffffffffffffdfff, 0x0008000000000000, x1, 24, x2)

inst_89:
    // Test 89:  Test with marching zeros/ones
    // result rd:x28(0x00000000a42a31a4), rs1=>rd:x28(0xffffffffffffbfff), rs2:x20(0x0004000000000000), imm:0x1
    TEST_RI_OP(sm4ed, x28, x20, 0x1, 0x00000000a42a31a4, 0xffffffffffffbfff, 0x0004000000000000, x1, 32, x2)


    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with marching zeros/ones
    // result rd:x29(0x0000000071a4242a), rs1=>rd:x29(0xffffffffffff7fff), rs2:x19(0x0002000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x29, x19, 0x3, 0x0000000071a4242a, 0xffffffffffff7fff, 0x0002000000000000, x4, 0, x5)

inst_91:
    // Test 91:  Test with marching zeros/ones
    // result rd:x30(0x00000000a42b71a4), rs1=>rd:x30(0xfffffffffffeffff), rs2:x18(0x0001000000000000), imm:0x1
    TEST_RI_OP(sm4ed, x30, x18, 0x1, 0x00000000a42b71a4, 0xfffffffffffeffff, 0x0001000000000000, x4, 8, x5)

inst_92:
    // Test 92:  Test with marching zeros/ones
    // result rd:x31(0x000000002a73a4a4), rs1=>rd:x31(0xfffffffffffdffff), rs2:x17(0x0000800000000000), imm:0x2
    TEST_RI_OP(sm4ed, x31, x17, 0x2, 0x000000002a73a4a4, 0xfffffffffffdffff, 0x0000800000000000, x4, 16, x5)

inst_93:
    // Test 93:  Test with marching zeros/ones
    // result rd:x1(0x00000000a4a02a71), rs1=>rd:x1(0xfffffffffffbffff), rs2:x16(0x0000400000000000), imm:0x0
    TEST_RI_OP(sm4ed, x1, x16, 0x0, 0x00000000a4a02a71, 0xfffffffffffbffff, 0x0000400000000000, x4, 24, x5)

inst_94:
    // Test 94:  Test with marching zeros/ones
    // result rd:x2(0x000000002a79a4a4), rs1=>rd:x2(0xfffffffffff7ffff), rs2:x15(0x0000200000000000), imm:0x2
    TEST_RI_OP(sm4ed, x2, x15, 0x2, 0x000000002a79a4a4, 0xfffffffffff7ffff, 0x0000200000000000, x4, 32, x5)


    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with marching zeros/ones
    // result rd:x3(0x00000000a43a71a4), rs1=>rd:x3(0xffffffffffefffff), rs2:x14(0x0000100000000000), imm:0x1
    TEST_RI_OP(sm4ed, x3, x14, 0x1, 0x00000000a43a71a4, 0xffffffffffefffff, 0x0000100000000000, x1, 0, x2)

inst_96:
    // Test 96:  Test with marching zeros/ones
    // result rd:x4(0x000000007184a42a), rs1=>rd:x4(0xffffffffffdfffff), rs2:x13(0x0000080000000000), imm:0x3
    TEST_RI_OP(sm4ed, x4, x13, 0x3, 0x000000007184a42a, 0xffffffffffdfffff, 0x0000080000000000, x1, 8, x2)

inst_97:
    // Test 97:  Test with marching zeros/ones
    // result rd:x5(0x0000000071e4a42a), rs1=>rd:x5(0xffffffffffbfffff), rs2:x12(0x0000040000000000), imm:0x3
    TEST_RI_OP(sm4ed, x5, x12, 0x3, 0x0000000071e4a42a, 0xffffffffffbfffff, 0x0000040000000000, x1, 16, x2)

inst_98:
    // Test 98:  Test with marching zeros/ones
    // result rd:x6(0x00000000a4242a71), rs1=>rd:x6(0xffffffffff7fffff), rs2:x11(0x0000020000000000), imm:0x0
    TEST_RI_OP(sm4ed, x6, x11, 0x0, 0x00000000a4242a71, 0xffffffffff7fffff, 0x0000020000000000, x1, 24, x2)

inst_99:
    // Test 99:  Test with marching zeros/ones
    // result rd:x7(0x0000000070a4a42a), rs1=>rd:x7(0xfffffffffeffffff), rs2:x10(0x0000010000000000), imm:0x3
    TEST_RI_OP(sm4ed, x7, x10, 0x3, 0x0000000070a4a42a, 0xfffffffffeffffff, 0x0000010000000000, x1, 32, x2)


    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with marching zeros/ones
    // result rd:x8(0x0000000073a4a42a), rs1=>rd:x8(0xfffffffffdffffff), rs2:x9(0x0000008000000000), imm:0x3
    TEST_RI_OP(sm4ed, x8, x9, 0x3, 0x0000000073a4a42a, 0xfffffffffdffffff, 0x0000008000000000, x1, 0, x2)

inst_101:
    // Test 101:  Test with marching zeros/ones
    // result rd:x9(0x0000000075a4a42a), rs1=>rd:x9(0xfffffffffbffffff), rs2:x8(0x0000004000000000), imm:0x3
    TEST_RI_OP(sm4ed, x9, x8, 0x3, 0x0000000075a4a42a, 0xfffffffffbffffff, 0x0000004000000000, x1, 8, x2)

inst_102:
    // Test 102:  Test with marching zeros/ones
    // result rd:x10(0x0000000079a4a42a), rs1=>rd:x10(0xfffffffff7ffffff), rs2:x7(0x0000002000000000), imm:0x3
    TEST_RI_OP(sm4ed, x10, x7, 0x3, 0x0000000079a4a42a, 0xfffffffff7ffffff, 0x0000002000000000, x1, 16, x2)

inst_103:
    // Test 103:  Test with marching zeros/ones
    // result rd:x11(0x0000000061a4a42a), rs1=>rd:x11(0xffffffffefffffff), rs2:x6(0x0000001000000000), imm:0x3
    TEST_RI_OP(sm4ed, x11, x6, 0x3, 0x0000000061a4a42a, 0xffffffffefffffff, 0x0000001000000000, x1, 24, x2)

inst_104:
    // Test 104:  Test with marching zeros/ones
    // result rd:x12(0x00000000842a71a4), rs1=>rd:x12(0xffffffffdfffffff), rs2:x5(0x0000000800000000), imm:0x1
    TEST_RI_OP(sm4ed, x12, x5, 0x1, 0x00000000842a71a4, 0xffffffffdfffffff, 0x0000000800000000, x1, 32, x2)


    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with marching zeros/ones
    // result rd:x13(0x00000000e42a71a4), rs1=>rd:x13(0xffffffffbfffffff), rs2:x4(0x0000000400000000), imm:0x1
    TEST_RI_OP(sm4ed, x13, x4, 0x1, 0x00000000e42a71a4, 0xffffffffbfffffff, 0x0000000400000000, x5, 0, x6)

inst_106:
    // Test 106:  Test with marching zeros/ones
    // result rd:x14(0x00000000f1a4a42a), rs1=>rd:x14(0xffffffff7fffffff), rs2:x3(0x0000000200000000), imm:0x3
    TEST_RI_OP(sm4ed, x14, x3, 0x3, 0x00000000f1a4a42a, 0xffffffff7fffffff, 0x0000000200000000, x5, 8, x6)

inst_107:
    // Test 107:  Test with marching zeros/ones
    // result rd:x15(0x00000000a42a71a4), rs1=>rd:x15(0xfffffffeffffffff), rs2:x2(0x0000000100000000), imm:0x1
    TEST_RI_OP(sm4ed, x15, x2, 0x1, 0x00000000a42a71a4, 0xfffffffeffffffff, 0x0000000100000000, x5, 16, x6)

inst_108:
    // Test 108:  Test with marching zeros/ones
    // result rd:x16(0x000000002a71a4a4), rs1=>rd:x16(0xfffffffdffffffff), rs2:x1(0x0000000080000000), imm:0x2
    TEST_RI_OP(sm4ed, x16, x1, 0x2, 0x000000002a71a4a4, 0xfffffffdffffffff, 0x0000000080000000, x5, 24, x6)

inst_109:
    // Test 109:  Test with marching zeros/ones
    // result rd:x17(0x00000000a4a42a71), rs1=>rd:x17(0xfffffffbffffffff), rs2:x31(0x0000000040000000), imm:0x0
    TEST_RI_OP(sm4ed, x17, x31, 0x0, 0x00000000a4a42a71, 0xfffffffbffffffff, 0x0000000040000000, x5, 32, x6)


    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with marching zeros/ones
    // result rd:x18(0x000000002a71a4a4), rs1=>rd:x18(0xfffffff7ffffffff), rs2:x30(0x0000000020000000), imm:0x2
    TEST_RI_OP(sm4ed, x18, x30, 0x2, 0x000000002a71a4a4, 0xfffffff7ffffffff, 0x0000000020000000, x1, 0, x2)

inst_111:
    // Test 111:  Test with marching zeros/ones
    // result rd:x19(0x00000000a42a71a4), rs1=>rd:x19(0xffffffefffffffff), rs2:x29(0x0000000010000000), imm:0x1
    TEST_RI_OP(sm4ed, x19, x29, 0x1, 0x00000000a42a71a4, 0xffffffefffffffff, 0x0000000010000000, x1, 8, x2)

inst_112:
    // Test 112:  Test with marching zeros/ones
    // result rd:x20(0x00000000b1a7a7e9), rs1=>rd:x20(0xffffffdfffffffff), rs2:x28(0x0000000008000000), imm:0x3
    TEST_RI_OP(sm4ed, x20, x28, 0x3, 0x00000000b1a7a7e9, 0xffffffdfffffffff, 0x0000000008000000, x1, 16, x2)

inst_113:
    // Test 113:  Test with marching zeros/ones
    // result rd:x21(0x0000000003cccc30), rs1=>rd:x21(0xffffffbfffffffff), rs2:x27(0x0000000004000000), imm:0x3
    TEST_RI_OP(sm4ed, x21, x27, 0x3, 0x0000000003cccc30, 0xffffffbfffffffff, 0x0000000004000000, x1, 24, x2)

inst_114:
    // Test 114:  Test with marching zeros/ones
    // result rd:x22(0x00000000a4a42a71), rs1=>rd:x22(0xffffff7fffffffff), rs2:x26(0x0000000002000000), imm:0x0
    TEST_RI_OP(sm4ed, x22, x26, 0x0, 0x00000000a4a42a71, 0xffffff7fffffffff, 0x0000000002000000, x1, 32, x2)


    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with marching zeros/ones
    // result rd:x23(0x000000002fbdbd6d), rs1=>rd:x23(0xfffffeffffffffff), rs2:x25(0x0000000001000000), imm:0x3
    TEST_RI_OP(sm4ed, x23, x25, 0x3, 0x000000002fbdbd6d, 0xfffffeffffffffff, 0x0000000001000000, x1, 0, x2)

inst_116:
    // Test 116:  Test with marching zeros/ones
    // result rd:x24(0x000000008edb5bd5), rs1=>rd:x24(0xfffffdffffffffff), rs2:x24(0x0000000000800000), imm:0x3
    TEST_RI_OP(sm4ed, x24, x24, 0x3, 0x000000008edb5bd5, 0xfffffdffffffffff, 0x0000000000800000, x1, 8, x2)

inst_117:
    // Test 117:  Test with marching zeros/ones
    // result rd:x25(0x0000000071a4a42a), rs1=>rd:x25(0xfffffbffffffffff), rs2:x23(0x0000000000400000), imm:0x3
    TEST_RI_OP(sm4ed, x25, x23, 0x3, 0x0000000071a4a42a, 0xfffffbffffffffff, 0x0000000000400000, x1, 16, x2)

inst_118:
    // Test 118:  Test with marching zeros/ones
    // result rd:x26(0x0000000071a4a42a), rs1=>rd:x26(0xfffff7ffffffffff), rs2:x22(0x0000000000200000), imm:0x3
    TEST_RI_OP(sm4ed, x26, x22, 0x3, 0x0000000071a4a42a, 0xfffff7ffffffffff, 0x0000000000200000, x1, 24, x2)

inst_119:
    // Test 119:  Test with marching zeros/ones
    // result rd:x27(0x0000000071a4a42a), rs1=>rd:x27(0xffffefffffffffff), rs2:x21(0x0000000000100000), imm:0x3
    TEST_RI_OP(sm4ed, x27, x21, 0x3, 0x0000000071a4a42a, 0xffffefffffffffff, 0x0000000000100000, x1, 32, x2)


    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with marching zeros/ones
    // result rd:x28(0x00000000a42a71a4), rs1=>rd:x28(0xffffdfffffffffff), rs2:x20(0x0000000000080000), imm:0x1
    TEST_RI_OP(sm4ed, x28, x20, 0x1, 0x00000000a42a71a4, 0xffffdfffffffffff, 0x0000000000080000, x5, 0, x6)

inst_121:
    // Test 121:  Test with marching zeros/ones
    // result rd:x29(0x00000000a42a71a4), rs1=>rd:x29(0xffffbfffffffffff), rs2:x19(0x0000000000040000), imm:0x1
    TEST_RI_OP(sm4ed, x29, x19, 0x1, 0x00000000a42a71a4, 0xffffbfffffffffff, 0x0000000000040000, x5, 8, x6)

inst_122:
    // Test 122:  Test with marching zeros/ones
    // result rd:x30(0x0000000071a4a42a), rs1=>rd:x30(0xffff7fffffffffff), rs2:x18(0x0000000000020000), imm:0x3
    TEST_RI_OP(sm4ed, x30, x18, 0x3, 0x0000000071a4a42a, 0xffff7fffffffffff, 0x0000000000020000, x5, 16, x6)

inst_123:
    // Test 123:  Test with marching zeros/ones
    // result rd:x31(0x00000000a42a71a4), rs1=>rd:x31(0xfffeffffffffffff), rs2:x17(0x0000000000010000), imm:0x1
    TEST_RI_OP(sm4ed, x31, x17, 0x1, 0x00000000a42a71a4, 0xfffeffffffffffff, 0x0000000000010000, x5, 24, x6)

inst_124:
    // Test 124:  Test with marching zeros/ones
    // result rd:x1(0x000000002a71a4a4), rs1=>rd:x1(0xfffdffffffffffff), rs2:x16(0x0000000000008000), imm:0x2
    TEST_RI_OP(sm4ed, x1, x16, 0x2, 0x000000002a71a4a4, 0xfffdffffffffffff, 0x0000000000008000, x5, 32, x6)


    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with marching zeros/ones
    // result rd:x2(0x00000000a4a42a71), rs1=>rd:x2(0xfffbffffffffffff), rs2:x15(0x0000000000004000), imm:0x0
    TEST_RI_OP(sm4ed, x2, x15, 0x0, 0x00000000a4a42a71, 0xfffbffffffffffff, 0x0000000000004000, x1, 0, x7)

inst_126:
    // Test 126:  Test with marching zeros/ones
    // result rd:x3(0x000000002a71a4a4), rs1=>rd:x3(0xfff7ffffffffffff), rs2:x14(0x0000000000002000), imm:0x2
    TEST_RI_OP(sm4ed, x3, x14, 0x2, 0x000000002a71a4a4, 0xfff7ffffffffffff, 0x0000000000002000, x1, 8, x7)

inst_127:
    // Test 127:  Test with marching zeros/ones
    // result rd:x4(0x0000000053d47853), rs1=>rd:x4(0xffefffffffffffff), rs2:x13(0x0000000000001000), imm:0x1
    TEST_RI_OP(sm4ed, x4, x13, 0x1, 0x0000000053d47853, 0xffefffffffffffff, 0x0000000000001000, x1, 16, x7)

inst_128:
    // Test 128:  Test with marching zeros/ones
    // result rd:x5(0x0000000071a4a42a), rs1=>rd:x5(0xffdfffffffffffff), rs2:x12(0x0000000000000800), imm:0x3
    TEST_RI_OP(sm4ed, x5, x12, 0x3, 0x0000000071a4a42a, 0xffdfffffffffffff, 0x0000000000000800, x1, 24, x7)

inst_129:
    // Test 129:  Test with marching zeros/ones
    // result rd:x6(0x0000000071a4a42a), rs1=>rd:x6(0xffbfffffffffffff), rs2:x11(0x0000000000000400), imm:0x3
    TEST_RI_OP(sm4ed, x6, x11, 0x3, 0x0000000071a4a42a, 0xffbfffffffffffff, 0x0000000000000400, x1, 32, x7)


    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with marching zeros/ones
    // result rd:x7(0x00000000a4a42a71), rs1=>rd:x7(0xff7fffffffffffff), rs2:x10(0x0000000000000200), imm:0x0
    TEST_RI_OP(sm4ed, x7, x10, 0x0, 0x00000000a4a42a71, 0xff7fffffffffffff, 0x0000000000000200, x1, 0, x2)

inst_131:
    // Test 131:  Test with marching zeros/ones
    // result rd:x8(0x00000000a4a42a71), rs1=>rd:x8(0xfeffffffffffffff), rs2:x9(0x0000000000000100), imm:0x0
    TEST_RI_OP(sm4ed, x8, x9, 0x0, 0x00000000a4a42a71, 0xfeffffffffffffff, 0x0000000000000100, x1, 8, x2)

inst_132:
    // Test 132:  Test with marching zeros/ones
    // result rd:x9(0x00000000545416bd), rs1=>rd:x9(0xfdffffffffffffff), rs2:x8(0x0000000000000080), imm:0x0
    TEST_RI_OP(sm4ed, x9, x8, 0x0, 0x00000000545416bd, 0xfdffffffffffffff, 0x0000000000000080, x1, 16, x2)

inst_133:
    // Test 133:  Test with marching zeros/ones
    // result rd:x10(0x00000000e2e2b9a4), rs1=>rd:x10(0xfbffffffffffffff), rs2:x7(0x0000000000000040), imm:0x0
    TEST_RI_OP(sm4ed, x10, x7, 0x0, 0x00000000e2e2b9a4, 0xfbffffffffffffff, 0x0000000000000040, x1, 24, x2)

inst_134:
    // Test 134:  Test with marching zeros/ones
    // result rd:x11(0x000000008d8d6113), rs1=>rd:x11(0xf7ffffffffffffff), rs2:x6(0x0000000000000020), imm:0x0
    TEST_RI_OP(sm4ed, x11, x6, 0x0, 0x000000008d8d6113, 0xf7ffffffffffffff, 0x0000000000000020, x1, 32, x2)


    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with marching zeros/ones
    // result rd:x12(0x000000005353d478), rs1=>rd:x12(0xefffffffffffffff), rs2:x5(0x0000000000000010), imm:0x0
    TEST_RI_OP(sm4ed, x12, x5, 0x0, 0x000000005353d478, 0xefffffffffffffff, 0x0000000000000010, x6, 0, x7)

inst_136:
    // Test 136:  Test with marching zeros/ones
    // result rd:x13(0x00000000a7a7e9b1), rs1=>rd:x13(0xdfffffffffffffff), rs2:x4(0x0000000000000008), imm:0x0
    TEST_RI_OP(sm4ed, x13, x4, 0x0, 0x00000000a7a7e9b1, 0xdfffffffffffffff, 0x0000000000000008, x6, 8, x7)

inst_137:
    // Test 137:  Test with marching zeros/ones
    // result rd:x14(0x00000000cccc3003), rs1=>rd:x14(0xbfffffffffffffff), rs2:x3(0x0000000000000004), imm:0x0
    TEST_RI_OP(sm4ed, x14, x3, 0x0, 0x00000000cccc3003, 0xbfffffffffffffff, 0x0000000000000004, x6, 16, x7)

inst_138:
    // Test 138:  Test with marching zeros/ones
    // result rd:x15(0x00000000585815b2), rs1=>rd:x15(0x7fffffffffffffff), rs2:x2(0x0000000000000002), imm:0x0
    TEST_RI_OP(sm4ed, x15, x2, 0x0, 0x00000000585815b2, 0x7fffffffffffffff, 0x0000000000000002, x6, 24, x7)

inst_139:
    // Test 139:  Test with marching zeros/ones
    // result rd:x16(0x00000000bdbd6d2f), rs1=>rd:x16(0xffffffffffffffff), rs2:x1(0x0000000000000001), imm:0x0
    TEST_RI_OP(sm4ed, x16, x1, 0x0, 0x00000000bdbd6d2f, 0xffffffffffffffff, 0x0000000000000001, x6, 32, x7)


    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with marching zeros/ones
    // result rd:x17(0x000000005b5bd58f), rs1=>rd:x17(0x0000000000000001), rs2:x31(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x17, x31, 0x0, 0x000000005b5bd58f, 0x0000000000000001, 0x0000000000000000, x1, 0, x2)

inst_141:
    // Test 141:  Test with marching zeros/ones
    // result rd:x18(0x000000005b5bd58c), rs1=>rd:x18(0x0000000000000002), rs2:x30(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x18, x30, 0x0, 0x000000005b5bd58c, 0x0000000000000002, 0x0000000000000000, x1, 8, x2)

inst_142:
    // Test 142:  Test with marching zeros/ones
    // result rd:x19(0x000000005b5bd58a), rs1=>rd:x19(0x0000000000000004), rs2:x29(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x19, x29, 0x0, 0x000000005b5bd58a, 0x0000000000000004, 0x0000000000000000, x1, 16, x2)

inst_143:
    // Test 143:  Test with marching zeros/ones
    // result rd:x20(0x000000005b5bd586), rs1=>rd:x20(0x0000000000000008), rs2:x28(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x20, x28, 0x0, 0x000000005b5bd586, 0x0000000000000008, 0x0000000000000000, x1, 24, x2)

inst_144:
    // Test 144:  Test with marching zeros/ones
    // result rd:x21(0x000000005b5bd59e), rs1=>rd:x21(0x0000000000000010), rs2:x27(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x21, x27, 0x0, 0x000000005b5bd59e, 0x0000000000000010, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with marching zeros/ones
    // result rd:x22(0x000000005b5bd5ae), rs1=>rd:x22(0x0000000000000020), rs2:x26(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x22, x26, 0x0, 0x000000005b5bd5ae, 0x0000000000000020, 0x0000000000000000, x1, 0, x2)

inst_146:
    // Test 146:  Test with marching zeros/ones
    // result rd:x23(0x000000005b5bd5ce), rs1=>rd:x23(0x0000000000000040), rs2:x25(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x23, x25, 0x0, 0x000000005b5bd5ce, 0x0000000000000040, 0x0000000000000000, x1, 8, x2)

inst_147:
    // Test 147:  Test with marching zeros/ones
    // result rd:x24(0x000000005b5bd58e), rs1=>rd:x24(0x0000000000000080), rs2:x24(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x24, x24, 0x0, 0x000000005b5bd58e, 0x0000000000000080, 0x0000000000000000, x1, 16, x2)

inst_148:
    // Test 148:  Test with marching zeros/ones
    // result rd:x25(0x000000005b5bd48e), rs1=>rd:x25(0x0000000000000100), rs2:x23(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x25, x23, 0x0, 0x000000005b5bd48e, 0x0000000000000100, 0x0000000000000000, x1, 24, x2)

inst_149:
    // Test 149:  Test with marching zeros/ones
    // result rd:x26(0x000000005b5bd78e), rs1=>rd:x26(0x0000000000000200), rs2:x22(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x26, x22, 0x0, 0x000000005b5bd78e, 0x0000000000000200, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with marching zeros/ones
    // result rd:x27(0x000000005b5bd18e), rs1=>rd:x27(0x0000000000000400), rs2:x21(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x27, x21, 0x0, 0x000000005b5bd18e, 0x0000000000000400, 0x0000000000000000, x6, 0, x7)

inst_151:
    // Test 151:  Test with marching zeros/ones
    // result rd:x28(0x000000005b5bdd8e), rs1=>rd:x28(0x0000000000000800), rs2:x20(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x28, x20, 0x0, 0x000000005b5bdd8e, 0x0000000000000800, 0x0000000000000000, x6, 8, x7)

inst_152:
    // Test 152:  Test with marching zeros/ones
    // result rd:x29(0x000000005b5bc58e), rs1=>rd:x29(0x0000000000001000), rs2:x19(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x29, x19, 0x0, 0x000000005b5bc58e, 0x0000000000001000, 0x0000000000000000, x6, 16, x7)

inst_153:
    // Test 153:  Test with marching zeros/ones
    // result rd:x30(0x000000005b5bf58e), rs1=>rd:x30(0x0000000000002000), rs2:x18(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x30, x18, 0x0, 0x000000005b5bf58e, 0x0000000000002000, 0x0000000000000000, x6, 24, x7)

inst_154:
    // Test 154:  Test with marching zeros/ones
    // result rd:x31(0x000000005b5b958e), rs1=>rd:x31(0x0000000000004000), rs2:x17(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x31, x17, 0x0, 0x000000005b5b958e, 0x0000000000004000, 0x0000000000000000, x6, 32, x7)


    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with marching zeros/ones
    // result rd:x1(0x000000005b5b558e), rs1=>rd:x1(0x0000000000008000), rs2:x16(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x1, x16, 0x0, 0x000000005b5b558e, 0x0000000000008000, 0x0000000000000000, x6, 0, x7)

inst_156:
    // Test 156:  Test with marching zeros/ones
    // result rd:x2(0x000000005b5ad58e), rs1=>rd:x2(0x0000000000010000), rs2:x15(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x2, x15, 0x0, 0x000000005b5ad58e, 0x0000000000010000, 0x0000000000000000, x6, 8, x7)

inst_157:
    // Test 157:  Test with marching zeros/ones
    // result rd:x3(0x000000005b59d58e), rs1=>rd:x3(0x0000000000020000), rs2:x14(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x3, x14, 0x0, 0x000000005b59d58e, 0x0000000000020000, 0x0000000000000000, x6, 16, x7)

inst_158:
    // Test 158:  Test with marching zeros/ones
    // result rd:x4(0x000000005b5fd58e), rs1=>rd:x4(0x0000000000040000), rs2:x13(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x4, x13, 0x0, 0x000000005b5fd58e, 0x0000000000040000, 0x0000000000000000, x6, 24, x7)

inst_159:
    // Test 159:  Test with marching zeros/ones
    // result rd:x5(0x000000005b53d58e), rs1=>rd:x5(0x0000000000080000), rs2:x12(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x5, x12, 0x0, 0x000000005b53d58e, 0x0000000000080000, 0x0000000000000000, x6, 32, x7)


    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with marching zeros/ones
    // result rd:x6(0x000000005b4bd58e), rs1=>rd:x6(0x0000000000100000), rs2:x11(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x6, x11, 0x0, 0x000000005b4bd58e, 0x0000000000100000, 0x0000000000000000, x1, 0, x2)

inst_161:
    // Test 161:  Test with marching zeros/ones
    // result rd:x7(0x000000005b7bd58e), rs1=>rd:x7(0x0000000000200000), rs2:x10(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x7, x10, 0x0, 0x000000005b7bd58e, 0x0000000000200000, 0x0000000000000000, x1, 8, x2)

inst_162:
    // Test 162:  Test with marching zeros/ones
    // result rd:x8(0x000000005b1bd58e), rs1=>rd:x8(0x0000000000400000), rs2:x9(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x8, x9, 0x0, 0x000000005b1bd58e, 0x0000000000400000, 0x0000000000000000, x1, 16, x2)

inst_163:
    // Test 163:  Test with marching zeros/ones
    // result rd:x9(0x000000005bdbd58e), rs1=>rd:x9(0x0000000000800000), rs2:x8(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x9, x8, 0x0, 0x000000005bdbd58e, 0x0000000000800000, 0x0000000000000000, x1, 24, x2)

inst_164:
    // Test 164:  Test with marching zeros/ones
    // result rd:x10(0x000000005a5bd58e), rs1=>rd:x10(0x0000000001000000), rs2:x7(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x10, x7, 0x0, 0x000000005a5bd58e, 0x0000000001000000, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with marching zeros/ones
    // result rd:x11(0x00000000595bd58e), rs1=>rd:x11(0x0000000002000000), rs2:x6(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x11, x6, 0x0, 0x00000000595bd58e, 0x0000000002000000, 0x0000000000000000, x1, 0, x7)

inst_166:
    // Test 166:  Test with marching zeros/ones
    // result rd:x12(0x000000005f5bd58e), rs1=>rd:x12(0x0000000004000000), rs2:x5(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x12, x5, 0x0, 0x000000005f5bd58e, 0x0000000004000000, 0x0000000000000000, x1, 8, x7)

inst_167:
    // Test 167:  Test with marching zeros/ones
    // result rd:x13(0x00000000535bd58e), rs1=>rd:x13(0x0000000008000000), rs2:x4(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x13, x4, 0x0, 0x00000000535bd58e, 0x0000000008000000, 0x0000000000000000, x1, 16, x7)

inst_168:
    // Test 168:  Test with marching zeros/ones
    // result rd:x14(0x000000004b5bd58e), rs1=>rd:x14(0x0000000010000000), rs2:x3(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x14, x3, 0x0, 0x000000004b5bd58e, 0x0000000010000000, 0x0000000000000000, x1, 24, x7)

inst_169:
    // Test 169:  Test with marching zeros/ones
    // result rd:x15(0x000000007b5bd58e), rs1=>rd:x15(0x0000000020000000), rs2:x2(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x15, x2, 0x0, 0x000000007b5bd58e, 0x0000000020000000, 0x0000000000000000, x1, 32, x7)


    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with marching zeros/ones
    // result rd:x16(0x000000001b5bd58e), rs1=>rd:x16(0x0000000040000000), rs2:x1(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x16, x1, 0x0, 0x000000001b5bd58e, 0x0000000040000000, 0x0000000000000000, x2, 0, x3)

inst_171:
    // Test 171:  Test with marching zeros/ones
    // result rd:x17(0x00000000db5bd58e), rs1=>rd:x17(0x0000000080000000), rs2:x31(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x17, x31, 0x0, 0x00000000db5bd58e, 0x0000000080000000, 0x0000000000000000, x2, 8, x3)

inst_172:
    // Test 172:  Test with marching zeros/ones
    // result rd:x18(0x000000005b5bd58e), rs1=>rd:x18(0x0000000100000000), rs2:x30(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x18, x30, 0x0, 0x000000005b5bd58e, 0x0000000100000000, 0x0000000000000000, x2, 16, x3)

inst_173:
    // Test 173:  Test with marching zeros/ones
    // result rd:x19(0x000000005b5bd58e), rs1=>rd:x19(0x0000000200000000), rs2:x29(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x19, x29, 0x0, 0x000000005b5bd58e, 0x0000000200000000, 0x0000000000000000, x2, 24, x3)

inst_174:
    // Test 174:  Test with marching zeros/ones
    // result rd:x20(0x000000005b5bd58e), rs1=>rd:x20(0x0000000400000000), rs2:x28(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x20, x28, 0x0, 0x000000005b5bd58e, 0x0000000400000000, 0x0000000000000000, x2, 32, x3)


    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with marching zeros/ones
    // result rd:x21(0x000000005b5bd58e), rs1=>rd:x21(0x0000000800000000), rs2:x27(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x21, x27, 0x0, 0x000000005b5bd58e, 0x0000000800000000, 0x0000000000000000, x1, 0, x2)

inst_176:
    // Test 176:  Test with marching zeros/ones
    // result rd:x22(0x000000005b5bd58e), rs1=>rd:x22(0x0000001000000000), rs2:x26(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x22, x26, 0x0, 0x000000005b5bd58e, 0x0000001000000000, 0x0000000000000000, x1, 8, x2)

inst_177:
    // Test 177:  Test with marching zeros/ones
    // result rd:x23(0x000000005b5bd58e), rs1=>rd:x23(0x0000002000000000), rs2:x25(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x23, x25, 0x0, 0x000000005b5bd58e, 0x0000002000000000, 0x0000000000000000, x1, 16, x2)

inst_178:
    // Test 178:  Test with marching zeros/ones
    // result rd:x24(0x000000005b5bd58e), rs1=>rd:x24(0x0000004000000000), rs2:x24(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x24, x24, 0x0, 0x000000005b5bd58e, 0x0000004000000000, 0x0000000000000000, x1, 24, x2)

inst_179:
    // Test 179:  Test with marching zeros/ones
    // result rd:x25(0x000000005b5bd58e), rs1=>rd:x25(0x0000008000000000), rs2:x23(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x25, x23, 0x0, 0x000000005b5bd58e, 0x0000008000000000, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with marching zeros/ones
    // result rd:x26(0x000000005b5bd58e), rs1=>rd:x26(0x0000010000000000), rs2:x22(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x26, x22, 0x0, 0x000000005b5bd58e, 0x0000010000000000, 0x0000000000000000, x1, 0, x7)

inst_181:
    // Test 181:  Test with marching zeros/ones
    // result rd:x27(0x000000005b5bd58e), rs1=>rd:x27(0x0000020000000000), rs2:x21(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x27, x21, 0x0, 0x000000005b5bd58e, 0x0000020000000000, 0x0000000000000000, x1, 8, x7)

inst_182:
    // Test 182:  Test with marching zeros/ones
    // result rd:x28(0x000000005b5bd58e), rs1=>rd:x28(0x0000040000000000), rs2:x20(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x28, x20, 0x0, 0x000000005b5bd58e, 0x0000040000000000, 0x0000000000000000, x1, 16, x7)

inst_183:
    // Test 183:  Test with marching zeros/ones
    // result rd:x29(0x000000005b5bd58e), rs1=>rd:x29(0x0000080000000000), rs2:x19(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x29, x19, 0x0, 0x000000005b5bd58e, 0x0000080000000000, 0x0000000000000000, x1, 24, x7)

inst_184:
    // Test 184:  Test with marching zeros/ones
    // result rd:x30(0x000000005b5bd58e), rs1=>rd:x30(0x0000100000000000), rs2:x18(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x30, x18, 0x0, 0x000000005b5bd58e, 0x0000100000000000, 0x0000000000000000, x1, 32, x7)


    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with marching zeros/ones
    // result rd:x31(0x000000005b5bd58e), rs1=>rd:x31(0x0000200000000000), rs2:x17(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x31, x17, 0x0, 0x000000005b5bd58e, 0x0000200000000000, 0x0000000000000000, x5, 0, x6)

inst_186:
    // Test 186:  Test with marching zeros/ones
    // result rd:x1(0x000000005b5bd58e), rs1=>rd:x1(0x0000400000000000), rs2:x16(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x1, x16, 0x0, 0x000000005b5bd58e, 0x0000400000000000, 0x0000000000000000, x5, 8, x6)

inst_187:
    // Test 187:  Test with marching zeros/ones
    // result rd:x2(0x000000005b5bd58e), rs1=>rd:x2(0x0000800000000000), rs2:x15(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x2, x15, 0x0, 0x000000005b5bd58e, 0x0000800000000000, 0x0000000000000000, x5, 16, x6)

inst_188:
    // Test 188:  Test with marching zeros/ones
    // result rd:x3(0x000000005b5bd58e), rs1=>rd:x3(0x0001000000000000), rs2:x14(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x3, x14, 0x0, 0x000000005b5bd58e, 0x0001000000000000, 0x0000000000000000, x5, 24, x6)

inst_189:
    // Test 189:  Test with marching zeros/ones
    // result rd:x4(0x000000005b5bd58e), rs1=>rd:x4(0x0002000000000000), rs2:x13(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x4, x13, 0x0, 0x000000005b5bd58e, 0x0002000000000000, 0x0000000000000000, x5, 32, x6)


    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with marching zeros/ones
    // result rd:x5(0x000000005b5bd58e), rs1=>rd:x5(0x0004000000000000), rs2:x12(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x5, x12, 0x0, 0x000000005b5bd58e, 0x0004000000000000, 0x0000000000000000, x1, 0, x2)

inst_191:
    // Test 191:  Test with marching zeros/ones
    // result rd:x6(0x000000005b5bd58e), rs1=>rd:x6(0x0008000000000000), rs2:x11(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x6, x11, 0x0, 0x000000005b5bd58e, 0x0008000000000000, 0x0000000000000000, x1, 8, x2)

inst_192:
    // Test 192:  Test with marching zeros/ones
    // result rd:x7(0x000000005b5bd58e), rs1=>rd:x7(0x0010000000000000), rs2:x10(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x7, x10, 0x0, 0x000000005b5bd58e, 0x0010000000000000, 0x0000000000000000, x1, 16, x2)

inst_193:
    // Test 193:  Test with marching zeros/ones
    // result rd:x8(0x000000005b5bd58e), rs1=>rd:x8(0x0020000000000000), rs2:x9(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x8, x9, 0x0, 0x000000005b5bd58e, 0x0020000000000000, 0x0000000000000000, x1, 24, x2)

inst_194:
    // Test 194:  Test with marching zeros/ones
    // result rd:x9(0x000000005b5bd58e), rs1=>rd:x9(0x0040000000000000), rs2:x8(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x9, x8, 0x0, 0x000000005b5bd58e, 0x0040000000000000, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with marching zeros/ones
    // result rd:x10(0x000000005b5bd58e), rs1=>rd:x10(0x0080000000000000), rs2:x7(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x10, x7, 0x0, 0x000000005b5bd58e, 0x0080000000000000, 0x0000000000000000, x1, 0, x2)

inst_196:
    // Test 196:  Test with marching zeros/ones
    // result rd:x11(0x000000005b5bd58e), rs1=>rd:x11(0x0100000000000000), rs2:x6(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x11, x6, 0x0, 0x000000005b5bd58e, 0x0100000000000000, 0x0000000000000000, x1, 8, x2)

inst_197:
    // Test 197:  Test with marching zeros/ones
    // result rd:x12(0x000000005b5bd58e), rs1=>rd:x12(0x0200000000000000), rs2:x5(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x12, x5, 0x0, 0x000000005b5bd58e, 0x0200000000000000, 0x0000000000000000, x1, 16, x2)

inst_198:
    // Test 198:  Test with marching zeros/ones
    // result rd:x13(0x000000005b5bd58e), rs1=>rd:x13(0x0400000000000000), rs2:x4(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x13, x4, 0x0, 0x000000005b5bd58e, 0x0400000000000000, 0x0000000000000000, x1, 24, x2)

inst_199:
    // Test 199:  Test with marching zeros/ones
    // result rd:x14(0x000000005b5bd58e), rs1=>rd:x14(0x0800000000000000), rs2:x3(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x14, x3, 0x0, 0x000000005b5bd58e, 0x0800000000000000, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with marching zeros/ones
    // result rd:x15(0x000000005b5bd58e), rs1=>rd:x15(0x1000000000000000), rs2:x2(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x15, x2, 0x0, 0x000000005b5bd58e, 0x1000000000000000, 0x0000000000000000, x3, 0, x4)

inst_201:
    // Test 201:  Test with marching zeros/ones
    // result rd:x16(0x000000005b5bd58e), rs1=>rd:x16(0x2000000000000000), rs2:x1(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x16, x1, 0x0, 0x000000005b5bd58e, 0x2000000000000000, 0x0000000000000000, x3, 8, x4)

inst_202:
    // Test 202:  Test with marching zeros/ones
    // result rd:x17(0x000000005b5bd58e), rs1=>rd:x17(0x4000000000000000), rs2:x31(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x17, x31, 0x0, 0x000000005b5bd58e, 0x4000000000000000, 0x0000000000000000, x3, 16, x4)

inst_203:
    // Test 203:  Test with marching zeros/ones
    // result rd:x18(0x000000005b5bd58e), rs1=>rd:x18(0x8000000000000000), rs2:x30(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x18, x30, 0x0, 0x000000005b5bd58e, 0x8000000000000000, 0x0000000000000000, x3, 24, x4)

inst_204:
    // Test 204:  Test with marching zeros/ones
    // result rd:x19(0x000000005b5bd58e), rs1=>rd:x19(0x0000000000000000), rs2:x29(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x19, x29, 0x0, 0x000000005b5bd58e, 0x0000000000000000, 0x0000000000000000, x3, 32, x4)


    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with marching zeros/ones
    // result rd:x20(0x00000000a4a42a70), rs1=>rd:x20(0xfffffffffffffffe), rs2:x28(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x20, x28, 0x0, 0x00000000a4a42a70, 0xfffffffffffffffe, 0x0000000000000000, x1, 0, x2)

inst_206:
    // Test 206:  Test with marching zeros/ones
    // result rd:x21(0x00000000a4a42a73), rs1=>rd:x21(0xfffffffffffffffd), rs2:x27(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x21, x27, 0x0, 0x00000000a4a42a73, 0xfffffffffffffffd, 0x0000000000000000, x1, 8, x2)

inst_207:
    // Test 207:  Test with marching zeros/ones
    // result rd:x22(0x00000000a4a42a75), rs1=>rd:x22(0xfffffffffffffffb), rs2:x26(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x22, x26, 0x0, 0x00000000a4a42a75, 0xfffffffffffffffb, 0x0000000000000000, x1, 16, x2)

inst_208:
    // Test 208:  Test with marching zeros/ones
    // result rd:x23(0x00000000a4a42a79), rs1=>rd:x23(0xfffffffffffffff7), rs2:x25(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x23, x25, 0x0, 0x00000000a4a42a79, 0xfffffffffffffff7, 0x0000000000000000, x1, 24, x2)

inst_209:
    // Test 209:  Test with marching zeros/ones
    // result rd:x24(0x000000005b5bd58e), rs1=>rd:x24(0xffffffffffffffef), rs2:x24(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x24, x24, 0x0, 0x000000005b5bd58e, 0xffffffffffffffef, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with marching zeros/ones
    // result rd:x25(0x00000000a4a42a51), rs1=>rd:x25(0xffffffffffffffdf), rs2:x23(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x25, x23, 0x0, 0x00000000a4a42a51, 0xffffffffffffffdf, 0x0000000000000000, x1, 0, x2)

inst_211:
    // Test 211:  Test with marching zeros/ones
    // result rd:x26(0x00000000a4a42a31), rs1=>rd:x26(0xffffffffffffffbf), rs2:x22(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x26, x22, 0x0, 0x00000000a4a42a31, 0xffffffffffffffbf, 0x0000000000000000, x1, 8, x2)

inst_212:
    // Test 212:  Test with marching zeros/ones
    // result rd:x27(0x00000000a4a42af1), rs1=>rd:x27(0xffffffffffffff7f), rs2:x21(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x27, x21, 0x0, 0x00000000a4a42af1, 0xffffffffffffff7f, 0x0000000000000000, x1, 16, x2)

inst_213:
    // Test 213:  Test with marching zeros/ones
    // result rd:x28(0x00000000a4a42b71), rs1=>rd:x28(0xfffffffffffffeff), rs2:x20(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x28, x20, 0x0, 0x00000000a4a42b71, 0xfffffffffffffeff, 0x0000000000000000, x1, 24, x2)

inst_214:
    // Test 214:  Test with marching zeros/ones
    // result rd:x29(0x00000000a4a42871), rs1=>rd:x29(0xfffffffffffffdff), rs2:x19(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x29, x19, 0x0, 0x00000000a4a42871, 0xfffffffffffffdff, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with marching zeros/ones
    // result rd:x30(0x00000000a4a42e71), rs1=>rd:x30(0xfffffffffffffbff), rs2:x18(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x30, x18, 0x0, 0x00000000a4a42e71, 0xfffffffffffffbff, 0x0000000000000000, x4, 0, x5)

inst_216:
    // Test 216:  Test with marching zeros/ones
    // result rd:x31(0x00000000a4a42271), rs1=>rd:x31(0xfffffffffffff7ff), rs2:x17(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x31, x17, 0x0, 0x00000000a4a42271, 0xfffffffffffff7ff, 0x0000000000000000, x4, 8, x5)

inst_217:
    // Test 217:  Test with marching zeros/ones
    // result rd:x1(0x00000000a4a43a71), rs1=>rd:x1(0xffffffffffffefff), rs2:x16(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x1, x16, 0x0, 0x00000000a4a43a71, 0xffffffffffffefff, 0x0000000000000000, x4, 16, x5)

inst_218:
    // Test 218:  Test with marching zeros/ones
    // result rd:x2(0x00000000a4a40a71), rs1=>rd:x2(0xffffffffffffdfff), rs2:x15(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x2, x15, 0x0, 0x00000000a4a40a71, 0xffffffffffffdfff, 0x0000000000000000, x4, 24, x5)

inst_219:
    // Test 219:  Test with marching zeros/ones
    // result rd:x3(0x00000000a4a46a71), rs1=>rd:x3(0xffffffffffffbfff), rs2:x14(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x3, x14, 0x0, 0x00000000a4a46a71, 0xffffffffffffbfff, 0x0000000000000000, x4, 32, x5)


    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with marching zeros/ones
    // result rd:x4(0x00000000a4a4aa71), rs1=>rd:x4(0xffffffffffff7fff), rs2:x13(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x4, x13, 0x0, 0x00000000a4a4aa71, 0xffffffffffff7fff, 0x0000000000000000, x1, 0, x2)

inst_221:
    // Test 221:  Test with marching zeros/ones
    // result rd:x5(0x00000000a4a52a71), rs1=>rd:x5(0xfffffffffffeffff), rs2:x12(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x5, x12, 0x0, 0x00000000a4a52a71, 0xfffffffffffeffff, 0x0000000000000000, x1, 8, x2)

inst_222:
    // Test 222:  Test with marching zeros/ones
    // result rd:x6(0x00000000a4a62a71), rs1=>rd:x6(0xfffffffffffdffff), rs2:x11(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x6, x11, 0x0, 0x00000000a4a62a71, 0xfffffffffffdffff, 0x0000000000000000, x1, 16, x2)

inst_223:
    // Test 223:  Test with marching zeros/ones
    // result rd:x7(0x00000000a4a02a71), rs1=>rd:x7(0xfffffffffffbffff), rs2:x10(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x7, x10, 0x0, 0x00000000a4a02a71, 0xfffffffffffbffff, 0x0000000000000000, x1, 24, x2)

inst_224:
    // Test 224:  Test with marching zeros/ones
    // result rd:x8(0x00000000a4ac2a71), rs1=>rd:x8(0xfffffffffff7ffff), rs2:x9(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x8, x9, 0x0, 0x00000000a4ac2a71, 0xfffffffffff7ffff, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with marching zeros/ones
    // result rd:x9(0x00000000a4b42a71), rs1=>rd:x9(0xffffffffffefffff), rs2:x8(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x9, x8, 0x0, 0x00000000a4b42a71, 0xffffffffffefffff, 0x0000000000000000, x1, 0, x2)

inst_226:
    // Test 226:  Test with marching zeros/ones
    // result rd:x10(0x00000000a4842a71), rs1=>rd:x10(0xffffffffffdfffff), rs2:x7(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x10, x7, 0x0, 0x00000000a4842a71, 0xffffffffffdfffff, 0x0000000000000000, x1, 8, x2)

inst_227:
    // Test 227:  Test with marching zeros/ones
    // result rd:x11(0x00000000a4e42a71), rs1=>rd:x11(0xffffffffffbfffff), rs2:x6(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x11, x6, 0x0, 0x00000000a4e42a71, 0xffffffffffbfffff, 0x0000000000000000, x1, 16, x2)

inst_228:
    // Test 228:  Test with marching zeros/ones
    // result rd:x12(0x00000000a4242a71), rs1=>rd:x12(0xffffffffff7fffff), rs2:x5(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x12, x5, 0x0, 0x00000000a4242a71, 0xffffffffff7fffff, 0x0000000000000000, x1, 24, x2)

inst_229:
    // Test 229:  Test with marching zeros/ones
    // result rd:x13(0x00000000a5a42a71), rs1=>rd:x13(0xfffffffffeffffff), rs2:x4(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x13, x4, 0x0, 0x00000000a5a42a71, 0xfffffffffeffffff, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with marching zeros/ones
    // result rd:x14(0x00000000a6a42a71), rs1=>rd:x14(0xfffffffffdffffff), rs2:x3(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x14, x3, 0x0, 0x00000000a6a42a71, 0xfffffffffdffffff, 0x0000000000000000, x4, 0, x5)

inst_231:
    // Test 231:  Test with marching zeros/ones
    // result rd:x15(0x00000000a0a42a71), rs1=>rd:x15(0xfffffffffbffffff), rs2:x2(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x15, x2, 0x0, 0x00000000a0a42a71, 0xfffffffffbffffff, 0x0000000000000000, x4, 8, x5)

inst_232:
    // Test 232:  Test with marching zeros/ones
    // result rd:x16(0x00000000aca42a71), rs1=>rd:x16(0xfffffffff7ffffff), rs2:x1(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x16, x1, 0x0, 0x00000000aca42a71, 0xfffffffff7ffffff, 0x0000000000000000, x4, 16, x5)

inst_233:
    // Test 233:  Test with marching zeros/ones
    // result rd:x17(0x00000000b4a42a71), rs1=>rd:x17(0xffffffffefffffff), rs2:x31(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x17, x31, 0x0, 0x00000000b4a42a71, 0xffffffffefffffff, 0x0000000000000000, x4, 24, x5)

inst_234:
    // Test 234:  Test with marching zeros/ones
    // result rd:x18(0x0000000084a42a71), rs1=>rd:x18(0xffffffffdfffffff), rs2:x30(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x18, x30, 0x0, 0x0000000084a42a71, 0xffffffffdfffffff, 0x0000000000000000, x4, 32, x5)


    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with marching zeros/ones
    // result rd:x19(0x00000000e4a42a71), rs1=>rd:x19(0xffffffffbfffffff), rs2:x29(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x19, x29, 0x0, 0x00000000e4a42a71, 0xffffffffbfffffff, 0x0000000000000000, x1, 0, x2)

inst_236:
    // Test 236:  Test with marching zeros/ones
    // result rd:x20(0x0000000024a42a71), rs1=>rd:x20(0xffffffff7fffffff), rs2:x28(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x20, x28, 0x0, 0x0000000024a42a71, 0xffffffff7fffffff, 0x0000000000000000, x1, 8, x2)

inst_237:
    // Test 237:  Test with marching zeros/ones
    // result rd:x21(0x00000000a4a42a71), rs1=>rd:x21(0xfffffffeffffffff), rs2:x27(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x21, x27, 0x0, 0x00000000a4a42a71, 0xfffffffeffffffff, 0x0000000000000000, x1, 16, x2)

inst_238:
    // Test 238:  Test with marching zeros/ones
    // result rd:x22(0x00000000a4a42a71), rs1=>rd:x22(0xfffffffdffffffff), rs2:x26(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x22, x26, 0x0, 0x00000000a4a42a71, 0xfffffffdffffffff, 0x0000000000000000, x1, 24, x2)

inst_239:
    // Test 239:  Test with marching zeros/ones
    // result rd:x23(0x00000000a4a42a71), rs1=>rd:x23(0xfffffffbffffffff), rs2:x25(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x23, x25, 0x0, 0x00000000a4a42a71, 0xfffffffbffffffff, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with marching zeros/ones
    // result rd:x24(0x000000005b5bd58e), rs1=>rd:x24(0xfffffff7ffffffff), rs2:x24(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x24, x24, 0x0, 0x000000005b5bd58e, 0xfffffff7ffffffff, 0x0000000000000000, x1, 0, x2)

inst_241:
    // Test 241:  Test with marching zeros/ones
    // result rd:x25(0x00000000a4a42a71), rs1=>rd:x25(0xffffffefffffffff), rs2:x23(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x25, x23, 0x0, 0x00000000a4a42a71, 0xffffffefffffffff, 0x0000000000000000, x1, 8, x2)

inst_242:
    // Test 242:  Test with marching zeros/ones
    // result rd:x26(0x00000000a4a42a71), rs1=>rd:x26(0xffffffdfffffffff), rs2:x22(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x26, x22, 0x0, 0x00000000a4a42a71, 0xffffffdfffffffff, 0x0000000000000000, x1, 16, x2)

inst_243:
    // Test 243:  Test with marching zeros/ones
    // result rd:x27(0x00000000a4a42a71), rs1=>rd:x27(0xffffffbfffffffff), rs2:x21(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x27, x21, 0x0, 0x00000000a4a42a71, 0xffffffbfffffffff, 0x0000000000000000, x1, 24, x2)

inst_244:
    // Test 244:  Test with marching zeros/ones
    // result rd:x28(0x00000000a4a42a71), rs1=>rd:x28(0xffffff7fffffffff), rs2:x20(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x28, x20, 0x0, 0x00000000a4a42a71, 0xffffff7fffffffff, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with marching zeros/ones
    // result rd:x29(0x00000000a4a42a71), rs1=>rd:x29(0xfffffeffffffffff), rs2:x19(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x29, x19, 0x0, 0x00000000a4a42a71, 0xfffffeffffffffff, 0x0000000000000000, x4, 0, x5)

inst_246:
    // Test 246:  Test with marching zeros/ones
    // result rd:x30(0x00000000a4a42a71), rs1=>rd:x30(0xfffffdffffffffff), rs2:x18(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x30, x18, 0x0, 0x00000000a4a42a71, 0xfffffdffffffffff, 0x0000000000000000, x4, 8, x5)

inst_247:
    // Test 247:  Test with marching zeros/ones
    // result rd:x31(0x00000000a4a42a71), rs1=>rd:x31(0xfffffbffffffffff), rs2:x17(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x31, x17, 0x0, 0x00000000a4a42a71, 0xfffffbffffffffff, 0x0000000000000000, x4, 16, x5)

inst_248:
    // Test 248:  Test with marching zeros/ones
    // result rd:x1(0x00000000a4a42a71), rs1=>rd:x1(0xfffff7ffffffffff), rs2:x16(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x1, x16, 0x0, 0x00000000a4a42a71, 0xfffff7ffffffffff, 0x0000000000000000, x4, 24, x5)

inst_249:
    // Test 249:  Test with marching zeros/ones
    // result rd:x2(0x00000000a4a42a71), rs1=>rd:x2(0xffffefffffffffff), rs2:x15(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x2, x15, 0x0, 0x00000000a4a42a71, 0xffffefffffffffff, 0x0000000000000000, x4, 32, x5)


    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with marching zeros/ones
    // result rd:x3(0x00000000a4a42a71), rs1=>rd:x3(0xffffdfffffffffff), rs2:x14(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x3, x14, 0x0, 0x00000000a4a42a71, 0xffffdfffffffffff, 0x0000000000000000, x1, 0, x2)

inst_251:
    // Test 251:  Test with marching zeros/ones
    // result rd:x4(0x00000000a4a42a71), rs1=>rd:x4(0xffffbfffffffffff), rs2:x13(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x4, x13, 0x0, 0x00000000a4a42a71, 0xffffbfffffffffff, 0x0000000000000000, x1, 8, x2)

inst_252:
    // Test 252:  Test with marching zeros/ones
    // result rd:x5(0x00000000a4a42a71), rs1=>rd:x5(0xffff7fffffffffff), rs2:x12(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x5, x12, 0x0, 0x00000000a4a42a71, 0xffff7fffffffffff, 0x0000000000000000, x1, 16, x2)

inst_253:
    // Test 253:  Test with marching zeros/ones
    // result rd:x6(0x00000000a4a42a71), rs1=>rd:x6(0xfffeffffffffffff), rs2:x11(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x6, x11, 0x0, 0x00000000a4a42a71, 0xfffeffffffffffff, 0x0000000000000000, x1, 24, x2)

inst_254:
    // Test 254:  Test with marching zeros/ones
    // result rd:x7(0x00000000a4a42a71), rs1=>rd:x7(0xfffdffffffffffff), rs2:x10(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x7, x10, 0x0, 0x00000000a4a42a71, 0xfffdffffffffffff, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with marching zeros/ones
    // result rd:x8(0x00000000a4a42a71), rs1=>rd:x8(0xfffbffffffffffff), rs2:x9(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x8, x9, 0x0, 0x00000000a4a42a71, 0xfffbffffffffffff, 0x0000000000000000, x1, 0, x2)

inst_256:
    // Test 256:  Test with marching zeros/ones
    // result rd:x9(0x00000000a4a42a71), rs1=>rd:x9(0xfff7ffffffffffff), rs2:x8(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x9, x8, 0x0, 0x00000000a4a42a71, 0xfff7ffffffffffff, 0x0000000000000000, x1, 8, x2)

inst_257:
    // Test 257:  Test with marching zeros/ones
    // result rd:x10(0x00000000a4a42a71), rs1=>rd:x10(0xffefffffffffffff), rs2:x7(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x10, x7, 0x0, 0x00000000a4a42a71, 0xffefffffffffffff, 0x0000000000000000, x1, 16, x2)

inst_258:
    // Test 258:  Test with marching zeros/ones
    // result rd:x11(0x00000000a4a42a71), rs1=>rd:x11(0xffdfffffffffffff), rs2:x6(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x11, x6, 0x0, 0x00000000a4a42a71, 0xffdfffffffffffff, 0x0000000000000000, x1, 24, x2)

inst_259:
    // Test 259:  Test with marching zeros/ones
    // result rd:x12(0x00000000a4a42a71), rs1=>rd:x12(0xffbfffffffffffff), rs2:x5(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x12, x5, 0x0, 0x00000000a4a42a71, 0xffbfffffffffffff, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x5,signature_53_0)


inst_260:
    // Test 260:  Test with marching zeros/ones
    // result rd:x13(0x0000000071a4a42a), rs1=>rd:x13(0xff7fffffffffffff), rs2:x4(0x0000000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x13, x4, 0x3, 0x0000000071a4a42a, 0xff7fffffffffffff, 0x0000000000000000, x5, 0, x6)

inst_261:
    // Test 261:  Test with marching zeros/ones
    // result rd:x14(0x0000000071a4a42a), rs1=>rd:x14(0xfeffffffffffffff), rs2:x3(0x0000000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x14, x3, 0x3, 0x0000000071a4a42a, 0xfeffffffffffffff, 0x0000000000000000, x5, 8, x6)

inst_262:
    // Test 262:  Test with marching zeros/ones
    // result rd:x15(0x0000000071a4a42a), rs1=>rd:x15(0xfdffffffffffffff), rs2:x2(0x0000000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x15, x2, 0x3, 0x0000000071a4a42a, 0xfdffffffffffffff, 0x0000000000000000, x5, 16, x6)

inst_263:
    // Test 263:  Test with marching zeros/ones
    // result rd:x16(0x0000000071a4a42a), rs1=>rd:x16(0xfbffffffffffffff), rs2:x1(0x0000000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x16, x1, 0x3, 0x0000000071a4a42a, 0xfbffffffffffffff, 0x0000000000000000, x5, 24, x6)

inst_264:
    // Test 264:  Test with marching zeros/ones
    // result rd:x17(0x00000000a42a71a4), rs1=>rd:x17(0xf7ffffffffffffff), rs2:x31(0x0000000000000000), imm:0x1
    TEST_RI_OP(sm4ed, x17, x31, 0x1, 0x00000000a42a71a4, 0xf7ffffffffffffff, 0x0000000000000000, x5, 32, x6)


    
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_54_0)


inst_265:
    // Test 265:  Test with marching zeros/ones
    // result rd:x18(0x00000000a42a71a4), rs1=>rd:x18(0xefffffffffffffff), rs2:x30(0x0000000000000000), imm:0x1
    TEST_RI_OP(sm4ed, x18, x30, 0x1, 0x00000000a42a71a4, 0xefffffffffffffff, 0x0000000000000000, x1, 0, x2)

inst_266:
    // Test 266:  Test with marching zeros/ones
    // result rd:x19(0x0000000071a4a42a), rs1=>rd:x19(0xdfffffffffffffff), rs2:x29(0x0000000000000000), imm:0x3
    TEST_RI_OP(sm4ed, x19, x29, 0x3, 0x0000000071a4a42a, 0xdfffffffffffffff, 0x0000000000000000, x1, 8, x2)

inst_267:
    // Test 267:  Test with marching zeros/ones
    // result rd:x20(0x00000000a42a71a4), rs1=>rd:x20(0xbfffffffffffffff), rs2:x28(0x0000000000000000), imm:0x1
    TEST_RI_OP(sm4ed, x20, x28, 0x1, 0x00000000a42a71a4, 0xbfffffffffffffff, 0x0000000000000000, x1, 16, x2)

inst_268:
    // Test 268:  Test with marching zeros/ones
    // result rd:x21(0x000000002a71a4a4), rs1=>rd:x21(0x7fffffffffffffff), rs2:x27(0x0000000000000000), imm:0x2
    TEST_RI_OP(sm4ed, x21, x27, 0x2, 0x000000002a71a4a4, 0x7fffffffffffffff, 0x0000000000000000, x1, 24, x2)

inst_269:
    // Test 269:  Test with marching zeros/ones
    // result rd:x22(0x00000000a4a42a71), rs1=>rd:x22(0xffffffffffffffff), rs2:x26(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ed, x22, x26, 0x0, 0x00000000a4a42a71, 0xffffffffffffffff, 0x0000000000000000, x1, 32, x2)


    
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ed)

	RVTEST_SIGBASE(x1,signature_55_0)


inst_270:
    // Test 270:  Test with random values
    // result rd:x23(0x000000008b54c90d), rs1=>rd:x23(0x10fd3dedadea5195), rs2:x25(0xdf7f3844121bcc23), imm:0x2
    TEST_RI_OP(sm4ed, x23, x25, 0x2, 0x000000008b54c90d, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x1, 0, x2)

inst_271:
    // Test 271:  Test with rd == x0
    // result rd:x0(0x0000000000000000), rs1=>rd:x0(0xbd295ce2d2ffbec1), rs2:x24(0xf5adb41aa47d105b), imm:0x1
    TEST_RI_OP(sm4ed, x0, x24, 0x1, 0x0000000000000000, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x1, 8, x2)

inst_272:
    // Test 272:  Test with rs2 == x0
    // result rd:x25(0x0000000026baf36e), rs1=>rd:x25(0xc9649f05a8e1a8bb), rs2:x0(0x82f6747f707af2c0), imm:0x3
    TEST_RI_OP(sm4ed, x25, x0, 0x3, 0x0000000026baf36e, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x1, 16, x2)

inst_273:
    // Test 273:  Test with random values
    // result rd:x26(0x00000000856c3aa3), rs1=>rd:x26(0x3541291848c99fcb), rs2:x22(0x73a92fd4e19bfbc3), imm:0x3
    TEST_RI_OP(sm4ed, x26, x22, 0x3, 0x00000000856c3aa3, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x1, 24, x2)
	
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

