// RISC-V Architectural Validation Test AES64DSM-01
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
// Description: Testing instruction 'aes64dsm'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV64IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1

    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with random values
    // result rd:x1(0x06fbad2157078033), rs1:x31(0x10fd3dedadea5195), rs2:x16(0xdf7f3844121bcc23)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0x06fbad2157078033, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x6, 0, x7)

inst_1:
    // Test 1:  Test with random values
    // result rd:x2(0x3ff7b01c7616ec49), rs1:x30(0xbd295ce2d2ffbec1), rs2:x15(0xf5adb41aa47d105b)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x3ff7b01c7616ec49, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x6, 8, x7)

inst_2:
    // Test 2:  Test with random values
    // result rd:x3(0x5ce65db8b3c046ae), rs1:x29(0xc9649f05a8e1a8bb), rs2:x14(0x82f6747f707af2c0)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0x5ce65db8b3c046ae, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x6, 16, x7)

inst_3:
    // Test 3:  Test with random values
    // result rd:x4(0x3846acdfa5757e88), rs1:x28(0x3541291848c99fcb), rs2:x13(0x73a92fd4e19bfbc3)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0x3846acdfa5757e88, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x6, 24, x7)

inst_4:
    // Test 4:  Test with random values
    // result rd:x5(0xdeba302326da7a70), rs1:x27(0x10a24740461d524f), rs2:x12(0x546b0e54528a10af)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0xdeba302326da7a70, 0x10a24740461d524f, 0x546b0e54528a10af, x6, 32, x7)

    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with random values
    // result rd:x6(0xf4af164eeee4597d), rs1:x26(0x546b0e54528a10af), rs2:x11(0x10a24740461d524f)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0xf4af164eeee4597d, 0x546b0e54528a10af, 0x10a24740461d524f, x1, 0, x2)

inst_6:
    // Test 6:  Test with random values
    // result rd:x7(0x6fd974947e0462fa), rs1:x25(0x73a92fd4e19bfbc3), rs2:x10(0x3541291848c99fcb)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0x6fd974947e0462fa, 0x73a92fd4e19bfbc3, 0x3541291848c99fcb, x1, 8, x2)

inst_7:
    // Test 7:  Test with random values
    // result rd:x8(0x50603884062462c0), rs1:x24(0x82f6747f707af2c0), rs2:x9(0xc9649f05a8e1a8bb)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0x50603884062462c0, 0x82f6747f707af2c0, 0xc9649f05a8e1a8bb, x1, 16, x2)

inst_8:
    // Test 8:  Test with random values
    // result rd:x9(0x677a7c6d31aa0e6f), rs1:x23(0xf5adb41aa47d105b), rs2:x8(0xbd295ce2d2ffbec1)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0x677a7c6d31aa0e6f, 0xf5adb41aa47d105b, 0xbd295ce2d2ffbec1, x1, 24, x2)

inst_9:
    // Test 9:  Test with random values
    // result rd:x10(0xf7cde34101c5a48d), rs1:x22(0xdf7f3844121bcc23), rs2:x7(0x10fd3dedadea5195)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0xf7cde34101c5a48d, 0xdf7f3844121bcc23, 0x10fd3dedadea5195, x1, 32, x2)

    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with marching zeros/ones
    // result rd:x11(0x9fc1b0eeed5d749f), rs1:x21(0x0000000000000001), rs2:x6(0xffffffffffffffff)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0x9fc1b0eeed5d749f, 0x1, 0xffffffffffffffff, x1, 0, x7)

inst_11:
    // Test 11:  Test with marching zeros/ones
    // result rd:x12(0x9fc1b0ee7d9c22fb), rs1:x20(0x0000000000000002), rs2:x5(0x7fffffffffffffff)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0x9fc1b0ee7d9c22fb, 0x2, 0x7fffffffffffffff, x1, 8, x7)

inst_12:
    // Test 12:  Test with marching zeros/ones
    // result rd:x13(0x9fc1b0ee75539eda), rs1:x19(0x0000000000000004), rs2:x4(0xbfffffffffffffff)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0x9fc1b0ee75539eda, 0x4, 0xbfffffffffffffff, x1, 16, x7)

inst_13:
    // Test 13:  Test with marching zeros/ones
    // result rd:x14(0x9fc1b0eeebc205c1), rs1:x18(0x0000000000000008), rs2:x3(0xdfffffffffffffff)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0x9fc1b0eeebc205c1, 0x8, 0xdfffffffffffffff, x1, 24, x7)

inst_14:
    // Test 14:  Test with marching zeros/ones
    // result rd:x15(0x9fc1b0eef762843f), rs1:x17(0x0000000000000010), rs2:x2(0xefffffffffffffff)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0x9fc1b0eef762843f, 0x10, 0xefffffffffffffff, x1, 32, x7)

    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with marching zeros/ones
    // result rd:x16(0x9fc1b0eed4b1f794), rs1:x16(0x0000000000000020), rs2:x1(0xf7ffffffffffffff)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0x9fc1b0eed4b1f794, 0x20, 0xf7ffffffffffffff, x2, 0, x3)

inst_16:
    // Test 16:  Test with marching zeros/ones
    // result rd:x17(0x9fc1b0ee9524fa6b), rs1:x15(0x0000000000000040), rs2:x31(0xfbffffffffffffff)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0x9fc1b0ee9524fa6b, 0x40, 0xfbffffffffffffff, x2, 8, x3)

inst_17:
    // Test 17:  Test with marching zeros/ones
    // result rd:x18(0x9fc1b0ee3b21c4b6), rs1:x14(0x0000000000000080), rs2:x30(0xfdffffffffffffff)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0x9fc1b0ee3b21c4b6, 0x80, 0xfdffffffffffffff, x2, 16, x3)

inst_18:
    // Test 18:  Test with marching zeros/ones
    // result rd:x19(0x5d749fedee9fc1b0), rs1:x13(0x0000000000000100), rs2:x29(0xfeffffffffffffff)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0x5d749fedee9fc1b0, 0x100, 0xfeffffffffffffff, x2, 24, x3)

inst_19:
    // Test 19:  Test with marching zeros/ones
    // result rd:x20(0x3ae67183ee9fc1b0), rs1:x12(0x0000000000000200), rs2:x28(0xff7fffffffffffff)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0x3ae67183ee9fc1b0, 0x200, 0xff7fffffffffffff, x2, 32, x3)

    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with marching zeros/ones
    // result rd:x21(0xfea17ecaee9fc1b0), rs1:x11(0x0000000000000400), rs2:x27(0xffbfffffffffffff)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0xfea17ecaee9fc1b0, 0x400, 0xffbfffffffffffff, x1, 0, x2)

inst_21:
    // Test 21:  Test with marching zeros/ones
    // result rd:x22(0xacb890fbee9fc1b0), rs1:x10(0x0000000000000800), rs2:x26(0xffdfffffffffffff)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0xacb890fbee9fc1b0, 0x800, 0xffdfffffffffffff, x1, 8, x2)

inst_22:
    // Test 22:  Test with marching zeros/ones
    // result rd:x23(0x9e2cfb7bee9fc1b0), rs1:x9(0x0000000000001000), rs2:x25(0xffefffffffffffff)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0x9e2cfb7bee9fc1b0, 0x1000, 0xffefffffffffffff, x1, 16, x2)

inst_23:
    // Test 23:  Test with marching zeros/ones
    // result rd:x24(0x04d89716ee9fc1b0), rs1:x8(0x0000000000002000), rs2:x24(0xfff7ffffffffffff)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0x04d89716ee9fc1b0, 0x2000, 0xfff7ffffffffffff, x1, 24, x2)

inst_24:
    // Test 24:  Test with marching zeros/ones
    // result rd:x25(0xca4eb903ee9fc1b0), rs1:x7(0x0000000000004000), rs2:x23(0xfffbffffffffffff)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0xca4eb903ee9fc1b0, 0x4000, 0xfffbffffffffffff, x1, 32, x2)

    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with marching zeros/ones
    // result rd:x26(0xabc184daee9fc1b0), rs1:x6(0x0000000000008000), rs2:x22(0xfffdffffffffffff)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0xabc184daee9fc1b0, 0x8000, 0xfffdffffffffffff, x1, 0, x7)

inst_26:
    // Test 26:  Test with marching zeros/ones
    // result rd:x27(0x4b5986e5ee9fc1b0), rs1:x5(0x0000000000010000), rs2:x21(0xfffeffffffffffff)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0x4b5986e5ee9fc1b0, 0x10000, 0xfffeffffffffffff, x1, 8, x7)

inst_27:
    // Test 27:  Test with marching zeros/ones
    // result rd:x28(0x9fc1b0ee1039053a), rs1:x4(0x0000000000020000), rs2:x20(0xffff7fffffffffff)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0x9fc1b0ee1039053a, 0x20000, 0xffff7fffffffffff, x1, 16, x7)

inst_28:
    // Test 28:  Test with marching zeros/ones
    // result rd:x29(0x9fc1b0ee5132fe14), rs1:x3(0x0000000000040000), rs2:x19(0xffffbfffffffffff)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0x9fc1b0ee5132fe14, 0x40000, 0xffffbfffffffffff, x1, 24, x7)

inst_29:
    // Test 29:  Test with marching zeros/ones
    // result rd:x30(0x9fc1b0eefef17ce1), rs1:x2(0x0000000000080000), rs2:x18(0xffffdfffffffffff)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0x9fc1b0eefef17ce1, 0x80000, 0xffffdfffffffffff, x1, 32, x7)

    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with marching zeros/ones
    // result rd:x31(0x9fc1b0ee62636974), rs1:x1(0x0000000000100000), rs2:x17(0xffffefffffffffff)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0x9fc1b0ee62636974, 0x100000, 0xffffefffffffffff, x5, 0, x6)

inst_31:
    // Test 31:  Test with marching zeros/ones
    // result rd:x1(0x9fc1b0ee2c2aeeb3), rs1:x31(0x0000000000200000), rs2:x16(0xfffff7ffffffffff)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0x9fc1b0ee2c2aeeb3, 0x200000, 0xfffff7ffffffffff, x5, 8, x6)

inst_32:
    // Test 32:  Test with marching zeros/ones
    // result rd:x2(0x9fc1b0ee78717562), rs1:x30(0x0000000000400000), rs2:x15(0xfffffbffffffffff)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x9fc1b0ee78717562, 0x400000, 0xfffffbffffffffff, x5, 16, x6)

inst_33:
    // Test 33:  Test with marching zeros/ones
    // result rd:x3(0x9fc1b0ee0f15c482), rs1:x29(0x0000000000800000), rs2:x14(0xfffffdffffffffff)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0x9fc1b0ee0f15c482, 0x800000, 0xfffffdffffffffff, x5, 24, x6)

inst_34:
    // Test 34:  Test with marching zeros/ones
    // result rd:x4(0x9fc1b0eee54b5986), rs1:x28(0x0000000001000000), rs2:x13(0xfffffeffffffffff)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0x9fc1b0eee54b5986, 0x1000000, 0xfffffeffffffffff, x5, 32, x6)

    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with marching zeros/ones
    // result rd:x5(0x9fc1b0eeee9fc1b0), rs1:x27(0x0000000002000000), rs2:x12(0xffffff7fffffffff)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0x9fc1b0eeee9fc1b0, 0x2000000, 0xffffff7fffffffff, x1, 0, x2)

inst_36:
    // Test 36:  Test with marching zeros/ones
    // result rd:x6(0x9fc1b0eeee9fc1b0), rs1:x26(0x0000000004000000), rs2:x11(0xffffffbfffffffff)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0x9fc1b0eeee9fc1b0, 0x4000000, 0xffffffbfffffffff, x1, 8, x2)

inst_37:
    // Test 37:  Test with marching zeros/ones
    // result rd:x7(0x9fc1b0eeee9fc1b0), rs1:x25(0x0000000008000000), rs2:x10(0xffffffdfffffffff)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0x9fc1b0eeee9fc1b0, 0x8000000, 0xffffffdfffffffff, x1, 16, x2)

inst_38:
    // Test 38:  Test with marching zeros/ones
    // result rd:x8(0x9fc1b0eeee9fc1b0), rs1:x24(0x0000000010000000), rs2:x9(0xffffffefffffffff)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0x9fc1b0eeee9fc1b0, 0x10000000, 0xffffffefffffffff, x1, 24, x2)

inst_39:
    // Test 39:  Test with marching zeros/ones
    // result rd:x9(0x9fc1b0eeee9fc1b0), rs1:x23(0x0000000020000000), rs2:x8(0xfffffff7ffffffff)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0x9fc1b0eeee9fc1b0, 0x20000000, 0xfffffff7ffffffff, x1, 32, x2)

    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with marching zeros/ones
    // result rd:x10(0x9fc1b0eeee9fc1b0), rs1:x22(0x0000000040000000), rs2:x7(0xfffffffbffffffff)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0x9fc1b0eeee9fc1b0, 0x40000000, 0xfffffffbffffffff, x1, 0, x2)

inst_41:
    // Test 41:  Test with marching zeros/ones
    // result rd:x11(0x9fc1b0eeee9fc1b0), rs1:x21(0x0000000080000000), rs2:x6(0xfffffffdffffffff)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0x9fc1b0eeee9fc1b0, 0x80000000, 0xfffffffdffffffff, x1, 8, x2)

inst_42:
    // Test 42:  Test with marching zeros/ones
    // result rd:x12(0x9c0305c1ee9fc1b0), rs1:x20(0x0000000100000000), rs2:x5(0xfffffffeffffffff)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0x9c0305c1ee9fc1b0, 0x100000000, 0xfffffffeffffffff, x1, 16, x2)

inst_43:
    // Test 43:  Test with marching zeros/ones
    // result rd:x13(0xc848ad03ee9fc1b0), rs1:x19(0x0000000200000000), rs2:x4(0xffffffff7fffffff)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0xc848ad03ee9fc1b0, 0x200000000, 0xffffffff7fffffff, x1, 24, x2)

inst_44:
    // Test 44:  Test with marching zeros/ones
    // result rd:x14(0x3ba95029ee9fc1b0), rs1:x18(0x0000000400000000), rs2:x3(0xffffffffbfffffff)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0x3ba95029ee9fc1b0, 0x400000000, 0xffffffffbfffffff, x1, 32, x2)

    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with marching zeros/ones
    // result rd:x15(0x27cd64f1ee9fc1b0), rs1:x17(0x0000000800000000), rs2:x2(0xffffffffdfffffff)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0x27cd64f1ee9fc1b0, 0x800000000, 0xffffffffdfffffff, x3, 0, x4)

inst_46:
    // Test 46:  Test with marching zeros/ones
    // result rd:x16(0x2ef8799dee9fc1b0), rs1:x16(0x0000001000000000), rs2:x1(0xffffffffefffffff)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0x2ef8799dee9fc1b0, 0x1000000000, 0xffffffffefffffff, x3, 8, x4)

inst_47:
    // Test 47:  Test with marching zeros/ones
    // result rd:x17(0x8aec447fee9fc1b0), rs1:x15(0x0000002000000000), rs2:x31(0xfffffffff7ffffff)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0x8aec447fee9fc1b0, 0x2000000000, 0xfffffffff7ffffff, x3, 16, x4)

inst_48:
    // Test 48:  Test with marching zeros/ones
    // result rd:x18(0x50a81ddbee9fc1b0), rs1:x14(0x0000004000000000), rs2:x30(0xfffffffffbffffff)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0x50a81ddbee9fc1b0, 0x4000000000, 0xfffffffffbffffff, x3, 24, x4)

inst_49:
    // Test 49:  Test with marching zeros/ones
    // result rd:x19(0x4f4d5462ee9fc1b0), rs1:x13(0x0000008000000000), rs2:x29(0xfffffffffdffffff)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0x4f4d5462ee9fc1b0, 0x8000000000, 0xfffffffffdffffff, x3, 32, x4)

    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with marching zeros/ones
    // result rd:x20(0x07f7bb3aee9fc1b0), rs1:x12(0x0000010000000000), rs2:x28(0xfffffffffeffffff)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0x07f7bb3aee9fc1b0, 0x10000000000, 0xfffffffffeffffff, x1, 0, x2)

inst_51:
    // Test 51:  Test with marching zeros/ones
    // result rd:x21(0x9fc1b0ee485b4b4e), rs1:x11(0x0000020000000000), rs2:x27(0xffffffffff7fffff)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0x9fc1b0ee485b4b4e, 0x20000000000, 0xffffffffff7fffff, x1, 8, x2)

inst_52:
    // Test 52:  Test with marching zeros/ones
    // result rd:x22(0x9fc1b0ee43a0650f), rs1:x10(0x0000040000000000), rs2:x26(0xffffffffffbfffff)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0x9fc1b0ee43a0650f, 0x40000000000, 0xffffffffffbfffff, x1, 16, x2)

inst_53:
    // Test 53:  Test with marching zeros/ones
    // result rd:x23(0x9fc1b0ee802290a0), rs1:x9(0x0000080000000000), rs2:x25(0xffffffffffdfffff)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0x9fc1b0ee802290a0, 0x80000000000, 0xffffffffffdfffff, x1, 24, x2)

inst_54:
    // Test 54:  Test with marching zeros/ones
    // result rd:x24(0x9fc1b0ee1237053c), rs1:x8(0x0000100000000000), rs2:x24(0xffffffffffefffff)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0x9fc1b0ee1237053c, 0x100000000000, 0xffffffffffefffff, x1, 32, x2)

    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with marching zeros/ones
    // result rd:x25(0x9fc1b0ee5bb0c272), rs1:x7(0x0000200000000000), rs2:x23(0xfffffffffff7ffff)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0x9fc1b0ee5bb0c272, 0x200000000000, 0xfffffffffff7ffff, x1, 0, x2)

inst_56:
    // Test 56:  Test with marching zeros/ones
    // result rd:x26(0x9fc1b0ee002b1326), rs1:x6(0x0000400000000000), rs2:x22(0xfffffffffffbffff)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0x9fc1b0ee002b1326, 0x400000000000, 0xfffffffffffbffff, x1, 8, x2)

inst_57:
    // Test 57:  Test with marching zeros/ones
    // result rd:x27(0x9fc1b0ee649af351), rs1:x5(0x0000800000000000), rs2:x21(0xfffffffffffdffff)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0x9fc1b0ee649af351, 0x800000000000, 0xfffffffffffdffff, x1, 16, x2)

inst_58:
    // Test 58:  Test with marching zeros/ones
    // result rd:x28(0x9fc1b0ee3a07f7bb), rs1:x4(0x0001000000000000), rs2:x20(0xfffffffffffeffff)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0x9fc1b0ee3a07f7bb, 0x1000000000000, 0xfffffffffffeffff, x1, 24, x2)

inst_59:
    // Test 59:  Test with marching zeros/ones
    // result rd:x29(0x9fc1b0eeee9fc1b0), rs1:x3(0x0002000000000000), rs2:x19(0xffffffffffff7fff)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0x9fc1b0eeee9fc1b0, 0x2000000000000, 0xffffffffffff7fff, x1, 32, x2)

    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with marching zeros/ones
    // result rd:x30(0x9fc1b0eeee9fc1b0), rs1:x2(0x0004000000000000), rs2:x18(0xffffffffffffbfff)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0x9fc1b0eeee9fc1b0, 0x4000000000000, 0xffffffffffffbfff, x4, 0, x5)

inst_61:
    // Test 61:  Test with marching zeros/ones
    // result rd:x31(0x9fc1b0eeee9fc1b0), rs1:x1(0x0008000000000000), rs2:x17(0xffffffffffffdfff)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0x9fc1b0eeee9fc1b0, 0x8000000000000, 0xffffffffffffdfff, x4, 8, x5)

inst_62:
    // Test 62:  Test with marching zeros/ones
    // result rd:x1(0x9fc1b0eeee9fc1b0), rs1:x31(0x0010000000000000), rs2:x16(0xffffffffffffefff)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0x9fc1b0eeee9fc1b0, 0x10000000000000, 0xffffffffffffefff, x4, 16, x5)

inst_63:
    // Test 63:  Test with marching zeros/ones
    // result rd:x2(0x9fc1b0eeee9fc1b0), rs1:x30(0x0020000000000000), rs2:x15(0xfffffffffffff7ff)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x9fc1b0eeee9fc1b0, 0x20000000000000, 0xfffffffffffff7ff, x4, 24, x5)

inst_64:
    // Test 64:  Test with marching zeros/ones
    // result rd:x3(0x9fc1b0eeee9fc1b0), rs1:x29(0x0040000000000000), rs2:x14(0xfffffffffffffbff)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0x9fc1b0eeee9fc1b0, 0x40000000000000, 0xfffffffffffffbff, x4, 32, x5)

    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with marching zeros/ones
    // result rd:x4(0x9fc1b0eeee9fc1b0), rs1:x28(0x0080000000000000), rs2:x13(0xfffffffffffffdff)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0x9fc1b0eeee9fc1b0, 0x80000000000000, 0xfffffffffffffdff, x1, 0, x2)

inst_66:
    // Test 66:  Test with marching zeros/ones
    // result rd:x5(0x9fc1b0eec19c0305), rs1:x27(0x0100000000000000), rs2:x12(0xfffffffffffffeff)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0x9fc1b0eec19c0305, 0x100000000000000, 0xfffffffffffffeff, x1, 8, x2)

inst_67:
    // Test 67:  Test with marching zeros/ones
    // result rd:x6(0x9fc1b0eea50cc253), rs1:x26(0x0200000000000000), rs2:x11(0xffffffffffffff7f)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0x9fc1b0eea50cc253, 0x200000000000000, 0xffffffffffffff7f, x1, 16, x2)

inst_68:
    // Test 68:  Test with marching zeros/ones
    // result rd:x7(0x9fc1b0ee84040def), rs1:x25(0x0400000000000000), rs2:x10(0xffffffffffffffbf)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0x9fc1b0ee84040def, 0x400000000000000, 0xffffffffffffffbf, x1, 24, x2)

inst_69:
    // Test 69:  Test with marching zeros/ones
    // result rd:x8(0x9fc1b0ee9f9a9c74), rs1:x24(0x0800000000000000), rs2:x9(0xffffffffffffffdf)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0x9fc1b0ee9f9a9c74, 0x800000000000000, 0xffffffffffffffdf, x1, 32, x2)

    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with marching zeros/ones
    // result rd:x9(0x9fc1b0ee61863cf5), rs1:x23(0x1000000000000000), rs2:x8(0xffffffffffffffef)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0x9fc1b0ee61863cf5, 0x1000000000000000, 0xffffffffffffffef, x1, 0, x2)

inst_71:
    // Test 71:  Test with marching zeros/ones
    // result rd:x10(0x9fc1b0eecaa5ef86), rs1:x22(0x2000000000000000), rs2:x7(0xfffffffffffffff7)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0x9fc1b0eecaa5ef86, 0x2000000000000000, 0xfffffffffffffff7, x1, 8, x2)

inst_72:
    // Test 72:  Test with marching zeros/ones
    // result rd:x11(0x9fc1b0ee35e47a8b), rs1:x21(0x4000000000000000), rs2:x6(0xfffffffffffffffb)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0x9fc1b0ee35e47a8b, 0x4000000000000000, 0xfffffffffffffffb, x1, 16, x2)

inst_73:
    // Test 73:  Test with marching zeros/ones
    // result rd:x12(0x9fc1b0eee84a7fb5), rs1:x20(0x8000000000000000), rs2:x5(0xfffffffffffffffd)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0x9fc1b0eee84a7fb5, 0x8000000000000000, 0xfffffffffffffffd, x1, 24, x2)

inst_74:
    // Test 74:  Test with marching zeros/ones
    // result rd:x13(0x9fc1b0eeee9fc1b0), rs1:x19(0x0000000000000000), rs2:x4(0xfffffffffffffffe)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0x9fc1b0eeee9fc1b0, 0x0, 0xfffffffffffffffe, x1, 32, x2)

    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with marching zeros/ones
    // result rd:x14(0xb0ee9fc1f7bb3a07), rs1:x18(0xfffffffffffffffe), rs2:x3(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0xb0ee9fc1f7bb3a07, 0xfffffffffffffffe, 0x0, x4, 0, x5)

inst_76:
    // Test 76:  Test with marching zeros/ones
    // result rd:x15(0xb0ee9fc1f351649a), rs1:x17(0xfffffffffffffffd), rs2:x2(0x8000000000000000)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0xb0ee9fc1f351649a, 0xfffffffffffffffd, 0x8000000000000000, x4, 8, x5)

inst_77:
    // Test 77:  Test with marching zeros/ones
    // result rd:x16(0xb0ee9fc11326002b), rs1:x16(0xfffffffffffffffb), rs2:x1(0x4000000000000000)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0xb0ee9fc11326002b, 0xfffffffffffffffb, 0x4000000000000000, x4, 16, x5)

inst_78:
    // Test 78:  Test with marching zeros/ones
    // result rd:x17(0xb0ee9fc1c2725bb0), rs1:x15(0xfffffffffffffff7), rs2:x31(0x2000000000000000)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0xb0ee9fc1c2725bb0, 0xfffffffffffffff7, 0x2000000000000000, x4, 24, x5)

inst_79:
    // Test 79:  Test with marching zeros/ones
    // result rd:x18(0xb0ee9fc1053c1237), rs1:x14(0xffffffffffffffef), rs2:x30(0x1000000000000000)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0xb0ee9fc1053c1237, 0xffffffffffffffef, 0x1000000000000000, x4, 32, x5)

    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with marching zeros/ones
    // result rd:x19(0xb0ee9fc190a08022), rs1:x13(0xffffffffffffffdf), rs2:x29(0x0800000000000000)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0xb0ee9fc190a08022, 0xffffffffffffffdf, 0x800000000000000, x1, 0, x2)

inst_81:
    // Test 81:  Test with marching zeros/ones
    // result rd:x20(0xb0ee9fc1650f43a0), rs1:x12(0xffffffffffffffbf), rs2:x28(0x0400000000000000)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0xb0ee9fc1650f43a0, 0xffffffffffffffbf, 0x400000000000000, x1, 8, x2)

inst_82:
    // Test 82:  Test with marching zeros/ones
    // result rd:x21(0xb0ee9fc14b4e485b), rs1:x11(0xffffffffffffff7f), rs2:x27(0x0200000000000000)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0xb0ee9fc14b4e485b, 0xffffffffffffff7f, 0x200000000000000, x1, 16, x2)

inst_83:
    // Test 83:  Test with marching zeros/ones
    // result rd:x22(0xbb3a07f7c1b0ee9f), rs1:x10(0xfffffffffffffeff), rs2:x26(0x0100000000000000)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0xbb3a07f7c1b0ee9f, 0xfffffffffffffeff, 0x100000000000000, x1, 24, x2)

inst_84:
    // Test 84:  Test with marching zeros/ones
    // result rd:x23(0x54624f4dc1b0ee9f), rs1:x9(0xfffffffffffffdff), rs2:x25(0x0080000000000000)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0x54624f4dc1b0ee9f, 0xfffffffffffffdff, 0x80000000000000, x1, 32, x2)

    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with marching zeros/ones
    // result rd:x24(0x1ddb50a8c1b0ee9f), rs1:x8(0xfffffffffffffbff), rs2:x24(0x0040000000000000)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0x1ddb50a8c1b0ee9f, 0xfffffffffffffbff, 0x40000000000000, x1, 0, x2)

inst_86:
    // Test 86:  Test with marching zeros/ones
    // result rd:x25(0x447f8aecc1b0ee9f), rs1:x7(0xfffffffffffff7ff), rs2:x23(0x0020000000000000)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0x447f8aecc1b0ee9f, 0xfffffffffffff7ff, 0x20000000000000, x1, 8, x2)

inst_87:
    // Test 87:  Test with marching zeros/ones
    // result rd:x26(0x799d2ef8c1b0ee9f), rs1:x6(0xffffffffffffefff), rs2:x22(0x0010000000000000)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0x799d2ef8c1b0ee9f, 0xffffffffffffefff, 0x10000000000000, x1, 16, x2)

inst_88:
    // Test 88:  Test with marching zeros/ones
    // result rd:x27(0x64f127cdc1b0ee9f), rs1:x5(0xffffffffffffdfff), rs2:x21(0x0008000000000000)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0x64f127cdc1b0ee9f, 0xffffffffffffdfff, 0x8000000000000, x1, 24, x2)

inst_89:
    // Test 89:  Test with marching zeros/ones
    // result rd:x28(0x50293ba9c1b0ee9f), rs1:x4(0xffffffffffffbfff), rs2:x20(0x0004000000000000)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0x50293ba9c1b0ee9f, 0xffffffffffffbfff, 0x4000000000000, x1, 32, x2)

    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with marching zeros/ones
    // result rd:x29(0xad03c848c1b0ee9f), rs1:x3(0xffffffffffff7fff), rs2:x19(0x0002000000000000)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0xad03c848c1b0ee9f, 0xffffffffffff7fff, 0x2000000000000, x4, 0, x5)

inst_91:
    // Test 91:  Test with marching zeros/ones
    // result rd:x30(0x05c19c03c1b0ee9f), rs1:x2(0xfffffffffffeffff), rs2:x18(0x0001000000000000)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0x05c19c03c1b0ee9f, 0xfffffffffffeffff, 0x1000000000000, x4, 8, x5)

inst_92:
    // Test 92:  Test with marching zeros/ones
    // result rd:x31(0xb0ee9fc17fb5e84a), rs1:x1(0xfffffffffffdffff), rs2:x17(0x0000800000000000)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0xb0ee9fc17fb5e84a, 0xfffffffffffdffff, 0x800000000000, x4, 16, x5)

inst_93:
    // Test 93:  Test with marching zeros/ones
    // result rd:x1(0xb0ee9fc17a8b35e4), rs1:x31(0xfffffffffffbffff), rs2:x16(0x0000400000000000)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0xb0ee9fc17a8b35e4, 0xfffffffffffbffff, 0x400000000000, x4, 24, x5)

inst_94:
    // Test 94:  Test with marching zeros/ones
    // result rd:x2(0xb0ee9fc1ef86caa5), rs1:x30(0xfffffffffff7ffff), rs2:x15(0x0000200000000000)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0xb0ee9fc1ef86caa5, 0xfffffffffff7ffff, 0x200000000000, x4, 32, x5)

    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with marching zeros/ones
    // result rd:x3(0xb0ee9fc13cf56186), rs1:x29(0xffffffffffefffff), rs2:x14(0x0000100000000000)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0xb0ee9fc13cf56186, 0xffffffffffefffff, 0x100000000000, x1, 0, x2)

inst_96:
    // Test 96:  Test with marching zeros/ones
    // result rd:x4(0xb0ee9fc19c749f9a), rs1:x28(0xffffffffffdfffff), rs2:x13(0x0000080000000000)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0xb0ee9fc19c749f9a, 0xffffffffffdfffff, 0x80000000000, x1, 8, x2)

inst_97:
    // Test 97:  Test with marching zeros/ones
    // result rd:x5(0xb0ee9fc10def8404), rs1:x27(0xffffffffffbfffff), rs2:x12(0x0000040000000000)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0xb0ee9fc10def8404, 0xffffffffffbfffff, 0x40000000000, x1, 16, x2)

inst_98:
    // Test 98:  Test with marching zeros/ones
    // result rd:x6(0xb0ee9fc1c253a50c), rs1:x26(0xffffffffff7fffff), rs2:x11(0x0000020000000000)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0xb0ee9fc1c253a50c, 0xffffffffff7fffff, 0x20000000000, x1, 24, x2)

inst_99:
    // Test 99:  Test with marching zeros/ones
    // result rd:x7(0xb0ee9fc10305c19c), rs1:x25(0xfffffffffeffffff), rs2:x10(0x0000010000000000)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0xb0ee9fc10305c19c, 0xfffffffffeffffff, 0x10000000000, x1, 32, x2)

    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with marching zeros/ones
    // result rd:x8(0xb0ee9fc1c1b0ee9f), rs1:x24(0xfffffffffdffffff), rs2:x9(0x0000008000000000)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0xb0ee9fc1c1b0ee9f, 0xfffffffffdffffff, 0x8000000000, x1, 0, x2)

inst_101:
    // Test 101:  Test with marching zeros/ones
    // result rd:x9(0xb0ee9fc1c1b0ee9f), rs1:x23(0xfffffffffbffffff), rs2:x8(0x0000004000000000)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0xb0ee9fc1c1b0ee9f, 0xfffffffffbffffff, 0x4000000000, x1, 8, x2)

inst_102:
    // Test 102:  Test with marching zeros/ones
    // result rd:x10(0xb0ee9fc1c1b0ee9f), rs1:x22(0xfffffffff7ffffff), rs2:x7(0x0000002000000000)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0xb0ee9fc1c1b0ee9f, 0xfffffffff7ffffff, 0x2000000000, x1, 16, x2)

inst_103:
    // Test 103:  Test with marching zeros/ones
    // result rd:x11(0xb0ee9fc1c1b0ee9f), rs1:x21(0xffffffffefffffff), rs2:x6(0x0000001000000000)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0xb0ee9fc1c1b0ee9f, 0xffffffffefffffff, 0x1000000000, x1, 24, x2)

inst_104:
    // Test 104:  Test with marching zeros/ones
    // result rd:x12(0xb0ee9fc1c1b0ee9f), rs1:x20(0xffffffffdfffffff), rs2:x5(0x0000000800000000)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0xb0ee9fc1c1b0ee9f, 0xffffffffdfffffff, 0x800000000, x1, 32, x2)

    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with marching zeros/ones
    // result rd:x13(0xb0ee9fc1c1b0ee9f), rs1:x19(0xffffffffbfffffff), rs2:x4(0x0000000400000000)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0xb0ee9fc1c1b0ee9f, 0xffffffffbfffffff, 0x400000000, x5, 0, x6)

inst_106:
    // Test 106:  Test with marching zeros/ones
    // result rd:x14(0xb0ee9fc1c1b0ee9f), rs1:x18(0xffffffff7fffffff), rs2:x3(0x0000000200000000)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0xb0ee9fc1c1b0ee9f, 0xffffffff7fffffff, 0x200000000, x5, 8, x6)

inst_107:
    // Test 107:  Test with marching zeros/ones
    // result rd:x15(0x86e54b59c1b0ee9f), rs1:x17(0xfffffffeffffffff), rs2:x2(0x0000000100000000)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0x86e54b59c1b0ee9f, 0xfffffffeffffffff, 0x100000000, x5, 16, x6)

inst_108:
    // Test 108:  Test with marching zeros/ones
    // result rd:x16(0x84daabc1c1b0ee9f), rs1:x16(0xfffffffdffffffff), rs2:x1(0x0000000080000000)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0x84daabc1c1b0ee9f, 0xfffffffdffffffff, 0x80000000, x5, 24, x6)

inst_109:
    // Test 109:  Test with marching zeros/ones
    // result rd:x17(0xb903ca4ec1b0ee9f), rs1:x15(0xfffffffbffffffff), rs2:x31(0x0000000040000000)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0xb903ca4ec1b0ee9f, 0xfffffffbffffffff, 0x40000000, x5, 32, x6)

    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with marching zeros/ones
    // result rd:x18(0x971604d8c1b0ee9f), rs1:x14(0xfffffff7ffffffff), rs2:x30(0x0000000020000000)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0x971604d8c1b0ee9f, 0xfffffff7ffffffff, 0x20000000, x1, 0, x2)

inst_111:
    // Test 111:  Test with marching zeros/ones
    // result rd:x19(0xfb7b9e2cc1b0ee9f), rs1:x13(0xffffffefffffffff), rs2:x29(0x0000000010000000)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0xfb7b9e2cc1b0ee9f, 0xffffffefffffffff, 0x10000000, x1, 8, x2)

inst_112:
    // Test 112:  Test with marching zeros/ones
    // result rd:x20(0x90fbacb8c1b0ee9f), rs1:x12(0xffffffdfffffffff), rs2:x28(0x0000000008000000)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0x90fbacb8c1b0ee9f, 0xffffffdfffffffff, 0x8000000, x1, 16, x2)

inst_113:
    // Test 113:  Test with marching zeros/ones
    // result rd:x21(0x7ecafea1c1b0ee9f), rs1:x11(0xffffffbfffffffff), rs2:x27(0x0000000004000000)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0x7ecafea1c1b0ee9f, 0xffffffbfffffffff, 0x4000000, x1, 24, x2)

inst_114:
    // Test 114:  Test with marching zeros/ones
    // result rd:x22(0x71833ae6c1b0ee9f), rs1:x10(0xffffff7fffffffff), rs2:x26(0x0000000002000000)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0x71833ae6c1b0ee9f, 0xffffff7fffffffff, 0x2000000, x1, 32, x2)

    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with marching zeros/ones
    // result rd:x23(0x9fed5d74c1b0ee9f), rs1:x9(0xfffffeffffffffff), rs2:x25(0x0000000001000000)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0x9fed5d74c1b0ee9f, 0xfffffeffffffffff, 0x1000000, x1, 0, x2)

inst_116:
    // Test 116:  Test with marching zeros/ones
    // result rd:x24(0xb0ee9fc1c4b63b21), rs1:x8(0xfffffdffffffffff), rs2:x24(0x0000000000800000)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0xb0ee9fc1c4b63b21, 0xfffffdffffffffff, 0x800000, x1, 8, x2)

inst_117:
    // Test 117:  Test with marching zeros/ones
    // result rd:x25(0xb0ee9fc1fa6b9524), rs1:x7(0xfffffbffffffffff), rs2:x23(0x0000000000400000)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0xb0ee9fc1fa6b9524, 0xfffffbffffffffff, 0x400000, x1, 16, x2)

inst_118:
    // Test 118:  Test with marching zeros/ones
    // result rd:x26(0xb0ee9fc1f794d4b1), rs1:x6(0xfffff7ffffffffff), rs2:x22(0x0000000000200000)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0xb0ee9fc1f794d4b1, 0xfffff7ffffffffff, 0x200000, x1, 24, x2)

inst_119:
    // Test 119:  Test with marching zeros/ones
    // result rd:x27(0xb0ee9fc1843ff762), rs1:x5(0xffffefffffffffff), rs2:x21(0x0000000000100000)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0xb0ee9fc1843ff762, 0xffffefffffffffff, 0x100000, x1, 32, x2)

    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with marching zeros/ones
    // result rd:x28(0xb0ee9fc105c1ebc2), rs1:x4(0xffffdfffffffffff), rs2:x20(0x0000000000080000)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0xb0ee9fc105c1ebc2, 0xffffdfffffffffff, 0x80000, x5, 0, x6)

inst_121:
    // Test 121:  Test with marching zeros/ones
    // result rd:x29(0xb0ee9fc19eda7553), rs1:x3(0xffffbfffffffffff), rs2:x19(0x0000000000040000)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0xb0ee9fc19eda7553, 0xffffbfffffffffff, 0x40000, x5, 8, x6)

inst_122:
    // Test 122:  Test with marching zeros/ones
    // result rd:x30(0xb0ee9fc122fb7d9c), rs1:x2(0xffff7fffffffffff), rs2:x18(0x0000000000020000)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0xb0ee9fc122fb7d9c, 0xffff7fffffffffff, 0x20000, x5, 16, x6)

inst_123:
    // Test 123:  Test with marching zeros/ones
    // result rd:x31(0xb0ee9fc1749fed5d), rs1:x1(0xfffeffffffffffff), rs2:x17(0x0000000000010000)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0xb0ee9fc1749fed5d, 0xfffeffffffffffff, 0x10000, x5, 24, x6)

inst_124:
    // Test 124:  Test with marching zeros/ones
    // result rd:x1(0xb0ee9fc1c1b0ee9f), rs1:x31(0xfffdffffffffffff), rs2:x16(0x0000000000008000)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0xb0ee9fc1c1b0ee9f, 0xfffdffffffffffff, 0x8000, x5, 32, x6)

    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with marching zeros/ones
    // result rd:x2(0xb0ee9fc1c1b0ee9f), rs1:x30(0xfffbffffffffffff), rs2:x15(0x0000000000004000)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0xb0ee9fc1c1b0ee9f, 0xfffbffffffffffff, 0x4000, x1, 0, x7)

inst_126:
    // Test 126:  Test with marching zeros/ones
    // result rd:x3(0xb0ee9fc1c1b0ee9f), rs1:x29(0xfff7ffffffffffff), rs2:x14(0x0000000000002000)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0xb0ee9fc1c1b0ee9f, 0xfff7ffffffffffff, 0x2000, x1, 8, x7)

inst_127:
    // Test 127:  Test with marching zeros/ones
    // result rd:x4(0xb0ee9fc1c1b0ee9f), rs1:x28(0xffefffffffffffff), rs2:x13(0x0000000000001000)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0xb0ee9fc1c1b0ee9f, 0xffefffffffffffff, 0x1000, x1, 16, x7)

inst_128:
    // Test 128:  Test with marching zeros/ones
    // result rd:x5(0xb0ee9fc1c1b0ee9f), rs1:x27(0xffdfffffffffffff), rs2:x12(0x0000000000000800)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0xb0ee9fc1c1b0ee9f, 0xffdfffffffffffff, 0x800, x1, 24, x7)

inst_129:
    // Test 129:  Test with marching zeros/ones
    // result rd:x6(0xb0ee9fc1c1b0ee9f), rs1:x26(0xffbfffffffffffff), rs2:x11(0x0000000000000400)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0xb0ee9fc1c1b0ee9f, 0xffbfffffffffffff, 0x400, x1, 32, x7)

    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with marching zeros/ones
    // result rd:x7(0xb0ee9fc1c1b0ee9f), rs1:x25(0xff7fffffffffffff), rs2:x10(0x0000000000000200)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0xb0ee9fc1c1b0ee9f, 0xff7fffffffffffff, 0x200, x1, 0, x2)

inst_131:
    // Test 131:  Test with marching zeros/ones
    // result rd:x8(0xb0ee9fc15986e54b), rs1:x24(0xfeffffffffffffff), rs2:x9(0x0000000000000100)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0xb0ee9fc15986e54b, 0xfeffffffffffffff, 0x100, x1, 8, x2)

inst_132:
    // Test 132:  Test with marching zeros/ones
    // result rd:x9(0xb0ee9fc1c4820f15), rs1:x23(0xfdffffffffffffff), rs2:x8(0x0000000000000080)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0xb0ee9fc1c4820f15, 0xfdffffffffffffff, 0x80, x1, 16, x2)

inst_133:
    // Test 133:  Test with marching zeros/ones
    // result rd:x10(0xb0ee9fc175627871), rs1:x22(0xfbffffffffffffff), rs2:x7(0x0000000000000040)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0xb0ee9fc175627871, 0xfbffffffffffffff, 0x40, x1, 24, x2)

inst_134:
    // Test 134:  Test with marching zeros/ones
    // result rd:x11(0xb0ee9fc1eeb32c2a), rs1:x21(0xf7ffffffffffffff), rs2:x6(0x0000000000000020)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0xb0ee9fc1eeb32c2a, 0xf7ffffffffffffff, 0x20, x1, 32, x2)

    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with marching zeros/ones
    // result rd:x12(0xb0ee9fc169746263), rs1:x20(0xefffffffffffffff), rs2:x5(0x0000000000000010)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0xb0ee9fc169746263, 0xefffffffffffffff, 0x10, x6, 0, x7)

inst_136:
    // Test 136:  Test with marching zeros/ones
    // result rd:x13(0xb0ee9fc17ce1fef1), rs1:x19(0xdfffffffffffffff), rs2:x4(0x0000000000000008)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0xb0ee9fc17ce1fef1, 0xdfffffffffffffff, 0x8, x6, 8, x7)

inst_137:
    // Test 137:  Test with marching zeros/ones
    // result rd:x14(0xb0ee9fc1fe145132), rs1:x18(0xbfffffffffffffff), rs2:x3(0x0000000000000004)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0xb0ee9fc1fe145132, 0xbfffffffffffffff, 0x4, x6, 16, x7)

inst_138:
    // Test 138:  Test with marching zeros/ones
    // result rd:x15(0xb0ee9fc1053a1039), rs1:x17(0x7fffffffffffffff), rs2:x2(0x0000000000000002)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0xb0ee9fc1053a1039, 0x7fffffffffffffff, 0x2, x6, 24, x7)

inst_139:
    // Test 139:  Test with marching zeros/ones
    // result rd:x16(0xb0ee9fc1c1b0ee9f), rs1:x16(0xffffffffffffffff), rs2:x1(0x0000000000000001)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0xb0ee9fc1c1b0ee9f, 0xffffffffffffffff, 0x1, x6, 32, x7)

    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with marching zeros/ones
    // result rd:x17(0x525252525190e77d), rs1:x15(0x0000000000000001), rs2:x31(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0x525252525190e77d, 0x1, 0x0, x1, 0, x2)

inst_141:
    // Test 141:  Test with marching zeros/ones
    // result rd:x18(0x52525252c151b119), rs1:x14(0x0000000000000002), rs2:x30(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0x52525252c151b119, 0x2, 0x0, x1, 8, x2)

inst_142:
    // Test 142:  Test with marching zeros/ones
    // result rd:x19(0x52525252c99e0d38), rs1:x13(0x0000000000000004), rs2:x29(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0x52525252c99e0d38, 0x4, 0x0, x1, 16, x2)

inst_143:
    // Test 143:  Test with marching zeros/ones
    // result rd:x20(0x52525252570f9623), rs1:x12(0x0000000000000008), rs2:x28(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0x52525252570f9623, 0x8, 0x0, x1, 24, x2)

inst_144:
    // Test 144:  Test with marching zeros/ones
    // result rd:x21(0x525252524baf17dd), rs1:x11(0x0000000000000010), rs2:x27(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0x525252524baf17dd, 0x10, 0x0, x1, 32, x2)

    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with marching zeros/ones
    // result rd:x22(0x52525252687c6476), rs1:x10(0x0000000000000020), rs2:x26(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0x52525252687c6476, 0x20, 0x0, x1, 0, x2)

inst_146:
    // Test 146:  Test with marching zeros/ones
    // result rd:x23(0x5252525229e96989), rs1:x9(0x0000000000000040), rs2:x25(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0x5252525229e96989, 0x40, 0x0, x1, 8, x2)

inst_147:
    // Test 147:  Test with marching zeros/ones
    // result rd:x24(0x5252525287ec5754), rs1:x8(0x0000000000000080), rs2:x24(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0x5252525287ec5754, 0x80, 0x0, x1, 16, x2)

inst_148:
    // Test 148:  Test with marching zeros/ones
    // result rd:x25(0x90e77d5152525252), rs1:x7(0x0000000000000100), rs2:x23(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0x90e77d5152525252, 0x100, 0x0, x1, 24, x2)

inst_149:
    // Test 149:  Test with marching zeros/ones
    // result rd:x26(0x51b119c152525252), rs1:x6(0x0000000000000200), rs2:x22(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0x51b119c152525252, 0x200, 0x0, x1, 32, x2)

    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with marching zeros/ones
    // result rd:x27(0x9e0d38c952525252), rs1:x5(0x0000000000000400), rs2:x21(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0x9e0d38c952525252, 0x400, 0x0, x6, 0, x7)

inst_151:
    // Test 151:  Test with marching zeros/ones
    // result rd:x28(0x0f96235752525252), rs1:x4(0x0000000000000800), rs2:x20(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0x0f96235752525252, 0x800, 0x0, x6, 8, x7)

inst_152:
    // Test 152:  Test with marching zeros/ones
    // result rd:x29(0xaf17dd4b52525252), rs1:x3(0x0000000000001000), rs2:x19(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0xaf17dd4b52525252, 0x1000, 0x0, x6, 16, x7)

inst_153:
    // Test 153:  Test with marching zeros/ones
    // result rd:x30(0x7c64766852525252), rs1:x2(0x0000000000002000), rs2:x18(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0x7c64766852525252, 0x2000, 0x0, x6, 24, x7)

inst_154:
    // Test 154:  Test with marching zeros/ones
    // result rd:x31(0xe969892952525252), rs1:x1(0x0000000000004000), rs2:x17(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0xe969892952525252, 0x4000, 0x0, x6, 32, x7)

    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with marching zeros/ones
    // result rd:x1(0xec57548752525252), rs1:x31(0x0000000000008000), rs2:x16(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0xec57548752525252, 0x8000, 0x0, x6, 0, x7)

inst_156:
    // Test 156:  Test with marching zeros/ones
    // result rd:x2(0x5252525252525252), rs1:x30(0x0000000000010000), rs2:x15(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x5252525252525252, 0x10000, 0x0, x6, 8, x7)

inst_157:
    // Test 157:  Test with marching zeros/ones
    // result rd:x3(0x5252525252525252), rs1:x29(0x0000000000020000), rs2:x14(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0x5252525252525252, 0x20000, 0x0, x6, 16, x7)

inst_158:
    // Test 158:  Test with marching zeros/ones
    // result rd:x4(0x5252525252525252), rs1:x28(0x0000000000040000), rs2:x13(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0x5252525252525252, 0x40000, 0x0, x6, 24, x7)

inst_159:
    // Test 159:  Test with marching zeros/ones
    // result rd:x5(0x5252525252525252), rs1:x27(0x0000000000080000), rs2:x12(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0x5252525252525252, 0x80000, 0x0, x6, 32, x7)

    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with marching zeros/ones
    // result rd:x6(0x5252525252525252), rs1:x26(0x0000000000100000), rs2:x11(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0x5252525252525252, 0x100000, 0x0, x1, 0, x2)

inst_161:
    // Test 161:  Test with marching zeros/ones
    // result rd:x7(0x5252525252525252), rs1:x25(0x0000000000200000), rs2:x10(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0x5252525252525252, 0x200000, 0x0, x1, 8, x2)

inst_162:
    // Test 162:  Test with marching zeros/ones
    // result rd:x8(0x5252525252525252), rs1:x24(0x0000000000400000), rs2:x9(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0x5252525252525252, 0x400000, 0x0, x1, 16, x2)

inst_163:
    // Test 163:  Test with marching zeros/ones
    // result rd:x9(0x5252525252525252), rs1:x23(0x0000000000800000), rs2:x8(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0x5252525252525252, 0x800000, 0x0, x1, 24, x2)

inst_164:
    // Test 164:  Test with marching zeros/ones
    // result rd:x10(0x5252525252525252), rs1:x22(0x0000000001000000), rs2:x7(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0x5252525252525252, 0x1000000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with marching zeros/ones
    // result rd:x11(0x5252525252525252), rs1:x21(0x0000000002000000), rs2:x6(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0x5252525252525252, 0x2000000, 0x0, x1, 0, x7)

inst_166:
    // Test 166:  Test with marching zeros/ones
    // result rd:x12(0x5252525252525252), rs1:x20(0x0000000004000000), rs2:x5(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0x5252525252525252, 0x4000000, 0x0, x1, 8, x7)

inst_167:
    // Test 167:  Test with marching zeros/ones
    // result rd:x13(0x5252525252525252), rs1:x19(0x0000000008000000), rs2:x4(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0x5252525252525252, 0x8000000, 0x0, x1, 16, x7)

inst_168:
    // Test 168:  Test with marching zeros/ones
    // result rd:x14(0x5252525252525252), rs1:x18(0x0000000010000000), rs2:x3(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0x5252525252525252, 0x10000000, 0x0, x1, 24, x7)

inst_169:
    // Test 169:  Test with marching zeros/ones
    // result rd:x15(0x5252525252525252), rs1:x17(0x0000000020000000), rs2:x2(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0x5252525252525252, 0x20000000, 0x0, x1, 32, x7)

    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with marching zeros/ones
    // result rd:x16(0x5252525252525252), rs1:x16(0x0000000040000000), rs2:x1(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0x5252525252525252, 0x40000000, 0x0, x2, 0, x3)

inst_171:
    // Test 171:  Test with marching zeros/ones
    // result rd:x17(0x5252525252525252), rs1:x15(0x0000000080000000), rs2:x31(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0x5252525252525252, 0x80000000, 0x0, x2, 8, x3)

inst_172:
    // Test 172:  Test with marching zeros/ones
    // result rd:x18(0x5190e77d52525252), rs1:x14(0x0000000100000000), rs2:x30(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0x5190e77d52525252, 0x100000000, 0x0, x2, 16, x3)

inst_173:
    // Test 173:  Test with marching zeros/ones
    // result rd:x19(0xc151b11952525252), rs1:x13(0x0000000200000000), rs2:x29(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0xc151b11952525252, 0x200000000, 0x0, x2, 24, x3)

inst_174:
    // Test 174:  Test with marching zeros/ones
    // result rd:x20(0xc99e0d3852525252), rs1:x12(0x0000000400000000), rs2:x28(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0xc99e0d3852525252, 0x400000000, 0x0, x2, 32, x3)

    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with marching zeros/ones
    // result rd:x21(0x570f962352525252), rs1:x11(0x0000000800000000), rs2:x27(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0x570f962352525252, 0x800000000, 0x0, x1, 0, x2)

inst_176:
    // Test 176:  Test with marching zeros/ones
    // result rd:x22(0x4baf17dd52525252), rs1:x10(0x0000001000000000), rs2:x26(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0x4baf17dd52525252, 0x1000000000, 0x0, x1, 8, x2)

inst_177:
    // Test 177:  Test with marching zeros/ones
    // result rd:x23(0x687c647652525252), rs1:x9(0x0000002000000000), rs2:x25(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0x687c647652525252, 0x2000000000, 0x0, x1, 16, x2)

inst_178:
    // Test 178:  Test with marching zeros/ones
    // result rd:x24(0x29e9698952525252), rs1:x8(0x0000004000000000), rs2:x24(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0x29e9698952525252, 0x4000000000, 0x0, x1, 24, x2)

inst_179:
    // Test 179:  Test with marching zeros/ones
    // result rd:x25(0x87ec575452525252), rs1:x7(0x0000008000000000), rs2:x23(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0x87ec575452525252, 0x8000000000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with marching zeros/ones
    // result rd:x26(0x5252525252525252), rs1:x6(0x0000010000000000), rs2:x22(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0x5252525252525252, 0x10000000000, 0x0, x1, 0, x7)

inst_181:
    // Test 181:  Test with marching zeros/ones
    // result rd:x27(0x5252525252525252), rs1:x5(0x0000020000000000), rs2:x21(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0x5252525252525252, 0x20000000000, 0x0, x1, 8, x7)

inst_182:
    // Test 182:  Test with marching zeros/ones
    // result rd:x28(0x5252525252525252), rs1:x4(0x0000040000000000), rs2:x20(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0x5252525252525252, 0x40000000000, 0x0, x1, 16, x7)

inst_183:
    // Test 183:  Test with marching zeros/ones
    // result rd:x29(0x5252525252525252), rs1:x3(0x0000080000000000), rs2:x19(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0x5252525252525252, 0x80000000000, 0x0, x1, 24, x7)

inst_184:
    // Test 184:  Test with marching zeros/ones
    // result rd:x30(0x5252525252525252), rs1:x2(0x0000100000000000), rs2:x18(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0x5252525252525252, 0x100000000000, 0x0, x1, 32, x7)

    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with marching zeros/ones
    // result rd:x31(0x5252525252525252), rs1:x1(0x0000200000000000), rs2:x17(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0x5252525252525252, 0x200000000000, 0x0, x5, 0, x6)

inst_186:
    // Test 186:  Test with marching zeros/ones
    // result rd:x1(0x5252525252525252), rs1:x31(0x0000400000000000), rs2:x16(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0x5252525252525252, 0x400000000000, 0x0, x5, 8, x6)

inst_187:
    // Test 187:  Test with marching zeros/ones
    // result rd:x2(0x5252525252525252), rs1:x30(0x0000800000000000), rs2:x15(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x5252525252525252, 0x800000000000, 0x0, x5, 16, x6)

inst_188:
    // Test 188:  Test with marching zeros/ones
    // result rd:x3(0x5252525252525252), rs1:x29(0x0001000000000000), rs2:x14(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0x5252525252525252, 0x1000000000000, 0x0, x5, 24, x6)

inst_189:
    // Test 189:  Test with marching zeros/ones
    // result rd:x4(0x5252525252525252), rs1:x28(0x0002000000000000), rs2:x13(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0x5252525252525252, 0x2000000000000, 0x0, x5, 32, x6)

    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with marching zeros/ones
    // result rd:x5(0x5252525252525252), rs1:x27(0x0004000000000000), rs2:x12(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0x5252525252525252, 0x4000000000000, 0x0, x1, 0, x2)

inst_191:
    // Test 191:  Test with marching zeros/ones
    // result rd:x6(0x5252525252525252), rs1:x26(0x0008000000000000), rs2:x11(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0x5252525252525252, 0x8000000000000, 0x0, x1, 8, x2)

inst_192:
    // Test 192:  Test with marching zeros/ones
    // result rd:x7(0x5252525252525252), rs1:x25(0x0010000000000000), rs2:x10(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0x5252525252525252, 0x10000000000000, 0x0, x1, 16, x2)

inst_193:
    // Test 193:  Test with marching zeros/ones
    // result rd:x8(0x5252525252525252), rs1:x24(0x0020000000000000), rs2:x9(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0x5252525252525252, 0x20000000000000, 0x0, x1, 24, x2)

inst_194:
    // Test 194:  Test with marching zeros/ones
    // result rd:x9(0x5252525252525252), rs1:x23(0x0040000000000000), rs2:x8(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0x5252525252525252, 0x40000000000000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with marching zeros/ones
    // result rd:x10(0x5252525252525252), rs1:x22(0x0080000000000000), rs2:x7(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0x5252525252525252, 0x80000000000000, 0x0, x1, 0, x2)

inst_196:
    // Test 196:  Test with marching zeros/ones
    // result rd:x11(0x525252527d5190e7), rs1:x21(0x0100000000000000), rs2:x6(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0x525252527d5190e7, 0x100000000000000, 0x0, x1, 8, x2)

inst_197:
    // Test 197:  Test with marching zeros/ones
    // result rd:x12(0x5252525219c151b1), rs1:x20(0x0200000000000000), rs2:x5(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0x5252525219c151b1, 0x200000000000000, 0x0, x1, 16, x2)

inst_198:
    // Test 198:  Test with marching zeros/ones
    // result rd:x13(0x5252525238c99e0d), rs1:x19(0x0400000000000000), rs2:x4(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0x5252525238c99e0d, 0x400000000000000, 0x0, x1, 24, x2)

inst_199:
    // Test 199:  Test with marching zeros/ones
    // result rd:x14(0x5252525223570f96), rs1:x18(0x0800000000000000), rs2:x3(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0x5252525223570f96, 0x800000000000000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with marching zeros/ones
    // result rd:x15(0x52525252dd4baf17), rs1:x17(0x1000000000000000), rs2:x2(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0x52525252dd4baf17, 0x1000000000000000, 0x0, x3, 0, x4)

inst_201:
    // Test 201:  Test with marching zeros/ones
    // result rd:x16(0x5252525276687c64), rs1:x16(0x2000000000000000), rs2:x1(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0x5252525276687c64, 0x2000000000000000, 0x0, x3, 8, x4)

inst_202:
    // Test 202:  Test with marching zeros/ones
    // result rd:x17(0x525252528929e969), rs1:x15(0x4000000000000000), rs2:x31(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0x525252528929e969, 0x4000000000000000, 0x0, x3, 16, x4)

inst_203:
    // Test 203:  Test with marching zeros/ones
    // result rd:x18(0x525252525487ec57), rs1:x14(0x8000000000000000), rs2:x30(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0x525252525487ec57, 0x8000000000000000, 0x0, x3, 24, x4)

inst_204:
    // Test 204:  Test with marching zeros/ones
    // result rd:x19(0x5252525252525252), rs1:x13(0x0000000000000000), rs2:x29(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0x5252525252525252, 0x0, 0x0, x3, 32, x4)

    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with marching zeros/ones
    // result rd:x20(0xb0ee9fc1f7bb3a07), rs1:x12(0xfffffffffffffffe), rs2:x28(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0xb0ee9fc1f7bb3a07, 0xfffffffffffffffe, 0x0, x1, 0, x2)

inst_206:
    // Test 206:  Test with marching zeros/ones
    // result rd:x21(0xb0ee9fc1f351649a), rs1:x11(0xfffffffffffffffd), rs2:x27(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0xb0ee9fc1f351649a, 0xfffffffffffffffd, 0x0, x1, 8, x2)

inst_207:
    // Test 207:  Test with marching zeros/ones
    // result rd:x22(0xb0ee9fc11326002b), rs1:x10(0xfffffffffffffffb), rs2:x26(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0xb0ee9fc11326002b, 0xfffffffffffffffb, 0x0, x1, 16, x2)

inst_208:
    // Test 208:  Test with marching zeros/ones
    // result rd:x23(0xb0ee9fc1c2725bb0), rs1:x9(0xfffffffffffffff7), rs2:x25(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0xb0ee9fc1c2725bb0, 0xfffffffffffffff7, 0x0, x1, 24, x2)

inst_209:
    // Test 209:  Test with marching zeros/ones
    // result rd:x24(0xb0ee9fc1053c1237), rs1:x8(0xffffffffffffffef), rs2:x24(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0xb0ee9fc1053c1237, 0xffffffffffffffef, 0x0, x1, 32, x2)

    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with marching zeros/ones
    // result rd:x25(0xb0ee9fc190a08022), rs1:x7(0xffffffffffffffdf), rs2:x23(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0xb0ee9fc190a08022, 0xffffffffffffffdf, 0x0, x1, 0, x2)

inst_211:
    // Test 211:  Test with marching zeros/ones
    // result rd:x26(0xb0ee9fc1650f43a0), rs1:x6(0xffffffffffffffbf), rs2:x22(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0xb0ee9fc1650f43a0, 0xffffffffffffffbf, 0x0, x1, 8, x2)

inst_212:
    // Test 212:  Test with marching zeros/ones
    // result rd:x27(0xb0ee9fc14b4e485b), rs1:x5(0xffffffffffffff7f), rs2:x21(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0xb0ee9fc14b4e485b, 0xffffffffffffff7f, 0x0, x1, 16, x2)

inst_213:
    // Test 213:  Test with marching zeros/ones
    // result rd:x28(0xbb3a07f7c1b0ee9f), rs1:x4(0xfffffffffffffeff), rs2:x20(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0xbb3a07f7c1b0ee9f, 0xfffffffffffffeff, 0x0, x1, 24, x2)

inst_214:
    // Test 214:  Test with marching zeros/ones
    // result rd:x29(0x51649af3c1b0ee9f), rs1:x3(0xfffffffffffffdff), rs2:x19(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0x51649af3c1b0ee9f, 0xfffffffffffffdff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with marching zeros/ones
    // result rd:x30(0x26002b13c1b0ee9f), rs1:x2(0xfffffffffffffbff), rs2:x18(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0x26002b13c1b0ee9f, 0xfffffffffffffbff, 0x0, x4, 0, x5)

inst_216:
    // Test 216:  Test with marching zeros/ones
    // result rd:x31(0x725bb0c2c1b0ee9f), rs1:x1(0xfffffffffffff7ff), rs2:x17(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0x725bb0c2c1b0ee9f, 0xfffffffffffff7ff, 0x0, x4, 8, x5)

inst_217:
    // Test 217:  Test with marching zeros/ones
    // result rd:x1(0x3c123705c1b0ee9f), rs1:x31(0xffffffffffffefff), rs2:x16(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0x3c123705c1b0ee9f, 0xffffffffffffefff, 0x0, x4, 16, x5)

inst_218:
    // Test 218:  Test with marching zeros/ones
    // result rd:x2(0xa0802290c1b0ee9f), rs1:x30(0xffffffffffffdfff), rs2:x15(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0xa0802290c1b0ee9f, 0xffffffffffffdfff, 0x0, x4, 24, x5)

inst_219:
    // Test 219:  Test with marching zeros/ones
    // result rd:x3(0x0f43a065c1b0ee9f), rs1:x29(0xffffffffffffbfff), rs2:x14(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0x0f43a065c1b0ee9f, 0xffffffffffffbfff, 0x0, x4, 32, x5)

    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with marching zeros/ones
    // result rd:x4(0x4e485b4bc1b0ee9f), rs1:x28(0xffffffffffff7fff), rs2:x13(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0x4e485b4bc1b0ee9f, 0xffffffffffff7fff, 0x0, x1, 0, x2)

inst_221:
    // Test 221:  Test with marching zeros/ones
    // result rd:x5(0xb0ee9fc1c1b0ee9f), rs1:x27(0xfffffffffffeffff), rs2:x12(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0xb0ee9fc1c1b0ee9f, 0xfffffffffffeffff, 0x0, x1, 8, x2)

inst_222:
    // Test 222:  Test with marching zeros/ones
    // result rd:x6(0xb0ee9fc1c1b0ee9f), rs1:x26(0xfffffffffffdffff), rs2:x11(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0xb0ee9fc1c1b0ee9f, 0xfffffffffffdffff, 0x0, x1, 16, x2)

inst_223:
    // Test 223:  Test with marching zeros/ones
    // result rd:x7(0xb0ee9fc1c1b0ee9f), rs1:x25(0xfffffffffffbffff), rs2:x10(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0xb0ee9fc1c1b0ee9f, 0xfffffffffffbffff, 0x0, x1, 24, x2)

inst_224:
    // Test 224:  Test with marching zeros/ones
    // result rd:x8(0xb0ee9fc1c1b0ee9f), rs1:x24(0xfffffffffff7ffff), rs2:x9(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0xb0ee9fc1c1b0ee9f, 0xfffffffffff7ffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with marching zeros/ones
    // result rd:x9(0xb0ee9fc1c1b0ee9f), rs1:x23(0xffffffffffefffff), rs2:x8(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0xb0ee9fc1c1b0ee9f, 0xffffffffffefffff, 0x0, x1, 0, x2)

inst_226:
    // Test 226:  Test with marching zeros/ones
    // result rd:x10(0xb0ee9fc1c1b0ee9f), rs1:x22(0xffffffffffdfffff), rs2:x7(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0xb0ee9fc1c1b0ee9f, 0xffffffffffdfffff, 0x0, x1, 8, x2)

inst_227:
    // Test 227:  Test with marching zeros/ones
    // result rd:x11(0xb0ee9fc1c1b0ee9f), rs1:x21(0xffffffffffbfffff), rs2:x6(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0xb0ee9fc1c1b0ee9f, 0xffffffffffbfffff, 0x0, x1, 16, x2)

inst_228:
    // Test 228:  Test with marching zeros/ones
    // result rd:x12(0xb0ee9fc1c1b0ee9f), rs1:x20(0xffffffffff7fffff), rs2:x5(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0xb0ee9fc1c1b0ee9f, 0xffffffffff7fffff, 0x0, x1, 24, x2)

inst_229:
    // Test 229:  Test with marching zeros/ones
    // result rd:x13(0xb0ee9fc1c1b0ee9f), rs1:x19(0xfffffffffeffffff), rs2:x4(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0xb0ee9fc1c1b0ee9f, 0xfffffffffeffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with marching zeros/ones
    // result rd:x14(0xb0ee9fc1c1b0ee9f), rs1:x18(0xfffffffffdffffff), rs2:x3(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0xb0ee9fc1c1b0ee9f, 0xfffffffffdffffff, 0x0, x4, 0, x5)

inst_231:
    // Test 231:  Test with marching zeros/ones
    // result rd:x15(0xb0ee9fc1c1b0ee9f), rs1:x17(0xfffffffffbffffff), rs2:x2(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0xb0ee9fc1c1b0ee9f, 0xfffffffffbffffff, 0x0, x4, 8, x5)

inst_232:
    // Test 232:  Test with marching zeros/ones
    // result rd:x16(0xb0ee9fc1c1b0ee9f), rs1:x16(0xfffffffff7ffffff), rs2:x1(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0xb0ee9fc1c1b0ee9f, 0xfffffffff7ffffff, 0x0, x4, 16, x5)

inst_233:
    // Test 233:  Test with marching zeros/ones
    // result rd:x17(0xb0ee9fc1c1b0ee9f), rs1:x15(0xffffffffefffffff), rs2:x31(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0xb0ee9fc1c1b0ee9f, 0xffffffffefffffff, 0x0, x4, 24, x5)

inst_234:
    // Test 234:  Test with marching zeros/ones
    // result rd:x18(0xb0ee9fc1c1b0ee9f), rs1:x14(0xffffffffdfffffff), rs2:x30(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0xb0ee9fc1c1b0ee9f, 0xffffffffdfffffff, 0x0, x4, 32, x5)

    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with marching zeros/ones
    // result rd:x19(0xb0ee9fc1c1b0ee9f), rs1:x13(0xffffffffbfffffff), rs2:x29(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0xb0ee9fc1c1b0ee9f, 0xffffffffbfffffff, 0x0, x1, 0, x2)

inst_236:
    // Test 236:  Test with marching zeros/ones
    // result rd:x20(0xb0ee9fc1c1b0ee9f), rs1:x12(0xffffffff7fffffff), rs2:x28(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0xb0ee9fc1c1b0ee9f, 0xffffffff7fffffff, 0x0, x1, 8, x2)

inst_237:
    // Test 237:  Test with marching zeros/ones
    // result rd:x21(0x86e54b59c1b0ee9f), rs1:x11(0xfffffffeffffffff), rs2:x27(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0x86e54b59c1b0ee9f, 0xfffffffeffffffff, 0x0, x1, 16, x2)

inst_238:
    // Test 238:  Test with marching zeros/ones
    // result rd:x22(0x820f15c4c1b0ee9f), rs1:x10(0xfffffffdffffffff), rs2:x26(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0x820f15c4c1b0ee9f, 0xfffffffdffffffff, 0x0, x1, 24, x2)

inst_239:
    // Test 239:  Test with marching zeros/ones
    // result rd:x23(0x62787175c1b0ee9f), rs1:x9(0xfffffffbffffffff), rs2:x25(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0x62787175c1b0ee9f, 0xfffffffbffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with marching zeros/ones
    // result rd:x24(0xb32c2aeec1b0ee9f), rs1:x8(0xfffffff7ffffffff), rs2:x24(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0xb32c2aeec1b0ee9f, 0xfffffff7ffffffff, 0x0, x1, 0, x2)

inst_241:
    // Test 241:  Test with marching zeros/ones
    // result rd:x25(0x74626369c1b0ee9f), rs1:x7(0xffffffefffffffff), rs2:x23(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0x74626369c1b0ee9f, 0xffffffefffffffff, 0x0, x1, 8, x2)

inst_242:
    // Test 242:  Test with marching zeros/ones
    // result rd:x26(0xe1fef17cc1b0ee9f), rs1:x6(0xffffffdfffffffff), rs2:x22(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0xe1fef17cc1b0ee9f, 0xffffffdfffffffff, 0x0, x1, 16, x2)

inst_243:
    // Test 243:  Test with marching zeros/ones
    // result rd:x27(0x145132fec1b0ee9f), rs1:x5(0xffffffbfffffffff), rs2:x21(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0x145132fec1b0ee9f, 0xffffffbfffffffff, 0x0, x1, 24, x2)

inst_244:
    // Test 244:  Test with marching zeros/ones
    // result rd:x28(0x3a103905c1b0ee9f), rs1:x4(0xffffff7fffffffff), rs2:x20(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0x3a103905c1b0ee9f, 0xffffff7fffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with marching zeros/ones
    // result rd:x29(0xb0ee9fc1c1b0ee9f), rs1:x3(0xfffffeffffffffff), rs2:x19(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0xb0ee9fc1c1b0ee9f, 0xfffffeffffffffff, 0x0, x4, 0, x5)

inst_246:
    // Test 246:  Test with marching zeros/ones
    // result rd:x30(0xb0ee9fc1c1b0ee9f), rs1:x2(0xfffffdffffffffff), rs2:x18(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0xb0ee9fc1c1b0ee9f, 0xfffffdffffffffff, 0x0, x4, 8, x5)

inst_247:
    // Test 247:  Test with marching zeros/ones
    // result rd:x31(0xb0ee9fc1c1b0ee9f), rs1:x1(0xfffffbffffffffff), rs2:x17(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0xb0ee9fc1c1b0ee9f, 0xfffffbffffffffff, 0x0, x4, 16, x5)

inst_248:
    // Test 248:  Test with marching zeros/ones
    // result rd:x1(0xb0ee9fc1c1b0ee9f), rs1:x31(0xfffff7ffffffffff), rs2:x16(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0xb0ee9fc1c1b0ee9f, 0xfffff7ffffffffff, 0x0, x4, 24, x5)

inst_249:
    // Test 249:  Test with marching zeros/ones
    // result rd:x2(0xb0ee9fc1c1b0ee9f), rs1:x30(0xffffefffffffffff), rs2:x15(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0xb0ee9fc1c1b0ee9f, 0xffffefffffffffff, 0x0, x4, 32, x5)

    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with marching zeros/ones
    // result rd:x3(0xb0ee9fc1c1b0ee9f), rs1:x29(0xffffdfffffffffff), rs2:x14(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0xb0ee9fc1c1b0ee9f, 0xffffdfffffffffff, 0x0, x1, 0, x2)

inst_251:
    // Test 251:  Test with marching zeros/ones
    // result rd:x4(0xb0ee9fc1c1b0ee9f), rs1:x28(0xffffbfffffffffff), rs2:x13(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0xb0ee9fc1c1b0ee9f, 0xffffbfffffffffff, 0x0, x1, 8, x2)

inst_252:
    // Test 252:  Test with marching zeros/ones
    // result rd:x5(0xb0ee9fc1c1b0ee9f), rs1:x27(0xffff7fffffffffff), rs2:x12(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0xb0ee9fc1c1b0ee9f, 0xffff7fffffffffff, 0x0, x1, 16, x2)

inst_253:
    // Test 253:  Test with marching zeros/ones
    // result rd:x6(0xb0ee9fc1c1b0ee9f), rs1:x26(0xfffeffffffffffff), rs2:x11(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0xb0ee9fc1c1b0ee9f, 0xfffeffffffffffff, 0x0, x1, 24, x2)

inst_254:
    // Test 254:  Test with marching zeros/ones
    // result rd:x7(0xb0ee9fc1c1b0ee9f), rs1:x25(0xfffdffffffffffff), rs2:x10(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0xb0ee9fc1c1b0ee9f, 0xfffdffffffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with marching zeros/ones
    // result rd:x8(0xb0ee9fc1c1b0ee9f), rs1:x24(0xfffbffffffffffff), rs2:x9(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0xb0ee9fc1c1b0ee9f, 0xfffbffffffffffff, 0x0, x1, 0, x2)

inst_256:
    // Test 256:  Test with marching zeros/ones
    // result rd:x9(0xb0ee9fc1c1b0ee9f), rs1:x23(0xfff7ffffffffffff), rs2:x8(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0xb0ee9fc1c1b0ee9f, 0xfff7ffffffffffff, 0x0, x1, 8, x2)

inst_257:
    // Test 257:  Test with marching zeros/ones
    // result rd:x10(0xb0ee9fc1c1b0ee9f), rs1:x22(0xffefffffffffffff), rs2:x7(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0xb0ee9fc1c1b0ee9f, 0xffefffffffffffff, 0x0, x1, 16, x2)

inst_258:
    // Test 258:  Test with marching zeros/ones
    // result rd:x11(0xb0ee9fc1c1b0ee9f), rs1:x21(0xffdfffffffffffff), rs2:x6(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0xb0ee9fc1c1b0ee9f, 0xffdfffffffffffff, 0x0, x1, 24, x2)

inst_259:
    // Test 259:  Test with marching zeros/ones
    // result rd:x12(0xb0ee9fc1c1b0ee9f), rs1:x20(0xffbfffffffffffff), rs2:x5(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0xb0ee9fc1c1b0ee9f, 0xffbfffffffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x5,signature_53_0)


inst_260:
    // Test 260:  Test with marching zeros/ones
    // result rd:x13(0xb0ee9fc1c1b0ee9f), rs1:x19(0xff7fffffffffffff), rs2:x4(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0xb0ee9fc1c1b0ee9f, 0xff7fffffffffffff, 0x0, x5, 0, x6)

inst_261:
    // Test 261:  Test with marching zeros/ones
    // result rd:x14(0xb0ee9fc15986e54b), rs1:x18(0xfeffffffffffffff), rs2:x3(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0xb0ee9fc15986e54b, 0xfeffffffffffffff, 0x0, x5, 8, x6)

inst_262:
    // Test 262:  Test with marching zeros/ones
    // result rd:x15(0xb0ee9fc1c4820f15), rs1:x17(0xfdffffffffffffff), rs2:x2(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0xb0ee9fc1c4820f15, 0xfdffffffffffffff, 0x0, x5, 16, x6)

inst_263:
    // Test 263:  Test with marching zeros/ones
    // result rd:x16(0xb0ee9fc175627871), rs1:x16(0xfbffffffffffffff), rs2:x1(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0xb0ee9fc175627871, 0xfbffffffffffffff, 0x0, x5, 24, x6)

inst_264:
    // Test 264:  Test with marching zeros/ones
    // result rd:x17(0xb0ee9fc1eeb32c2a), rs1:x15(0xf7ffffffffffffff), rs2:x31(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0xb0ee9fc1eeb32c2a, 0xf7ffffffffffffff, 0x0, x5, 32, x6)

    
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_54_0)


inst_265:
    // Test 265:  Test with marching zeros/ones
    // result rd:x18(0xb0ee9fc169746263), rs1:x14(0xefffffffffffffff), rs2:x30(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0xb0ee9fc169746263, 0xefffffffffffffff, 0x0, x1, 0, x2)

inst_266:
    // Test 266:  Test with marching zeros/ones
    // result rd:x19(0xb0ee9fc17ce1fef1), rs1:x13(0xdfffffffffffffff), rs2:x29(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0xb0ee9fc17ce1fef1, 0xdfffffffffffffff, 0x0, x1, 8, x2)

inst_267:
    // Test 267:  Test with marching zeros/ones
    // result rd:x20(0xb0ee9fc1fe145132), rs1:x12(0xbfffffffffffffff), rs2:x28(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0xb0ee9fc1fe145132, 0xbfffffffffffffff, 0x0, x1, 16, x2)

inst_268:
    // Test 268:  Test with marching zeros/ones
    // result rd:x21(0xb0ee9fc1053a1039), rs1:x11(0x7fffffffffffffff), rs2:x27(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0xb0ee9fc1053a1039, 0x7fffffffffffffff, 0x0, x1, 24, x2)

inst_269:
    // Test 269:  Test with marching zeros/ones
    // result rd:x22(0xb0ee9fc1c1b0ee9f), rs1:x10(0xffffffffffffffff), rs2:x26(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0xb0ee9fc1c1b0ee9f, 0xffffffffffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_55_0)


inst_270:
    // Test 270:  Test with rs1 == rs2
    // result rd:x23(0x0e7ced6cca1c96af), rs1:x25(0x10fd3dedadea5195), rs2:x25(0xdf7f3844121bcc23)
    TEST_RR_OP(aes64dsm, x23, x25, x25, 0x0e7ced6cca1c96af, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x1, 0, x2)

inst_271:
    // Test 271:  Test with rd == x0
    // result rd:x0(0x0000000000000000), rs1:x8(0xbd295ce2d2ffbec1), rs2:x24(0xf5adb41aa47d105b)
    TEST_RR_OP(aes64dsm, x0, x8, x24, 0x0000000000000000, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x1, 8, x2)

inst_272:
    // Test 272:  Test with rs2 == x0
    // result rd:x25(0xc97e46a8079984f6), rs1:x7(0xc9649f05a8e1a8bb), rs2:x0(0x82f6747f707af2c0)
    TEST_RR_OP(aes64dsm, x25, x7, x0, 0xc97e46a8079984f6, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x1, 16, x2)

inst_273:
    // Test 273:  Test with rs1 == x0
    // result rd:x26(0xb879a432c3b88855), rs1:x0(0x3541291848c99fcb), rs2:x22(0x73a92fd4e19bfbc3)
    TEST_RR_OP(aes64dsm, x26, x0, x22, 0xb879a432c3b88855, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x1, 24, x2)
	
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

