// RISC-V Architectural Validation Test AES64KS1I-01
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
// Description: Testing instruction 'aes64ks1i'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV64IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1

    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with random values
    // result rd:x1(0x55ca542f55ca542f), rs1:x31(0x10fd3dedadea5195), imm:0x3
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x55ca542f55ca542f, 0x10fd3dedadea5195, 0x3, x6, 0, x7)

inst_1:
    // Test 1:  Test with random values
    // result rd:x2(0x987aa548987aa548), rs1:x30(0xbd295ce2d2ffbec1), imm:0x1
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x987aa548987aa548, 0xbd295ce2d2ffbec1, 0x1, x6, 8, x7)

inst_2:
    // Test 2:  Test with random values
    // result rd:x3(0x6bdd43da6bdd43da), rs1:x29(0xc9649f05a8e1a8bb), imm:0x0
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x6bdd43da6bdd43da, 0xc9649f05a8e1a8bb, 0x0, x6, 16, x7)

inst_3:
    // Test 3:  Test with random values
    // result rd:x4(0xad9683adad9683ad), rs1:x28(0x3541291848c99fcb), imm:0x3
    TEST_IMM_OP(aes64ks1i, x4, x28, 0xad9683adad9683ad, 0x3541291848c99fcb, 0x3, x6, 24, x7)

inst_4:
    // Test 4:  Test with random values
    // result rd:x5(0x09ca3a8009ca3a80), rs1:x27(0x10a24740461d524f), imm:0x5
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x09ca3a8009ca3a80, 0x10a24740461d524f, 0x5, x6, 32, x7)

    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with random values
    // result rd:x6(0x20207f8b20207f8b), rs1:x26(0x546b0e54528a10af), imm:0x5
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x20207f8b20207f8b, 0x546b0e54528a10af, 0x5, x1, 0, x2)

inst_6:
    // Test 6:  Test with random values
    // result rd:x7(0x488fd317488fd317), rs1:x25(0x73a92fd4e19bfbc3), imm:0x1
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x488fd317488fd317, 0x73a92fd4e19bfbc3, 0x1, x1, 8, x2)

inst_7:
    // Test 7:  Test with random values
    // result rd:x8(0xd2134290d2134290), rs1:x24(0x82f6747f707af2c0), imm:0x1
    TEST_IMM_OP(aes64ks1i, x8, x24, 0xd2134290d2134290, 0x82f6747f707af2c0, 0x1, x1, 16, x2)

inst_8:
    // Test 8:  Test with random values
    // result rd:x9(0xa2e6958fa2e6958f), rs1:x23(0xf5adb41aa47d105b), imm:0x1
    TEST_IMM_OP(aes64ks1i, x9, x23, 0xa2e6958fa2e6958f, 0xf5adb41aa47d105b, 0x1, x1, 24, x2)

inst_9:
    // Test 9:  Test with random values
    // result rd:x10(0x1b9ed2271b9ed227), rs1:x22(0xdf7f3844121bcc23), imm:0x5
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x1b9ed2271b9ed227, 0xdf7f3844121bcc23, 0x5, x1, 32, x2)

    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with marching zeros/ones
    // result rd:x11(0x6363634363636343), rs1:x21(0x0000000000000001), imm:0x5
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x6363634363636343, 0x1, 0x5, x1, 0, x7)

inst_11:
    // Test 11:  Test with marching zeros/ones
    // result rd:x12(0x636363e3636363e3), rs1:x20(0x0000000000000002), imm:0x7
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x636363e3636363e3, 0x2, 0x7, x1, 8, x7)

inst_12:
    // Test 12:  Test with marching zeros/ones
    // result rd:x13(0x6363636163636361), rs1:x19(0x0000000000000004), imm:0x1
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x6363636163636361, 0x4, 0x1, x1, 16, x7)

inst_13:
    // Test 13:  Test with marching zeros/ones
    // result rd:x14(0x6363636b6363636b), rs1:x18(0x0000000000000008), imm:0x3
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x6363636b6363636b, 0x8, 0x3, x1, 24, x7)

inst_14:
    // Test 14:  Test with marching zeros/ones
    // result rd:x15(0x6363637363636373), rs1:x17(0x0000000000000010), imm:0x4
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x6363637363636373, 0x10, 0x4, x1, 32, x7)

    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with marching zeros/ones
    // result rd:x16(0x6363636263636362), rs1:x16(0x0000000000000020), imm:0x0
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x6363636263636362, 0x20, 0x0, x2, 0, x3)

inst_16:
    // Test 16:  Test with marching zeros/ones
    // result rd:x17(0x6363637863636378), rs1:x15(0x0000000000000040), imm:0x8
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x6363637863636378, 0x40, 0x8, x2, 8, x3)

inst_17:
    // Test 17:  Test with marching zeros/ones
    // result rd:x18(0x6363637363636373), rs1:x14(0x0000000000000080), imm:0x4
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x6363637363636373, 0x80, 0x4, x2, 16, x3)

inst_18:
    // Test 18:  Test with marching zeros/ones
    // result rd:x19(0x6363636763636367), rs1:x13(0x0000000000000100), imm:0x2
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x6363636763636367, 0x100, 0x2, x2, 24, x3)

inst_19:
    // Test 19:  Test with marching zeros/ones
    // result rd:x20(0x6363636163636361), rs1:x12(0x0000000000000200), imm:0x1
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x6363636163636361, 0x200, 0x1, x2, 32, x3)

    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with marching zeros/ones
    // result rd:x21(0x6363636b6363636b), rs1:x11(0x0000000000000400), imm:0x3
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x6363636b6363636b, 0x400, 0x3, x1, 0, x2)

inst_21:
    // Test 21:  Test with marching zeros/ones
    // result rd:x22(0x6363636163636361), rs1:x10(0x0000000000000800), imm:0x1
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x6363636163636361, 0x800, 0x1, x1, 8, x2)

inst_22:
    // Test 22:  Test with marching zeros/ones
    // result rd:x23(0x6363636263636362), rs1:x9(0x0000000000001000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x6363636263636362, 0x1000, 0x0, x1, 16, x2)

inst_23:
    // Test 23:  Test with marching zeros/ones
    // result rd:x24(0x6363636b6363636b), rs1:x8(0x0000000000002000), imm:0x3
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x6363636b6363636b, 0x2000, 0x3, x1, 24, x2)

inst_24:
    // Test 24:  Test with marching zeros/ones
    // result rd:x25(0x6363634363636343), rs1:x7(0x0000000000004000), imm:0x5
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x6363634363636343, 0x4000, 0x5, x1, 32, x2)

    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with marching zeros/ones
    // result rd:x26(0x6363634363636343), rs1:x6(0x0000000000008000), imm:0x5
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x6363634363636343, 0x8000, 0x5, x1, 0, x7)

inst_26:
    // Test 26:  Test with marching zeros/ones
    // result rd:x27(0x6363636163636361), rs1:x5(0x0000000000010000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x6363636163636361, 0x10000, 0x1, x1, 8, x7)

inst_27:
    // Test 27:  Test with marching zeros/ones
    // result rd:x28(0x6363636163636361), rs1:x4(0x0000000000020000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x6363636163636361, 0x20000, 0x1, x1, 16, x7)

inst_28:
    // Test 28:  Test with marching zeros/ones
    // result rd:x29(0x6363636163636361), rs1:x3(0x0000000000040000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x6363636163636361, 0x40000, 0x1, x1, 24, x7)

inst_29:
    // Test 29:  Test with marching zeros/ones
    // result rd:x30(0x6363634363636343), rs1:x2(0x0000000000080000), imm:0x5
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x6363634363636343, 0x80000, 0x5, x1, 32, x7)

    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with marching zeros/ones
    // result rd:x31(0x6363634363636343), rs1:x1(0x0000000000100000), imm:0x5
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x6363634363636343, 0x100000, 0x5, x5, 0, x6)

inst_31:
    // Test 31:  Test with marching zeros/ones
    // result rd:x1(0x636363e3636363e3), rs1:x31(0x0000000000200000), imm:0x7
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x636363e3636363e3, 0x200000, 0x7, x5, 8, x6)

inst_32:
    // Test 32:  Test with marching zeros/ones
    // result rd:x2(0x6363636163636361), rs1:x30(0x0000000000400000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x6363636163636361, 0x400000, 0x1, x5, 16, x6)

inst_33:
    // Test 33:  Test with marching zeros/ones
    // result rd:x3(0x6363636b6363636b), rs1:x29(0x0000000000800000), imm:0x3
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x6363636b6363636b, 0x800000, 0x3, x5, 24, x6)

inst_34:
    // Test 34:  Test with marching zeros/ones
    // result rd:x4(0x6363637363636373), rs1:x28(0x0000000001000000), imm:0x4
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x6363637363636373, 0x1000000, 0x4, x5, 32, x6)

    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with marching zeros/ones
    // result rd:x5(0x6363636263636362), rs1:x27(0x0000000002000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x6363636263636362, 0x2000000, 0x0, x1, 0, x2)

inst_36:
    // Test 36:  Test with marching zeros/ones
    // result rd:x6(0x6363637863636378), rs1:x26(0x0000000004000000), imm:0x8
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x6363637863636378, 0x4000000, 0x8, x1, 8, x2)

inst_37:
    // Test 37:  Test with marching zeros/ones
    // result rd:x7(0x6363637363636373), rs1:x25(0x0000000008000000), imm:0x4
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x6363637363636373, 0x8000000, 0x4, x1, 16, x2)

inst_38:
    // Test 38:  Test with marching zeros/ones
    // result rd:x8(0x6363636763636367), rs1:x24(0x0000000010000000), imm:0x2
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x6363636763636367, 0x10000000, 0x2, x1, 24, x2)

inst_39:
    // Test 39:  Test with marching zeros/ones
    // result rd:x9(0x6363636163636361), rs1:x23(0x0000000020000000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x6363636163636361, 0x20000000, 0x1, x1, 32, x2)

    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with marching zeros/ones
    // result rd:x10(0x6363636b6363636b), rs1:x22(0x0000000040000000), imm:0x3
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x6363636b6363636b, 0x40000000, 0x3, x1, 0, x2)

inst_41:
    // Test 41:  Test with marching zeros/ones
    // result rd:x11(0x6363636163636361), rs1:x21(0x0000000080000000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x6363636163636361, 0x80000000, 0x1, x1, 8, x2)

inst_42:
    // Test 42:  Test with marching zeros/ones
    // result rd:x12(0x7c6363627c636362), rs1:x20(0x0000000100000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x7c6363627c636362, 0x100000000, 0x0, x1, 16, x2)

inst_43:
    // Test 43:  Test with marching zeros/ones
    // result rd:x13(0x7763636b7763636b), rs1:x19(0x0000000200000000), imm:0x3
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x7763636b7763636b, 0x200000000, 0x3, x1, 24, x2)

inst_44:
    // Test 44:  Test with marching zeros/ones
    // result rd:x14(0xf2636343f2636343), rs1:x18(0x0000000400000000), imm:0x5
    TEST_IMM_OP(aes64ks1i, x14, x18, 0xf2636343f2636343, 0x400000000, 0x5, x1, 32, x2)

    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with marching zeros/ones
    // result rd:x15(0x3063634330636343), rs1:x17(0x0000000800000000), imm:0x5
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x3063634330636343, 0x800000000, 0x5, x3, 0, x4)

inst_46:
    // Test 46:  Test with marching zeros/ones
    // result rd:x16(0xca636361ca636361), rs1:x16(0x0000001000000000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x16, x16, 0xca636361ca636361, 0x1000000000, 0x1, x3, 8, x4)

inst_47:
    // Test 47:  Test with marching zeros/ones
    // result rd:x17(0xb7636361b7636361), rs1:x15(0x0000002000000000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x17, x15, 0xb7636361b7636361, 0x2000000000, 0x1, x3, 16, x4)

inst_48:
    // Test 48:  Test with marching zeros/ones
    // result rd:x18(0x0963636109636361), rs1:x14(0x0000004000000000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x0963636109636361, 0x4000000000, 0x1, x3, 24, x4)

inst_49:
    // Test 49:  Test with marching zeros/ones
    // result rd:x19(0xcd636343cd636343), rs1:x13(0x0000008000000000), imm:0x5
    TEST_IMM_OP(aes64ks1i, x19, x13, 0xcd636343cd636343, 0x8000000000, 0x5, x3, 32, x4)

    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with marching zeros/ones
    // result rd:x20(0x6363635c6363635c), rs1:x12(0x0000010000000000), imm:0x5
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x6363635c6363635c, 0x10000000000, 0x5, x1, 0, x2)

inst_51:
    // Test 51:  Test with marching zeros/ones
    // result rd:x21(0x636363f7636363f7), rs1:x11(0x0000020000000000), imm:0x7
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x636363f7636363f7, 0x20000000000, 0x7, x1, 8, x2)

inst_52:
    // Test 52:  Test with marching zeros/ones
    // result rd:x22(0x636363f0636363f0), rs1:x10(0x0000040000000000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x636363f0636363f0, 0x40000000000, 0x1, x1, 16, x2)

inst_53:
    // Test 53:  Test with marching zeros/ones
    // result rd:x23(0x6363633863636338), rs1:x9(0x0000080000000000), imm:0x3
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x6363633863636338, 0x80000000000, 0x3, x1, 24, x2)

inst_54:
    // Test 54:  Test with marching zeros/ones
    // result rd:x24(0x636363da636363da), rs1:x8(0x0000100000000000), imm:0x4
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x636363da636363da, 0x100000000000, 0x4, x1, 32, x2)

    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with marching zeros/ones
    // result rd:x25(0x636363b6636363b6), rs1:x7(0x0000200000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x636363b6636363b6, 0x200000000000, 0x0, x1, 0, x2)

inst_56:
    // Test 56:  Test with marching zeros/ones
    // result rd:x26(0x6363631263636312), rs1:x6(0x0000400000000000), imm:0x8
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x6363631263636312, 0x400000000000, 0x8, x1, 8, x2)

inst_57:
    // Test 57:  Test with marching zeros/ones
    // result rd:x27(0x636363dd636363dd), rs1:x5(0x0000800000000000), imm:0x4
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x636363dd636363dd, 0x800000000000, 0x4, x1, 16, x2)

inst_58:
    // Test 58:  Test with marching zeros/ones
    // result rd:x28(0x63637c6763637c67), rs1:x4(0x0001000000000000), imm:0x2
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x63637c6763637c67, 0x1000000000000, 0x2, x1, 24, x2)

inst_59:
    // Test 59:  Test with marching zeros/ones
    // result rd:x29(0x6363776163637761), rs1:x3(0x0002000000000000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x6363776163637761, 0x2000000000000, 0x1, x1, 32, x2)

    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with marching zeros/ones
    // result rd:x30(0x6363f26b6363f26b), rs1:x2(0x0004000000000000), imm:0x3
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x6363f26b6363f26b, 0x4000000000000, 0x3, x4, 0, x5)

inst_61:
    // Test 61:  Test with marching zeros/ones
    // result rd:x31(0x6363306163633061), rs1:x1(0x0008000000000000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x6363306163633061, 0x8000000000000, 0x1, x4, 8, x5)

inst_62:
    // Test 62:  Test with marching zeros/ones
    // result rd:x1(0x6363ca626363ca62), rs1:x31(0x0010000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x6363ca626363ca62, 0x10000000000000, 0x0, x4, 16, x5)

inst_63:
    // Test 63:  Test with marching zeros/ones
    // result rd:x2(0x6363b76b6363b76b), rs1:x30(0x0020000000000000), imm:0x3
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x6363b76b6363b76b, 0x20000000000000, 0x3, x4, 24, x5)

inst_64:
    // Test 64:  Test with marching zeros/ones
    // result rd:x3(0x6363094363630943), rs1:x29(0x0040000000000000), imm:0x5
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x6363094363630943, 0x40000000000000, 0x5, x4, 32, x5)

    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with marching zeros/ones
    // result rd:x4(0x6363cd436363cd43), rs1:x28(0x0080000000000000), imm:0x5
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x6363cd436363cd43, 0x80000000000000, 0x5, x1, 0, x2)

inst_66:
    // Test 66:  Test with marching zeros/ones
    // result rd:x5(0x637c6361637c6361), rs1:x27(0x0100000000000000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x637c6361637c6361, 0x100000000000000, 0x1, x1, 8, x2)

inst_67:
    // Test 67:  Test with marching zeros/ones
    // result rd:x6(0x6377636163776361), rs1:x26(0x0200000000000000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x6377636163776361, 0x200000000000000, 0x1, x1, 16, x2)

inst_68:
    // Test 68:  Test with marching zeros/ones
    // result rd:x7(0x63f2636163f26361), rs1:x25(0x0400000000000000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x63f2636163f26361, 0x400000000000000, 0x1, x1, 24, x2)

inst_69:
    // Test 69:  Test with marching zeros/ones
    // result rd:x8(0x6330634363306343), rs1:x24(0x0800000000000000), imm:0x5
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x6330634363306343, 0x800000000000000, 0x5, x1, 32, x2)

    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with marching zeros/ones
    // result rd:x9(0x63ca634363ca6343), rs1:x23(0x1000000000000000), imm:0x5
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x63ca634363ca6343, 0x1000000000000000, 0x5, x1, 0, x2)

inst_71:
    // Test 71:  Test with marching zeros/ones
    // result rd:x10(0x63b763e363b763e3), rs1:x22(0x2000000000000000), imm:0x7
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x63b763e363b763e3, 0x2000000000000000, 0x7, x1, 8, x2)

inst_72:
    // Test 72:  Test with marching zeros/ones
    // result rd:x11(0x6309636163096361), rs1:x21(0x4000000000000000), imm:0x1
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x6309636163096361, 0x4000000000000000, 0x1, x1, 16, x2)

inst_73:
    // Test 73:  Test with marching zeros/ones
    // result rd:x12(0x63cd636b63cd636b), rs1:x20(0x8000000000000000), imm:0x3
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x63cd636b63cd636b, 0x8000000000000000, 0x3, x1, 24, x2)

inst_74:
    // Test 74:  Test with marching zeros/ones
    // result rd:x13(0x6363637363636373), rs1:x19(0x0000000000000000), imm:0x4
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x6363637363636373, 0x0, 0x4, x1, 32, x2)

    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with marching zeros/ones
    // result rd:x14(0x1616161716161617), rs1:x18(0xfffffffffffffffe), imm:0x0
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x1616161716161617, 0xfffffffffffffffe, 0x0, x4, 0, x5)

inst_76:
    // Test 76:  Test with marching zeros/ones
    // result rd:x15(0x1616160d1616160d), rs1:x17(0xfffffffffffffffd), imm:0x8
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x1616160d1616160d, 0xfffffffffffffffd, 0x8, x4, 8, x5)

inst_77:
    // Test 77:  Test with marching zeros/ones
    // result rd:x16(0x1616160616161606), rs1:x16(0xfffffffffffffffb), imm:0x4
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x1616160616161606, 0xfffffffffffffffb, 0x4, x4, 16, x5)

inst_78:
    // Test 78:  Test with marching zeros/ones
    // result rd:x17(0x1616161216161612), rs1:x15(0xfffffffffffffff7), imm:0x2
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x1616161216161612, 0xfffffffffffffff7, 0x2, x4, 24, x5)

inst_79:
    // Test 79:  Test with marching zeros/ones
    // result rd:x18(0x1616161416161614), rs1:x14(0xffffffffffffffef), imm:0x1
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x1616161416161614, 0xffffffffffffffef, 0x1, x4, 32, x5)

    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with marching zeros/ones
    // result rd:x19(0x1616161e1616161e), rs1:x13(0xffffffffffffffdf), imm:0x3
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x1616161e1616161e, 0xffffffffffffffdf, 0x3, x1, 0, x2)

inst_81:
    // Test 81:  Test with marching zeros/ones
    // result rd:x20(0x1616161416161614), rs1:x12(0xffffffffffffffbf), imm:0x1
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x1616161416161614, 0xffffffffffffffbf, 0x1, x1, 8, x2)

inst_82:
    // Test 82:  Test with marching zeros/ones
    // result rd:x21(0x1616161716161617), rs1:x11(0xffffffffffffff7f), imm:0x0
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x1616161716161617, 0xffffffffffffff7f, 0x0, x1, 16, x2)

inst_83:
    // Test 83:  Test with marching zeros/ones
    // result rd:x22(0x1616161e1616161e), rs1:x10(0xfffffffffffffeff), imm:0x3
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x1616161e1616161e, 0xfffffffffffffeff, 0x3, x1, 24, x2)

inst_84:
    // Test 84:  Test with marching zeros/ones
    // result rd:x23(0x1616163616161636), rs1:x9(0xfffffffffffffdff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x1616163616161636, 0xfffffffffffffdff, 0x5, x1, 32, x2)

    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with marching zeros/ones
    // result rd:x24(0x1616163616161636), rs1:x8(0xfffffffffffffbff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x1616163616161636, 0xfffffffffffffbff, 0x5, x1, 0, x2)

inst_86:
    // Test 86:  Test with marching zeros/ones
    // result rd:x25(0x1616161416161614), rs1:x7(0xfffffffffffff7ff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x1616161416161614, 0xfffffffffffff7ff, 0x1, x1, 8, x2)

inst_87:
    // Test 87:  Test with marching zeros/ones
    // result rd:x26(0x1616161416161614), rs1:x6(0xffffffffffffefff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x1616161416161614, 0xffffffffffffefff, 0x1, x1, 16, x2)

inst_88:
    // Test 88:  Test with marching zeros/ones
    // result rd:x27(0x1616161416161614), rs1:x5(0xffffffffffffdfff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x1616161416161614, 0xffffffffffffdfff, 0x1, x1, 24, x2)

inst_89:
    // Test 89:  Test with marching zeros/ones
    // result rd:x28(0x1616163616161636), rs1:x4(0xffffffffffffbfff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x1616163616161636, 0xffffffffffffbfff, 0x5, x1, 32, x2)

    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with marching zeros/ones
    // result rd:x29(0x1616163616161636), rs1:x3(0xffffffffffff7fff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x1616163616161636, 0xffffffffffff7fff, 0x5, x4, 0, x5)

inst_91:
    // Test 91:  Test with marching zeros/ones
    // result rd:x30(0x1616169616161696), rs1:x2(0xfffffffffffeffff), imm:0x7
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x1616169616161696, 0xfffffffffffeffff, 0x7, x4, 8, x5)

inst_92:
    // Test 92:  Test with marching zeros/ones
    // result rd:x31(0x1616161416161614), rs1:x1(0xfffffffffffdffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x1616161416161614, 0xfffffffffffdffff, 0x1, x4, 16, x5)

inst_93:
    // Test 93:  Test with marching zeros/ones
    // result rd:x1(0x1616161e1616161e), rs1:x31(0xfffffffffffbffff), imm:0x3
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x1616161e1616161e, 0xfffffffffffbffff, 0x3, x4, 24, x5)

inst_94:
    // Test 94:  Test with marching zeros/ones
    // result rd:x2(0x1616160616161606), rs1:x30(0xfffffffffff7ffff), imm:0x4
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x1616160616161606, 0xfffffffffff7ffff, 0x4, x4, 32, x5)

    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with marching zeros/ones
    // result rd:x3(0x1616161716161617), rs1:x29(0xffffffffffefffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x1616161716161617, 0xffffffffffefffff, 0x0, x1, 0, x2)

inst_96:
    // Test 96:  Test with marching zeros/ones
    // result rd:x4(0x1616160d1616160d), rs1:x28(0xffffffffffdfffff), imm:0x8
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x1616160d1616160d, 0xffffffffffdfffff, 0x8, x1, 8, x2)

inst_97:
    // Test 97:  Test with marching zeros/ones
    // result rd:x5(0x1616160616161606), rs1:x27(0xffffffffffbfffff), imm:0x4
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x1616160616161606, 0xffffffffffbfffff, 0x4, x1, 16, x2)

inst_98:
    // Test 98:  Test with marching zeros/ones
    // result rd:x6(0x1616161216161612), rs1:x26(0xffffffffff7fffff), imm:0x2
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x1616161216161612, 0xffffffffff7fffff, 0x2, x1, 24, x2)

inst_99:
    // Test 99:  Test with marching zeros/ones
    // result rd:x7(0x1616161416161614), rs1:x25(0xfffffffffeffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x1616161416161614, 0xfffffffffeffffff, 0x1, x1, 32, x2)

    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with marching zeros/ones
    // result rd:x8(0x1616161e1616161e), rs1:x24(0xfffffffffdffffff), imm:0x3
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x1616161e1616161e, 0xfffffffffdffffff, 0x3, x1, 0, x2)

inst_101:
    // Test 101:  Test with marching zeros/ones
    // result rd:x9(0x1616161416161614), rs1:x23(0xfffffffffbffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x1616161416161614, 0xfffffffffbffffff, 0x1, x1, 8, x2)

inst_102:
    // Test 102:  Test with marching zeros/ones
    // result rd:x10(0x1616161716161617), rs1:x22(0xfffffffff7ffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x1616161716161617, 0xfffffffff7ffffff, 0x0, x1, 16, x2)

inst_103:
    // Test 103:  Test with marching zeros/ones
    // result rd:x11(0x1616161e1616161e), rs1:x21(0xffffffffefffffff), imm:0x3
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x1616161e1616161e, 0xffffffffefffffff, 0x3, x1, 24, x2)

inst_104:
    // Test 104:  Test with marching zeros/ones
    // result rd:x12(0x1616163616161636), rs1:x20(0xffffffffdfffffff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x1616163616161636, 0xffffffffdfffffff, 0x5, x1, 32, x2)

    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with marching zeros/ones
    // result rd:x13(0x1616163616161636), rs1:x19(0xffffffffbfffffff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x1616163616161636, 0xffffffffbfffffff, 0x5, x5, 0, x6)

inst_106:
    // Test 106:  Test with marching zeros/ones
    // result rd:x14(0x1616161416161614), rs1:x18(0xffffffff7fffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x1616161416161614, 0xffffffff7fffffff, 0x1, x5, 8, x6)

inst_107:
    // Test 107:  Test with marching zeros/ones
    // result rd:x15(0xbb161614bb161614), rs1:x17(0xfffffffeffffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x15, x17, 0xbb161614bb161614, 0xfffffffeffffffff, 0x1, x5, 16, x6)

inst_108:
    // Test 108:  Test with marching zeros/ones
    // result rd:x16(0x5416161454161614), rs1:x16(0xfffffffdffffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x5416161454161614, 0xfffffffdffffffff, 0x1, x5, 24, x6)

inst_109:
    // Test 109:  Test with marching zeros/ones
    // result rd:x17(0x0f1616360f161636), rs1:x15(0xfffffffbffffffff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x0f1616360f161636, 0xfffffffbffffffff, 0x5, x5, 32, x6)

    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with marching zeros/ones
    // result rd:x18(0x6816163668161636), rs1:x14(0xfffffff7ffffffff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x6816163668161636, 0xfffffff7ffffffff, 0x5, x1, 0, x2)

inst_111:
    // Test 111:  Test with marching zeros/ones
    // result rd:x19(0xdf161696df161696), rs1:x13(0xffffffefffffffff), imm:0x7
    TEST_IMM_OP(aes64ks1i, x19, x13, 0xdf161696df161696, 0xffffffefffffffff, 0x7, x1, 8, x2)

inst_112:
    // Test 112:  Test with marching zeros/ones
    // result rd:x20(0x9e1616149e161614), rs1:x12(0xffffffdfffffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x9e1616149e161614, 0xffffffdfffffffff, 0x1, x1, 16, x2)

inst_113:
    // Test 113:  Test with marching zeros/ones
    // result rd:x21(0x0816161e0816161e), rs1:x11(0xffffffbfffffffff), imm:0x3
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x0816161e0816161e, 0xffffffbfffffffff, 0x3, x1, 24, x2)

inst_114:
    // Test 114:  Test with marching zeros/ones
    // result rd:x22(0xd2161606d2161606), rs1:x10(0xffffff7fffffffff), imm:0x4
    TEST_IMM_OP(aes64ks1i, x22, x10, 0xd2161606d2161606, 0xffffff7fffffffff, 0x4, x1, 32, x2)

    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with marching zeros/ones
    // result rd:x23(0x161616ba161616ba), rs1:x9(0xfffffeffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x161616ba161616ba, 0xfffffeffffffffff, 0x0, x1, 0, x2)

inst_116:
    // Test 116:  Test with marching zeros/ones
    // result rd:x24(0x1616164f1616164f), rs1:x8(0xfffffdffffffffff), imm:0x8
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x1616164f1616164f, 0xfffffdffffffffff, 0x8, x1, 8, x2)

inst_117:
    // Test 117:  Test with marching zeros/ones
    // result rd:x25(0x1616161f1616161f), rs1:x7(0xfffffbffffffffff), imm:0x4
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x1616161f1616161f, 0xfffffbffffffffff, 0x4, x1, 16, x2)

inst_118:
    // Test 118:  Test with marching zeros/ones
    // result rd:x26(0x1616166c1616166c), rs1:x6(0xfffff7ffffffffff), imm:0x2
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x1616166c1616166c, 0xfffff7ffffffffff, 0x2, x1, 24, x2)

inst_119:
    // Test 119:  Test with marching zeros/ones
    // result rd:x27(0x161616dd161616dd), rs1:x5(0xffffefffffffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x161616dd161616dd, 0xffffefffffffffff, 0x1, x1, 32, x2)

    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with marching zeros/ones
    // result rd:x28(0x1616169616161696), rs1:x4(0xffffdfffffffffff), imm:0x3
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x1616169616161696, 0xffffdfffffffffff, 0x3, x5, 0, x6)

inst_121:
    // Test 121:  Test with marching zeros/ones
    // result rd:x29(0x1616160a1616160a), rs1:x3(0xffffbfffffffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x1616160a1616160a, 0xffffbfffffffffff, 0x1, x5, 8, x6)

inst_122:
    // Test 122:  Test with marching zeros/ones
    // result rd:x30(0x161616d3161616d3), rs1:x2(0xffff7fffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x161616d3161616d3, 0xffff7fffffffffff, 0x0, x5, 16, x6)

inst_123:
    // Test 123:  Test with marching zeros/ones
    // result rd:x31(0x1616bb1e1616bb1e), rs1:x1(0xfffeffffffffffff), imm:0x3
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x1616bb1e1616bb1e, 0xfffeffffffffffff, 0x3, x5, 24, x6)

inst_124:
    // Test 124:  Test with marching zeros/ones
    // result rd:x1(0x1616543616165436), rs1:x31(0xfffdffffffffffff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x1616543616165436, 0xfffdffffffffffff, 0x5, x5, 32, x6)

    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with marching zeros/ones
    // result rd:x2(0x16160f3616160f36), rs1:x30(0xfffbffffffffffff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x16160f3616160f36, 0xfffbffffffffffff, 0x5, x1, 0, x7)

inst_126:
    // Test 126:  Test with marching zeros/ones
    // result rd:x3(0x1616681416166814), rs1:x29(0xfff7ffffffffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x1616681416166814, 0xfff7ffffffffffff, 0x1, x1, 8, x7)

inst_127:
    // Test 127:  Test with marching zeros/ones
    // result rd:x4(0x1616df141616df14), rs1:x28(0xffefffffffffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x1616df141616df14, 0xffefffffffffffff, 0x1, x1, 16, x7)

inst_128:
    // Test 128:  Test with marching zeros/ones
    // result rd:x5(0x16169e1416169e14), rs1:x27(0xffdfffffffffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x16169e1416169e14, 0xffdfffffffffffff, 0x1, x1, 24, x7)

inst_129:
    // Test 129:  Test with marching zeros/ones
    // result rd:x6(0x1616083616160836), rs1:x26(0xffbfffffffffffff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x1616083616160836, 0xffbfffffffffffff, 0x5, x1, 32, x7)

    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with marching zeros/ones
    // result rd:x7(0x1616d2171616d217), rs1:x25(0xff7fffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x1616d2171616d217, 0xff7fffffffffffff, 0x0, x1, 0, x2)

inst_131:
    // Test 131:  Test with marching zeros/ones
    // result rd:x8(0x16bb161716bb1617), rs1:x24(0xfeffffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x16bb161716bb1617, 0xfeffffffffffffff, 0x0, x1, 8, x2)

inst_132:
    // Test 132:  Test with marching zeros/ones
    // result rd:x9(0x1654161716541617), rs1:x23(0xfdffffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x1654161716541617, 0xfdffffffffffffff, 0x0, x1, 16, x2)

inst_133:
    // Test 133:  Test with marching zeros/ones
    // result rd:x10(0x160f1617160f1617), rs1:x22(0xfbffffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x160f1617160f1617, 0xfbffffffffffffff, 0x0, x1, 24, x2)

inst_134:
    // Test 134:  Test with marching zeros/ones
    // result rd:x11(0x1668161716681617), rs1:x21(0xf7ffffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x1668161716681617, 0xf7ffffffffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with marching zeros/ones
    // result rd:x12(0x16df161716df1617), rs1:x20(0xefffffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x16df161716df1617, 0xefffffffffffffff, 0x0, x6, 0, x7)

inst_136:
    // Test 136:  Test with marching zeros/ones
    // result rd:x13(0x169e1617169e1617), rs1:x19(0xdfffffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x169e1617169e1617, 0xdfffffffffffffff, 0x0, x6, 8, x7)

inst_137:
    // Test 137:  Test with marching zeros/ones
    // result rd:x14(0x1608161716081617), rs1:x18(0xbfffffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x1608161716081617, 0xbfffffffffffffff, 0x0, x6, 16, x7)

inst_138:
    // Test 138:  Test with marching zeros/ones
    // result rd:x15(0x16d2161716d21617), rs1:x17(0x7fffffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x16d2161716d21617, 0x7fffffffffffffff, 0x0, x6, 24, x7)

inst_139:
    // Test 139:  Test with marching zeros/ones
    // result rd:x16(0x1616161716161617), rs1:x16(0xffffffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x1616161716161617, 0xffffffffffffffff, 0x0, x6, 32, x7)

    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with marching zeros/ones
    // result rd:x17(0x6363636263636362), rs1:x15(0x0000000000000001), imm:0x0
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x6363636263636362, 0x1, 0x0, x1, 0, x2)

inst_141:
    // Test 141:  Test with marching zeros/ones
    // result rd:x18(0x6363636263636362), rs1:x14(0x0000000000000002), imm:0x0
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x6363636263636362, 0x2, 0x0, x1, 8, x2)

inst_142:
    // Test 142:  Test with marching zeros/ones
    // result rd:x19(0x6363636263636362), rs1:x13(0x0000000000000004), imm:0x0
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x6363636263636362, 0x4, 0x0, x1, 16, x2)

inst_143:
    // Test 143:  Test with marching zeros/ones
    // result rd:x20(0x6363636263636362), rs1:x12(0x0000000000000008), imm:0x0
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x6363636263636362, 0x8, 0x0, x1, 24, x2)

inst_144:
    // Test 144:  Test with marching zeros/ones
    // result rd:x21(0x6363636263636362), rs1:x11(0x0000000000000010), imm:0x0
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x6363636263636362, 0x10, 0x0, x1, 32, x2)

    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with marching zeros/ones
    // result rd:x22(0x6363636263636362), rs1:x10(0x0000000000000020), imm:0x0
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x6363636263636362, 0x20, 0x0, x1, 0, x2)

inst_146:
    // Test 146:  Test with marching zeros/ones
    // result rd:x23(0x6363636263636362), rs1:x9(0x0000000000000040), imm:0x0
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x6363636263636362, 0x40, 0x0, x1, 8, x2)

inst_147:
    // Test 147:  Test with marching zeros/ones
    // result rd:x24(0x6363636263636362), rs1:x8(0x0000000000000080), imm:0x0
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x6363636263636362, 0x80, 0x0, x1, 16, x2)

inst_148:
    // Test 148:  Test with marching zeros/ones
    // result rd:x25(0x6363636263636362), rs1:x7(0x0000000000000100), imm:0x0
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x6363636263636362, 0x100, 0x0, x1, 24, x2)

inst_149:
    // Test 149:  Test with marching zeros/ones
    // result rd:x26(0x6363636263636362), rs1:x6(0x0000000000000200), imm:0x0
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x6363636263636362, 0x200, 0x0, x1, 32, x2)

    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with marching zeros/ones
    // result rd:x27(0x6363636263636362), rs1:x5(0x0000000000000400), imm:0x0
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x6363636263636362, 0x400, 0x0, x6, 0, x7)

inst_151:
    // Test 151:  Test with marching zeros/ones
    // result rd:x28(0x6363636263636362), rs1:x4(0x0000000000000800), imm:0x0
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x6363636263636362, 0x800, 0x0, x6, 8, x7)

inst_152:
    // Test 152:  Test with marching zeros/ones
    // result rd:x29(0x6363636263636362), rs1:x3(0x0000000000001000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x6363636263636362, 0x1000, 0x0, x6, 16, x7)

inst_153:
    // Test 153:  Test with marching zeros/ones
    // result rd:x30(0x6363636263636362), rs1:x2(0x0000000000002000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x6363636263636362, 0x2000, 0x0, x6, 24, x7)

inst_154:
    // Test 154:  Test with marching zeros/ones
    // result rd:x31(0x6363636263636362), rs1:x1(0x0000000000004000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x6363636263636362, 0x4000, 0x0, x6, 32, x7)

    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with marching zeros/ones
    // result rd:x1(0x6363636263636362), rs1:x31(0x0000000000008000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x6363636263636362, 0x8000, 0x0, x6, 0, x7)

inst_156:
    // Test 156:  Test with marching zeros/ones
    // result rd:x2(0x6363636263636362), rs1:x30(0x0000000000010000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x6363636263636362, 0x10000, 0x0, x6, 8, x7)

inst_157:
    // Test 157:  Test with marching zeros/ones
    // result rd:x3(0x6363636263636362), rs1:x29(0x0000000000020000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x6363636263636362, 0x20000, 0x0, x6, 16, x7)

inst_158:
    // Test 158:  Test with marching zeros/ones
    // result rd:x4(0x6363636263636362), rs1:x28(0x0000000000040000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x6363636263636362, 0x40000, 0x0, x6, 24, x7)

inst_159:
    // Test 159:  Test with marching zeros/ones
    // result rd:x5(0x6363636263636362), rs1:x27(0x0000000000080000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x6363636263636362, 0x80000, 0x0, x6, 32, x7)

    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with marching zeros/ones
    // result rd:x6(0x6363636263636362), rs1:x26(0x0000000000100000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x6363636263636362, 0x100000, 0x0, x1, 0, x2)

inst_161:
    // Test 161:  Test with marching zeros/ones
    // result rd:x7(0x6363636263636362), rs1:x25(0x0000000000200000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x6363636263636362, 0x200000, 0x0, x1, 8, x2)

inst_162:
    // Test 162:  Test with marching zeros/ones
    // result rd:x8(0x6363636263636362), rs1:x24(0x0000000000400000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x6363636263636362, 0x400000, 0x0, x1, 16, x2)

inst_163:
    // Test 163:  Test with marching zeros/ones
    // result rd:x9(0x6363636263636362), rs1:x23(0x0000000000800000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x6363636263636362, 0x800000, 0x0, x1, 24, x2)

inst_164:
    // Test 164:  Test with marching zeros/ones
    // result rd:x10(0x6363636263636362), rs1:x22(0x0000000001000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x6363636263636362, 0x1000000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with marching zeros/ones
    // result rd:x11(0x6363636263636362), rs1:x21(0x0000000002000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x6363636263636362, 0x2000000, 0x0, x1, 0, x7)

inst_166:
    // Test 166:  Test with marching zeros/ones
    // result rd:x12(0x6363636263636362), rs1:x20(0x0000000004000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x6363636263636362, 0x4000000, 0x0, x1, 8, x7)

inst_167:
    // Test 167:  Test with marching zeros/ones
    // result rd:x13(0x6363636263636362), rs1:x19(0x0000000008000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x6363636263636362, 0x8000000, 0x0, x1, 16, x7)

inst_168:
    // Test 168:  Test with marching zeros/ones
    // result rd:x14(0x6363636263636362), rs1:x18(0x0000000010000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x6363636263636362, 0x10000000, 0x0, x1, 24, x7)

inst_169:
    // Test 169:  Test with marching zeros/ones
    // result rd:x15(0x6363636263636362), rs1:x17(0x0000000020000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x6363636263636362, 0x20000000, 0x0, x1, 32, x7)

    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with marching zeros/ones
    // result rd:x16(0x6363636263636362), rs1:x16(0x0000000040000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x6363636263636362, 0x40000000, 0x0, x2, 0, x3)

inst_171:
    // Test 171:  Test with marching zeros/ones
    // result rd:x17(0x6363636263636362), rs1:x15(0x0000000080000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x6363636263636362, 0x80000000, 0x0, x2, 8, x3)

inst_172:
    // Test 172:  Test with marching zeros/ones
    // result rd:x18(0x7c6363627c636362), rs1:x14(0x0000000100000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x7c6363627c636362, 0x100000000, 0x0, x2, 16, x3)

inst_173:
    // Test 173:  Test with marching zeros/ones
    // result rd:x19(0x7763636277636362), rs1:x13(0x0000000200000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x7763636277636362, 0x200000000, 0x0, x2, 24, x3)

inst_174:
    // Test 174:  Test with marching zeros/ones
    // result rd:x20(0xf2636362f2636362), rs1:x12(0x0000000400000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x20, x12, 0xf2636362f2636362, 0x400000000, 0x0, x2, 32, x3)

    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with marching zeros/ones
    // result rd:x21(0x3063636230636362), rs1:x11(0x0000000800000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x3063636230636362, 0x800000000, 0x0, x1, 0, x2)

inst_176:
    // Test 176:  Test with marching zeros/ones
    // result rd:x22(0xca636362ca636362), rs1:x10(0x0000001000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x22, x10, 0xca636362ca636362, 0x1000000000, 0x0, x1, 8, x2)

inst_177:
    // Test 177:  Test with marching zeros/ones
    // result rd:x23(0xb7636362b7636362), rs1:x9(0x0000002000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x23, x9, 0xb7636362b7636362, 0x2000000000, 0x0, x1, 16, x2)

inst_178:
    // Test 178:  Test with marching zeros/ones
    // result rd:x24(0x0963636209636362), rs1:x8(0x0000004000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x0963636209636362, 0x4000000000, 0x0, x1, 24, x2)

inst_179:
    // Test 179:  Test with marching zeros/ones
    // result rd:x25(0xcd636362cd636362), rs1:x7(0x0000008000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x25, x7, 0xcd636362cd636362, 0x8000000000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with marching zeros/ones
    // result rd:x26(0x6363637d6363637d), rs1:x6(0x0000010000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x6363637d6363637d, 0x10000000000, 0x0, x1, 0, x7)

inst_181:
    // Test 181:  Test with marching zeros/ones
    // result rd:x27(0x6363637663636376), rs1:x5(0x0000020000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x6363637663636376, 0x20000000000, 0x0, x1, 8, x7)

inst_182:
    // Test 182:  Test with marching zeros/ones
    // result rd:x28(0x636363f3636363f3), rs1:x4(0x0000040000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x636363f3636363f3, 0x40000000000, 0x0, x1, 16, x7)

inst_183:
    // Test 183:  Test with marching zeros/ones
    // result rd:x29(0x6363633163636331), rs1:x3(0x0000080000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x6363633163636331, 0x80000000000, 0x0, x1, 24, x7)

inst_184:
    // Test 184:  Test with marching zeros/ones
    // result rd:x30(0x636363cb636363cb), rs1:x2(0x0000100000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x636363cb636363cb, 0x100000000000, 0x0, x1, 32, x7)

    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with marching zeros/ones
    // result rd:x31(0x636363b6636363b6), rs1:x1(0x0000200000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x636363b6636363b6, 0x200000000000, 0x0, x5, 0, x6)

inst_186:
    // Test 186:  Test with marching zeros/ones
    // result rd:x1(0x6363630863636308), rs1:x31(0x0000400000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x6363630863636308, 0x400000000000, 0x0, x5, 8, x6)

inst_187:
    // Test 187:  Test with marching zeros/ones
    // result rd:x2(0x636363cc636363cc), rs1:x30(0x0000800000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x636363cc636363cc, 0x800000000000, 0x0, x5, 16, x6)

inst_188:
    // Test 188:  Test with marching zeros/ones
    // result rd:x3(0x63637c6263637c62), rs1:x29(0x0001000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x63637c6263637c62, 0x1000000000000, 0x0, x5, 24, x6)

inst_189:
    // Test 189:  Test with marching zeros/ones
    // result rd:x4(0x6363776263637762), rs1:x28(0x0002000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x6363776263637762, 0x2000000000000, 0x0, x5, 32, x6)

    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with marching zeros/ones
    // result rd:x5(0x6363f2626363f262), rs1:x27(0x0004000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x6363f2626363f262, 0x4000000000000, 0x0, x1, 0, x2)

inst_191:
    // Test 191:  Test with marching zeros/ones
    // result rd:x6(0x6363306263633062), rs1:x26(0x0008000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x6363306263633062, 0x8000000000000, 0x0, x1, 8, x2)

inst_192:
    // Test 192:  Test with marching zeros/ones
    // result rd:x7(0x6363ca626363ca62), rs1:x25(0x0010000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x6363ca626363ca62, 0x10000000000000, 0x0, x1, 16, x2)

inst_193:
    // Test 193:  Test with marching zeros/ones
    // result rd:x8(0x6363b7626363b762), rs1:x24(0x0020000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x6363b7626363b762, 0x20000000000000, 0x0, x1, 24, x2)

inst_194:
    // Test 194:  Test with marching zeros/ones
    // result rd:x9(0x6363096263630962), rs1:x23(0x0040000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x6363096263630962, 0x40000000000000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with marching zeros/ones
    // result rd:x10(0x6363cd626363cd62), rs1:x22(0x0080000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x6363cd626363cd62, 0x80000000000000, 0x0, x1, 0, x2)

inst_196:
    // Test 196:  Test with marching zeros/ones
    // result rd:x11(0x637c6362637c6362), rs1:x21(0x0100000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x637c6362637c6362, 0x100000000000000, 0x0, x1, 8, x2)

inst_197:
    // Test 197:  Test with marching zeros/ones
    // result rd:x12(0x6377636263776362), rs1:x20(0x0200000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x6377636263776362, 0x200000000000000, 0x0, x1, 16, x2)

inst_198:
    // Test 198:  Test with marching zeros/ones
    // result rd:x13(0x63f2636263f26362), rs1:x19(0x0400000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x63f2636263f26362, 0x400000000000000, 0x0, x1, 24, x2)

inst_199:
    // Test 199:  Test with marching zeros/ones
    // result rd:x14(0x6330636263306362), rs1:x18(0x0800000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x6330636263306362, 0x800000000000000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with marching zeros/ones
    // result rd:x15(0x63ca636263ca6362), rs1:x17(0x1000000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x63ca636263ca6362, 0x1000000000000000, 0x0, x3, 0, x4)

inst_201:
    // Test 201:  Test with marching zeros/ones
    // result rd:x16(0x63b7636263b76362), rs1:x16(0x2000000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x63b7636263b76362, 0x2000000000000000, 0x0, x3, 8, x4)

inst_202:
    // Test 202:  Test with marching zeros/ones
    // result rd:x17(0x6309636263096362), rs1:x15(0x4000000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x6309636263096362, 0x4000000000000000, 0x0, x3, 16, x4)

inst_203:
    // Test 203:  Test with marching zeros/ones
    // result rd:x18(0x63cd636263cd6362), rs1:x14(0x8000000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x63cd636263cd6362, 0x8000000000000000, 0x0, x3, 24, x4)

inst_204:
    // Test 204:  Test with marching zeros/ones
    // result rd:x19(0x6363636263636362), rs1:x13(0x0000000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x6363636263636362, 0x0, 0x0, x3, 32, x4)

    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with marching zeros/ones
    // result rd:x20(0x1616161716161617), rs1:x12(0xfffffffffffffffe), imm:0x0
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x1616161716161617, 0xfffffffffffffffe, 0x0, x1, 0, x2)

inst_206:
    // Test 206:  Test with marching zeros/ones
    // result rd:x21(0x1616161716161617), rs1:x11(0xfffffffffffffffd), imm:0x0
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x1616161716161617, 0xfffffffffffffffd, 0x0, x1, 8, x2)

inst_207:
    // Test 207:  Test with marching zeros/ones
    // result rd:x22(0x1616161716161617), rs1:x10(0xfffffffffffffffb), imm:0x0
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x1616161716161617, 0xfffffffffffffffb, 0x0, x1, 16, x2)

inst_208:
    // Test 208:  Test with marching zeros/ones
    // result rd:x23(0x1616161716161617), rs1:x9(0xfffffffffffffff7), imm:0x0
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x1616161716161617, 0xfffffffffffffff7, 0x0, x1, 24, x2)

inst_209:
    // Test 209:  Test with marching zeros/ones
    // result rd:x24(0x1616161716161617), rs1:x8(0xffffffffffffffef), imm:0x0
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x1616161716161617, 0xffffffffffffffef, 0x0, x1, 32, x2)

    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with marching zeros/ones
    // result rd:x25(0x1616161716161617), rs1:x7(0xffffffffffffffdf), imm:0x0
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x1616161716161617, 0xffffffffffffffdf, 0x0, x1, 0, x2)

inst_211:
    // Test 211:  Test with marching zeros/ones
    // result rd:x26(0x1616161716161617), rs1:x6(0xffffffffffffffbf), imm:0x0
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x1616161716161617, 0xffffffffffffffbf, 0x0, x1, 8, x2)

inst_212:
    // Test 212:  Test with marching zeros/ones
    // result rd:x27(0x1616161716161617), rs1:x5(0xffffffffffffff7f), imm:0x0
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x1616161716161617, 0xffffffffffffff7f, 0x0, x1, 16, x2)

inst_213:
    // Test 213:  Test with marching zeros/ones
    // result rd:x28(0x1616161716161617), rs1:x4(0xfffffffffffffeff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x1616161716161617, 0xfffffffffffffeff, 0x0, x1, 24, x2)

inst_214:
    // Test 214:  Test with marching zeros/ones
    // result rd:x29(0x1616161716161617), rs1:x3(0xfffffffffffffdff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x1616161716161617, 0xfffffffffffffdff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with marching zeros/ones
    // result rd:x30(0x1616161716161617), rs1:x2(0xfffffffffffffbff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x1616161716161617, 0xfffffffffffffbff, 0x0, x4, 0, x5)

inst_216:
    // Test 216:  Test with marching zeros/ones
    // result rd:x31(0x1616161716161617), rs1:x1(0xfffffffffffff7ff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x1616161716161617, 0xfffffffffffff7ff, 0x0, x4, 8, x5)

inst_217:
    // Test 217:  Test with marching zeros/ones
    // result rd:x1(0x1616161716161617), rs1:x31(0xffffffffffffefff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x1616161716161617, 0xffffffffffffefff, 0x0, x4, 16, x5)

inst_218:
    // Test 218:  Test with marching zeros/ones
    // result rd:x2(0x1616161716161617), rs1:x30(0xffffffffffffdfff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x1616161716161617, 0xffffffffffffdfff, 0x0, x4, 24, x5)

inst_219:
    // Test 219:  Test with marching zeros/ones
    // result rd:x3(0x1616161716161617), rs1:x29(0xffffffffffffbfff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x1616161716161617, 0xffffffffffffbfff, 0x0, x4, 32, x5)

    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with marching zeros/ones
    // result rd:x4(0x1616161716161617), rs1:x28(0xffffffffffff7fff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x1616161716161617, 0xffffffffffff7fff, 0x0, x1, 0, x2)

inst_221:
    // Test 221:  Test with marching zeros/ones
    // result rd:x5(0x1616161716161617), rs1:x27(0xfffffffffffeffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x1616161716161617, 0xfffffffffffeffff, 0x0, x1, 8, x2)

inst_222:
    // Test 222:  Test with marching zeros/ones
    // result rd:x6(0x1616161716161617), rs1:x26(0xfffffffffffdffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x1616161716161617, 0xfffffffffffdffff, 0x0, x1, 16, x2)

inst_223:
    // Test 223:  Test with marching zeros/ones
    // result rd:x7(0x1616161716161617), rs1:x25(0xfffffffffffbffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x1616161716161617, 0xfffffffffffbffff, 0x0, x1, 24, x2)

inst_224:
    // Test 224:  Test with marching zeros/ones
    // result rd:x8(0x1616161716161617), rs1:x24(0xfffffffffff7ffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x1616161716161617, 0xfffffffffff7ffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with marching zeros/ones
    // result rd:x9(0x1616161716161617), rs1:x23(0xffffffffffefffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x1616161716161617, 0xffffffffffefffff, 0x0, x1, 0, x2)

inst_226:
    // Test 226:  Test with marching zeros/ones
    // result rd:x10(0x1616161716161617), rs1:x22(0xffffffffffdfffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x1616161716161617, 0xffffffffffdfffff, 0x0, x1, 8, x2)

inst_227:
    // Test 227:  Test with marching zeros/ones
    // result rd:x11(0x1616161716161617), rs1:x21(0xffffffffffbfffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x1616161716161617, 0xffffffffffbfffff, 0x0, x1, 16, x2)

inst_228:
    // Test 228:  Test with marching zeros/ones
    // result rd:x12(0x1616161716161617), rs1:x20(0xffffffffff7fffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x1616161716161617, 0xffffffffff7fffff, 0x0, x1, 24, x2)

inst_229:
    // Test 229:  Test with marching zeros/ones
    // result rd:x13(0x1616161716161617), rs1:x19(0xfffffffffeffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x1616161716161617, 0xfffffffffeffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with marching zeros/ones
    // result rd:x14(0x1616161716161617), rs1:x18(0xfffffffffdffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x1616161716161617, 0xfffffffffdffffff, 0x0, x4, 0, x5)

inst_231:
    // Test 231:  Test with marching zeros/ones
    // result rd:x15(0x1616161716161617), rs1:x17(0xfffffffffbffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x1616161716161617, 0xfffffffffbffffff, 0x0, x4, 8, x5)

inst_232:
    // Test 232:  Test with marching zeros/ones
    // result rd:x16(0x1616161716161617), rs1:x16(0xfffffffff7ffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x1616161716161617, 0xfffffffff7ffffff, 0x0, x4, 16, x5)

inst_233:
    // Test 233:  Test with marching zeros/ones
    // result rd:x17(0x1616161716161617), rs1:x15(0xffffffffefffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x1616161716161617, 0xffffffffefffffff, 0x0, x4, 24, x5)

inst_234:
    // Test 234:  Test with marching zeros/ones
    // result rd:x18(0x1616161716161617), rs1:x14(0xffffffffdfffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x1616161716161617, 0xffffffffdfffffff, 0x0, x4, 32, x5)

    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with marching zeros/ones
    // result rd:x19(0x1616161716161617), rs1:x13(0xffffffffbfffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x1616161716161617, 0xffffffffbfffffff, 0x0, x1, 0, x2)

inst_236:
    // Test 236:  Test with marching zeros/ones
    // result rd:x20(0x1616161716161617), rs1:x12(0xffffffff7fffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x1616161716161617, 0xffffffff7fffffff, 0x0, x1, 8, x2)

inst_237:
    // Test 237:  Test with marching zeros/ones
    // result rd:x21(0xbb161617bb161617), rs1:x11(0xfffffffeffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x21, x11, 0xbb161617bb161617, 0xfffffffeffffffff, 0x0, x1, 16, x2)

inst_238:
    // Test 238:  Test with marching zeros/ones
    // result rd:x22(0x5416161754161617), rs1:x10(0xfffffffdffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x5416161754161617, 0xfffffffdffffffff, 0x0, x1, 24, x2)

inst_239:
    // Test 239:  Test with marching zeros/ones
    // result rd:x23(0x0f1616170f161617), rs1:x9(0xfffffffbffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x0f1616170f161617, 0xfffffffbffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with marching zeros/ones
    // result rd:x24(0x6816161768161617), rs1:x8(0xfffffff7ffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x6816161768161617, 0xfffffff7ffffffff, 0x0, x1, 0, x2)

inst_241:
    // Test 241:  Test with marching zeros/ones
    // result rd:x25(0xdf161617df161617), rs1:x7(0xffffffefffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x25, x7, 0xdf161617df161617, 0xffffffefffffffff, 0x0, x1, 8, x2)

inst_242:
    // Test 242:  Test with marching zeros/ones
    // result rd:x26(0x9e1616179e161617), rs1:x6(0xffffffdfffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x9e1616179e161617, 0xffffffdfffffffff, 0x0, x1, 16, x2)

inst_243:
    // Test 243:  Test with marching zeros/ones
    // result rd:x27(0x0816161708161617), rs1:x5(0xffffffbfffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x0816161708161617, 0xffffffbfffffffff, 0x0, x1, 24, x2)

inst_244:
    // Test 244:  Test with marching zeros/ones
    // result rd:x28(0xd2161617d2161617), rs1:x4(0xffffff7fffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x28, x4, 0xd2161617d2161617, 0xffffff7fffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with marching zeros/ones
    // result rd:x29(0x161616ba161616ba), rs1:x3(0xfffffeffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x161616ba161616ba, 0xfffffeffffffffff, 0x0, x4, 0, x5)

inst_246:
    // Test 246:  Test with marching zeros/ones
    // result rd:x30(0x1616165516161655), rs1:x2(0xfffffdffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x1616165516161655, 0xfffffdffffffffff, 0x0, x4, 8, x5)

inst_247:
    // Test 247:  Test with marching zeros/ones
    // result rd:x31(0x1616160e1616160e), rs1:x1(0xfffffbffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x1616160e1616160e, 0xfffffbffffffffff, 0x0, x4, 16, x5)

inst_248:
    // Test 248:  Test with marching zeros/ones
    // result rd:x1(0x1616166916161669), rs1:x31(0xfffff7ffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x1616166916161669, 0xfffff7ffffffffff, 0x0, x4, 24, x5)

inst_249:
    // Test 249:  Test with marching zeros/ones
    // result rd:x2(0x161616de161616de), rs1:x30(0xffffefffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x161616de161616de, 0xffffefffffffffff, 0x0, x4, 32, x5)

    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with marching zeros/ones
    // result rd:x3(0x1616169f1616169f), rs1:x29(0xffffdfffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x1616169f1616169f, 0xffffdfffffffffff, 0x0, x1, 0, x2)

inst_251:
    // Test 251:  Test with marching zeros/ones
    // result rd:x4(0x1616160916161609), rs1:x28(0xffffbfffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x1616160916161609, 0xffffbfffffffffff, 0x0, x1, 8, x2)

inst_252:
    // Test 252:  Test with marching zeros/ones
    // result rd:x5(0x161616d3161616d3), rs1:x27(0xffff7fffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x161616d3161616d3, 0xffff7fffffffffff, 0x0, x1, 16, x2)

inst_253:
    // Test 253:  Test with marching zeros/ones
    // result rd:x6(0x1616bb171616bb17), rs1:x26(0xfffeffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x1616bb171616bb17, 0xfffeffffffffffff, 0x0, x1, 24, x2)

inst_254:
    // Test 254:  Test with marching zeros/ones
    // result rd:x7(0x1616541716165417), rs1:x25(0xfffdffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x1616541716165417, 0xfffdffffffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with marching zeros/ones
    // result rd:x8(0x16160f1716160f17), rs1:x24(0xfffbffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x16160f1716160f17, 0xfffbffffffffffff, 0x0, x1, 0, x2)

inst_256:
    // Test 256:  Test with marching zeros/ones
    // result rd:x9(0x1616681716166817), rs1:x23(0xfff7ffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x1616681716166817, 0xfff7ffffffffffff, 0x0, x1, 8, x2)

inst_257:
    // Test 257:  Test with marching zeros/ones
    // result rd:x10(0x1616df171616df17), rs1:x22(0xffefffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x1616df171616df17, 0xffefffffffffffff, 0x0, x1, 16, x2)

inst_258:
    // Test 258:  Test with marching zeros/ones
    // result rd:x11(0x16169e1716169e17), rs1:x21(0xffdfffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x16169e1716169e17, 0xffdfffffffffffff, 0x0, x1, 24, x2)

inst_259:
    // Test 259:  Test with marching zeros/ones
    // result rd:x12(0x1616081716160817), rs1:x20(0xffbfffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x1616081716160817, 0xffbfffffffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x5,signature_53_0)


inst_260:
    // Test 260:  Test with marching zeros/ones
    // result rd:x13(0x1616d21e1616d21e), rs1:x19(0xff7fffffffffffff), imm:0x3
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x1616d21e1616d21e, 0xff7fffffffffffff, 0x3, x5, 0, x6)

inst_261:
    // Test 261:  Test with marching zeros/ones
    // result rd:x14(0x16bb161416bb1614), rs1:x18(0xfeffffffffffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x16bb161416bb1614, 0xfeffffffffffffff, 0x1, x5, 8, x6)

inst_262:
    // Test 262:  Test with marching zeros/ones
    // result rd:x15(0x1654161716541617), rs1:x17(0xfdffffffffffffff), imm:0x0
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x1654161716541617, 0xfdffffffffffffff, 0x0, x5, 16, x6)

inst_263:
    // Test 263:  Test with marching zeros/ones
    // result rd:x16(0x160f161e160f161e), rs1:x16(0xfbffffffffffffff), imm:0x3
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x160f161e160f161e, 0xfbffffffffffffff, 0x3, x5, 24, x6)

inst_264:
    // Test 264:  Test with marching zeros/ones
    // result rd:x17(0x1668163616681636), rs1:x15(0xf7ffffffffffffff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x1668163616681636, 0xf7ffffffffffffff, 0x5, x5, 32, x6)

    
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_54_0)


inst_265:
    // Test 265:  Test with marching zeros/ones
    // result rd:x18(0x16df163616df1636), rs1:x14(0xefffffffffffffff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x16df163616df1636, 0xefffffffffffffff, 0x5, x1, 0, x2)

inst_266:
    // Test 266:  Test with marching zeros/ones
    // result rd:x19(0x169e1614169e1614), rs1:x13(0xdfffffffffffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x169e1614169e1614, 0xdfffffffffffffff, 0x1, x1, 8, x2)

inst_267:
    // Test 267:  Test with marching zeros/ones
    // result rd:x20(0x1608161416081614), rs1:x12(0xbfffffffffffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x1608161416081614, 0xbfffffffffffffff, 0x1, x1, 16, x2)

inst_268:
    // Test 268:  Test with marching zeros/ones
    // result rd:x21(0x16d2161416d21614), rs1:x11(0x7fffffffffffffff), imm:0x1
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x16d2161416d21614, 0x7fffffffffffffff, 0x1, x1, 24, x2)

inst_269:
    // Test 269:  Test with marching zeros/ones
    // result rd:x22(0x1616163616161636), rs1:x10(0xffffffffffffffff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x1616163616161636, 0xffffffffffffffff, 0x5, x1, 32, x2)

    
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_55_0)


inst_270:
    // Test 270:  Test with random values
    // result rd:x23(0x55ca540755ca5407), rs1:x9(0x10fd3dedadea5195), imm:0x5
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x55ca540755ca5407, 0x10fd3dedadea5195, 0x5, x1, 0, x2)

inst_271:
    // Test 271:  Test with rd == x0
    // result rd:x0(0x0000000000000000), rs1:x8(0xbd295ce2d2ffbec1), imm:0x7
    TEST_IMM_OP(aes64ks1i, x0, x8, 0x0000000000000000, 0xbd295ce2d2ffbec1, 0x7, x1, 8, x2)

inst_272:
    // Test 272:  Test with rs2 == x0
    // result rd:x25(0x6bdd43d96bdd43d9), rs1:x7(0xc9649f05a8e1a8bb), imm:0x1
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x6bdd43d96bdd43d9, 0xc9649f05a8e1a8bb, 0x1, x1, 16, x2)

inst_273:
    // Test 273:  Test with rs1 == x0
    // result rd:x26(0x6363636b6363636b), rs1:x0(0x3541291848c99fcb), imm:0x3
    TEST_IMM_OP(aes64ks1i, x26, x0, 0x6363636b6363636b, 0x3541291848c99fcb, 0x3, x1, 24, x2)
	
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

