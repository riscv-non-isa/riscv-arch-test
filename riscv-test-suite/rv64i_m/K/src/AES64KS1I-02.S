// RISC-V Architectural Validation Test AES64KS1I-02
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
// Using dataset: sbox64

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
    // Test 0:  Test with dataset: sbox64
    // result rd:x1(0x6363636263636362), rs1:x31(0x0000000000000000), imm:0x0
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x6363636263636362, 0x0, 0x0, x6, 0, x7)

inst_1:
    // Test 1:  Test with dataset: sbox64
    // result rd:x2(0x7c7c7c7e7c7c7c7e), rs1:x30(0x0101010101010101), imm:0x1
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x7c7c7c7e7c7c7c7e, 0x101010101010101, 0x1, x6, 8, x7)

inst_2:
    // Test 2:  Test with dataset: sbox64
    // result rd:x3(0x7777777377777773), rs1:x29(0x0202020202020202), imm:0x2
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x7777777377777773, 0x202020202020202, 0x2, x6, 16, x7)

inst_3:
    // Test 3:  Test with dataset: sbox64
    // result rd:x4(0x7b7b7b737b7b7b73), rs1:x28(0x0303030303030303), imm:0x3
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x7b7b7b737b7b7b73, 0x303030303030303, 0x3, x6, 24, x7)

inst_4:
    // Test 4:  Test with dataset: sbox64
    // result rd:x5(0xf2f2f2e2f2f2f2e2), rs1:x27(0x0404040404040404), imm:0x4
    TEST_IMM_OP(aes64ks1i, x5, x27, 0xf2f2f2e2f2f2f2e2, 0x404040404040404, 0x4, x6, 32, x7)

    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with dataset: sbox64
    // result rd:x6(0x6b6b6b4b6b6b6b4b), rs1:x26(0x0505050505050505), imm:0x5
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x6b6b6b4b6b6b6b4b, 0x505050505050505, 0x5, x1, 0, x2)

inst_6:
    // Test 6:  Test with dataset: sbox64
    // result rd:x7(0x6f6f6f2f6f6f6f2f), rs1:x25(0x0606060606060606), imm:0x6
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x6f6f6f2f6f6f6f2f, 0x606060606060606, 0x6, x1, 8, x2)

inst_7:
    // Test 7:  Test with dataset: sbox64
    // result rd:x8(0xc5c5c545c5c5c545), rs1:x24(0x0707070707070707), imm:0x7
    TEST_IMM_OP(aes64ks1i, x8, x24, 0xc5c5c545c5c5c545, 0x707070707070707, 0x7, x1, 16, x2)

inst_8:
    // Test 8:  Test with dataset: sbox64
    // result rd:x9(0x3030302b3030302b), rs1:x23(0x0808080808080808), imm:0x8
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x3030302b3030302b, 0x808080808080808, 0x8, x1, 24, x2)

inst_9:
    // Test 9:  Test with dataset: sbox64
    // result rd:x10(0x0101013701010137), rs1:x22(0x0909090909090909), imm:0x9
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x0101013701010137, 0x909090909090909, 0x9, x1, 32, x2)

    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with dataset: sbox64
    // result rd:x11(0x6767676767676767), rs1:x21(0x0a0a0a0a0a0a0a0a), imm:0xa
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x6767676767676767, 0xa0a0a0a0a0a0a0a, 0xa, x1, 0, x7)

inst_11:
    // Test 11:  Test with dataset: sbox64
    // result rd:x12(0x2b2b2b292b2b2b29), rs1:x20(0x0b0b0b0b0b0b0b0b), imm:0x1
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x2b2b2b292b2b2b29, 0xb0b0b0b0b0b0b0b, 0x1, x1, 8, x7)

inst_12:
    // Test 12:  Test with dataset: sbox64
    // result rd:x13(0xfefefefafefefefa), rs1:x19(0x0c0c0c0c0c0c0c0c), imm:0x2
    TEST_IMM_OP(aes64ks1i, x13, x19, 0xfefefefafefefefa, 0xc0c0c0c0c0c0c0c, 0x2, x1, 16, x7)

inst_13:
    // Test 13:  Test with dataset: sbox64
    // result rd:x14(0xd7d7d7dfd7d7d7df), rs1:x18(0x0d0d0d0d0d0d0d0d), imm:0x3
    TEST_IMM_OP(aes64ks1i, x14, x18, 0xd7d7d7dfd7d7d7df, 0xd0d0d0d0d0d0d0d, 0x3, x1, 24, x7)

inst_14:
    // Test 14:  Test with dataset: sbox64
    // result rd:x15(0xabababbbabababbb), rs1:x17(0x0e0e0e0e0e0e0e0e), imm:0x4
    TEST_IMM_OP(aes64ks1i, x15, x17, 0xabababbbabababbb, 0xe0e0e0e0e0e0e0e, 0x4, x1, 32, x7)

    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with dataset: sbox64
    // result rd:x16(0x7676765676767656), rs1:x16(0x0f0f0f0f0f0f0f0f), imm:0x5
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x7676765676767656, 0xf0f0f0f0f0f0f0f, 0x5, x2, 0, x3)

inst_16:
    // Test 16:  Test with dataset: sbox64
    // result rd:x17(0xcacacacbcacacacb), rs1:x15(0x1010101010101010), imm:0x0
    TEST_IMM_OP(aes64ks1i, x17, x15, 0xcacacacbcacacacb, 0x1010101010101010, 0x0, x2, 8, x3)

inst_17:
    // Test 17:  Test with dataset: sbox64
    // result rd:x18(0x8282828082828280), rs1:x14(0x1111111111111111), imm:0x1
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x8282828082828280, 0x1111111111111111, 0x1, x2, 16, x3)

inst_18:
    // Test 18:  Test with dataset: sbox64
    // result rd:x19(0xc9c9c9cdc9c9c9cd), rs1:x13(0x1212121212121212), imm:0x2
    TEST_IMM_OP(aes64ks1i, x19, x13, 0xc9c9c9cdc9c9c9cd, 0x1212121212121212, 0x2, x2, 24, x3)

inst_19:
    // Test 19:  Test with dataset: sbox64
    // result rd:x20(0x7d7d7d757d7d7d75), rs1:x12(0x1313131313131313), imm:0x3
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x7d7d7d757d7d7d75, 0x1313131313131313, 0x3, x2, 32, x3)

    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with dataset: sbox64
    // result rd:x21(0xfafafaeafafafaea), rs1:x11(0x1414141414141414), imm:0x4
    TEST_IMM_OP(aes64ks1i, x21, x11, 0xfafafaeafafafaea, 0x1414141414141414, 0x4, x1, 0, x2)

inst_21:
    // Test 21:  Test with dataset: sbox64
    // result rd:x22(0x5959597959595979), rs1:x10(0x1515151515151515), imm:0x5
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x5959597959595979, 0x1515151515151515, 0x5, x1, 8, x2)

inst_22:
    // Test 22:  Test with dataset: sbox64
    // result rd:x23(0x4747470747474707), rs1:x9(0x1616161616161616), imm:0x6
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x4747470747474707, 0x1616161616161616, 0x6, x1, 16, x2)

inst_23:
    // Test 23:  Test with dataset: sbox64
    // result rd:x24(0xf0f0f070f0f0f070), rs1:x8(0x1717171717171717), imm:0x7
    TEST_IMM_OP(aes64ks1i, x24, x8, 0xf0f0f070f0f0f070, 0x1717171717171717, 0x7, x1, 24, x2)

inst_24:
    // Test 24:  Test with dataset: sbox64
    // result rd:x25(0xadadadb6adadadb6), rs1:x7(0x1818181818181818), imm:0x8
    TEST_IMM_OP(aes64ks1i, x25, x7, 0xadadadb6adadadb6, 0x1818181818181818, 0x8, x1, 32, x2)

    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with dataset: sbox64
    // result rd:x26(0xd4d4d4e2d4d4d4e2), rs1:x6(0x1919191919191919), imm:0x9
    TEST_IMM_OP(aes64ks1i, x26, x6, 0xd4d4d4e2d4d4d4e2, 0x1919191919191919, 0x9, x1, 0, x7)

inst_26:
    // Test 26:  Test with dataset: sbox64
    // result rd:x27(0xa2a2a2a2a2a2a2a2), rs1:x5(0x1a1a1a1a1a1a1a1a), imm:0xa
    TEST_IMM_OP(aes64ks1i, x27, x5, 0xa2a2a2a2a2a2a2a2, 0x1a1a1a1a1a1a1a1a, 0xa, x1, 8, x7)

inst_27:
    // Test 27:  Test with dataset: sbox64
    // result rd:x28(0xafafafadafafafad), rs1:x4(0x1b1b1b1b1b1b1b1b), imm:0x1
    TEST_IMM_OP(aes64ks1i, x28, x4, 0xafafafadafafafad, 0x1b1b1b1b1b1b1b1b, 0x1, x1, 16, x7)

inst_28:
    // Test 28:  Test with dataset: sbox64
    // result rd:x29(0x9c9c9c989c9c9c98), rs1:x3(0x1c1c1c1c1c1c1c1c), imm:0x2
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x9c9c9c989c9c9c98, 0x1c1c1c1c1c1c1c1c, 0x2, x1, 24, x7)

inst_29:
    // Test 29:  Test with dataset: sbox64
    // result rd:x30(0xa4a4a4aca4a4a4ac), rs1:x2(0x1d1d1d1d1d1d1d1d), imm:0x3
    TEST_IMM_OP(aes64ks1i, x30, x2, 0xa4a4a4aca4a4a4ac, 0x1d1d1d1d1d1d1d1d, 0x3, x1, 32, x7)

    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with dataset: sbox64
    // result rd:x31(0x7272726272727262), rs1:x1(0x1e1e1e1e1e1e1e1e), imm:0x4
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x7272726272727262, 0x1e1e1e1e1e1e1e1e, 0x4, x5, 0, x6)

inst_31:
    // Test 31:  Test with dataset: sbox64
    // result rd:x1(0xc0c0c0e0c0c0c0e0), rs1:x31(0x1f1f1f1f1f1f1f1f), imm:0x5
    TEST_IMM_OP(aes64ks1i, x1, x31, 0xc0c0c0e0c0c0c0e0, 0x1f1f1f1f1f1f1f1f, 0x5, x5, 8, x6)

inst_32:
    // Test 32:  Test with dataset: sbox64
    // result rd:x2(0xb7b7b7b6b7b7b7b6), rs1:x30(0x2020202020202020), imm:0x0
    TEST_IMM_OP(aes64ks1i, x2, x30, 0xb7b7b7b6b7b7b7b6, 0x2020202020202020, 0x0, x5, 16, x6)

inst_33:
    // Test 33:  Test with dataset: sbox64
    // result rd:x3(0xfdfdfdfffdfdfdff), rs1:x29(0x2121212121212121), imm:0x1
    TEST_IMM_OP(aes64ks1i, x3, x29, 0xfdfdfdfffdfdfdff, 0x2121212121212121, 0x1, x5, 24, x6)

inst_34:
    // Test 34:  Test with dataset: sbox64
    // result rd:x4(0x9393939793939397), rs1:x28(0x2222222222222222), imm:0x2
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x9393939793939397, 0x2222222222222222, 0x2, x5, 32, x6)

    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with dataset: sbox64
    // result rd:x5(0x2626262e2626262e), rs1:x27(0x2323232323232323), imm:0x3
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x2626262e2626262e, 0x2323232323232323, 0x3, x1, 0, x2)

inst_36:
    // Test 36:  Test with dataset: sbox64
    // result rd:x6(0x3636362636363626), rs1:x26(0x2424242424242424), imm:0x4
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x3636362636363626, 0x2424242424242424, 0x4, x1, 8, x2)

inst_37:
    // Test 37:  Test with dataset: sbox64
    // result rd:x7(0x3f3f3f1f3f3f3f1f), rs1:x25(0x2525252525252525), imm:0x5
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x3f3f3f1f3f3f3f1f, 0x2525252525252525, 0x5, x1, 16, x2)

inst_38:
    // Test 38:  Test with dataset: sbox64
    // result rd:x8(0xf7f7f7b7f7f7f7b7), rs1:x24(0x2626262626262626), imm:0x6
    TEST_IMM_OP(aes64ks1i, x8, x24, 0xf7f7f7b7f7f7f7b7, 0x2626262626262626, 0x6, x1, 24, x2)

inst_39:
    // Test 39:  Test with dataset: sbox64
    // result rd:x9(0xcccccc4ccccccc4c), rs1:x23(0x2727272727272727), imm:0x7
    TEST_IMM_OP(aes64ks1i, x9, x23, 0xcccccc4ccccccc4c, 0x2727272727272727, 0x7, x1, 32, x2)

    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with dataset: sbox64
    // result rd:x10(0x3434342f3434342f), rs1:x22(0x2828282828282828), imm:0x8
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x3434342f3434342f, 0x2828282828282828, 0x8, x1, 0, x2)

inst_41:
    // Test 41:  Test with dataset: sbox64
    // result rd:x11(0xa5a5a593a5a5a593), rs1:x21(0x2929292929292929), imm:0x9
    TEST_IMM_OP(aes64ks1i, x11, x21, 0xa5a5a593a5a5a593, 0x2929292929292929, 0x9, x1, 8, x2)

inst_42:
    // Test 42:  Test with dataset: sbox64
    // result rd:x12(0xe5e5e5e5e5e5e5e5), rs1:x20(0x2a2a2a2a2a2a2a2a), imm:0xa
    TEST_IMM_OP(aes64ks1i, x12, x20, 0xe5e5e5e5e5e5e5e5, 0x2a2a2a2a2a2a2a2a, 0xa, x1, 16, x2)

inst_43:
    // Test 43:  Test with dataset: sbox64
    // result rd:x13(0xf1f1f1f3f1f1f1f3), rs1:x19(0x2b2b2b2b2b2b2b2b), imm:0x1
    TEST_IMM_OP(aes64ks1i, x13, x19, 0xf1f1f1f3f1f1f1f3, 0x2b2b2b2b2b2b2b2b, 0x1, x1, 24, x2)

inst_44:
    // Test 44:  Test with dataset: sbox64
    // result rd:x14(0x7171717571717175), rs1:x18(0x2c2c2c2c2c2c2c2c), imm:0x2
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x7171717571717175, 0x2c2c2c2c2c2c2c2c, 0x2, x1, 32, x2)

    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with dataset: sbox64
    // result rd:x15(0xd8d8d8d0d8d8d8d0), rs1:x17(0x2d2d2d2d2d2d2d2d), imm:0x3
    TEST_IMM_OP(aes64ks1i, x15, x17, 0xd8d8d8d0d8d8d8d0, 0x2d2d2d2d2d2d2d2d, 0x3, x3, 0, x4)

inst_46:
    // Test 46:  Test with dataset: sbox64
    // result rd:x16(0x3131312131313121), rs1:x16(0x2e2e2e2e2e2e2e2e), imm:0x4
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x3131312131313121, 0x2e2e2e2e2e2e2e2e, 0x4, x3, 8, x4)

inst_47:
    // Test 47:  Test with dataset: sbox64
    // result rd:x17(0x1515153515151535), rs1:x15(0x2f2f2f2f2f2f2f2f), imm:0x5
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x1515153515151535, 0x2f2f2f2f2f2f2f2f, 0x5, x3, 16, x4)

inst_48:
    // Test 48:  Test with dataset: sbox64
    // result rd:x18(0x0404040504040405), rs1:x14(0x3030303030303030), imm:0x0
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x0404040504040405, 0x3030303030303030, 0x0, x3, 24, x4)

inst_49:
    // Test 49:  Test with dataset: sbox64
    // result rd:x19(0xc7c7c7c5c7c7c7c5), rs1:x13(0x3131313131313131), imm:0x1
    TEST_IMM_OP(aes64ks1i, x19, x13, 0xc7c7c7c5c7c7c7c5, 0x3131313131313131, 0x1, x3, 32, x4)

    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with dataset: sbox64
    // result rd:x20(0x2323232723232327), rs1:x12(0x3232323232323232), imm:0x2
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x2323232723232327, 0x3232323232323232, 0x2, x1, 0, x2)

inst_51:
    // Test 51:  Test with dataset: sbox64
    // result rd:x21(0xc3c3c3cbc3c3c3cb), rs1:x11(0x3333333333333333), imm:0x3
    TEST_IMM_OP(aes64ks1i, x21, x11, 0xc3c3c3cbc3c3c3cb, 0x3333333333333333, 0x3, x1, 8, x2)

inst_52:
    // Test 52:  Test with dataset: sbox64
    // result rd:x22(0x1818180818181808), rs1:x10(0x3434343434343434), imm:0x4
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x1818180818181808, 0x3434343434343434, 0x4, x1, 16, x2)

inst_53:
    // Test 53:  Test with dataset: sbox64
    // result rd:x23(0x969696b6969696b6), rs1:x9(0x3535353535353535), imm:0x5
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x969696b6969696b6, 0x3535353535353535, 0x5, x1, 24, x2)

inst_54:
    // Test 54:  Test with dataset: sbox64
    // result rd:x24(0x0505054505050545), rs1:x8(0x3636363636363636), imm:0x6
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x0505054505050545, 0x3636363636363636, 0x6, x1, 32, x2)

    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with dataset: sbox64
    // result rd:x25(0x9a9a9a1a9a9a9a1a), rs1:x7(0x3737373737373737), imm:0x7
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x9a9a9a1a9a9a9a1a, 0x3737373737373737, 0x7, x1, 0, x2)

inst_56:
    // Test 56:  Test with dataset: sbox64
    // result rd:x26(0x0707071c0707071c), rs1:x6(0x3838383838383838), imm:0x8
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x0707071c0707071c, 0x3838383838383838, 0x8, x1, 8, x2)

inst_57:
    // Test 57:  Test with dataset: sbox64
    // result rd:x27(0x1212122412121224), rs1:x5(0x3939393939393939), imm:0x9
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x1212122412121224, 0x3939393939393939, 0x9, x1, 16, x2)

inst_58:
    // Test 58:  Test with dataset: sbox64
    // result rd:x28(0x8080808080808080), rs1:x4(0x3a3a3a3a3a3a3a3a), imm:0xa
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x8080808080808080, 0x3a3a3a3a3a3a3a3a, 0xa, x1, 24, x2)

inst_59:
    // Test 59:  Test with dataset: sbox64
    // result rd:x29(0xe2e2e2e0e2e2e2e0), rs1:x3(0x3b3b3b3b3b3b3b3b), imm:0x1
    TEST_IMM_OP(aes64ks1i, x29, x3, 0xe2e2e2e0e2e2e2e0, 0x3b3b3b3b3b3b3b3b, 0x1, x1, 32, x2)

    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with dataset: sbox64
    // result rd:x30(0xebebebefebebebef), rs1:x2(0x3c3c3c3c3c3c3c3c), imm:0x2
    TEST_IMM_OP(aes64ks1i, x30, x2, 0xebebebefebebebef, 0x3c3c3c3c3c3c3c3c, 0x2, x4, 0, x5)

inst_61:
    // Test 61:  Test with dataset: sbox64
    // result rd:x31(0x2727272f2727272f), rs1:x1(0x3d3d3d3d3d3d3d3d), imm:0x3
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x2727272f2727272f, 0x3d3d3d3d3d3d3d3d, 0x3, x4, 8, x5)

inst_62:
    // Test 62:  Test with dataset: sbox64
    // result rd:x1(0xb2b2b2a2b2b2b2a2), rs1:x31(0x3e3e3e3e3e3e3e3e), imm:0x4
    TEST_IMM_OP(aes64ks1i, x1, x31, 0xb2b2b2a2b2b2b2a2, 0x3e3e3e3e3e3e3e3e, 0x4, x4, 16, x5)

inst_63:
    // Test 63:  Test with dataset: sbox64
    // result rd:x2(0x7575755575757555), rs1:x30(0x3f3f3f3f3f3f3f3f), imm:0x5
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x7575755575757555, 0x3f3f3f3f3f3f3f3f, 0x5, x4, 24, x5)

inst_64:
    // Test 64:  Test with dataset: sbox64
    // result rd:x3(0x0909090809090908), rs1:x29(0x4040404040404040), imm:0x0
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x0909090809090908, 0x4040404040404040, 0x0, x4, 32, x5)

    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with dataset: sbox64
    // result rd:x4(0x8383838183838381), rs1:x28(0x4141414141414141), imm:0x1
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x8383838183838381, 0x4141414141414141, 0x1, x1, 0, x2)

inst_66:
    // Test 66:  Test with dataset: sbox64
    // result rd:x5(0x2c2c2c282c2c2c28), rs1:x27(0x4242424242424242), imm:0x2
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x2c2c2c282c2c2c28, 0x4242424242424242, 0x2, x1, 8, x2)

inst_67:
    // Test 67:  Test with dataset: sbox64
    // result rd:x6(0x1a1a1a121a1a1a12), rs1:x26(0x4343434343434343), imm:0x3
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x1a1a1a121a1a1a12, 0x4343434343434343, 0x3, x1, 16, x2)

inst_68:
    // Test 68:  Test with dataset: sbox64
    // result rd:x7(0x1b1b1b0b1b1b1b0b), rs1:x25(0x4444444444444444), imm:0x4
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x1b1b1b0b1b1b1b0b, 0x4444444444444444, 0x4, x1, 24, x2)

inst_69:
    // Test 69:  Test with dataset: sbox64
    // result rd:x8(0x6e6e6e4e6e6e6e4e), rs1:x24(0x4545454545454545), imm:0x5
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x6e6e6e4e6e6e6e4e, 0x4545454545454545, 0x5, x1, 32, x2)

    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with dataset: sbox64
    // result rd:x9(0x5a5a5a1a5a5a5a1a), rs1:x23(0x4646464646464646), imm:0x6
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x5a5a5a1a5a5a5a1a, 0x4646464646464646, 0x6, x1, 0, x2)

inst_71:
    // Test 71:  Test with dataset: sbox64
    // result rd:x10(0xa0a0a020a0a0a020), rs1:x22(0x4747474747474747), imm:0x7
    TEST_IMM_OP(aes64ks1i, x10, x22, 0xa0a0a020a0a0a020, 0x4747474747474747, 0x7, x1, 8, x2)

inst_72:
    // Test 72:  Test with dataset: sbox64
    // result rd:x11(0x5252524952525249), rs1:x21(0x4848484848484848), imm:0x8
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x5252524952525249, 0x4848484848484848, 0x8, x1, 16, x2)

inst_73:
    // Test 73:  Test with dataset: sbox64
    // result rd:x12(0x3b3b3b0d3b3b3b0d), rs1:x20(0x4949494949494949), imm:0x9
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x3b3b3b0d3b3b3b0d, 0x4949494949494949, 0x9, x1, 24, x2)

inst_74:
    // Test 74:  Test with dataset: sbox64
    // result rd:x13(0xd6d6d6d6d6d6d6d6), rs1:x19(0x4a4a4a4a4a4a4a4a), imm:0xa
    TEST_IMM_OP(aes64ks1i, x13, x19, 0xd6d6d6d6d6d6d6d6, 0x4a4a4a4a4a4a4a4a, 0xa, x1, 32, x2)

    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with dataset: sbox64
    // result rd:x14(0xb3b3b3b1b3b3b3b1), rs1:x18(0x4b4b4b4b4b4b4b4b), imm:0x1
    TEST_IMM_OP(aes64ks1i, x14, x18, 0xb3b3b3b1b3b3b3b1, 0x4b4b4b4b4b4b4b4b, 0x1, x4, 0, x5)

inst_76:
    // Test 76:  Test with dataset: sbox64
    // result rd:x15(0x2929292d2929292d), rs1:x17(0x4c4c4c4c4c4c4c4c), imm:0x2
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x2929292d2929292d, 0x4c4c4c4c4c4c4c4c, 0x2, x4, 8, x5)

inst_77:
    // Test 77:  Test with dataset: sbox64
    // result rd:x16(0xe3e3e3ebe3e3e3eb), rs1:x16(0x4d4d4d4d4d4d4d4d), imm:0x3
    TEST_IMM_OP(aes64ks1i, x16, x16, 0xe3e3e3ebe3e3e3eb, 0x4d4d4d4d4d4d4d4d, 0x3, x4, 16, x5)

inst_78:
    // Test 78:  Test with dataset: sbox64
    // result rd:x17(0x2f2f2f3f2f2f2f3f), rs1:x15(0x4e4e4e4e4e4e4e4e), imm:0x4
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x2f2f2f3f2f2f2f3f, 0x4e4e4e4e4e4e4e4e, 0x4, x4, 24, x5)

inst_79:
    // Test 79:  Test with dataset: sbox64
    // result rd:x18(0x848484a4848484a4), rs1:x14(0x4f4f4f4f4f4f4f4f), imm:0x5
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x848484a4848484a4, 0x4f4f4f4f4f4f4f4f, 0x5, x4, 32, x5)

    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with dataset: sbox64
    // result rd:x19(0x5353535253535352), rs1:x13(0x5050505050505050), imm:0x0
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x5353535253535352, 0x5050505050505050, 0x0, x1, 0, x2)

inst_81:
    // Test 81:  Test with dataset: sbox64
    // result rd:x20(0xd1d1d1d3d1d1d1d3), rs1:x12(0x5151515151515151), imm:0x1
    TEST_IMM_OP(aes64ks1i, x20, x12, 0xd1d1d1d3d1d1d1d3, 0x5151515151515151, 0x1, x1, 8, x2)

inst_82:
    // Test 82:  Test with dataset: sbox64
    // result rd:x21(0x0000000400000004), rs1:x11(0x5252525252525252), imm:0x2
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x0000000400000004, 0x5252525252525252, 0x2, x1, 16, x2)

inst_83:
    // Test 83:  Test with dataset: sbox64
    // result rd:x22(0xededede5ededede5), rs1:x10(0x5353535353535353), imm:0x3
    TEST_IMM_OP(aes64ks1i, x22, x10, 0xededede5ededede5, 0x5353535353535353, 0x3, x1, 24, x2)

inst_84:
    // Test 84:  Test with dataset: sbox64
    // result rd:x23(0x2020203020202030), rs1:x9(0x5454545454545454), imm:0x4
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x2020203020202030, 0x5454545454545454, 0x4, x1, 32, x2)

    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with dataset: sbox64
    // result rd:x24(0xfcfcfcdcfcfcfcdc), rs1:x8(0x5555555555555555), imm:0x5
    TEST_IMM_OP(aes64ks1i, x24, x8, 0xfcfcfcdcfcfcfcdc, 0x5555555555555555, 0x5, x1, 0, x2)

inst_86:
    // Test 86:  Test with dataset: sbox64
    // result rd:x25(0xb1b1b1f1b1b1b1f1), rs1:x7(0x5656565656565656), imm:0x6
    TEST_IMM_OP(aes64ks1i, x25, x7, 0xb1b1b1f1b1b1b1f1, 0x5656565656565656, 0x6, x1, 8, x2)

inst_87:
    // Test 87:  Test with dataset: sbox64
    // result rd:x26(0x5b5b5bdb5b5b5bdb), rs1:x6(0x5757575757575757), imm:0x7
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x5b5b5bdb5b5b5bdb, 0x5757575757575757, 0x7, x1, 16, x2)

inst_88:
    // Test 88:  Test with dataset: sbox64
    // result rd:x27(0x6a6a6a716a6a6a71), rs1:x5(0x5858585858585858), imm:0x8
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x6a6a6a716a6a6a71, 0x5858585858585858, 0x8, x1, 24, x2)

inst_89:
    // Test 89:  Test with dataset: sbox64
    // result rd:x28(0xcbcbcbfdcbcbcbfd), rs1:x4(0x5959595959595959), imm:0x9
    TEST_IMM_OP(aes64ks1i, x28, x4, 0xcbcbcbfdcbcbcbfd, 0x5959595959595959, 0x9, x1, 32, x2)

    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with dataset: sbox64
    // result rd:x29(0xbebebebebebebebe), rs1:x3(0x5a5a5a5a5a5a5a5a), imm:0xa
    TEST_IMM_OP(aes64ks1i, x29, x3, 0xbebebebebebebebe, 0x5a5a5a5a5a5a5a5a, 0xa, x4, 0, x5)

inst_91:
    // Test 91:  Test with dataset: sbox64
    // result rd:x30(0x3939393b3939393b), rs1:x2(0x5b5b5b5b5b5b5b5b), imm:0x1
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x3939393b3939393b, 0x5b5b5b5b5b5b5b5b, 0x1, x4, 8, x5)

inst_92:
    // Test 92:  Test with dataset: sbox64
    // result rd:x31(0x4a4a4a4e4a4a4a4e), rs1:x1(0x5c5c5c5c5c5c5c5c), imm:0x2
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x4a4a4a4e4a4a4a4e, 0x5c5c5c5c5c5c5c5c, 0x2, x4, 16, x5)

inst_93:
    // Test 93:  Test with dataset: sbox64
    // result rd:x1(0x4c4c4c444c4c4c44), rs1:x31(0x5d5d5d5d5d5d5d5d), imm:0x3
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x4c4c4c444c4c4c44, 0x5d5d5d5d5d5d5d5d, 0x3, x4, 24, x5)

inst_94:
    // Test 94:  Test with dataset: sbox64
    // result rd:x2(0x5858584858585848), rs1:x30(0x5e5e5e5e5e5e5e5e), imm:0x4
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x5858584858585848, 0x5e5e5e5e5e5e5e5e, 0x4, x4, 32, x5)

    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with dataset: sbox64
    // result rd:x3(0xcfcfcfefcfcfcfef), rs1:x29(0x5f5f5f5f5f5f5f5f), imm:0x5
    TEST_IMM_OP(aes64ks1i, x3, x29, 0xcfcfcfefcfcfcfef, 0x5f5f5f5f5f5f5f5f, 0x5, x1, 0, x2)

inst_96:
    // Test 96:  Test with dataset: sbox64
    // result rd:x4(0xd0d0d0d1d0d0d0d1), rs1:x28(0x6060606060606060), imm:0x0
    TEST_IMM_OP(aes64ks1i, x4, x28, 0xd0d0d0d1d0d0d0d1, 0x6060606060606060, 0x0, x1, 8, x2)

inst_97:
    // Test 97:  Test with dataset: sbox64
    // result rd:x5(0xefefefedefefefed), rs1:x27(0x6161616161616161), imm:0x1
    TEST_IMM_OP(aes64ks1i, x5, x27, 0xefefefedefefefed, 0x6161616161616161, 0x1, x1, 16, x2)

inst_98:
    // Test 98:  Test with dataset: sbox64
    // result rd:x6(0xaaaaaaaeaaaaaaae), rs1:x26(0x6262626262626262), imm:0x2
    TEST_IMM_OP(aes64ks1i, x6, x26, 0xaaaaaaaeaaaaaaae, 0x6262626262626262, 0x2, x1, 24, x2)

inst_99:
    // Test 99:  Test with dataset: sbox64
    // result rd:x7(0xfbfbfbf3fbfbfbf3), rs1:x25(0x6363636363636363), imm:0x3
    TEST_IMM_OP(aes64ks1i, x7, x25, 0xfbfbfbf3fbfbfbf3, 0x6363636363636363, 0x3, x1, 32, x2)

    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with dataset: sbox64
    // result rd:x8(0x4343435343434353), rs1:x24(0x6464646464646464), imm:0x4
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x4343435343434353, 0x6464646464646464, 0x4, x1, 0, x2)

inst_101:
    // Test 101:  Test with dataset: sbox64
    // result rd:x9(0x4d4d4d6d4d4d4d6d), rs1:x23(0x6565656565656565), imm:0x5
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x4d4d4d6d4d4d4d6d, 0x6565656565656565, 0x5, x1, 8, x2)

inst_102:
    // Test 102:  Test with dataset: sbox64
    // result rd:x10(0x3333337333333373), rs1:x22(0x6666666666666666), imm:0x6
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x3333337333333373, 0x6666666666666666, 0x6, x1, 16, x2)

inst_103:
    // Test 103:  Test with dataset: sbox64
    // result rd:x11(0x8585850585858505), rs1:x21(0x6767676767676767), imm:0x7
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x8585850585858505, 0x6767676767676767, 0x7, x1, 24, x2)

inst_104:
    // Test 104:  Test with dataset: sbox64
    // result rd:x12(0x4545455e4545455e), rs1:x20(0x6868686868686868), imm:0x8
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x4545455e4545455e, 0x6868686868686868, 0x8, x1, 32, x2)

    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with dataset: sbox64
    // result rd:x13(0xf9f9f9cff9f9f9cf), rs1:x19(0x6969696969696969), imm:0x9
    TEST_IMM_OP(aes64ks1i, x13, x19, 0xf9f9f9cff9f9f9cf, 0x6969696969696969, 0x9, x5, 0, x6)

inst_106:
    // Test 106:  Test with dataset: sbox64
    // result rd:x14(0x0202020202020202), rs1:x18(0x6a6a6a6a6a6a6a6a), imm:0xa
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x0202020202020202, 0x6a6a6a6a6a6a6a6a, 0xa, x5, 8, x6)

inst_107:
    // Test 107:  Test with dataset: sbox64
    // result rd:x15(0x7f7f7f7d7f7f7f7d), rs1:x17(0x6b6b6b6b6b6b6b6b), imm:0x1
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x7f7f7f7d7f7f7f7d, 0x6b6b6b6b6b6b6b6b, 0x1, x5, 16, x6)

inst_108:
    // Test 108:  Test with dataset: sbox64
    // result rd:x16(0x5050505450505054), rs1:x16(0x6c6c6c6c6c6c6c6c), imm:0x2
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x5050505450505054, 0x6c6c6c6c6c6c6c6c, 0x2, x5, 24, x6)

inst_109:
    // Test 109:  Test with dataset: sbox64
    // result rd:x17(0x3c3c3c343c3c3c34), rs1:x15(0x6d6d6d6d6d6d6d6d), imm:0x3
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x3c3c3c343c3c3c34, 0x6d6d6d6d6d6d6d6d, 0x3, x5, 32, x6)

    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with dataset: sbox64
    // result rd:x18(0x9f9f9f8f9f9f9f8f), rs1:x14(0x6e6e6e6e6e6e6e6e), imm:0x4
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x9f9f9f8f9f9f9f8f, 0x6e6e6e6e6e6e6e6e, 0x4, x1, 0, x2)

inst_111:
    // Test 111:  Test with dataset: sbox64
    // result rd:x19(0xa8a8a888a8a8a888), rs1:x13(0x6f6f6f6f6f6f6f6f), imm:0x5
    TEST_IMM_OP(aes64ks1i, x19, x13, 0xa8a8a888a8a8a888, 0x6f6f6f6f6f6f6f6f, 0x5, x1, 8, x2)

inst_112:
    // Test 112:  Test with dataset: sbox64
    // result rd:x20(0x5151515051515150), rs1:x12(0x7070707070707070), imm:0x0
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x5151515051515150, 0x7070707070707070, 0x0, x1, 16, x2)

inst_113:
    // Test 113:  Test with dataset: sbox64
    // result rd:x21(0xa3a3a3a1a3a3a3a1), rs1:x11(0x7171717171717171), imm:0x1
    TEST_IMM_OP(aes64ks1i, x21, x11, 0xa3a3a3a1a3a3a3a1, 0x7171717171717171, 0x1, x1, 24, x2)

inst_114:
    // Test 114:  Test with dataset: sbox64
    // result rd:x22(0x4040404440404044), rs1:x10(0x7272727272727272), imm:0x2
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x4040404440404044, 0x7272727272727272, 0x2, x1, 32, x2)

    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with dataset: sbox64
    // result rd:x23(0x8f8f8f878f8f8f87), rs1:x9(0x7373737373737373), imm:0x3
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x8f8f8f878f8f8f87, 0x7373737373737373, 0x3, x1, 0, x2)

inst_116:
    // Test 116:  Test with dataset: sbox64
    // result rd:x24(0x9292928292929282), rs1:x8(0x7474747474747474), imm:0x4
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x9292928292929282, 0x7474747474747474, 0x4, x1, 8, x2)

inst_117:
    // Test 117:  Test with dataset: sbox64
    // result rd:x25(0x9d9d9dbd9d9d9dbd), rs1:x7(0x7575757575757575), imm:0x5
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x9d9d9dbd9d9d9dbd, 0x7575757575757575, 0x5, x1, 16, x2)

inst_118:
    // Test 118:  Test with dataset: sbox64
    // result rd:x26(0x3838387838383878), rs1:x6(0x7676767676767676), imm:0x6
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x3838387838383878, 0x7676767676767676, 0x6, x1, 24, x2)

inst_119:
    // Test 119:  Test with dataset: sbox64
    // result rd:x27(0xf5f5f575f5f5f575), rs1:x5(0x7777777777777777), imm:0x7
    TEST_IMM_OP(aes64ks1i, x27, x5, 0xf5f5f575f5f5f575, 0x7777777777777777, 0x7, x1, 32, x2)

    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with dataset: sbox64
    // result rd:x28(0xbcbcbca7bcbcbca7), rs1:x4(0x7878787878787878), imm:0x8
    TEST_IMM_OP(aes64ks1i, x28, x4, 0xbcbcbca7bcbcbca7, 0x7878787878787878, 0x8, x5, 0, x6)

inst_121:
    // Test 121:  Test with dataset: sbox64
    // result rd:x29(0xb6b6b680b6b6b680), rs1:x3(0x7979797979797979), imm:0x9
    TEST_IMM_OP(aes64ks1i, x29, x3, 0xb6b6b680b6b6b680, 0x7979797979797979, 0x9, x5, 8, x6)

inst_122:
    // Test 122:  Test with dataset: sbox64
    // result rd:x30(0xdadadadadadadada), rs1:x2(0x7a7a7a7a7a7a7a7a), imm:0xa
    TEST_IMM_OP(aes64ks1i, x30, x2, 0xdadadadadadadada, 0x7a7a7a7a7a7a7a7a, 0xa, x5, 16, x6)

inst_123:
    // Test 123:  Test with dataset: sbox64
    // result rd:x31(0x2121212321212123), rs1:x1(0x7b7b7b7b7b7b7b7b), imm:0x1
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x2121212321212123, 0x7b7b7b7b7b7b7b7b, 0x1, x5, 24, x6)

inst_124:
    // Test 124:  Test with dataset: sbox64
    // result rd:x1(0x1010101410101014), rs1:x31(0x7c7c7c7c7c7c7c7c), imm:0x2
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x1010101410101014, 0x7c7c7c7c7c7c7c7c, 0x2, x5, 32, x6)

    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with dataset: sbox64
    // result rd:x2(0xfffffff7fffffff7), rs1:x30(0x7d7d7d7d7d7d7d7d), imm:0x3
    TEST_IMM_OP(aes64ks1i, x2, x30, 0xfffffff7fffffff7, 0x7d7d7d7d7d7d7d7d, 0x3, x1, 0, x7)

inst_126:
    // Test 126:  Test with dataset: sbox64
    // result rd:x3(0xf3f3f3e3f3f3f3e3), rs1:x29(0x7e7e7e7e7e7e7e7e), imm:0x4
    TEST_IMM_OP(aes64ks1i, x3, x29, 0xf3f3f3e3f3f3f3e3, 0x7e7e7e7e7e7e7e7e, 0x4, x1, 8, x7)

inst_127:
    // Test 127:  Test with dataset: sbox64
    // result rd:x4(0xd2d2d2f2d2d2d2f2), rs1:x28(0x7f7f7f7f7f7f7f7f), imm:0x5
    TEST_IMM_OP(aes64ks1i, x4, x28, 0xd2d2d2f2d2d2d2f2, 0x7f7f7f7f7f7f7f7f, 0x5, x1, 16, x7)

inst_128:
    // Test 128:  Test with dataset: sbox64
    // result rd:x5(0xcdcdcdcccdcdcdcc), rs1:x27(0x8080808080808080), imm:0x0
    TEST_IMM_OP(aes64ks1i, x5, x27, 0xcdcdcdcccdcdcdcc, 0x8080808080808080, 0x0, x1, 24, x7)

inst_129:
    // Test 129:  Test with dataset: sbox64
    // result rd:x6(0x0c0c0c0e0c0c0c0e), rs1:x26(0x8181818181818181), imm:0x1
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x0c0c0c0e0c0c0c0e, 0x8181818181818181, 0x1, x1, 32, x7)

    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with dataset: sbox64
    // result rd:x7(0x1313131713131317), rs1:x25(0x8282828282828282), imm:0x2
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x1313131713131317, 0x8282828282828282, 0x2, x1, 0, x2)

inst_131:
    // Test 131:  Test with dataset: sbox64
    // result rd:x8(0xececece4ececece4), rs1:x24(0x8383838383838383), imm:0x3
    TEST_IMM_OP(aes64ks1i, x8, x24, 0xececece4ececece4, 0x8383838383838383, 0x3, x1, 8, x2)

inst_132:
    // Test 132:  Test with dataset: sbox64
    // result rd:x9(0x5f5f5f4f5f5f5f4f), rs1:x23(0x8484848484848484), imm:0x4
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x5f5f5f4f5f5f5f4f, 0x8484848484848484, 0x4, x1, 16, x2)

inst_133:
    // Test 133:  Test with dataset: sbox64
    // result rd:x10(0x979797b7979797b7), rs1:x22(0x8585858585858585), imm:0x5
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x979797b7979797b7, 0x8585858585858585, 0x5, x1, 24, x2)

inst_134:
    // Test 134:  Test with dataset: sbox64
    // result rd:x11(0x4444440444444404), rs1:x21(0x8686868686868686), imm:0x6
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x4444440444444404, 0x8686868686868686, 0x6, x1, 32, x2)

    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with dataset: sbox64
    // result rd:x12(0x1717179717171797), rs1:x20(0x8787878787878787), imm:0x7
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x1717179717171797, 0x8787878787878787, 0x7, x6, 0, x7)

inst_136:
    // Test 136:  Test with dataset: sbox64
    // result rd:x13(0xc4c4c4dfc4c4c4df), rs1:x19(0x8888888888888888), imm:0x8
    TEST_IMM_OP(aes64ks1i, x13, x19, 0xc4c4c4dfc4c4c4df, 0x8888888888888888, 0x8, x6, 8, x7)

inst_137:
    // Test 137:  Test with dataset: sbox64
    // result rd:x14(0xa7a7a791a7a7a791), rs1:x18(0x8989898989898989), imm:0x9
    TEST_IMM_OP(aes64ks1i, x14, x18, 0xa7a7a791a7a7a791, 0x8989898989898989, 0x9, x6, 16, x7)

inst_138:
    // Test 138:  Test with dataset: sbox64
    // result rd:x15(0x7e7e7e7e7e7e7e7e), rs1:x17(0x8a8a8a8a8a8a8a8a), imm:0xa
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x7e7e7e7e7e7e7e7e, 0x8a8a8a8a8a8a8a8a, 0xa, x6, 24, x7)

inst_139:
    // Test 139:  Test with dataset: sbox64
    // result rd:x16(0x3d3d3d3f3d3d3d3f), rs1:x16(0x8b8b8b8b8b8b8b8b), imm:0x1
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x3d3d3d3f3d3d3d3f, 0x8b8b8b8b8b8b8b8b, 0x1, x6, 32, x7)

    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with dataset: sbox64
    // result rd:x17(0x6464646064646460), rs1:x15(0x8c8c8c8c8c8c8c8c), imm:0x2
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x6464646064646460, 0x8c8c8c8c8c8c8c8c, 0x2, x1, 0, x2)

inst_141:
    // Test 141:  Test with dataset: sbox64
    // result rd:x18(0x5d5d5d555d5d5d55), rs1:x14(0x8d8d8d8d8d8d8d8d), imm:0x3
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x5d5d5d555d5d5d55, 0x8d8d8d8d8d8d8d8d, 0x3, x1, 8, x2)

inst_142:
    // Test 142:  Test with dataset: sbox64
    // result rd:x19(0x1919190919191909), rs1:x13(0x8e8e8e8e8e8e8e8e), imm:0x4
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x1919190919191909, 0x8e8e8e8e8e8e8e8e, 0x4, x1, 16, x2)

inst_143:
    // Test 143:  Test with dataset: sbox64
    // result rd:x20(0x7373735373737353), rs1:x12(0x8f8f8f8f8f8f8f8f), imm:0x5
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x7373735373737353, 0x8f8f8f8f8f8f8f8f, 0x5, x1, 24, x2)

inst_144:
    // Test 144:  Test with dataset: sbox64
    // result rd:x21(0x6060606160606061), rs1:x11(0x9090909090909090), imm:0x0
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x6060606160606061, 0x9090909090909090, 0x0, x1, 32, x2)

    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with dataset: sbox64
    // result rd:x22(0x8181818381818183), rs1:x10(0x9191919191919191), imm:0x1
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x8181818381818183, 0x9191919191919191, 0x1, x1, 0, x2)

inst_146:
    // Test 146:  Test with dataset: sbox64
    // result rd:x23(0x4f4f4f4b4f4f4f4b), rs1:x9(0x9292929292929292), imm:0x2
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x4f4f4f4b4f4f4f4b, 0x9292929292929292, 0x2, x1, 8, x2)

inst_147:
    // Test 147:  Test with dataset: sbox64
    // result rd:x24(0xdcdcdcd4dcdcdcd4), rs1:x8(0x9393939393939393), imm:0x3
    TEST_IMM_OP(aes64ks1i, x24, x8, 0xdcdcdcd4dcdcdcd4, 0x9393939393939393, 0x3, x1, 16, x2)

inst_148:
    // Test 148:  Test with dataset: sbox64
    // result rd:x25(0x2222223222222232), rs1:x7(0x9494949494949494), imm:0x4
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x2222223222222232, 0x9494949494949494, 0x4, x1, 24, x2)

inst_149:
    // Test 149:  Test with dataset: sbox64
    // result rd:x26(0x2a2a2a0a2a2a2a0a), rs1:x6(0x9595959595959595), imm:0x5
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x2a2a2a0a2a2a2a0a, 0x9595959595959595, 0x5, x1, 32, x2)

    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with dataset: sbox64
    // result rd:x27(0x909090d0909090d0), rs1:x5(0x9696969696969696), imm:0x6
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x909090d0909090d0, 0x9696969696969696, 0x6, x6, 0, x7)

inst_151:
    // Test 151:  Test with dataset: sbox64
    // result rd:x28(0x8888880888888808), rs1:x4(0x9797979797979797), imm:0x7
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x8888880888888808, 0x9797979797979797, 0x7, x6, 8, x7)

inst_152:
    // Test 152:  Test with dataset: sbox64
    // result rd:x29(0x4646465d4646465d), rs1:x3(0x9898989898989898), imm:0x8
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x4646465d4646465d, 0x9898989898989898, 0x8, x6, 16, x7)

inst_153:
    // Test 153:  Test with dataset: sbox64
    // result rd:x30(0xeeeeeed8eeeeeed8), rs1:x2(0x9999999999999999), imm:0x9
    TEST_IMM_OP(aes64ks1i, x30, x2, 0xeeeeeed8eeeeeed8, 0x9999999999999999, 0x9, x6, 24, x7)

inst_154:
    // Test 154:  Test with dataset: sbox64
    // result rd:x31(0xb8b8b8b8b8b8b8b8), rs1:x1(0x9a9a9a9a9a9a9a9a), imm:0xa
    TEST_IMM_OP(aes64ks1i, x31, x1, 0xb8b8b8b8b8b8b8b8, 0x9a9a9a9a9a9a9a9a, 0xa, x6, 32, x7)

    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with dataset: sbox64
    // result rd:x1(0x1414141614141416), rs1:x31(0x9b9b9b9b9b9b9b9b), imm:0x1
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x1414141614141416, 0x9b9b9b9b9b9b9b9b, 0x1, x6, 0, x7)

inst_156:
    // Test 156:  Test with dataset: sbox64
    // result rd:x2(0xdedededadedededa), rs1:x30(0x9c9c9c9c9c9c9c9c), imm:0x2
    TEST_IMM_OP(aes64ks1i, x2, x30, 0xdedededadedededa, 0x9c9c9c9c9c9c9c9c, 0x2, x6, 8, x7)

inst_157:
    // Test 157:  Test with dataset: sbox64
    // result rd:x3(0x5e5e5e565e5e5e56), rs1:x29(0x9d9d9d9d9d9d9d9d), imm:0x3
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x5e5e5e565e5e5e56, 0x9d9d9d9d9d9d9d9d, 0x3, x6, 16, x7)

inst_158:
    // Test 158:  Test with dataset: sbox64
    // result rd:x4(0x0b0b0b1b0b0b0b1b), rs1:x28(0x9e9e9e9e9e9e9e9e), imm:0x4
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x0b0b0b1b0b0b0b1b, 0x9e9e9e9e9e9e9e9e, 0x4, x6, 24, x7)

inst_159:
    // Test 159:  Test with dataset: sbox64
    // result rd:x5(0xdbdbdbfbdbdbdbfb), rs1:x27(0x9f9f9f9f9f9f9f9f), imm:0x5
    TEST_IMM_OP(aes64ks1i, x5, x27, 0xdbdbdbfbdbdbdbfb, 0x9f9f9f9f9f9f9f9f, 0x5, x6, 32, x7)

    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with dataset: sbox64
    // result rd:x6(0xe0e0e0e1e0e0e0e1), rs1:x26(0xa0a0a0a0a0a0a0a0), imm:0x0
    TEST_IMM_OP(aes64ks1i, x6, x26, 0xe0e0e0e1e0e0e0e1, 0xa0a0a0a0a0a0a0a0, 0x0, x1, 0, x2)

inst_161:
    // Test 161:  Test with dataset: sbox64
    // result rd:x7(0x3232323032323230), rs1:x25(0xa1a1a1a1a1a1a1a1), imm:0x1
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x3232323032323230, 0xa1a1a1a1a1a1a1a1, 0x1, x1, 8, x2)

inst_162:
    // Test 162:  Test with dataset: sbox64
    // result rd:x8(0x3a3a3a3e3a3a3a3e), rs1:x24(0xa2a2a2a2a2a2a2a2), imm:0x2
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x3a3a3a3e3a3a3a3e, 0xa2a2a2a2a2a2a2a2, 0x2, x1, 16, x2)

inst_163:
    // Test 163:  Test with dataset: sbox64
    // result rd:x9(0x0a0a0a020a0a0a02), rs1:x23(0xa3a3a3a3a3a3a3a3), imm:0x3
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x0a0a0a020a0a0a02, 0xa3a3a3a3a3a3a3a3, 0x3, x1, 24, x2)

inst_164:
    // Test 164:  Test with dataset: sbox64
    // result rd:x10(0x4949495949494959), rs1:x22(0xa4a4a4a4a4a4a4a4), imm:0x4
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x4949495949494959, 0xa4a4a4a4a4a4a4a4, 0x4, x1, 32, x2)

    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with dataset: sbox64
    // result rd:x11(0x0606062606060626), rs1:x21(0xa5a5a5a5a5a5a5a5), imm:0x5
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x0606062606060626, 0xa5a5a5a5a5a5a5a5, 0x5, x1, 0, x7)

inst_166:
    // Test 166:  Test with dataset: sbox64
    // result rd:x12(0x2424246424242464), rs1:x20(0xa6a6a6a6a6a6a6a6), imm:0x6
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x2424246424242464, 0xa6a6a6a6a6a6a6a6, 0x6, x1, 8, x7)

inst_167:
    // Test 167:  Test with dataset: sbox64
    // result rd:x13(0x5c5c5cdc5c5c5cdc), rs1:x19(0xa7a7a7a7a7a7a7a7), imm:0x7
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x5c5c5cdc5c5c5cdc, 0xa7a7a7a7a7a7a7a7, 0x7, x1, 16, x7)

inst_168:
    // Test 168:  Test with dataset: sbox64
    // result rd:x14(0xc2c2c2d9c2c2c2d9), rs1:x18(0xa8a8a8a8a8a8a8a8), imm:0x8
    TEST_IMM_OP(aes64ks1i, x14, x18, 0xc2c2c2d9c2c2c2d9, 0xa8a8a8a8a8a8a8a8, 0x8, x1, 24, x7)

inst_169:
    // Test 169:  Test with dataset: sbox64
    // result rd:x15(0xd3d3d3e5d3d3d3e5), rs1:x17(0xa9a9a9a9a9a9a9a9), imm:0x9
    TEST_IMM_OP(aes64ks1i, x15, x17, 0xd3d3d3e5d3d3d3e5, 0xa9a9a9a9a9a9a9a9, 0x9, x1, 32, x7)

    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with dataset: sbox64
    // result rd:x16(0xacacacacacacacac), rs1:x16(0xaaaaaaaaaaaaaaaa), imm:0xa
    TEST_IMM_OP(aes64ks1i, x16, x16, 0xacacacacacacacac, 0xaaaaaaaaaaaaaaaa, 0xa, x2, 0, x3)

inst_171:
    // Test 171:  Test with dataset: sbox64
    // result rd:x17(0x6262626062626260), rs1:x15(0xabababababababab), imm:0x1
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x6262626062626260, 0xabababababababab, 0x1, x2, 8, x3)

inst_172:
    // Test 172:  Test with dataset: sbox64
    // result rd:x18(0x9191919591919195), rs1:x14(0xacacacacacacacac), imm:0x2
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x9191919591919195, 0xacacacacacacacac, 0x2, x2, 16, x3)

inst_173:
    // Test 173:  Test with dataset: sbox64
    // result rd:x19(0x9595959d9595959d), rs1:x13(0xadadadadadadadad), imm:0x3
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x9595959d9595959d, 0xadadadadadadadad, 0x3, x2, 24, x3)

inst_174:
    // Test 174:  Test with dataset: sbox64
    // result rd:x20(0xe4e4e4f4e4e4e4f4), rs1:x12(0xaeaeaeaeaeaeaeae), imm:0x4
    TEST_IMM_OP(aes64ks1i, x20, x12, 0xe4e4e4f4e4e4e4f4, 0xaeaeaeaeaeaeaeae, 0x4, x2, 32, x3)

    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with dataset: sbox64
    // result rd:x21(0x7979795979797959), rs1:x11(0xafafafafafafafaf), imm:0x5
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x7979795979797959, 0xafafafafafafafaf, 0x5, x1, 0, x2)

inst_176:
    // Test 176:  Test with dataset: sbox64
    // result rd:x22(0xe7e7e7e6e7e7e7e6), rs1:x10(0xb0b0b0b0b0b0b0b0), imm:0x0
    TEST_IMM_OP(aes64ks1i, x22, x10, 0xe7e7e7e6e7e7e7e6, 0xb0b0b0b0b0b0b0b0, 0x0, x1, 8, x2)

inst_177:
    // Test 177:  Test with dataset: sbox64
    // result rd:x23(0xc8c8c8cac8c8c8ca), rs1:x9(0xb1b1b1b1b1b1b1b1), imm:0x1
    TEST_IMM_OP(aes64ks1i, x23, x9, 0xc8c8c8cac8c8c8ca, 0xb1b1b1b1b1b1b1b1, 0x1, x1, 16, x2)

inst_178:
    // Test 178:  Test with dataset: sbox64
    // result rd:x24(0x3737373337373733), rs1:x8(0xb2b2b2b2b2b2b2b2), imm:0x2
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x3737373337373733, 0xb2b2b2b2b2b2b2b2, 0x2, x1, 24, x2)

inst_179:
    // Test 179:  Test with dataset: sbox64
    // result rd:x25(0x6d6d6d656d6d6d65), rs1:x7(0xb3b3b3b3b3b3b3b3), imm:0x3
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x6d6d6d656d6d6d65, 0xb3b3b3b3b3b3b3b3, 0x3, x1, 32, x2)

    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with dataset: sbox64
    // result rd:x26(0x8d8d8d9d8d8d8d9d), rs1:x6(0xb4b4b4b4b4b4b4b4), imm:0x4
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x8d8d8d9d8d8d8d9d, 0xb4b4b4b4b4b4b4b4, 0x4, x1, 0, x7)

inst_181:
    // Test 181:  Test with dataset: sbox64
    // result rd:x27(0xd5d5d5f5d5d5d5f5), rs1:x5(0xb5b5b5b5b5b5b5b5), imm:0x5
    TEST_IMM_OP(aes64ks1i, x27, x5, 0xd5d5d5f5d5d5d5f5, 0xb5b5b5b5b5b5b5b5, 0x5, x1, 8, x7)

inst_182:
    // Test 182:  Test with dataset: sbox64
    // result rd:x28(0x4e4e4e0e4e4e4e0e), rs1:x4(0xb6b6b6b6b6b6b6b6), imm:0x6
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x4e4e4e0e4e4e4e0e, 0xb6b6b6b6b6b6b6b6, 0x6, x1, 16, x7)

inst_183:
    // Test 183:  Test with dataset: sbox64
    // result rd:x29(0xa9a9a929a9a9a929), rs1:x3(0xb7b7b7b7b7b7b7b7), imm:0x7
    TEST_IMM_OP(aes64ks1i, x29, x3, 0xa9a9a929a9a9a929, 0xb7b7b7b7b7b7b7b7, 0x7, x1, 24, x7)

inst_184:
    // Test 184:  Test with dataset: sbox64
    // result rd:x30(0x6c6c6c776c6c6c77), rs1:x2(0xb8b8b8b8b8b8b8b8), imm:0x8
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x6c6c6c776c6c6c77, 0xb8b8b8b8b8b8b8b8, 0x8, x1, 32, x7)

    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with dataset: sbox64
    // result rd:x31(0x5656566056565660), rs1:x1(0xb9b9b9b9b9b9b9b9), imm:0x9
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x5656566056565660, 0xb9b9b9b9b9b9b9b9, 0x9, x5, 0, x6)

inst_186:
    // Test 186:  Test with dataset: sbox64
    // result rd:x1(0xf4f4f4f4f4f4f4f4), rs1:x31(0xbabababababababa), imm:0xa
    TEST_IMM_OP(aes64ks1i, x1, x31, 0xf4f4f4f4f4f4f4f4, 0xbabababababababa, 0xa, x5, 8, x6)

inst_187:
    // Test 187:  Test with dataset: sbox64
    // result rd:x2(0xeaeaeae8eaeaeae8), rs1:x30(0xbbbbbbbbbbbbbbbb), imm:0x1
    TEST_IMM_OP(aes64ks1i, x2, x30, 0xeaeaeae8eaeaeae8, 0xbbbbbbbbbbbbbbbb, 0x1, x5, 16, x6)

inst_188:
    // Test 188:  Test with dataset: sbox64
    // result rd:x3(0x6565656165656561), rs1:x29(0xbcbcbcbcbcbcbcbc), imm:0x2
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x6565656165656561, 0xbcbcbcbcbcbcbcbc, 0x2, x5, 24, x6)

inst_189:
    // Test 189:  Test with dataset: sbox64
    // result rd:x4(0x7a7a7a727a7a7a72), rs1:x28(0xbdbdbdbdbdbdbdbd), imm:0x3
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x7a7a7a727a7a7a72, 0xbdbdbdbdbdbdbdbd, 0x3, x5, 32, x6)

    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with dataset: sbox64
    // result rd:x5(0xaeaeaebeaeaeaebe), rs1:x27(0xbebebebebebebebe), imm:0x4
    TEST_IMM_OP(aes64ks1i, x5, x27, 0xaeaeaebeaeaeaebe, 0xbebebebebebebebe, 0x4, x1, 0, x2)

inst_191:
    // Test 191:  Test with dataset: sbox64
    // result rd:x6(0x0808082808080828), rs1:x26(0xbfbfbfbfbfbfbfbf), imm:0x5
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x0808082808080828, 0xbfbfbfbfbfbfbfbf, 0x5, x1, 8, x2)

inst_192:
    // Test 192:  Test with dataset: sbox64
    // result rd:x7(0xbabababbbabababb), rs1:x25(0xc0c0c0c0c0c0c0c0), imm:0x0
    TEST_IMM_OP(aes64ks1i, x7, x25, 0xbabababbbabababb, 0xc0c0c0c0c0c0c0c0, 0x0, x1, 16, x2)

inst_193:
    // Test 193:  Test with dataset: sbox64
    // result rd:x8(0x7878787a7878787a), rs1:x24(0xc1c1c1c1c1c1c1c1), imm:0x1
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x7878787a7878787a, 0xc1c1c1c1c1c1c1c1, 0x1, x1, 24, x2)

inst_194:
    // Test 194:  Test with dataset: sbox64
    // result rd:x9(0x2525252125252521), rs1:x23(0xc2c2c2c2c2c2c2c2), imm:0x2
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x2525252125252521, 0xc2c2c2c2c2c2c2c2, 0x2, x1, 32, x2)

    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with dataset: sbox64
    // result rd:x10(0x2e2e2e262e2e2e26), rs1:x22(0xc3c3c3c3c3c3c3c3), imm:0x3
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x2e2e2e262e2e2e26, 0xc3c3c3c3c3c3c3c3, 0x3, x1, 0, x2)

inst_196:
    // Test 196:  Test with dataset: sbox64
    // result rd:x11(0x1c1c1c0c1c1c1c0c), rs1:x21(0xc4c4c4c4c4c4c4c4), imm:0x4
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x1c1c1c0c1c1c1c0c, 0xc4c4c4c4c4c4c4c4, 0x4, x1, 8, x2)

inst_197:
    // Test 197:  Test with dataset: sbox64
    // result rd:x12(0xa6a6a686a6a6a686), rs1:x20(0xc5c5c5c5c5c5c5c5), imm:0x5
    TEST_IMM_OP(aes64ks1i, x12, x20, 0xa6a6a686a6a6a686, 0xc5c5c5c5c5c5c5c5, 0x5, x1, 16, x2)

inst_198:
    // Test 198:  Test with dataset: sbox64
    // result rd:x13(0xb4b4b4f4b4b4b4f4), rs1:x19(0xc6c6c6c6c6c6c6c6), imm:0x6
    TEST_IMM_OP(aes64ks1i, x13, x19, 0xb4b4b4f4b4b4b4f4, 0xc6c6c6c6c6c6c6c6, 0x6, x1, 24, x2)

inst_199:
    // Test 199:  Test with dataset: sbox64
    // result rd:x14(0xc6c6c646c6c6c646), rs1:x18(0xc7c7c7c7c7c7c7c7), imm:0x7
    TEST_IMM_OP(aes64ks1i, x14, x18, 0xc6c6c646c6c6c646, 0xc7c7c7c7c7c7c7c7, 0x7, x1, 32, x2)

    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with dataset: sbox64
    // result rd:x15(0xe8e8e8f3e8e8e8f3), rs1:x17(0xc8c8c8c8c8c8c8c8), imm:0x8
    TEST_IMM_OP(aes64ks1i, x15, x17, 0xe8e8e8f3e8e8e8f3, 0xc8c8c8c8c8c8c8c8, 0x8, x3, 0, x4)

inst_201:
    // Test 201:  Test with dataset: sbox64
    // result rd:x16(0xddddddebddddddeb), rs1:x16(0xc9c9c9c9c9c9c9c9), imm:0x9
    TEST_IMM_OP(aes64ks1i, x16, x16, 0xddddddebddddddeb, 0xc9c9c9c9c9c9c9c9, 0x9, x3, 8, x4)

inst_202:
    // Test 202:  Test with dataset: sbox64
    // result rd:x17(0x7474747474747474), rs1:x15(0xcacacacacacacaca), imm:0xa
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x7474747474747474, 0xcacacacacacacaca, 0xa, x3, 16, x4)

inst_203:
    // Test 203:  Test with dataset: sbox64
    // result rd:x18(0x1f1f1f1d1f1f1f1d), rs1:x14(0xcbcbcbcbcbcbcbcb), imm:0x1
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x1f1f1f1d1f1f1f1d, 0xcbcbcbcbcbcbcbcb, 0x1, x3, 24, x4)

inst_204:
    // Test 204:  Test with dataset: sbox64
    // result rd:x19(0x4b4b4b4f4b4b4b4f), rs1:x13(0xcccccccccccccccc), imm:0x2
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x4b4b4b4f4b4b4b4f, 0xcccccccccccccccc, 0x2, x3, 32, x4)

    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with dataset: sbox64
    // result rd:x20(0xbdbdbdb5bdbdbdb5), rs1:x12(0xcdcdcdcdcdcdcdcd), imm:0x3
    TEST_IMM_OP(aes64ks1i, x20, x12, 0xbdbdbdb5bdbdbdb5, 0xcdcdcdcdcdcdcdcd, 0x3, x1, 0, x2)

inst_206:
    // Test 206:  Test with dataset: sbox64
    // result rd:x21(0x8b8b8b9b8b8b8b9b), rs1:x11(0xcececececececece), imm:0x4
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x8b8b8b9b8b8b8b9b, 0xcececececececece, 0x4, x1, 8, x2)

inst_207:
    // Test 207:  Test with dataset: sbox64
    // result rd:x22(0x8a8a8aaa8a8a8aaa), rs1:x10(0xcfcfcfcfcfcfcfcf), imm:0x5
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x8a8a8aaa8a8a8aaa, 0xcfcfcfcfcfcfcfcf, 0x5, x1, 16, x2)

inst_208:
    // Test 208:  Test with dataset: sbox64
    // result rd:x23(0x7070707170707071), rs1:x9(0xd0d0d0d0d0d0d0d0), imm:0x0
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x7070707170707071, 0xd0d0d0d0d0d0d0d0, 0x0, x1, 24, x2)

inst_209:
    // Test 209:  Test with dataset: sbox64
    // result rd:x24(0x3e3e3e3c3e3e3e3c), rs1:x8(0xd1d1d1d1d1d1d1d1), imm:0x1
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x3e3e3e3c3e3e3e3c, 0xd1d1d1d1d1d1d1d1, 0x1, x1, 32, x2)

    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with dataset: sbox64
    // result rd:x25(0xb5b5b5b1b5b5b5b1), rs1:x7(0xd2d2d2d2d2d2d2d2), imm:0x2
    TEST_IMM_OP(aes64ks1i, x25, x7, 0xb5b5b5b1b5b5b5b1, 0xd2d2d2d2d2d2d2d2, 0x2, x1, 0, x2)

inst_211:
    // Test 211:  Test with dataset: sbox64
    // result rd:x26(0x6666666e6666666e), rs1:x6(0xd3d3d3d3d3d3d3d3), imm:0x3
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x6666666e6666666e, 0xd3d3d3d3d3d3d3d3, 0x3, x1, 8, x2)

inst_212:
    // Test 212:  Test with dataset: sbox64
    // result rd:x27(0x4848485848484858), rs1:x5(0xd4d4d4d4d4d4d4d4), imm:0x4
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x4848485848484858, 0xd4d4d4d4d4d4d4d4, 0x4, x1, 16, x2)

inst_213:
    // Test 213:  Test with dataset: sbox64
    // result rd:x28(0x0303032303030323), rs1:x4(0xd5d5d5d5d5d5d5d5), imm:0x5
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x0303032303030323, 0xd5d5d5d5d5d5d5d5, 0x5, x1, 24, x2)

inst_214:
    // Test 214:  Test with dataset: sbox64
    // result rd:x29(0xf6f6f6b6f6f6f6b6), rs1:x3(0xd6d6d6d6d6d6d6d6), imm:0x6
    TEST_IMM_OP(aes64ks1i, x29, x3, 0xf6f6f6b6f6f6f6b6, 0xd6d6d6d6d6d6d6d6, 0x6, x1, 32, x2)

    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with dataset: sbox64
    // result rd:x30(0x0e0e0e8e0e0e0e8e), rs1:x2(0xd7d7d7d7d7d7d7d7), imm:0x7
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x0e0e0e8e0e0e0e8e, 0xd7d7d7d7d7d7d7d7, 0x7, x4, 0, x5)

inst_216:
    // Test 216:  Test with dataset: sbox64
    // result rd:x31(0x6161617a6161617a), rs1:x1(0xd8d8d8d8d8d8d8d8), imm:0x8
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x6161617a6161617a, 0xd8d8d8d8d8d8d8d8, 0x8, x4, 8, x5)

inst_217:
    // Test 217:  Test with dataset: sbox64
    // result rd:x1(0x3535350335353503), rs1:x31(0xd9d9d9d9d9d9d9d9), imm:0x9
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x3535350335353503, 0xd9d9d9d9d9d9d9d9, 0x9, x4, 16, x5)

inst_218:
    // Test 218:  Test with dataset: sbox64
    // result rd:x2(0x5757575757575757), rs1:x30(0xdadadadadadadada), imm:0xa
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x5757575757575757, 0xdadadadadadadada, 0xa, x4, 24, x5)

inst_219:
    // Test 219:  Test with dataset: sbox64
    // result rd:x3(0xb9b9b9bbb9b9b9bb), rs1:x29(0xdbdbdbdbdbdbdbdb), imm:0x1
    TEST_IMM_OP(aes64ks1i, x3, x29, 0xb9b9b9bbb9b9b9bb, 0xdbdbdbdbdbdbdbdb, 0x1, x4, 32, x5)

    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with dataset: sbox64
    // result rd:x4(0x8686868286868682), rs1:x28(0xdcdcdcdcdcdcdcdc), imm:0x2
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x8686868286868682, 0xdcdcdcdcdcdcdcdc, 0x2, x1, 0, x2)

inst_221:
    // Test 221:  Test with dataset: sbox64
    // result rd:x5(0xc1c1c1c9c1c1c1c9), rs1:x27(0xdddddddddddddddd), imm:0x3
    TEST_IMM_OP(aes64ks1i, x5, x27, 0xc1c1c1c9c1c1c1c9, 0xdddddddddddddddd, 0x3, x1, 8, x2)

inst_222:
    // Test 222:  Test with dataset: sbox64
    // result rd:x6(0x1d1d1d0d1d1d1d0d), rs1:x26(0xdededededededede), imm:0x4
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x1d1d1d0d1d1d1d0d, 0xdededededededede, 0x4, x1, 16, x2)

inst_223:
    // Test 223:  Test with dataset: sbox64
    // result rd:x7(0x9e9e9ebe9e9e9ebe), rs1:x25(0xdfdfdfdfdfdfdfdf), imm:0x5
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x9e9e9ebe9e9e9ebe, 0xdfdfdfdfdfdfdfdf, 0x5, x1, 24, x2)

inst_224:
    // Test 224:  Test with dataset: sbox64
    // result rd:x8(0xe1e1e1e0e1e1e1e0), rs1:x24(0xe0e0e0e0e0e0e0e0), imm:0x0
    TEST_IMM_OP(aes64ks1i, x8, x24, 0xe1e1e1e0e1e1e1e0, 0xe0e0e0e0e0e0e0e0, 0x0, x1, 32, x2)

    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with dataset: sbox64
    // result rd:x9(0xf8f8f8faf8f8f8fa), rs1:x23(0xe1e1e1e1e1e1e1e1), imm:0x1
    TEST_IMM_OP(aes64ks1i, x9, x23, 0xf8f8f8faf8f8f8fa, 0xe1e1e1e1e1e1e1e1, 0x1, x1, 0, x2)

inst_226:
    // Test 226:  Test with dataset: sbox64
    // result rd:x10(0x9898989c9898989c), rs1:x22(0xe2e2e2e2e2e2e2e2), imm:0x2
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x9898989c9898989c, 0xe2e2e2e2e2e2e2e2, 0x2, x1, 8, x2)

inst_227:
    // Test 227:  Test with dataset: sbox64
    // result rd:x11(0x1111111911111119), rs1:x21(0xe3e3e3e3e3e3e3e3), imm:0x3
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x1111111911111119, 0xe3e3e3e3e3e3e3e3, 0x3, x1, 16, x2)

inst_228:
    // Test 228:  Test with dataset: sbox64
    // result rd:x12(0x6969697969696979), rs1:x20(0xe4e4e4e4e4e4e4e4), imm:0x4
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x6969697969696979, 0xe4e4e4e4e4e4e4e4, 0x4, x1, 24, x2)

inst_229:
    // Test 229:  Test with dataset: sbox64
    // result rd:x13(0xd9d9d9f9d9d9d9f9), rs1:x19(0xe5e5e5e5e5e5e5e5), imm:0x5
    TEST_IMM_OP(aes64ks1i, x13, x19, 0xd9d9d9f9d9d9d9f9, 0xe5e5e5e5e5e5e5e5, 0x5, x1, 32, x2)

    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with dataset: sbox64
    // result rd:x14(0x8e8e8ece8e8e8ece), rs1:x18(0xe6e6e6e6e6e6e6e6), imm:0x6
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x8e8e8ece8e8e8ece, 0xe6e6e6e6e6e6e6e6, 0x6, x4, 0, x5)

inst_231:
    // Test 231:  Test with dataset: sbox64
    // result rd:x15(0x9494941494949414), rs1:x17(0xe7e7e7e7e7e7e7e7), imm:0x7
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x9494941494949414, 0xe7e7e7e7e7e7e7e7, 0x7, x4, 8, x5)

inst_232:
    // Test 232:  Test with dataset: sbox64
    // result rd:x16(0x9b9b9b809b9b9b80), rs1:x16(0xe8e8e8e8e8e8e8e8), imm:0x8
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x9b9b9b809b9b9b80, 0xe8e8e8e8e8e8e8e8, 0x8, x4, 16, x5)

inst_233:
    // Test 233:  Test with dataset: sbox64
    // result rd:x17(0x1e1e1e281e1e1e28), rs1:x15(0xe9e9e9e9e9e9e9e9), imm:0x9
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x1e1e1e281e1e1e28, 0xe9e9e9e9e9e9e9e9, 0x9, x4, 24, x5)

inst_234:
    // Test 234:  Test with dataset: sbox64
    // result rd:x18(0x8787878787878787), rs1:x14(0xeaeaeaeaeaeaeaea), imm:0xa
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x8787878787878787, 0xeaeaeaeaeaeaeaea, 0xa, x4, 32, x5)

    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with dataset: sbox64
    // result rd:x19(0xe9e9e9ebe9e9e9eb), rs1:x13(0xebebebebebebebeb), imm:0x1
    TEST_IMM_OP(aes64ks1i, x19, x13, 0xe9e9e9ebe9e9e9eb, 0xebebebebebebebeb, 0x1, x1, 0, x2)

inst_236:
    // Test 236:  Test with dataset: sbox64
    // result rd:x20(0xcecececacecececa), rs1:x12(0xecececececececec), imm:0x2
    TEST_IMM_OP(aes64ks1i, x20, x12, 0xcecececacecececa, 0xecececececececec, 0x2, x1, 8, x2)

inst_237:
    // Test 237:  Test with dataset: sbox64
    // result rd:x21(0x5555555d5555555d), rs1:x11(0xedededededededed), imm:0x3
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x5555555d5555555d, 0xedededededededed, 0x3, x1, 16, x2)

inst_238:
    // Test 238:  Test with dataset: sbox64
    // result rd:x22(0x2828283828282838), rs1:x10(0xeeeeeeeeeeeeeeee), imm:0x4
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x2828283828282838, 0xeeeeeeeeeeeeeeee, 0x4, x1, 24, x2)

inst_239:
    // Test 239:  Test with dataset: sbox64
    // result rd:x23(0xdfdfdfffdfdfdfff), rs1:x9(0xefefefefefefefef), imm:0x5
    TEST_IMM_OP(aes64ks1i, x23, x9, 0xdfdfdfffdfdfdfff, 0xefefefefefefefef, 0x5, x1, 32, x2)

    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with dataset: sbox64
    // result rd:x24(0x8c8c8c8d8c8c8c8d), rs1:x8(0xf0f0f0f0f0f0f0f0), imm:0x0
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x8c8c8c8d8c8c8c8d, 0xf0f0f0f0f0f0f0f0, 0x0, x1, 0, x2)

inst_241:
    // Test 241:  Test with dataset: sbox64
    // result rd:x25(0xa1a1a1a3a1a1a1a3), rs1:x7(0xf1f1f1f1f1f1f1f1), imm:0x1
    TEST_IMM_OP(aes64ks1i, x25, x7, 0xa1a1a1a3a1a1a1a3, 0xf1f1f1f1f1f1f1f1, 0x1, x1, 8, x2)

inst_242:
    // Test 242:  Test with dataset: sbox64
    // result rd:x26(0x8989898d8989898d), rs1:x6(0xf2f2f2f2f2f2f2f2), imm:0x2
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x8989898d8989898d, 0xf2f2f2f2f2f2f2f2, 0x2, x1, 16, x2)

inst_243:
    // Test 243:  Test with dataset: sbox64
    // result rd:x27(0x0d0d0d050d0d0d05), rs1:x5(0xf3f3f3f3f3f3f3f3), imm:0x3
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x0d0d0d050d0d0d05, 0xf3f3f3f3f3f3f3f3, 0x3, x1, 24, x2)

inst_244:
    // Test 244:  Test with dataset: sbox64
    // result rd:x28(0xbfbfbfafbfbfbfaf), rs1:x4(0xf4f4f4f4f4f4f4f4), imm:0x4
    TEST_IMM_OP(aes64ks1i, x28, x4, 0xbfbfbfafbfbfbfaf, 0xf4f4f4f4f4f4f4f4, 0x4, x1, 32, x2)

    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with dataset: sbox64
    // result rd:x29(0xe6e6e6c6e6e6e6c6), rs1:x3(0xf5f5f5f5f5f5f5f5), imm:0x5
    TEST_IMM_OP(aes64ks1i, x29, x3, 0xe6e6e6c6e6e6e6c6, 0xf5f5f5f5f5f5f5f5, 0x5, x4, 0, x5)

inst_246:
    // Test 246:  Test with dataset: sbox64
    // result rd:x30(0x4242420242424202), rs1:x2(0xf6f6f6f6f6f6f6f6), imm:0x6
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x4242420242424202, 0xf6f6f6f6f6f6f6f6, 0x6, x4, 8, x5)

inst_247:
    // Test 247:  Test with dataset: sbox64
    // result rd:x31(0x686868e8686868e8), rs1:x1(0xf7f7f7f7f7f7f7f7), imm:0x7
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x686868e8686868e8, 0xf7f7f7f7f7f7f7f7, 0x7, x4, 16, x5)

inst_248:
    // Test 248:  Test with dataset: sbox64
    // result rd:x1(0x4141415a4141415a), rs1:x31(0xf8f8f8f8f8f8f8f8), imm:0x8
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x4141415a4141415a, 0xf8f8f8f8f8f8f8f8, 0x8, x4, 24, x5)

inst_249:
    // Test 249:  Test with dataset: sbox64
    // result rd:x2(0x999999af999999af), rs1:x30(0xf9f9f9f9f9f9f9f9), imm:0x9
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x999999af999999af, 0xf9f9f9f9f9f9f9f9, 0x9, x4, 32, x5)

    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with dataset: sbox64
    // result rd:x3(0x2d2d2d2d2d2d2d2d), rs1:x29(0xfafafafafafafafa), imm:0xa
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x2d2d2d2d2d2d2d2d, 0xfafafafafafafafa, 0xa, x1, 0, x2)

inst_251:
    // Test 251:  Test with dataset: sbox64
    // result rd:x4(0x0f0f0f0d0f0f0f0d), rs1:x28(0xfbfbfbfbfbfbfbfb), imm:0x1
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x0f0f0f0d0f0f0f0d, 0xfbfbfbfbfbfbfbfb, 0x1, x1, 8, x2)

inst_252:
    // Test 252:  Test with dataset: sbox64
    // result rd:x5(0xb0b0b0b4b0b0b0b4), rs1:x27(0xfcfcfcfcfcfcfcfc), imm:0x2
    TEST_IMM_OP(aes64ks1i, x5, x27, 0xb0b0b0b4b0b0b0b4, 0xfcfcfcfcfcfcfcfc, 0x2, x1, 16, x2)

inst_253:
    // Test 253:  Test with dataset: sbox64
    // result rd:x6(0x5454545c5454545c), rs1:x26(0xfdfdfdfdfdfdfdfd), imm:0x3
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x5454545c5454545c, 0xfdfdfdfdfdfdfdfd, 0x3, x1, 24, x2)

inst_254:
    // Test 254:  Test with dataset: sbox64
    // result rd:x7(0xbbbbbbabbbbbbbab), rs1:x25(0xfefefefefefefefe), imm:0x4
    TEST_IMM_OP(aes64ks1i, x7, x25, 0xbbbbbbabbbbbbbab, 0xfefefefefefefefe, 0x4, x1, 32, x2)

    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with dataset: sbox64
    // result rd:x8(0x1616163616161636), rs1:x24(0xffffffffffffffff), imm:0x5
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x1616163616161636, 0xffffffffffffffff, 0x5, x1, 0, x2)
	
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

