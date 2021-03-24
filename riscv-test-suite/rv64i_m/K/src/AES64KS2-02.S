// RISC-V Architectural Validation Test AES64KS2-02
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
// Description: Testing instruction 'aes64ks2'.
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

    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with dataset: sbox64
    // result rd:x1(0x00000000ffffffff), rs1:x31(0x0000000000000000), rs2:x16(0xffffffffffffffff)
    TEST_RR_OP(aes64ks2, x1, x31, x16, 0x00000000ffffffff, 0x0, 0xffffffffffffffff, x6, 0, x7)

inst_1:
    // Test 1:  Test with dataset: sbox64
    // result rd:x2(0x01010101ffffffff), rs1:x30(0x0101010101010101), rs2:x15(0xfefefefefefefefe)
    TEST_RR_OP(aes64ks2, x2, x30, x15, 0x01010101ffffffff, 0x101010101010101, 0xfefefefefefefefe, x6, 8, x7)

inst_2:
    // Test 2:  Test with dataset: sbox64
    // result rd:x3(0x02020202ffffffff), rs1:x29(0x0202020202020202), rs2:x14(0xfdfdfdfdfdfdfdfd)
    TEST_RR_OP(aes64ks2, x3, x29, x14, 0x02020202ffffffff, 0x202020202020202, 0xfdfdfdfdfdfdfdfd, x6, 16, x7)

inst_3:
    // Test 3:  Test with dataset: sbox64
    // result rd:x4(0x03030303ffffffff), rs1:x28(0x0303030303030303), rs2:x13(0xfcfcfcfcfcfcfcfc)
    TEST_RR_OP(aes64ks2, x4, x28, x13, 0x03030303ffffffff, 0x303030303030303, 0xfcfcfcfcfcfcfcfc, x6, 24, x7)

inst_4:
    // Test 4:  Test with dataset: sbox64
    // result rd:x5(0x04040404ffffffff), rs1:x27(0x0404040404040404), rs2:x12(0xfbfbfbfbfbfbfbfb)
    TEST_RR_OP(aes64ks2, x5, x27, x12, 0x04040404ffffffff, 0x404040404040404, 0xfbfbfbfbfbfbfbfb, x6, 32, x7)

    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with dataset: sbox64
    // result rd:x6(0x05050505ffffffff), rs1:x26(0x0505050505050505), rs2:x11(0xfafafafafafafafa)
    TEST_RR_OP(aes64ks2, x6, x26, x11, 0x05050505ffffffff, 0x505050505050505, 0xfafafafafafafafa, x1, 0, x2)

inst_6:
    // Test 6:  Test with dataset: sbox64
    // result rd:x7(0x06060606ffffffff), rs1:x25(0x0606060606060606), rs2:x10(0xf9f9f9f9f9f9f9f9)
    TEST_RR_OP(aes64ks2, x7, x25, x10, 0x06060606ffffffff, 0x606060606060606, 0xf9f9f9f9f9f9f9f9, x1, 8, x2)

inst_7:
    // Test 7:  Test with dataset: sbox64
    // result rd:x8(0x07070707ffffffff), rs1:x24(0x0707070707070707), rs2:x9(0xf8f8f8f8f8f8f8f8)
    TEST_RR_OP(aes64ks2, x8, x24, x9, 0x07070707ffffffff, 0x707070707070707, 0xf8f8f8f8f8f8f8f8, x1, 16, x2)

inst_8:
    // Test 8:  Test with dataset: sbox64
    // result rd:x9(0x08080808ffffffff), rs1:x23(0x0808080808080808), rs2:x8(0xf7f7f7f7f7f7f7f7)
    TEST_RR_OP(aes64ks2, x9, x23, x8, 0x08080808ffffffff, 0x808080808080808, 0xf7f7f7f7f7f7f7f7, x1, 24, x2)

inst_9:
    // Test 9:  Test with dataset: sbox64
    // result rd:x10(0x09090909ffffffff), rs1:x22(0x0909090909090909), rs2:x7(0xf6f6f6f6f6f6f6f6)
    TEST_RR_OP(aes64ks2, x10, x22, x7, 0x09090909ffffffff, 0x909090909090909, 0xf6f6f6f6f6f6f6f6, x1, 32, x2)

    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with dataset: sbox64
    // result rd:x11(0x0a0a0a0affffffff), rs1:x21(0x0a0a0a0a0a0a0a0a), rs2:x6(0xf5f5f5f5f5f5f5f5)
    TEST_RR_OP(aes64ks2, x11, x21, x6, 0x0a0a0a0affffffff, 0xa0a0a0a0a0a0a0a, 0xf5f5f5f5f5f5f5f5, x1, 0, x7)

inst_11:
    // Test 11:  Test with dataset: sbox64
    // result rd:x12(0x0b0b0b0bffffffff), rs1:x20(0x0b0b0b0b0b0b0b0b), rs2:x5(0xf4f4f4f4f4f4f4f4)
    TEST_RR_OP(aes64ks2, x12, x20, x5, 0x0b0b0b0bffffffff, 0xb0b0b0b0b0b0b0b, 0xf4f4f4f4f4f4f4f4, x1, 8, x7)

inst_12:
    // Test 12:  Test with dataset: sbox64
    // result rd:x13(0x0c0c0c0cffffffff), rs1:x19(0x0c0c0c0c0c0c0c0c), rs2:x4(0xf3f3f3f3f3f3f3f3)
    TEST_RR_OP(aes64ks2, x13, x19, x4, 0x0c0c0c0cffffffff, 0xc0c0c0c0c0c0c0c, 0xf3f3f3f3f3f3f3f3, x1, 16, x7)

inst_13:
    // Test 13:  Test with dataset: sbox64
    // result rd:x14(0x0d0d0d0dffffffff), rs1:x18(0x0d0d0d0d0d0d0d0d), rs2:x3(0xf2f2f2f2f2f2f2f2)
    TEST_RR_OP(aes64ks2, x14, x18, x3, 0x0d0d0d0dffffffff, 0xd0d0d0d0d0d0d0d, 0xf2f2f2f2f2f2f2f2, x1, 24, x7)

inst_14:
    // Test 14:  Test with dataset: sbox64
    // result rd:x15(0x0e0e0e0effffffff), rs1:x17(0x0e0e0e0e0e0e0e0e), rs2:x2(0xf1f1f1f1f1f1f1f1)
    TEST_RR_OP(aes64ks2, x15, x17, x2, 0x0e0e0e0effffffff, 0xe0e0e0e0e0e0e0e, 0xf1f1f1f1f1f1f1f1, x1, 32, x7)

    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with dataset: sbox64
    // result rd:x16(0x0f0f0f0fffffffff), rs1:x16(0x0f0f0f0f0f0f0f0f), rs2:x1(0xf0f0f0f0f0f0f0f0)
    TEST_RR_OP(aes64ks2, x16, x16, x1, 0x0f0f0f0fffffffff, 0xf0f0f0f0f0f0f0f, 0xf0f0f0f0f0f0f0f0, x2, 0, x3)

inst_16:
    // Test 16:  Test with dataset: sbox64
    // result rd:x17(0x10101010ffffffff), rs1:x15(0x1010101010101010), rs2:x31(0xefefefefefefefef)
    TEST_RR_OP(aes64ks2, x17, x15, x31, 0x10101010ffffffff, 0x1010101010101010, 0xefefefefefefefef, x2, 8, x3)

inst_17:
    // Test 17:  Test with dataset: sbox64
    // result rd:x18(0x11111111ffffffff), rs1:x14(0x1111111111111111), rs2:x30(0xeeeeeeeeeeeeeeee)
    TEST_RR_OP(aes64ks2, x18, x14, x30, 0x11111111ffffffff, 0x1111111111111111, 0xeeeeeeeeeeeeeeee, x2, 16, x3)

inst_18:
    // Test 18:  Test with dataset: sbox64
    // result rd:x19(0x12121212ffffffff), rs1:x13(0x1212121212121212), rs2:x29(0xedededededededed)
    TEST_RR_OP(aes64ks2, x19, x13, x29, 0x12121212ffffffff, 0x1212121212121212, 0xedededededededed, x2, 24, x3)

inst_19:
    // Test 19:  Test with dataset: sbox64
    // result rd:x20(0x13131313ffffffff), rs1:x12(0x1313131313131313), rs2:x28(0xecececececececec)
    TEST_RR_OP(aes64ks2, x20, x12, x28, 0x13131313ffffffff, 0x1313131313131313, 0xecececececececec, x2, 32, x3)

    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with dataset: sbox64
    // result rd:x21(0x14141414ffffffff), rs1:x11(0x1414141414141414), rs2:x27(0xebebebebebebebeb)
    TEST_RR_OP(aes64ks2, x21, x11, x27, 0x14141414ffffffff, 0x1414141414141414, 0xebebebebebebebeb, x1, 0, x2)

inst_21:
    // Test 21:  Test with dataset: sbox64
    // result rd:x22(0x15151515ffffffff), rs1:x10(0x1515151515151515), rs2:x26(0xeaeaeaeaeaeaeaea)
    TEST_RR_OP(aes64ks2, x22, x10, x26, 0x15151515ffffffff, 0x1515151515151515, 0xeaeaeaeaeaeaeaea, x1, 8, x2)

inst_22:
    // Test 22:  Test with dataset: sbox64
    // result rd:x23(0x16161616ffffffff), rs1:x9(0x1616161616161616), rs2:x25(0xe9e9e9e9e9e9e9e9)
    TEST_RR_OP(aes64ks2, x23, x9, x25, 0x16161616ffffffff, 0x1616161616161616, 0xe9e9e9e9e9e9e9e9, x1, 16, x2)

inst_23:
    // Test 23:  Test with dataset: sbox64
    // result rd:x24(0x17171717ffffffff), rs1:x8(0x1717171717171717), rs2:x24(0xe8e8e8e8e8e8e8e8)
    TEST_RR_OP(aes64ks2, x24, x8, x24, 0x17171717ffffffff, 0x1717171717171717, 0xe8e8e8e8e8e8e8e8, x1, 24, x2)

inst_24:
    // Test 24:  Test with dataset: sbox64
    // result rd:x25(0x18181818ffffffff), rs1:x7(0x1818181818181818), rs2:x23(0xe7e7e7e7e7e7e7e7)
    TEST_RR_OP(aes64ks2, x25, x7, x23, 0x18181818ffffffff, 0x1818181818181818, 0xe7e7e7e7e7e7e7e7, x1, 32, x2)

    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with dataset: sbox64
    // result rd:x26(0x19191919ffffffff), rs1:x6(0x1919191919191919), rs2:x22(0xe6e6e6e6e6e6e6e6)
    TEST_RR_OP(aes64ks2, x26, x6, x22, 0x19191919ffffffff, 0x1919191919191919, 0xe6e6e6e6e6e6e6e6, x1, 0, x7)

inst_26:
    // Test 26:  Test with dataset: sbox64
    // result rd:x27(0x1a1a1a1affffffff), rs1:x5(0x1a1a1a1a1a1a1a1a), rs2:x21(0xe5e5e5e5e5e5e5e5)
    TEST_RR_OP(aes64ks2, x27, x5, x21, 0x1a1a1a1affffffff, 0x1a1a1a1a1a1a1a1a, 0xe5e5e5e5e5e5e5e5, x1, 8, x7)

inst_27:
    // Test 27:  Test with dataset: sbox64
    // result rd:x28(0x1b1b1b1bffffffff), rs1:x4(0x1b1b1b1b1b1b1b1b), rs2:x20(0xe4e4e4e4e4e4e4e4)
    TEST_RR_OP(aes64ks2, x28, x4, x20, 0x1b1b1b1bffffffff, 0x1b1b1b1b1b1b1b1b, 0xe4e4e4e4e4e4e4e4, x1, 16, x7)

inst_28:
    // Test 28:  Test with dataset: sbox64
    // result rd:x29(0x1c1c1c1cffffffff), rs1:x3(0x1c1c1c1c1c1c1c1c), rs2:x19(0xe3e3e3e3e3e3e3e3)
    TEST_RR_OP(aes64ks2, x29, x3, x19, 0x1c1c1c1cffffffff, 0x1c1c1c1c1c1c1c1c, 0xe3e3e3e3e3e3e3e3, x1, 24, x7)

inst_29:
    // Test 29:  Test with dataset: sbox64
    // result rd:x30(0x1d1d1d1dffffffff), rs1:x2(0x1d1d1d1d1d1d1d1d), rs2:x18(0xe2e2e2e2e2e2e2e2)
    TEST_RR_OP(aes64ks2, x30, x2, x18, 0x1d1d1d1dffffffff, 0x1d1d1d1d1d1d1d1d, 0xe2e2e2e2e2e2e2e2, x1, 32, x7)

    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with dataset: sbox64
    // result rd:x31(0x1e1e1e1effffffff), rs1:x1(0x1e1e1e1e1e1e1e1e), rs2:x17(0xe1e1e1e1e1e1e1e1)
    TEST_RR_OP(aes64ks2, x31, x1, x17, 0x1e1e1e1effffffff, 0x1e1e1e1e1e1e1e1e, 0xe1e1e1e1e1e1e1e1, x5, 0, x6)

inst_31:
    // Test 31:  Test with dataset: sbox64
    // result rd:x1(0x1f1f1f1fffffffff), rs1:x31(0x1f1f1f1f1f1f1f1f), rs2:x16(0xe0e0e0e0e0e0e0e0)
    TEST_RR_OP(aes64ks2, x1, x31, x16, 0x1f1f1f1fffffffff, 0x1f1f1f1f1f1f1f1f, 0xe0e0e0e0e0e0e0e0, x5, 8, x6)

inst_32:
    // Test 32:  Test with dataset: sbox64
    // result rd:x2(0x20202020ffffffff), rs1:x30(0x2020202020202020), rs2:x15(0xdfdfdfdfdfdfdfdf)
    TEST_RR_OP(aes64ks2, x2, x30, x15, 0x20202020ffffffff, 0x2020202020202020, 0xdfdfdfdfdfdfdfdf, x5, 16, x6)

inst_33:
    // Test 33:  Test with dataset: sbox64
    // result rd:x3(0x21212121ffffffff), rs1:x29(0x2121212121212121), rs2:x14(0xdededededededede)
    TEST_RR_OP(aes64ks2, x3, x29, x14, 0x21212121ffffffff, 0x2121212121212121, 0xdededededededede, x5, 24, x6)

inst_34:
    // Test 34:  Test with dataset: sbox64
    // result rd:x4(0x22222222ffffffff), rs1:x28(0x2222222222222222), rs2:x13(0xdddddddddddddddd)
    TEST_RR_OP(aes64ks2, x4, x28, x13, 0x22222222ffffffff, 0x2222222222222222, 0xdddddddddddddddd, x5, 32, x6)

    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with dataset: sbox64
    // result rd:x5(0x23232323ffffffff), rs1:x27(0x2323232323232323), rs2:x12(0xdcdcdcdcdcdcdcdc)
    TEST_RR_OP(aes64ks2, x5, x27, x12, 0x23232323ffffffff, 0x2323232323232323, 0xdcdcdcdcdcdcdcdc, x1, 0, x2)

inst_36:
    // Test 36:  Test with dataset: sbox64
    // result rd:x6(0x24242424ffffffff), rs1:x26(0x2424242424242424), rs2:x11(0xdbdbdbdbdbdbdbdb)
    TEST_RR_OP(aes64ks2, x6, x26, x11, 0x24242424ffffffff, 0x2424242424242424, 0xdbdbdbdbdbdbdbdb, x1, 8, x2)

inst_37:
    // Test 37:  Test with dataset: sbox64
    // result rd:x7(0x25252525ffffffff), rs1:x25(0x2525252525252525), rs2:x10(0xdadadadadadadada)
    TEST_RR_OP(aes64ks2, x7, x25, x10, 0x25252525ffffffff, 0x2525252525252525, 0xdadadadadadadada, x1, 16, x2)

inst_38:
    // Test 38:  Test with dataset: sbox64
    // result rd:x8(0x26262626ffffffff), rs1:x24(0x2626262626262626), rs2:x9(0xd9d9d9d9d9d9d9d9)
    TEST_RR_OP(aes64ks2, x8, x24, x9, 0x26262626ffffffff, 0x2626262626262626, 0xd9d9d9d9d9d9d9d9, x1, 24, x2)

inst_39:
    // Test 39:  Test with dataset: sbox64
    // result rd:x9(0x27272727ffffffff), rs1:x23(0x2727272727272727), rs2:x8(0xd8d8d8d8d8d8d8d8)
    TEST_RR_OP(aes64ks2, x9, x23, x8, 0x27272727ffffffff, 0x2727272727272727, 0xd8d8d8d8d8d8d8d8, x1, 32, x2)

    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with dataset: sbox64
    // result rd:x10(0x28282828ffffffff), rs1:x22(0x2828282828282828), rs2:x7(0xd7d7d7d7d7d7d7d7)
    TEST_RR_OP(aes64ks2, x10, x22, x7, 0x28282828ffffffff, 0x2828282828282828, 0xd7d7d7d7d7d7d7d7, x1, 0, x2)

inst_41:
    // Test 41:  Test with dataset: sbox64
    // result rd:x11(0x29292929ffffffff), rs1:x21(0x2929292929292929), rs2:x6(0xd6d6d6d6d6d6d6d6)
    TEST_RR_OP(aes64ks2, x11, x21, x6, 0x29292929ffffffff, 0x2929292929292929, 0xd6d6d6d6d6d6d6d6, x1, 8, x2)

inst_42:
    // Test 42:  Test with dataset: sbox64
    // result rd:x12(0x2a2a2a2affffffff), rs1:x20(0x2a2a2a2a2a2a2a2a), rs2:x5(0xd5d5d5d5d5d5d5d5)
    TEST_RR_OP(aes64ks2, x12, x20, x5, 0x2a2a2a2affffffff, 0x2a2a2a2a2a2a2a2a, 0xd5d5d5d5d5d5d5d5, x1, 16, x2)

inst_43:
    // Test 43:  Test with dataset: sbox64
    // result rd:x13(0x2b2b2b2bffffffff), rs1:x19(0x2b2b2b2b2b2b2b2b), rs2:x4(0xd4d4d4d4d4d4d4d4)
    TEST_RR_OP(aes64ks2, x13, x19, x4, 0x2b2b2b2bffffffff, 0x2b2b2b2b2b2b2b2b, 0xd4d4d4d4d4d4d4d4, x1, 24, x2)

inst_44:
    // Test 44:  Test with dataset: sbox64
    // result rd:x14(0x2c2c2c2cffffffff), rs1:x18(0x2c2c2c2c2c2c2c2c), rs2:x3(0xd3d3d3d3d3d3d3d3)
    TEST_RR_OP(aes64ks2, x14, x18, x3, 0x2c2c2c2cffffffff, 0x2c2c2c2c2c2c2c2c, 0xd3d3d3d3d3d3d3d3, x1, 32, x2)

    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with dataset: sbox64
    // result rd:x15(0x2d2d2d2dffffffff), rs1:x17(0x2d2d2d2d2d2d2d2d), rs2:x2(0xd2d2d2d2d2d2d2d2)
    TEST_RR_OP(aes64ks2, x15, x17, x2, 0x2d2d2d2dffffffff, 0x2d2d2d2d2d2d2d2d, 0xd2d2d2d2d2d2d2d2, x3, 0, x4)

inst_46:
    // Test 46:  Test with dataset: sbox64
    // result rd:x16(0x2e2e2e2effffffff), rs1:x16(0x2e2e2e2e2e2e2e2e), rs2:x1(0xd1d1d1d1d1d1d1d1)
    TEST_RR_OP(aes64ks2, x16, x16, x1, 0x2e2e2e2effffffff, 0x2e2e2e2e2e2e2e2e, 0xd1d1d1d1d1d1d1d1, x3, 8, x4)

inst_47:
    // Test 47:  Test with dataset: sbox64
    // result rd:x17(0x2f2f2f2fffffffff), rs1:x15(0x2f2f2f2f2f2f2f2f), rs2:x31(0xd0d0d0d0d0d0d0d0)
    TEST_RR_OP(aes64ks2, x17, x15, x31, 0x2f2f2f2fffffffff, 0x2f2f2f2f2f2f2f2f, 0xd0d0d0d0d0d0d0d0, x3, 16, x4)

inst_48:
    // Test 48:  Test with dataset: sbox64
    // result rd:x18(0x30303030ffffffff), rs1:x14(0x3030303030303030), rs2:x30(0xcfcfcfcfcfcfcfcf)
    TEST_RR_OP(aes64ks2, x18, x14, x30, 0x30303030ffffffff, 0x3030303030303030, 0xcfcfcfcfcfcfcfcf, x3, 24, x4)

inst_49:
    // Test 49:  Test with dataset: sbox64
    // result rd:x19(0x31313131ffffffff), rs1:x13(0x3131313131313131), rs2:x29(0xcececececececece)
    TEST_RR_OP(aes64ks2, x19, x13, x29, 0x31313131ffffffff, 0x3131313131313131, 0xcececececececece, x3, 32, x4)

    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with dataset: sbox64
    // result rd:x20(0x32323232ffffffff), rs1:x12(0x3232323232323232), rs2:x28(0xcdcdcdcdcdcdcdcd)
    TEST_RR_OP(aes64ks2, x20, x12, x28, 0x32323232ffffffff, 0x3232323232323232, 0xcdcdcdcdcdcdcdcd, x1, 0, x2)

inst_51:
    // Test 51:  Test with dataset: sbox64
    // result rd:x21(0x33333333ffffffff), rs1:x11(0x3333333333333333), rs2:x27(0xcccccccccccccccc)
    TEST_RR_OP(aes64ks2, x21, x11, x27, 0x33333333ffffffff, 0x3333333333333333, 0xcccccccccccccccc, x1, 8, x2)

inst_52:
    // Test 52:  Test with dataset: sbox64
    // result rd:x22(0x34343434ffffffff), rs1:x10(0x3434343434343434), rs2:x26(0xcbcbcbcbcbcbcbcb)
    TEST_RR_OP(aes64ks2, x22, x10, x26, 0x34343434ffffffff, 0x3434343434343434, 0xcbcbcbcbcbcbcbcb, x1, 16, x2)

inst_53:
    // Test 53:  Test with dataset: sbox64
    // result rd:x23(0x35353535ffffffff), rs1:x9(0x3535353535353535), rs2:x25(0xcacacacacacacaca)
    TEST_RR_OP(aes64ks2, x23, x9, x25, 0x35353535ffffffff, 0x3535353535353535, 0xcacacacacacacaca, x1, 24, x2)

inst_54:
    // Test 54:  Test with dataset: sbox64
    // result rd:x24(0x36363636ffffffff), rs1:x8(0x3636363636363636), rs2:x24(0xc9c9c9c9c9c9c9c9)
    TEST_RR_OP(aes64ks2, x24, x8, x24, 0x36363636ffffffff, 0x3636363636363636, 0xc9c9c9c9c9c9c9c9, x1, 32, x2)

    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with dataset: sbox64
    // result rd:x25(0x37373737ffffffff), rs1:x7(0x3737373737373737), rs2:x23(0xc8c8c8c8c8c8c8c8)
    TEST_RR_OP(aes64ks2, x25, x7, x23, 0x37373737ffffffff, 0x3737373737373737, 0xc8c8c8c8c8c8c8c8, x1, 0, x2)

inst_56:
    // Test 56:  Test with dataset: sbox64
    // result rd:x26(0x38383838ffffffff), rs1:x6(0x3838383838383838), rs2:x22(0xc7c7c7c7c7c7c7c7)
    TEST_RR_OP(aes64ks2, x26, x6, x22, 0x38383838ffffffff, 0x3838383838383838, 0xc7c7c7c7c7c7c7c7, x1, 8, x2)

inst_57:
    // Test 57:  Test with dataset: sbox64
    // result rd:x27(0x39393939ffffffff), rs1:x5(0x3939393939393939), rs2:x21(0xc6c6c6c6c6c6c6c6)
    TEST_RR_OP(aes64ks2, x27, x5, x21, 0x39393939ffffffff, 0x3939393939393939, 0xc6c6c6c6c6c6c6c6, x1, 16, x2)

inst_58:
    // Test 58:  Test with dataset: sbox64
    // result rd:x28(0x3a3a3a3affffffff), rs1:x4(0x3a3a3a3a3a3a3a3a), rs2:x20(0xc5c5c5c5c5c5c5c5)
    TEST_RR_OP(aes64ks2, x28, x4, x20, 0x3a3a3a3affffffff, 0x3a3a3a3a3a3a3a3a, 0xc5c5c5c5c5c5c5c5, x1, 24, x2)

inst_59:
    // Test 59:  Test with dataset: sbox64
    // result rd:x29(0x3b3b3b3bffffffff), rs1:x3(0x3b3b3b3b3b3b3b3b), rs2:x19(0xc4c4c4c4c4c4c4c4)
    TEST_RR_OP(aes64ks2, x29, x3, x19, 0x3b3b3b3bffffffff, 0x3b3b3b3b3b3b3b3b, 0xc4c4c4c4c4c4c4c4, x1, 32, x2)

    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with dataset: sbox64
    // result rd:x30(0x3c3c3c3cffffffff), rs1:x2(0x3c3c3c3c3c3c3c3c), rs2:x18(0xc3c3c3c3c3c3c3c3)
    TEST_RR_OP(aes64ks2, x30, x2, x18, 0x3c3c3c3cffffffff, 0x3c3c3c3c3c3c3c3c, 0xc3c3c3c3c3c3c3c3, x4, 0, x5)

inst_61:
    // Test 61:  Test with dataset: sbox64
    // result rd:x31(0x3d3d3d3dffffffff), rs1:x1(0x3d3d3d3d3d3d3d3d), rs2:x17(0xc2c2c2c2c2c2c2c2)
    TEST_RR_OP(aes64ks2, x31, x1, x17, 0x3d3d3d3dffffffff, 0x3d3d3d3d3d3d3d3d, 0xc2c2c2c2c2c2c2c2, x4, 8, x5)

inst_62:
    // Test 62:  Test with dataset: sbox64
    // result rd:x1(0x3e3e3e3effffffff), rs1:x31(0x3e3e3e3e3e3e3e3e), rs2:x16(0xc1c1c1c1c1c1c1c1)
    TEST_RR_OP(aes64ks2, x1, x31, x16, 0x3e3e3e3effffffff, 0x3e3e3e3e3e3e3e3e, 0xc1c1c1c1c1c1c1c1, x4, 16, x5)

inst_63:
    // Test 63:  Test with dataset: sbox64
    // result rd:x2(0x3f3f3f3fffffffff), rs1:x30(0x3f3f3f3f3f3f3f3f), rs2:x15(0xc0c0c0c0c0c0c0c0)
    TEST_RR_OP(aes64ks2, x2, x30, x15, 0x3f3f3f3fffffffff, 0x3f3f3f3f3f3f3f3f, 0xc0c0c0c0c0c0c0c0, x4, 24, x5)

inst_64:
    // Test 64:  Test with dataset: sbox64
    // result rd:x3(0x40404040ffffffff), rs1:x29(0x4040404040404040), rs2:x14(0xbfbfbfbfbfbfbfbf)
    TEST_RR_OP(aes64ks2, x3, x29, x14, 0x40404040ffffffff, 0x4040404040404040, 0xbfbfbfbfbfbfbfbf, x4, 32, x5)

    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with dataset: sbox64
    // result rd:x4(0x41414141ffffffff), rs1:x28(0x4141414141414141), rs2:x13(0xbebebebebebebebe)
    TEST_RR_OP(aes64ks2, x4, x28, x13, 0x41414141ffffffff, 0x4141414141414141, 0xbebebebebebebebe, x1, 0, x2)

inst_66:
    // Test 66:  Test with dataset: sbox64
    // result rd:x5(0x42424242ffffffff), rs1:x27(0x4242424242424242), rs2:x12(0xbdbdbdbdbdbdbdbd)
    TEST_RR_OP(aes64ks2, x5, x27, x12, 0x42424242ffffffff, 0x4242424242424242, 0xbdbdbdbdbdbdbdbd, x1, 8, x2)

inst_67:
    // Test 67:  Test with dataset: sbox64
    // result rd:x6(0x43434343ffffffff), rs1:x26(0x4343434343434343), rs2:x11(0xbcbcbcbcbcbcbcbc)
    TEST_RR_OP(aes64ks2, x6, x26, x11, 0x43434343ffffffff, 0x4343434343434343, 0xbcbcbcbcbcbcbcbc, x1, 16, x2)

inst_68:
    // Test 68:  Test with dataset: sbox64
    // result rd:x7(0x44444444ffffffff), rs1:x25(0x4444444444444444), rs2:x10(0xbbbbbbbbbbbbbbbb)
    TEST_RR_OP(aes64ks2, x7, x25, x10, 0x44444444ffffffff, 0x4444444444444444, 0xbbbbbbbbbbbbbbbb, x1, 24, x2)

inst_69:
    // Test 69:  Test with dataset: sbox64
    // result rd:x8(0x45454545ffffffff), rs1:x24(0x4545454545454545), rs2:x9(0xbabababababababa)
    TEST_RR_OP(aes64ks2, x8, x24, x9, 0x45454545ffffffff, 0x4545454545454545, 0xbabababababababa, x1, 32, x2)

    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with dataset: sbox64
    // result rd:x9(0x46464646ffffffff), rs1:x23(0x4646464646464646), rs2:x8(0xb9b9b9b9b9b9b9b9)
    TEST_RR_OP(aes64ks2, x9, x23, x8, 0x46464646ffffffff, 0x4646464646464646, 0xb9b9b9b9b9b9b9b9, x1, 0, x2)

inst_71:
    // Test 71:  Test with dataset: sbox64
    // result rd:x10(0x47474747ffffffff), rs1:x22(0x4747474747474747), rs2:x7(0xb8b8b8b8b8b8b8b8)
    TEST_RR_OP(aes64ks2, x10, x22, x7, 0x47474747ffffffff, 0x4747474747474747, 0xb8b8b8b8b8b8b8b8, x1, 8, x2)

inst_72:
    // Test 72:  Test with dataset: sbox64
    // result rd:x11(0x48484848ffffffff), rs1:x21(0x4848484848484848), rs2:x6(0xb7b7b7b7b7b7b7b7)
    TEST_RR_OP(aes64ks2, x11, x21, x6, 0x48484848ffffffff, 0x4848484848484848, 0xb7b7b7b7b7b7b7b7, x1, 16, x2)

inst_73:
    // Test 73:  Test with dataset: sbox64
    // result rd:x12(0x49494949ffffffff), rs1:x20(0x4949494949494949), rs2:x5(0xb6b6b6b6b6b6b6b6)
    TEST_RR_OP(aes64ks2, x12, x20, x5, 0x49494949ffffffff, 0x4949494949494949, 0xb6b6b6b6b6b6b6b6, x1, 24, x2)

inst_74:
    // Test 74:  Test with dataset: sbox64
    // result rd:x13(0x4a4a4a4affffffff), rs1:x19(0x4a4a4a4a4a4a4a4a), rs2:x4(0xb5b5b5b5b5b5b5b5)
    TEST_RR_OP(aes64ks2, x13, x19, x4, 0x4a4a4a4affffffff, 0x4a4a4a4a4a4a4a4a, 0xb5b5b5b5b5b5b5b5, x1, 32, x2)

    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with dataset: sbox64
    // result rd:x14(0x4b4b4b4bffffffff), rs1:x18(0x4b4b4b4b4b4b4b4b), rs2:x3(0xb4b4b4b4b4b4b4b4)
    TEST_RR_OP(aes64ks2, x14, x18, x3, 0x4b4b4b4bffffffff, 0x4b4b4b4b4b4b4b4b, 0xb4b4b4b4b4b4b4b4, x4, 0, x5)

inst_76:
    // Test 76:  Test with dataset: sbox64
    // result rd:x15(0x4c4c4c4cffffffff), rs1:x17(0x4c4c4c4c4c4c4c4c), rs2:x2(0xb3b3b3b3b3b3b3b3)
    TEST_RR_OP(aes64ks2, x15, x17, x2, 0x4c4c4c4cffffffff, 0x4c4c4c4c4c4c4c4c, 0xb3b3b3b3b3b3b3b3, x4, 8, x5)

inst_77:
    // Test 77:  Test with dataset: sbox64
    // result rd:x16(0x4d4d4d4dffffffff), rs1:x16(0x4d4d4d4d4d4d4d4d), rs2:x1(0xb2b2b2b2b2b2b2b2)
    TEST_RR_OP(aes64ks2, x16, x16, x1, 0x4d4d4d4dffffffff, 0x4d4d4d4d4d4d4d4d, 0xb2b2b2b2b2b2b2b2, x4, 16, x5)

inst_78:
    // Test 78:  Test with dataset: sbox64
    // result rd:x17(0x4e4e4e4effffffff), rs1:x15(0x4e4e4e4e4e4e4e4e), rs2:x31(0xb1b1b1b1b1b1b1b1)
    TEST_RR_OP(aes64ks2, x17, x15, x31, 0x4e4e4e4effffffff, 0x4e4e4e4e4e4e4e4e, 0xb1b1b1b1b1b1b1b1, x4, 24, x5)

inst_79:
    // Test 79:  Test with dataset: sbox64
    // result rd:x18(0x4f4f4f4fffffffff), rs1:x14(0x4f4f4f4f4f4f4f4f), rs2:x30(0xb0b0b0b0b0b0b0b0)
    TEST_RR_OP(aes64ks2, x18, x14, x30, 0x4f4f4f4fffffffff, 0x4f4f4f4f4f4f4f4f, 0xb0b0b0b0b0b0b0b0, x4, 32, x5)

    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with dataset: sbox64
    // result rd:x19(0x50505050ffffffff), rs1:x13(0x5050505050505050), rs2:x29(0xafafafafafafafaf)
    TEST_RR_OP(aes64ks2, x19, x13, x29, 0x50505050ffffffff, 0x5050505050505050, 0xafafafafafafafaf, x1, 0, x2)

inst_81:
    // Test 81:  Test with dataset: sbox64
    // result rd:x20(0x51515151ffffffff), rs1:x12(0x5151515151515151), rs2:x28(0xaeaeaeaeaeaeaeae)
    TEST_RR_OP(aes64ks2, x20, x12, x28, 0x51515151ffffffff, 0x5151515151515151, 0xaeaeaeaeaeaeaeae, x1, 8, x2)

inst_82:
    // Test 82:  Test with dataset: sbox64
    // result rd:x21(0x52525252ffffffff), rs1:x11(0x5252525252525252), rs2:x27(0xadadadadadadadad)
    TEST_RR_OP(aes64ks2, x21, x11, x27, 0x52525252ffffffff, 0x5252525252525252, 0xadadadadadadadad, x1, 16, x2)

inst_83:
    // Test 83:  Test with dataset: sbox64
    // result rd:x22(0x53535353ffffffff), rs1:x10(0x5353535353535353), rs2:x26(0xacacacacacacacac)
    TEST_RR_OP(aes64ks2, x22, x10, x26, 0x53535353ffffffff, 0x5353535353535353, 0xacacacacacacacac, x1, 24, x2)

inst_84:
    // Test 84:  Test with dataset: sbox64
    // result rd:x23(0x54545454ffffffff), rs1:x9(0x5454545454545454), rs2:x25(0xabababababababab)
    TEST_RR_OP(aes64ks2, x23, x9, x25, 0x54545454ffffffff, 0x5454545454545454, 0xabababababababab, x1, 32, x2)

    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with dataset: sbox64
    // result rd:x24(0x55555555ffffffff), rs1:x8(0x5555555555555555), rs2:x24(0xaaaaaaaaaaaaaaaa)
    TEST_RR_OP(aes64ks2, x24, x8, x24, 0x55555555ffffffff, 0x5555555555555555, 0xaaaaaaaaaaaaaaaa, x1, 0, x2)

inst_86:
    // Test 86:  Test with dataset: sbox64
    // result rd:x25(0x56565656ffffffff), rs1:x7(0x5656565656565656), rs2:x23(0xa9a9a9a9a9a9a9a9)
    TEST_RR_OP(aes64ks2, x25, x7, x23, 0x56565656ffffffff, 0x5656565656565656, 0xa9a9a9a9a9a9a9a9, x1, 8, x2)

inst_87:
    // Test 87:  Test with dataset: sbox64
    // result rd:x26(0x57575757ffffffff), rs1:x6(0x5757575757575757), rs2:x22(0xa8a8a8a8a8a8a8a8)
    TEST_RR_OP(aes64ks2, x26, x6, x22, 0x57575757ffffffff, 0x5757575757575757, 0xa8a8a8a8a8a8a8a8, x1, 16, x2)

inst_88:
    // Test 88:  Test with dataset: sbox64
    // result rd:x27(0x58585858ffffffff), rs1:x5(0x5858585858585858), rs2:x21(0xa7a7a7a7a7a7a7a7)
    TEST_RR_OP(aes64ks2, x27, x5, x21, 0x58585858ffffffff, 0x5858585858585858, 0xa7a7a7a7a7a7a7a7, x1, 24, x2)

inst_89:
    // Test 89:  Test with dataset: sbox64
    // result rd:x28(0x59595959ffffffff), rs1:x4(0x5959595959595959), rs2:x20(0xa6a6a6a6a6a6a6a6)
    TEST_RR_OP(aes64ks2, x28, x4, x20, 0x59595959ffffffff, 0x5959595959595959, 0xa6a6a6a6a6a6a6a6, x1, 32, x2)

    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with dataset: sbox64
    // result rd:x29(0x5a5a5a5affffffff), rs1:x3(0x5a5a5a5a5a5a5a5a), rs2:x19(0xa5a5a5a5a5a5a5a5)
    TEST_RR_OP(aes64ks2, x29, x3, x19, 0x5a5a5a5affffffff, 0x5a5a5a5a5a5a5a5a, 0xa5a5a5a5a5a5a5a5, x4, 0, x5)

inst_91:
    // Test 91:  Test with dataset: sbox64
    // result rd:x30(0x5b5b5b5bffffffff), rs1:x2(0x5b5b5b5b5b5b5b5b), rs2:x18(0xa4a4a4a4a4a4a4a4)
    TEST_RR_OP(aes64ks2, x30, x2, x18, 0x5b5b5b5bffffffff, 0x5b5b5b5b5b5b5b5b, 0xa4a4a4a4a4a4a4a4, x4, 8, x5)

inst_92:
    // Test 92:  Test with dataset: sbox64
    // result rd:x31(0x5c5c5c5cffffffff), rs1:x1(0x5c5c5c5c5c5c5c5c), rs2:x17(0xa3a3a3a3a3a3a3a3)
    TEST_RR_OP(aes64ks2, x31, x1, x17, 0x5c5c5c5cffffffff, 0x5c5c5c5c5c5c5c5c, 0xa3a3a3a3a3a3a3a3, x4, 16, x5)

inst_93:
    // Test 93:  Test with dataset: sbox64
    // result rd:x1(0x5d5d5d5dffffffff), rs1:x31(0x5d5d5d5d5d5d5d5d), rs2:x16(0xa2a2a2a2a2a2a2a2)
    TEST_RR_OP(aes64ks2, x1, x31, x16, 0x5d5d5d5dffffffff, 0x5d5d5d5d5d5d5d5d, 0xa2a2a2a2a2a2a2a2, x4, 24, x5)

inst_94:
    // Test 94:  Test with dataset: sbox64
    // result rd:x2(0x5e5e5e5effffffff), rs1:x30(0x5e5e5e5e5e5e5e5e), rs2:x15(0xa1a1a1a1a1a1a1a1)
    TEST_RR_OP(aes64ks2, x2, x30, x15, 0x5e5e5e5effffffff, 0x5e5e5e5e5e5e5e5e, 0xa1a1a1a1a1a1a1a1, x4, 32, x5)

    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with dataset: sbox64
    // result rd:x3(0x5f5f5f5fffffffff), rs1:x29(0x5f5f5f5f5f5f5f5f), rs2:x14(0xa0a0a0a0a0a0a0a0)
    TEST_RR_OP(aes64ks2, x3, x29, x14, 0x5f5f5f5fffffffff, 0x5f5f5f5f5f5f5f5f, 0xa0a0a0a0a0a0a0a0, x1, 0, x2)

inst_96:
    // Test 96:  Test with dataset: sbox64
    // result rd:x4(0x60606060ffffffff), rs1:x28(0x6060606060606060), rs2:x13(0x9f9f9f9f9f9f9f9f)
    TEST_RR_OP(aes64ks2, x4, x28, x13, 0x60606060ffffffff, 0x6060606060606060, 0x9f9f9f9f9f9f9f9f, x1, 8, x2)

inst_97:
    // Test 97:  Test with dataset: sbox64
    // result rd:x5(0x61616161ffffffff), rs1:x27(0x6161616161616161), rs2:x12(0x9e9e9e9e9e9e9e9e)
    TEST_RR_OP(aes64ks2, x5, x27, x12, 0x61616161ffffffff, 0x6161616161616161, 0x9e9e9e9e9e9e9e9e, x1, 16, x2)

inst_98:
    // Test 98:  Test with dataset: sbox64
    // result rd:x6(0x62626262ffffffff), rs1:x26(0x6262626262626262), rs2:x11(0x9d9d9d9d9d9d9d9d)
    TEST_RR_OP(aes64ks2, x6, x26, x11, 0x62626262ffffffff, 0x6262626262626262, 0x9d9d9d9d9d9d9d9d, x1, 24, x2)

inst_99:
    // Test 99:  Test with dataset: sbox64
    // result rd:x7(0x63636363ffffffff), rs1:x25(0x6363636363636363), rs2:x10(0x9c9c9c9c9c9c9c9c)
    TEST_RR_OP(aes64ks2, x7, x25, x10, 0x63636363ffffffff, 0x6363636363636363, 0x9c9c9c9c9c9c9c9c, x1, 32, x2)

    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with dataset: sbox64
    // result rd:x8(0x64646464ffffffff), rs1:x24(0x6464646464646464), rs2:x9(0x9b9b9b9b9b9b9b9b)
    TEST_RR_OP(aes64ks2, x8, x24, x9, 0x64646464ffffffff, 0x6464646464646464, 0x9b9b9b9b9b9b9b9b, x1, 0, x2)

inst_101:
    // Test 101:  Test with dataset: sbox64
    // result rd:x9(0x65656565ffffffff), rs1:x23(0x6565656565656565), rs2:x8(0x9a9a9a9a9a9a9a9a)
    TEST_RR_OP(aes64ks2, x9, x23, x8, 0x65656565ffffffff, 0x6565656565656565, 0x9a9a9a9a9a9a9a9a, x1, 8, x2)

inst_102:
    // Test 102:  Test with dataset: sbox64
    // result rd:x10(0x66666666ffffffff), rs1:x22(0x6666666666666666), rs2:x7(0x9999999999999999)
    TEST_RR_OP(aes64ks2, x10, x22, x7, 0x66666666ffffffff, 0x6666666666666666, 0x9999999999999999, x1, 16, x2)

inst_103:
    // Test 103:  Test with dataset: sbox64
    // result rd:x11(0x67676767ffffffff), rs1:x21(0x6767676767676767), rs2:x6(0x9898989898989898)
    TEST_RR_OP(aes64ks2, x11, x21, x6, 0x67676767ffffffff, 0x6767676767676767, 0x9898989898989898, x1, 24, x2)

inst_104:
    // Test 104:  Test with dataset: sbox64
    // result rd:x12(0x68686868ffffffff), rs1:x20(0x6868686868686868), rs2:x5(0x9797979797979797)
    TEST_RR_OP(aes64ks2, x12, x20, x5, 0x68686868ffffffff, 0x6868686868686868, 0x9797979797979797, x1, 32, x2)

    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with dataset: sbox64
    // result rd:x13(0x69696969ffffffff), rs1:x19(0x6969696969696969), rs2:x4(0x9696969696969696)
    TEST_RR_OP(aes64ks2, x13, x19, x4, 0x69696969ffffffff, 0x6969696969696969, 0x9696969696969696, x5, 0, x6)

inst_106:
    // Test 106:  Test with dataset: sbox64
    // result rd:x14(0x6a6a6a6affffffff), rs1:x18(0x6a6a6a6a6a6a6a6a), rs2:x3(0x9595959595959595)
    TEST_RR_OP(aes64ks2, x14, x18, x3, 0x6a6a6a6affffffff, 0x6a6a6a6a6a6a6a6a, 0x9595959595959595, x5, 8, x6)

inst_107:
    // Test 107:  Test with dataset: sbox64
    // result rd:x15(0x6b6b6b6bffffffff), rs1:x17(0x6b6b6b6b6b6b6b6b), rs2:x2(0x9494949494949494)
    TEST_RR_OP(aes64ks2, x15, x17, x2, 0x6b6b6b6bffffffff, 0x6b6b6b6b6b6b6b6b, 0x9494949494949494, x5, 16, x6)

inst_108:
    // Test 108:  Test with dataset: sbox64
    // result rd:x16(0x6c6c6c6cffffffff), rs1:x16(0x6c6c6c6c6c6c6c6c), rs2:x1(0x9393939393939393)
    TEST_RR_OP(aes64ks2, x16, x16, x1, 0x6c6c6c6cffffffff, 0x6c6c6c6c6c6c6c6c, 0x9393939393939393, x5, 24, x6)

inst_109:
    // Test 109:  Test with dataset: sbox64
    // result rd:x17(0x6d6d6d6dffffffff), rs1:x15(0x6d6d6d6d6d6d6d6d), rs2:x31(0x9292929292929292)
    TEST_RR_OP(aes64ks2, x17, x15, x31, 0x6d6d6d6dffffffff, 0x6d6d6d6d6d6d6d6d, 0x9292929292929292, x5, 32, x6)

    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with dataset: sbox64
    // result rd:x18(0x6e6e6e6effffffff), rs1:x14(0x6e6e6e6e6e6e6e6e), rs2:x30(0x9191919191919191)
    TEST_RR_OP(aes64ks2, x18, x14, x30, 0x6e6e6e6effffffff, 0x6e6e6e6e6e6e6e6e, 0x9191919191919191, x1, 0, x2)

inst_111:
    // Test 111:  Test with dataset: sbox64
    // result rd:x19(0x6f6f6f6fffffffff), rs1:x13(0x6f6f6f6f6f6f6f6f), rs2:x29(0x9090909090909090)
    TEST_RR_OP(aes64ks2, x19, x13, x29, 0x6f6f6f6fffffffff, 0x6f6f6f6f6f6f6f6f, 0x9090909090909090, x1, 8, x2)

inst_112:
    // Test 112:  Test with dataset: sbox64
    // result rd:x20(0x70707070ffffffff), rs1:x12(0x7070707070707070), rs2:x28(0x8f8f8f8f8f8f8f8f)
    TEST_RR_OP(aes64ks2, x20, x12, x28, 0x70707070ffffffff, 0x7070707070707070, 0x8f8f8f8f8f8f8f8f, x1, 16, x2)

inst_113:
    // Test 113:  Test with dataset: sbox64
    // result rd:x21(0x71717171ffffffff), rs1:x11(0x7171717171717171), rs2:x27(0x8e8e8e8e8e8e8e8e)
    TEST_RR_OP(aes64ks2, x21, x11, x27, 0x71717171ffffffff, 0x7171717171717171, 0x8e8e8e8e8e8e8e8e, x1, 24, x2)

inst_114:
    // Test 114:  Test with dataset: sbox64
    // result rd:x22(0x72727272ffffffff), rs1:x10(0x7272727272727272), rs2:x26(0x8d8d8d8d8d8d8d8d)
    TEST_RR_OP(aes64ks2, x22, x10, x26, 0x72727272ffffffff, 0x7272727272727272, 0x8d8d8d8d8d8d8d8d, x1, 32, x2)

    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with dataset: sbox64
    // result rd:x23(0x73737373ffffffff), rs1:x9(0x7373737373737373), rs2:x25(0x8c8c8c8c8c8c8c8c)
    TEST_RR_OP(aes64ks2, x23, x9, x25, 0x73737373ffffffff, 0x7373737373737373, 0x8c8c8c8c8c8c8c8c, x1, 0, x2)

inst_116:
    // Test 116:  Test with dataset: sbox64
    // result rd:x24(0x74747474ffffffff), rs1:x8(0x7474747474747474), rs2:x24(0x8b8b8b8b8b8b8b8b)
    TEST_RR_OP(aes64ks2, x24, x8, x24, 0x74747474ffffffff, 0x7474747474747474, 0x8b8b8b8b8b8b8b8b, x1, 8, x2)

inst_117:
    // Test 117:  Test with dataset: sbox64
    // result rd:x25(0x75757575ffffffff), rs1:x7(0x7575757575757575), rs2:x23(0x8a8a8a8a8a8a8a8a)
    TEST_RR_OP(aes64ks2, x25, x7, x23, 0x75757575ffffffff, 0x7575757575757575, 0x8a8a8a8a8a8a8a8a, x1, 16, x2)

inst_118:
    // Test 118:  Test with dataset: sbox64
    // result rd:x26(0x76767676ffffffff), rs1:x6(0x7676767676767676), rs2:x22(0x8989898989898989)
    TEST_RR_OP(aes64ks2, x26, x6, x22, 0x76767676ffffffff, 0x7676767676767676, 0x8989898989898989, x1, 24, x2)

inst_119:
    // Test 119:  Test with dataset: sbox64
    // result rd:x27(0x77777777ffffffff), rs1:x5(0x7777777777777777), rs2:x21(0x8888888888888888)
    TEST_RR_OP(aes64ks2, x27, x5, x21, 0x77777777ffffffff, 0x7777777777777777, 0x8888888888888888, x1, 32, x2)

    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with dataset: sbox64
    // result rd:x28(0x78787878ffffffff), rs1:x4(0x7878787878787878), rs2:x20(0x8787878787878787)
    TEST_RR_OP(aes64ks2, x28, x4, x20, 0x78787878ffffffff, 0x7878787878787878, 0x8787878787878787, x5, 0, x6)

inst_121:
    // Test 121:  Test with dataset: sbox64
    // result rd:x29(0x79797979ffffffff), rs1:x3(0x7979797979797979), rs2:x19(0x8686868686868686)
    TEST_RR_OP(aes64ks2, x29, x3, x19, 0x79797979ffffffff, 0x7979797979797979, 0x8686868686868686, x5, 8, x6)

inst_122:
    // Test 122:  Test with dataset: sbox64
    // result rd:x30(0x7a7a7a7affffffff), rs1:x2(0x7a7a7a7a7a7a7a7a), rs2:x18(0x8585858585858585)
    TEST_RR_OP(aes64ks2, x30, x2, x18, 0x7a7a7a7affffffff, 0x7a7a7a7a7a7a7a7a, 0x8585858585858585, x5, 16, x6)

inst_123:
    // Test 123:  Test with dataset: sbox64
    // result rd:x31(0x7b7b7b7bffffffff), rs1:x1(0x7b7b7b7b7b7b7b7b), rs2:x17(0x8484848484848484)
    TEST_RR_OP(aes64ks2, x31, x1, x17, 0x7b7b7b7bffffffff, 0x7b7b7b7b7b7b7b7b, 0x8484848484848484, x5, 24, x6)

inst_124:
    // Test 124:  Test with dataset: sbox64
    // result rd:x1(0x7c7c7c7cffffffff), rs1:x31(0x7c7c7c7c7c7c7c7c), rs2:x16(0x8383838383838383)
    TEST_RR_OP(aes64ks2, x1, x31, x16, 0x7c7c7c7cffffffff, 0x7c7c7c7c7c7c7c7c, 0x8383838383838383, x5, 32, x6)

    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with dataset: sbox64
    // result rd:x2(0x7d7d7d7dffffffff), rs1:x30(0x7d7d7d7d7d7d7d7d), rs2:x15(0x8282828282828282)
    TEST_RR_OP(aes64ks2, x2, x30, x15, 0x7d7d7d7dffffffff, 0x7d7d7d7d7d7d7d7d, 0x8282828282828282, x1, 0, x7)

inst_126:
    // Test 126:  Test with dataset: sbox64
    // result rd:x3(0x7e7e7e7effffffff), rs1:x29(0x7e7e7e7e7e7e7e7e), rs2:x14(0x8181818181818181)
    TEST_RR_OP(aes64ks2, x3, x29, x14, 0x7e7e7e7effffffff, 0x7e7e7e7e7e7e7e7e, 0x8181818181818181, x1, 8, x7)

inst_127:
    // Test 127:  Test with dataset: sbox64
    // result rd:x4(0x7f7f7f7fffffffff), rs1:x28(0x7f7f7f7f7f7f7f7f), rs2:x13(0x8080808080808080)
    TEST_RR_OP(aes64ks2, x4, x28, x13, 0x7f7f7f7fffffffff, 0x7f7f7f7f7f7f7f7f, 0x8080808080808080, x1, 16, x7)

inst_128:
    // Test 128:  Test with dataset: sbox64
    // result rd:x5(0x80808080ffffffff), rs1:x27(0x8080808080808080), rs2:x12(0x7f7f7f7f7f7f7f7f)
    TEST_RR_OP(aes64ks2, x5, x27, x12, 0x80808080ffffffff, 0x8080808080808080, 0x7f7f7f7f7f7f7f7f, x1, 24, x7)

inst_129:
    // Test 129:  Test with dataset: sbox64
    // result rd:x6(0x81818181ffffffff), rs1:x26(0x8181818181818181), rs2:x11(0x7e7e7e7e7e7e7e7e)
    TEST_RR_OP(aes64ks2, x6, x26, x11, 0x81818181ffffffff, 0x8181818181818181, 0x7e7e7e7e7e7e7e7e, x1, 32, x7)

    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with dataset: sbox64
    // result rd:x7(0x82828282ffffffff), rs1:x25(0x8282828282828282), rs2:x10(0x7d7d7d7d7d7d7d7d)
    TEST_RR_OP(aes64ks2, x7, x25, x10, 0x82828282ffffffff, 0x8282828282828282, 0x7d7d7d7d7d7d7d7d, x1, 0, x2)

inst_131:
    // Test 131:  Test with dataset: sbox64
    // result rd:x8(0x83838383ffffffff), rs1:x24(0x8383838383838383), rs2:x9(0x7c7c7c7c7c7c7c7c)
    TEST_RR_OP(aes64ks2, x8, x24, x9, 0x83838383ffffffff, 0x8383838383838383, 0x7c7c7c7c7c7c7c7c, x1, 8, x2)

inst_132:
    // Test 132:  Test with dataset: sbox64
    // result rd:x9(0x84848484ffffffff), rs1:x23(0x8484848484848484), rs2:x8(0x7b7b7b7b7b7b7b7b)
    TEST_RR_OP(aes64ks2, x9, x23, x8, 0x84848484ffffffff, 0x8484848484848484, 0x7b7b7b7b7b7b7b7b, x1, 16, x2)

inst_133:
    // Test 133:  Test with dataset: sbox64
    // result rd:x10(0x85858585ffffffff), rs1:x22(0x8585858585858585), rs2:x7(0x7a7a7a7a7a7a7a7a)
    TEST_RR_OP(aes64ks2, x10, x22, x7, 0x85858585ffffffff, 0x8585858585858585, 0x7a7a7a7a7a7a7a7a, x1, 24, x2)

inst_134:
    // Test 134:  Test with dataset: sbox64
    // result rd:x11(0x86868686ffffffff), rs1:x21(0x8686868686868686), rs2:x6(0x7979797979797979)
    TEST_RR_OP(aes64ks2, x11, x21, x6, 0x86868686ffffffff, 0x8686868686868686, 0x7979797979797979, x1, 32, x2)

    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with dataset: sbox64
    // result rd:x12(0x87878787ffffffff), rs1:x20(0x8787878787878787), rs2:x5(0x7878787878787878)
    TEST_RR_OP(aes64ks2, x12, x20, x5, 0x87878787ffffffff, 0x8787878787878787, 0x7878787878787878, x6, 0, x7)

inst_136:
    // Test 136:  Test with dataset: sbox64
    // result rd:x13(0x88888888ffffffff), rs1:x19(0x8888888888888888), rs2:x4(0x7777777777777777)
    TEST_RR_OP(aes64ks2, x13, x19, x4, 0x88888888ffffffff, 0x8888888888888888, 0x7777777777777777, x6, 8, x7)

inst_137:
    // Test 137:  Test with dataset: sbox64
    // result rd:x14(0x89898989ffffffff), rs1:x18(0x8989898989898989), rs2:x3(0x7676767676767676)
    TEST_RR_OP(aes64ks2, x14, x18, x3, 0x89898989ffffffff, 0x8989898989898989, 0x7676767676767676, x6, 16, x7)

inst_138:
    // Test 138:  Test with dataset: sbox64
    // result rd:x15(0x8a8a8a8affffffff), rs1:x17(0x8a8a8a8a8a8a8a8a), rs2:x2(0x7575757575757575)
    TEST_RR_OP(aes64ks2, x15, x17, x2, 0x8a8a8a8affffffff, 0x8a8a8a8a8a8a8a8a, 0x7575757575757575, x6, 24, x7)

inst_139:
    // Test 139:  Test with dataset: sbox64
    // result rd:x16(0x8b8b8b8bffffffff), rs1:x16(0x8b8b8b8b8b8b8b8b), rs2:x1(0x7474747474747474)
    TEST_RR_OP(aes64ks2, x16, x16, x1, 0x8b8b8b8bffffffff, 0x8b8b8b8b8b8b8b8b, 0x7474747474747474, x6, 32, x7)

    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with dataset: sbox64
    // result rd:x17(0x8c8c8c8cffffffff), rs1:x15(0x8c8c8c8c8c8c8c8c), rs2:x31(0x7373737373737373)
    TEST_RR_OP(aes64ks2, x17, x15, x31, 0x8c8c8c8cffffffff, 0x8c8c8c8c8c8c8c8c, 0x7373737373737373, x1, 0, x2)

inst_141:
    // Test 141:  Test with dataset: sbox64
    // result rd:x18(0x8d8d8d8dffffffff), rs1:x14(0x8d8d8d8d8d8d8d8d), rs2:x30(0x7272727272727272)
    TEST_RR_OP(aes64ks2, x18, x14, x30, 0x8d8d8d8dffffffff, 0x8d8d8d8d8d8d8d8d, 0x7272727272727272, x1, 8, x2)

inst_142:
    // Test 142:  Test with dataset: sbox64
    // result rd:x19(0x8e8e8e8effffffff), rs1:x13(0x8e8e8e8e8e8e8e8e), rs2:x29(0x7171717171717171)
    TEST_RR_OP(aes64ks2, x19, x13, x29, 0x8e8e8e8effffffff, 0x8e8e8e8e8e8e8e8e, 0x7171717171717171, x1, 16, x2)

inst_143:
    // Test 143:  Test with dataset: sbox64
    // result rd:x20(0x8f8f8f8fffffffff), rs1:x12(0x8f8f8f8f8f8f8f8f), rs2:x28(0x7070707070707070)
    TEST_RR_OP(aes64ks2, x20, x12, x28, 0x8f8f8f8fffffffff, 0x8f8f8f8f8f8f8f8f, 0x7070707070707070, x1, 24, x2)

inst_144:
    // Test 144:  Test with dataset: sbox64
    // result rd:x21(0x90909090ffffffff), rs1:x11(0x9090909090909090), rs2:x27(0x6f6f6f6f6f6f6f6f)
    TEST_RR_OP(aes64ks2, x21, x11, x27, 0x90909090ffffffff, 0x9090909090909090, 0x6f6f6f6f6f6f6f6f, x1, 32, x2)

    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with dataset: sbox64
    // result rd:x22(0x91919191ffffffff), rs1:x10(0x9191919191919191), rs2:x26(0x6e6e6e6e6e6e6e6e)
    TEST_RR_OP(aes64ks2, x22, x10, x26, 0x91919191ffffffff, 0x9191919191919191, 0x6e6e6e6e6e6e6e6e, x1, 0, x2)

inst_146:
    // Test 146:  Test with dataset: sbox64
    // result rd:x23(0x92929292ffffffff), rs1:x9(0x9292929292929292), rs2:x25(0x6d6d6d6d6d6d6d6d)
    TEST_RR_OP(aes64ks2, x23, x9, x25, 0x92929292ffffffff, 0x9292929292929292, 0x6d6d6d6d6d6d6d6d, x1, 8, x2)

inst_147:
    // Test 147:  Test with dataset: sbox64
    // result rd:x24(0x93939393ffffffff), rs1:x8(0x9393939393939393), rs2:x24(0x6c6c6c6c6c6c6c6c)
    TEST_RR_OP(aes64ks2, x24, x8, x24, 0x93939393ffffffff, 0x9393939393939393, 0x6c6c6c6c6c6c6c6c, x1, 16, x2)

inst_148:
    // Test 148:  Test with dataset: sbox64
    // result rd:x25(0x94949494ffffffff), rs1:x7(0x9494949494949494), rs2:x23(0x6b6b6b6b6b6b6b6b)
    TEST_RR_OP(aes64ks2, x25, x7, x23, 0x94949494ffffffff, 0x9494949494949494, 0x6b6b6b6b6b6b6b6b, x1, 24, x2)

inst_149:
    // Test 149:  Test with dataset: sbox64
    // result rd:x26(0x95959595ffffffff), rs1:x6(0x9595959595959595), rs2:x22(0x6a6a6a6a6a6a6a6a)
    TEST_RR_OP(aes64ks2, x26, x6, x22, 0x95959595ffffffff, 0x9595959595959595, 0x6a6a6a6a6a6a6a6a, x1, 32, x2)

    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with dataset: sbox64
    // result rd:x27(0x96969696ffffffff), rs1:x5(0x9696969696969696), rs2:x21(0x6969696969696969)
    TEST_RR_OP(aes64ks2, x27, x5, x21, 0x96969696ffffffff, 0x9696969696969696, 0x6969696969696969, x6, 0, x7)

inst_151:
    // Test 151:  Test with dataset: sbox64
    // result rd:x28(0x97979797ffffffff), rs1:x4(0x9797979797979797), rs2:x20(0x6868686868686868)
    TEST_RR_OP(aes64ks2, x28, x4, x20, 0x97979797ffffffff, 0x9797979797979797, 0x6868686868686868, x6, 8, x7)

inst_152:
    // Test 152:  Test with dataset: sbox64
    // result rd:x29(0x98989898ffffffff), rs1:x3(0x9898989898989898), rs2:x19(0x6767676767676767)
    TEST_RR_OP(aes64ks2, x29, x3, x19, 0x98989898ffffffff, 0x9898989898989898, 0x6767676767676767, x6, 16, x7)

inst_153:
    // Test 153:  Test with dataset: sbox64
    // result rd:x30(0x99999999ffffffff), rs1:x2(0x9999999999999999), rs2:x18(0x6666666666666666)
    TEST_RR_OP(aes64ks2, x30, x2, x18, 0x99999999ffffffff, 0x9999999999999999, 0x6666666666666666, x6, 24, x7)

inst_154:
    // Test 154:  Test with dataset: sbox64
    // result rd:x31(0x9a9a9a9affffffff), rs1:x1(0x9a9a9a9a9a9a9a9a), rs2:x17(0x6565656565656565)
    TEST_RR_OP(aes64ks2, x31, x1, x17, 0x9a9a9a9affffffff, 0x9a9a9a9a9a9a9a9a, 0x6565656565656565, x6, 32, x7)

    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with dataset: sbox64
    // result rd:x1(0x9b9b9b9bffffffff), rs1:x31(0x9b9b9b9b9b9b9b9b), rs2:x16(0x6464646464646464)
    TEST_RR_OP(aes64ks2, x1, x31, x16, 0x9b9b9b9bffffffff, 0x9b9b9b9b9b9b9b9b, 0x6464646464646464, x6, 0, x7)

inst_156:
    // Test 156:  Test with dataset: sbox64
    // result rd:x2(0x9c9c9c9cffffffff), rs1:x30(0x9c9c9c9c9c9c9c9c), rs2:x15(0x6363636363636363)
    TEST_RR_OP(aes64ks2, x2, x30, x15, 0x9c9c9c9cffffffff, 0x9c9c9c9c9c9c9c9c, 0x6363636363636363, x6, 8, x7)

inst_157:
    // Test 157:  Test with dataset: sbox64
    // result rd:x3(0x9d9d9d9dffffffff), rs1:x29(0x9d9d9d9d9d9d9d9d), rs2:x14(0x6262626262626262)
    TEST_RR_OP(aes64ks2, x3, x29, x14, 0x9d9d9d9dffffffff, 0x9d9d9d9d9d9d9d9d, 0x6262626262626262, x6, 16, x7)

inst_158:
    // Test 158:  Test with dataset: sbox64
    // result rd:x4(0x9e9e9e9effffffff), rs1:x28(0x9e9e9e9e9e9e9e9e), rs2:x13(0x6161616161616161)
    TEST_RR_OP(aes64ks2, x4, x28, x13, 0x9e9e9e9effffffff, 0x9e9e9e9e9e9e9e9e, 0x6161616161616161, x6, 24, x7)

inst_159:
    // Test 159:  Test with dataset: sbox64
    // result rd:x5(0x9f9f9f9fffffffff), rs1:x27(0x9f9f9f9f9f9f9f9f), rs2:x12(0x6060606060606060)
    TEST_RR_OP(aes64ks2, x5, x27, x12, 0x9f9f9f9fffffffff, 0x9f9f9f9f9f9f9f9f, 0x6060606060606060, x6, 32, x7)

    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with dataset: sbox64
    // result rd:x6(0xa0a0a0a0ffffffff), rs1:x26(0xa0a0a0a0a0a0a0a0), rs2:x11(0x5f5f5f5f5f5f5f5f)
    TEST_RR_OP(aes64ks2, x6, x26, x11, 0xa0a0a0a0ffffffff, 0xa0a0a0a0a0a0a0a0, 0x5f5f5f5f5f5f5f5f, x1, 0, x2)

inst_161:
    // Test 161:  Test with dataset: sbox64
    // result rd:x7(0xa1a1a1a1ffffffff), rs1:x25(0xa1a1a1a1a1a1a1a1), rs2:x10(0x5e5e5e5e5e5e5e5e)
    TEST_RR_OP(aes64ks2, x7, x25, x10, 0xa1a1a1a1ffffffff, 0xa1a1a1a1a1a1a1a1, 0x5e5e5e5e5e5e5e5e, x1, 8, x2)

inst_162:
    // Test 162:  Test with dataset: sbox64
    // result rd:x8(0xa2a2a2a2ffffffff), rs1:x24(0xa2a2a2a2a2a2a2a2), rs2:x9(0x5d5d5d5d5d5d5d5d)
    TEST_RR_OP(aes64ks2, x8, x24, x9, 0xa2a2a2a2ffffffff, 0xa2a2a2a2a2a2a2a2, 0x5d5d5d5d5d5d5d5d, x1, 16, x2)

inst_163:
    // Test 163:  Test with dataset: sbox64
    // result rd:x9(0xa3a3a3a3ffffffff), rs1:x23(0xa3a3a3a3a3a3a3a3), rs2:x8(0x5c5c5c5c5c5c5c5c)
    TEST_RR_OP(aes64ks2, x9, x23, x8, 0xa3a3a3a3ffffffff, 0xa3a3a3a3a3a3a3a3, 0x5c5c5c5c5c5c5c5c, x1, 24, x2)

inst_164:
    // Test 164:  Test with dataset: sbox64
    // result rd:x10(0xa4a4a4a4ffffffff), rs1:x22(0xa4a4a4a4a4a4a4a4), rs2:x7(0x5b5b5b5b5b5b5b5b)
    TEST_RR_OP(aes64ks2, x10, x22, x7, 0xa4a4a4a4ffffffff, 0xa4a4a4a4a4a4a4a4, 0x5b5b5b5b5b5b5b5b, x1, 32, x2)

    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with dataset: sbox64
    // result rd:x11(0xa5a5a5a5ffffffff), rs1:x21(0xa5a5a5a5a5a5a5a5), rs2:x6(0x5a5a5a5a5a5a5a5a)
    TEST_RR_OP(aes64ks2, x11, x21, x6, 0xa5a5a5a5ffffffff, 0xa5a5a5a5a5a5a5a5, 0x5a5a5a5a5a5a5a5a, x1, 0, x7)

inst_166:
    // Test 166:  Test with dataset: sbox64
    // result rd:x12(0xa6a6a6a6ffffffff), rs1:x20(0xa6a6a6a6a6a6a6a6), rs2:x5(0x5959595959595959)
    TEST_RR_OP(aes64ks2, x12, x20, x5, 0xa6a6a6a6ffffffff, 0xa6a6a6a6a6a6a6a6, 0x5959595959595959, x1, 8, x7)

inst_167:
    // Test 167:  Test with dataset: sbox64
    // result rd:x13(0xa7a7a7a7ffffffff), rs1:x19(0xa7a7a7a7a7a7a7a7), rs2:x4(0x5858585858585858)
    TEST_RR_OP(aes64ks2, x13, x19, x4, 0xa7a7a7a7ffffffff, 0xa7a7a7a7a7a7a7a7, 0x5858585858585858, x1, 16, x7)

inst_168:
    // Test 168:  Test with dataset: sbox64
    // result rd:x14(0xa8a8a8a8ffffffff), rs1:x18(0xa8a8a8a8a8a8a8a8), rs2:x3(0x5757575757575757)
    TEST_RR_OP(aes64ks2, x14, x18, x3, 0xa8a8a8a8ffffffff, 0xa8a8a8a8a8a8a8a8, 0x5757575757575757, x1, 24, x7)

inst_169:
    // Test 169:  Test with dataset: sbox64
    // result rd:x15(0xa9a9a9a9ffffffff), rs1:x17(0xa9a9a9a9a9a9a9a9), rs2:x2(0x5656565656565656)
    TEST_RR_OP(aes64ks2, x15, x17, x2, 0xa9a9a9a9ffffffff, 0xa9a9a9a9a9a9a9a9, 0x5656565656565656, x1, 32, x7)

    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with dataset: sbox64
    // result rd:x16(0xaaaaaaaaffffffff), rs1:x16(0xaaaaaaaaaaaaaaaa), rs2:x1(0x5555555555555555)
    TEST_RR_OP(aes64ks2, x16, x16, x1, 0xaaaaaaaaffffffff, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555, x2, 0, x3)

inst_171:
    // Test 171:  Test with dataset: sbox64
    // result rd:x17(0xababababffffffff), rs1:x15(0xabababababababab), rs2:x31(0x5454545454545454)
    TEST_RR_OP(aes64ks2, x17, x15, x31, 0xababababffffffff, 0xabababababababab, 0x5454545454545454, x2, 8, x3)

inst_172:
    // Test 172:  Test with dataset: sbox64
    // result rd:x18(0xacacacacffffffff), rs1:x14(0xacacacacacacacac), rs2:x30(0x5353535353535353)
    TEST_RR_OP(aes64ks2, x18, x14, x30, 0xacacacacffffffff, 0xacacacacacacacac, 0x5353535353535353, x2, 16, x3)

inst_173:
    // Test 173:  Test with dataset: sbox64
    // result rd:x19(0xadadadadffffffff), rs1:x13(0xadadadadadadadad), rs2:x29(0x5252525252525252)
    TEST_RR_OP(aes64ks2, x19, x13, x29, 0xadadadadffffffff, 0xadadadadadadadad, 0x5252525252525252, x2, 24, x3)

inst_174:
    // Test 174:  Test with dataset: sbox64
    // result rd:x20(0xaeaeaeaeffffffff), rs1:x12(0xaeaeaeaeaeaeaeae), rs2:x28(0x5151515151515151)
    TEST_RR_OP(aes64ks2, x20, x12, x28, 0xaeaeaeaeffffffff, 0xaeaeaeaeaeaeaeae, 0x5151515151515151, x2, 32, x3)

    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with dataset: sbox64
    // result rd:x21(0xafafafafffffffff), rs1:x11(0xafafafafafafafaf), rs2:x27(0x5050505050505050)
    TEST_RR_OP(aes64ks2, x21, x11, x27, 0xafafafafffffffff, 0xafafafafafafafaf, 0x5050505050505050, x1, 0, x2)

inst_176:
    // Test 176:  Test with dataset: sbox64
    // result rd:x22(0xb0b0b0b0ffffffff), rs1:x10(0xb0b0b0b0b0b0b0b0), rs2:x26(0x4f4f4f4f4f4f4f4f)
    TEST_RR_OP(aes64ks2, x22, x10, x26, 0xb0b0b0b0ffffffff, 0xb0b0b0b0b0b0b0b0, 0x4f4f4f4f4f4f4f4f, x1, 8, x2)

inst_177:
    // Test 177:  Test with dataset: sbox64
    // result rd:x23(0xb1b1b1b1ffffffff), rs1:x9(0xb1b1b1b1b1b1b1b1), rs2:x25(0x4e4e4e4e4e4e4e4e)
    TEST_RR_OP(aes64ks2, x23, x9, x25, 0xb1b1b1b1ffffffff, 0xb1b1b1b1b1b1b1b1, 0x4e4e4e4e4e4e4e4e, x1, 16, x2)

inst_178:
    // Test 178:  Test with dataset: sbox64
    // result rd:x24(0xb2b2b2b2ffffffff), rs1:x8(0xb2b2b2b2b2b2b2b2), rs2:x24(0x4d4d4d4d4d4d4d4d)
    TEST_RR_OP(aes64ks2, x24, x8, x24, 0xb2b2b2b2ffffffff, 0xb2b2b2b2b2b2b2b2, 0x4d4d4d4d4d4d4d4d, x1, 24, x2)

inst_179:
    // Test 179:  Test with dataset: sbox64
    // result rd:x25(0xb3b3b3b3ffffffff), rs1:x7(0xb3b3b3b3b3b3b3b3), rs2:x23(0x4c4c4c4c4c4c4c4c)
    TEST_RR_OP(aes64ks2, x25, x7, x23, 0xb3b3b3b3ffffffff, 0xb3b3b3b3b3b3b3b3, 0x4c4c4c4c4c4c4c4c, x1, 32, x2)

    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with dataset: sbox64
    // result rd:x26(0xb4b4b4b4ffffffff), rs1:x6(0xb4b4b4b4b4b4b4b4), rs2:x22(0x4b4b4b4b4b4b4b4b)
    TEST_RR_OP(aes64ks2, x26, x6, x22, 0xb4b4b4b4ffffffff, 0xb4b4b4b4b4b4b4b4, 0x4b4b4b4b4b4b4b4b, x1, 0, x7)

inst_181:
    // Test 181:  Test with dataset: sbox64
    // result rd:x27(0xb5b5b5b5ffffffff), rs1:x5(0xb5b5b5b5b5b5b5b5), rs2:x21(0x4a4a4a4a4a4a4a4a)
    TEST_RR_OP(aes64ks2, x27, x5, x21, 0xb5b5b5b5ffffffff, 0xb5b5b5b5b5b5b5b5, 0x4a4a4a4a4a4a4a4a, x1, 8, x7)

inst_182:
    // Test 182:  Test with dataset: sbox64
    // result rd:x28(0xb6b6b6b6ffffffff), rs1:x4(0xb6b6b6b6b6b6b6b6), rs2:x20(0x4949494949494949)
    TEST_RR_OP(aes64ks2, x28, x4, x20, 0xb6b6b6b6ffffffff, 0xb6b6b6b6b6b6b6b6, 0x4949494949494949, x1, 16, x7)

inst_183:
    // Test 183:  Test with dataset: sbox64
    // result rd:x29(0xb7b7b7b7ffffffff), rs1:x3(0xb7b7b7b7b7b7b7b7), rs2:x19(0x4848484848484848)
    TEST_RR_OP(aes64ks2, x29, x3, x19, 0xb7b7b7b7ffffffff, 0xb7b7b7b7b7b7b7b7, 0x4848484848484848, x1, 24, x7)

inst_184:
    // Test 184:  Test with dataset: sbox64
    // result rd:x30(0xb8b8b8b8ffffffff), rs1:x2(0xb8b8b8b8b8b8b8b8), rs2:x18(0x4747474747474747)
    TEST_RR_OP(aes64ks2, x30, x2, x18, 0xb8b8b8b8ffffffff, 0xb8b8b8b8b8b8b8b8, 0x4747474747474747, x1, 32, x7)

    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with dataset: sbox64
    // result rd:x31(0xb9b9b9b9ffffffff), rs1:x1(0xb9b9b9b9b9b9b9b9), rs2:x17(0x4646464646464646)
    TEST_RR_OP(aes64ks2, x31, x1, x17, 0xb9b9b9b9ffffffff, 0xb9b9b9b9b9b9b9b9, 0x4646464646464646, x5, 0, x6)

inst_186:
    // Test 186:  Test with dataset: sbox64
    // result rd:x1(0xbabababaffffffff), rs1:x31(0xbabababababababa), rs2:x16(0x4545454545454545)
    TEST_RR_OP(aes64ks2, x1, x31, x16, 0xbabababaffffffff, 0xbabababababababa, 0x4545454545454545, x5, 8, x6)

inst_187:
    // Test 187:  Test with dataset: sbox64
    // result rd:x2(0xbbbbbbbbffffffff), rs1:x30(0xbbbbbbbbbbbbbbbb), rs2:x15(0x4444444444444444)
    TEST_RR_OP(aes64ks2, x2, x30, x15, 0xbbbbbbbbffffffff, 0xbbbbbbbbbbbbbbbb, 0x4444444444444444, x5, 16, x6)

inst_188:
    // Test 188:  Test with dataset: sbox64
    // result rd:x3(0xbcbcbcbcffffffff), rs1:x29(0xbcbcbcbcbcbcbcbc), rs2:x14(0x4343434343434343)
    TEST_RR_OP(aes64ks2, x3, x29, x14, 0xbcbcbcbcffffffff, 0xbcbcbcbcbcbcbcbc, 0x4343434343434343, x5, 24, x6)

inst_189:
    // Test 189:  Test with dataset: sbox64
    // result rd:x4(0xbdbdbdbdffffffff), rs1:x28(0xbdbdbdbdbdbdbdbd), rs2:x13(0x4242424242424242)
    TEST_RR_OP(aes64ks2, x4, x28, x13, 0xbdbdbdbdffffffff, 0xbdbdbdbdbdbdbdbd, 0x4242424242424242, x5, 32, x6)

    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with dataset: sbox64
    // result rd:x5(0xbebebebeffffffff), rs1:x27(0xbebebebebebebebe), rs2:x12(0x4141414141414141)
    TEST_RR_OP(aes64ks2, x5, x27, x12, 0xbebebebeffffffff, 0xbebebebebebebebe, 0x4141414141414141, x1, 0, x2)

inst_191:
    // Test 191:  Test with dataset: sbox64
    // result rd:x6(0xbfbfbfbfffffffff), rs1:x26(0xbfbfbfbfbfbfbfbf), rs2:x11(0x4040404040404040)
    TEST_RR_OP(aes64ks2, x6, x26, x11, 0xbfbfbfbfffffffff, 0xbfbfbfbfbfbfbfbf, 0x4040404040404040, x1, 8, x2)

inst_192:
    // Test 192:  Test with dataset: sbox64
    // result rd:x7(0xc0c0c0c0ffffffff), rs1:x25(0xc0c0c0c0c0c0c0c0), rs2:x10(0x3f3f3f3f3f3f3f3f)
    TEST_RR_OP(aes64ks2, x7, x25, x10, 0xc0c0c0c0ffffffff, 0xc0c0c0c0c0c0c0c0, 0x3f3f3f3f3f3f3f3f, x1, 16, x2)

inst_193:
    // Test 193:  Test with dataset: sbox64
    // result rd:x8(0xc1c1c1c1ffffffff), rs1:x24(0xc1c1c1c1c1c1c1c1), rs2:x9(0x3e3e3e3e3e3e3e3e)
    TEST_RR_OP(aes64ks2, x8, x24, x9, 0xc1c1c1c1ffffffff, 0xc1c1c1c1c1c1c1c1, 0x3e3e3e3e3e3e3e3e, x1, 24, x2)

inst_194:
    // Test 194:  Test with dataset: sbox64
    // result rd:x9(0xc2c2c2c2ffffffff), rs1:x23(0xc2c2c2c2c2c2c2c2), rs2:x8(0x3d3d3d3d3d3d3d3d)
    TEST_RR_OP(aes64ks2, x9, x23, x8, 0xc2c2c2c2ffffffff, 0xc2c2c2c2c2c2c2c2, 0x3d3d3d3d3d3d3d3d, x1, 32, x2)

    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with dataset: sbox64
    // result rd:x10(0xc3c3c3c3ffffffff), rs1:x22(0xc3c3c3c3c3c3c3c3), rs2:x7(0x3c3c3c3c3c3c3c3c)
    TEST_RR_OP(aes64ks2, x10, x22, x7, 0xc3c3c3c3ffffffff, 0xc3c3c3c3c3c3c3c3, 0x3c3c3c3c3c3c3c3c, x1, 0, x2)

inst_196:
    // Test 196:  Test with dataset: sbox64
    // result rd:x11(0xc4c4c4c4ffffffff), rs1:x21(0xc4c4c4c4c4c4c4c4), rs2:x6(0x3b3b3b3b3b3b3b3b)
    TEST_RR_OP(aes64ks2, x11, x21, x6, 0xc4c4c4c4ffffffff, 0xc4c4c4c4c4c4c4c4, 0x3b3b3b3b3b3b3b3b, x1, 8, x2)

inst_197:
    // Test 197:  Test with dataset: sbox64
    // result rd:x12(0xc5c5c5c5ffffffff), rs1:x20(0xc5c5c5c5c5c5c5c5), rs2:x5(0x3a3a3a3a3a3a3a3a)
    TEST_RR_OP(aes64ks2, x12, x20, x5, 0xc5c5c5c5ffffffff, 0xc5c5c5c5c5c5c5c5, 0x3a3a3a3a3a3a3a3a, x1, 16, x2)

inst_198:
    // Test 198:  Test with dataset: sbox64
    // result rd:x13(0xc6c6c6c6ffffffff), rs1:x19(0xc6c6c6c6c6c6c6c6), rs2:x4(0x3939393939393939)
    TEST_RR_OP(aes64ks2, x13, x19, x4, 0xc6c6c6c6ffffffff, 0xc6c6c6c6c6c6c6c6, 0x3939393939393939, x1, 24, x2)

inst_199:
    // Test 199:  Test with dataset: sbox64
    // result rd:x14(0xc7c7c7c7ffffffff), rs1:x18(0xc7c7c7c7c7c7c7c7), rs2:x3(0x3838383838383838)
    TEST_RR_OP(aes64ks2, x14, x18, x3, 0xc7c7c7c7ffffffff, 0xc7c7c7c7c7c7c7c7, 0x3838383838383838, x1, 32, x2)

    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with dataset: sbox64
    // result rd:x15(0xc8c8c8c8ffffffff), rs1:x17(0xc8c8c8c8c8c8c8c8), rs2:x2(0x3737373737373737)
    TEST_RR_OP(aes64ks2, x15, x17, x2, 0xc8c8c8c8ffffffff, 0xc8c8c8c8c8c8c8c8, 0x3737373737373737, x3, 0, x4)

inst_201:
    // Test 201:  Test with dataset: sbox64
    // result rd:x16(0xc9c9c9c9ffffffff), rs1:x16(0xc9c9c9c9c9c9c9c9), rs2:x1(0x3636363636363636)
    TEST_RR_OP(aes64ks2, x16, x16, x1, 0xc9c9c9c9ffffffff, 0xc9c9c9c9c9c9c9c9, 0x3636363636363636, x3, 8, x4)

inst_202:
    // Test 202:  Test with dataset: sbox64
    // result rd:x17(0xcacacacaffffffff), rs1:x15(0xcacacacacacacaca), rs2:x31(0x3535353535353535)
    TEST_RR_OP(aes64ks2, x17, x15, x31, 0xcacacacaffffffff, 0xcacacacacacacaca, 0x3535353535353535, x3, 16, x4)

inst_203:
    // Test 203:  Test with dataset: sbox64
    // result rd:x18(0xcbcbcbcbffffffff), rs1:x14(0xcbcbcbcbcbcbcbcb), rs2:x30(0x3434343434343434)
    TEST_RR_OP(aes64ks2, x18, x14, x30, 0xcbcbcbcbffffffff, 0xcbcbcbcbcbcbcbcb, 0x3434343434343434, x3, 24, x4)

inst_204:
    // Test 204:  Test with dataset: sbox64
    // result rd:x19(0xccccccccffffffff), rs1:x13(0xcccccccccccccccc), rs2:x29(0x3333333333333333)
    TEST_RR_OP(aes64ks2, x19, x13, x29, 0xccccccccffffffff, 0xcccccccccccccccc, 0x3333333333333333, x3, 32, x4)

    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with dataset: sbox64
    // result rd:x20(0xcdcdcdcdffffffff), rs1:x12(0xcdcdcdcdcdcdcdcd), rs2:x28(0x3232323232323232)
    TEST_RR_OP(aes64ks2, x20, x12, x28, 0xcdcdcdcdffffffff, 0xcdcdcdcdcdcdcdcd, 0x3232323232323232, x1, 0, x2)

inst_206:
    // Test 206:  Test with dataset: sbox64
    // result rd:x21(0xcecececeffffffff), rs1:x11(0xcececececececece), rs2:x27(0x3131313131313131)
    TEST_RR_OP(aes64ks2, x21, x11, x27, 0xcecececeffffffff, 0xcececececececece, 0x3131313131313131, x1, 8, x2)

inst_207:
    // Test 207:  Test with dataset: sbox64
    // result rd:x22(0xcfcfcfcfffffffff), rs1:x10(0xcfcfcfcfcfcfcfcf), rs2:x26(0x3030303030303030)
    TEST_RR_OP(aes64ks2, x22, x10, x26, 0xcfcfcfcfffffffff, 0xcfcfcfcfcfcfcfcf, 0x3030303030303030, x1, 16, x2)

inst_208:
    // Test 208:  Test with dataset: sbox64
    // result rd:x23(0xd0d0d0d0ffffffff), rs1:x9(0xd0d0d0d0d0d0d0d0), rs2:x25(0x2f2f2f2f2f2f2f2f)
    TEST_RR_OP(aes64ks2, x23, x9, x25, 0xd0d0d0d0ffffffff, 0xd0d0d0d0d0d0d0d0, 0x2f2f2f2f2f2f2f2f, x1, 24, x2)

inst_209:
    // Test 209:  Test with dataset: sbox64
    // result rd:x24(0xd1d1d1d1ffffffff), rs1:x8(0xd1d1d1d1d1d1d1d1), rs2:x24(0x2e2e2e2e2e2e2e2e)
    TEST_RR_OP(aes64ks2, x24, x8, x24, 0xd1d1d1d1ffffffff, 0xd1d1d1d1d1d1d1d1, 0x2e2e2e2e2e2e2e2e, x1, 32, x2)

    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with dataset: sbox64
    // result rd:x25(0xd2d2d2d2ffffffff), rs1:x7(0xd2d2d2d2d2d2d2d2), rs2:x23(0x2d2d2d2d2d2d2d2d)
    TEST_RR_OP(aes64ks2, x25, x7, x23, 0xd2d2d2d2ffffffff, 0xd2d2d2d2d2d2d2d2, 0x2d2d2d2d2d2d2d2d, x1, 0, x2)

inst_211:
    // Test 211:  Test with dataset: sbox64
    // result rd:x26(0xd3d3d3d3ffffffff), rs1:x6(0xd3d3d3d3d3d3d3d3), rs2:x22(0x2c2c2c2c2c2c2c2c)
    TEST_RR_OP(aes64ks2, x26, x6, x22, 0xd3d3d3d3ffffffff, 0xd3d3d3d3d3d3d3d3, 0x2c2c2c2c2c2c2c2c, x1, 8, x2)

inst_212:
    // Test 212:  Test with dataset: sbox64
    // result rd:x27(0xd4d4d4d4ffffffff), rs1:x5(0xd4d4d4d4d4d4d4d4), rs2:x21(0x2b2b2b2b2b2b2b2b)
    TEST_RR_OP(aes64ks2, x27, x5, x21, 0xd4d4d4d4ffffffff, 0xd4d4d4d4d4d4d4d4, 0x2b2b2b2b2b2b2b2b, x1, 16, x2)

inst_213:
    // Test 213:  Test with dataset: sbox64
    // result rd:x28(0xd5d5d5d5ffffffff), rs1:x4(0xd5d5d5d5d5d5d5d5), rs2:x20(0x2a2a2a2a2a2a2a2a)
    TEST_RR_OP(aes64ks2, x28, x4, x20, 0xd5d5d5d5ffffffff, 0xd5d5d5d5d5d5d5d5, 0x2a2a2a2a2a2a2a2a, x1, 24, x2)

inst_214:
    // Test 214:  Test with dataset: sbox64
    // result rd:x29(0xd6d6d6d6ffffffff), rs1:x3(0xd6d6d6d6d6d6d6d6), rs2:x19(0x2929292929292929)
    TEST_RR_OP(aes64ks2, x29, x3, x19, 0xd6d6d6d6ffffffff, 0xd6d6d6d6d6d6d6d6, 0x2929292929292929, x1, 32, x2)

    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with dataset: sbox64
    // result rd:x30(0xd7d7d7d7ffffffff), rs1:x2(0xd7d7d7d7d7d7d7d7), rs2:x18(0x2828282828282828)
    TEST_RR_OP(aes64ks2, x30, x2, x18, 0xd7d7d7d7ffffffff, 0xd7d7d7d7d7d7d7d7, 0x2828282828282828, x4, 0, x5)

inst_216:
    // Test 216:  Test with dataset: sbox64
    // result rd:x31(0xd8d8d8d8ffffffff), rs1:x1(0xd8d8d8d8d8d8d8d8), rs2:x17(0x2727272727272727)
    TEST_RR_OP(aes64ks2, x31, x1, x17, 0xd8d8d8d8ffffffff, 0xd8d8d8d8d8d8d8d8, 0x2727272727272727, x4, 8, x5)

inst_217:
    // Test 217:  Test with dataset: sbox64
    // result rd:x1(0xd9d9d9d9ffffffff), rs1:x31(0xd9d9d9d9d9d9d9d9), rs2:x16(0x2626262626262626)
    TEST_RR_OP(aes64ks2, x1, x31, x16, 0xd9d9d9d9ffffffff, 0xd9d9d9d9d9d9d9d9, 0x2626262626262626, x4, 16, x5)

inst_218:
    // Test 218:  Test with dataset: sbox64
    // result rd:x2(0xdadadadaffffffff), rs1:x30(0xdadadadadadadada), rs2:x15(0x2525252525252525)
    TEST_RR_OP(aes64ks2, x2, x30, x15, 0xdadadadaffffffff, 0xdadadadadadadada, 0x2525252525252525, x4, 24, x5)

inst_219:
    // Test 219:  Test with dataset: sbox64
    // result rd:x3(0xdbdbdbdbffffffff), rs1:x29(0xdbdbdbdbdbdbdbdb), rs2:x14(0x2424242424242424)
    TEST_RR_OP(aes64ks2, x3, x29, x14, 0xdbdbdbdbffffffff, 0xdbdbdbdbdbdbdbdb, 0x2424242424242424, x4, 32, x5)

    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with dataset: sbox64
    // result rd:x4(0xdcdcdcdcffffffff), rs1:x28(0xdcdcdcdcdcdcdcdc), rs2:x13(0x2323232323232323)
    TEST_RR_OP(aes64ks2, x4, x28, x13, 0xdcdcdcdcffffffff, 0xdcdcdcdcdcdcdcdc, 0x2323232323232323, x1, 0, x2)

inst_221:
    // Test 221:  Test with dataset: sbox64
    // result rd:x5(0xddddddddffffffff), rs1:x27(0xdddddddddddddddd), rs2:x12(0x2222222222222222)
    TEST_RR_OP(aes64ks2, x5, x27, x12, 0xddddddddffffffff, 0xdddddddddddddddd, 0x2222222222222222, x1, 8, x2)

inst_222:
    // Test 222:  Test with dataset: sbox64
    // result rd:x6(0xdedededeffffffff), rs1:x26(0xdededededededede), rs2:x11(0x2121212121212121)
    TEST_RR_OP(aes64ks2, x6, x26, x11, 0xdedededeffffffff, 0xdededededededede, 0x2121212121212121, x1, 16, x2)

inst_223:
    // Test 223:  Test with dataset: sbox64
    // result rd:x7(0xdfdfdfdfffffffff), rs1:x25(0xdfdfdfdfdfdfdfdf), rs2:x10(0x2020202020202020)
    TEST_RR_OP(aes64ks2, x7, x25, x10, 0xdfdfdfdfffffffff, 0xdfdfdfdfdfdfdfdf, 0x2020202020202020, x1, 24, x2)

inst_224:
    // Test 224:  Test with dataset: sbox64
    // result rd:x8(0xe0e0e0e0ffffffff), rs1:x24(0xe0e0e0e0e0e0e0e0), rs2:x9(0x1f1f1f1f1f1f1f1f)
    TEST_RR_OP(aes64ks2, x8, x24, x9, 0xe0e0e0e0ffffffff, 0xe0e0e0e0e0e0e0e0, 0x1f1f1f1f1f1f1f1f, x1, 32, x2)

    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with dataset: sbox64
    // result rd:x9(0xe1e1e1e1ffffffff), rs1:x23(0xe1e1e1e1e1e1e1e1), rs2:x8(0x1e1e1e1e1e1e1e1e)
    TEST_RR_OP(aes64ks2, x9, x23, x8, 0xe1e1e1e1ffffffff, 0xe1e1e1e1e1e1e1e1, 0x1e1e1e1e1e1e1e1e, x1, 0, x2)

inst_226:
    // Test 226:  Test with dataset: sbox64
    // result rd:x10(0xe2e2e2e2ffffffff), rs1:x22(0xe2e2e2e2e2e2e2e2), rs2:x7(0x1d1d1d1d1d1d1d1d)
    TEST_RR_OP(aes64ks2, x10, x22, x7, 0xe2e2e2e2ffffffff, 0xe2e2e2e2e2e2e2e2, 0x1d1d1d1d1d1d1d1d, x1, 8, x2)

inst_227:
    // Test 227:  Test with dataset: sbox64
    // result rd:x11(0xe3e3e3e3ffffffff), rs1:x21(0xe3e3e3e3e3e3e3e3), rs2:x6(0x1c1c1c1c1c1c1c1c)
    TEST_RR_OP(aes64ks2, x11, x21, x6, 0xe3e3e3e3ffffffff, 0xe3e3e3e3e3e3e3e3, 0x1c1c1c1c1c1c1c1c, x1, 16, x2)

inst_228:
    // Test 228:  Test with dataset: sbox64
    // result rd:x12(0xe4e4e4e4ffffffff), rs1:x20(0xe4e4e4e4e4e4e4e4), rs2:x5(0x1b1b1b1b1b1b1b1b)
    TEST_RR_OP(aes64ks2, x12, x20, x5, 0xe4e4e4e4ffffffff, 0xe4e4e4e4e4e4e4e4, 0x1b1b1b1b1b1b1b1b, x1, 24, x2)

inst_229:
    // Test 229:  Test with dataset: sbox64
    // result rd:x13(0xe5e5e5e5ffffffff), rs1:x19(0xe5e5e5e5e5e5e5e5), rs2:x4(0x1a1a1a1a1a1a1a1a)
    TEST_RR_OP(aes64ks2, x13, x19, x4, 0xe5e5e5e5ffffffff, 0xe5e5e5e5e5e5e5e5, 0x1a1a1a1a1a1a1a1a, x1, 32, x2)

    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with dataset: sbox64
    // result rd:x14(0xe6e6e6e6ffffffff), rs1:x18(0xe6e6e6e6e6e6e6e6), rs2:x3(0x1919191919191919)
    TEST_RR_OP(aes64ks2, x14, x18, x3, 0xe6e6e6e6ffffffff, 0xe6e6e6e6e6e6e6e6, 0x1919191919191919, x4, 0, x5)

inst_231:
    // Test 231:  Test with dataset: sbox64
    // result rd:x15(0xe7e7e7e7ffffffff), rs1:x17(0xe7e7e7e7e7e7e7e7), rs2:x2(0x1818181818181818)
    TEST_RR_OP(aes64ks2, x15, x17, x2, 0xe7e7e7e7ffffffff, 0xe7e7e7e7e7e7e7e7, 0x1818181818181818, x4, 8, x5)

inst_232:
    // Test 232:  Test with dataset: sbox64
    // result rd:x16(0xe8e8e8e8ffffffff), rs1:x16(0xe8e8e8e8e8e8e8e8), rs2:x1(0x1717171717171717)
    TEST_RR_OP(aes64ks2, x16, x16, x1, 0xe8e8e8e8ffffffff, 0xe8e8e8e8e8e8e8e8, 0x1717171717171717, x4, 16, x5)

inst_233:
    // Test 233:  Test with dataset: sbox64
    // result rd:x17(0xe9e9e9e9ffffffff), rs1:x15(0xe9e9e9e9e9e9e9e9), rs2:x31(0x1616161616161616)
    TEST_RR_OP(aes64ks2, x17, x15, x31, 0xe9e9e9e9ffffffff, 0xe9e9e9e9e9e9e9e9, 0x1616161616161616, x4, 24, x5)

inst_234:
    // Test 234:  Test with dataset: sbox64
    // result rd:x18(0xeaeaeaeaffffffff), rs1:x14(0xeaeaeaeaeaeaeaea), rs2:x30(0x1515151515151515)
    TEST_RR_OP(aes64ks2, x18, x14, x30, 0xeaeaeaeaffffffff, 0xeaeaeaeaeaeaeaea, 0x1515151515151515, x4, 32, x5)

    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with dataset: sbox64
    // result rd:x19(0xebebebebffffffff), rs1:x13(0xebebebebebebebeb), rs2:x29(0x1414141414141414)
    TEST_RR_OP(aes64ks2, x19, x13, x29, 0xebebebebffffffff, 0xebebebebebebebeb, 0x1414141414141414, x1, 0, x2)

inst_236:
    // Test 236:  Test with dataset: sbox64
    // result rd:x20(0xececececffffffff), rs1:x12(0xecececececececec), rs2:x28(0x1313131313131313)
    TEST_RR_OP(aes64ks2, x20, x12, x28, 0xececececffffffff, 0xecececececececec, 0x1313131313131313, x1, 8, x2)

inst_237:
    // Test 237:  Test with dataset: sbox64
    // result rd:x21(0xededededffffffff), rs1:x11(0xedededededededed), rs2:x27(0x1212121212121212)
    TEST_RR_OP(aes64ks2, x21, x11, x27, 0xededededffffffff, 0xedededededededed, 0x1212121212121212, x1, 16, x2)

inst_238:
    // Test 238:  Test with dataset: sbox64
    // result rd:x22(0xeeeeeeeeffffffff), rs1:x10(0xeeeeeeeeeeeeeeee), rs2:x26(0x1111111111111111)
    TEST_RR_OP(aes64ks2, x22, x10, x26, 0xeeeeeeeeffffffff, 0xeeeeeeeeeeeeeeee, 0x1111111111111111, x1, 24, x2)

inst_239:
    // Test 239:  Test with dataset: sbox64
    // result rd:x23(0xefefefefffffffff), rs1:x9(0xefefefefefefefef), rs2:x25(0x1010101010101010)
    TEST_RR_OP(aes64ks2, x23, x9, x25, 0xefefefefffffffff, 0xefefefefefefefef, 0x1010101010101010, x1, 32, x2)

    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with dataset: sbox64
    // result rd:x24(0xf0f0f0f0ffffffff), rs1:x8(0xf0f0f0f0f0f0f0f0), rs2:x24(0x0f0f0f0f0f0f0f0f)
    TEST_RR_OP(aes64ks2, x24, x8, x24, 0xf0f0f0f0ffffffff, 0xf0f0f0f0f0f0f0f0, 0xf0f0f0f0f0f0f0f, x1, 0, x2)

inst_241:
    // Test 241:  Test with dataset: sbox64
    // result rd:x25(0xf1f1f1f1ffffffff), rs1:x7(0xf1f1f1f1f1f1f1f1), rs2:x23(0x0e0e0e0e0e0e0e0e)
    TEST_RR_OP(aes64ks2, x25, x7, x23, 0xf1f1f1f1ffffffff, 0xf1f1f1f1f1f1f1f1, 0xe0e0e0e0e0e0e0e, x1, 8, x2)

inst_242:
    // Test 242:  Test with dataset: sbox64
    // result rd:x26(0xf2f2f2f2ffffffff), rs1:x6(0xf2f2f2f2f2f2f2f2), rs2:x22(0x0d0d0d0d0d0d0d0d)
    TEST_RR_OP(aes64ks2, x26, x6, x22, 0xf2f2f2f2ffffffff, 0xf2f2f2f2f2f2f2f2, 0xd0d0d0d0d0d0d0d, x1, 16, x2)

inst_243:
    // Test 243:  Test with dataset: sbox64
    // result rd:x27(0xf3f3f3f3ffffffff), rs1:x5(0xf3f3f3f3f3f3f3f3), rs2:x21(0x0c0c0c0c0c0c0c0c)
    TEST_RR_OP(aes64ks2, x27, x5, x21, 0xf3f3f3f3ffffffff, 0xf3f3f3f3f3f3f3f3, 0xc0c0c0c0c0c0c0c, x1, 24, x2)

inst_244:
    // Test 244:  Test with dataset: sbox64
    // result rd:x28(0xf4f4f4f4ffffffff), rs1:x4(0xf4f4f4f4f4f4f4f4), rs2:x20(0x0b0b0b0b0b0b0b0b)
    TEST_RR_OP(aes64ks2, x28, x4, x20, 0xf4f4f4f4ffffffff, 0xf4f4f4f4f4f4f4f4, 0xb0b0b0b0b0b0b0b, x1, 32, x2)

    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with dataset: sbox64
    // result rd:x29(0xf5f5f5f5ffffffff), rs1:x3(0xf5f5f5f5f5f5f5f5), rs2:x19(0x0a0a0a0a0a0a0a0a)
    TEST_RR_OP(aes64ks2, x29, x3, x19, 0xf5f5f5f5ffffffff, 0xf5f5f5f5f5f5f5f5, 0xa0a0a0a0a0a0a0a, x4, 0, x5)

inst_246:
    // Test 246:  Test with dataset: sbox64
    // result rd:x30(0xf6f6f6f6ffffffff), rs1:x2(0xf6f6f6f6f6f6f6f6), rs2:x18(0x0909090909090909)
    TEST_RR_OP(aes64ks2, x30, x2, x18, 0xf6f6f6f6ffffffff, 0xf6f6f6f6f6f6f6f6, 0x909090909090909, x4, 8, x5)

inst_247:
    // Test 247:  Test with dataset: sbox64
    // result rd:x31(0xf7f7f7f7ffffffff), rs1:x1(0xf7f7f7f7f7f7f7f7), rs2:x17(0x0808080808080808)
    TEST_RR_OP(aes64ks2, x31, x1, x17, 0xf7f7f7f7ffffffff, 0xf7f7f7f7f7f7f7f7, 0x808080808080808, x4, 16, x5)

inst_248:
    // Test 248:  Test with dataset: sbox64
    // result rd:x1(0xf8f8f8f8ffffffff), rs1:x31(0xf8f8f8f8f8f8f8f8), rs2:x16(0x0707070707070707)
    TEST_RR_OP(aes64ks2, x1, x31, x16, 0xf8f8f8f8ffffffff, 0xf8f8f8f8f8f8f8f8, 0x707070707070707, x4, 24, x5)

inst_249:
    // Test 249:  Test with dataset: sbox64
    // result rd:x2(0xf9f9f9f9ffffffff), rs1:x30(0xf9f9f9f9f9f9f9f9), rs2:x15(0x0606060606060606)
    TEST_RR_OP(aes64ks2, x2, x30, x15, 0xf9f9f9f9ffffffff, 0xf9f9f9f9f9f9f9f9, 0x606060606060606, x4, 32, x5)

    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with dataset: sbox64
    // result rd:x3(0xfafafafaffffffff), rs1:x29(0xfafafafafafafafa), rs2:x14(0x0505050505050505)
    TEST_RR_OP(aes64ks2, x3, x29, x14, 0xfafafafaffffffff, 0xfafafafafafafafa, 0x505050505050505, x1, 0, x2)

inst_251:
    // Test 251:  Test with dataset: sbox64
    // result rd:x4(0xfbfbfbfbffffffff), rs1:x28(0xfbfbfbfbfbfbfbfb), rs2:x13(0x0404040404040404)
    TEST_RR_OP(aes64ks2, x4, x28, x13, 0xfbfbfbfbffffffff, 0xfbfbfbfbfbfbfbfb, 0x404040404040404, x1, 8, x2)

inst_252:
    // Test 252:  Test with dataset: sbox64
    // result rd:x5(0xfcfcfcfcffffffff), rs1:x27(0xfcfcfcfcfcfcfcfc), rs2:x12(0x0303030303030303)
    TEST_RR_OP(aes64ks2, x5, x27, x12, 0xfcfcfcfcffffffff, 0xfcfcfcfcfcfcfcfc, 0x303030303030303, x1, 16, x2)

inst_253:
    // Test 253:  Test with dataset: sbox64
    // result rd:x6(0xfdfdfdfdffffffff), rs1:x26(0xfdfdfdfdfdfdfdfd), rs2:x11(0x0202020202020202)
    TEST_RR_OP(aes64ks2, x6, x26, x11, 0xfdfdfdfdffffffff, 0xfdfdfdfdfdfdfdfd, 0x202020202020202, x1, 24, x2)

inst_254:
    // Test 254:  Test with dataset: sbox64
    // result rd:x7(0xfefefefeffffffff), rs1:x25(0xfefefefefefefefe), rs2:x10(0x0101010101010101)
    TEST_RR_OP(aes64ks2, x7, x25, x10, 0xfefefefeffffffff, 0xfefefefefefefefe, 0x101010101010101, x1, 32, x2)

    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks2)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with dataset: sbox64
    // result rd:x8(0xffffffffffffffff), rs1:x24(0xffffffffffffffff), rs2:x9(0x0000000000000000)
    TEST_RR_OP(aes64ks2, x8, x24, x9, 0xffffffffffffffff, 0xffffffffffffffff, 0x0, x1, 0, x2)
	
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

