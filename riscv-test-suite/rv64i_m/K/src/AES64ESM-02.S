// RISC-V Architectural Validation Test AES64ESM-02
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
// Description: Testing instruction 'aes64esm'.
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

    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with dataset: sbox64
    // result rd:x1(0x63fc1689fc168963), rs1:x31(0x0000000000000000), rs2:x16(0xffffffffffffffff)
    TEST_RR_OP(aes64esm, x1, x31, x16, 0x63fc1689fc168963, 0x0, 0xffffffffffffffff, x6, 0, x7)

inst_1:
    // Test 1:  Test with dataset: sbox64
    // result rd:x2(0x7c2ebbe92ebbe97c), rs1:x30(0x0101010101010101), rs2:x15(0xfefefefefefefefe)
    TEST_RR_OP(aes64esm, x2, x30, x15, 0x7c2ebbe92ebbe97c, 0x101010101010101, 0xfefefefefefefefe, x6, 8, x7)

inst_2:
    // Test 2:  Test with dataset: sbox64
    // result rd:x3(0x7712543112543177), rs1:x29(0x0202020202020202), rs2:x14(0xfdfdfdfdfdfdfdfd)
    TEST_RR_OP(aes64esm, x3, x29, x14, 0x7712543112543177, 0x202020202020202, 0xfdfdfdfdfdfdfdfd, x6, 16, x7)

inst_3:
    // Test 3:  Test with dataset: sbox64
    // result rd:x4(0x7b3db0f63db0f67b), rs1:x28(0x0303030303030303), rs2:x13(0xfcfcfcfcfcfcfcfc)
    TEST_RR_OP(aes64esm, x4, x28, x13, 0x7b3db0f63db0f67b, 0x303030303030303, 0xfcfcfcfcfcfcfcfc, x6, 24, x7)

inst_4:
    // Test 4:  Test with dataset: sbox64
    // result rd:x5(0xf2ee0f13ee0f13f2), rs1:x27(0x0404040404040404), rs2:x12(0xfbfbfbfbfbfbfbfb)
    TEST_RR_OP(aes64esm, x5, x27, x12, 0xf2ee0f13ee0f13f2, 0x404040404040404, 0xfbfbfbfbfbfbfbfb, x6, 32, x7)

    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with dataset: sbox64
    // result rd:x6(0x6ba12de7a12de76b), rs1:x26(0x0505050505050505), rs2:x11(0xfafafafafafafafa)
    TEST_RR_OP(aes64esm, x6, x26, x11, 0x6ba12de7a12de76b, 0x505050505050505, 0xfafafafafafafafa, x1, 0, x2)

inst_6:
    // Test 6:  Test with dataset: sbox64
    // result rd:x7(0x6f6e99986e99986f), rs1:x25(0x0606060606060606), rs2:x10(0xf9f9f9f9f9f9f9f9)
    TEST_RR_OP(aes64esm, x7, x25, x10, 0x6f6e99986e99986f, 0x606060606060606, 0xf9f9f9f9f9f9f9f9, x1, 8, x2)

inst_7:
    // Test 7:  Test with dataset: sbox64
    // result rd:x8(0xc55241d65241d6c5), rs1:x24(0x0707070707070707), rs2:x9(0xf8f8f8f8f8f8f8f8)
    TEST_RR_OP(aes64esm, x8, x24, x9, 0xc55241d65241d6c5, 0x707070707070707, 0xf8f8f8f8f8f8f8f8, x1, 16, x2)

inst_8:
    // Test 8:  Test with dataset: sbox64
    // result rd:x9(0x30d86880d8688030), rs1:x23(0x0808080808080808), rs2:x8(0xf7f7f7f7f7f7f7f7)
    TEST_RR_OP(aes64esm, x9, x23, x8, 0x30d86880d8688030, 0x808080808080808, 0xf7f7f7f7f7f7f7f7, x1, 24, x2)

inst_9:
    // Test 9:  Test with dataset: sbox64
    // result rd:x10(0x01c44287c4428701), rs1:x22(0x0909090909090909), rs2:x7(0xf6f6f6f6f6f6f6f6)
    TEST_RR_OP(aes64esm, x10, x22, x7, 0x01c44287c4428701, 0x909090909090909, 0xf6f6f6f6f6f6f6f6, x1, 32, x2)

    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with dataset: sbox64
    // result rd:x11(0x67ffe67effe67e67), rs1:x21(0x0a0a0a0a0a0a0a0a), rs2:x6(0xf5f5f5f5f5f5f5f5)
    TEST_RR_OP(aes64esm, x11, x21, x6, 0x67ffe67effe67e67, 0xa0a0a0a0a0a0a0a, 0xf5f5f5f5f5f5f5f5, x1, 0, x7)

inst_11:
    // Test 11:  Test with dataset: sbox64
    // result rd:x12(0x2b8cbf188cbf182b), rs1:x20(0x0b0b0b0b0b0b0b0b), rs2:x5(0xf4f4f4f4f4f4f4f4)
    TEST_RR_OP(aes64esm, x12, x20, x5, 0x2b8cbf188cbf182b, 0xb0b0b0b0b0b0b0b, 0xf4f4f4f4f4f4f4f4, x1, 8, x7)

inst_12:
    // Test 12:  Test with dataset: sbox64
    // result rd:x13(0xfef00d03f00d03fe), rs1:x19(0x0c0c0c0c0c0c0c0c), rs2:x4(0xf3f3f3f3f3f3f3f3)
    TEST_RR_OP(aes64esm, x13, x19, x4, 0xfef00d03f00d03fe, 0xc0c0c0c0c0c0c0c, 0xf3f3f3f3f3f3f3f3, x1, 16, x7)

inst_13:
    // Test 13:  Test with dataset: sbox64
    // result rd:x14(0xd735896b35896bd7), rs1:x18(0x0d0d0d0d0d0d0d0d), rs2:x3(0xf2f2f2f2f2f2f2f2)
    TEST_RR_OP(aes64esm, x14, x18, x3, 0xd735896b35896bd7, 0xd0d0d0d0d0d0d0d, 0xf2f2f2f2f2f2f2f2, x1, 24, x7)

inst_14:
    // Test 14:  Test with dataset: sbox64
    // result rd:x15(0xabb5a1bfb5a1bfab), rs1:x17(0x0e0e0e0e0e0e0e0e), rs2:x2(0xf1f1f1f1f1f1f1f1)
    TEST_RR_OP(aes64esm, x15, x17, x2, 0xabb5a1bfb5a1bfab, 0xe0e0e0e0e0e0e0e, 0xf1f1f1f1f1f1f1f1, x1, 32, x7)

    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with dataset: sbox64
    // result rd:x16(0x76638c99638c9976), rs1:x16(0x0f0f0f0f0f0f0f0f), rs2:x1(0xf0f0f0f0f0f0f0f0)
    TEST_RR_OP(aes64esm, x16, x16, x1, 0x76638c99638c9976, 0xf0f0f0f0f0f0f0f, 0xf0f0f0f0f0f0f0f0, x2, 0, x3)

inst_16:
    // Test 16:  Test with dataset: sbox64
    // result rd:x17(0xcaf5dfe0f5dfe0ca), rs1:x15(0x1010101010101010), rs2:x31(0xefefefefefefefef)
    TEST_RR_OP(aes64esm, x17, x15, x31, 0xcaf5dfe0f5dfe0ca, 0x1010101010101010, 0xefefefefefefefef, x2, 8, x3)

inst_17:
    // Test 17:  Test with dataset: sbox64
    // result rd:x18(0x826728cd6728cd82), rs1:x14(0x1111111111111111), rs2:x30(0xeeeeeeeeeeeeeeee)
    TEST_RR_OP(aes64esm, x18, x14, x30, 0x826728cd6728cd82, 0x1111111111111111, 0xeeeeeeeeeeeeeeee, x2, 16, x3)

inst_18:
    // Test 18:  Test with dataset: sbox64
    // result rd:x19(0xc97655ea7655eac9), rs1:x13(0x1212121212121212), rs2:x29(0xedededededededed)
    TEST_RR_OP(aes64esm, x19, x13, x29, 0xc97655ea7655eac9, 0x1212121212121212, 0xedededededededed, x2, 24, x3)

inst_19:
    // Test 19:  Test with dataset: sbox64
    // result rd:x20(0x7db3ce00b3ce007d), rs1:x12(0x1313131313131313), rs2:x28(0xecececececececec)
    TEST_RR_OP(aes64esm, x20, x12, x28, 0x7db3ce00b3ce007d, 0x1313131313131313, 0xecececececececec, x2, 32, x3)

    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with dataset: sbox64
    // result rd:x21(0xfacfe9dccfe9dcfa), rs1:x11(0x1414141414141414), rs2:x27(0xebebebebebebebeb)
    TEST_RR_OP(aes64esm, x21, x11, x27, 0xfacfe9dccfe9dcfa, 0x1414141414141414, 0xebebebebebebebeb, x1, 0, x2)

inst_21:
    // Test 21:  Test with dataset: sbox64
    // result rd:x22(0x592087fe2087fe59), rs1:x10(0x1515151515151515), rs2:x26(0xeaeaeaeaeaeaeaea)
    TEST_RR_OP(aes64esm, x22, x10, x26, 0x592087fe2087fe59, 0x1515151515151515, 0xeaeaeaeaeaeaeaea, x1, 8, x2)

inst_22:
    // Test 22:  Test with dataset: sbox64
    // result rd:x23(0x47ac1ef5ac1ef547), rs1:x9(0x1616161616161616), rs2:x25(0xe9e9e9e9e9e9e9e9)
    TEST_RR_OP(aes64esm, x23, x9, x25, 0x47ac1ef5ac1ef547, 0x1616161616161616, 0xe9e9e9e9e9e9e9e9, x1, 16, x2)

inst_23:
    // Test 23:  Test with dataset: sbox64
    // result rd:x24(0xf04d9b264d9b26f0), rs1:x8(0x1717171717171717), rs2:x24(0xe8e8e8e8e8e8e8e8)
    TEST_RR_OP(aes64esm, x24, x8, x24, 0xf04d9b264d9b26f0, 0x1717171717171717, 0xe8e8e8e8e8e8e8e8, x1, 24, x2)

inst_24:
    // Test 24:  Test with dataset: sbox64
    // result rd:x25(0xade694dfe694dfad), rs1:x7(0x1818181818181818), rs2:x23(0xe7e7e7e7e7e7e7e7)
    TEST_RR_OP(aes64esm, x25, x7, x23, 0xade694dfe694dfad, 0x1818181818181818, 0xe7e7e7e7e7e7e7e7, x1, 32, x2)

    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with dataset: sbox64
    // result rd:x26(0xd43a8e603a8e60d4), rs1:x6(0x1919191919191919), rs2:x22(0xe6e6e6e6e6e6e6e6)
    TEST_RR_OP(aes64esm, x26, x6, x22, 0xd43a8e603a8e60d4, 0x1919191919191919, 0xe6e6e6e6e6e6e6e6, x1, 0, x7)

inst_26:
    // Test 26:  Test with dataset: sbox64
    // result rd:x27(0xa22fd9542fd954a2), rs1:x5(0x1a1a1a1a1a1a1a1a), rs2:x21(0xe5e5e5e5e5e5e5e5)
    TEST_RR_OP(aes64esm, x27, x5, x21, 0xa22fd9542fd954a2, 0x1a1a1a1a1a1a1a1a, 0xe5e5e5e5e5e5e5e5, x1, 8, x7)

inst_27:
    // Test 27:  Test with dataset: sbox64
    // result rd:x28(0xaffe6938fe6938af), rs1:x4(0x1b1b1b1b1b1b1b1b), rs2:x20(0xe4e4e4e4e4e4e4e4)
    TEST_RR_OP(aes64esm, x28, x4, x20, 0xaffe6938fe6938af, 0x1b1b1b1b1b1b1b1b, 0xe4e4e4e4e4e4e4e4, x1, 16, x7)

inst_28:
    // Test 28:  Test with dataset: sbox64
    // result rd:x29(0x9c10119d10119d9c), rs1:x3(0x1c1c1c1c1c1c1c1c), rs2:x19(0xe3e3e3e3e3e3e3e3)
    TEST_RR_OP(aes64esm, x29, x3, x19, 0x9c10119d10119d9c, 0x1c1c1c1c1c1c1c1c, 0xe3e3e3e3e3e3e3e3, x1, 24, x7)

inst_29:
    // Test 29:  Test with dataset: sbox64
    // result rd:x30(0xa4e098dce098dca4), rs1:x2(0x1d1d1d1d1d1d1d1d), rs2:x18(0xe2e2e2e2e2e2e2e2)
    TEST_RR_OP(aes64esm, x30, x2, x18, 0xa4e098dce098dca4, 0x1d1d1d1d1d1d1d1d, 0xe2e2e2e2e2e2e2e2, x1, 32, x7)

    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with dataset: sbox64
    // result rd:x31(0x72f7f87df7f87d72), rs1:x1(0x1e1e1e1e1e1e1e1e), rs2:x17(0xe1e1e1e1e1e1e1e1)
    TEST_RR_OP(aes64esm, x31, x1, x17, 0x72f7f87df7f87d72, 0x1e1e1e1e1e1e1e1e, 0xe1e1e1e1e1e1e1e1, x5, 0, x6)

inst_31:
    // Test 31:  Test with dataset: sbox64
    // result rd:x1(0xc0a3e182a3e182c0), rs1:x31(0x1f1f1f1f1f1f1f1f), rs2:x16(0xe0e0e0e0e0e0e0e0)
    TEST_RR_OP(aes64esm, x1, x31, x16, 0xc0a3e182a3e182c0, 0x1f1f1f1f1f1f1f1f, 0xe0e0e0e0e0e0e0e0, x5, 8, x6)

inst_32:
    // Test 32:  Test with dataset: sbox64
    // result rd:x2(0xb7cc9ee5cc9ee5b7), rs1:x30(0x2020202020202020), rs2:x15(0xdfdfdfdfdfdfdfdf)
    TEST_RR_OP(aes64esm, x2, x30, x15, 0xb7cc9ee5cc9ee5b7, 0x2020202020202020, 0xdfdfdfdfdfdfdfdf, x5, 16, x6)

inst_33:
    // Test 33:  Test with dataset: sbox64
    // result rd:x3(0xfdc61d26c61d26fd), rs1:x29(0x2121212121212121), rs2:x14(0xdededededededede)
    TEST_RR_OP(aes64esm, x3, x29, x14, 0xfdc61d26c61d26fd, 0x2121212121212121, 0xdededededededede, x5, 24, x6)

inst_34:
    // Test 34:  Test with dataset: sbox64
    // result rd:x4(0x9365c13765c13793), rs1:x28(0x2222222222222222), rs2:x13(0xdddddddddddddddd)
    TEST_RR_OP(aes64esm, x4, x28, x13, 0x9365c13765c13793, 0x2222222222222222, 0xdddddddddddddddd, x5, 32, x6)

    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with dataset: sbox64
    // result rd:x5(0x26dd867ddd867d26), rs1:x27(0x2323232323232323), rs2:x12(0xdcdcdcdcdcdcdcdc)
    TEST_RR_OP(aes64esm, x5, x27, x12, 0x26dd867ddd867d26, 0x2323232323232323, 0xdcdcdcdcdcdcdcdc, x1, 0, x2)

inst_36:
    // Test 36:  Test with dataset: sbox64
    // result rd:x6(0x36bcb933bcb93336), rs1:x26(0x2424242424242424), rs2:x11(0xdbdbdbdbdbdbdbdb)
    TEST_RR_OP(aes64esm, x6, x26, x11, 0x36bcb933bcb93336, 0x2424242424242424, 0xdbdbdbdbdbdbdbdb, x1, 8, x2)

inst_37:
    // Test 37:  Test with dataset: sbox64
    // result rd:x7(0x3f8757ef8757ef3f), rs1:x25(0x2525252525252525), rs2:x10(0xdadadadadadadada)
    TEST_RR_OP(aes64esm, x7, x25, x10, 0x3f8757ef8757ef3f, 0x2525252525252525, 0xdadadadadadadada, x1, 16, x2)

inst_38:
    // Test 38:  Test with dataset: sbox64
    // result rd:x8(0xf7aa3568aa3568f7), rs1:x24(0x2626262626262626), rs2:x9(0xd9d9d9d9d9d9d9d9)
    TEST_RR_OP(aes64esm, x8, x24, x9, 0xf7aa3568aa3568f7, 0x2626262626262626, 0xd9d9d9d9d9d9d9d9, x1, 24, x2)

inst_39:
    // Test 39:  Test with dataset: sbox64
    // result rd:x9(0xcc20618d20618dcc), rs1:x23(0x2727272727272727), rs2:x8(0xd8d8d8d8d8d8d8d8)
    TEST_RR_OP(aes64esm, x9, x23, x8, 0xcc20618d20618dcc, 0x2727272727272727, 0xd8d8d8d8d8d8d8d8, x1, 32, x2)

    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with dataset: sbox64
    // result rd:x10(0x347a0e407a0e4034), rs1:x22(0x2828282828282828), rs2:x7(0xd7d7d7d7d7d7d7d7)
    TEST_RR_OP(aes64esm, x10, x22, x7, 0x347a0e407a0e4034, 0x2828282828282828, 0xd7d7d7d7d7d7d7d7, x1, 0, x2)

inst_41:
    // Test 41:  Test with dataset: sbox64
    // result rd:x11(0xa550f60350f603a5), rs1:x21(0x2929292929292929), rs2:x6(0xd6d6d6d6d6d6d6d6)
    TEST_RR_OP(aes64esm, x11, x21, x6, 0xa550f60350f603a5, 0x2929292929292929, 0xd6d6d6d6d6d6d6d6, x1, 8, x2)

inst_42:
    // Test 42:  Test with dataset: sbox64
    // result rd:x12(0xe5d40332d40332e5), rs1:x20(0x2a2a2a2a2a2a2a2a), rs2:x5(0xd5d5d5d5d5d5d5d5)
    TEST_RR_OP(aes64esm, x12, x20, x5, 0xe5d40332d40332e5, 0x2a2a2a2a2a2a2a2a, 0xd5d5d5d5d5d5d5d5, x1, 16, x2)

inst_43:
    // Test 43:  Test with dataset: sbox64
    // result rd:x13(0xf1214898214898f1), rs1:x19(0x2b2b2b2b2b2b2b2b), rs2:x4(0xd4d4d4d4d4d4d4d4)
    TEST_RR_OP(aes64esm, x13, x19, x4, 0xf1214898214898f1, 0x2b2b2b2b2b2b2b2b, 0xd4d4d4d4d4d4d4d4, x1, 24, x2)

inst_44:
    // Test 44:  Test with dataset: sbox64
    // result rd:x14(0x7148665f48665f71), rs1:x18(0x2c2c2c2c2c2c2c2c), rs2:x3(0xd3d3d3d3d3d3d3d3)
    TEST_RR_OP(aes64esm, x14, x18, x3, 0x7148665f48665f71, 0x2c2c2c2c2c2c2c2c, 0xd3d3d3d3d3d3d3d3, x1, 32, x2)

    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with dataset: sbox64
    // result rd:x15(0xd86fb5026fb502d8), rs1:x17(0x2d2d2d2d2d2d2d2d), rs2:x2(0xd2d2d2d2d2d2d2d2)
    TEST_RR_OP(aes64esm, x15, x17, x2, 0xd86fb5026fb502d8, 0x2d2d2d2d2d2d2d2d, 0xd2d2d2d2d2d2d2d2, x3, 0, x4)

inst_46:
    // Test 46:  Test with dataset: sbox64
    // result rd:x16(0x31203e2f203e2f31), rs1:x16(0x2e2e2e2e2e2e2e2e), rs2:x1(0xd1d1d1d1d1d1d1d1)
    TEST_RR_OP(aes64esm, x16, x16, x1, 0x31203e2f203e2f31, 0x2e2e2e2e2e2e2e2e, 0xd1d1d1d1d1d1d1d1, x3, 8, x4)

inst_47:
    // Test 47:  Test with dataset: sbox64
    // result rd:x17(0x15ba70dfba70df15), rs1:x15(0x2f2f2f2f2f2f2f2f), rs2:x31(0xd0d0d0d0d0d0d0d0)
    TEST_RR_OP(aes64esm, x17, x15, x31, 0x15ba70dfba70df15, 0x2f2f2f2f2f2f2f2f, 0xd0d0d0d0d0d0d0d0, x3, 16, x4)

inst_48:
    // Test 48:  Test with dataset: sbox64
    // result rd:x18(0x048d8a038d8a0304), rs1:x14(0x3030303030303030), rs2:x30(0xcfcfcfcfcfcfcfcf)
    TEST_RR_OP(aes64esm, x18, x14, x30, 0x048d8a038d8a0304, 0x3030303030303030, 0xcfcfcfcfcfcfcfcf, x3, 24, x4)

inst_49:
    // Test 49:  Test with dataset: sbox64
    // result rd:x19(0xc7138b5f138b5fc7), rs1:x13(0x3131313131313131), rs2:x29(0xcececececececece)
    TEST_RR_OP(aes64esm, x19, x13, x29, 0xc7138b5f138b5fc7, 0x3131313131313131, 0xcececececececece, x3, 32, x4)

    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with dataset: sbox64
    // result rd:x20(0x239abd049abd0423), rs1:x12(0x3232323232323232), rs2:x28(0xcdcdcdcdcdcdcdcd)
    TEST_RR_OP(aes64esm, x20, x12, x28, 0x239abd049abd0423, 0x3232323232323232, 0xcdcdcdcdcdcdcdcd, x1, 0, x2)

inst_51:
    // Test 51:  Test with dataset: sbox64
    // result rd:x21(0xc3404bc8404bc8c3), rs1:x11(0x3333333333333333), rs2:x27(0xcccccccccccccccc)
    TEST_RR_OP(aes64esm, x21, x11, x27, 0xc3404bc8404bc8c3, 0x3333333333333333, 0xcccccccccccccccc, x1, 8, x2)

inst_52:
    // Test 52:  Test with dataset: sbox64
    // result rd:x22(0x18111f16111f1618), rs1:x10(0x3434343434343434), rs2:x26(0xcbcbcbcbcbcbcbcb)
    TEST_RR_OP(aes64esm, x22, x10, x26, 0x18111f16111f1618, 0x3434343434343434, 0xcbcbcbcbcbcbcbcb, x1, 16, x2)

inst_53:
    // Test 53:  Test with dataset: sbox64
    // result rd:x23(0x96ab7449ab744996), rs1:x9(0x3535353535353535), rs2:x25(0xcacacacacacacaca)
    TEST_RR_OP(aes64esm, x23, x9, x25, 0x96ab7449ab744996, 0x3535353535353535, 0xcacacacacacacaca, x1, 24, x2)

inst_54:
    // Test 54:  Test with dataset: sbox64
    // result rd:x24(0x0576ddae76ddae05), rs1:x8(0x3636363636363636), rs2:x24(0xc9c9c9c9c9c9c9c9)
    TEST_RR_OP(aes64esm, x24, x8, x24, 0x0576ddae76ddae05, 0x3636363636363636, 0xc9c9c9c9c9c9c9c9, x1, 32, x2)

    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with dataset: sbox64
    // result rd:x25(0x9a0ce87e0ce87e9a), rs1:x7(0x3737373737373737), rs2:x23(0xc8c8c8c8c8c8c8c8)
    TEST_RR_OP(aes64esm, x25, x7, x23, 0x9a0ce87e0ce87e9a, 0x3737373737373737, 0xc8c8c8c8c8c8c8c8, x1, 0, x2)

inst_56:
    // Test 56:  Test with dataset: sbox64
    // result rd:x26(0x075fc69e5fc69e07), rs1:x6(0x3838383838383838), rs2:x22(0xc7c7c7c7c7c7c7c7)
    TEST_RR_OP(aes64esm, x26, x6, x22, 0x075fc69e5fc69e07, 0x3838383838383838, 0xc7c7c7c7c7c7c7c7, x1, 8, x2)

inst_57:
    // Test 57:  Test with dataset: sbox64
    // result rd:x27(0x12e3b445e3b44512), rs1:x5(0x3939393939393939), rs2:x21(0xc6c6c6c6c6c6c6c6)
    TEST_RR_OP(aes64esm, x27, x5, x21, 0x12e3b445e3b44512, 0x3939393939393939, 0xc6c6c6c6c6c6c6c6, x1, 16, x2)

inst_58:
    // Test 58:  Test with dataset: sbox64
    // result rd:x28(0x80eaa6cceaa6cc80), rs1:x4(0x3a3a3a3a3a3a3a3a), rs2:x20(0xc5c5c5c5c5c5c5c5)
    TEST_RR_OP(aes64esm, x28, x4, x20, 0x80eaa6cceaa6cc80, 0x3a3a3a3a3a3a3a3a, 0xc5c5c5c5c5c5c5c5, x1, 24, x2)

inst_59:
    // Test 59:  Test with dataset: sbox64
    // result rd:x29(0xe2fb1c05fb1c05e2), rs1:x3(0x3b3b3b3b3b3b3b3b), rs2:x19(0xc4c4c4c4c4c4c4c4)
    TEST_RR_OP(aes64esm, x29, x3, x19, 0xe2fb1c05fb1c05e2, 0x3b3b3b3b3b3b3b3b, 0xc4c4c4c4c4c4c4c4, x1, 32, x2)

    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with dataset: sbox64
    // result rd:x30(0xebbf2e7abf2e7aeb), rs1:x2(0x3c3c3c3c3c3c3c3c), rs2:x18(0xc3c3c3c3c3c3c3c3)
    TEST_RR_OP(aes64esm, x30, x2, x18, 0xebbf2e7abf2e7aeb, 0x3c3c3c3c3c3c3c3c, 0xc3c3c3c3c3c3c3c3, x4, 0, x5)

inst_61:
    // Test 61:  Test with dataset: sbox64
    // result rd:x31(0x2721252321252327), rs1:x1(0x3d3d3d3d3d3d3d3d), rs2:x17(0xc2c2c2c2c2c2c2c2)
    TEST_RR_OP(aes64esm, x31, x1, x17, 0x2721252321252327, 0x3d3d3d3d3d3d3d3d, 0xc2c2c2c2c2c2c2c2, x4, 8, x5)

inst_62:
    // Test 62:  Test with dataset: sbox64
    // result rd:x1(0xb2f7783df7783db2), rs1:x31(0x3e3e3e3e3e3e3e3e), rs2:x16(0xc1c1c1c1c1c1c1c1)
    TEST_RR_OP(aes64esm, x1, x31, x16, 0xb2f7783df7783db2, 0x3e3e3e3e3e3e3e3e, 0xc1c1c1c1c1c1c1c1, x4, 16, x5)

inst_63:
    // Test 63:  Test with dataset: sbox64
    // result rd:x2(0x753fbaf03fbaf075), rs1:x30(0x3f3f3f3f3f3f3f3f), rs2:x15(0xc0c0c0c0c0c0c0c0)
    TEST_RR_OP(aes64esm, x2, x30, x15, 0x753fbaf03fbaf075, 0x3f3f3f3f3f3f3f3f, 0xc0c0c0c0c0c0c0c0, x4, 24, x5)

inst_64:
    // Test 64:  Test with dataset: sbox64
    // result rd:x3(0x090a080b0a080b09), rs1:x29(0x4040404040404040), rs2:x14(0xbfbfbfbfbfbfbfbf)
    TEST_RR_OP(aes64esm, x3, x29, x14, 0x090a080b0a080b09, 0x4040404040404040, 0xbfbfbfbfbfbfbfbf, x4, 32, x5)

    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with dataset: sbox64
    // result rd:x4(0x83f4aed9f4aed983), rs1:x28(0x4141414141414141), rs2:x13(0xbebebebebebebebe)
    TEST_RR_OP(aes64esm, x4, x28, x13, 0x83f4aed9f4aed983, 0x4141414141414141, 0xbebebebebebebebe, x1, 0, x2)

inst_66:
    // Test 66:  Test with dataset: sbox64
    // result rd:x5(0x2cd67a80d67a802c), rs1:x27(0x4242424242424242), rs2:x12(0xbdbdbdbdbdbdbdbd)
    TEST_RR_OP(aes64esm, x5, x27, x12, 0x2cd67a80d67a802c, 0x4242424242424242, 0xbdbdbdbdbdbdbdbd, x1, 8, x2)

inst_67:
    // Test 67:  Test with dataset: sbox64
    // result rd:x6(0x1a9b65e49b65e41a), rs1:x26(0x4343434343434343), rs2:x11(0xbcbcbcbcbcbcbcbc)
    TEST_RR_OP(aes64esm, x6, x26, x11, 0x1a9b65e49b65e41a, 0x4343434343434343, 0xbcbcbcbcbcbcbcbc, x1, 16, x2)

inst_68:
    // Test 68:  Test with dataset: sbox64
    // result rd:x7(0x1b13eae213eae21b), rs1:x25(0x4444444444444444), rs2:x10(0xbbbbbbbbbbbbbbbb)
    TEST_RR_OP(aes64esm, x7, x25, x10, 0x1b13eae213eae21b, 0x4444444444444444, 0xbbbbbbbbbbbbbbbb, x1, 24, x2)

inst_69:
    // Test 69:  Test with dataset: sbox64
    // result rd:x8(0x6edbf441dbf4416e), rs1:x24(0x4545454545454545), rs2:x9(0xbabababababababa)
    TEST_RR_OP(aes64esm, x8, x24, x9, 0x6edbf441dbf4416e, 0x4545454545454545, 0xbabababababababa, x1, 32, x2)

    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with dataset: sbox64
    // result rd:x9(0x5a4e56424e56425a), rs1:x23(0x4646464646464646), rs2:x8(0xb9b9b9b9b9b9b9b9)
    TEST_RR_OP(aes64esm, x9, x23, x8, 0x5a4e56424e56425a, 0x4646464646464646, 0xb9b9b9b9b9b9b9b9, x1, 0, x2)

inst_71:
    // Test 71:  Test with dataset: sbox64
    // result rd:x10(0xa0ef6c23ef6c23a0), rs1:x22(0x4747474747474747), rs2:x7(0xb8b8b8b8b8b8b8b8)
    TEST_RR_OP(aes64esm, x10, x22, x7, 0xa0ef6c23ef6c23a0, 0x4747474747474747, 0xb8b8b8b8b8b8b8b8, x1, 8, x2)

inst_72:
    // Test 72:  Test with dataset: sbox64
    // result rd:x11(0x5244a9bf44a9bf52), rs1:x21(0x4848484848484848), rs2:x6(0xb7b7b7b7b7b7b7b7)
    TEST_RR_OP(aes64esm, x11, x21, x6, 0x5244a9bf44a9bf52, 0x4848484848484848, 0xb7b7b7b7b7b7b7b7, x1, 16, x2)

inst_73:
    // Test 73:  Test with dataset: sbox64
    // result rd:x12(0x3ba44ed1a44ed13b), rs1:x20(0x4949494949494949), rs2:x5(0xb6b6b6b6b6b6b6b6)
    TEST_RR_OP(aes64esm, x12, x20, x5, 0x3ba44ed1a44ed13b, 0x4949494949494949, 0xb6b6b6b6b6b6b6b6, x1, 24, x2)

inst_74:
    // Test 74:  Test with dataset: sbox64
    // result rd:x13(0xd6d3d5d0d3d5d0d6), rs1:x19(0x4a4a4a4a4a4a4a4a), rs2:x4(0xb5b5b5b5b5b5b5b5)
    TEST_RR_OP(aes64esm, x13, x19, x4, 0xd6d3d5d0d3d5d0d6, 0x4a4a4a4a4a4a4a4a, 0xb5b5b5b5b5b5b5b5, x1, 32, x2)

    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with dataset: sbox64
    // result rd:x14(0xb3f18dcff18dcfb3), rs1:x18(0x4b4b4b4b4b4b4b4b), rs2:x3(0xb4b4b4b4b4b4b4b4)
    TEST_RR_OP(aes64esm, x14, x18, x3, 0xb3f18dcff18dcfb3, 0x4b4b4b4b4b4b4b4b, 0xb4b4b4b4b4b4b4b4, x4, 0, x5)

inst_76:
    // Test 76:  Test with dataset: sbox64
    // result rd:x15(0x29e56da1e56da129), rs1:x17(0x4c4c4c4c4c4c4c4c), rs2:x2(0xb3b3b3b3b3b3b3b3)
    TEST_RR_OP(aes64esm, x15, x17, x2, 0x29e56da1e56da129, 0x4c4c4c4c4c4c4c4c, 0xb3b3b3b3b3b3b3b3, x4, 8, x5)

inst_77:
    // Test 77:  Test with dataset: sbox64
    // result rd:x16(0xe3843750843750e3), rs1:x16(0x4d4d4d4d4d4d4d4d), rs2:x1(0xb2b2b2b2b2b2b2b2)
    TEST_RR_OP(aes64esm, x16, x16, x1, 0xe3843750843750e3, 0x4d4d4d4d4d4d4d4d, 0xb2b2b2b2b2b2b2b2, x4, 16, x5)

inst_78:
    // Test 78:  Test with dataset: sbox64
    // result rd:x17(0x2f1dc8fa1dc8fa2f), rs1:x15(0x4e4e4e4e4e4e4e4e), rs2:x31(0xb1b1b1b1b1b1b1b1)
    TEST_RR_OP(aes64esm, x17, x15, x31, 0x2f1dc8fa1dc8fa2f, 0x4e4e4e4e4e4e4e4e, 0xb1b1b1b1b1b1b1b1, x4, 24, x5)

inst_79:
    // Test 79:  Test with dataset: sbox64
    // result rd:x18(0x8421e74221e74284), rs1:x14(0x4f4f4f4f4f4f4f4f), rs2:x30(0xb0b0b0b0b0b0b0b0)
    TEST_RR_OP(aes64esm, x18, x14, x30, 0x8421e74221e74284, 0x4f4f4f4f4f4f4f4f, 0xb0b0b0b0b0b0b0b0, x4, 32, x5)

    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with dataset: sbox64
    // result rd:x19(0x532d79072d790753), rs1:x13(0x5050505050505050), rs2:x29(0xafafafafafafafaf)
    TEST_RR_OP(aes64esm, x19, x13, x29, 0x532d79072d790753, 0x5050505050505050, 0xafafafafafafafaf, x1, 0, x2)

inst_81:
    // Test 81:  Test with dataset: sbox64
    // result rd:x20(0xd18ee4bb8ee4bbd1), rs1:x12(0x5151515151515151), rs2:x28(0xaeaeaeaeaeaeaeae)
    TEST_RR_OP(aes64esm, x20, x12, x28, 0xd18ee4bb8ee4bbd1, 0x5151515151515151, 0xaeaeaeaeaeaeaeae, x1, 8, x2)

inst_82:
    // Test 82:  Test with dataset: sbox64
    // result rd:x21(0x00a49531a4953100), rs1:x11(0x5252525252525252), rs2:x27(0xadadadadadadadad)
    TEST_RR_OP(aes64esm, x21, x11, x27, 0x00a49531a4953100, 0x5252525252525252, 0xadadadadadadadad, x1, 16, x2)

inst_83:
    // Test 83:  Test with dataset: sbox64
    // result rd:x22(0xed699115699115ed), rs1:x10(0x5353535353535353), rs2:x26(0xacacacacacacacac)
    TEST_RR_OP(aes64esm, x22, x10, x26, 0xed699115699115ed, 0x5353535353535353, 0xacacacacacacacac, x1, 24, x2)

inst_84:
    // Test 84:  Test with dataset: sbox64
    // result rd:x23(0x20e662a4e662a420), rs1:x9(0x5454545454545454), rs2:x25(0xabababababababab)
    TEST_RR_OP(aes64esm, x23, x9, x25, 0x20e662a4e662a420, 0x5454545454545454, 0xabababababababab, x1, 32, x2)

    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with dataset: sbox64
    // result rd:x24(0xfc0cac5c0cac5cfc), rs1:x8(0x5555555555555555), rs2:x24(0xaaaaaaaaaaaaaaaa)
    TEST_RR_OP(aes64esm, x24, x8, x24, 0xfc0cac5c0cac5cfc, 0x5555555555555555, 0xaaaaaaaaaaaaaaaa, x1, 0, x2)

inst_86:
    // Test 86:  Test with dataset: sbox64
    // result rd:x25(0xb117d37517d375b1), rs1:x7(0x5656565656565656), rs2:x23(0xa9a9a9a9a9a9a9a9)
    TEST_RR_OP(aes64esm, x25, x7, x23, 0xb117d37517d375b1, 0x5656565656565656, 0xa9a9a9a9a9a9a9a9, x1, 8, x2)

inst_87:
    // Test 87:  Test with dataset: sbox64
    // result rd:x26(0x5bebc272ebc2725b), rs1:x6(0x5757575757575757), rs2:x22(0xa8a8a8a8a8a8a8a8)
    TEST_RR_OP(aes64esm, x26, x6, x22, 0x5bebc272ebc2725b, 0x5757575757575757, 0xa8a8a8a8a8a8a8a8, x1, 16, x2)

inst_88:
    // Test 88:  Test with dataset: sbox64
    // result rd:x27(0x6a305c06305c066a), rs1:x5(0x5858585858585858), rs2:x21(0xa7a7a7a7a7a7a7a7)
    TEST_RR_OP(aes64esm, x27, x5, x21, 0x6a305c06305c066a, 0x5858585858585858, 0xa7a7a7a7a7a7a7a7, x1, 24, x2)

inst_89:
    // Test 89:  Test with dataset: sbox64
    // result rd:x28(0xcbe1240ee1240ecb), rs1:x4(0x5959595959595959), rs2:x20(0xa6a6a6a6a6a6a6a6)
    TEST_RR_OP(aes64esm, x28, x4, x20, 0xcbe1240ee1240ecb, 0x5959595959595959, 0xa6a6a6a6a6a6a6a6, x1, 32, x2)

    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with dataset: sbox64
    // result rd:x29(0xbe6d06d56d06d5be), rs1:x3(0x5a5a5a5a5a5a5a5a), rs2:x19(0xa5a5a5a5a5a5a5a5)
    TEST_RR_OP(aes64esm, x29, x3, x19, 0xbe6d06d56d06d5be, 0x5a5a5a5a5a5a5a5a, 0xa5a5a5a5a5a5a5a5, x4, 0, x5)

inst_91:
    // Test 91:  Test with dataset: sbox64
    // result rd:x30(0x39a949d9a949d939), rs1:x2(0x5b5b5b5b5b5b5b5b), rs2:x18(0xa4a4a4a4a4a4a4a4)
    TEST_RR_OP(aes64esm, x30, x2, x18, 0x39a949d9a949d939, 0x5b5b5b5b5b5b5b5b, 0xa4a4a4a4a4a4a4a4, x4, 8, x5)

inst_92:
    // Test 92:  Test with dataset: sbox64
    // result rd:x31(0x4a8a0aca8a0aca4a), rs1:x1(0x5c5c5c5c5c5c5c5c), rs2:x17(0xa3a3a3a3a3a3a3a3)
    TEST_RR_OP(aes64esm, x31, x1, x17, 0x4a8a0aca8a0aca4a, 0x5c5c5c5c5c5c5c5c, 0xa3a3a3a3a3a3a3a3, x4, 16, x5)

inst_93:
    // Test 93:  Test with dataset: sbox64
    // result rd:x1(0x4cd63aa0d63aa04c), rs1:x31(0x5d5d5d5d5d5d5d5d), rs2:x16(0xa2a2a2a2a2a2a2a2)
    TEST_RR_OP(aes64esm, x1, x31, x16, 0x4cd63aa0d63aa04c, 0x5d5d5d5d5d5d5d5d, 0xa2a2a2a2a2a2a2a2, x4, 24, x5)

inst_94:
    // Test 94:  Test with dataset: sbox64
    // result rd:x2(0x58e6328ce6328c58), rs1:x30(0x5e5e5e5e5e5e5e5e), rs2:x15(0xa1a1a1a1a1a1a1a1)
    TEST_RR_OP(aes64esm, x2, x30, x15, 0x58e6328ce6328c58, 0x5e5e5e5e5e5e5e5e, 0xa1a1a1a1a1a1a1a1, x4, 32, x5)

    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with dataset: sbox64
    // result rd:x3(0xcfbee091bee091cf), rs1:x29(0x5f5f5f5f5f5f5f5f), rs2:x14(0xa0a0a0a0a0a0a0a0)
    TEST_RR_OP(aes64esm, x3, x29, x14, 0xcfbee091bee091cf, 0x5f5f5f5f5f5f5f5f, 0xa0a0a0a0a0a0a0a0, x1, 0, x2)

inst_96:
    // Test 96:  Test with dataset: sbox64
    // result rd:x4(0xd0cddbc6cddbc6d0), rs1:x28(0x6060606060606060), rs2:x13(0x9f9f9f9f9f9f9f9f)
    TEST_RR_OP(aes64esm, x4, x28, x13, 0xd0cddbc6cddbc6d0, 0x6060606060606060, 0x9f9f9f9f9f9f9f9f, x1, 8, x2)

inst_97:
    // Test 97:  Test with dataset: sbox64
    // result rd:x5(0xefd80b3cd80b3cef), rs1:x27(0x6161616161616161), rs2:x12(0x9e9e9e9e9e9e9e9e)
    TEST_RR_OP(aes64esm, x5, x27, x12, 0xefd80b3cd80b3cef, 0x6161616161616161, 0x9e9e9e9e9e9e9e9e, x1, 16, x2)

inst_98:
    // Test 98:  Test with dataset: sbox64
    // result rd:x6(0xaaad5e59ad5e59aa), rs1:x26(0x6262626262626262), rs2:x11(0x9d9d9d9d9d9d9d9d)
    TEST_RR_OP(aes64esm, x6, x26, x11, 0xaaad5e59ad5e59aa, 0x6262626262626262, 0x9d9d9d9d9d9d9d9d, x1, 24, x2)

inst_99:
    // Test 99:  Test with dataset: sbox64
    // result rd:x7(0xfb94deb194deb1fb), rs1:x25(0x6363636363636363), rs2:x10(0x9c9c9c9c9c9c9c9c)
    TEST_RR_OP(aes64esm, x7, x25, x10, 0xfb94deb194deb1fb, 0x6363636363636363, 0x9c9c9c9c9c9c9c9c, x1, 32, x2)

    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with dataset: sbox64
    // result rd:x8(0x43ba14edba14ed43), rs1:x24(0x6464646464646464), rs2:x9(0x9b9b9b9b9b9b9b9b)
    TEST_RR_OP(aes64esm, x8, x24, x9, 0x43ba14edba14ed43, 0x6464646464646464, 0x9b9b9b9b9b9b9b9b, x1, 0, x2)

inst_101:
    // Test 101:  Test with dataset: sbox64
    // result rd:x9(0x4d49b8bc49b8bc4d), rs1:x23(0x6565656565656565), rs2:x8(0x9a9a9a9a9a9a9a9a)
    TEST_RR_OP(aes64esm, x9, x23, x8, 0x4d49b8bc49b8bc4d, 0x6565656565656565, 0x9a9a9a9a9a9a9a9a, x1, 8, x2)

inst_102:
    // Test 102:  Test with dataset: sbox64
    // result rd:x10(0x334fee924fee9233), rs1:x22(0x6666666666666666), rs2:x7(0x9999999999999999)
    TEST_RR_OP(aes64esm, x10, x22, x7, 0x334fee924fee9233, 0x6666666666666666, 0x9999999999999999, x1, 16, x2)

inst_103:
    // Test 103:  Test with dataset: sbox64
    // result rd:x11(0x85db4618db461885), rs1:x21(0x6767676767676767), rs2:x6(0x9898989898989898)
    TEST_RR_OP(aes64esm, x11, x21, x6, 0x85db4618db461885, 0x6767676767676767, 0x9898989898989898, x1, 24, x2)

inst_104:
    // Test 104:  Test with dataset: sbox64
    // result rd:x12(0x450988c40988c445), rs1:x20(0x6868686868686868), rs2:x5(0x9797979797979797)
    TEST_RR_OP(aes64esm, x12, x20, x5, 0x450988c40988c445, 0x6868686868686868, 0x9797979797979797, x1, 32, x2)

    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with dataset: sbox64
    // result rd:x13(0xf942902b42902bf9), rs1:x19(0x6969696969696969), rs2:x4(0x9696969696969696)
    TEST_RR_OP(aes64esm, x13, x19, x4, 0xf942902b42902bf9, 0x6969696969696969, 0x9696969696969696, x5, 0, x6)

inst_106:
    // Test 106:  Test with dataset: sbox64
    // result rd:x14(0x027a2a527a2a5202), rs1:x18(0x6a6a6a6a6a6a6a6a), rs2:x3(0x9595959595959595)
    TEST_RR_OP(aes64esm, x14, x18, x3, 0x027a2a527a2a5202, 0x6a6a6a6a6a6a6a6a, 0x9595959595959595, x5, 8, x6)

inst_107:
    // Test 107:  Test with dataset: sbox64
    // result rd:x15(0x7f9822c59822c57f), rs1:x17(0x6b6b6b6b6b6b6b6b), rs2:x2(0x9494949494949494)
    TEST_RR_OP(aes64esm, x15, x17, x2, 0x7f9822c59822c57f, 0x6b6b6b6b6b6b6b6b, 0x9494949494949494, x5, 16, x6)

inst_108:
    // Test 108:  Test with dataset: sbox64
    // result rd:x16(0x50dfdc53dfdc5350), rs1:x16(0x6c6c6c6c6c6c6c6c), rs2:x1(0x9393939393939393)
    TEST_RR_OP(aes64esm, x16, x16, x1, 0x50dfdc53dfdc5350, 0x6c6c6c6c6c6c6c6c, 0x9393939393939393, x5, 24, x6)

inst_109:
    // Test 109:  Test with dataset: sbox64
    // result rd:x17(0x3ca94fdaa94fda3c), rs1:x15(0x6d6d6d6d6d6d6d6d), rs2:x31(0x9292929292929292)
    TEST_RR_OP(aes64esm, x17, x15, x31, 0x3ca94fdaa94fda3c, 0x6d6d6d6d6d6d6d6d, 0x9292929292929292, x5, 32, x6)

    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with dataset: sbox64
    // result rd:x18(0x9fbd81a3bd81a39f), rs1:x14(0x6e6e6e6e6e6e6e6e), rs2:x30(0x9191919191919191)
    TEST_RR_OP(aes64esm, x18, x14, x30, 0x9fbd81a3bd81a39f, 0x6e6e6e6e6e6e6e6e, 0x9191919191919191, x1, 0, x2)

inst_111:
    // Test 111:  Test with dataset: sbox64
    // result rd:x19(0xa8eb6023eb6023a8), rs1:x13(0x6f6f6f6f6f6f6f6f), rs2:x29(0x9090909090909090)
    TEST_RR_OP(aes64esm, x19, x13, x29, 0xa8eb6023eb6023a8, 0x6f6f6f6f6f6f6f6f, 0x9090909090909090, x1, 8, x2)

inst_112:
    // Test 112:  Test with dataset: sbox64
    // result rd:x20(0x5137731537731551), rs1:x12(0x7070707070707070), rs2:x28(0x8f8f8f8f8f8f8f8f)
    TEST_RR_OP(aes64esm, x20, x12, x28, 0x5137731537731551, 0x7070707070707070, 0x8f8f8f8f8f8f8f8f, x1, 16, x2)

inst_113:
    // Test 113:  Test with dataset: sbox64
    // result rd:x21(0xa37619cc7619cca3), rs1:x11(0x7171717171717171), rs2:x27(0x8e8e8e8e8e8e8e8e)
    TEST_RR_OP(aes64esm, x21, x11, x27, 0xa37619cc7619cca3, 0x7171717171717171, 0x8e8e8e8e8e8e8e8e, x1, 24, x2)

inst_114:
    // Test 114:  Test with dataset: sbox64
    // result rd:x22(0x40675d7a675d7a40), rs1:x10(0x7272727272727272), rs2:x26(0x8d8d8d8d8d8d8d8d)
    TEST_RR_OP(aes64esm, x22, x10, x26, 0x40675d7a675d7a40, 0x7272727272727272, 0x8d8d8d8d8d8d8d8d, x1, 32, x2)

    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with dataset: sbox64
    // result rd:x23(0x8fa96442a964428f), rs1:x9(0x7373737373737373), rs2:x25(0x8c8c8c8c8c8c8c8c)
    TEST_RR_OP(aes64esm, x23, x9, x25, 0x8fa96442a964428f, 0x7373737373737373, 0x8c8c8c8c8c8c8c8c, x1, 0, x2)

inst_116:
    // Test 116:  Test with dataset: sbox64
    // result rd:x24(0x92783dd7783dd792), rs1:x8(0x7474747474747474), rs2:x24(0x8b8b8b8b8b8b8b8b)
    TEST_RR_OP(aes64esm, x24, x8, x24, 0x92783dd7783dd792, 0x7474747474747474, 0x8b8b8b8b8b8b8b8b, x1, 8, x2)

inst_117:
    // Test 117:  Test with dataset: sbox64
    // result rd:x25(0x9da37e40a37e409d), rs1:x7(0x7575757575757575), rs2:x23(0x8a8a8a8a8a8a8a8a)
    TEST_RR_OP(aes64esm, x25, x7, x23, 0x9da37e40a37e409d, 0x7575757575757575, 0x8a8a8a8a8a8a8a8a, x1, 16, x2)

inst_118:
    // Test 118:  Test with dataset: sbox64
    // result rd:x26(0x3882a71d82a71d38), rs1:x6(0x7676767676767676), rs2:x22(0x8989898989898989)
    TEST_RR_OP(aes64esm, x26, x6, x22, 0x3882a71d82a71d38, 0x7676767676767676, 0x8989898989898989, x1, 24, x2)

inst_119:
    // Test 119:  Test with dataset: sbox64
    // result rd:x27(0xf5a6c497a6c497f5), rs1:x5(0x7777777777777777), rs2:x21(0x8888888888888888)
    TEST_RR_OP(aes64esm, x27, x5, x21, 0xf5a6c497a6c497f5, 0x7777777777777777, 0x8888888888888888, x1, 32, x2)

    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with dataset: sbox64
    // result rd:x28(0xbc5a17f15a17f1bc), rs1:x4(0x7878787878787878), rs2:x20(0x8787878787878787)
    TEST_RR_OP(aes64esm, x28, x4, x20, 0xbc5a17f15a17f1bc, 0x7878787878787878, 0x8787878787878787, x5, 0, x6)

inst_121:
    // Test 121:  Test with dataset: sbox64
    // result rd:x29(0xb6bb4449bb4449b6), rs1:x3(0x7979797979797979), rs2:x19(0x8686868686868686)
    TEST_RR_OP(aes64esm, x29, x3, x19, 0xb6bb4449bb4449b6, 0x7979797979797979, 0x8686868686868686, x5, 8, x6)

inst_122:
    // Test 122:  Test with dataset: sbox64
    // result rd:x30(0xda0d97400d9740da), rs1:x2(0x7a7a7a7a7a7a7a7a), rs2:x18(0x8585858585858585)
    TEST_RR_OP(aes64esm, x30, x2, x18, 0xda0d97400d9740da, 0x7a7a7a7a7a7a7a7a, 0x8585858585858585, x5, 16, x6)

inst_123:
    // Test 123:  Test with dataset: sbox64
    // result rd:x31(0x21a35fdda35fdd21), rs1:x1(0x7b7b7b7b7b7b7b7b), rs2:x17(0x8484848484848484)
    TEST_RR_OP(aes64esm, x31, x1, x17, 0x21a35fdda35fdd21, 0x7b7b7b7b7b7b7b7b, 0x8484848484848484, x5, 24, x6)

inst_124:
    // Test 124:  Test with dataset: sbox64
    // result rd:x1(0x100fecf30fecf310), rs1:x31(0x7c7c7c7c7c7c7c7c), rs2:x16(0x8383838383838383)
    TEST_RR_OP(aes64esm, x1, x31, x16, 0x100fecf30fecf310, 0x7c7c7c7c7c7c7c7c, 0x8383838383838383, x5, 32, x6)

    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with dataset: sbox64
    // result rd:x2(0xffd0133cd0133cff), rs1:x30(0x7d7d7d7d7d7d7d7d), rs2:x15(0x8282828282828282)
    TEST_RR_OP(aes64esm, x2, x30, x15, 0xffd0133cd0133cff, 0x7d7d7d7d7d7d7d7d, 0x8282828282828282, x1, 0, x7)

inst_126:
    // Test 126:  Test with dataset: sbox64
    // result rd:x3(0xf3e90c16e90c16f3), rs1:x29(0x7e7e7e7e7e7e7e7e), rs2:x14(0x8181818181818181)
    TEST_RR_OP(aes64esm, x3, x29, x14, 0xf3e90c16e90c16f3, 0x7e7e7e7e7e7e7e7e, 0x8181818181818181, x1, 8, x7)

inst_127:
    // Test 127:  Test with dataset: sbox64
    // result rd:x4(0xd2f3cdecf3cdecd2), rs1:x28(0x7f7f7f7f7f7f7f7f), rs2:x13(0x8080808080808080)
    TEST_RR_OP(aes64esm, x4, x28, x13, 0xd2f3cdecf3cdecd2, 0x7f7f7f7f7f7f7f7f, 0x8080808080808080, x1, 16, x7)

inst_128:
    // Test 128:  Test with dataset: sbox64
    // result rd:x5(0xcdecd2f3ecd2f3cd), rs1:x27(0x8080808080808080), rs2:x12(0x7f7f7f7f7f7f7f7f)
    TEST_RR_OP(aes64esm, x5, x27, x12, 0xcdecd2f3ecd2f3cd, 0x8080808080808080, 0x7f7f7f7f7f7f7f7f, x1, 24, x7)

inst_129:
    // Test 129:  Test with dataset: sbox64
    // result rd:x6(0x0c16f3e916f3e90c), rs1:x26(0x8181818181818181), rs2:x11(0x7e7e7e7e7e7e7e7e)
    TEST_RR_OP(aes64esm, x6, x26, x11, 0x0c16f3e916f3e90c, 0x8181818181818181, 0x7e7e7e7e7e7e7e7e, x1, 32, x7)

    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with dataset: sbox64
    // result rd:x7(0x133cffd03cffd013), rs1:x25(0x8282828282828282), rs2:x10(0x7d7d7d7d7d7d7d7d)
    TEST_RR_OP(aes64esm, x7, x25, x10, 0x133cffd03cffd013, 0x8282828282828282, 0x7d7d7d7d7d7d7d7d, x1, 0, x2)

inst_131:
    // Test 131:  Test with dataset: sbox64
    // result rd:x8(0xecf3100ff3100fec), rs1:x24(0x8383838383838383), rs2:x9(0x7c7c7c7c7c7c7c7c)
    TEST_RR_OP(aes64esm, x8, x24, x9, 0xecf3100ff3100fec, 0x8383838383838383, 0x7c7c7c7c7c7c7c7c, x1, 8, x2)

inst_132:
    // Test 132:  Test with dataset: sbox64
    // result rd:x9(0x5fdd21a3dd21a35f), rs1:x23(0x8484848484848484), rs2:x8(0x7b7b7b7b7b7b7b7b)
    TEST_RR_OP(aes64esm, x9, x23, x8, 0x5fdd21a3dd21a35f, 0x8484848484848484, 0x7b7b7b7b7b7b7b7b, x1, 16, x2)

inst_133:
    // Test 133:  Test with dataset: sbox64
    // result rd:x10(0x9740da0d40da0d97), rs1:x22(0x8585858585858585), rs2:x7(0x7a7a7a7a7a7a7a7a)
    TEST_RR_OP(aes64esm, x10, x22, x7, 0x9740da0d40da0d97, 0x8585858585858585, 0x7a7a7a7a7a7a7a7a, x1, 24, x2)

inst_134:
    // Test 134:  Test with dataset: sbox64
    // result rd:x11(0x4449b6bb49b6bb44), rs1:x21(0x8686868686868686), rs2:x6(0x7979797979797979)
    TEST_RR_OP(aes64esm, x11, x21, x6, 0x4449b6bb49b6bb44, 0x8686868686868686, 0x7979797979797979, x1, 32, x2)

    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with dataset: sbox64
    // result rd:x12(0x17f1bc5af1bc5a17), rs1:x20(0x8787878787878787), rs2:x5(0x7878787878787878)
    TEST_RR_OP(aes64esm, x12, x20, x5, 0x17f1bc5af1bc5a17, 0x8787878787878787, 0x7878787878787878, x6, 0, x7)

inst_136:
    // Test 136:  Test with dataset: sbox64
    // result rd:x13(0xc497f5a697f5a6c4), rs1:x19(0x8888888888888888), rs2:x4(0x7777777777777777)
    TEST_RR_OP(aes64esm, x13, x19, x4, 0xc497f5a697f5a6c4, 0x8888888888888888, 0x7777777777777777, x6, 8, x7)

inst_137:
    // Test 137:  Test with dataset: sbox64
    // result rd:x14(0xa71d38821d3882a7), rs1:x18(0x8989898989898989), rs2:x3(0x7676767676767676)
    TEST_RR_OP(aes64esm, x14, x18, x3, 0xa71d38821d3882a7, 0x8989898989898989, 0x7676767676767676, x6, 16, x7)

inst_138:
    // Test 138:  Test with dataset: sbox64
    // result rd:x15(0x7e409da3409da37e), rs1:x17(0x8a8a8a8a8a8a8a8a), rs2:x2(0x7575757575757575)
    TEST_RR_OP(aes64esm, x15, x17, x2, 0x7e409da3409da37e, 0x8a8a8a8a8a8a8a8a, 0x7575757575757575, x6, 24, x7)

inst_139:
    // Test 139:  Test with dataset: sbox64
    // result rd:x16(0x3dd79278d792783d), rs1:x16(0x8b8b8b8b8b8b8b8b), rs2:x1(0x7474747474747474)
    TEST_RR_OP(aes64esm, x16, x16, x1, 0x3dd79278d792783d, 0x8b8b8b8b8b8b8b8b, 0x7474747474747474, x6, 32, x7)

    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with dataset: sbox64
    // result rd:x17(0x64428fa9428fa964), rs1:x15(0x8c8c8c8c8c8c8c8c), rs2:x31(0x7373737373737373)
    TEST_RR_OP(aes64esm, x17, x15, x31, 0x64428fa9428fa964, 0x8c8c8c8c8c8c8c8c, 0x7373737373737373, x1, 0, x2)

inst_141:
    // Test 141:  Test with dataset: sbox64
    // result rd:x18(0x5d7a40677a40675d), rs1:x14(0x8d8d8d8d8d8d8d8d), rs2:x30(0x7272727272727272)
    TEST_RR_OP(aes64esm, x18, x14, x30, 0x5d7a40677a40675d, 0x8d8d8d8d8d8d8d8d, 0x7272727272727272, x1, 8, x2)

inst_142:
    // Test 142:  Test with dataset: sbox64
    // result rd:x19(0x19cca376cca37619), rs1:x13(0x8e8e8e8e8e8e8e8e), rs2:x29(0x7171717171717171)
    TEST_RR_OP(aes64esm, x19, x13, x29, 0x19cca376cca37619, 0x8e8e8e8e8e8e8e8e, 0x7171717171717171, x1, 16, x2)

inst_143:
    // Test 143:  Test with dataset: sbox64
    // result rd:x20(0x7315513715513773), rs1:x12(0x8f8f8f8f8f8f8f8f), rs2:x28(0x7070707070707070)
    TEST_RR_OP(aes64esm, x20, x12, x28, 0x7315513715513773, 0x8f8f8f8f8f8f8f8f, 0x7070707070707070, x1, 24, x2)

inst_144:
    // Test 144:  Test with dataset: sbox64
    // result rd:x21(0x6023a8eb23a8eb60), rs1:x11(0x9090909090909090), rs2:x27(0x6f6f6f6f6f6f6f6f)
    TEST_RR_OP(aes64esm, x21, x11, x27, 0x6023a8eb23a8eb60, 0x9090909090909090, 0x6f6f6f6f6f6f6f6f, x1, 32, x2)

    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with dataset: sbox64
    // result rd:x22(0x81a39fbda39fbd81), rs1:x10(0x9191919191919191), rs2:x26(0x6e6e6e6e6e6e6e6e)
    TEST_RR_OP(aes64esm, x22, x10, x26, 0x81a39fbda39fbd81, 0x9191919191919191, 0x6e6e6e6e6e6e6e6e, x1, 0, x2)

inst_146:
    // Test 146:  Test with dataset: sbox64
    // result rd:x23(0x4fda3ca9da3ca94f), rs1:x9(0x9292929292929292), rs2:x25(0x6d6d6d6d6d6d6d6d)
    TEST_RR_OP(aes64esm, x23, x9, x25, 0x4fda3ca9da3ca94f, 0x9292929292929292, 0x6d6d6d6d6d6d6d6d, x1, 8, x2)

inst_147:
    // Test 147:  Test with dataset: sbox64
    // result rd:x24(0xdc5350df5350dfdc), rs1:x8(0x9393939393939393), rs2:x24(0x6c6c6c6c6c6c6c6c)
    TEST_RR_OP(aes64esm, x24, x8, x24, 0xdc5350df5350dfdc, 0x9393939393939393, 0x6c6c6c6c6c6c6c6c, x1, 16, x2)

inst_148:
    // Test 148:  Test with dataset: sbox64
    // result rd:x25(0x22c57f98c57f9822), rs1:x7(0x9494949494949494), rs2:x23(0x6b6b6b6b6b6b6b6b)
    TEST_RR_OP(aes64esm, x25, x7, x23, 0x22c57f98c57f9822, 0x9494949494949494, 0x6b6b6b6b6b6b6b6b, x1, 24, x2)

inst_149:
    // Test 149:  Test with dataset: sbox64
    // result rd:x26(0x2a52027a52027a2a), rs1:x6(0x9595959595959595), rs2:x22(0x6a6a6a6a6a6a6a6a)
    TEST_RR_OP(aes64esm, x26, x6, x22, 0x2a52027a52027a2a, 0x9595959595959595, 0x6a6a6a6a6a6a6a6a, x1, 32, x2)

    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with dataset: sbox64
    // result rd:x27(0x902bf9422bf94290), rs1:x5(0x9696969696969696), rs2:x21(0x6969696969696969)
    TEST_RR_OP(aes64esm, x27, x5, x21, 0x902bf9422bf94290, 0x9696969696969696, 0x6969696969696969, x6, 0, x7)

inst_151:
    // Test 151:  Test with dataset: sbox64
    // result rd:x28(0x88c44509c4450988), rs1:x4(0x9797979797979797), rs2:x20(0x6868686868686868)
    TEST_RR_OP(aes64esm, x28, x4, x20, 0x88c44509c4450988, 0x9797979797979797, 0x6868686868686868, x6, 8, x7)

inst_152:
    // Test 152:  Test with dataset: sbox64
    // result rd:x29(0x461885db1885db46), rs1:x3(0x9898989898989898), rs2:x19(0x6767676767676767)
    TEST_RR_OP(aes64esm, x29, x3, x19, 0x461885db1885db46, 0x9898989898989898, 0x6767676767676767, x6, 16, x7)

inst_153:
    // Test 153:  Test with dataset: sbox64
    // result rd:x30(0xee92334f92334fee), rs1:x2(0x9999999999999999), rs2:x18(0x6666666666666666)
    TEST_RR_OP(aes64esm, x30, x2, x18, 0xee92334f92334fee, 0x9999999999999999, 0x6666666666666666, x6, 24, x7)

inst_154:
    // Test 154:  Test with dataset: sbox64
    // result rd:x31(0xb8bc4d49bc4d49b8), rs1:x1(0x9a9a9a9a9a9a9a9a), rs2:x17(0x6565656565656565)
    TEST_RR_OP(aes64esm, x31, x1, x17, 0xb8bc4d49bc4d49b8, 0x9a9a9a9a9a9a9a9a, 0x6565656565656565, x6, 32, x7)

    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with dataset: sbox64
    // result rd:x1(0x14ed43baed43ba14), rs1:x31(0x9b9b9b9b9b9b9b9b), rs2:x16(0x6464646464646464)
    TEST_RR_OP(aes64esm, x1, x31, x16, 0x14ed43baed43ba14, 0x9b9b9b9b9b9b9b9b, 0x6464646464646464, x6, 0, x7)

inst_156:
    // Test 156:  Test with dataset: sbox64
    // result rd:x2(0xdeb1fb94b1fb94de), rs1:x30(0x9c9c9c9c9c9c9c9c), rs2:x15(0x6363636363636363)
    TEST_RR_OP(aes64esm, x2, x30, x15, 0xdeb1fb94b1fb94de, 0x9c9c9c9c9c9c9c9c, 0x6363636363636363, x6, 8, x7)

inst_157:
    // Test 157:  Test with dataset: sbox64
    // result rd:x3(0x5e59aaad59aaad5e), rs1:x29(0x9d9d9d9d9d9d9d9d), rs2:x14(0x6262626262626262)
    TEST_RR_OP(aes64esm, x3, x29, x14, 0x5e59aaad59aaad5e, 0x9d9d9d9d9d9d9d9d, 0x6262626262626262, x6, 16, x7)

inst_158:
    // Test 158:  Test with dataset: sbox64
    // result rd:x4(0x0b3cefd83cefd80b), rs1:x28(0x9e9e9e9e9e9e9e9e), rs2:x13(0x6161616161616161)
    TEST_RR_OP(aes64esm, x4, x28, x13, 0x0b3cefd83cefd80b, 0x9e9e9e9e9e9e9e9e, 0x6161616161616161, x6, 24, x7)

inst_159:
    // Test 159:  Test with dataset: sbox64
    // result rd:x5(0xdbc6d0cdc6d0cddb), rs1:x27(0x9f9f9f9f9f9f9f9f), rs2:x12(0x6060606060606060)
    TEST_RR_OP(aes64esm, x5, x27, x12, 0xdbc6d0cdc6d0cddb, 0x9f9f9f9f9f9f9f9f, 0x6060606060606060, x6, 32, x7)

    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with dataset: sbox64
    // result rd:x6(0xe091cfbe91cfbee0), rs1:x26(0xa0a0a0a0a0a0a0a0), rs2:x11(0x5f5f5f5f5f5f5f5f)
    TEST_RR_OP(aes64esm, x6, x26, x11, 0xe091cfbe91cfbee0, 0xa0a0a0a0a0a0a0a0, 0x5f5f5f5f5f5f5f5f, x1, 0, x2)

inst_161:
    // Test 161:  Test with dataset: sbox64
    // result rd:x7(0x328c58e68c58e632), rs1:x25(0xa1a1a1a1a1a1a1a1), rs2:x10(0x5e5e5e5e5e5e5e5e)
    TEST_RR_OP(aes64esm, x7, x25, x10, 0x328c58e68c58e632, 0xa1a1a1a1a1a1a1a1, 0x5e5e5e5e5e5e5e5e, x1, 8, x2)

inst_162:
    // Test 162:  Test with dataset: sbox64
    // result rd:x8(0x3aa04cd6a04cd63a), rs1:x24(0xa2a2a2a2a2a2a2a2), rs2:x9(0x5d5d5d5d5d5d5d5d)
    TEST_RR_OP(aes64esm, x8, x24, x9, 0x3aa04cd6a04cd63a, 0xa2a2a2a2a2a2a2a2, 0x5d5d5d5d5d5d5d5d, x1, 16, x2)

inst_163:
    // Test 163:  Test with dataset: sbox64
    // result rd:x9(0x0aca4a8aca4a8a0a), rs1:x23(0xa3a3a3a3a3a3a3a3), rs2:x8(0x5c5c5c5c5c5c5c5c)
    TEST_RR_OP(aes64esm, x9, x23, x8, 0x0aca4a8aca4a8a0a, 0xa3a3a3a3a3a3a3a3, 0x5c5c5c5c5c5c5c5c, x1, 24, x2)

inst_164:
    // Test 164:  Test with dataset: sbox64
    // result rd:x10(0x49d939a9d939a949), rs1:x22(0xa4a4a4a4a4a4a4a4), rs2:x7(0x5b5b5b5b5b5b5b5b)
    TEST_RR_OP(aes64esm, x10, x22, x7, 0x49d939a9d939a949, 0xa4a4a4a4a4a4a4a4, 0x5b5b5b5b5b5b5b5b, x1, 32, x2)

    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with dataset: sbox64
    // result rd:x11(0x06d5be6dd5be6d06), rs1:x21(0xa5a5a5a5a5a5a5a5), rs2:x6(0x5a5a5a5a5a5a5a5a)
    TEST_RR_OP(aes64esm, x11, x21, x6, 0x06d5be6dd5be6d06, 0xa5a5a5a5a5a5a5a5, 0x5a5a5a5a5a5a5a5a, x1, 0, x7)

inst_166:
    // Test 166:  Test with dataset: sbox64
    // result rd:x12(0x240ecbe10ecbe124), rs1:x20(0xa6a6a6a6a6a6a6a6), rs2:x5(0x5959595959595959)
    TEST_RR_OP(aes64esm, x12, x20, x5, 0x240ecbe10ecbe124, 0xa6a6a6a6a6a6a6a6, 0x5959595959595959, x1, 8, x7)

inst_167:
    // Test 167:  Test with dataset: sbox64
    // result rd:x13(0x5c066a30066a305c), rs1:x19(0xa7a7a7a7a7a7a7a7), rs2:x4(0x5858585858585858)
    TEST_RR_OP(aes64esm, x13, x19, x4, 0x5c066a30066a305c, 0xa7a7a7a7a7a7a7a7, 0x5858585858585858, x1, 16, x7)

inst_168:
    // Test 168:  Test with dataset: sbox64
    // result rd:x14(0xc2725beb725bebc2), rs1:x18(0xa8a8a8a8a8a8a8a8), rs2:x3(0x5757575757575757)
    TEST_RR_OP(aes64esm, x14, x18, x3, 0xc2725beb725bebc2, 0xa8a8a8a8a8a8a8a8, 0x5757575757575757, x1, 24, x7)

inst_169:
    // Test 169:  Test with dataset: sbox64
    // result rd:x15(0xd375b11775b117d3), rs1:x17(0xa9a9a9a9a9a9a9a9), rs2:x2(0x5656565656565656)
    TEST_RR_OP(aes64esm, x15, x17, x2, 0xd375b11775b117d3, 0xa9a9a9a9a9a9a9a9, 0x5656565656565656, x1, 32, x7)

    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with dataset: sbox64
    // result rd:x16(0xac5cfc0c5cfc0cac), rs1:x16(0xaaaaaaaaaaaaaaaa), rs2:x1(0x5555555555555555)
    TEST_RR_OP(aes64esm, x16, x16, x1, 0xac5cfc0c5cfc0cac, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555, x2, 0, x3)

inst_171:
    // Test 171:  Test with dataset: sbox64
    // result rd:x17(0x62a420e6a420e662), rs1:x15(0xabababababababab), rs2:x31(0x5454545454545454)
    TEST_RR_OP(aes64esm, x17, x15, x31, 0x62a420e6a420e662, 0xabababababababab, 0x5454545454545454, x2, 8, x3)

inst_172:
    // Test 172:  Test with dataset: sbox64
    // result rd:x18(0x9115ed6915ed6991), rs1:x14(0xacacacacacacacac), rs2:x30(0x5353535353535353)
    TEST_RR_OP(aes64esm, x18, x14, x30, 0x9115ed6915ed6991, 0xacacacacacacacac, 0x5353535353535353, x2, 16, x3)

inst_173:
    // Test 173:  Test with dataset: sbox64
    // result rd:x19(0x953100a43100a495), rs1:x13(0xadadadadadadadad), rs2:x29(0x5252525252525252)
    TEST_RR_OP(aes64esm, x19, x13, x29, 0x953100a43100a495, 0xadadadadadadadad, 0x5252525252525252, x2, 24, x3)

inst_174:
    // Test 174:  Test with dataset: sbox64
    // result rd:x20(0xe4bbd18ebbd18ee4), rs1:x12(0xaeaeaeaeaeaeaeae), rs2:x28(0x5151515151515151)
    TEST_RR_OP(aes64esm, x20, x12, x28, 0xe4bbd18ebbd18ee4, 0xaeaeaeaeaeaeaeae, 0x5151515151515151, x2, 32, x3)

    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with dataset: sbox64
    // result rd:x21(0x7907532d07532d79), rs1:x11(0xafafafafafafafaf), rs2:x27(0x5050505050505050)
    TEST_RR_OP(aes64esm, x21, x11, x27, 0x7907532d07532d79, 0xafafafafafafafaf, 0x5050505050505050, x1, 0, x2)

inst_176:
    // Test 176:  Test with dataset: sbox64
    // result rd:x22(0xe7428421428421e7), rs1:x10(0xb0b0b0b0b0b0b0b0), rs2:x26(0x4f4f4f4f4f4f4f4f)
    TEST_RR_OP(aes64esm, x22, x10, x26, 0xe7428421428421e7, 0xb0b0b0b0b0b0b0b0, 0x4f4f4f4f4f4f4f4f, x1, 8, x2)

inst_177:
    // Test 177:  Test with dataset: sbox64
    // result rd:x23(0xc8fa2f1dfa2f1dc8), rs1:x9(0xb1b1b1b1b1b1b1b1), rs2:x25(0x4e4e4e4e4e4e4e4e)
    TEST_RR_OP(aes64esm, x23, x9, x25, 0xc8fa2f1dfa2f1dc8, 0xb1b1b1b1b1b1b1b1, 0x4e4e4e4e4e4e4e4e, x1, 16, x2)

inst_178:
    // Test 178:  Test with dataset: sbox64
    // result rd:x24(0x3750e38450e38437), rs1:x8(0xb2b2b2b2b2b2b2b2), rs2:x24(0x4d4d4d4d4d4d4d4d)
    TEST_RR_OP(aes64esm, x24, x8, x24, 0x3750e38450e38437, 0xb2b2b2b2b2b2b2b2, 0x4d4d4d4d4d4d4d4d, x1, 24, x2)

inst_179:
    // Test 179:  Test with dataset: sbox64
    // result rd:x25(0x6da129e5a129e56d), rs1:x7(0xb3b3b3b3b3b3b3b3), rs2:x23(0x4c4c4c4c4c4c4c4c)
    TEST_RR_OP(aes64esm, x25, x7, x23, 0x6da129e5a129e56d, 0xb3b3b3b3b3b3b3b3, 0x4c4c4c4c4c4c4c4c, x1, 32, x2)

    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with dataset: sbox64
    // result rd:x26(0x8dcfb3f1cfb3f18d), rs1:x6(0xb4b4b4b4b4b4b4b4), rs2:x22(0x4b4b4b4b4b4b4b4b)
    TEST_RR_OP(aes64esm, x26, x6, x22, 0x8dcfb3f1cfb3f18d, 0xb4b4b4b4b4b4b4b4, 0x4b4b4b4b4b4b4b4b, x1, 0, x7)

inst_181:
    // Test 181:  Test with dataset: sbox64
    // result rd:x27(0xd5d0d6d3d0d6d3d5), rs1:x5(0xb5b5b5b5b5b5b5b5), rs2:x21(0x4a4a4a4a4a4a4a4a)
    TEST_RR_OP(aes64esm, x27, x5, x21, 0xd5d0d6d3d0d6d3d5, 0xb5b5b5b5b5b5b5b5, 0x4a4a4a4a4a4a4a4a, x1, 8, x7)

inst_182:
    // Test 182:  Test with dataset: sbox64
    // result rd:x28(0x4ed13ba4d13ba44e), rs1:x4(0xb6b6b6b6b6b6b6b6), rs2:x20(0x4949494949494949)
    TEST_RR_OP(aes64esm, x28, x4, x20, 0x4ed13ba4d13ba44e, 0xb6b6b6b6b6b6b6b6, 0x4949494949494949, x1, 16, x7)

inst_183:
    // Test 183:  Test with dataset: sbox64
    // result rd:x29(0xa9bf5244bf5244a9), rs1:x3(0xb7b7b7b7b7b7b7b7), rs2:x19(0x4848484848484848)
    TEST_RR_OP(aes64esm, x29, x3, x19, 0xa9bf5244bf5244a9, 0xb7b7b7b7b7b7b7b7, 0x4848484848484848, x1, 24, x7)

inst_184:
    // Test 184:  Test with dataset: sbox64
    // result rd:x30(0x6c23a0ef23a0ef6c), rs1:x2(0xb8b8b8b8b8b8b8b8), rs2:x18(0x4747474747474747)
    TEST_RR_OP(aes64esm, x30, x2, x18, 0x6c23a0ef23a0ef6c, 0xb8b8b8b8b8b8b8b8, 0x4747474747474747, x1, 32, x7)

    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with dataset: sbox64
    // result rd:x31(0x56425a4e425a4e56), rs1:x1(0xb9b9b9b9b9b9b9b9), rs2:x17(0x4646464646464646)
    TEST_RR_OP(aes64esm, x31, x1, x17, 0x56425a4e425a4e56, 0xb9b9b9b9b9b9b9b9, 0x4646464646464646, x5, 0, x6)

inst_186:
    // Test 186:  Test with dataset: sbox64
    // result rd:x1(0xf4416edb416edbf4), rs1:x31(0xbabababababababa), rs2:x16(0x4545454545454545)
    TEST_RR_OP(aes64esm, x1, x31, x16, 0xf4416edb416edbf4, 0xbabababababababa, 0x4545454545454545, x5, 8, x6)

inst_187:
    // Test 187:  Test with dataset: sbox64
    // result rd:x2(0xeae21b13e21b13ea), rs1:x30(0xbbbbbbbbbbbbbbbb), rs2:x15(0x4444444444444444)
    TEST_RR_OP(aes64esm, x2, x30, x15, 0xeae21b13e21b13ea, 0xbbbbbbbbbbbbbbbb, 0x4444444444444444, x5, 16, x6)

inst_188:
    // Test 188:  Test with dataset: sbox64
    // result rd:x3(0x65e41a9be41a9b65), rs1:x29(0xbcbcbcbcbcbcbcbc), rs2:x14(0x4343434343434343)
    TEST_RR_OP(aes64esm, x3, x29, x14, 0x65e41a9be41a9b65, 0xbcbcbcbcbcbcbcbc, 0x4343434343434343, x5, 24, x6)

inst_189:
    // Test 189:  Test with dataset: sbox64
    // result rd:x4(0x7a802cd6802cd67a), rs1:x28(0xbdbdbdbdbdbdbdbd), rs2:x13(0x4242424242424242)
    TEST_RR_OP(aes64esm, x4, x28, x13, 0x7a802cd6802cd67a, 0xbdbdbdbdbdbdbdbd, 0x4242424242424242, x5, 32, x6)

    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with dataset: sbox64
    // result rd:x5(0xaed983f4d983f4ae), rs1:x27(0xbebebebebebebebe), rs2:x12(0x4141414141414141)
    TEST_RR_OP(aes64esm, x5, x27, x12, 0xaed983f4d983f4ae, 0xbebebebebebebebe, 0x4141414141414141, x1, 0, x2)

inst_191:
    // Test 191:  Test with dataset: sbox64
    // result rd:x6(0x080b090a0b090a08), rs1:x26(0xbfbfbfbfbfbfbfbf), rs2:x11(0x4040404040404040)
    TEST_RR_OP(aes64esm, x6, x26, x11, 0x080b090a0b090a08, 0xbfbfbfbfbfbfbfbf, 0x4040404040404040, x1, 8, x2)

inst_192:
    // Test 192:  Test with dataset: sbox64
    // result rd:x7(0xbaf0753ff0753fba), rs1:x25(0xc0c0c0c0c0c0c0c0), rs2:x10(0x3f3f3f3f3f3f3f3f)
    TEST_RR_OP(aes64esm, x7, x25, x10, 0xbaf0753ff0753fba, 0xc0c0c0c0c0c0c0c0, 0x3f3f3f3f3f3f3f3f, x1, 16, x2)

inst_193:
    // Test 193:  Test with dataset: sbox64
    // result rd:x8(0x783db2f73db2f778), rs1:x24(0xc1c1c1c1c1c1c1c1), rs2:x9(0x3e3e3e3e3e3e3e3e)
    TEST_RR_OP(aes64esm, x8, x24, x9, 0x783db2f73db2f778, 0xc1c1c1c1c1c1c1c1, 0x3e3e3e3e3e3e3e3e, x1, 24, x2)

inst_194:
    // Test 194:  Test with dataset: sbox64
    // result rd:x9(0x2523272123272125), rs1:x23(0xc2c2c2c2c2c2c2c2), rs2:x8(0x3d3d3d3d3d3d3d3d)
    TEST_RR_OP(aes64esm, x9, x23, x8, 0x2523272123272125, 0xc2c2c2c2c2c2c2c2, 0x3d3d3d3d3d3d3d3d, x1, 32, x2)

    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with dataset: sbox64
    // result rd:x10(0x2e7aebbf7aebbf2e), rs1:x22(0xc3c3c3c3c3c3c3c3), rs2:x7(0x3c3c3c3c3c3c3c3c)
    TEST_RR_OP(aes64esm, x10, x22, x7, 0x2e7aebbf7aebbf2e, 0xc3c3c3c3c3c3c3c3, 0x3c3c3c3c3c3c3c3c, x1, 0, x2)

inst_196:
    // Test 196:  Test with dataset: sbox64
    // result rd:x11(0x1c05e2fb05e2fb1c), rs1:x21(0xc4c4c4c4c4c4c4c4), rs2:x6(0x3b3b3b3b3b3b3b3b)
    TEST_RR_OP(aes64esm, x11, x21, x6, 0x1c05e2fb05e2fb1c, 0xc4c4c4c4c4c4c4c4, 0x3b3b3b3b3b3b3b3b, x1, 8, x2)

inst_197:
    // Test 197:  Test with dataset: sbox64
    // result rd:x12(0xa6cc80eacc80eaa6), rs1:x20(0xc5c5c5c5c5c5c5c5), rs2:x5(0x3a3a3a3a3a3a3a3a)
    TEST_RR_OP(aes64esm, x12, x20, x5, 0xa6cc80eacc80eaa6, 0xc5c5c5c5c5c5c5c5, 0x3a3a3a3a3a3a3a3a, x1, 16, x2)

inst_198:
    // Test 198:  Test with dataset: sbox64
    // result rd:x13(0xb44512e34512e3b4), rs1:x19(0xc6c6c6c6c6c6c6c6), rs2:x4(0x3939393939393939)
    TEST_RR_OP(aes64esm, x13, x19, x4, 0xb44512e34512e3b4, 0xc6c6c6c6c6c6c6c6, 0x3939393939393939, x1, 24, x2)

inst_199:
    // Test 199:  Test with dataset: sbox64
    // result rd:x14(0xc69e075f9e075fc6), rs1:x18(0xc7c7c7c7c7c7c7c7), rs2:x3(0x3838383838383838)
    TEST_RR_OP(aes64esm, x14, x18, x3, 0xc69e075f9e075fc6, 0xc7c7c7c7c7c7c7c7, 0x3838383838383838, x1, 32, x2)

    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with dataset: sbox64
    // result rd:x15(0xe87e9a0c7e9a0ce8), rs1:x17(0xc8c8c8c8c8c8c8c8), rs2:x2(0x3737373737373737)
    TEST_RR_OP(aes64esm, x15, x17, x2, 0xe87e9a0c7e9a0ce8, 0xc8c8c8c8c8c8c8c8, 0x3737373737373737, x3, 0, x4)

inst_201:
    // Test 201:  Test with dataset: sbox64
    // result rd:x16(0xddae0576ae0576dd), rs1:x16(0xc9c9c9c9c9c9c9c9), rs2:x1(0x3636363636363636)
    TEST_RR_OP(aes64esm, x16, x16, x1, 0xddae0576ae0576dd, 0xc9c9c9c9c9c9c9c9, 0x3636363636363636, x3, 8, x4)

inst_202:
    // Test 202:  Test with dataset: sbox64
    // result rd:x17(0x744996ab4996ab74), rs1:x15(0xcacacacacacacaca), rs2:x31(0x3535353535353535)
    TEST_RR_OP(aes64esm, x17, x15, x31, 0x744996ab4996ab74, 0xcacacacacacacaca, 0x3535353535353535, x3, 16, x4)

inst_203:
    // Test 203:  Test with dataset: sbox64
    // result rd:x18(0x1f1618111618111f), rs1:x14(0xcbcbcbcbcbcbcbcb), rs2:x30(0x3434343434343434)
    TEST_RR_OP(aes64esm, x18, x14, x30, 0x1f1618111618111f, 0xcbcbcbcbcbcbcbcb, 0x3434343434343434, x3, 24, x4)

inst_204:
    // Test 204:  Test with dataset: sbox64
    // result rd:x19(0x4bc8c340c8c3404b), rs1:x13(0xcccccccccccccccc), rs2:x29(0x3333333333333333)
    TEST_RR_OP(aes64esm, x19, x13, x29, 0x4bc8c340c8c3404b, 0xcccccccccccccccc, 0x3333333333333333, x3, 32, x4)

    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with dataset: sbox64
    // result rd:x20(0xbd04239a04239abd), rs1:x12(0xcdcdcdcdcdcdcdcd), rs2:x28(0x3232323232323232)
    TEST_RR_OP(aes64esm, x20, x12, x28, 0xbd04239a04239abd, 0xcdcdcdcdcdcdcdcd, 0x3232323232323232, x1, 0, x2)

inst_206:
    // Test 206:  Test with dataset: sbox64
    // result rd:x21(0x8b5fc7135fc7138b), rs1:x11(0xcececececececece), rs2:x27(0x3131313131313131)
    TEST_RR_OP(aes64esm, x21, x11, x27, 0x8b5fc7135fc7138b, 0xcececececececece, 0x3131313131313131, x1, 8, x2)

inst_207:
    // Test 207:  Test with dataset: sbox64
    // result rd:x22(0x8a03048d03048d8a), rs1:x10(0xcfcfcfcfcfcfcfcf), rs2:x26(0x3030303030303030)
    TEST_RR_OP(aes64esm, x22, x10, x26, 0x8a03048d03048d8a, 0xcfcfcfcfcfcfcfcf, 0x3030303030303030, x1, 16, x2)

inst_208:
    // Test 208:  Test with dataset: sbox64
    // result rd:x23(0x70df15badf15ba70), rs1:x9(0xd0d0d0d0d0d0d0d0), rs2:x25(0x2f2f2f2f2f2f2f2f)
    TEST_RR_OP(aes64esm, x23, x9, x25, 0x70df15badf15ba70, 0xd0d0d0d0d0d0d0d0, 0x2f2f2f2f2f2f2f2f, x1, 24, x2)

inst_209:
    // Test 209:  Test with dataset: sbox64
    // result rd:x24(0x3e2f31202f31203e), rs1:x8(0xd1d1d1d1d1d1d1d1), rs2:x24(0x2e2e2e2e2e2e2e2e)
    TEST_RR_OP(aes64esm, x24, x8, x24, 0x3e2f31202f31203e, 0xd1d1d1d1d1d1d1d1, 0x2e2e2e2e2e2e2e2e, x1, 32, x2)

    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with dataset: sbox64
    // result rd:x25(0xb502d86f02d86fb5), rs1:x7(0xd2d2d2d2d2d2d2d2), rs2:x23(0x2d2d2d2d2d2d2d2d)
    TEST_RR_OP(aes64esm, x25, x7, x23, 0xb502d86f02d86fb5, 0xd2d2d2d2d2d2d2d2, 0x2d2d2d2d2d2d2d2d, x1, 0, x2)

inst_211:
    // Test 211:  Test with dataset: sbox64
    // result rd:x26(0x665f71485f714866), rs1:x6(0xd3d3d3d3d3d3d3d3), rs2:x22(0x2c2c2c2c2c2c2c2c)
    TEST_RR_OP(aes64esm, x26, x6, x22, 0x665f71485f714866, 0xd3d3d3d3d3d3d3d3, 0x2c2c2c2c2c2c2c2c, x1, 8, x2)

inst_212:
    // Test 212:  Test with dataset: sbox64
    // result rd:x27(0x4898f12198f12148), rs1:x5(0xd4d4d4d4d4d4d4d4), rs2:x21(0x2b2b2b2b2b2b2b2b)
    TEST_RR_OP(aes64esm, x27, x5, x21, 0x4898f12198f12148, 0xd4d4d4d4d4d4d4d4, 0x2b2b2b2b2b2b2b2b, x1, 16, x2)

inst_213:
    // Test 213:  Test with dataset: sbox64
    // result rd:x28(0x0332e5d432e5d403), rs1:x4(0xd5d5d5d5d5d5d5d5), rs2:x20(0x2a2a2a2a2a2a2a2a)
    TEST_RR_OP(aes64esm, x28, x4, x20, 0x0332e5d432e5d403, 0xd5d5d5d5d5d5d5d5, 0x2a2a2a2a2a2a2a2a, x1, 24, x2)

inst_214:
    // Test 214:  Test with dataset: sbox64
    // result rd:x29(0xf603a55003a550f6), rs1:x3(0xd6d6d6d6d6d6d6d6), rs2:x19(0x2929292929292929)
    TEST_RR_OP(aes64esm, x29, x3, x19, 0xf603a55003a550f6, 0xd6d6d6d6d6d6d6d6, 0x2929292929292929, x1, 32, x2)

    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with dataset: sbox64
    // result rd:x30(0x0e40347a40347a0e), rs1:x2(0xd7d7d7d7d7d7d7d7), rs2:x18(0x2828282828282828)
    TEST_RR_OP(aes64esm, x30, x2, x18, 0x0e40347a40347a0e, 0xd7d7d7d7d7d7d7d7, 0x2828282828282828, x4, 0, x5)

inst_216:
    // Test 216:  Test with dataset: sbox64
    // result rd:x31(0x618dcc208dcc2061), rs1:x1(0xd8d8d8d8d8d8d8d8), rs2:x17(0x2727272727272727)
    TEST_RR_OP(aes64esm, x31, x1, x17, 0x618dcc208dcc2061, 0xd8d8d8d8d8d8d8d8, 0x2727272727272727, x4, 8, x5)

inst_217:
    // Test 217:  Test with dataset: sbox64
    // result rd:x1(0x3568f7aa68f7aa35), rs1:x31(0xd9d9d9d9d9d9d9d9), rs2:x16(0x2626262626262626)
    TEST_RR_OP(aes64esm, x1, x31, x16, 0x3568f7aa68f7aa35, 0xd9d9d9d9d9d9d9d9, 0x2626262626262626, x4, 16, x5)

inst_218:
    // Test 218:  Test with dataset: sbox64
    // result rd:x2(0x57ef3f87ef3f8757), rs1:x30(0xdadadadadadadada), rs2:x15(0x2525252525252525)
    TEST_RR_OP(aes64esm, x2, x30, x15, 0x57ef3f87ef3f8757, 0xdadadadadadadada, 0x2525252525252525, x4, 24, x5)

inst_219:
    // Test 219:  Test with dataset: sbox64
    // result rd:x3(0xb93336bc3336bcb9), rs1:x29(0xdbdbdbdbdbdbdbdb), rs2:x14(0x2424242424242424)
    TEST_RR_OP(aes64esm, x3, x29, x14, 0xb93336bc3336bcb9, 0xdbdbdbdbdbdbdbdb, 0x2424242424242424, x4, 32, x5)

    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with dataset: sbox64
    // result rd:x4(0x867d26dd7d26dd86), rs1:x28(0xdcdcdcdcdcdcdcdc), rs2:x13(0x2323232323232323)
    TEST_RR_OP(aes64esm, x4, x28, x13, 0x867d26dd7d26dd86, 0xdcdcdcdcdcdcdcdc, 0x2323232323232323, x1, 0, x2)

inst_221:
    // Test 221:  Test with dataset: sbox64
    // result rd:x5(0xc1379365379365c1), rs1:x27(0xdddddddddddddddd), rs2:x12(0x2222222222222222)
    TEST_RR_OP(aes64esm, x5, x27, x12, 0xc1379365379365c1, 0xdddddddddddddddd, 0x2222222222222222, x1, 8, x2)

inst_222:
    // Test 222:  Test with dataset: sbox64
    // result rd:x6(0x1d26fdc626fdc61d), rs1:x26(0xdededededededede), rs2:x11(0x2121212121212121)
    TEST_RR_OP(aes64esm, x6, x26, x11, 0x1d26fdc626fdc61d, 0xdededededededede, 0x2121212121212121, x1, 16, x2)

inst_223:
    // Test 223:  Test with dataset: sbox64
    // result rd:x7(0x9ee5b7cce5b7cc9e), rs1:x25(0xdfdfdfdfdfdfdfdf), rs2:x10(0x2020202020202020)
    TEST_RR_OP(aes64esm, x7, x25, x10, 0x9ee5b7cce5b7cc9e, 0xdfdfdfdfdfdfdfdf, 0x2020202020202020, x1, 24, x2)

inst_224:
    // Test 224:  Test with dataset: sbox64
    // result rd:x8(0xe182c0a382c0a3e1), rs1:x24(0xe0e0e0e0e0e0e0e0), rs2:x9(0x1f1f1f1f1f1f1f1f)
    TEST_RR_OP(aes64esm, x8, x24, x9, 0xe182c0a382c0a3e1, 0xe0e0e0e0e0e0e0e0, 0x1f1f1f1f1f1f1f1f, x1, 32, x2)

    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with dataset: sbox64
    // result rd:x9(0xf87d72f77d72f7f8), rs1:x23(0xe1e1e1e1e1e1e1e1), rs2:x8(0x1e1e1e1e1e1e1e1e)
    TEST_RR_OP(aes64esm, x9, x23, x8, 0xf87d72f77d72f7f8, 0xe1e1e1e1e1e1e1e1, 0x1e1e1e1e1e1e1e1e, x1, 0, x2)

inst_226:
    // Test 226:  Test with dataset: sbox64
    // result rd:x10(0x98dca4e0dca4e098), rs1:x22(0xe2e2e2e2e2e2e2e2), rs2:x7(0x1d1d1d1d1d1d1d1d)
    TEST_RR_OP(aes64esm, x10, x22, x7, 0x98dca4e0dca4e098, 0xe2e2e2e2e2e2e2e2, 0x1d1d1d1d1d1d1d1d, x1, 8, x2)

inst_227:
    // Test 227:  Test with dataset: sbox64
    // result rd:x11(0x119d9c109d9c1011), rs1:x21(0xe3e3e3e3e3e3e3e3), rs2:x6(0x1c1c1c1c1c1c1c1c)
    TEST_RR_OP(aes64esm, x11, x21, x6, 0x119d9c109d9c1011, 0xe3e3e3e3e3e3e3e3, 0x1c1c1c1c1c1c1c1c, x1, 16, x2)

inst_228:
    // Test 228:  Test with dataset: sbox64
    // result rd:x12(0x6938affe38affe69), rs1:x20(0xe4e4e4e4e4e4e4e4), rs2:x5(0x1b1b1b1b1b1b1b1b)
    TEST_RR_OP(aes64esm, x12, x20, x5, 0x6938affe38affe69, 0xe4e4e4e4e4e4e4e4, 0x1b1b1b1b1b1b1b1b, x1, 24, x2)

inst_229:
    // Test 229:  Test with dataset: sbox64
    // result rd:x13(0xd954a22f54a22fd9), rs1:x19(0xe5e5e5e5e5e5e5e5), rs2:x4(0x1a1a1a1a1a1a1a1a)
    TEST_RR_OP(aes64esm, x13, x19, x4, 0xd954a22f54a22fd9, 0xe5e5e5e5e5e5e5e5, 0x1a1a1a1a1a1a1a1a, x1, 32, x2)

    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with dataset: sbox64
    // result rd:x14(0x8e60d43a60d43a8e), rs1:x18(0xe6e6e6e6e6e6e6e6), rs2:x3(0x1919191919191919)
    TEST_RR_OP(aes64esm, x14, x18, x3, 0x8e60d43a60d43a8e, 0xe6e6e6e6e6e6e6e6, 0x1919191919191919, x4, 0, x5)

inst_231:
    // Test 231:  Test with dataset: sbox64
    // result rd:x15(0x94dfade6dfade694), rs1:x17(0xe7e7e7e7e7e7e7e7), rs2:x2(0x1818181818181818)
    TEST_RR_OP(aes64esm, x15, x17, x2, 0x94dfade6dfade694, 0xe7e7e7e7e7e7e7e7, 0x1818181818181818, x4, 8, x5)

inst_232:
    // Test 232:  Test with dataset: sbox64
    // result rd:x16(0x9b26f04d26f04d9b), rs1:x16(0xe8e8e8e8e8e8e8e8), rs2:x1(0x1717171717171717)
    TEST_RR_OP(aes64esm, x16, x16, x1, 0x9b26f04d26f04d9b, 0xe8e8e8e8e8e8e8e8, 0x1717171717171717, x4, 16, x5)

inst_233:
    // Test 233:  Test with dataset: sbox64
    // result rd:x17(0x1ef547acf547ac1e), rs1:x15(0xe9e9e9e9e9e9e9e9), rs2:x31(0x1616161616161616)
    TEST_RR_OP(aes64esm, x17, x15, x31, 0x1ef547acf547ac1e, 0xe9e9e9e9e9e9e9e9, 0x1616161616161616, x4, 24, x5)

inst_234:
    // Test 234:  Test with dataset: sbox64
    // result rd:x18(0x87fe5920fe592087), rs1:x14(0xeaeaeaeaeaeaeaea), rs2:x30(0x1515151515151515)
    TEST_RR_OP(aes64esm, x18, x14, x30, 0x87fe5920fe592087, 0xeaeaeaeaeaeaeaea, 0x1515151515151515, x4, 32, x5)

    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with dataset: sbox64
    // result rd:x19(0xe9dcfacfdcfacfe9), rs1:x13(0xebebebebebebebeb), rs2:x29(0x1414141414141414)
    TEST_RR_OP(aes64esm, x19, x13, x29, 0xe9dcfacfdcfacfe9, 0xebebebebebebebeb, 0x1414141414141414, x1, 0, x2)

inst_236:
    // Test 236:  Test with dataset: sbox64
    // result rd:x20(0xce007db3007db3ce), rs1:x12(0xecececececececec), rs2:x28(0x1313131313131313)
    TEST_RR_OP(aes64esm, x20, x12, x28, 0xce007db3007db3ce, 0xecececececececec, 0x1313131313131313, x1, 8, x2)

inst_237:
    // Test 237:  Test with dataset: sbox64
    // result rd:x21(0x55eac976eac97655), rs1:x11(0xedededededededed), rs2:x27(0x1212121212121212)
    TEST_RR_OP(aes64esm, x21, x11, x27, 0x55eac976eac97655, 0xedededededededed, 0x1212121212121212, x1, 16, x2)

inst_238:
    // Test 238:  Test with dataset: sbox64
    // result rd:x22(0x28cd8267cd826728), rs1:x10(0xeeeeeeeeeeeeeeee), rs2:x26(0x1111111111111111)
    TEST_RR_OP(aes64esm, x22, x10, x26, 0x28cd8267cd826728, 0xeeeeeeeeeeeeeeee, 0x1111111111111111, x1, 24, x2)

inst_239:
    // Test 239:  Test with dataset: sbox64
    // result rd:x23(0xdfe0caf5e0caf5df), rs1:x9(0xefefefefefefefef), rs2:x25(0x1010101010101010)
    TEST_RR_OP(aes64esm, x23, x9, x25, 0xdfe0caf5e0caf5df, 0xefefefefefefefef, 0x1010101010101010, x1, 32, x2)

    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with dataset: sbox64
    // result rd:x24(0x8c9976639976638c), rs1:x8(0xf0f0f0f0f0f0f0f0), rs2:x24(0x0f0f0f0f0f0f0f0f)
    TEST_RR_OP(aes64esm, x24, x8, x24, 0x8c9976639976638c, 0xf0f0f0f0f0f0f0f0, 0xf0f0f0f0f0f0f0f, x1, 0, x2)

inst_241:
    // Test 241:  Test with dataset: sbox64
    // result rd:x25(0xa1bfabb5bfabb5a1), rs1:x7(0xf1f1f1f1f1f1f1f1), rs2:x23(0x0e0e0e0e0e0e0e0e)
    TEST_RR_OP(aes64esm, x25, x7, x23, 0xa1bfabb5bfabb5a1, 0xf1f1f1f1f1f1f1f1, 0xe0e0e0e0e0e0e0e, x1, 8, x2)

inst_242:
    // Test 242:  Test with dataset: sbox64
    // result rd:x26(0x896bd7356bd73589), rs1:x6(0xf2f2f2f2f2f2f2f2), rs2:x22(0x0d0d0d0d0d0d0d0d)
    TEST_RR_OP(aes64esm, x26, x6, x22, 0x896bd7356bd73589, 0xf2f2f2f2f2f2f2f2, 0xd0d0d0d0d0d0d0d, x1, 16, x2)

inst_243:
    // Test 243:  Test with dataset: sbox64
    // result rd:x27(0x0d03fef003fef00d), rs1:x5(0xf3f3f3f3f3f3f3f3), rs2:x21(0x0c0c0c0c0c0c0c0c)
    TEST_RR_OP(aes64esm, x27, x5, x21, 0x0d03fef003fef00d, 0xf3f3f3f3f3f3f3f3, 0xc0c0c0c0c0c0c0c, x1, 24, x2)

inst_244:
    // Test 244:  Test with dataset: sbox64
    // result rd:x28(0xbf182b8c182b8cbf), rs1:x4(0xf4f4f4f4f4f4f4f4), rs2:x20(0x0b0b0b0b0b0b0b0b)
    TEST_RR_OP(aes64esm, x28, x4, x20, 0xbf182b8c182b8cbf, 0xf4f4f4f4f4f4f4f4, 0xb0b0b0b0b0b0b0b, x1, 32, x2)

    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with dataset: sbox64
    // result rd:x29(0xe67e67ff7e67ffe6), rs1:x3(0xf5f5f5f5f5f5f5f5), rs2:x19(0x0a0a0a0a0a0a0a0a)
    TEST_RR_OP(aes64esm, x29, x3, x19, 0xe67e67ff7e67ffe6, 0xf5f5f5f5f5f5f5f5, 0xa0a0a0a0a0a0a0a, x4, 0, x5)

inst_246:
    // Test 246:  Test with dataset: sbox64
    // result rd:x30(0x428701c48701c442), rs1:x2(0xf6f6f6f6f6f6f6f6), rs2:x18(0x0909090909090909)
    TEST_RR_OP(aes64esm, x30, x2, x18, 0x428701c48701c442, 0xf6f6f6f6f6f6f6f6, 0x909090909090909, x4, 8, x5)

inst_247:
    // Test 247:  Test with dataset: sbox64
    // result rd:x31(0x688030d88030d868), rs1:x1(0xf7f7f7f7f7f7f7f7), rs2:x17(0x0808080808080808)
    TEST_RR_OP(aes64esm, x31, x1, x17, 0x688030d88030d868, 0xf7f7f7f7f7f7f7f7, 0x808080808080808, x4, 16, x5)

inst_248:
    // Test 248:  Test with dataset: sbox64
    // result rd:x1(0x41d6c552d6c55241), rs1:x31(0xf8f8f8f8f8f8f8f8), rs2:x16(0x0707070707070707)
    TEST_RR_OP(aes64esm, x1, x31, x16, 0x41d6c552d6c55241, 0xf8f8f8f8f8f8f8f8, 0x707070707070707, x4, 24, x5)

inst_249:
    // Test 249:  Test with dataset: sbox64
    // result rd:x2(0x99986f6e986f6e99), rs1:x30(0xf9f9f9f9f9f9f9f9), rs2:x15(0x0606060606060606)
    TEST_RR_OP(aes64esm, x2, x30, x15, 0x99986f6e986f6e99, 0xf9f9f9f9f9f9f9f9, 0x606060606060606, x4, 32, x5)

    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with dataset: sbox64
    // result rd:x3(0x2de76ba1e76ba12d), rs1:x29(0xfafafafafafafafa), rs2:x14(0x0505050505050505)
    TEST_RR_OP(aes64esm, x3, x29, x14, 0x2de76ba1e76ba12d, 0xfafafafafafafafa, 0x505050505050505, x1, 0, x2)

inst_251:
    // Test 251:  Test with dataset: sbox64
    // result rd:x4(0x0f13f2ee13f2ee0f), rs1:x28(0xfbfbfbfbfbfbfbfb), rs2:x13(0x0404040404040404)
    TEST_RR_OP(aes64esm, x4, x28, x13, 0x0f13f2ee13f2ee0f, 0xfbfbfbfbfbfbfbfb, 0x404040404040404, x1, 8, x2)

inst_252:
    // Test 252:  Test with dataset: sbox64
    // result rd:x5(0xb0f67b3df67b3db0), rs1:x27(0xfcfcfcfcfcfcfcfc), rs2:x12(0x0303030303030303)
    TEST_RR_OP(aes64esm, x5, x27, x12, 0xb0f67b3df67b3db0, 0xfcfcfcfcfcfcfcfc, 0x303030303030303, x1, 16, x2)

inst_253:
    // Test 253:  Test with dataset: sbox64
    // result rd:x6(0x5431771231771254), rs1:x26(0xfdfdfdfdfdfdfdfd), rs2:x11(0x0202020202020202)
    TEST_RR_OP(aes64esm, x6, x26, x11, 0x5431771231771254, 0xfdfdfdfdfdfdfdfd, 0x202020202020202, x1, 24, x2)

inst_254:
    // Test 254:  Test with dataset: sbox64
    // result rd:x7(0xbbe97c2ee97c2ebb), rs1:x25(0xfefefefefefefefe), rs2:x10(0x0101010101010101)
    TEST_RR_OP(aes64esm, x7, x25, x10, 0xbbe97c2ee97c2ebb, 0xfefefefefefefefe, 0x101010101010101, x1, 32, x2)

    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64esm)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64esm)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with dataset: sbox64
    // result rd:x8(0x168963fc8963fc16), rs1:x24(0xffffffffffffffff), rs2:x9(0x0000000000000000)
    TEST_RR_OP(aes64esm, x8, x24, x9, 0x168963fc8963fc16, 0xffffffffffffffff, 0x0, x1, 0, x2)
	
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

