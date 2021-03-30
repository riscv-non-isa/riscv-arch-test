// RISC-V Architectural Validation Test SM4KS-02
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
// Description: Testing instruction 'sm4ks'.
// Using dataset: sbox32

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV64IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1


    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with dataset: sbox32
    // result rd:x1(0x000000006df03a43), rs1=>rd:x1(0x10fd3dedadea5195), rs2:x16(0x0000000000000000), imm:0x0
    TEST_RI_OP(sm4ks, x1, x16, 0x0, 0x000000006df03a43, 0x10fd3dedadea5195, 0x0000000000000000, x6, 0, x7)

inst_1:
    // Test 1:  Test with dataset: sbox32
    // result rd:x2(0x00000000c0b72ec1), rs1=>rd:x2(0xbd295ce2d2ffbec1), rs2:x15(0x0000000000000100), imm:0x1
    TEST_RI_OP(sm4ks, x2, x15, 0x1, 0x00000000c0b72ec1, 0xbd295ce2d2ffbec1, 0x0000000000000100, x6, 8, x7)

inst_2:
    // Test 2:  Test with dataset: sbox32
    // result rd:x3(0x00000000dc088826), rs1=>rd:x3(0xc9649f05a8e1a8bb), rs2:x14(0x0000000000020000), imm:0x2
    TEST_RI_OP(sm4ks, x3, x14, 0x2, 0x00000000dc088826, 0xc9649f05a8e1a8bb, 0x0000000000020000, x6, 16, x7)

inst_3:
    // Test 3:  Test with dataset: sbox32
    // result rd:x4(0x00000000b60980b4), rs1=>rd:x4(0x3541291848c99fcb), rs2:x13(0x0000000003000000), imm:0x3
    TEST_RI_OP(sm4ks, x4, x13, 0x3, 0x00000000b60980b4, 0x3541291848c99fcb, 0x0000000003000000, x6, 24, x7)

inst_4:
    // Test 4:  Test with dataset: sbox32
    // result rd:x5(0x00000000c6043483), rs1=>rd:x5(0x10a24740461d524f), rs2:x12(0x0000000000000004), imm:0x0
    TEST_RI_OP(sm4ks, x5, x12, 0x0, 0x00000000c6043483, 0x10a24740461d524f, 0x0000000000000004, x6, 32, x7)


    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with dataset: sbox32
    // result rd:x6(0x00000000cefaf18f), rs1=>rd:x6(0x546b0e54528a10af), rs2:x11(0x0000000000000500), imm:0x1
    TEST_RI_OP(sm4ks, x6, x11, 0x1, 0x00000000cefaf18f, 0x546b0e54528a10af, 0x0000000000000500, x1, 0, x2)

inst_6:
    // Test 6:  Test with dataset: sbox32
    // result rd:x7(0x00000000ffa65b44), rs1=>rd:x7(0x73a92fd4e19bfbc3), rs2:x10(0x0000000000060000), imm:0x2
    TEST_RI_OP(sm4ks, x7, x10, 0x2, 0x00000000ffa65b44, 0x73a92fd4e19bfbc3, 0x0000000000060000, x1, 8, x2)

inst_7:
    // Test 7:  Test with dataset: sbox32
    // result rd:x8(0x00000000c79a649b), rs1=>rd:x8(0x82f6747f707af2c0), rs2:x9(0x0000000007000000), imm:0x3
    TEST_RI_OP(sm4ks, x8, x9, 0x3, 0x00000000c79a649b, 0x82f6747f707af2c0, 0x0000000007000000, x1, 16, x2)

inst_8:
    // Test 8:  Test with dataset: sbox32
    // result rd:x9(0x00000000647f1b4d), rs1=>rd:x9(0xf5adb41aa47d105b), rs2:x8(0x0000000000000008), imm:0x0
    TEST_RI_OP(sm4ks, x9, x8, 0x0, 0x00000000647f1b4d, 0xf5adb41aa47d105b, 0x0000000000000008, x1, 24, x2)

inst_9:
    // Test 9:  Test with dataset: sbox32
    // result rd:x10(0x0000000004407ae3), rs1=>rd:x10(0xdf7f3844121bcc23), rs2:x7(0x0000000000000900), imm:0x1
    TEST_RI_OP(sm4ks, x10, x7, 0x1, 0x0000000004407ae3, 0xdf7f3844121bcc23, 0x0000000000000900, x1, 32, x2)


    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with dataset: sbox32
    // result rd:x11(0x00000000a7fed197), rs1=>rd:x11(0x10fd3dedadea5195), rs2:x6(0x00000000000a0000), imm:0x2
    TEST_RI_OP(sm4ks, x11, x6, 0x2, 0x00000000a7fed197, 0x10fd3dedadea5195, 0x00000000000a0000, x1, 0, x7)

inst_11:
    // Test 11:  Test with dataset: sbox32
    // result rd:x12(0x0000000010bfa6a0), rs1=>rd:x12(0xbd295ce2d2ffbec1), rs2:x5(0x000000000b000000), imm:0x3
    TEST_RI_OP(sm4ks, x12, x5, 0x3, 0x0000000010bfa6a0, 0xbd295ce2d2ffbec1, 0x000000000b000000, x1, 8, x7)

inst_12:
    // Test 12:  Test with dataset: sbox32
    // result rd:x13(0x00000000a8e4bc93), rs1=>rd:x13(0xc9649f05a8e1a8bb), rs2:x4(0x000000000000000c), imm:0x0
    TEST_RI_OP(sm4ks, x13, x4, 0x0, 0x00000000a8e4bc93, 0xc9649f05a8e1a8bb, 0x000000000000000c, x1, 16, x7)

inst_13:
    // Test 13:  Test with dataset: sbox32
    // result rd:x14(0x00000000d7b464ab), rs1=>rd:x14(0x3541291848c99fcb), rs2:x3(0x0000000000000d00), imm:0x1
    TEST_RI_OP(sm4ks, x14, x3, 0x1, 0x00000000d7b464ab, 0x3541291848c99fcb, 0x0000000000000d00, x1, 24, x7)

inst_14:
    // Test 14:  Test with dataset: sbox32
    // result rd:x15(0x000000005031d24a), rs1=>rd:x15(0x10a24740461d524f), rs2:x2(0x00000000000e0000), imm:0x2
    TEST_RI_OP(sm4ks, x15, x2, 0x2, 0x000000005031d24a, 0x10a24740461d524f, 0x00000000000e0000, x1, 32, x7)


    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with dataset: sbox32
    // result rd:x16(0x00000000572a90ad), rs1=>rd:x16(0x546b0e54528a10af), rs2:x1(0x000000000f000000), imm:0x3
    TEST_RI_OP(sm4ks, x16, x1, 0x3, 0x00000000572a90ad, 0x546b0e54528a10af, 0x000000000f000000, x2, 0, x3)

inst_16:
    // Test 16:  Test with dataset: sbox32
    // result rd:x17(0x00000000811eeee8), rs1=>rd:x17(0x73a92fd4e19bfbc3), rs2:x31(0x0000000000000010), imm:0x0
    TEST_RI_OP(sm4ks, x17, x31, 0x0, 0x00000000811eeee8, 0x73a92fd4e19bfbc3, 0x0000000000000010, x2, 8, x3)

inst_17:
    // Test 17:  Test with dataset: sbox32
    // result rd:x18(0x00000000fc499520), rs1=>rd:x18(0x82f6747f707af2c0), rs2:x30(0x0000000000001100), imm:0x1
    TEST_RI_OP(sm4ks, x18, x30, 0x1, 0x00000000fc499520, 0x82f6747f707af2c0, 0x0000000000001100, x2, 16, x3)

inst_18:
    // Test 18:  Test with dataset: sbox32
    // result rd:x19(0x00000000e9e75048), rs1=>rd:x19(0xf5adb41aa47d105b), rs2:x29(0x0000000000120000), imm:0x2
    TEST_RI_OP(sm4ks, x19, x29, 0x2, 0x00000000e9e75048, 0xf5adb41aa47d105b, 0x0000000000120000, x2, 24, x3)

inst_19:
    // Test 19:  Test with dataset: sbox32
    // result rd:x20(0x0000000064dbc218), rs1=>rd:x20(0xdf7f3844121bcc23), rs2:x28(0x0000000013000000), imm:0x3
    TEST_RI_OP(sm4ks, x20, x28, 0x3, 0x0000000064dbc218, 0xdf7f3844121bcc23, 0x0000000013000000, x2, 32, x3)


    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with dataset: sbox32
    // result rd:x21(0x00000000edef44bf), rs1=>rd:x21(0x10fd3dedadea5195), rs2:x27(0x0000000000000014), imm:0x0
    TEST_RI_OP(sm4ks, x21, x27, 0x0, 0x00000000edef44bf, 0x10fd3dedadea5195, 0x0000000000000014, x1, 0, x2)

inst_21:
    // Test 21:  Test with dataset: sbox32
    // result rd:x22(0x00000000c5a00001), rs1=>rd:x22(0xbd295ce2d2ffbec1), rs2:x26(0x0000000000001500), imm:0x1
    TEST_RI_OP(sm4ks, x22, x26, 0x1, 0x00000000c5a00001, 0xbd295ce2d2ffbec1, 0x0000000000001500, x1, 8, x2)

inst_22:
    // Test 22:  Test with dataset: sbox32
    // result rd:x23(0x00000000aae528bb), rs1=>rd:x23(0xc9649f05a8e1a8bb), rs2:x25(0x0000000000160000), imm:0x2
    TEST_RI_OP(sm4ks, x23, x25, 0x2, 0x00000000aae528bb, 0xc9649f05a8e1a8bb, 0x0000000000160000, x1, 16, x2)

inst_23:
    // Test 23:  Test with dataset: sbox32
    // result rd:x24(0x00000000d4609861), rs1=>rd:x24(0x3541291848c99fcb), rs2:x24(0x0000000017000000), imm:0x3
    TEST_RI_OP(sm4ks, x24, x24, 0x3, 0x00000000d4609861, 0x3541291848c99fcb, 0x0000000017000000, x1, 24, x2)

inst_24:
    // Test 24:  Test with dataset: sbox32
    // result rd:x25(0x00000000060807e5), rs1=>rd:x25(0x10a24740461d524f), rs2:x23(0x0000000000000018), imm:0x0
    TEST_RI_OP(sm4ks, x25, x23, 0x0, 0x00000000060807e5, 0x10a24740461d524f, 0x0000000000000018, x1, 32, x2)


    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with dataset: sbox32
    // result rd:x26(0x000000005aa8542f), rs1=>rd:x26(0x546b0e54528a10af), rs2:x22(0x0000000000001900), imm:0x1
    TEST_RI_OP(sm4ks, x26, x22, 0x1, 0x000000005aa8542f, 0x546b0e54528a10af, 0x0000000000001900, x1, 0, x7)

inst_26:
    // Test 26:  Test with dataset: sbox32
    // result rd:x27(0x00000000e8889b41), rs1=>rd:x27(0x73a92fd4e19bfbc3), rs2:x21(0x00000000001a0000), imm:0x2
    TEST_RI_OP(sm4ks, x27, x21, 0x2, 0x00000000e8889b41, 0x73a92fd4e19bfbc3, 0x00000000001a0000, x1, 8, x7)

inst_27:
    // Test 27:  Test with dataset: sbox32
    // result rd:x28(0x0000000056baf6d3), rs1=>rd:x28(0x82f6747f707af2c0), rs2:x20(0x000000001b000000), imm:0x3
    TEST_RI_OP(sm4ks, x28, x20, 0x3, 0x0000000056baf6d3, 0x82f6747f707af2c0, 0x000000001b000000, x1, 16, x7)

inst_28:
    // Test 28:  Test with dataset: sbox32
    // result rd:x29(0x0000000084f43412), rs1=>rd:x29(0xf5adb41aa47d105b), rs2:x19(0x000000000000001c), imm:0x0
    TEST_RI_OP(sm4ks, x29, x19, 0x0, 0x0000000084f43412, 0xf5adb41aa47d105b, 0x000000000000001c, x1, 24, x7)

inst_29:
    // Test 29:  Test with dataset: sbox32
    // result rd:x30(0x0000000002584ae3), rs1=>rd:x30(0xdf7f3844121bcc23), rs2:x18(0x0000000000001d00), imm:0x1
    TEST_RI_OP(sm4ks, x30, x18, 0x1, 0x0000000002584ae3, 0xdf7f3844121bcc23, 0x0000000000001d00, x1, 32, x7)


    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with dataset: sbox32
    // result rd:x31(0x00000000aeec9195), rs1=>rd:x31(0x10fd3dedadea5195), rs2:x17(0x00000000001e0000), imm:0x2
    TEST_RI_OP(sm4ks, x31, x17, 0x2, 0x00000000aeec9195, 0x10fd3dedadea5195, 0x00000000001e0000, x5, 0, x6)

inst_31:
    // Test 31:  Test with dataset: sbox32
    // result rd:x1(0x000000004bdf2d8d), rs1=>rd:x1(0xbd295ce2d2ffbec1), rs2:x16(0x000000001f000000), imm:0x3
    TEST_RI_OP(sm4ks, x1, x16, 0x3, 0x000000004bdf2d8d, 0xbd295ce2d2ffbec1, 0x000000001f000000, x5, 8, x6)

inst_32:
    // Test 32:  Test with dataset: sbox32
    // result rd:x2(0x0000000028f2e627), rs1=>rd:x2(0xc9649f05a8e1a8bb), rs2:x15(0x0000000000000020), imm:0x0
    TEST_RI_OP(sm4ks, x2, x15, 0x0, 0x0000000028f2e627, 0xc9649f05a8e1a8bb, 0x0000000000000020, x5, 16, x6)

inst_33:
    // Test 33:  Test with dataset: sbox32
    // result rd:x3(0x0000000040e8dd8b), rs1=>rd:x3(0x3541291848c99fcb), rs2:x14(0x0000000000002100), imm:0x1
    TEST_RI_OP(sm4ks, x3, x14, 0x1, 0x0000000040e8dd8b, 0x3541291848c99fcb, 0x0000000000002100, x5, 24, x6)

inst_34:
    // Test 34:  Test with dataset: sbox32
    // result rd:x4(0x000000006e4d5245), rs1=>rd:x4(0x10a24740461d524f), rs2:x13(0x0000000000220000), imm:0x2
    TEST_RI_OP(sm4ks, x4, x13, 0x2, 0x000000006e4d5245, 0x10a24740461d524f, 0x0000000000220000, x5, 32, x6)


    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with dataset: sbox32
    // result rd:x5(0x00000000a60a0ed5), rs1=>rd:x5(0x546b0e54528a10af), rs2:x12(0x0000000023000000), imm:0x3
    TEST_RI_OP(sm4ks, x5, x12, 0x3, 0x00000000a60a0ed5, 0x546b0e54528a10af, 0x0000000023000000, x1, 0, x2)

inst_36:
    // Test 36:  Test with dataset: sbox32
    // result rd:x6(0x00000000c109b352), rs1=>rd:x6(0x73a92fd4e19bfbc3), rs2:x11(0x0000000000000024), imm:0x0
    TEST_RI_OP(sm4ks, x6, x11, 0x0, 0x00000000c109b352, 0x73a92fd4e19bfbc3, 0x0000000000000024, x1, 8, x2)

inst_37:
    // Test 37:  Test with dataset: sbox32
    // result rd:x7(0x00000000ed0d1d20), rs1=>rd:x7(0x82f6747f707af2c0), rs2:x10(0x0000000000002500), imm:0x1
    TEST_RI_OP(sm4ks, x7, x10, 0x1, 0x00000000ed0d1d20, 0x82f6747f707af2c0, 0x0000000000002500, x1, 16, x2)

inst_38:
    // Test 38:  Test with dataset: sbox32
    // result rd:x8(0x00000000e8e51048), rs1=>rd:x8(0xf5adb41aa47d105b), rs2:x9(0x0000000000260000), imm:0x2
    TEST_RI_OP(sm4ks, x8, x9, 0x2, 0x00000000e8e51048, 0xf5adb41aa47d105b, 0x0000000000260000, x1, 24, x2)

inst_39:
    // Test 39:  Test with dataset: sbox32
    // result rd:x9(0x00000000685bc31e), rs1=>rd:x9(0xdf7f3844121bcc23), rs2:x8(0x0000000027000000), imm:0x3
    TEST_RI_OP(sm4ks, x9, x8, 0x3, 0x00000000685bc31e, 0xdf7f3844121bcc23, 0x0000000027000000, x1, 32, x2)


    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with dataset: sbox32
    // result rd:x10(0x00000000cd6c48a6), rs1=>rd:x10(0x10fd3dedadea5195), rs2:x7(0x0000000000000028), imm:0x0
    TEST_RI_OP(sm4ks, x10, x7, 0x0, 0x00000000cd6c48a6, 0x10fd3dedadea5195, 0x0000000000000028, x1, 0, x2)

inst_41:
    // Test 41:  Test with dataset: sbox32
    // result rd:x11(0x00000000d8d5ea41), rs1=>rd:x11(0xbd295ce2d2ffbec1), rs2:x6(0x0000000000002900), imm:0x1
    TEST_RI_OP(sm4ks, x11, x6, 0x1, 0x00000000d8d5ea41, 0xbd295ce2d2ffbec1, 0x0000000000002900, x1, 8, x2)

inst_42:
    // Test 42:  Test with dataset: sbox32
    // result rd:x12(0x00000000adeac83a), rs1=>rd:x12(0xc9649f05a8e1a8bb), rs2:x5(0x00000000002a0000), imm:0x2
    TEST_RI_OP(sm4ks, x12, x5, 0x2, 0x00000000adeac83a, 0xc9649f05a8e1a8bb, 0x00000000002a0000, x1, 16, x2)

inst_43:
    // Test 43:  Test with dataset: sbox32
    // result rd:x13(0x000000000ba917ea), rs1=>rd:x13(0x3541291848c99fcb), rs2:x4(0x000000002b000000), imm:0x3
    TEST_RI_OP(sm4ks, x13, x4, 0x3, 0x000000000ba917ea, 0x3541291848c99fcb, 0x000000002b000000, x1, 24, x2)

inst_44:
    // Test 44:  Test with dataset: sbox32
    // result rd:x14(0x00000000e68024a2), rs1=>rd:x14(0x10a24740461d524f), rs2:x3(0x000000000000002c), imm:0x0
    TEST_RI_OP(sm4ks, x14, x3, 0x0, 0x00000000e68024a2, 0x10a24740461d524f, 0x000000000000002c, x1, 32, x2)


    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with dataset: sbox32
    // result rd:x15(0x00000000cbeddf4f), rs1=>rd:x15(0x546b0e54528a10af), rs2:x2(0x0000000000002d00), imm:0x1
    TEST_RI_OP(sm4ks, x15, x2, 0x1, 0x00000000cbeddf4f, 0x546b0e54528a10af, 0x0000000000002d00, x3, 0, x4)

inst_46:
    // Test 46:  Test with dataset: sbox32
    // result rd:x16(0x00000000b7377bd6), rs1=>rd:x16(0x73a92fd4e19bfbc3), rs2:x1(0x00000000002e0000), imm:0x2
    TEST_RI_OP(sm4ks, x16, x1, 0x2, 0x00000000b7377bd6, 0x73a92fd4e19bfbc3, 0x00000000002e0000, x3, 8, x4)

inst_47:
    // Test 47:  Test with dataset: sbox32
    // result rd:x17(0x00000000123afef1), rs1=>rd:x17(0x82f6747f707af2c0), rs2:x31(0x000000002f000000), imm:0x3
    TEST_RI_OP(sm4ks, x17, x31, 0x3, 0x00000000123afef1, 0x82f6747f707af2c0, 0x000000002f000000, x3, 16, x4)

inst_48:
    // Test 48:  Test with dataset: sbox32
    // result rd:x18(0x00000000246162bf), rs1=>rd:x18(0xf5adb41aa47d105b), rs2:x30(0x0000000000000030), imm:0x0
    TEST_RI_OP(sm4ks, x18, x30, 0x0, 0x00000000246162bf, 0xf5adb41aa47d105b, 0x0000000000000030, x3, 24, x4)

inst_49:
    // Test 49:  Test with dataset: sbox32
    // result rd:x19(0x0000000084427f43), rs1=>rd:x19(0xdf7f3844121bcc23), rs2:x29(0x0000000000003100), imm:0x1
    TEST_RI_OP(sm4ks, x19, x29, 0x1, 0x0000000084427f43, 0xdf7f3844121bcc23, 0x0000000000003100, x3, 32, x4)


    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with dataset: sbox32
    // result rd:x20(0x00000000a3f6d196), rs1=>rd:x20(0x10fd3dedadea5195), rs2:x28(0x0000000000320000), imm:0x2
    TEST_RI_OP(sm4ks, x20, x28, 0x2, 0x00000000a3f6d196, 0x10fd3dedadea5195, 0x0000000000320000, x1, 0, x2)

inst_51:
    // Test 51:  Test with dataset: sbox32
    // result rd:x21(0x000000007bdf2b95), rs1=>rd:x21(0xbd295ce2d2ffbec1), rs2:x27(0x0000000033000000), imm:0x3
    TEST_RI_OP(sm4ks, x21, x27, 0x3, 0x000000007bdf2b95, 0xbd295ce2d2ffbec1, 0x0000000033000000, x1, 8, x2)

inst_52:
    // Test 52:  Test with dataset: sbox32
    // result rd:x22(0x000000008878cc72), rs1=>rd:x22(0xc9649f05a8e1a8bb), rs2:x26(0x0000000000000034), imm:0x0
    TEST_RI_OP(sm4ks, x22, x26, 0x0, 0x000000008878cc72, 0xc9649f05a8e1a8bb, 0x0000000000000034, x1, 16, x2)

inst_53:
    // Test 53:  Test with dataset: sbox32
    // result rd:x23(0x0000000049cd97cb), rs1=>rd:x23(0x3541291848c99fcb), rs2:x25(0x0000000000003500), imm:0x1
    TEST_RI_OP(sm4ks, x23, x25, 0x1, 0x0000000049cd97cb, 0x3541291848c99fcb, 0x0000000000003500, x1, 24, x2)

inst_54:
    // Test 54:  Test with dataset: sbox32
    // result rd:x24(0x0000000074de001d), rs1=>rd:x24(0x10a24740461d524f), rs2:x24(0x0000000000360000), imm:0x2
    TEST_RI_OP(sm4ks, x24, x24, 0x2, 0x0000000074de001d, 0x10a24740461d524f, 0x0000000000360000, x1, 32, x2)


    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with dataset: sbox32
    // result rd:x25(0x00000000c72a82e5), rs1=>rd:x25(0x546b0e54528a10af), rs2:x23(0x0000000037000000), imm:0x3
    TEST_RI_OP(sm4ks, x25, x23, 0x3, 0x00000000c72a82e5, 0x546b0e54528a10af, 0x0000000037000000, x1, 0, x2)

inst_56:
    // Test 56:  Test with dataset: sbox32
    // result rd:x26(0x00000000e18bbb43), rs1=>rd:x26(0x73a92fd4e19bfbc3), rs2:x22(0x0000000000000038), imm:0x0
    TEST_RI_OP(sm4ks, x26, x22, 0x0, 0x00000000e18bbb43, 0x73a92fd4e19bfbc3, 0x0000000000000038, x1, 8, x2)

inst_57:
    // Test 57:  Test with dataset: sbox32
    // result rd:x27(0x00000000eb152d20), rs1=>rd:x27(0x82f6747f707af2c0), rs2:x21(0x0000000000003900), imm:0x1
    TEST_RI_OP(sm4ks, x27, x21, 0x1, 0x00000000eb152d20, 0x82f6747f707af2c0, 0x0000000000003900, x1, 16, x2)

inst_58:
    // Test 58:  Test with dataset: sbox32
    // result rd:x28(0x00000000eee99049), rs1=>rd:x28(0xf5adb41aa47d105b), rs2:x20(0x00000000003a0000), imm:0x2
    TEST_RI_OP(sm4ks, x28, x20, 0x2, 0x00000000eee99049, 0xf5adb41aa47d105b, 0x00000000003a0000, x1, 24, x2)

inst_59:
    // Test 59:  Test with dataset: sbox32
    // result rd:x29(0x00000000e85bd35e), rs1=>rd:x29(0xdf7f3844121bcc23), rs2:x19(0x000000003b000000), imm:0x3
    TEST_RI_OP(sm4ks, x29, x19, 0x3, 0x00000000e85bd35e, 0xdf7f3844121bcc23, 0x000000003b000000, x1, 32, x2)


    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with dataset: sbox32
    // result rd:x30(0x000000000d646be0), rs1=>rd:x30(0x10fd3dedadea5195), rs2:x18(0x000000000000003c), imm:0x0
    TEST_RI_OP(sm4ks, x30, x18, 0x0, 0x000000000d646be0, 0x10fd3dedadea5195, 0x000000000000003c, x4, 0, x5)

inst_61:
    // Test 61:  Test with dataset: sbox32
    // result rd:x31(0x0000000043b83121), rs1=>rd:x31(0xbd295ce2d2ffbec1), rs2:x17(0x0000000000003d00), imm:0x1
    TEST_RI_OP(sm4ks, x31, x17, 0x1, 0x0000000043b83121, 0xbd295ce2d2ffbec1, 0x0000000000003d00, x4, 8, x5)

inst_62:
    // Test 62:  Test with dataset: sbox32
    // result rd:x1(0x00000000b7de483c), rs1=>rd:x1(0xc9649f05a8e1a8bb), rs2:x16(0x00000000003e0000), imm:0x2
    TEST_RI_OP(sm4ks, x1, x16, 0x2, 0x00000000b7de483c, 0xc9649f05a8e1a8bb, 0x00000000003e0000, x4, 16, x5)

inst_63:
    // Test 63:  Test with dataset: sbox32
    // result rd:x2(0x00000000ee098b98), rs1=>rd:x2(0x3541291848c99fcb), rs2:x15(0x000000003f000000), imm:0x3
    TEST_RI_OP(sm4ks, x2, x15, 0x3, 0x00000000ee098b98, 0x3541291848c99fcb, 0x000000003f000000, x4, 24, x5)

inst_64:
    // Test 64:  Test with dataset: sbox32
    // result rd:x3(0x00000000a6957108), rs1=>rd:x3(0x10a24740461d524f), rs2:x14(0x0000000000000040), imm:0x0
    TEST_RI_OP(sm4ks, x3, x14, 0x0, 0x00000000a6957108, 0x10a24740461d524f, 0x0000000000000040, x4, 32, x5)


    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with dataset: sbox32
    // result rd:x4(0x00000000d289174f), rs1=>rd:x4(0x546b0e54528a10af), rs2:x13(0x0000000000004100), imm:0x1
    TEST_RI_OP(sm4ks, x4, x13, 0x1, 0x00000000d289174f, 0x546b0e54528a10af, 0x0000000000004100, x1, 0, x2)

inst_66:
    // Test 66:  Test with dataset: sbox32
    // result rd:x5(0x00000000b23c1b57), rs1=>rd:x5(0x73a92fd4e19bfbc3), rs2:x12(0x0000000000420000), imm:0x2
    TEST_RI_OP(sm4ks, x5, x12, 0x2, 0x00000000b23c1b57, 0x73a92fd4e19bfbc3, 0x0000000000420000, x1, 8, x2)

inst_67:
    // Test 67:  Test with dataset: sbox32
    // result rd:x6(0x000000008cfaedbe), rs1=>rd:x6(0x82f6747f707af2c0), rs2:x11(0x0000000043000000), imm:0x3
    TEST_RI_OP(sm4ks, x6, x11, 0x3, 0x000000008cfaedbe, 0x82f6747f707af2c0, 0x0000000043000000, x1, 16, x2)

inst_68:
    // Test 68:  Test with dataset: sbox32
    // result rd:x7(0x00000000c4e369a8), rs1=>rd:x7(0xf5adb41aa47d105b), rs2:x10(0x0000000000000044), imm:0x0
    TEST_RI_OP(sm4ks, x7, x10, 0x0, 0x00000000c4e369a8, 0xf5adb41aa47d105b, 0x0000000000000044, x1, 24, x2)

inst_69:
    // Test 69:  Test with dataset: sbox32
    // result rd:x8(0x000000009c22bf43), rs1=>rd:x8(0xdf7f3844121bcc23), rs2:x9(0x0000000000004500), imm:0x1
    TEST_RI_OP(sm4ks, x8, x9, 0x1, 0x000000009c22bf43, 0xdf7f3844121bcc23, 0x0000000000004500, x1, 32, x2)


    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with dataset: sbox32
    // result rd:x9(0x00000000a6fdb117), rs1=>rd:x9(0x10fd3dedadea5195), rs2:x8(0x0000000000460000), imm:0x2
    TEST_RI_OP(sm4ks, x9, x8, 0x2, 0x00000000a6fdb117, 0x10fd3dedadea5195, 0x0000000000460000, x1, 0, x2)

inst_71:
    // Test 71:  Test with dataset: sbox32
    // result rd:x10(0x0000000068bfa99c), rs1=>rd:x10(0xbd295ce2d2ffbec1), rs2:x7(0x0000000047000000), imm:0x3
    TEST_RI_OP(sm4ks, x10, x7, 0x3, 0x0000000068bfa99c, 0xbd295ce2d2ffbec1, 0x0000000047000000, x1, 8, x2)

inst_72:
    // Test 72:  Test with dataset: sbox32
    // result rd:x11(0x00000000c871e938), rs1=>rd:x11(0xc9649f05a8e1a8bb), rs2:x6(0x0000000000000048), imm:0x0
    TEST_RI_OP(sm4ks, x11, x6, 0x0, 0x00000000c871e938, 0xc9649f05a8e1a8bb, 0x0000000000000048, x1, 16, x2)

inst_73:
    // Test 73:  Test with dataset: sbox32
    // result rd:x12(0x00000000c3e5c6eb), rs1=>rd:x12(0x3541291848c99fcb), rs2:x5(0x0000000000004900), imm:0x1
    TEST_RI_OP(sm4ks, x12, x5, 0x1, 0x00000000c3e5c6eb, 0x3541291848c99fcb, 0x0000000000004900, x1, 24, x2)

inst_74:
    // Test 74:  Test with dataset: sbox32
    // result rd:x13(0x000000005821d248), rs1=>rd:x13(0x10a24740461d524f), rs2:x4(0x00000000004a0000), imm:0x2
    TEST_RI_OP(sm4ks, x13, x4, 0x2, 0x000000005821d248, 0x10a24740461d524f, 0x00000000004a0000, x1, 32, x2)


    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with dataset: sbox32
    // result rd:x14(0x000000004baa93a3), rs1=>rd:x14(0x546b0e54528a10af), rs2:x3(0x000000004b000000), imm:0x3
    TEST_RI_OP(sm4ks, x14, x3, 0x3, 0x000000004baa93a3, 0x546b0e54528a10af, 0x000000004b000000, x4, 0, x5)

inst_76:
    // Test 76:  Test with dataset: sbox32
    // result rd:x15(0x0000000021878825), rs1=>rd:x15(0x73a92fd4e19bfbc3), rs2:x2(0x000000000000004c), imm:0x0
    TEST_RI_OP(sm4ks, x15, x2, 0x0, 0x0000000021878825, 0x73a92fd4e19bfbc3, 0x000000000000004c, x4, 8, x5)

inst_77:
    // Test 77:  Test with dataset: sbox32
    // result rd:x16(0x00000000e0387760), rs1=>rd:x16(0x82f6747f707af2c0), rs2:x1(0x0000000000004d00), imm:0x1
    TEST_RI_OP(sm4ks, x16, x1, 0x1, 0x00000000e0387760, 0x82f6747f707af2c0, 0x0000000000004d00, x4, 16, x5)

inst_78:
    // Test 78:  Test with dataset: sbox32
    // result rd:x17(0x000000008332f0d2), rs1=>rd:x17(0xf5adb41aa47d105b), rs2:x31(0x00000000004e0000), imm:0x2
    TEST_RI_OP(sm4ks, x17, x31, 0x2, 0x000000008332f0d2, 0xf5adb41aa47d105b, 0x00000000004e0000, x4, 24, x5)

inst_79:
    // Test 79:  Test with dataset: sbox32
    // result rd:x18(0x00000000ba1bd977), rs1=>rd:x18(0xdf7f3844121bcc23), rs2:x30(0x000000004f000000), imm:0x3
    TEST_RI_OP(sm4ks, x18, x30, 0x3, 0x00000000ba1bd977, 0xdf7f3844121bcc23, 0x000000004f000000, x4, 32, x5)


    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with dataset: sbox32
    // result rd:x19(0x00000000ade765fd), rs1=>rd:x19(0x10fd3dedadea5195), rs2:x29(0x0000000000000050), imm:0x0
    TEST_RI_OP(sm4ks, x19, x29, 0x0, 0x00000000ade765fd, 0x10fd3dedadea5195, 0x0000000000000050, x1, 0, x2)

inst_81:
    // Test 81:  Test with dataset: sbox32
    // result rd:x20(0x000000005fcad5a1), rs1=>rd:x20(0xbd295ce2d2ffbec1), rs2:x28(0x0000000000005100), imm:0x1
    TEST_RI_OP(sm4ks, x20, x28, 0x1, 0x000000005fcad5a1, 0xbd295ce2d2ffbec1, 0x0000000000005100, x1, 8, x2)

inst_82:
    // Test 82:  Test with dataset: sbox32
    // result rd:x21(0x00000000e860882b), rs1=>rd:x21(0xc9649f05a8e1a8bb), rs2:x27(0x0000000000520000), imm:0x2
    TEST_RI_OP(sm4ks, x21, x27, 0x2, 0x00000000e860882b, 0xc9649f05a8e1a8bb, 0x0000000000520000, x1, 16, x2)

inst_83:
    // Test 83:  Test with dataset: sbox32
    // result rd:x22(0x00000000fa898992), rs1=>rd:x22(0x3541291848c99fcb), rs2:x26(0x0000000053000000), imm:0x3
    TEST_RI_OP(sm4ks, x22, x26, 0x3, 0x00000000fa898992, 0x3541291848c99fcb, 0x0000000053000000, x1, 24, x2)

inst_84:
    // Test 84:  Test with dataset: sbox32
    // result rd:x23(0x0000000066936a3e), rs1=>rd:x23(0x10a24740461d524f), rs2:x25(0x0000000000000054), imm:0x0
    TEST_RI_OP(sm4ks, x23, x25, 0x0, 0x0000000066936a3e, 0x10a24740461d524f, 0x0000000000000054, x1, 32, x2)


    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with dataset: sbox32
    // result rd:x24(0x000000000c323180), rs1=>rd:x24(0x546b0e54528a10af), rs2:x24(0x0000000000005500), imm:0x1
    TEST_RI_OP(sm4ks, x24, x24, 0x1, 0x000000000c323180, 0x546b0e54528a10af, 0x0000000000005500, x1, 0, x2)

inst_86:
    // Test 86:  Test with dataset: sbox32
    // result rd:x25(0x000000008c41bbd8), rs1=>rd:x25(0x73a92fd4e19bfbc3), rs2:x23(0x0000000000560000), imm:0x2
    TEST_RI_OP(sm4ks, x25, x23, 0x2, 0x000000008c41bbd8, 0x73a92fd4e19bfbc3, 0x0000000000560000, x1, 8, x2)

inst_87:
    // Test 87:  Test with dataset: sbox32
    // result rd:x26(0x00000000fb1a6385), rs1=>rd:x26(0x82f6747f707af2c0), rs2:x22(0x0000000057000000), imm:0x3
    TEST_RI_OP(sm4ks, x26, x22, 0x3, 0x00000000fb1a6385, 0x82f6747f707af2c0, 0x0000000057000000, x1, 16, x2)

inst_88:
    // Test 88:  Test with dataset: sbox32
    // result rd:x27(0x00000000a4626ca3), rs1=>rd:x27(0xf5adb41aa47d105b), rs2:x21(0x0000000000000058), imm:0x0
    TEST_RI_OP(sm4ks, x27, x21, 0x0, 0x00000000a4626ca3, 0xf5adb41aa47d105b, 0x0000000000000058, x1, 24, x2)

inst_89:
    // Test 89:  Test with dataset: sbox32
    // result rd:x28(0x000000008f6e2743), rs1=>rd:x28(0xdf7f3844121bcc23), rs2:x20(0x0000000000005900), imm:0x1
    TEST_RI_OP(sm4ks, x28, x20, 0x1, 0x000000008f6e2743, 0xdf7f3844121bcc23, 0x0000000000005900, x1, 32, x2)


    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with dataset: sbox32
    // result rd:x29(0x00000000aae5b114), rs1=>rd:x29(0x10fd3dedadea5195), rs2:x19(0x00000000005a0000), imm:0x2
    TEST_RI_OP(sm4ks, x29, x19, 0x2, 0x00000000aae5b114, 0x10fd3dedadea5195, 0x00000000005a0000, x4, 0, x5)

inst_91:
    // Test 91:  Test with dataset: sbox32
    // result rd:x30(0x00000000999f37e4), rs1=>rd:x30(0xbd295ce2d2ffbec1), rs2:x18(0x000000005b000000), imm:0x3
    TEST_RI_OP(sm4ks, x30, x18, 0x3, 0x00000000999f37e4, 0xbd295ce2d2ffbec1, 0x000000005b000000, x4, 8, x5)

inst_92:
    // Test 92:  Test with dataset: sbox32
    // result rd:x31(0x00000000a8ef90cb), rs1=>rd:x31(0xc9649f05a8e1a8bb), rs2:x17(0x000000000000005c), imm:0x0
    TEST_RI_OP(sm4ks, x31, x17, 0x0, 0x00000000a8ef90cb, 0xc9649f05a8e1a8bb, 0x000000000000005c, x4, 16, x5)

inst_93:
    // Test 93:  Test with dataset: sbox32
    // result rd:x1(0x0000000042e2c90b), rs1=>rd:x1(0x3541291848c99fcb), rs2:x16(0x0000000000005d00), imm:0x1
    TEST_RI_OP(sm4ks, x1, x16, 0x1, 0x0000000042e2c90b, 0x3541291848c99fcb, 0x0000000000005d00, x4, 24, x5)

inst_94:
    // Test 94:  Test with dataset: sbox32
    // result rd:x2(0x000000000880f2dc), rs1=>rd:x2(0x10a24740461d524f), rs2:x15(0x00000000005e0000), imm:0x2
    TEST_RI_OP(sm4ks, x2, x15, 0x2, 0x000000000880f2dc, 0x10a24740461d524f, 0x00000000005e0000, x4, 32, x5)


    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with dataset: sbox32
    // result rd:x3(0x00000000672a96b5), rs1=>rd:x3(0x546b0e54528a10af), rs2:x14(0x000000005f000000), imm:0x3
    TEST_RI_OP(sm4ks, x3, x14, 0x3, 0x00000000672a96b5, 0x546b0e54528a10af, 0x000000005f000000, x1, 0, x2)

inst_96:
    // Test 96:  Test with dataset: sbox32
    // result rd:x4(0x000000002198f4dd), rs1=>rd:x4(0x73a92fd4e19bfbc3), rs2:x13(0x0000000000000060), imm:0x0
    TEST_RI_OP(sm4ks, x4, x13, 0x0, 0x000000002198f4dd, 0x73a92fd4e19bfbc3, 0x0000000000000060, x1, 8, x2)

inst_97:
    // Test 97:  Test with dataset: sbox32
    // result rd:x5(0x000000007468d640), rs1=>rd:x5(0x82f6747f707af2c0), rs2:x12(0x0000000000006100), imm:0x1
    TEST_RI_OP(sm4ks, x5, x12, 0x1, 0x000000007468d640, 0x82f6747f707af2c0, 0x0000000000006100, x1, 16, x2)

inst_98:
    // Test 98:  Test with dataset: sbox32
    // result rd:x6(0x00000000a373d05a), rs1=>rd:x6(0xf5adb41aa47d105b), rs2:x11(0x0000000000620000), imm:0x2
    TEST_RI_OP(sm4ks, x6, x11, 0x2, 0x00000000a373d05a, 0xf5adb41aa47d105b, 0x0000000000620000, x1, 24, x2)

inst_99:
    // Test 99:  Test with dataset: sbox32
    // result rd:x7(0x000000004cdbc70c), rs1=>rd:x7(0xdf7f3844121bcc23), rs2:x10(0x0000000063000000), imm:0x3
    TEST_RI_OP(sm4ks, x7, x10, 0x3, 0x000000004cdbc70c, 0xdf7f3844121bcc23, 0x0000000063000000, x1, 32, x2)


    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with dataset: sbox32
    // result rd:x8(0x00000000cd6660f6), rs1=>rd:x8(0x10fd3dedadea5195), rs2:x9(0x0000000000000064), imm:0x0
    TEST_RI_OP(sm4ks, x8, x9, 0x0, 0x00000000cd6660f6, 0x10fd3dedadea5195, 0x0000000000000064, x1, 0, x2)

inst_101:
    // Test 101:  Test with dataset: sbox32
    // result rd:x9(0x00000000d9d3e6c1), rs1=>rd:x9(0xbd295ce2d2ffbec1), rs2:x8(0x0000000000006500), imm:0x1
    TEST_RI_OP(sm4ks, x9, x8, 0x1, 0x00000000d9d3e6c1, 0xbd295ce2d2ffbec1, 0x0000000000006500, x1, 8, x2)

inst_102:
    // Test 102:  Test with dataset: sbox32
    // result rd:x10(0x00000000c0308821), rs1=>rd:x10(0xc9649f05a8e1a8bb), rs2:x7(0x0000000000660000), imm:0x2
    TEST_RI_OP(sm4ks, x10, x7, 0x2, 0x00000000c0308821, 0xc9649f05a8e1a8bb, 0x0000000000660000, x1, 16, x2)

inst_103:
    // Test 103:  Test with dataset: sbox32
    // result rd:x11(0x00000000ea898b9a), rs1=>rd:x11(0x3541291848c99fcb), rs2:x6(0x0000000067000000), imm:0x3
    TEST_RI_OP(sm4ks, x11, x6, 0x3, 0x00000000ea898b9a, 0x3541291848c99fcb, 0x0000000067000000, x1, 24, x2)

inst_104:
    // Test 104:  Test with dataset: sbox32
    // result rd:x12(0x00000000e699406a), rs1=>rd:x12(0x10a24740461d524f), rs2:x5(0x0000000000000068), imm:0x0
    TEST_RI_OP(sm4ks, x12, x5, 0x0, 0x00000000e699406a, 0x10a24740461d524f, 0x0000000000000068, x1, 32, x2)


    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with dataset: sbox32
    // result rd:x13(0x00000000569b32ef), rs1=>rd:x13(0x546b0e54528a10af), rs2:x4(0x0000000000006900), imm:0x1
    TEST_RI_OP(sm4ks, x13, x4, 0x1, 0x00000000569b32ef, 0x546b0e54528a10af, 0x0000000000006900, x5, 0, x6)

inst_106:
    // Test 106:  Test with dataset: sbox32
    // result rd:x14(0x00000000dfe77bcc), rs1=>rd:x14(0x73a92fd4e19bfbc3), rs2:x3(0x00000000006a0000), imm:0x2
    TEST_RI_OP(sm4ks, x14, x3, 0x2, 0x00000000dfe77bcc, 0x73a92fd4e19bfbc3, 0x00000000006a0000, x5, 8, x6)

inst_107:
    // Test 107:  Test with dataset: sbox32
    // result rd:x15(0x000000004b1a75dd), rs1=>rd:x15(0x82f6747f707af2c0), rs2:x2(0x000000006b000000), imm:0x3
    TEST_RI_OP(sm4ks, x15, x2, 0x3, 0x000000004b1a75dd, 0x82f6747f707af2c0, 0x000000006b000000, x5, 16, x6)

inst_108:
    // Test 108:  Test with dataset: sbox32
    // result rd:x16(0x0000000084fd105a), rs1=>rd:x16(0xf5adb41aa47d105b), rs2:x1(0x000000000000006c), imm:0x0
    TEST_RI_OP(sm4ks, x16, x1, 0x0, 0x0000000084fd105a, 0xf5adb41aa47d105b, 0x000000000000006c, x5, 24, x6)

inst_109:
    // Test 109:  Test with dataset: sbox32
    // result rd:x17(0x00000000960bed03), rs1=>rd:x17(0xdf7f3844121bcc23), rs2:x31(0x0000000000006d00), imm:0x1
    TEST_RI_OP(sm4ks, x17, x31, 0x1, 0x00000000960bed03, 0xdf7f3844121bcc23, 0x0000000000006d00, x5, 32, x6)


    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with dataset: sbox32
    // result rd:x18(0x000000009192519a), rs1=>rd:x18(0x10fd3dedadea5195), rs2:x30(0x00000000006e0000), imm:0x2
    TEST_RI_OP(sm4ks, x18, x30, 0x2, 0x000000009192519a, 0x10fd3dedadea5195, 0x00000000006e0000, x1, 0, x2)

inst_111:
    // Test 111:  Test with dataset: sbox32
    // result rd:x19(0x00000000551f2e82), rs1=>rd:x19(0xbd295ce2d2ffbec1), rs2:x29(0x000000006f000000), imm:0x3
    TEST_RI_OP(sm4ks, x19, x29, 0x3, 0x00000000551f2e82, 0xbd295ce2d2ffbec1, 0x000000006f000000, x1, 8, x2)

inst_112:
    // Test 112:  Test with dataset: sbox32
    // result rd:x20(0x0000000028fbc26f), rs1=>rd:x20(0xc9649f05a8e1a8bb), rs2:x28(0x0000000000000070), imm:0x0
    TEST_RI_OP(sm4ks, x20, x28, 0x0, 0x0000000028fbc26f, 0xc9649f05a8e1a8bb, 0x0000000000000070, x1, 16, x2)

inst_113:
    // Test 113:  Test with dataset: sbox32
    // result rd:x21(0x0000000048c99fcb), rs1=>rd:x21(0x3541291848c99fcb), rs2:x27(0x0000000000007100), imm:0x1
    TEST_RI_OP(sm4ks, x21, x27, 0x1, 0x0000000048c99fcb, 0x3541291848c99fcb, 0x0000000000007100, x1, 24, x2)

inst_114:
    // Test 114:  Test with dataset: sbox32
    // result rd:x22(0x00000000655b9247), rs1=>rd:x22(0x10a24740461d524f), rs2:x26(0x0000000000720000), imm:0x2
    TEST_RI_OP(sm4ks, x22, x26, 0x2, 0x00000000655b9247, 0x10a24740461d524f, 0x0000000000720000, x1, 32, x2)


    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with dataset: sbox32
    // result rd:x23(0x00000000056a9a84), rs1=>rd:x23(0x546b0e54528a10af), rs2:x25(0x0000000073000000), imm:0x3
    TEST_RI_OP(sm4ks, x23, x25, 0x3, 0x00000000056a9a84, 0x546b0e54528a10af, 0x0000000073000000, x1, 0, x2)

inst_116:
    // Test 116:  Test with dataset: sbox32
    // result rd:x24(0x00000000e0934feb), rs1=>rd:x24(0x73a92fd4e19bfbc3), rs2:x24(0x0000000000000074), imm:0x0
    TEST_RI_OP(sm4ks, x24, x24, 0x0, 0x00000000e0934feb, 0x73a92fd4e19bfbc3, 0x0000000000000074, x1, 8, x2)

inst_117:
    // Test 117:  Test with dataset: sbox32
    // result rd:x25(0x00000000ea1321a0), rs1=>rd:x25(0x82f6747f707af2c0), rs2:x23(0x0000000000007500), imm:0x1
    TEST_RI_OP(sm4ks, x25, x23, 0x1, 0x00000000ea1321a0, 0x82f6747f707af2c0, 0x0000000000007500, x1, 16, x2)

inst_118:
    // Test 118:  Test with dataset: sbox32
    // result rd:x26(0x00000000b75af0df), rs1=>rd:x26(0xf5adb41aa47d105b), rs2:x22(0x0000000000760000), imm:0x2
    TEST_RI_OP(sm4ks, x26, x22, 0x2, 0x00000000b75af0df, 0xf5adb41aa47d105b, 0x0000000000760000, x1, 24, x2)

inst_119:
    // Test 119:  Test with dataset: sbox32
    // result rd:x27(0x00000000405bc60a), rs1=>rd:x27(0xdf7f3844121bcc23), rs2:x21(0x0000000077000000), imm:0x3
    TEST_RI_OP(sm4ks, x27, x21, 0x3, 0x00000000405bc60a, 0xdf7f3844121bcc23, 0x0000000077000000, x1, 32, x2)


    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with dataset: sbox32
    // result rd:x28(0x000000002de377d9), rs1=>rd:x28(0x10fd3dedadea5195), rs2:x20(0x0000000000000078), imm:0x0
    TEST_RI_OP(sm4ks, x28, x20, 0x0, 0x000000002de377d9, 0x10fd3dedadea5195, 0x0000000000000078, x5, 0, x6)

inst_121:
    // Test 121:  Test with dataset: sbox32
    // result rd:x29(0x00000000d4e48801), rs1=>rd:x29(0xbd295ce2d2ffbec1), rs2:x19(0x0000000000007900), imm:0x1
    TEST_RI_OP(sm4ks, x29, x19, 0x1, 0x00000000d4e48801, 0xbd295ce2d2ffbec1, 0x0000000000007900, x5, 8, x6)

inst_122:
    // Test 122:  Test with dataset: sbox32
    // result rd:x30(0x00000000a9e3e8bb), rs1=>rd:x30(0xc9649f05a8e1a8bb), rs2:x18(0x00000000007a0000), imm:0x2
    TEST_RI_OP(sm4ks, x30, x18, 0x2, 0x00000000a9e3e8bb, 0xc9649f05a8e1a8bb, 0x00000000007a0000, x5, 16, x6)

inst_123:
    // Test 123:  Test with dataset: sbox32
    // result rd:x31(0x00000000af2903b8), rs1=>rd:x31(0x3541291848c99fcb), rs2:x17(0x000000007b000000), imm:0x3
    TEST_RI_OP(sm4ks, x31, x17, 0x3, 0x00000000af2903b8, 0x3541291848c99fcb, 0x000000007b000000, x5, 24, x6)

inst_124:
    // Test 124:  Test with dataset: sbox32
    // result rd:x1(0x00000000460902ef), rs1=>rd:x1(0x10a24740461d524f), rs2:x16(0x000000000000007c), imm:0x0
    TEST_RI_OP(sm4ks, x1, x16, 0x0, 0x00000000460902ef, 0x10a24740461d524f, 0x000000000000007c, x5, 32, x6)


    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with dataset: sbox32
    // result rd:x2(0x000000004ae8d42f), rs1=>rd:x2(0x546b0e54528a10af), rs2:x15(0x0000000000007d00), imm:0x1
    TEST_RI_OP(sm4ks, x2, x15, 0x1, 0x000000004ae8d42f, 0x546b0e54528a10af, 0x0000000000007d00, x1, 0, x7)

inst_126:
    // Test 126:  Test with dataset: sbox32
    // result rd:x3(0x000000008553fbda), rs1=>rd:x3(0x73a92fd4e19bfbc3), rs2:x14(0x00000000007e0000), imm:0x2
    TEST_RI_OP(sm4ks, x3, x14, 0x2, 0x000000008553fbda, 0x73a92fd4e19bfbc3, 0x00000000007e0000, x1, 8, x7)

inst_127:
    // Test 127:  Test with dataset: sbox32
    // result rd:x4(0x00000000eebae18f), rs1=>rd:x4(0x82f6747f707af2c0), rs2:x13(0x000000007f000000), imm:0x3
    TEST_RI_OP(sm4ks, x4, x13, 0x3, 0x00000000eebae18f, 0x82f6747f707af2c0, 0x000000007f000000, x1, 16, x7)

inst_128:
    // Test 128:  Test with dataset: sbox32
    // result rd:x5(0x00000000e46065b1), rs1=>rd:x5(0xf5adb41aa47d105b), rs2:x12(0x0000000000000080), imm:0x0
    TEST_RI_OP(sm4ks, x5, x12, 0x0, 0x00000000e46065b1, 0xf5adb41aa47d105b, 0x0000000000000080, x1, 24, x7)

inst_129:
    // Test 129:  Test with dataset: sbox32
    // result rd:x6(0x00000000854473c3), rs1=>rd:x6(0xdf7f3844121bcc23), rs2:x11(0x0000000000008100), imm:0x1
    TEST_RI_OP(sm4ks, x6, x11, 0x1, 0x00000000854473c3, 0xdf7f3844121bcc23, 0x0000000000008100, x1, 32, x7)


    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with dataset: sbox32
    // result rd:x7(0x00000000e8601184), rs1=>rd:x7(0x10fd3dedadea5195), rs2:x10(0x0000000000820000), imm:0x2
    TEST_RI_OP(sm4ks, x7, x10, 0x2, 0x00000000e8601184, 0x10fd3dedadea5195, 0x0000000000820000, x1, 0, x2)

inst_131:
    // Test 131:  Test with dataset: sbox32
    // result rd:x8(0x0000000000bfa4a8), rs1=>rd:x8(0xbd295ce2d2ffbec1), rs2:x9(0x0000000083000000), imm:0x3
    TEST_RI_OP(sm4ks, x8, x9, 0x3, 0x0000000000bfa4a8, 0xbd295ce2d2ffbec1, 0x0000000083000000, x1, 8, x2)

inst_132:
    // Test 132:  Test with dataset: sbox32
    // result rd:x9(0x00000000a8e988fb), rs1=>rd:x9(0xc9649f05a8e1a8bb), rs2:x8(0x0000000000000084), imm:0x0
    TEST_RI_OP(sm4ks, x9, x8, 0x0, 0x00000000a8e988fb, 0xc9649f05a8e1a8bb, 0x0000000000000084, x1, 16, x2)

inst_133:
    // Test 133:  Test with dataset: sbox32
    // result rd:x10(0x00000000d0aa582b), rs1=>rd:x10(0x3541291848c99fcb), rs2:x7(0x0000000000008500), imm:0x1
    TEST_RI_OP(sm4ks, x10, x7, 0x1, 0x00000000d0aa582b, 0x3541291848c99fcb, 0x0000000000008500, x1, 24, x2)

inst_134:
    // Test 134:  Test with dataset: sbox32
    // result rd:x11(0x000000005a255248), rs1=>rd:x11(0x10a24740461d524f), rs2:x6(0x0000000000860000), imm:0x2
    TEST_RI_OP(sm4ks, x11, x6, 0x2, 0x000000005a255248, 0x10a24740461d524f, 0x0000000000860000, x1, 32, x2)


    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with dataset: sbox32
    // result rd:x12(0x00000000e72a86f5), rs1=>rd:x12(0x546b0e54528a10af), rs2:x5(0x0000000087000000), imm:0x3
    TEST_RI_OP(sm4ks, x12, x5, 0x3, 0x00000000e72a86f5, 0x546b0e54528a10af, 0x0000000087000000, x6, 0, x7)

inst_136:
    // Test 136:  Test with dataset: sbox32
    // result rd:x13(0x00000000810faa60), rs1=>rd:x13(0x73a92fd4e19bfbc3), rs2:x4(0x0000000000000088), imm:0x0
    TEST_RI_OP(sm4ks, x13, x4, 0x0, 0x00000000810faa60, 0x73a92fd4e19bfbc3, 0x0000000000000088, x6, 8, x7)

inst_137:
    // Test 137:  Test with dataset: sbox32
    // result rd:x14(0x00000000ee010520), rs1=>rd:x14(0x82f6747f707af2c0), rs2:x3(0x0000000000008900), imm:0x1
    TEST_RI_OP(sm4ks, x14, x3, 0x1, 0x00000000ee010520, 0x82f6747f707af2c0, 0x0000000000008900, x6, 16, x7)

inst_138:
    // Test 138:  Test with dataset: sbox32
    // result rd:x15(0x00000000dd8f5045), rs1=>rd:x15(0xf5adb41aa47d105b), rs2:x2(0x00000000008a0000), imm:0x2
    TEST_RI_OP(sm4ks, x15, x2, 0x2, 0x00000000dd8f5045, 0xf5adb41aa47d105b, 0x00000000008a0000, x6, 24, x7)

inst_139:
    // Test 139:  Test with dataset: sbox32
    // result rd:x16(0x00000000dcdbd544), rs1=>rd:x16(0xdf7f3844121bcc23), rs2:x1(0x000000008b000000), imm:0x3
    TEST_RI_OP(sm4ks, x16, x1, 0x3, 0x00000000dcdbd544, 0xdf7f3844121bcc23, 0x000000008b000000, x6, 32, x7)


    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with dataset: sbox32
    // result rd:x17(0x000000008d752d6c), rs1=>rd:x17(0x10fd3dedadea5195), rs2:x31(0x000000000000008c), imm:0x0
    TEST_RI_OP(sm4ks, x17, x31, 0x0, 0x000000008d752d6c, 0x10fd3dedadea5195, 0x000000000000008c, x1, 0, x2)

inst_141:
    // Test 141:  Test with dataset: sbox32
    // result rd:x18(0x000000005ecfdfe1), rs1=>rd:x18(0xbd295ce2d2ffbec1), rs2:x30(0x0000000000008d00), imm:0x1
    TEST_RI_OP(sm4ks, x18, x30, 0x1, 0x000000005ecfdfe1, 0xbd295ce2d2ffbec1, 0x0000000000008d00, x1, 8, x2)

inst_142:
    // Test 142:  Test with dataset: sbox32
    // result rd:x19(0x00000000a2f40839), rs1=>rd:x19(0xc9649f05a8e1a8bb), rs2:x29(0x00000000008e0000), imm:0x2
    TEST_RI_OP(sm4ks, x19, x29, 0x2, 0x00000000a2f40839, 0xc9649f05a8e1a8bb, 0x00000000008e0000, x1, 16, x2)

inst_143:
    // Test 143:  Test with dataset: sbox32
    // result rd:x20(0x00000000e9e90b9b), rs1=>rd:x20(0x3541291848c99fcb), rs2:x28(0x000000008f000000), imm:0x3
    TEST_RI_OP(sm4ks, x20, x28, 0x3, 0x00000000e9e90b9b, 0x3541291848c99fcb, 0x000000008f000000, x1, 24, x2)

inst_144:
    // Test 144:  Test with dataset: sbox32
    // result rd:x21(0x00000000460122af), rs1=>rd:x21(0x10a24740461d524f), rs2:x27(0x0000000000000090), imm:0x0
    TEST_RI_OP(sm4ks, x21, x27, 0x0, 0x00000000460122af, 0x10a24740461d524f, 0x0000000000000090, x1, 32, x2)


    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with dataset: sbox32
    // result rd:x22(0x0000000047ddbe6f), rs1=>rd:x22(0x546b0e54528a10af), rs2:x26(0x0000000000009100), imm:0x1
    TEST_RI_OP(sm4ks, x22, x26, 0x1, 0x0000000047ddbe6f, 0x546b0e54528a10af, 0x0000000000009100, x1, 0, x2)

inst_146:
    // Test 146:  Test with dataset: sbox32
    // result rd:x23(0x00000000cfc65b48), rs1=>rd:x23(0x73a92fd4e19bfbc3), rs2:x25(0x0000000000920000), imm:0x2
    TEST_RI_OP(sm4ks, x23, x25, 0x2, 0x00000000cfc65b48, 0x73a92fd4e19bfbc3, 0x0000000000920000, x1, 8, x2)

inst_147:
    // Test 147:  Test with dataset: sbox32
    // result rd:x24(0x0000000037801452), rs1=>rd:x24(0x82f6747f707af2c0), rs2:x24(0x0000000093000000), imm:0x3
    TEST_RI_OP(sm4ks, x24, x24, 0x3, 0x0000000037801452, 0x82f6747f707af2c0, 0x0000000093000000, x1, 16, x2)

inst_148:
    // Test 148:  Test with dataset: sbox32
    // result rd:x25(0x00000000c4ee5dc0), rs1=>rd:x25(0xf5adb41aa47d105b), rs2:x23(0x0000000000000094), imm:0x0
    TEST_RI_OP(sm4ks, x25, x23, 0x0, 0x00000000c4ee5dc0, 0xf5adb41aa47d105b, 0x0000000000000094, x1, 24, x2)

inst_149:
    // Test 149:  Test with dataset: sbox32
    // result rd:x26(0x000000001401f8a3), rs1=>rd:x26(0xdf7f3844121bcc23), rs2:x22(0x0000000000009500), imm:0x1
    TEST_RI_OP(sm4ks, x26, x22, 0x1, 0x000000001401f8a3, 0xdf7f3844121bcc23, 0x0000000000009500, x1, 32, x2)


    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with dataset: sbox32
    // result rd:x27(0x00000000a0f01196), rs1=>rd:x27(0x10fd3dedadea5195), rs2:x21(0x0000000000960000), imm:0x2
    TEST_RI_OP(sm4ks, x27, x21, 0x2, 0x00000000a0f01196, 0x10fd3dedadea5195, 0x0000000000960000, x6, 0, x7)

inst_151:
    // Test 151:  Test with dataset: sbox32
    // result rd:x28(0x00000000875f34eb), rs1=>rd:x28(0xbd295ce2d2ffbec1), rs2:x20(0x0000000097000000), imm:0x3
    TEST_RI_OP(sm4ks, x28, x20, 0x3, 0x00000000875f34eb, 0xbd295ce2d2ffbec1, 0x0000000097000000, x6, 8, x7)

inst_152:
    // Test 152:  Test with dataset: sbox32
    // result rd:x29(0x000000000874fe16), rs1=>rd:x29(0xc9649f05a8e1a8bb), rs2:x19(0x0000000000000098), imm:0x0
    TEST_RI_OP(sm4ks, x29, x19, 0x0, 0x000000000874fe16, 0xc9649f05a8e1a8bb, 0x0000000000000098, x6, 16, x7)

inst_153:
    // Test 153:  Test with dataset: sbox32
    // result rd:x30(0x00000000da800cab), rs1=>rd:x30(0x3541291848c99fcb), rs2:x18(0x0000000000009900), imm:0x1
    TEST_RI_OP(sm4ks, x30, x18, 0x1, 0x00000000da800cab, 0x3541291848c99fcb, 0x0000000000009900, x6, 24, x7)

inst_154:
    // Test 154:  Test with dataset: sbox32
    // result rd:x31(0x000000005f2f1249), rs1=>rd:x31(0x10a24740461d524f), rs2:x17(0x00000000009a0000), imm:0x2
    TEST_RI_OP(sm4ks, x31, x17, 0x2, 0x000000005f2f1249, 0x10a24740461d524f, 0x00000000009a0000, x6, 32, x7)


    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with dataset: sbox32
    // result rd:x1(0x00000000628a16b7), rs1=>rd:x1(0x546b0e54528a10af), rs2:x16(0x000000009b000000), imm:0x3
    TEST_RI_OP(sm4ks, x1, x16, 0x3, 0x00000000628a16b7, 0x546b0e54528a10af, 0x000000009b000000, x6, 0, x7)

inst_156:
    // Test 156:  Test with dataset: sbox32
    // result rd:x2(0x0000000041058136), rs1=>rd:x2(0x73a92fd4e19bfbc3), rs2:x15(0x000000000000009c), imm:0x0
    TEST_RI_OP(sm4ks, x2, x15, 0x0, 0x0000000041058136, 0x73a92fd4e19bfbc3, 0x000000000000009c, x6, 8, x7)

inst_157:
    // Test 157:  Test with dataset: sbox32
    // result rd:x3(0x00000000613c7e40), rs1=>rd:x3(0x82f6747f707af2c0), rs2:x14(0x0000000000009d00), imm:0x1
    TEST_RI_OP(sm4ks, x3, x14, 0x1, 0x00000000613c7e40, 0x82f6747f707af2c0, 0x0000000000009d00, x6, 16, x7)

inst_158:
    // Test 158:  Test with dataset: sbox32
    // result rd:x4(0x00000000fccc30cd), rs1=>rd:x4(0xf5adb41aa47d105b), rs2:x13(0x00000000009e0000), imm:0x2
    TEST_RI_OP(sm4ks, x4, x13, 0x2, 0x00000000fccc30cd, 0xf5adb41aa47d105b, 0x00000000009e0000, x6, 24, x7)

inst_159:
    // Test 159:  Test with dataset: sbox32
    // result rd:x5(0x00000000f17b5052), rs1=>rd:x5(0xdf7f3844121bcc23), rs2:x12(0x000000009f000000), imm:0x3
    TEST_RI_OP(sm4ks, x5, x12, 0x3, 0x00000000f17b5052, 0xdf7f3844121bcc23, 0x000000009f000000, x6, 32, x7)


    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with dataset: sbox32
    // result rd:x6(0x000000000d695f88), rs1=>rd:x6(0x10fd3dedadea5195), rs2:x11(0x00000000000000a0), imm:0x0
    TEST_RI_OP(sm4ks, x6, x11, 0x0, 0x000000000d695f88, 0x10fd3dedadea5195, 0x00000000000000a0, x1, 0, x2)

inst_161:
    // Test 161:  Test with dataset: sbox32
    // result rd:x7(0x00000000cc844801), rs1=>rd:x7(0xbd295ce2d2ffbec1), rs2:x10(0x000000000000a100), imm:0x1
    TEST_RI_OP(sm4ks, x7, x10, 0x1, 0x00000000cc844801, 0xbd295ce2d2ffbec1, 0x000000000000a100, x1, 8, x2)

inst_162:
    // Test 162:  Test with dataset: sbox32
    // result rd:x8(0x00000000d903e8a7), rs1=>rd:x8(0xc9649f05a8e1a8bb), rs2:x9(0x0000000000a20000), imm:0x2
    TEST_RI_OP(sm4ks, x8, x9, 0x2, 0x00000000d903e8a7, 0xc9649f05a8e1a8bb, 0x0000000000a20000, x1, 16, x2)

inst_163:
    // Test 163:  Test with dataset: sbox32
    // result rd:x9(0x0000000066099adc), rs1=>rd:x9(0x3541291848c99fcb), rs2:x8(0x00000000a3000000), imm:0x3
    TEST_RI_OP(sm4ks, x9, x8, 0x3, 0x0000000066099adc, 0x3541291848c99fcb, 0x00000000a3000000, x1, 24, x2)

inst_164:
    // Test 164:  Test with dataset: sbox32
    // result rd:x10(0x00000000060d13cd), rs1=>rd:x10(0x10a24740461d524f), rs2:x7(0x00000000000000a4), imm:0x0
    TEST_RI_OP(sm4ks, x10, x7, 0x0, 0x00000000060d13cd, 0x10a24740461d524f, 0x00000000000000a4, x1, 32, x2)


    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with dataset: sbox32
    // result rd:x11(0x000000005eb9766f), rs1=>rd:x11(0x546b0e54528a10af), rs2:x6(0x000000000000a500), imm:0x1
    TEST_RI_OP(sm4ks, x11, x6, 0x1, 0x000000005eb9766f, 0x546b0e54528a10af, 0x000000000000a500, x1, 0, x7)

inst_166:
    // Test 166:  Test with dataset: sbox32
    // result rd:x12(0x000000008451bbda), rs1=>rd:x12(0x73a92fd4e19bfbc3), rs2:x5(0x0000000000a60000), imm:0x2
    TEST_RI_OP(sm4ks, x12, x5, 0x2, 0x000000008451bbda, 0x73a92fd4e19bfbc3, 0x0000000000a60000, x1, 8, x7)

inst_167:
    // Test 167:  Test with dataset: sbox32
    // result rd:x13(0x00000000107afef0), rs1=>rd:x13(0x82f6747f707af2c0), rs2:x4(0x00000000a7000000), imm:0x3
    TEST_RI_OP(sm4ks, x13, x4, 0x3, 0x00000000107afef0, 0x82f6747f707af2c0, 0x00000000a7000000, x1, 16, x7)

inst_168:
    // Test 168:  Test with dataset: sbox32
    // result rd:x14(0x00000000a465709b), rs1=>rd:x14(0xf5adb41aa47d105b), rs2:x3(0x00000000000000a8), imm:0x0
    TEST_RI_OP(sm4ks, x14, x3, 0x0, 0x00000000a465709b, 0xf5adb41aa47d105b, 0x00000000000000a8, x1, 24, x7)

inst_169:
    // Test 169:  Test with dataset: sbox32
    // result rd:x15(0x00000000970fe503), rs1=>rd:x15(0xdf7f3844121bcc23), rs2:x2(0x000000000000a900), imm:0x1
    TEST_RI_OP(sm4ks, x15, x2, 0x1, 0x00000000970fe503, 0xdf7f3844121bcc23, 0x000000000000a900, x1, 32, x7)


    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with dataset: sbox32
    // result rd:x16(0x00000000bcc93111), rs1=>rd:x16(0x10fd3dedadea5195), rs2:x1(0x0000000000aa0000), imm:0x2
    TEST_RI_OP(sm4ks, x16, x1, 0x2, 0x00000000bcc93111, 0x10fd3dedadea5195, 0x0000000000aa0000, x2, 0, x3)

inst_171:
    // Test 171:  Test with dataset: sbox32
    // result rd:x17(0x00000000799f2b94), rs1=>rd:x17(0xbd295ce2d2ffbec1), rs2:x31(0x00000000ab000000), imm:0x3
    TEST_RI_OP(sm4ks, x17, x31, 0x3, 0x00000000799f2b94, 0xbd295ce2d2ffbec1, 0x00000000ab000000, x2, 8, x3)

inst_172:
    // Test 172:  Test with dataset: sbox32
    // result rd:x18(0x000000000860aeb6), rs1=>rd:x18(0xc9649f05a8e1a8bb), rs2:x30(0x00000000000000ac), imm:0x0
    TEST_RI_OP(sm4ks, x18, x30, 0x0, 0x000000000860aeb6, 0xc9649f05a8e1a8bb, 0x00000000000000ac, x2, 16, x3)

inst_173:
    // Test 173:  Test with dataset: sbox32
    // result rd:x19(0x00000000c2e0ccab), rs1=>rd:x19(0x3541291848c99fcb), rs2:x29(0x000000000000ad00), imm:0x1
    TEST_RI_OP(sm4ks, x19, x29, 0x1, 0x00000000c2e0ccab, 0x3541291848c99fcb, 0x000000000000ad00, x2, 24, x3)

inst_174:
    // Test 174:  Test with dataset: sbox32
    // result rd:x20(0x0000000061539246), rs1=>rd:x20(0x10a24740461d524f), rs2:x28(0x0000000000ae0000), imm:0x2
    TEST_RI_OP(sm4ks, x20, x28, 0x2, 0x0000000061539246, 0x10a24740461d524f, 0x0000000000ae0000, x2, 32, x3)


    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with dataset: sbox32
    // result rd:x21(0x000000003d6a9d98), rs1=>rd:x21(0x546b0e54528a10af), rs2:x27(0x00000000af000000), imm:0x3
    TEST_RI_OP(sm4ks, x21, x27, 0x3, 0x000000003d6a9d98, 0x546b0e54528a10af, 0x00000000af000000, x1, 0, x2)

inst_176:
    // Test 176:  Test with dataset: sbox32
    // result rd:x22(0x0000000041019116), rs1=>rd:x22(0x73a92fd4e19bfbc3), rs2:x26(0x00000000000000b0), imm:0x0
    TEST_RI_OP(sm4ks, x22, x26, 0x0, 0x0000000041019116, 0x73a92fd4e19bfbc3, 0x00000000000000b0, x1, 8, x2)

inst_177:
    // Test 177:  Test with dataset: sbox32
    // result rd:x23(0x00000000eb1729a0), rs1=>rd:x23(0x82f6747f707af2c0), rs2:x25(0x000000000000b100), imm:0x1
    TEST_RI_OP(sm4ks, x23, x25, 0x1, 0x00000000eb1729a0, 0x82f6747f707af2c0, 0x000000000000b100, x1, 16, x2)

inst_178:
    // Test 178:  Test with dataset: sbox32
    // result rd:x24(0x000000001b85e086), rs1=>rd:x24(0xf5adb41aa47d105b), rs2:x24(0x0000000000b20000), imm:0x2
    TEST_RI_OP(sm4ks, x24, x24, 0x2, 0x000000001b85e086, 0xf5adb41aa47d105b, 0x0000000000b20000, x1, 24, x2)

inst_179:
    // Test 179:  Test with dataset: sbox32
    // result rd:x25(0x0000000057bb4401), rs1=>rd:x25(0xdf7f3844121bcc23), rs2:x23(0x00000000b3000000), imm:0x3
    TEST_RI_OP(sm4ks, x25, x23, 0x3, 0x0000000057bb4401, 0xdf7f3844121bcc23, 0x00000000b3000000, x1, 32, x2)


    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with dataset: sbox32
    // result rd:x26(0x000000006df13e4b), rs1=>rd:x26(0x10fd3dedadea5195), rs2:x22(0x00000000000000b4), imm:0x0
    TEST_RI_OP(sm4ks, x26, x22, 0x0, 0x000000006df13e4b, 0x10fd3dedadea5195, 0x00000000000000b4, x1, 0, x7)

inst_181:
    // Test 181:  Test with dataset: sbox32
    // result rd:x27(0x000000004d814361), rs1=>rd:x27(0xbd295ce2d2ffbec1), rs2:x21(0x000000000000b500), imm:0x1
    TEST_RI_OP(sm4ks, x27, x21, 0x1, 0x000000004d814361, 0xbd295ce2d2ffbec1, 0x000000000000b500, x1, 8, x7)

inst_182:
    // Test 182:  Test with dataset: sbox32
    // result rd:x28(0x00000000ef6f68aa), rs1=>rd:x28(0xc9649f05a8e1a8bb), rs2:x20(0x0000000000b60000), imm:0x2
    TEST_RI_OP(sm4ks, x28, x20, 0x2, 0x00000000ef6f68aa, 0xc9649f05a8e1a8bb, 0x0000000000b60000, x1, 16, x7)

inst_183:
    // Test 183:  Test with dataset: sbox32
    // result rd:x29(0x0000000067291adc), rs1=>rd:x29(0x3541291848c99fcb), rs2:x19(0x00000000b7000000), imm:0x3
    TEST_RI_OP(sm4ks, x29, x19, 0x3, 0x0000000067291adc, 0x3541291848c99fcb, 0x00000000b7000000, x1, 24, x7)

inst_184:
    // Test 184:  Test with dataset: sbox32
    // result rd:x30(0x00000000269d534c), rs1=>rd:x30(0x10a24740461d524f), rs2:x18(0x00000000000000b8), imm:0x0
    TEST_RI_OP(sm4ks, x30, x18, 0x0, 0x00000000269d534c, 0x10a24740461d524f, 0x00000000000000b8, x1, 32, x7)


    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with dataset: sbox32
    // result rd:x31(0x00000000cdf5ef4f), rs1=>rd:x31(0x546b0e54528a10af), rs2:x17(0x000000000000b900), imm:0x1
    TEST_RI_OP(sm4ks, x31, x17, 0x1, 0x00000000cdf5ef4f, 0x546b0e54528a10af, 0x000000000000b900, x5, 0, x6)

inst_186:
    // Test 186:  Test with dataset: sbox32
    // result rd:x1(0x00000000d4f1bbce), rs1=>rd:x1(0x73a92fd4e19bfbc3), rs2:x16(0x0000000000ba0000), imm:0x2
    TEST_RI_OP(sm4ks, x1, x16, 0x2, 0x00000000d4f1bbce, 0x73a92fd4e19bfbc3, 0x0000000000ba0000, x5, 8, x6)

inst_187:
    // Test 187:  Test with dataset: sbox32
    // result rd:x2(0x00000000023afcf9), rs1=>rd:x2(0x82f6747f707af2c0), rs2:x15(0x00000000bb000000), imm:0x3
    TEST_RI_OP(sm4ks, x2, x15, 0x3, 0x00000000023afcf9, 0x82f6747f707af2c0, 0x00000000bb000000, x5, 16, x6)

inst_188:
    // Test 188:  Test with dataset: sbox32
    // result rd:x3(0x0000000004f02636), rs1=>rd:x3(0xf5adb41aa47d105b), rs2:x14(0x00000000000000bc), imm:0x0
    TEST_RI_OP(sm4ks, x3, x14, 0x0, 0x0000000004f02636, 0xf5adb41aa47d105b, 0x00000000000000bc, x5, 24, x6)

inst_189:
    // Test 189:  Test with dataset: sbox32
    // result rd:x4(0x000000001f2da0a3), rs1=>rd:x4(0xdf7f3844121bcc23), rs2:x13(0x000000000000bd00), imm:0x1
    TEST_RI_OP(sm4ks, x4, x13, 0x1, 0x000000001f2da0a3, 0xdf7f3844121bcc23, 0x000000000000bd00, x5, 32, x6)


    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with dataset: sbox32
    // result rd:x5(0x0000000080b1311e), rs1=>rd:x5(0x10fd3dedadea5195), rs2:x12(0x0000000000be0000), imm:0x2
    TEST_RI_OP(sm4ks, x5, x12, 0x2, 0x0000000080b1311e, 0x10fd3dedadea5195, 0x0000000000be0000, x1, 0, x2)

inst_191:
    // Test 191:  Test with dataset: sbox32
    // result rd:x6(0x0000000083df34e9), rs1=>rd:x6(0xbd295ce2d2ffbec1), rs2:x11(0x00000000bf000000), imm:0x3
    TEST_RI_OP(sm4ks, x6, x11, 0x3, 0x0000000083df34e9, 0xbd295ce2d2ffbec1, 0x00000000bf000000, x1, 8, x2)

inst_192:
    // Test 192:  Test with dataset: sbox32
    // result rd:x7(0x000000000870ee36), rs1=>rd:x7(0xc9649f05a8e1a8bb), rs2:x10(0x00000000000000c0), imm:0x0
    TEST_RI_OP(sm4ks, x7, x10, 0x0, 0x000000000870ee36, 0xc9649f05a8e1a8bb, 0x00000000000000c0, x1, 16, x2)

inst_193:
    // Test 193:  Test with dataset: sbox32
    // result rd:x8(0x00000000cbc484ab), rs1=>rd:x8(0x3541291848c99fcb), rs2:x9(0x000000000000c100), imm:0x1
    TEST_RI_OP(sm4ks, x8, x9, 0x1, 0x00000000cbc484ab, 0x3541291848c99fcb, 0x000000000000c100, x1, 24, x2)

inst_194:
    // Test 194:  Test with dataset: sbox32
    // result rd:x9(0x0000000011b2b2da), rs1=>rd:x9(0x10a24740461d524f), rs2:x8(0x0000000000c20000), imm:0x2
    TEST_RI_OP(sm4ks, x9, x8, 0x2, 0x0000000011b2b2da, 0x10a24740461d524f, 0x0000000000c20000, x1, 32, x2)


    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with dataset: sbox32
    // result rd:x10(0x00000000c0ca02e6), rs1=>rd:x10(0x546b0e54528a10af), rs2:x7(0x00000000c3000000), imm:0x3
    TEST_RI_OP(sm4ks, x10, x7, 0x3, 0x00000000c0ca02e6, 0x546b0e54528a10af, 0x00000000c3000000, x1, 0, x2)

inst_196:
    // Test 196:  Test with dataset: sbox32
    // result rd:x11(0x00000000810ca678), rs1=>rd:x11(0x73a92fd4e19bfbc3), rs2:x6(0x00000000000000c4), imm:0x0
    TEST_RI_OP(sm4ks, x11, x6, 0x0, 0x00000000810ca678, 0x73a92fd4e19bfbc3, 0x00000000000000c4, x1, 8, x2)

inst_197:
    // Test 197:  Test with dataset: sbox32
    // result rd:x12(0x00000000eb142f60), rs1=>rd:x12(0x82f6747f707af2c0), rs2:x5(0x000000000000c500), imm:0x1
    TEST_RI_OP(sm4ks, x12, x5, 0x1, 0x00000000eb142f60, 0x82f6747f707af2c0, 0x000000000000c500, x1, 16, x2)

inst_198:
    // Test 198:  Test with dataset: sbox32
    // result rd:x13(0x00000000fac1904c), rs1=>rd:x13(0xf5adb41aa47d105b), rs2:x4(0x0000000000c60000), imm:0x2
    TEST_RI_OP(sm4ks, x13, x4, 0x2, 0x00000000fac1904c, 0xf5adb41aa47d105b, 0x0000000000c60000, x1, 24, x2)

inst_199:
    // Test 199:  Test with dataset: sbox32
    // result rd:x14(0x000000006dfb431c), rs1=>rd:x14(0xdf7f3844121bcc23), rs2:x3(0x00000000c7000000), imm:0x3
    TEST_RI_OP(sm4ks, x14, x3, 0x3, 0x000000006dfb431c, 0xdf7f3844121bcc23, 0x00000000c7000000, x1, 32, x2)


    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with dataset: sbox32
    // result rd:x15(0x000000008d685984), rs1=>rd:x15(0x10fd3dedadea5195), rs2:x2(0x00000000000000c8), imm:0x0
    TEST_RI_OP(sm4ks, x15, x2, 0x0, 0x000000008d685984, 0x10fd3dedadea5195, 0x00000000000000c8, x3, 0, x4)

inst_201:
    // Test 201:  Test with dataset: sbox32
    // result rd:x16(0x00000000499367e1), rs1=>rd:x16(0xbd295ce2d2ffbec1), rs2:x1(0x000000000000c900), imm:0x1
    TEST_RI_OP(sm4ks, x16, x1, 0x1, 0x00000000499367e1, 0xbd295ce2d2ffbec1, 0x000000000000c900, x3, 8, x4)

inst_202:
    // Test 202:  Test with dataset: sbox32
    // result rd:x17(0x0000000086bd28b0), rs1=>rd:x17(0xc9649f05a8e1a8bb), rs2:x31(0x0000000000ca0000), imm:0x2
    TEST_RI_OP(sm4ks, x17, x31, 0x2, 0x0000000086bd28b0, 0xc9649f05a8e1a8bb, 0x0000000000ca0000, x3, 16, x4)

inst_203:
    // Test 203:  Test with dataset: sbox32
    // result rd:x18(0x0000000009e917eb), rs1=>rd:x18(0x3541291848c99fcb), rs2:x30(0x00000000cb000000), imm:0x3
    TEST_RI_OP(sm4ks, x18, x30, 0x3, 0x0000000009e917eb, 0x3541291848c99fcb, 0x00000000cb000000, x3, 24, x4)

inst_204:
    // Test 204:  Test with dataset: sbox32
    // result rd:x19(0x00000000a69e5d50), rs1=>rd:x19(0x10a24740461d524f), rs2:x29(0x00000000000000cc), imm:0x0
    TEST_RI_OP(sm4ks, x19, x29, 0x0, 0x00000000a69e5d50, 0x10a24740461d524f, 0x00000000000000cc, x3, 32, x4)


    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with dataset: sbox32
    // result rd:x20(0x00000000508200af), rs1=>rd:x20(0x546b0e54528a10af), rs2:x28(0x000000000000cd00), imm:0x1
    TEST_RI_OP(sm4ks, x20, x28, 0x1, 0x00000000508200af, 0x546b0e54528a10af, 0x000000000000cd00, x1, 0, x2)

inst_206:
    // Test 206:  Test with dataset: sbox32
    // result rd:x21(0x00000000ccc1bbc8), rs1=>rd:x21(0x73a92fd4e19bfbc3), rs2:x27(0x0000000000ce0000), imm:0x2
    TEST_RI_OP(sm4ks, x21, x27, 0x2, 0x00000000ccc1bbc8, 0x73a92fd4e19bfbc3, 0x0000000000ce0000, x1, 8, x2)

inst_207:
    // Test 207:  Test with dataset: sbox32
    // result rd:x22(0x00000000a87ae9ac), rs1=>rd:x22(0x82f6747f707af2c0), rs2:x26(0x00000000cf000000), imm:0x3
    TEST_RI_OP(sm4ks, x22, x26, 0x3, 0x00000000a87ae9ac, 0x82f6747f707af2c0, 0x00000000cf000000, x1, 16, x2)

inst_208:
    // Test 208:  Test with dataset: sbox32
    // result rd:x23(0x00000000e47c1551), rs1=>rd:x23(0xf5adb41aa47d105b), rs2:x25(0x00000000000000d0), imm:0x0
    TEST_RI_OP(sm4ks, x23, x25, 0x0, 0x00000000e47c1551, 0xf5adb41aa47d105b, 0x00000000000000d0, x1, 24, x2)

inst_209:
    // Test 209:  Test with dataset: sbox32
    // result rd:x24(0x0000000098601020), rs1=>rd:x24(0xdf7f3844121bcc23), rs2:x24(0x000000000000d100), imm:0x1
    TEST_RI_OP(sm4ks, x24, x24, 0x1, 0x0000000098601020, 0xdf7f3844121bcc23, 0x000000000000d100, x1, 32, x2)


    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with dataset: sbox32
    // result rd:x25(0x00000000b5db7113), rs1=>rd:x25(0x10fd3dedadea5195), rs2:x23(0x0000000000d20000), imm:0x2
    TEST_RI_OP(sm4ks, x25, x23, 0x2, 0x00000000b5db7113, 0x10fd3dedadea5195, 0x0000000000d20000, x1, 0, x2)

inst_211:
    // Test 211:  Test with dataset: sbox32
    // result rd:x26(0x000000005affaf85), rs1=>rd:x26(0xbd295ce2d2ffbec1), rs2:x22(0x00000000d3000000), imm:0x3
    TEST_RI_OP(sm4ks, x26, x22, 0x3, 0x000000005affaf85, 0xbd295ce2d2ffbec1, 0x00000000d3000000, x1, 8, x2)

inst_212:
    // Test 212:  Test with dataset: sbox32
    // result rd:x27(0x000000000875fa1e), rs1=>rd:x27(0xc9649f05a8e1a8bb), rs2:x21(0x00000000000000d4), imm:0x0
    TEST_RI_OP(sm4ks, x27, x21, 0x0, 0x000000000875fa1e, 0xc9649f05a8e1a8bb, 0x00000000000000d4, x1, 16, x2)

inst_213:
    // Test 213:  Test with dataset: sbox32
    // result rd:x28(0x00000000d1af526b), rs1=>rd:x28(0x3541291848c99fcb), rs2:x20(0x000000000000d500), imm:0x1
    TEST_RI_OP(sm4ks, x28, x20, 0x1, 0x00000000d1af526b, 0x3541291848c99fcb, 0x000000000000d500, x1, 24, x2)

inst_214:
    // Test 214:  Test with dataset: sbox32
    // result rd:x29(0x000000007b6632c0), rs1=>rd:x29(0x10a24740461d524f), rs2:x19(0x0000000000d60000), imm:0x2
    TEST_RI_OP(sm4ks, x29, x19, 0x2, 0x000000007b6632c0, 0x10a24740461d524f, 0x0000000000d60000, x1, 32, x2)


    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with dataset: sbox32
    // result rd:x30(0x00000000ef2a87f1), rs1=>rd:x30(0x546b0e54528a10af), rs2:x18(0x00000000d7000000), imm:0x3
    TEST_RI_OP(sm4ks, x30, x18, 0x3, 0x00000000ef2a87f1, 0x546b0e54528a10af, 0x00000000d7000000, x4, 0, x5)

inst_216:
    // Test 216:  Test with dataset: sbox32
    // result rd:x31(0x00000000411eedee), rs1=>rd:x31(0x73a92fd4e19bfbc3), rs2:x17(0x00000000000000d8), imm:0x0
    TEST_RI_OP(sm4ks, x31, x17, 0x0, 0x00000000411eedee, 0x73a92fd4e19bfbc3, 0x00000000000000d8, x4, 8, x5)

inst_217:
    // Test 217:  Test with dataset: sbox32
    // result rd:x1(0x000000007e408640), rs1=>rd:x1(0x82f6747f707af2c0), rs2:x16(0x000000000000d900), imm:0x1
    TEST_RI_OP(sm4ks, x1, x16, 0x1, 0x000000007e408640, 0x82f6747f707af2c0, 0x000000000000d900, x4, 16, x5)

inst_218:
    // Test 218:  Test with dataset: sbox32
    // result rd:x2(0x00000000ccad1041), rs1=>rd:x2(0xf5adb41aa47d105b), rs2:x15(0x0000000000da0000), imm:0x2
    TEST_RI_OP(sm4ks, x2, x15, 0x2, 0x00000000ccad1041, 0xf5adb41aa47d105b, 0x0000000000da0000, x4, 24, x5)

inst_219:
    // Test 219:  Test with dataset: sbox32
    // result rd:x3(0x00000000005bce2a), rs1=>rd:x3(0xdf7f3844121bcc23), rs2:x14(0x00000000db000000), imm:0x3
    TEST_RI_OP(sm4ks, x3, x14, 0x3, 0x00000000005bce2a, 0xdf7f3844121bcc23, 0x00000000db000000, x4, 32, x5)


    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with dataset: sbox32
    // result rd:x4(0x00000000adfd0d2d), rs1=>rd:x4(0x10fd3dedadea5195), rs2:x13(0x00000000000000dc), imm:0x0
    TEST_RI_OP(sm4ks, x4, x13, 0x0, 0x00000000adfd0d2d, 0x10fd3dedadea5195, 0x00000000000000dc, x1, 0, x2)

inst_221:
    // Test 221:  Test with dataset: sbox32
    // result rd:x5(0x000000004e8d5b61), rs1=>rd:x5(0xbd295ce2d2ffbec1), rs2:x12(0x000000000000dd00), imm:0x1
    TEST_RI_OP(sm4ks, x5, x12, 0x1, 0x000000004e8d5b61, 0xbd295ce2d2ffbec1, 0x000000000000dd00, x1, 8, x2)

inst_222:
    // Test 222:  Test with dataset: sbox32
    // result rd:x6(0x00000000f25528ad), rs1=>rd:x6(0xc9649f05a8e1a8bb), rs2:x11(0x0000000000de0000), imm:0x2
    TEST_RI_OP(sm4ks, x6, x11, 0x2, 0x00000000f25528ad, 0xc9649f05a8e1a8bb, 0x0000000000de0000, x1, 16, x2)

inst_223:
    // Test 223:  Test with dataset: sbox32
    // result rd:x7(0x00000000f8c98993), rs1=>rd:x7(0x3541291848c99fcb), rs2:x10(0x00000000df000000), imm:0x3
    TEST_RI_OP(sm4ks, x7, x10, 0x3, 0x00000000f8c98993, 0x3541291848c99fcb, 0x00000000df000000, x1, 24, x2)

inst_224:
    // Test 224:  Test with dataset: sbox32
    // result rd:x8(0x00000000668c16c6), rs1=>rd:x8(0x10a24740461d524f), rs2:x9(0x00000000000000e0), imm:0x0
    TEST_RI_OP(sm4ks, x8, x9, 0x0, 0x00000000668c16c6, 0x10a24740461d524f, 0x00000000000000e0, x1, 32, x2)


    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with dataset: sbox32
    // result rd:x9(0x00000000dfbe798f), rs1=>rd:x9(0x546b0e54528a10af), rs2:x8(0x000000000000e100), imm:0x1
    TEST_RI_OP(sm4ks, x9, x8, 0x1, 0x00000000dfbe798f, 0x546b0e54528a10af, 0x000000000000e100, x1, 0, x2)

inst_226:
    // Test 226:  Test with dataset: sbox32
    // result rd:x10(0x00000000aa0c1b51), rs1=>rd:x10(0x73a92fd4e19bfbc3), rs2:x7(0x0000000000e20000), imm:0x2
    TEST_RI_OP(sm4ks, x10, x7, 0x2, 0x00000000aa0c1b51, 0x73a92fd4e19bfbc3, 0x0000000000e20000, x1, 8, x2)

inst_227:
    // Test 227:  Test with dataset: sbox32
    // result rd:x11(0x000000003a3afbe5), rs1=>rd:x11(0x82f6747f707af2c0), rs2:x6(0x00000000e3000000), imm:0x3
    TEST_RI_OP(sm4ks, x11, x6, 0x3, 0x000000003a3afbe5, 0x82f6747f707af2c0, 0x00000000e3000000, x1, 16, x2)

inst_228:
    // Test 228:  Test with dataset: sbox32
    // result rd:x12(0x00000000247c1657), rs1=>rd:x12(0xf5adb41aa47d105b), rs2:x5(0x00000000000000e4), imm:0x0
    TEST_RI_OP(sm4ks, x12, x5, 0x0, 0x00000000247c1657, 0xf5adb41aa47d105b, 0x00000000000000e4, x1, 24, x2)

inst_229:
    // Test 229:  Test with dataset: sbox32
    // result rd:x13(0x0000000000505ae3), rs1=>rd:x13(0xdf7f3844121bcc23), rs2:x4(0x000000000000e500), imm:0x1
    TEST_RI_OP(sm4ks, x13, x4, 0x1, 0x0000000000505ae3, 0xdf7f3844121bcc23, 0x000000000000e500, x1, 32, x2)


    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with dataset: sbox32
    // result rd:x14(0x00000000969db11b), rs1=>rd:x14(0x10fd3dedadea5195), rs2:x3(0x0000000000e60000), imm:0x2
    TEST_RI_OP(sm4ks, x14, x3, 0x2, 0x00000000969db11b, 0x10fd3dedadea5195, 0x0000000000e60000, x4, 0, x5)

inst_231:
    // Test 231:  Test with dataset: sbox32
    // result rd:x15(0x00000000ac3fb1fe), rs1=>rd:x15(0xbd295ce2d2ffbec1), rs2:x2(0x00000000e7000000), imm:0x3
    TEST_RI_OP(sm4ks, x15, x2, 0x3, 0x00000000ac3fb1fe, 0xbd295ce2d2ffbec1, 0x00000000e7000000, x4, 8, x5)

inst_232:
    // Test 232:  Test with dataset: sbox32
    // result rd:x16(0x00000000086d9ade), rs1=>rd:x16(0xc9649f05a8e1a8bb), rs2:x1(0x00000000000000e8), imm:0x0
    TEST_RI_OP(sm4ks, x16, x1, 0x0, 0x00000000086d9ade, 0xc9649f05a8e1a8bb, 0x00000000000000e8, x4, 16, x5)

inst_233:
    // Test 233:  Test with dataset: sbox32
    // result rd:x17(0x00000000df9526eb), rs1=>rd:x17(0x3541291848c99fcb), rs2:x31(0x000000000000e900), imm:0x1
    TEST_RI_OP(sm4ks, x17, x31, 0x1, 0x00000000df9526eb, 0x3541291848c99fcb, 0x000000000000e900, x4, 24, x5)

inst_234:
    // Test 234:  Test with dataset: sbox32
    // result rd:x18(0x000000003eec72d1), rs1=>rd:x18(0x10a24740461d524f), rs2:x30(0x0000000000ea0000), imm:0x2
    TEST_RI_OP(sm4ks, x18, x30, 0x2, 0x000000003eec72d1, 0x10a24740461d524f, 0x0000000000ea0000, x4, 32, x5)


    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with dataset: sbox32
    // result rd:x19(0x000000005baa91ab), rs1=>rd:x19(0x546b0e54528a10af), rs2:x29(0x00000000eb000000), imm:0x3
    TEST_RI_OP(sm4ks, x19, x29, 0x3, 0x000000005baa91ab, 0x546b0e54528a10af, 0x00000000eb000000, x1, 0, x2)

inst_236:
    // Test 236:  Test with dataset: sbox32
    // result rd:x20(0x0000000041039906), rs1=>rd:x20(0x73a92fd4e19bfbc3), rs2:x28(0x00000000000000ec), imm:0x0
    TEST_RI_OP(sm4ks, x20, x28, 0x0, 0x0000000041039906, 0x73a92fd4e19bfbc3, 0x00000000000000ec, x1, 8, x2)

inst_237:
    // Test 237:  Test with dataset: sbox32
    // result rd:x21(0x000000007d4d9c00), rs1=>rd:x21(0x82f6747f707af2c0), rs2:x27(0x000000000000ed00), imm:0x1
    TEST_RI_OP(sm4ks, x21, x27, 0x1, 0x000000007d4d9c00, 0x82f6747f707af2c0, 0x000000000000ed00, x1, 16, x2)

inst_238:
    // Test 238:  Test with dataset: sbox32
    // result rd:x22(0x00000000c7bbd043), rs1=>rd:x22(0xf5adb41aa47d105b), rs2:x26(0x0000000000ee0000), imm:0x2
    TEST_RI_OP(sm4ks, x22, x26, 0x2, 0x00000000c7bbd043, 0xf5adb41aa47d105b, 0x0000000000ee0000, x1, 24, x2)

inst_239:
    // Test 239:  Test with dataset: sbox32
    // result rd:x23(0x00000000969bdc61), rs1=>rd:x23(0xdf7f3844121bcc23), rs2:x25(0x00000000ef000000), imm:0x3
    TEST_RI_OP(sm4ks, x23, x25, 0x3, 0x00000000969bdc61, 0xdf7f3844121bcc23, 0x00000000ef000000, x1, 32, x2)


    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with dataset: sbox32
    // result rd:x24(0x0000000000030ce8), rs1=>rd:x24(0x10fd3dedadea5195), rs2:x24(0x00000000000000f0), imm:0x0
    TEST_RI_OP(sm4ks, x24, x24, 0x0, 0x0000000000030ce8, 0x10fd3dedadea5195, 0x00000000000000f0, x1, 0, x2)

inst_241:
    // Test 241:  Test with dataset: sbox32
    // result rd:x25(0x00000000cc874ec1), rs1=>rd:x25(0xbd295ce2d2ffbec1), rs2:x23(0x000000000000f100), imm:0x1
    TEST_RI_OP(sm4ks, x25, x23, 0x1, 0x00000000cc874ec1, 0xbd295ce2d2ffbec1, 0x000000000000f100, x1, 8, x2)

inst_242:
    // Test 242:  Test with dataset: sbox32
    // result rd:x26(0x00000000969c0834), rs1=>rd:x26(0xc9649f05a8e1a8bb), rs2:x22(0x0000000000f20000), imm:0x2
    TEST_RI_OP(sm4ks, x26, x22, 0x2, 0x00000000969c0834, 0xc9649f05a8e1a8bb, 0x0000000000f20000, x1, 16, x2)

inst_243:
    // Test 243:  Test with dataset: sbox32
    // result rd:x27(0x00000000a44982bd), rs1=>rd:x27(0x3541291848c99fcb), rs2:x21(0x00000000f3000000), imm:0x3
    TEST_RI_OP(sm4ks, x27, x21, 0x3, 0x00000000a44982bd, 0x3541291848c99fcb, 0x00000000f3000000, x1, 24, x2)

inst_244:
    // Test 244:  Test with dataset: sbox32
    // result rd:x28(0x00000000061a4f75), rs1=>rd:x28(0x10a24740461d524f), rs2:x20(0x00000000000000f4), imm:0x0
    TEST_RI_OP(sm4ks, x28, x20, 0x0, 0x00000000061a4f75, 0x10a24740461d524f, 0x00000000000000f4, x1, 32, x2)


    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with dataset: sbox32
    // result rd:x29(0x0000000049e4cc2f), rs1=>rd:x29(0x546b0e54528a10af), rs2:x19(0x000000000000f500), imm:0x1
    TEST_RI_OP(sm4ks, x29, x19, 0x1, 0x0000000049e4cc2f, 0x546b0e54528a10af, 0x000000000000f500, x4, 0, x5)

inst_246:
    // Test 246:  Test with dataset: sbox32
    // result rd:x30(0x00000000c7d65b4a), rs1=>rd:x30(0x73a92fd4e19bfbc3), rs2:x18(0x0000000000f60000), imm:0x2
    TEST_RI_OP(sm4ks, x30, x18, 0x2, 0x00000000c7d65b4a, 0x73a92fd4e19bfbc3, 0x0000000000f60000, x4, 8, x5)

inst_247:
    // Test 247:  Test with dataset: sbox32
    // result rd:x31(0x00000000507af6d0), rs1=>rd:x31(0x82f6747f707af2c0), rs2:x17(0x00000000f7000000), imm:0x3
    TEST_RI_OP(sm4ks, x31, x17, 0x3, 0x00000000507af6d0, 0x82f6747f707af2c0, 0x00000000f7000000, x4, 16, x5)

inst_248:
    // Test 248:  Test with dataset: sbox32
    // result rd:x1(0x0000000084f22c22), rs1=>rd:x1(0xf5adb41aa47d105b), rs2:x16(0x00000000000000f8), imm:0x0
    TEST_RI_OP(sm4ks, x1, x16, 0x0, 0x0000000084f22c22, 0xf5adb41aa47d105b, 0x00000000000000f8, x4, 24, x5)

inst_249:
    // Test 249:  Test with dataset: sbox32
    // result rd:x2(0x000000000f6c22e3), rs1=>rd:x2(0xdf7f3844121bcc23), rs2:x15(0x000000000000f900), imm:0x1
    TEST_RI_OP(sm4ks, x2, x15, 0x1, 0x000000000f6c22e3, 0xdf7f3844121bcc23, 0x000000000000f900, x4, 32, x5)


    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with dataset: sbox32
    // result rd:x3(0x0000000082b5b11e), rs1=>rd:x3(0x10fd3dedadea5195), rs2:x14(0x0000000000fa0000), imm:0x2
    TEST_RI_OP(sm4ks, x3, x14, 0x2, 0x0000000082b5b11e, 0x10fd3dedadea5195, 0x0000000000fa0000, x1, 0, x2)

inst_251:
    // Test 251:  Test with dataset: sbox32
    // result rd:x4(0x00000000ec3fb9de), rs1=>rd:x4(0xbd295ce2d2ffbec1), rs2:x13(0x00000000fb000000), imm:0x3
    TEST_RI_OP(sm4ks, x4, x13, 0x3, 0x00000000ec3fb9de, 0xbd295ce2d2ffbec1, 0x00000000fb000000, x1, 8, x2)

inst_252:
    // Test 252:  Test with dataset: sbox32
    // result rd:x5(0x00000000487bc36c), rs1=>rd:x5(0xc9649f05a8e1a8bb), rs2:x12(0x00000000000000fc), imm:0x0
    TEST_RI_OP(sm4ks, x5, x12, 0x0, 0x00000000487bc36c, 0xc9649f05a8e1a8bb, 0x00000000000000fc, x1, 16, x2)

inst_253:
    // Test 253:  Test with dataset: sbox32
    // result rd:x6(0x00000000d1ac54ab), rs1=>rd:x6(0x3541291848c99fcb), rs2:x11(0x000000000000fd00), imm:0x1
    TEST_RI_OP(sm4ks, x6, x11, 0x1, 0x00000000d1ac54ab, 0x3541291848c99fcb, 0x000000000000fd00, x1, 24, x2)

inst_254:
    // Test 254:  Test with dataset: sbox32
    // result rd:x7(0x000000005a2472c8), rs1=>rd:x7(0x10a24740461d524f), rs2:x10(0x0000000000fe0000), imm:0x2
    TEST_RI_OP(sm4ks, x7, x10, 0x2, 0x000000005a2472c8, 0x10a24740461d524f, 0x0000000000fe0000, x1, 32, x2)


    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",sm4ks)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with dataset: sbox32
    // result rd:x8(0x000000001a8a198b), rs1=>rd:x8(0x546b0e54528a10af), rs2:x9(0x00000000ff000000), imm:0x3
    TEST_RI_OP(sm4ks, x8, x9, 0x3, 0x000000001a8a198b, 0x546b0e54528a10af, 0x00000000ff000000, x1, 0, x2)
	
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


#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END

