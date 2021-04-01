// RISC-V Architectural Validation Test AES64ES-02
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
// Description: Testing instruction 'aes64es'.
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

    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with dataset: sbox64
    // result rd:x1(0x6316166316166363), rs1:x31(0x0000000000000000), rs2:x16(0xffffffffffffffff)
    TEST_RR_OP(aes64es, x1, x31, x16, 0x6316166316166363, 0x0, 0xffffffffffffffff, x6, 0, x7)

inst_1:
    // Test 1:  Test with dataset: sbox64
    // result rd:x2(0x7cbbbb7cbbbb7c7c), rs1:x30(0x0101010101010101), rs2:x15(0xfefefefefefefefe)
    TEST_RR_OP(aes64es, x2, x30, x15, 0x7cbbbb7cbbbb7c7c, 0x101010101010101, 0xfefefefefefefefe, x6, 8, x7)

inst_2:
    // Test 2:  Test with dataset: sbox64
    // result rd:x3(0x7754547754547777), rs1:x29(0x0202020202020202), rs2:x14(0xfdfdfdfdfdfdfdfd)
    TEST_RR_OP(aes64es, x3, x29, x14, 0x7754547754547777, 0x202020202020202, 0xfdfdfdfdfdfdfdfd, x6, 16, x7)

inst_3:
    // Test 3:  Test with dataset: sbox64
    // result rd:x4(0x7bb0b07bb0b07b7b), rs1:x28(0x0303030303030303), rs2:x13(0xfcfcfcfcfcfcfcfc)
    TEST_RR_OP(aes64es, x4, x28, x13, 0x7bb0b07bb0b07b7b, 0x303030303030303, 0xfcfcfcfcfcfcfcfc, x6, 24, x7)

inst_4:
    // Test 4:  Test with dataset: sbox64
    // result rd:x5(0xf20f0ff20f0ff2f2), rs1:x27(0x0404040404040404), rs2:x12(0xfbfbfbfbfbfbfbfb)
    TEST_RR_OP(aes64es, x5, x27, x12, 0xf20f0ff20f0ff2f2, 0x404040404040404, 0xfbfbfbfbfbfbfbfb, x6, 32, x7)

    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with dataset: sbox64
    // result rd:x6(0x6b2d2d6b2d2d6b6b), rs1:x26(0x0505050505050505), rs2:x11(0xfafafafafafafafa)
    TEST_RR_OP(aes64es, x6, x26, x11, 0x6b2d2d6b2d2d6b6b, 0x505050505050505, 0xfafafafafafafafa, x1, 0, x2)

inst_6:
    // Test 6:  Test with dataset: sbox64
    // result rd:x7(0x6f99996f99996f6f), rs1:x25(0x0606060606060606), rs2:x10(0xf9f9f9f9f9f9f9f9)
    TEST_RR_OP(aes64es, x7, x25, x10, 0x6f99996f99996f6f, 0x606060606060606, 0xf9f9f9f9f9f9f9f9, x1, 8, x2)

inst_7:
    // Test 7:  Test with dataset: sbox64
    // result rd:x8(0xc54141c54141c5c5), rs1:x24(0x0707070707070707), rs2:x9(0xf8f8f8f8f8f8f8f8)
    TEST_RR_OP(aes64es, x8, x24, x9, 0xc54141c54141c5c5, 0x707070707070707, 0xf8f8f8f8f8f8f8f8, x1, 16, x2)

inst_8:
    // Test 8:  Test with dataset: sbox64
    // result rd:x9(0x3068683068683030), rs1:x23(0x0808080808080808), rs2:x8(0xf7f7f7f7f7f7f7f7)
    TEST_RR_OP(aes64es, x9, x23, x8, 0x3068683068683030, 0x808080808080808, 0xf7f7f7f7f7f7f7f7, x1, 24, x2)

inst_9:
    // Test 9:  Test with dataset: sbox64
    // result rd:x10(0x0142420142420101), rs1:x22(0x0909090909090909), rs2:x7(0xf6f6f6f6f6f6f6f6)
    TEST_RR_OP(aes64es, x10, x22, x7, 0x0142420142420101, 0x909090909090909, 0xf6f6f6f6f6f6f6f6, x1, 32, x2)

    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with dataset: sbox64
    // result rd:x11(0x67e6e667e6e66767), rs1:x21(0x0a0a0a0a0a0a0a0a), rs2:x6(0xf5f5f5f5f5f5f5f5)
    TEST_RR_OP(aes64es, x11, x21, x6, 0x67e6e667e6e66767, 0xa0a0a0a0a0a0a0a, 0xf5f5f5f5f5f5f5f5, x1, 0, x7)

inst_11:
    // Test 11:  Test with dataset: sbox64
    // result rd:x12(0x2bbfbf2bbfbf2b2b), rs1:x20(0x0b0b0b0b0b0b0b0b), rs2:x5(0xf4f4f4f4f4f4f4f4)
    TEST_RR_OP(aes64es, x12, x20, x5, 0x2bbfbf2bbfbf2b2b, 0xb0b0b0b0b0b0b0b, 0xf4f4f4f4f4f4f4f4, x1, 8, x7)

inst_12:
    // Test 12:  Test with dataset: sbox64
    // result rd:x13(0xfe0d0dfe0d0dfefe), rs1:x19(0x0c0c0c0c0c0c0c0c), rs2:x4(0xf3f3f3f3f3f3f3f3)
    TEST_RR_OP(aes64es, x13, x19, x4, 0xfe0d0dfe0d0dfefe, 0xc0c0c0c0c0c0c0c, 0xf3f3f3f3f3f3f3f3, x1, 16, x7)

inst_13:
    // Test 13:  Test with dataset: sbox64
    // result rd:x14(0xd78989d78989d7d7), rs1:x18(0x0d0d0d0d0d0d0d0d), rs2:x3(0xf2f2f2f2f2f2f2f2)
    TEST_RR_OP(aes64es, x14, x18, x3, 0xd78989d78989d7d7, 0xd0d0d0d0d0d0d0d, 0xf2f2f2f2f2f2f2f2, x1, 24, x7)

inst_14:
    // Test 14:  Test with dataset: sbox64
    // result rd:x15(0xaba1a1aba1a1abab), rs1:x17(0x0e0e0e0e0e0e0e0e), rs2:x2(0xf1f1f1f1f1f1f1f1)
    TEST_RR_OP(aes64es, x15, x17, x2, 0xaba1a1aba1a1abab, 0xe0e0e0e0e0e0e0e, 0xf1f1f1f1f1f1f1f1, x1, 32, x7)

    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with dataset: sbox64
    // result rd:x16(0x768c8c768c8c7676), rs1:x16(0x0f0f0f0f0f0f0f0f), rs2:x1(0xf0f0f0f0f0f0f0f0)
    TEST_RR_OP(aes64es, x16, x16, x1, 0x768c8c768c8c7676, 0xf0f0f0f0f0f0f0f, 0xf0f0f0f0f0f0f0f0, x2, 0, x3)

inst_16:
    // Test 16:  Test with dataset: sbox64
    // result rd:x17(0xcadfdfcadfdfcaca), rs1:x15(0x1010101010101010), rs2:x31(0xefefefefefefefef)
    TEST_RR_OP(aes64es, x17, x15, x31, 0xcadfdfcadfdfcaca, 0x1010101010101010, 0xefefefefefefefef, x2, 8, x3)

inst_17:
    // Test 17:  Test with dataset: sbox64
    // result rd:x18(0x8228288228288282), rs1:x14(0x1111111111111111), rs2:x30(0xeeeeeeeeeeeeeeee)
    TEST_RR_OP(aes64es, x18, x14, x30, 0x8228288228288282, 0x1111111111111111, 0xeeeeeeeeeeeeeeee, x2, 16, x3)

inst_18:
    // Test 18:  Test with dataset: sbox64
    // result rd:x19(0xc95555c95555c9c9), rs1:x13(0x1212121212121212), rs2:x29(0xedededededededed)
    TEST_RR_OP(aes64es, x19, x13, x29, 0xc95555c95555c9c9, 0x1212121212121212, 0xedededededededed, x2, 24, x3)

inst_19:
    // Test 19:  Test with dataset: sbox64
    // result rd:x20(0x7dcece7dcece7d7d), rs1:x12(0x1313131313131313), rs2:x28(0xecececececececec)
    TEST_RR_OP(aes64es, x20, x12, x28, 0x7dcece7dcece7d7d, 0x1313131313131313, 0xecececececececec, x2, 32, x3)

    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with dataset: sbox64
    // result rd:x21(0xfae9e9fae9e9fafa), rs1:x11(0x1414141414141414), rs2:x27(0xebebebebebebebeb)
    TEST_RR_OP(aes64es, x21, x11, x27, 0xfae9e9fae9e9fafa, 0x1414141414141414, 0xebebebebebebebeb, x1, 0, x2)

inst_21:
    // Test 21:  Test with dataset: sbox64
    // result rd:x22(0x5987875987875959), rs1:x10(0x1515151515151515), rs2:x26(0xeaeaeaeaeaeaeaea)
    TEST_RR_OP(aes64es, x22, x10, x26, 0x5987875987875959, 0x1515151515151515, 0xeaeaeaeaeaeaeaea, x1, 8, x2)

inst_22:
    // Test 22:  Test with dataset: sbox64
    // result rd:x23(0x471e1e471e1e4747), rs1:x9(0x1616161616161616), rs2:x25(0xe9e9e9e9e9e9e9e9)
    TEST_RR_OP(aes64es, x23, x9, x25, 0x471e1e471e1e4747, 0x1616161616161616, 0xe9e9e9e9e9e9e9e9, x1, 16, x2)

inst_23:
    // Test 23:  Test with dataset: sbox64
    // result rd:x24(0xf09b9bf09b9bf0f0), rs1:x8(0x1717171717171717), rs2:x24(0xe8e8e8e8e8e8e8e8)
    TEST_RR_OP(aes64es, x24, x8, x24, 0xf09b9bf09b9bf0f0, 0x1717171717171717, 0xe8e8e8e8e8e8e8e8, x1, 24, x2)

inst_24:
    // Test 24:  Test with dataset: sbox64
    // result rd:x25(0xad9494ad9494adad), rs1:x7(0x1818181818181818), rs2:x23(0xe7e7e7e7e7e7e7e7)
    TEST_RR_OP(aes64es, x25, x7, x23, 0xad9494ad9494adad, 0x1818181818181818, 0xe7e7e7e7e7e7e7e7, x1, 32, x2)

    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with dataset: sbox64
    // result rd:x26(0xd48e8ed48e8ed4d4), rs1:x6(0x1919191919191919), rs2:x22(0xe6e6e6e6e6e6e6e6)
    TEST_RR_OP(aes64es, x26, x6, x22, 0xd48e8ed48e8ed4d4, 0x1919191919191919, 0xe6e6e6e6e6e6e6e6, x1, 0, x7)

inst_26:
    // Test 26:  Test with dataset: sbox64
    // result rd:x27(0xa2d9d9a2d9d9a2a2), rs1:x5(0x1a1a1a1a1a1a1a1a), rs2:x21(0xe5e5e5e5e5e5e5e5)
    TEST_RR_OP(aes64es, x27, x5, x21, 0xa2d9d9a2d9d9a2a2, 0x1a1a1a1a1a1a1a1a, 0xe5e5e5e5e5e5e5e5, x1, 8, x7)

inst_27:
    // Test 27:  Test with dataset: sbox64
    // result rd:x28(0xaf6969af6969afaf), rs1:x4(0x1b1b1b1b1b1b1b1b), rs2:x20(0xe4e4e4e4e4e4e4e4)
    TEST_RR_OP(aes64es, x28, x4, x20, 0xaf6969af6969afaf, 0x1b1b1b1b1b1b1b1b, 0xe4e4e4e4e4e4e4e4, x1, 16, x7)

inst_28:
    // Test 28:  Test with dataset: sbox64
    // result rd:x29(0x9c11119c11119c9c), rs1:x3(0x1c1c1c1c1c1c1c1c), rs2:x19(0xe3e3e3e3e3e3e3e3)
    TEST_RR_OP(aes64es, x29, x3, x19, 0x9c11119c11119c9c, 0x1c1c1c1c1c1c1c1c, 0xe3e3e3e3e3e3e3e3, x1, 24, x7)

inst_29:
    // Test 29:  Test with dataset: sbox64
    // result rd:x30(0xa49898a49898a4a4), rs1:x2(0x1d1d1d1d1d1d1d1d), rs2:x18(0xe2e2e2e2e2e2e2e2)
    TEST_RR_OP(aes64es, x30, x2, x18, 0xa49898a49898a4a4, 0x1d1d1d1d1d1d1d1d, 0xe2e2e2e2e2e2e2e2, x1, 32, x7)

    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with dataset: sbox64
    // result rd:x31(0x72f8f872f8f87272), rs1:x1(0x1e1e1e1e1e1e1e1e), rs2:x17(0xe1e1e1e1e1e1e1e1)
    TEST_RR_OP(aes64es, x31, x1, x17, 0x72f8f872f8f87272, 0x1e1e1e1e1e1e1e1e, 0xe1e1e1e1e1e1e1e1, x5, 0, x6)

inst_31:
    // Test 31:  Test with dataset: sbox64
    // result rd:x1(0xc0e1e1c0e1e1c0c0), rs1:x31(0x1f1f1f1f1f1f1f1f), rs2:x16(0xe0e0e0e0e0e0e0e0)
    TEST_RR_OP(aes64es, x1, x31, x16, 0xc0e1e1c0e1e1c0c0, 0x1f1f1f1f1f1f1f1f, 0xe0e0e0e0e0e0e0e0, x5, 8, x6)

inst_32:
    // Test 32:  Test with dataset: sbox64
    // result rd:x2(0xb79e9eb79e9eb7b7), rs1:x30(0x2020202020202020), rs2:x15(0xdfdfdfdfdfdfdfdf)
    TEST_RR_OP(aes64es, x2, x30, x15, 0xb79e9eb79e9eb7b7, 0x2020202020202020, 0xdfdfdfdfdfdfdfdf, x5, 16, x6)

inst_33:
    // Test 33:  Test with dataset: sbox64
    // result rd:x3(0xfd1d1dfd1d1dfdfd), rs1:x29(0x2121212121212121), rs2:x14(0xdededededededede)
    TEST_RR_OP(aes64es, x3, x29, x14, 0xfd1d1dfd1d1dfdfd, 0x2121212121212121, 0xdededededededede, x5, 24, x6)

inst_34:
    // Test 34:  Test with dataset: sbox64
    // result rd:x4(0x93c1c193c1c19393), rs1:x28(0x2222222222222222), rs2:x13(0xdddddddddddddddd)
    TEST_RR_OP(aes64es, x4, x28, x13, 0x93c1c193c1c19393, 0x2222222222222222, 0xdddddddddddddddd, x5, 32, x6)

    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with dataset: sbox64
    // result rd:x5(0x2686862686862626), rs1:x27(0x2323232323232323), rs2:x12(0xdcdcdcdcdcdcdcdc)
    TEST_RR_OP(aes64es, x5, x27, x12, 0x2686862686862626, 0x2323232323232323, 0xdcdcdcdcdcdcdcdc, x1, 0, x2)

inst_36:
    // Test 36:  Test with dataset: sbox64
    // result rd:x6(0x36b9b936b9b93636), rs1:x26(0x2424242424242424), rs2:x11(0xdbdbdbdbdbdbdbdb)
    TEST_RR_OP(aes64es, x6, x26, x11, 0x36b9b936b9b93636, 0x2424242424242424, 0xdbdbdbdbdbdbdbdb, x1, 8, x2)

inst_37:
    // Test 37:  Test with dataset: sbox64
    // result rd:x7(0x3f57573f57573f3f), rs1:x25(0x2525252525252525), rs2:x10(0xdadadadadadadada)
    TEST_RR_OP(aes64es, x7, x25, x10, 0x3f57573f57573f3f, 0x2525252525252525, 0xdadadadadadadada, x1, 16, x2)

inst_38:
    // Test 38:  Test with dataset: sbox64
    // result rd:x8(0xf73535f73535f7f7), rs1:x24(0x2626262626262626), rs2:x9(0xd9d9d9d9d9d9d9d9)
    TEST_RR_OP(aes64es, x8, x24, x9, 0xf73535f73535f7f7, 0x2626262626262626, 0xd9d9d9d9d9d9d9d9, x1, 24, x2)

inst_39:
    // Test 39:  Test with dataset: sbox64
    // result rd:x9(0xcc6161cc6161cccc), rs1:x23(0x2727272727272727), rs2:x8(0xd8d8d8d8d8d8d8d8)
    TEST_RR_OP(aes64es, x9, x23, x8, 0xcc6161cc6161cccc, 0x2727272727272727, 0xd8d8d8d8d8d8d8d8, x1, 32, x2)

    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with dataset: sbox64
    // result rd:x10(0x340e0e340e0e3434), rs1:x22(0x2828282828282828), rs2:x7(0xd7d7d7d7d7d7d7d7)
    TEST_RR_OP(aes64es, x10, x22, x7, 0x340e0e340e0e3434, 0x2828282828282828, 0xd7d7d7d7d7d7d7d7, x1, 0, x2)

inst_41:
    // Test 41:  Test with dataset: sbox64
    // result rd:x11(0xa5f6f6a5f6f6a5a5), rs1:x21(0x2929292929292929), rs2:x6(0xd6d6d6d6d6d6d6d6)
    TEST_RR_OP(aes64es, x11, x21, x6, 0xa5f6f6a5f6f6a5a5, 0x2929292929292929, 0xd6d6d6d6d6d6d6d6, x1, 8, x2)

inst_42:
    // Test 42:  Test with dataset: sbox64
    // result rd:x12(0xe50303e50303e5e5), rs1:x20(0x2a2a2a2a2a2a2a2a), rs2:x5(0xd5d5d5d5d5d5d5d5)
    TEST_RR_OP(aes64es, x12, x20, x5, 0xe50303e50303e5e5, 0x2a2a2a2a2a2a2a2a, 0xd5d5d5d5d5d5d5d5, x1, 16, x2)

inst_43:
    // Test 43:  Test with dataset: sbox64
    // result rd:x13(0xf14848f14848f1f1), rs1:x19(0x2b2b2b2b2b2b2b2b), rs2:x4(0xd4d4d4d4d4d4d4d4)
    TEST_RR_OP(aes64es, x13, x19, x4, 0xf14848f14848f1f1, 0x2b2b2b2b2b2b2b2b, 0xd4d4d4d4d4d4d4d4, x1, 24, x2)

inst_44:
    // Test 44:  Test with dataset: sbox64
    // result rd:x14(0x7166667166667171), rs1:x18(0x2c2c2c2c2c2c2c2c), rs2:x3(0xd3d3d3d3d3d3d3d3)
    TEST_RR_OP(aes64es, x14, x18, x3, 0x7166667166667171, 0x2c2c2c2c2c2c2c2c, 0xd3d3d3d3d3d3d3d3, x1, 32, x2)

    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with dataset: sbox64
    // result rd:x15(0xd8b5b5d8b5b5d8d8), rs1:x17(0x2d2d2d2d2d2d2d2d), rs2:x2(0xd2d2d2d2d2d2d2d2)
    TEST_RR_OP(aes64es, x15, x17, x2, 0xd8b5b5d8b5b5d8d8, 0x2d2d2d2d2d2d2d2d, 0xd2d2d2d2d2d2d2d2, x3, 0, x4)

inst_46:
    // Test 46:  Test with dataset: sbox64
    // result rd:x16(0x313e3e313e3e3131), rs1:x16(0x2e2e2e2e2e2e2e2e), rs2:x1(0xd1d1d1d1d1d1d1d1)
    TEST_RR_OP(aes64es, x16, x16, x1, 0x313e3e313e3e3131, 0x2e2e2e2e2e2e2e2e, 0xd1d1d1d1d1d1d1d1, x3, 8, x4)

inst_47:
    // Test 47:  Test with dataset: sbox64
    // result rd:x17(0x1570701570701515), rs1:x15(0x2f2f2f2f2f2f2f2f), rs2:x31(0xd0d0d0d0d0d0d0d0)
    TEST_RR_OP(aes64es, x17, x15, x31, 0x1570701570701515, 0x2f2f2f2f2f2f2f2f, 0xd0d0d0d0d0d0d0d0, x3, 16, x4)

inst_48:
    // Test 48:  Test with dataset: sbox64
    // result rd:x18(0x048a8a048a8a0404), rs1:x14(0x3030303030303030), rs2:x30(0xcfcfcfcfcfcfcfcf)
    TEST_RR_OP(aes64es, x18, x14, x30, 0x048a8a048a8a0404, 0x3030303030303030, 0xcfcfcfcfcfcfcfcf, x3, 24, x4)

inst_49:
    // Test 49:  Test with dataset: sbox64
    // result rd:x19(0xc78b8bc78b8bc7c7), rs1:x13(0x3131313131313131), rs2:x29(0xcececececececece)
    TEST_RR_OP(aes64es, x19, x13, x29, 0xc78b8bc78b8bc7c7, 0x3131313131313131, 0xcececececececece, x3, 32, x4)

    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with dataset: sbox64
    // result rd:x20(0x23bdbd23bdbd2323), rs1:x12(0x3232323232323232), rs2:x28(0xcdcdcdcdcdcdcdcd)
    TEST_RR_OP(aes64es, x20, x12, x28, 0x23bdbd23bdbd2323, 0x3232323232323232, 0xcdcdcdcdcdcdcdcd, x1, 0, x2)

inst_51:
    // Test 51:  Test with dataset: sbox64
    // result rd:x21(0xc34b4bc34b4bc3c3), rs1:x11(0x3333333333333333), rs2:x27(0xcccccccccccccccc)
    TEST_RR_OP(aes64es, x21, x11, x27, 0xc34b4bc34b4bc3c3, 0x3333333333333333, 0xcccccccccccccccc, x1, 8, x2)

inst_52:
    // Test 52:  Test with dataset: sbox64
    // result rd:x22(0x181f1f181f1f1818), rs1:x10(0x3434343434343434), rs2:x26(0xcbcbcbcbcbcbcbcb)
    TEST_RR_OP(aes64es, x22, x10, x26, 0x181f1f181f1f1818, 0x3434343434343434, 0xcbcbcbcbcbcbcbcb, x1, 16, x2)

inst_53:
    // Test 53:  Test with dataset: sbox64
    // result rd:x23(0x9674749674749696), rs1:x9(0x3535353535353535), rs2:x25(0xcacacacacacacaca)
    TEST_RR_OP(aes64es, x23, x9, x25, 0x9674749674749696, 0x3535353535353535, 0xcacacacacacacaca, x1, 24, x2)

inst_54:
    // Test 54:  Test with dataset: sbox64
    // result rd:x24(0x05dddd05dddd0505), rs1:x8(0x3636363636363636), rs2:x24(0xc9c9c9c9c9c9c9c9)
    TEST_RR_OP(aes64es, x24, x8, x24, 0x05dddd05dddd0505, 0x3636363636363636, 0xc9c9c9c9c9c9c9c9, x1, 32, x2)

    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with dataset: sbox64
    // result rd:x25(0x9ae8e89ae8e89a9a), rs1:x7(0x3737373737373737), rs2:x23(0xc8c8c8c8c8c8c8c8)
    TEST_RR_OP(aes64es, x25, x7, x23, 0x9ae8e89ae8e89a9a, 0x3737373737373737, 0xc8c8c8c8c8c8c8c8, x1, 0, x2)

inst_56:
    // Test 56:  Test with dataset: sbox64
    // result rd:x26(0x07c6c607c6c60707), rs1:x6(0x3838383838383838), rs2:x22(0xc7c7c7c7c7c7c7c7)
    TEST_RR_OP(aes64es, x26, x6, x22, 0x07c6c607c6c60707, 0x3838383838383838, 0xc7c7c7c7c7c7c7c7, x1, 8, x2)

inst_57:
    // Test 57:  Test with dataset: sbox64
    // result rd:x27(0x12b4b412b4b41212), rs1:x5(0x3939393939393939), rs2:x21(0xc6c6c6c6c6c6c6c6)
    TEST_RR_OP(aes64es, x27, x5, x21, 0x12b4b412b4b41212, 0x3939393939393939, 0xc6c6c6c6c6c6c6c6, x1, 16, x2)

inst_58:
    // Test 58:  Test with dataset: sbox64
    // result rd:x28(0x80a6a680a6a68080), rs1:x4(0x3a3a3a3a3a3a3a3a), rs2:x20(0xc5c5c5c5c5c5c5c5)
    TEST_RR_OP(aes64es, x28, x4, x20, 0x80a6a680a6a68080, 0x3a3a3a3a3a3a3a3a, 0xc5c5c5c5c5c5c5c5, x1, 24, x2)

inst_59:
    // Test 59:  Test with dataset: sbox64
    // result rd:x29(0xe21c1ce21c1ce2e2), rs1:x3(0x3b3b3b3b3b3b3b3b), rs2:x19(0xc4c4c4c4c4c4c4c4)
    TEST_RR_OP(aes64es, x29, x3, x19, 0xe21c1ce21c1ce2e2, 0x3b3b3b3b3b3b3b3b, 0xc4c4c4c4c4c4c4c4, x1, 32, x2)

    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with dataset: sbox64
    // result rd:x30(0xeb2e2eeb2e2eebeb), rs1:x2(0x3c3c3c3c3c3c3c3c), rs2:x18(0xc3c3c3c3c3c3c3c3)
    TEST_RR_OP(aes64es, x30, x2, x18, 0xeb2e2eeb2e2eebeb, 0x3c3c3c3c3c3c3c3c, 0xc3c3c3c3c3c3c3c3, x4, 0, x5)

inst_61:
    // Test 61:  Test with dataset: sbox64
    // result rd:x31(0x2725252725252727), rs1:x1(0x3d3d3d3d3d3d3d3d), rs2:x17(0xc2c2c2c2c2c2c2c2)
    TEST_RR_OP(aes64es, x31, x1, x17, 0x2725252725252727, 0x3d3d3d3d3d3d3d3d, 0xc2c2c2c2c2c2c2c2, x4, 8, x5)

inst_62:
    // Test 62:  Test with dataset: sbox64
    // result rd:x1(0xb27878b27878b2b2), rs1:x31(0x3e3e3e3e3e3e3e3e), rs2:x16(0xc1c1c1c1c1c1c1c1)
    TEST_RR_OP(aes64es, x1, x31, x16, 0xb27878b27878b2b2, 0x3e3e3e3e3e3e3e3e, 0xc1c1c1c1c1c1c1c1, x4, 16, x5)

inst_63:
    // Test 63:  Test with dataset: sbox64
    // result rd:x2(0x75baba75baba7575), rs1:x30(0x3f3f3f3f3f3f3f3f), rs2:x15(0xc0c0c0c0c0c0c0c0)
    TEST_RR_OP(aes64es, x2, x30, x15, 0x75baba75baba7575, 0x3f3f3f3f3f3f3f3f, 0xc0c0c0c0c0c0c0c0, x4, 24, x5)

inst_64:
    // Test 64:  Test with dataset: sbox64
    // result rd:x3(0x0908080908080909), rs1:x29(0x4040404040404040), rs2:x14(0xbfbfbfbfbfbfbfbf)
    TEST_RR_OP(aes64es, x3, x29, x14, 0x0908080908080909, 0x4040404040404040, 0xbfbfbfbfbfbfbfbf, x4, 32, x5)

    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with dataset: sbox64
    // result rd:x4(0x83aeae83aeae8383), rs1:x28(0x4141414141414141), rs2:x13(0xbebebebebebebebe)
    TEST_RR_OP(aes64es, x4, x28, x13, 0x83aeae83aeae8383, 0x4141414141414141, 0xbebebebebebebebe, x1, 0, x2)

inst_66:
    // Test 66:  Test with dataset: sbox64
    // result rd:x5(0x2c7a7a2c7a7a2c2c), rs1:x27(0x4242424242424242), rs2:x12(0xbdbdbdbdbdbdbdbd)
    TEST_RR_OP(aes64es, x5, x27, x12, 0x2c7a7a2c7a7a2c2c, 0x4242424242424242, 0xbdbdbdbdbdbdbdbd, x1, 8, x2)

inst_67:
    // Test 67:  Test with dataset: sbox64
    // result rd:x6(0x1a65651a65651a1a), rs1:x26(0x4343434343434343), rs2:x11(0xbcbcbcbcbcbcbcbc)
    TEST_RR_OP(aes64es, x6, x26, x11, 0x1a65651a65651a1a, 0x4343434343434343, 0xbcbcbcbcbcbcbcbc, x1, 16, x2)

inst_68:
    // Test 68:  Test with dataset: sbox64
    // result rd:x7(0x1beaea1beaea1b1b), rs1:x25(0x4444444444444444), rs2:x10(0xbbbbbbbbbbbbbbbb)
    TEST_RR_OP(aes64es, x7, x25, x10, 0x1beaea1beaea1b1b, 0x4444444444444444, 0xbbbbbbbbbbbbbbbb, x1, 24, x2)

inst_69:
    // Test 69:  Test with dataset: sbox64
    // result rd:x8(0x6ef4f46ef4f46e6e), rs1:x24(0x4545454545454545), rs2:x9(0xbabababababababa)
    TEST_RR_OP(aes64es, x8, x24, x9, 0x6ef4f46ef4f46e6e, 0x4545454545454545, 0xbabababababababa, x1, 32, x2)

    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with dataset: sbox64
    // result rd:x9(0x5a56565a56565a5a), rs1:x23(0x4646464646464646), rs2:x8(0xb9b9b9b9b9b9b9b9)
    TEST_RR_OP(aes64es, x9, x23, x8, 0x5a56565a56565a5a, 0x4646464646464646, 0xb9b9b9b9b9b9b9b9, x1, 0, x2)

inst_71:
    // Test 71:  Test with dataset: sbox64
    // result rd:x10(0xa06c6ca06c6ca0a0), rs1:x22(0x4747474747474747), rs2:x7(0xb8b8b8b8b8b8b8b8)
    TEST_RR_OP(aes64es, x10, x22, x7, 0xa06c6ca06c6ca0a0, 0x4747474747474747, 0xb8b8b8b8b8b8b8b8, x1, 8, x2)

inst_72:
    // Test 72:  Test with dataset: sbox64
    // result rd:x11(0x52a9a952a9a95252), rs1:x21(0x4848484848484848), rs2:x6(0xb7b7b7b7b7b7b7b7)
    TEST_RR_OP(aes64es, x11, x21, x6, 0x52a9a952a9a95252, 0x4848484848484848, 0xb7b7b7b7b7b7b7b7, x1, 16, x2)

inst_73:
    // Test 73:  Test with dataset: sbox64
    // result rd:x12(0x3b4e4e3b4e4e3b3b), rs1:x20(0x4949494949494949), rs2:x5(0xb6b6b6b6b6b6b6b6)
    TEST_RR_OP(aes64es, x12, x20, x5, 0x3b4e4e3b4e4e3b3b, 0x4949494949494949, 0xb6b6b6b6b6b6b6b6, x1, 24, x2)

inst_74:
    // Test 74:  Test with dataset: sbox64
    // result rd:x13(0xd6d5d5d6d5d5d6d6), rs1:x19(0x4a4a4a4a4a4a4a4a), rs2:x4(0xb5b5b5b5b5b5b5b5)
    TEST_RR_OP(aes64es, x13, x19, x4, 0xd6d5d5d6d5d5d6d6, 0x4a4a4a4a4a4a4a4a, 0xb5b5b5b5b5b5b5b5, x1, 32, x2)

    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with dataset: sbox64
    // result rd:x14(0xb38d8db38d8db3b3), rs1:x18(0x4b4b4b4b4b4b4b4b), rs2:x3(0xb4b4b4b4b4b4b4b4)
    TEST_RR_OP(aes64es, x14, x18, x3, 0xb38d8db38d8db3b3, 0x4b4b4b4b4b4b4b4b, 0xb4b4b4b4b4b4b4b4, x4, 0, x5)

inst_76:
    // Test 76:  Test with dataset: sbox64
    // result rd:x15(0x296d6d296d6d2929), rs1:x17(0x4c4c4c4c4c4c4c4c), rs2:x2(0xb3b3b3b3b3b3b3b3)
    TEST_RR_OP(aes64es, x15, x17, x2, 0x296d6d296d6d2929, 0x4c4c4c4c4c4c4c4c, 0xb3b3b3b3b3b3b3b3, x4, 8, x5)

inst_77:
    // Test 77:  Test with dataset: sbox64
    // result rd:x16(0xe33737e33737e3e3), rs1:x16(0x4d4d4d4d4d4d4d4d), rs2:x1(0xb2b2b2b2b2b2b2b2)
    TEST_RR_OP(aes64es, x16, x16, x1, 0xe33737e33737e3e3, 0x4d4d4d4d4d4d4d4d, 0xb2b2b2b2b2b2b2b2, x4, 16, x5)

inst_78:
    // Test 78:  Test with dataset: sbox64
    // result rd:x17(0x2fc8c82fc8c82f2f), rs1:x15(0x4e4e4e4e4e4e4e4e), rs2:x31(0xb1b1b1b1b1b1b1b1)
    TEST_RR_OP(aes64es, x17, x15, x31, 0x2fc8c82fc8c82f2f, 0x4e4e4e4e4e4e4e4e, 0xb1b1b1b1b1b1b1b1, x4, 24, x5)

inst_79:
    // Test 79:  Test with dataset: sbox64
    // result rd:x18(0x84e7e784e7e78484), rs1:x14(0x4f4f4f4f4f4f4f4f), rs2:x30(0xb0b0b0b0b0b0b0b0)
    TEST_RR_OP(aes64es, x18, x14, x30, 0x84e7e784e7e78484, 0x4f4f4f4f4f4f4f4f, 0xb0b0b0b0b0b0b0b0, x4, 32, x5)

    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with dataset: sbox64
    // result rd:x19(0x5379795379795353), rs1:x13(0x5050505050505050), rs2:x29(0xafafafafafafafaf)
    TEST_RR_OP(aes64es, x19, x13, x29, 0x5379795379795353, 0x5050505050505050, 0xafafafafafafafaf, x1, 0, x2)

inst_81:
    // Test 81:  Test with dataset: sbox64
    // result rd:x20(0xd1e4e4d1e4e4d1d1), rs1:x12(0x5151515151515151), rs2:x28(0xaeaeaeaeaeaeaeae)
    TEST_RR_OP(aes64es, x20, x12, x28, 0xd1e4e4d1e4e4d1d1, 0x5151515151515151, 0xaeaeaeaeaeaeaeae, x1, 8, x2)

inst_82:
    // Test 82:  Test with dataset: sbox64
    // result rd:x21(0x0095950095950000), rs1:x11(0x5252525252525252), rs2:x27(0xadadadadadadadad)
    TEST_RR_OP(aes64es, x21, x11, x27, 0x0095950095950000, 0x5252525252525252, 0xadadadadadadadad, x1, 16, x2)

inst_83:
    // Test 83:  Test with dataset: sbox64
    // result rd:x22(0xed9191ed9191eded), rs1:x10(0x5353535353535353), rs2:x26(0xacacacacacacacac)
    TEST_RR_OP(aes64es, x22, x10, x26, 0xed9191ed9191eded, 0x5353535353535353, 0xacacacacacacacac, x1, 24, x2)

inst_84:
    // Test 84:  Test with dataset: sbox64
    // result rd:x23(0x2062622062622020), rs1:x9(0x5454545454545454), rs2:x25(0xabababababababab)
    TEST_RR_OP(aes64es, x23, x9, x25, 0x2062622062622020, 0x5454545454545454, 0xabababababababab, x1, 32, x2)

    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with dataset: sbox64
    // result rd:x24(0xfcacacfcacacfcfc), rs1:x8(0x5555555555555555), rs2:x24(0xaaaaaaaaaaaaaaaa)
    TEST_RR_OP(aes64es, x24, x8, x24, 0xfcacacfcacacfcfc, 0x5555555555555555, 0xaaaaaaaaaaaaaaaa, x1, 0, x2)

inst_86:
    // Test 86:  Test with dataset: sbox64
    // result rd:x25(0xb1d3d3b1d3d3b1b1), rs1:x7(0x5656565656565656), rs2:x23(0xa9a9a9a9a9a9a9a9)
    TEST_RR_OP(aes64es, x25, x7, x23, 0xb1d3d3b1d3d3b1b1, 0x5656565656565656, 0xa9a9a9a9a9a9a9a9, x1, 8, x2)

inst_87:
    // Test 87:  Test with dataset: sbox64
    // result rd:x26(0x5bc2c25bc2c25b5b), rs1:x6(0x5757575757575757), rs2:x22(0xa8a8a8a8a8a8a8a8)
    TEST_RR_OP(aes64es, x26, x6, x22, 0x5bc2c25bc2c25b5b, 0x5757575757575757, 0xa8a8a8a8a8a8a8a8, x1, 16, x2)

inst_88:
    // Test 88:  Test with dataset: sbox64
    // result rd:x27(0x6a5c5c6a5c5c6a6a), rs1:x5(0x5858585858585858), rs2:x21(0xa7a7a7a7a7a7a7a7)
    TEST_RR_OP(aes64es, x27, x5, x21, 0x6a5c5c6a5c5c6a6a, 0x5858585858585858, 0xa7a7a7a7a7a7a7a7, x1, 24, x2)

inst_89:
    // Test 89:  Test with dataset: sbox64
    // result rd:x28(0xcb2424cb2424cbcb), rs1:x4(0x5959595959595959), rs2:x20(0xa6a6a6a6a6a6a6a6)
    TEST_RR_OP(aes64es, x28, x4, x20, 0xcb2424cb2424cbcb, 0x5959595959595959, 0xa6a6a6a6a6a6a6a6, x1, 32, x2)

    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with dataset: sbox64
    // result rd:x29(0xbe0606be0606bebe), rs1:x3(0x5a5a5a5a5a5a5a5a), rs2:x19(0xa5a5a5a5a5a5a5a5)
    TEST_RR_OP(aes64es, x29, x3, x19, 0xbe0606be0606bebe, 0x5a5a5a5a5a5a5a5a, 0xa5a5a5a5a5a5a5a5, x4, 0, x5)

inst_91:
    // Test 91:  Test with dataset: sbox64
    // result rd:x30(0x3949493949493939), rs1:x2(0x5b5b5b5b5b5b5b5b), rs2:x18(0xa4a4a4a4a4a4a4a4)
    TEST_RR_OP(aes64es, x30, x2, x18, 0x3949493949493939, 0x5b5b5b5b5b5b5b5b, 0xa4a4a4a4a4a4a4a4, x4, 8, x5)

inst_92:
    // Test 92:  Test with dataset: sbox64
    // result rd:x31(0x4a0a0a4a0a0a4a4a), rs1:x1(0x5c5c5c5c5c5c5c5c), rs2:x17(0xa3a3a3a3a3a3a3a3)
    TEST_RR_OP(aes64es, x31, x1, x17, 0x4a0a0a4a0a0a4a4a, 0x5c5c5c5c5c5c5c5c, 0xa3a3a3a3a3a3a3a3, x4, 16, x5)

inst_93:
    // Test 93:  Test with dataset: sbox64
    // result rd:x1(0x4c3a3a4c3a3a4c4c), rs1:x31(0x5d5d5d5d5d5d5d5d), rs2:x16(0xa2a2a2a2a2a2a2a2)
    TEST_RR_OP(aes64es, x1, x31, x16, 0x4c3a3a4c3a3a4c4c, 0x5d5d5d5d5d5d5d5d, 0xa2a2a2a2a2a2a2a2, x4, 24, x5)

inst_94:
    // Test 94:  Test with dataset: sbox64
    // result rd:x2(0x5832325832325858), rs1:x30(0x5e5e5e5e5e5e5e5e), rs2:x15(0xa1a1a1a1a1a1a1a1)
    TEST_RR_OP(aes64es, x2, x30, x15, 0x5832325832325858, 0x5e5e5e5e5e5e5e5e, 0xa1a1a1a1a1a1a1a1, x4, 32, x5)

    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with dataset: sbox64
    // result rd:x3(0xcfe0e0cfe0e0cfcf), rs1:x29(0x5f5f5f5f5f5f5f5f), rs2:x14(0xa0a0a0a0a0a0a0a0)
    TEST_RR_OP(aes64es, x3, x29, x14, 0xcfe0e0cfe0e0cfcf, 0x5f5f5f5f5f5f5f5f, 0xa0a0a0a0a0a0a0a0, x1, 0, x2)

inst_96:
    // Test 96:  Test with dataset: sbox64
    // result rd:x4(0xd0dbdbd0dbdbd0d0), rs1:x28(0x6060606060606060), rs2:x13(0x9f9f9f9f9f9f9f9f)
    TEST_RR_OP(aes64es, x4, x28, x13, 0xd0dbdbd0dbdbd0d0, 0x6060606060606060, 0x9f9f9f9f9f9f9f9f, x1, 8, x2)

inst_97:
    // Test 97:  Test with dataset: sbox64
    // result rd:x5(0xef0b0bef0b0befef), rs1:x27(0x6161616161616161), rs2:x12(0x9e9e9e9e9e9e9e9e)
    TEST_RR_OP(aes64es, x5, x27, x12, 0xef0b0bef0b0befef, 0x6161616161616161, 0x9e9e9e9e9e9e9e9e, x1, 16, x2)

inst_98:
    // Test 98:  Test with dataset: sbox64
    // result rd:x6(0xaa5e5eaa5e5eaaaa), rs1:x26(0x6262626262626262), rs2:x11(0x9d9d9d9d9d9d9d9d)
    TEST_RR_OP(aes64es, x6, x26, x11, 0xaa5e5eaa5e5eaaaa, 0x6262626262626262, 0x9d9d9d9d9d9d9d9d, x1, 24, x2)

inst_99:
    // Test 99:  Test with dataset: sbox64
    // result rd:x7(0xfbdedefbdedefbfb), rs1:x25(0x6363636363636363), rs2:x10(0x9c9c9c9c9c9c9c9c)
    TEST_RR_OP(aes64es, x7, x25, x10, 0xfbdedefbdedefbfb, 0x6363636363636363, 0x9c9c9c9c9c9c9c9c, x1, 32, x2)

    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with dataset: sbox64
    // result rd:x8(0x4314144314144343), rs1:x24(0x6464646464646464), rs2:x9(0x9b9b9b9b9b9b9b9b)
    TEST_RR_OP(aes64es, x8, x24, x9, 0x4314144314144343, 0x6464646464646464, 0x9b9b9b9b9b9b9b9b, x1, 0, x2)

inst_101:
    // Test 101:  Test with dataset: sbox64
    // result rd:x9(0x4db8b84db8b84d4d), rs1:x23(0x6565656565656565), rs2:x8(0x9a9a9a9a9a9a9a9a)
    TEST_RR_OP(aes64es, x9, x23, x8, 0x4db8b84db8b84d4d, 0x6565656565656565, 0x9a9a9a9a9a9a9a9a, x1, 8, x2)

inst_102:
    // Test 102:  Test with dataset: sbox64
    // result rd:x10(0x33eeee33eeee3333), rs1:x22(0x6666666666666666), rs2:x7(0x9999999999999999)
    TEST_RR_OP(aes64es, x10, x22, x7, 0x33eeee33eeee3333, 0x6666666666666666, 0x9999999999999999, x1, 16, x2)

inst_103:
    // Test 103:  Test with dataset: sbox64
    // result rd:x11(0x8546468546468585), rs1:x21(0x6767676767676767), rs2:x6(0x9898989898989898)
    TEST_RR_OP(aes64es, x11, x21, x6, 0x8546468546468585, 0x6767676767676767, 0x9898989898989898, x1, 24, x2)

inst_104:
    // Test 104:  Test with dataset: sbox64
    // result rd:x12(0x4588884588884545), rs1:x20(0x6868686868686868), rs2:x5(0x9797979797979797)
    TEST_RR_OP(aes64es, x12, x20, x5, 0x4588884588884545, 0x6868686868686868, 0x9797979797979797, x1, 32, x2)

    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with dataset: sbox64
    // result rd:x13(0xf99090f99090f9f9), rs1:x19(0x6969696969696969), rs2:x4(0x9696969696969696)
    TEST_RR_OP(aes64es, x13, x19, x4, 0xf99090f99090f9f9, 0x6969696969696969, 0x9696969696969696, x5, 0, x6)

inst_106:
    // Test 106:  Test with dataset: sbox64
    // result rd:x14(0x022a2a022a2a0202), rs1:x18(0x6a6a6a6a6a6a6a6a), rs2:x3(0x9595959595959595)
    TEST_RR_OP(aes64es, x14, x18, x3, 0x022a2a022a2a0202, 0x6a6a6a6a6a6a6a6a, 0x9595959595959595, x5, 8, x6)

inst_107:
    // Test 107:  Test with dataset: sbox64
    // result rd:x15(0x7f22227f22227f7f), rs1:x17(0x6b6b6b6b6b6b6b6b), rs2:x2(0x9494949494949494)
    TEST_RR_OP(aes64es, x15, x17, x2, 0x7f22227f22227f7f, 0x6b6b6b6b6b6b6b6b, 0x9494949494949494, x5, 16, x6)

inst_108:
    // Test 108:  Test with dataset: sbox64
    // result rd:x16(0x50dcdc50dcdc5050), rs1:x16(0x6c6c6c6c6c6c6c6c), rs2:x1(0x9393939393939393)
    TEST_RR_OP(aes64es, x16, x16, x1, 0x50dcdc50dcdc5050, 0x6c6c6c6c6c6c6c6c, 0x9393939393939393, x5, 24, x6)

inst_109:
    // Test 109:  Test with dataset: sbox64
    // result rd:x17(0x3c4f4f3c4f4f3c3c), rs1:x15(0x6d6d6d6d6d6d6d6d), rs2:x31(0x9292929292929292)
    TEST_RR_OP(aes64es, x17, x15, x31, 0x3c4f4f3c4f4f3c3c, 0x6d6d6d6d6d6d6d6d, 0x9292929292929292, x5, 32, x6)

    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with dataset: sbox64
    // result rd:x18(0x9f81819f81819f9f), rs1:x14(0x6e6e6e6e6e6e6e6e), rs2:x30(0x9191919191919191)
    TEST_RR_OP(aes64es, x18, x14, x30, 0x9f81819f81819f9f, 0x6e6e6e6e6e6e6e6e, 0x9191919191919191, x1, 0, x2)

inst_111:
    // Test 111:  Test with dataset: sbox64
    // result rd:x19(0xa86060a86060a8a8), rs1:x13(0x6f6f6f6f6f6f6f6f), rs2:x29(0x9090909090909090)
    TEST_RR_OP(aes64es, x19, x13, x29, 0xa86060a86060a8a8, 0x6f6f6f6f6f6f6f6f, 0x9090909090909090, x1, 8, x2)

inst_112:
    // Test 112:  Test with dataset: sbox64
    // result rd:x20(0x5173735173735151), rs1:x12(0x7070707070707070), rs2:x28(0x8f8f8f8f8f8f8f8f)
    TEST_RR_OP(aes64es, x20, x12, x28, 0x5173735173735151, 0x7070707070707070, 0x8f8f8f8f8f8f8f8f, x1, 16, x2)

inst_113:
    // Test 113:  Test with dataset: sbox64
    // result rd:x21(0xa31919a31919a3a3), rs1:x11(0x7171717171717171), rs2:x27(0x8e8e8e8e8e8e8e8e)
    TEST_RR_OP(aes64es, x21, x11, x27, 0xa31919a31919a3a3, 0x7171717171717171, 0x8e8e8e8e8e8e8e8e, x1, 24, x2)

inst_114:
    // Test 114:  Test with dataset: sbox64
    // result rd:x22(0x405d5d405d5d4040), rs1:x10(0x7272727272727272), rs2:x26(0x8d8d8d8d8d8d8d8d)
    TEST_RR_OP(aes64es, x22, x10, x26, 0x405d5d405d5d4040, 0x7272727272727272, 0x8d8d8d8d8d8d8d8d, x1, 32, x2)

    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with dataset: sbox64
    // result rd:x23(0x8f64648f64648f8f), rs1:x9(0x7373737373737373), rs2:x25(0x8c8c8c8c8c8c8c8c)
    TEST_RR_OP(aes64es, x23, x9, x25, 0x8f64648f64648f8f, 0x7373737373737373, 0x8c8c8c8c8c8c8c8c, x1, 0, x2)

inst_116:
    // Test 116:  Test with dataset: sbox64
    // result rd:x24(0x923d3d923d3d9292), rs1:x8(0x7474747474747474), rs2:x24(0x8b8b8b8b8b8b8b8b)
    TEST_RR_OP(aes64es, x24, x8, x24, 0x923d3d923d3d9292, 0x7474747474747474, 0x8b8b8b8b8b8b8b8b, x1, 8, x2)

inst_117:
    // Test 117:  Test with dataset: sbox64
    // result rd:x25(0x9d7e7e9d7e7e9d9d), rs1:x7(0x7575757575757575), rs2:x23(0x8a8a8a8a8a8a8a8a)
    TEST_RR_OP(aes64es, x25, x7, x23, 0x9d7e7e9d7e7e9d9d, 0x7575757575757575, 0x8a8a8a8a8a8a8a8a, x1, 16, x2)

inst_118:
    // Test 118:  Test with dataset: sbox64
    // result rd:x26(0x38a7a738a7a73838), rs1:x6(0x7676767676767676), rs2:x22(0x8989898989898989)
    TEST_RR_OP(aes64es, x26, x6, x22, 0x38a7a738a7a73838, 0x7676767676767676, 0x8989898989898989, x1, 24, x2)

inst_119:
    // Test 119:  Test with dataset: sbox64
    // result rd:x27(0xf5c4c4f5c4c4f5f5), rs1:x5(0x7777777777777777), rs2:x21(0x8888888888888888)
    TEST_RR_OP(aes64es, x27, x5, x21, 0xf5c4c4f5c4c4f5f5, 0x7777777777777777, 0x8888888888888888, x1, 32, x2)

    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with dataset: sbox64
    // result rd:x28(0xbc1717bc1717bcbc), rs1:x4(0x7878787878787878), rs2:x20(0x8787878787878787)
    TEST_RR_OP(aes64es, x28, x4, x20, 0xbc1717bc1717bcbc, 0x7878787878787878, 0x8787878787878787, x5, 0, x6)

inst_121:
    // Test 121:  Test with dataset: sbox64
    // result rd:x29(0xb64444b64444b6b6), rs1:x3(0x7979797979797979), rs2:x19(0x8686868686868686)
    TEST_RR_OP(aes64es, x29, x3, x19, 0xb64444b64444b6b6, 0x7979797979797979, 0x8686868686868686, x5, 8, x6)

inst_122:
    // Test 122:  Test with dataset: sbox64
    // result rd:x30(0xda9797da9797dada), rs1:x2(0x7a7a7a7a7a7a7a7a), rs2:x18(0x8585858585858585)
    TEST_RR_OP(aes64es, x30, x2, x18, 0xda9797da9797dada, 0x7a7a7a7a7a7a7a7a, 0x8585858585858585, x5, 16, x6)

inst_123:
    // Test 123:  Test with dataset: sbox64
    // result rd:x31(0x215f5f215f5f2121), rs1:x1(0x7b7b7b7b7b7b7b7b), rs2:x17(0x8484848484848484)
    TEST_RR_OP(aes64es, x31, x1, x17, 0x215f5f215f5f2121, 0x7b7b7b7b7b7b7b7b, 0x8484848484848484, x5, 24, x6)

inst_124:
    // Test 124:  Test with dataset: sbox64
    // result rd:x1(0x10ecec10ecec1010), rs1:x31(0x7c7c7c7c7c7c7c7c), rs2:x16(0x8383838383838383)
    TEST_RR_OP(aes64es, x1, x31, x16, 0x10ecec10ecec1010, 0x7c7c7c7c7c7c7c7c, 0x8383838383838383, x5, 32, x6)

    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with dataset: sbox64
    // result rd:x2(0xff1313ff1313ffff), rs1:x30(0x7d7d7d7d7d7d7d7d), rs2:x15(0x8282828282828282)
    TEST_RR_OP(aes64es, x2, x30, x15, 0xff1313ff1313ffff, 0x7d7d7d7d7d7d7d7d, 0x8282828282828282, x1, 0, x7)

inst_126:
    // Test 126:  Test with dataset: sbox64
    // result rd:x3(0xf30c0cf30c0cf3f3), rs1:x29(0x7e7e7e7e7e7e7e7e), rs2:x14(0x8181818181818181)
    TEST_RR_OP(aes64es, x3, x29, x14, 0xf30c0cf30c0cf3f3, 0x7e7e7e7e7e7e7e7e, 0x8181818181818181, x1, 8, x7)

inst_127:
    // Test 127:  Test with dataset: sbox64
    // result rd:x4(0xd2cdcdd2cdcdd2d2), rs1:x28(0x7f7f7f7f7f7f7f7f), rs2:x13(0x8080808080808080)
    TEST_RR_OP(aes64es, x4, x28, x13, 0xd2cdcdd2cdcdd2d2, 0x7f7f7f7f7f7f7f7f, 0x8080808080808080, x1, 16, x7)

inst_128:
    // Test 128:  Test with dataset: sbox64
    // result rd:x5(0xcdd2d2cdd2d2cdcd), rs1:x27(0x8080808080808080), rs2:x12(0x7f7f7f7f7f7f7f7f)
    TEST_RR_OP(aes64es, x5, x27, x12, 0xcdd2d2cdd2d2cdcd, 0x8080808080808080, 0x7f7f7f7f7f7f7f7f, x1, 24, x7)

inst_129:
    // Test 129:  Test with dataset: sbox64
    // result rd:x6(0x0cf3f30cf3f30c0c), rs1:x26(0x8181818181818181), rs2:x11(0x7e7e7e7e7e7e7e7e)
    TEST_RR_OP(aes64es, x6, x26, x11, 0x0cf3f30cf3f30c0c, 0x8181818181818181, 0x7e7e7e7e7e7e7e7e, x1, 32, x7)

    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with dataset: sbox64
    // result rd:x7(0x13ffff13ffff1313), rs1:x25(0x8282828282828282), rs2:x10(0x7d7d7d7d7d7d7d7d)
    TEST_RR_OP(aes64es, x7, x25, x10, 0x13ffff13ffff1313, 0x8282828282828282, 0x7d7d7d7d7d7d7d7d, x1, 0, x2)

inst_131:
    // Test 131:  Test with dataset: sbox64
    // result rd:x8(0xec1010ec1010ecec), rs1:x24(0x8383838383838383), rs2:x9(0x7c7c7c7c7c7c7c7c)
    TEST_RR_OP(aes64es, x8, x24, x9, 0xec1010ec1010ecec, 0x8383838383838383, 0x7c7c7c7c7c7c7c7c, x1, 8, x2)

inst_132:
    // Test 132:  Test with dataset: sbox64
    // result rd:x9(0x5f21215f21215f5f), rs1:x23(0x8484848484848484), rs2:x8(0x7b7b7b7b7b7b7b7b)
    TEST_RR_OP(aes64es, x9, x23, x8, 0x5f21215f21215f5f, 0x8484848484848484, 0x7b7b7b7b7b7b7b7b, x1, 16, x2)

inst_133:
    // Test 133:  Test with dataset: sbox64
    // result rd:x10(0x97dada97dada9797), rs1:x22(0x8585858585858585), rs2:x7(0x7a7a7a7a7a7a7a7a)
    TEST_RR_OP(aes64es, x10, x22, x7, 0x97dada97dada9797, 0x8585858585858585, 0x7a7a7a7a7a7a7a7a, x1, 24, x2)

inst_134:
    // Test 134:  Test with dataset: sbox64
    // result rd:x11(0x44b6b644b6b64444), rs1:x21(0x8686868686868686), rs2:x6(0x7979797979797979)
    TEST_RR_OP(aes64es, x11, x21, x6, 0x44b6b644b6b64444, 0x8686868686868686, 0x7979797979797979, x1, 32, x2)

    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with dataset: sbox64
    // result rd:x12(0x17bcbc17bcbc1717), rs1:x20(0x8787878787878787), rs2:x5(0x7878787878787878)
    TEST_RR_OP(aes64es, x12, x20, x5, 0x17bcbc17bcbc1717, 0x8787878787878787, 0x7878787878787878, x6, 0, x7)

inst_136:
    // Test 136:  Test with dataset: sbox64
    // result rd:x13(0xc4f5f5c4f5f5c4c4), rs1:x19(0x8888888888888888), rs2:x4(0x7777777777777777)
    TEST_RR_OP(aes64es, x13, x19, x4, 0xc4f5f5c4f5f5c4c4, 0x8888888888888888, 0x7777777777777777, x6, 8, x7)

inst_137:
    // Test 137:  Test with dataset: sbox64
    // result rd:x14(0xa73838a73838a7a7), rs1:x18(0x8989898989898989), rs2:x3(0x7676767676767676)
    TEST_RR_OP(aes64es, x14, x18, x3, 0xa73838a73838a7a7, 0x8989898989898989, 0x7676767676767676, x6, 16, x7)

inst_138:
    // Test 138:  Test with dataset: sbox64
    // result rd:x15(0x7e9d9d7e9d9d7e7e), rs1:x17(0x8a8a8a8a8a8a8a8a), rs2:x2(0x7575757575757575)
    TEST_RR_OP(aes64es, x15, x17, x2, 0x7e9d9d7e9d9d7e7e, 0x8a8a8a8a8a8a8a8a, 0x7575757575757575, x6, 24, x7)

inst_139:
    // Test 139:  Test with dataset: sbox64
    // result rd:x16(0x3d92923d92923d3d), rs1:x16(0x8b8b8b8b8b8b8b8b), rs2:x1(0x7474747474747474)
    TEST_RR_OP(aes64es, x16, x16, x1, 0x3d92923d92923d3d, 0x8b8b8b8b8b8b8b8b, 0x7474747474747474, x6, 32, x7)

    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with dataset: sbox64
    // result rd:x17(0x648f8f648f8f6464), rs1:x15(0x8c8c8c8c8c8c8c8c), rs2:x31(0x7373737373737373)
    TEST_RR_OP(aes64es, x17, x15, x31, 0x648f8f648f8f6464, 0x8c8c8c8c8c8c8c8c, 0x7373737373737373, x1, 0, x2)

inst_141:
    // Test 141:  Test with dataset: sbox64
    // result rd:x18(0x5d40405d40405d5d), rs1:x14(0x8d8d8d8d8d8d8d8d), rs2:x30(0x7272727272727272)
    TEST_RR_OP(aes64es, x18, x14, x30, 0x5d40405d40405d5d, 0x8d8d8d8d8d8d8d8d, 0x7272727272727272, x1, 8, x2)

inst_142:
    // Test 142:  Test with dataset: sbox64
    // result rd:x19(0x19a3a319a3a31919), rs1:x13(0x8e8e8e8e8e8e8e8e), rs2:x29(0x7171717171717171)
    TEST_RR_OP(aes64es, x19, x13, x29, 0x19a3a319a3a31919, 0x8e8e8e8e8e8e8e8e, 0x7171717171717171, x1, 16, x2)

inst_143:
    // Test 143:  Test with dataset: sbox64
    // result rd:x20(0x7351517351517373), rs1:x12(0x8f8f8f8f8f8f8f8f), rs2:x28(0x7070707070707070)
    TEST_RR_OP(aes64es, x20, x12, x28, 0x7351517351517373, 0x8f8f8f8f8f8f8f8f, 0x7070707070707070, x1, 24, x2)

inst_144:
    // Test 144:  Test with dataset: sbox64
    // result rd:x21(0x60a8a860a8a86060), rs1:x11(0x9090909090909090), rs2:x27(0x6f6f6f6f6f6f6f6f)
    TEST_RR_OP(aes64es, x21, x11, x27, 0x60a8a860a8a86060, 0x9090909090909090, 0x6f6f6f6f6f6f6f6f, x1, 32, x2)

    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with dataset: sbox64
    // result rd:x22(0x819f9f819f9f8181), rs1:x10(0x9191919191919191), rs2:x26(0x6e6e6e6e6e6e6e6e)
    TEST_RR_OP(aes64es, x22, x10, x26, 0x819f9f819f9f8181, 0x9191919191919191, 0x6e6e6e6e6e6e6e6e, x1, 0, x2)

inst_146:
    // Test 146:  Test with dataset: sbox64
    // result rd:x23(0x4f3c3c4f3c3c4f4f), rs1:x9(0x9292929292929292), rs2:x25(0x6d6d6d6d6d6d6d6d)
    TEST_RR_OP(aes64es, x23, x9, x25, 0x4f3c3c4f3c3c4f4f, 0x9292929292929292, 0x6d6d6d6d6d6d6d6d, x1, 8, x2)

inst_147:
    // Test 147:  Test with dataset: sbox64
    // result rd:x24(0xdc5050dc5050dcdc), rs1:x8(0x9393939393939393), rs2:x24(0x6c6c6c6c6c6c6c6c)
    TEST_RR_OP(aes64es, x24, x8, x24, 0xdc5050dc5050dcdc, 0x9393939393939393, 0x6c6c6c6c6c6c6c6c, x1, 16, x2)

inst_148:
    // Test 148:  Test with dataset: sbox64
    // result rd:x25(0x227f7f227f7f2222), rs1:x7(0x9494949494949494), rs2:x23(0x6b6b6b6b6b6b6b6b)
    TEST_RR_OP(aes64es, x25, x7, x23, 0x227f7f227f7f2222, 0x9494949494949494, 0x6b6b6b6b6b6b6b6b, x1, 24, x2)

inst_149:
    // Test 149:  Test with dataset: sbox64
    // result rd:x26(0x2a02022a02022a2a), rs1:x6(0x9595959595959595), rs2:x22(0x6a6a6a6a6a6a6a6a)
    TEST_RR_OP(aes64es, x26, x6, x22, 0x2a02022a02022a2a, 0x9595959595959595, 0x6a6a6a6a6a6a6a6a, x1, 32, x2)

    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with dataset: sbox64
    // result rd:x27(0x90f9f990f9f99090), rs1:x5(0x9696969696969696), rs2:x21(0x6969696969696969)
    TEST_RR_OP(aes64es, x27, x5, x21, 0x90f9f990f9f99090, 0x9696969696969696, 0x6969696969696969, x6, 0, x7)

inst_151:
    // Test 151:  Test with dataset: sbox64
    // result rd:x28(0x8845458845458888), rs1:x4(0x9797979797979797), rs2:x20(0x6868686868686868)
    TEST_RR_OP(aes64es, x28, x4, x20, 0x8845458845458888, 0x9797979797979797, 0x6868686868686868, x6, 8, x7)

inst_152:
    // Test 152:  Test with dataset: sbox64
    // result rd:x29(0x4685854685854646), rs1:x3(0x9898989898989898), rs2:x19(0x6767676767676767)
    TEST_RR_OP(aes64es, x29, x3, x19, 0x4685854685854646, 0x9898989898989898, 0x6767676767676767, x6, 16, x7)

inst_153:
    // Test 153:  Test with dataset: sbox64
    // result rd:x30(0xee3333ee3333eeee), rs1:x2(0x9999999999999999), rs2:x18(0x6666666666666666)
    TEST_RR_OP(aes64es, x30, x2, x18, 0xee3333ee3333eeee, 0x9999999999999999, 0x6666666666666666, x6, 24, x7)

inst_154:
    // Test 154:  Test with dataset: sbox64
    // result rd:x31(0xb84d4db84d4db8b8), rs1:x1(0x9a9a9a9a9a9a9a9a), rs2:x17(0x6565656565656565)
    TEST_RR_OP(aes64es, x31, x1, x17, 0xb84d4db84d4db8b8, 0x9a9a9a9a9a9a9a9a, 0x6565656565656565, x6, 32, x7)

    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with dataset: sbox64
    // result rd:x1(0x1443431443431414), rs1:x31(0x9b9b9b9b9b9b9b9b), rs2:x16(0x6464646464646464)
    TEST_RR_OP(aes64es, x1, x31, x16, 0x1443431443431414, 0x9b9b9b9b9b9b9b9b, 0x6464646464646464, x6, 0, x7)

inst_156:
    // Test 156:  Test with dataset: sbox64
    // result rd:x2(0xdefbfbdefbfbdede), rs1:x30(0x9c9c9c9c9c9c9c9c), rs2:x15(0x6363636363636363)
    TEST_RR_OP(aes64es, x2, x30, x15, 0xdefbfbdefbfbdede, 0x9c9c9c9c9c9c9c9c, 0x6363636363636363, x6, 8, x7)

inst_157:
    // Test 157:  Test with dataset: sbox64
    // result rd:x3(0x5eaaaa5eaaaa5e5e), rs1:x29(0x9d9d9d9d9d9d9d9d), rs2:x14(0x6262626262626262)
    TEST_RR_OP(aes64es, x3, x29, x14, 0x5eaaaa5eaaaa5e5e, 0x9d9d9d9d9d9d9d9d, 0x6262626262626262, x6, 16, x7)

inst_158:
    // Test 158:  Test with dataset: sbox64
    // result rd:x4(0x0befef0befef0b0b), rs1:x28(0x9e9e9e9e9e9e9e9e), rs2:x13(0x6161616161616161)
    TEST_RR_OP(aes64es, x4, x28, x13, 0x0befef0befef0b0b, 0x9e9e9e9e9e9e9e9e, 0x6161616161616161, x6, 24, x7)

inst_159:
    // Test 159:  Test with dataset: sbox64
    // result rd:x5(0xdbd0d0dbd0d0dbdb), rs1:x27(0x9f9f9f9f9f9f9f9f), rs2:x12(0x6060606060606060)
    TEST_RR_OP(aes64es, x5, x27, x12, 0xdbd0d0dbd0d0dbdb, 0x9f9f9f9f9f9f9f9f, 0x6060606060606060, x6, 32, x7)

    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with dataset: sbox64
    // result rd:x6(0xe0cfcfe0cfcfe0e0), rs1:x26(0xa0a0a0a0a0a0a0a0), rs2:x11(0x5f5f5f5f5f5f5f5f)
    TEST_RR_OP(aes64es, x6, x26, x11, 0xe0cfcfe0cfcfe0e0, 0xa0a0a0a0a0a0a0a0, 0x5f5f5f5f5f5f5f5f, x1, 0, x2)

inst_161:
    // Test 161:  Test with dataset: sbox64
    // result rd:x7(0x3258583258583232), rs1:x25(0xa1a1a1a1a1a1a1a1), rs2:x10(0x5e5e5e5e5e5e5e5e)
    TEST_RR_OP(aes64es, x7, x25, x10, 0x3258583258583232, 0xa1a1a1a1a1a1a1a1, 0x5e5e5e5e5e5e5e5e, x1, 8, x2)

inst_162:
    // Test 162:  Test with dataset: sbox64
    // result rd:x8(0x3a4c4c3a4c4c3a3a), rs1:x24(0xa2a2a2a2a2a2a2a2), rs2:x9(0x5d5d5d5d5d5d5d5d)
    TEST_RR_OP(aes64es, x8, x24, x9, 0x3a4c4c3a4c4c3a3a, 0xa2a2a2a2a2a2a2a2, 0x5d5d5d5d5d5d5d5d, x1, 16, x2)

inst_163:
    // Test 163:  Test with dataset: sbox64
    // result rd:x9(0x0a4a4a0a4a4a0a0a), rs1:x23(0xa3a3a3a3a3a3a3a3), rs2:x8(0x5c5c5c5c5c5c5c5c)
    TEST_RR_OP(aes64es, x9, x23, x8, 0x0a4a4a0a4a4a0a0a, 0xa3a3a3a3a3a3a3a3, 0x5c5c5c5c5c5c5c5c, x1, 24, x2)

inst_164:
    // Test 164:  Test with dataset: sbox64
    // result rd:x10(0x4939394939394949), rs1:x22(0xa4a4a4a4a4a4a4a4), rs2:x7(0x5b5b5b5b5b5b5b5b)
    TEST_RR_OP(aes64es, x10, x22, x7, 0x4939394939394949, 0xa4a4a4a4a4a4a4a4, 0x5b5b5b5b5b5b5b5b, x1, 32, x2)

    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with dataset: sbox64
    // result rd:x11(0x06bebe06bebe0606), rs1:x21(0xa5a5a5a5a5a5a5a5), rs2:x6(0x5a5a5a5a5a5a5a5a)
    TEST_RR_OP(aes64es, x11, x21, x6, 0x06bebe06bebe0606, 0xa5a5a5a5a5a5a5a5, 0x5a5a5a5a5a5a5a5a, x1, 0, x7)

inst_166:
    // Test 166:  Test with dataset: sbox64
    // result rd:x12(0x24cbcb24cbcb2424), rs1:x20(0xa6a6a6a6a6a6a6a6), rs2:x5(0x5959595959595959)
    TEST_RR_OP(aes64es, x12, x20, x5, 0x24cbcb24cbcb2424, 0xa6a6a6a6a6a6a6a6, 0x5959595959595959, x1, 8, x7)

inst_167:
    // Test 167:  Test with dataset: sbox64
    // result rd:x13(0x5c6a6a5c6a6a5c5c), rs1:x19(0xa7a7a7a7a7a7a7a7), rs2:x4(0x5858585858585858)
    TEST_RR_OP(aes64es, x13, x19, x4, 0x5c6a6a5c6a6a5c5c, 0xa7a7a7a7a7a7a7a7, 0x5858585858585858, x1, 16, x7)

inst_168:
    // Test 168:  Test with dataset: sbox64
    // result rd:x14(0xc25b5bc25b5bc2c2), rs1:x18(0xa8a8a8a8a8a8a8a8), rs2:x3(0x5757575757575757)
    TEST_RR_OP(aes64es, x14, x18, x3, 0xc25b5bc25b5bc2c2, 0xa8a8a8a8a8a8a8a8, 0x5757575757575757, x1, 24, x7)

inst_169:
    // Test 169:  Test with dataset: sbox64
    // result rd:x15(0xd3b1b1d3b1b1d3d3), rs1:x17(0xa9a9a9a9a9a9a9a9), rs2:x2(0x5656565656565656)
    TEST_RR_OP(aes64es, x15, x17, x2, 0xd3b1b1d3b1b1d3d3, 0xa9a9a9a9a9a9a9a9, 0x5656565656565656, x1, 32, x7)

    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with dataset: sbox64
    // result rd:x16(0xacfcfcacfcfcacac), rs1:x16(0xaaaaaaaaaaaaaaaa), rs2:x1(0x5555555555555555)
    TEST_RR_OP(aes64es, x16, x16, x1, 0xacfcfcacfcfcacac, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555, x2, 0, x3)

inst_171:
    // Test 171:  Test with dataset: sbox64
    // result rd:x17(0x6220206220206262), rs1:x15(0xabababababababab), rs2:x31(0x5454545454545454)
    TEST_RR_OP(aes64es, x17, x15, x31, 0x6220206220206262, 0xabababababababab, 0x5454545454545454, x2, 8, x3)

inst_172:
    // Test 172:  Test with dataset: sbox64
    // result rd:x18(0x91eded91eded9191), rs1:x14(0xacacacacacacacac), rs2:x30(0x5353535353535353)
    TEST_RR_OP(aes64es, x18, x14, x30, 0x91eded91eded9191, 0xacacacacacacacac, 0x5353535353535353, x2, 16, x3)

inst_173:
    // Test 173:  Test with dataset: sbox64
    // result rd:x19(0x9500009500009595), rs1:x13(0xadadadadadadadad), rs2:x29(0x5252525252525252)
    TEST_RR_OP(aes64es, x19, x13, x29, 0x9500009500009595, 0xadadadadadadadad, 0x5252525252525252, x2, 24, x3)

inst_174:
    // Test 174:  Test with dataset: sbox64
    // result rd:x20(0xe4d1d1e4d1d1e4e4), rs1:x12(0xaeaeaeaeaeaeaeae), rs2:x28(0x5151515151515151)
    TEST_RR_OP(aes64es, x20, x12, x28, 0xe4d1d1e4d1d1e4e4, 0xaeaeaeaeaeaeaeae, 0x5151515151515151, x2, 32, x3)

    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with dataset: sbox64
    // result rd:x21(0x7953537953537979), rs1:x11(0xafafafafafafafaf), rs2:x27(0x5050505050505050)
    TEST_RR_OP(aes64es, x21, x11, x27, 0x7953537953537979, 0xafafafafafafafaf, 0x5050505050505050, x1, 0, x2)

inst_176:
    // Test 176:  Test with dataset: sbox64
    // result rd:x22(0xe78484e78484e7e7), rs1:x10(0xb0b0b0b0b0b0b0b0), rs2:x26(0x4f4f4f4f4f4f4f4f)
    TEST_RR_OP(aes64es, x22, x10, x26, 0xe78484e78484e7e7, 0xb0b0b0b0b0b0b0b0, 0x4f4f4f4f4f4f4f4f, x1, 8, x2)

inst_177:
    // Test 177:  Test with dataset: sbox64
    // result rd:x23(0xc82f2fc82f2fc8c8), rs1:x9(0xb1b1b1b1b1b1b1b1), rs2:x25(0x4e4e4e4e4e4e4e4e)
    TEST_RR_OP(aes64es, x23, x9, x25, 0xc82f2fc82f2fc8c8, 0xb1b1b1b1b1b1b1b1, 0x4e4e4e4e4e4e4e4e, x1, 16, x2)

inst_178:
    // Test 178:  Test with dataset: sbox64
    // result rd:x24(0x37e3e337e3e33737), rs1:x8(0xb2b2b2b2b2b2b2b2), rs2:x24(0x4d4d4d4d4d4d4d4d)
    TEST_RR_OP(aes64es, x24, x8, x24, 0x37e3e337e3e33737, 0xb2b2b2b2b2b2b2b2, 0x4d4d4d4d4d4d4d4d, x1, 24, x2)

inst_179:
    // Test 179:  Test with dataset: sbox64
    // result rd:x25(0x6d29296d29296d6d), rs1:x7(0xb3b3b3b3b3b3b3b3), rs2:x23(0x4c4c4c4c4c4c4c4c)
    TEST_RR_OP(aes64es, x25, x7, x23, 0x6d29296d29296d6d, 0xb3b3b3b3b3b3b3b3, 0x4c4c4c4c4c4c4c4c, x1, 32, x2)

    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with dataset: sbox64
    // result rd:x26(0x8db3b38db3b38d8d), rs1:x6(0xb4b4b4b4b4b4b4b4), rs2:x22(0x4b4b4b4b4b4b4b4b)
    TEST_RR_OP(aes64es, x26, x6, x22, 0x8db3b38db3b38d8d, 0xb4b4b4b4b4b4b4b4, 0x4b4b4b4b4b4b4b4b, x1, 0, x7)

inst_181:
    // Test 181:  Test with dataset: sbox64
    // result rd:x27(0xd5d6d6d5d6d6d5d5), rs1:x5(0xb5b5b5b5b5b5b5b5), rs2:x21(0x4a4a4a4a4a4a4a4a)
    TEST_RR_OP(aes64es, x27, x5, x21, 0xd5d6d6d5d6d6d5d5, 0xb5b5b5b5b5b5b5b5, 0x4a4a4a4a4a4a4a4a, x1, 8, x7)

inst_182:
    // Test 182:  Test with dataset: sbox64
    // result rd:x28(0x4e3b3b4e3b3b4e4e), rs1:x4(0xb6b6b6b6b6b6b6b6), rs2:x20(0x4949494949494949)
    TEST_RR_OP(aes64es, x28, x4, x20, 0x4e3b3b4e3b3b4e4e, 0xb6b6b6b6b6b6b6b6, 0x4949494949494949, x1, 16, x7)

inst_183:
    // Test 183:  Test with dataset: sbox64
    // result rd:x29(0xa95252a95252a9a9), rs1:x3(0xb7b7b7b7b7b7b7b7), rs2:x19(0x4848484848484848)
    TEST_RR_OP(aes64es, x29, x3, x19, 0xa95252a95252a9a9, 0xb7b7b7b7b7b7b7b7, 0x4848484848484848, x1, 24, x7)

inst_184:
    // Test 184:  Test with dataset: sbox64
    // result rd:x30(0x6ca0a06ca0a06c6c), rs1:x2(0xb8b8b8b8b8b8b8b8), rs2:x18(0x4747474747474747)
    TEST_RR_OP(aes64es, x30, x2, x18, 0x6ca0a06ca0a06c6c, 0xb8b8b8b8b8b8b8b8, 0x4747474747474747, x1, 32, x7)

    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with dataset: sbox64
    // result rd:x31(0x565a5a565a5a5656), rs1:x1(0xb9b9b9b9b9b9b9b9), rs2:x17(0x4646464646464646)
    TEST_RR_OP(aes64es, x31, x1, x17, 0x565a5a565a5a5656, 0xb9b9b9b9b9b9b9b9, 0x4646464646464646, x5, 0, x6)

inst_186:
    // Test 186:  Test with dataset: sbox64
    // result rd:x1(0xf46e6ef46e6ef4f4), rs1:x31(0xbabababababababa), rs2:x16(0x4545454545454545)
    TEST_RR_OP(aes64es, x1, x31, x16, 0xf46e6ef46e6ef4f4, 0xbabababababababa, 0x4545454545454545, x5, 8, x6)

inst_187:
    // Test 187:  Test with dataset: sbox64
    // result rd:x2(0xea1b1bea1b1beaea), rs1:x30(0xbbbbbbbbbbbbbbbb), rs2:x15(0x4444444444444444)
    TEST_RR_OP(aes64es, x2, x30, x15, 0xea1b1bea1b1beaea, 0xbbbbbbbbbbbbbbbb, 0x4444444444444444, x5, 16, x6)

inst_188:
    // Test 188:  Test with dataset: sbox64
    // result rd:x3(0x651a1a651a1a6565), rs1:x29(0xbcbcbcbcbcbcbcbc), rs2:x14(0x4343434343434343)
    TEST_RR_OP(aes64es, x3, x29, x14, 0x651a1a651a1a6565, 0xbcbcbcbcbcbcbcbc, 0x4343434343434343, x5, 24, x6)

inst_189:
    // Test 189:  Test with dataset: sbox64
    // result rd:x4(0x7a2c2c7a2c2c7a7a), rs1:x28(0xbdbdbdbdbdbdbdbd), rs2:x13(0x4242424242424242)
    TEST_RR_OP(aes64es, x4, x28, x13, 0x7a2c2c7a2c2c7a7a, 0xbdbdbdbdbdbdbdbd, 0x4242424242424242, x5, 32, x6)

    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with dataset: sbox64
    // result rd:x5(0xae8383ae8383aeae), rs1:x27(0xbebebebebebebebe), rs2:x12(0x4141414141414141)
    TEST_RR_OP(aes64es, x5, x27, x12, 0xae8383ae8383aeae, 0xbebebebebebebebe, 0x4141414141414141, x1, 0, x2)

inst_191:
    // Test 191:  Test with dataset: sbox64
    // result rd:x6(0x0809090809090808), rs1:x26(0xbfbfbfbfbfbfbfbf), rs2:x11(0x4040404040404040)
    TEST_RR_OP(aes64es, x6, x26, x11, 0x0809090809090808, 0xbfbfbfbfbfbfbfbf, 0x4040404040404040, x1, 8, x2)

inst_192:
    // Test 192:  Test with dataset: sbox64
    // result rd:x7(0xba7575ba7575baba), rs1:x25(0xc0c0c0c0c0c0c0c0), rs2:x10(0x3f3f3f3f3f3f3f3f)
    TEST_RR_OP(aes64es, x7, x25, x10, 0xba7575ba7575baba, 0xc0c0c0c0c0c0c0c0, 0x3f3f3f3f3f3f3f3f, x1, 16, x2)

inst_193:
    // Test 193:  Test with dataset: sbox64
    // result rd:x8(0x78b2b278b2b27878), rs1:x24(0xc1c1c1c1c1c1c1c1), rs2:x9(0x3e3e3e3e3e3e3e3e)
    TEST_RR_OP(aes64es, x8, x24, x9, 0x78b2b278b2b27878, 0xc1c1c1c1c1c1c1c1, 0x3e3e3e3e3e3e3e3e, x1, 24, x2)

inst_194:
    // Test 194:  Test with dataset: sbox64
    // result rd:x9(0x2527272527272525), rs1:x23(0xc2c2c2c2c2c2c2c2), rs2:x8(0x3d3d3d3d3d3d3d3d)
    TEST_RR_OP(aes64es, x9, x23, x8, 0x2527272527272525, 0xc2c2c2c2c2c2c2c2, 0x3d3d3d3d3d3d3d3d, x1, 32, x2)

    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with dataset: sbox64
    // result rd:x10(0x2eebeb2eebeb2e2e), rs1:x22(0xc3c3c3c3c3c3c3c3), rs2:x7(0x3c3c3c3c3c3c3c3c)
    TEST_RR_OP(aes64es, x10, x22, x7, 0x2eebeb2eebeb2e2e, 0xc3c3c3c3c3c3c3c3, 0x3c3c3c3c3c3c3c3c, x1, 0, x2)

inst_196:
    // Test 196:  Test with dataset: sbox64
    // result rd:x11(0x1ce2e21ce2e21c1c), rs1:x21(0xc4c4c4c4c4c4c4c4), rs2:x6(0x3b3b3b3b3b3b3b3b)
    TEST_RR_OP(aes64es, x11, x21, x6, 0x1ce2e21ce2e21c1c, 0xc4c4c4c4c4c4c4c4, 0x3b3b3b3b3b3b3b3b, x1, 8, x2)

inst_197:
    // Test 197:  Test with dataset: sbox64
    // result rd:x12(0xa68080a68080a6a6), rs1:x20(0xc5c5c5c5c5c5c5c5), rs2:x5(0x3a3a3a3a3a3a3a3a)
    TEST_RR_OP(aes64es, x12, x20, x5, 0xa68080a68080a6a6, 0xc5c5c5c5c5c5c5c5, 0x3a3a3a3a3a3a3a3a, x1, 16, x2)

inst_198:
    // Test 198:  Test with dataset: sbox64
    // result rd:x13(0xb41212b41212b4b4), rs1:x19(0xc6c6c6c6c6c6c6c6), rs2:x4(0x3939393939393939)
    TEST_RR_OP(aes64es, x13, x19, x4, 0xb41212b41212b4b4, 0xc6c6c6c6c6c6c6c6, 0x3939393939393939, x1, 24, x2)

inst_199:
    // Test 199:  Test with dataset: sbox64
    // result rd:x14(0xc60707c60707c6c6), rs1:x18(0xc7c7c7c7c7c7c7c7), rs2:x3(0x3838383838383838)
    TEST_RR_OP(aes64es, x14, x18, x3, 0xc60707c60707c6c6, 0xc7c7c7c7c7c7c7c7, 0x3838383838383838, x1, 32, x2)

    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with dataset: sbox64
    // result rd:x15(0xe89a9ae89a9ae8e8), rs1:x17(0xc8c8c8c8c8c8c8c8), rs2:x2(0x3737373737373737)
    TEST_RR_OP(aes64es, x15, x17, x2, 0xe89a9ae89a9ae8e8, 0xc8c8c8c8c8c8c8c8, 0x3737373737373737, x3, 0, x4)

inst_201:
    // Test 201:  Test with dataset: sbox64
    // result rd:x16(0xdd0505dd0505dddd), rs1:x16(0xc9c9c9c9c9c9c9c9), rs2:x1(0x3636363636363636)
    TEST_RR_OP(aes64es, x16, x16, x1, 0xdd0505dd0505dddd, 0xc9c9c9c9c9c9c9c9, 0x3636363636363636, x3, 8, x4)

inst_202:
    // Test 202:  Test with dataset: sbox64
    // result rd:x17(0x7496967496967474), rs1:x15(0xcacacacacacacaca), rs2:x31(0x3535353535353535)
    TEST_RR_OP(aes64es, x17, x15, x31, 0x7496967496967474, 0xcacacacacacacaca, 0x3535353535353535, x3, 16, x4)

inst_203:
    // Test 203:  Test with dataset: sbox64
    // result rd:x18(0x1f18181f18181f1f), rs1:x14(0xcbcbcbcbcbcbcbcb), rs2:x30(0x3434343434343434)
    TEST_RR_OP(aes64es, x18, x14, x30, 0x1f18181f18181f1f, 0xcbcbcbcbcbcbcbcb, 0x3434343434343434, x3, 24, x4)

inst_204:
    // Test 204:  Test with dataset: sbox64
    // result rd:x19(0x4bc3c34bc3c34b4b), rs1:x13(0xcccccccccccccccc), rs2:x29(0x3333333333333333)
    TEST_RR_OP(aes64es, x19, x13, x29, 0x4bc3c34bc3c34b4b, 0xcccccccccccccccc, 0x3333333333333333, x3, 32, x4)

    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with dataset: sbox64
    // result rd:x20(0xbd2323bd2323bdbd), rs1:x12(0xcdcdcdcdcdcdcdcd), rs2:x28(0x3232323232323232)
    TEST_RR_OP(aes64es, x20, x12, x28, 0xbd2323bd2323bdbd, 0xcdcdcdcdcdcdcdcd, 0x3232323232323232, x1, 0, x2)

inst_206:
    // Test 206:  Test with dataset: sbox64
    // result rd:x21(0x8bc7c78bc7c78b8b), rs1:x11(0xcececececececece), rs2:x27(0x3131313131313131)
    TEST_RR_OP(aes64es, x21, x11, x27, 0x8bc7c78bc7c78b8b, 0xcececececececece, 0x3131313131313131, x1, 8, x2)

inst_207:
    // Test 207:  Test with dataset: sbox64
    // result rd:x22(0x8a04048a04048a8a), rs1:x10(0xcfcfcfcfcfcfcfcf), rs2:x26(0x3030303030303030)
    TEST_RR_OP(aes64es, x22, x10, x26, 0x8a04048a04048a8a, 0xcfcfcfcfcfcfcfcf, 0x3030303030303030, x1, 16, x2)

inst_208:
    // Test 208:  Test with dataset: sbox64
    // result rd:x23(0x7015157015157070), rs1:x9(0xd0d0d0d0d0d0d0d0), rs2:x25(0x2f2f2f2f2f2f2f2f)
    TEST_RR_OP(aes64es, x23, x9, x25, 0x7015157015157070, 0xd0d0d0d0d0d0d0d0, 0x2f2f2f2f2f2f2f2f, x1, 24, x2)

inst_209:
    // Test 209:  Test with dataset: sbox64
    // result rd:x24(0x3e31313e31313e3e), rs1:x8(0xd1d1d1d1d1d1d1d1), rs2:x24(0x2e2e2e2e2e2e2e2e)
    TEST_RR_OP(aes64es, x24, x8, x24, 0x3e31313e31313e3e, 0xd1d1d1d1d1d1d1d1, 0x2e2e2e2e2e2e2e2e, x1, 32, x2)

    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with dataset: sbox64
    // result rd:x25(0xb5d8d8b5d8d8b5b5), rs1:x7(0xd2d2d2d2d2d2d2d2), rs2:x23(0x2d2d2d2d2d2d2d2d)
    TEST_RR_OP(aes64es, x25, x7, x23, 0xb5d8d8b5d8d8b5b5, 0xd2d2d2d2d2d2d2d2, 0x2d2d2d2d2d2d2d2d, x1, 0, x2)

inst_211:
    // Test 211:  Test with dataset: sbox64
    // result rd:x26(0x6671716671716666), rs1:x6(0xd3d3d3d3d3d3d3d3), rs2:x22(0x2c2c2c2c2c2c2c2c)
    TEST_RR_OP(aes64es, x26, x6, x22, 0x6671716671716666, 0xd3d3d3d3d3d3d3d3, 0x2c2c2c2c2c2c2c2c, x1, 8, x2)

inst_212:
    // Test 212:  Test with dataset: sbox64
    // result rd:x27(0x48f1f148f1f14848), rs1:x5(0xd4d4d4d4d4d4d4d4), rs2:x21(0x2b2b2b2b2b2b2b2b)
    TEST_RR_OP(aes64es, x27, x5, x21, 0x48f1f148f1f14848, 0xd4d4d4d4d4d4d4d4, 0x2b2b2b2b2b2b2b2b, x1, 16, x2)

inst_213:
    // Test 213:  Test with dataset: sbox64
    // result rd:x28(0x03e5e503e5e50303), rs1:x4(0xd5d5d5d5d5d5d5d5), rs2:x20(0x2a2a2a2a2a2a2a2a)
    TEST_RR_OP(aes64es, x28, x4, x20, 0x03e5e503e5e50303, 0xd5d5d5d5d5d5d5d5, 0x2a2a2a2a2a2a2a2a, x1, 24, x2)

inst_214:
    // Test 214:  Test with dataset: sbox64
    // result rd:x29(0xf6a5a5f6a5a5f6f6), rs1:x3(0xd6d6d6d6d6d6d6d6), rs2:x19(0x2929292929292929)
    TEST_RR_OP(aes64es, x29, x3, x19, 0xf6a5a5f6a5a5f6f6, 0xd6d6d6d6d6d6d6d6, 0x2929292929292929, x1, 32, x2)

    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with dataset: sbox64
    // result rd:x30(0x0e34340e34340e0e), rs1:x2(0xd7d7d7d7d7d7d7d7), rs2:x18(0x2828282828282828)
    TEST_RR_OP(aes64es, x30, x2, x18, 0x0e34340e34340e0e, 0xd7d7d7d7d7d7d7d7, 0x2828282828282828, x4, 0, x5)

inst_216:
    // Test 216:  Test with dataset: sbox64
    // result rd:x31(0x61cccc61cccc6161), rs1:x1(0xd8d8d8d8d8d8d8d8), rs2:x17(0x2727272727272727)
    TEST_RR_OP(aes64es, x31, x1, x17, 0x61cccc61cccc6161, 0xd8d8d8d8d8d8d8d8, 0x2727272727272727, x4, 8, x5)

inst_217:
    // Test 217:  Test with dataset: sbox64
    // result rd:x1(0x35f7f735f7f73535), rs1:x31(0xd9d9d9d9d9d9d9d9), rs2:x16(0x2626262626262626)
    TEST_RR_OP(aes64es, x1, x31, x16, 0x35f7f735f7f73535, 0xd9d9d9d9d9d9d9d9, 0x2626262626262626, x4, 16, x5)

inst_218:
    // Test 218:  Test with dataset: sbox64
    // result rd:x2(0x573f3f573f3f5757), rs1:x30(0xdadadadadadadada), rs2:x15(0x2525252525252525)
    TEST_RR_OP(aes64es, x2, x30, x15, 0x573f3f573f3f5757, 0xdadadadadadadada, 0x2525252525252525, x4, 24, x5)

inst_219:
    // Test 219:  Test with dataset: sbox64
    // result rd:x3(0xb93636b93636b9b9), rs1:x29(0xdbdbdbdbdbdbdbdb), rs2:x14(0x2424242424242424)
    TEST_RR_OP(aes64es, x3, x29, x14, 0xb93636b93636b9b9, 0xdbdbdbdbdbdbdbdb, 0x2424242424242424, x4, 32, x5)

    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with dataset: sbox64
    // result rd:x4(0x8626268626268686), rs1:x28(0xdcdcdcdcdcdcdcdc), rs2:x13(0x2323232323232323)
    TEST_RR_OP(aes64es, x4, x28, x13, 0x8626268626268686, 0xdcdcdcdcdcdcdcdc, 0x2323232323232323, x1, 0, x2)

inst_221:
    // Test 221:  Test with dataset: sbox64
    // result rd:x5(0xc19393c19393c1c1), rs1:x27(0xdddddddddddddddd), rs2:x12(0x2222222222222222)
    TEST_RR_OP(aes64es, x5, x27, x12, 0xc19393c19393c1c1, 0xdddddddddddddddd, 0x2222222222222222, x1, 8, x2)

inst_222:
    // Test 222:  Test with dataset: sbox64
    // result rd:x6(0x1dfdfd1dfdfd1d1d), rs1:x26(0xdededededededede), rs2:x11(0x2121212121212121)
    TEST_RR_OP(aes64es, x6, x26, x11, 0x1dfdfd1dfdfd1d1d, 0xdededededededede, 0x2121212121212121, x1, 16, x2)

inst_223:
    // Test 223:  Test with dataset: sbox64
    // result rd:x7(0x9eb7b79eb7b79e9e), rs1:x25(0xdfdfdfdfdfdfdfdf), rs2:x10(0x2020202020202020)
    TEST_RR_OP(aes64es, x7, x25, x10, 0x9eb7b79eb7b79e9e, 0xdfdfdfdfdfdfdfdf, 0x2020202020202020, x1, 24, x2)

inst_224:
    // Test 224:  Test with dataset: sbox64
    // result rd:x8(0xe1c0c0e1c0c0e1e1), rs1:x24(0xe0e0e0e0e0e0e0e0), rs2:x9(0x1f1f1f1f1f1f1f1f)
    TEST_RR_OP(aes64es, x8, x24, x9, 0xe1c0c0e1c0c0e1e1, 0xe0e0e0e0e0e0e0e0, 0x1f1f1f1f1f1f1f1f, x1, 32, x2)

    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with dataset: sbox64
    // result rd:x9(0xf87272f87272f8f8), rs1:x23(0xe1e1e1e1e1e1e1e1), rs2:x8(0x1e1e1e1e1e1e1e1e)
    TEST_RR_OP(aes64es, x9, x23, x8, 0xf87272f87272f8f8, 0xe1e1e1e1e1e1e1e1, 0x1e1e1e1e1e1e1e1e, x1, 0, x2)

inst_226:
    // Test 226:  Test with dataset: sbox64
    // result rd:x10(0x98a4a498a4a49898), rs1:x22(0xe2e2e2e2e2e2e2e2), rs2:x7(0x1d1d1d1d1d1d1d1d)
    TEST_RR_OP(aes64es, x10, x22, x7, 0x98a4a498a4a49898, 0xe2e2e2e2e2e2e2e2, 0x1d1d1d1d1d1d1d1d, x1, 8, x2)

inst_227:
    // Test 227:  Test with dataset: sbox64
    // result rd:x11(0x119c9c119c9c1111), rs1:x21(0xe3e3e3e3e3e3e3e3), rs2:x6(0x1c1c1c1c1c1c1c1c)
    TEST_RR_OP(aes64es, x11, x21, x6, 0x119c9c119c9c1111, 0xe3e3e3e3e3e3e3e3, 0x1c1c1c1c1c1c1c1c, x1, 16, x2)

inst_228:
    // Test 228:  Test with dataset: sbox64
    // result rd:x12(0x69afaf69afaf6969), rs1:x20(0xe4e4e4e4e4e4e4e4), rs2:x5(0x1b1b1b1b1b1b1b1b)
    TEST_RR_OP(aes64es, x12, x20, x5, 0x69afaf69afaf6969, 0xe4e4e4e4e4e4e4e4, 0x1b1b1b1b1b1b1b1b, x1, 24, x2)

inst_229:
    // Test 229:  Test with dataset: sbox64
    // result rd:x13(0xd9a2a2d9a2a2d9d9), rs1:x19(0xe5e5e5e5e5e5e5e5), rs2:x4(0x1a1a1a1a1a1a1a1a)
    TEST_RR_OP(aes64es, x13, x19, x4, 0xd9a2a2d9a2a2d9d9, 0xe5e5e5e5e5e5e5e5, 0x1a1a1a1a1a1a1a1a, x1, 32, x2)

    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with dataset: sbox64
    // result rd:x14(0x8ed4d48ed4d48e8e), rs1:x18(0xe6e6e6e6e6e6e6e6), rs2:x3(0x1919191919191919)
    TEST_RR_OP(aes64es, x14, x18, x3, 0x8ed4d48ed4d48e8e, 0xe6e6e6e6e6e6e6e6, 0x1919191919191919, x4, 0, x5)

inst_231:
    // Test 231:  Test with dataset: sbox64
    // result rd:x15(0x94adad94adad9494), rs1:x17(0xe7e7e7e7e7e7e7e7), rs2:x2(0x1818181818181818)
    TEST_RR_OP(aes64es, x15, x17, x2, 0x94adad94adad9494, 0xe7e7e7e7e7e7e7e7, 0x1818181818181818, x4, 8, x5)

inst_232:
    // Test 232:  Test with dataset: sbox64
    // result rd:x16(0x9bf0f09bf0f09b9b), rs1:x16(0xe8e8e8e8e8e8e8e8), rs2:x1(0x1717171717171717)
    TEST_RR_OP(aes64es, x16, x16, x1, 0x9bf0f09bf0f09b9b, 0xe8e8e8e8e8e8e8e8, 0x1717171717171717, x4, 16, x5)

inst_233:
    // Test 233:  Test with dataset: sbox64
    // result rd:x17(0x1e47471e47471e1e), rs1:x15(0xe9e9e9e9e9e9e9e9), rs2:x31(0x1616161616161616)
    TEST_RR_OP(aes64es, x17, x15, x31, 0x1e47471e47471e1e, 0xe9e9e9e9e9e9e9e9, 0x1616161616161616, x4, 24, x5)

inst_234:
    // Test 234:  Test with dataset: sbox64
    // result rd:x18(0x8759598759598787), rs1:x14(0xeaeaeaeaeaeaeaea), rs2:x30(0x1515151515151515)
    TEST_RR_OP(aes64es, x18, x14, x30, 0x8759598759598787, 0xeaeaeaeaeaeaeaea, 0x1515151515151515, x4, 32, x5)

    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with dataset: sbox64
    // result rd:x19(0xe9fafae9fafae9e9), rs1:x13(0xebebebebebebebeb), rs2:x29(0x1414141414141414)
    TEST_RR_OP(aes64es, x19, x13, x29, 0xe9fafae9fafae9e9, 0xebebebebebebebeb, 0x1414141414141414, x1, 0, x2)

inst_236:
    // Test 236:  Test with dataset: sbox64
    // result rd:x20(0xce7d7dce7d7dcece), rs1:x12(0xecececececececec), rs2:x28(0x1313131313131313)
    TEST_RR_OP(aes64es, x20, x12, x28, 0xce7d7dce7d7dcece, 0xecececececececec, 0x1313131313131313, x1, 8, x2)

inst_237:
    // Test 237:  Test with dataset: sbox64
    // result rd:x21(0x55c9c955c9c95555), rs1:x11(0xedededededededed), rs2:x27(0x1212121212121212)
    TEST_RR_OP(aes64es, x21, x11, x27, 0x55c9c955c9c95555, 0xedededededededed, 0x1212121212121212, x1, 16, x2)

inst_238:
    // Test 238:  Test with dataset: sbox64
    // result rd:x22(0x2882822882822828), rs1:x10(0xeeeeeeeeeeeeeeee), rs2:x26(0x1111111111111111)
    TEST_RR_OP(aes64es, x22, x10, x26, 0x2882822882822828, 0xeeeeeeeeeeeeeeee, 0x1111111111111111, x1, 24, x2)

inst_239:
    // Test 239:  Test with dataset: sbox64
    // result rd:x23(0xdfcacadfcacadfdf), rs1:x9(0xefefefefefefefef), rs2:x25(0x1010101010101010)
    TEST_RR_OP(aes64es, x23, x9, x25, 0xdfcacadfcacadfdf, 0xefefefefefefefef, 0x1010101010101010, x1, 32, x2)

    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with dataset: sbox64
    // result rd:x24(0x8c76768c76768c8c), rs1:x8(0xf0f0f0f0f0f0f0f0), rs2:x24(0x0f0f0f0f0f0f0f0f)
    TEST_RR_OP(aes64es, x24, x8, x24, 0x8c76768c76768c8c, 0xf0f0f0f0f0f0f0f0, 0xf0f0f0f0f0f0f0f, x1, 0, x2)

inst_241:
    // Test 241:  Test with dataset: sbox64
    // result rd:x25(0xa1ababa1ababa1a1), rs1:x7(0xf1f1f1f1f1f1f1f1), rs2:x23(0x0e0e0e0e0e0e0e0e)
    TEST_RR_OP(aes64es, x25, x7, x23, 0xa1ababa1ababa1a1, 0xf1f1f1f1f1f1f1f1, 0xe0e0e0e0e0e0e0e, x1, 8, x2)

inst_242:
    // Test 242:  Test with dataset: sbox64
    // result rd:x26(0x89d7d789d7d78989), rs1:x6(0xf2f2f2f2f2f2f2f2), rs2:x22(0x0d0d0d0d0d0d0d0d)
    TEST_RR_OP(aes64es, x26, x6, x22, 0x89d7d789d7d78989, 0xf2f2f2f2f2f2f2f2, 0xd0d0d0d0d0d0d0d, x1, 16, x2)

inst_243:
    // Test 243:  Test with dataset: sbox64
    // result rd:x27(0x0dfefe0dfefe0d0d), rs1:x5(0xf3f3f3f3f3f3f3f3), rs2:x21(0x0c0c0c0c0c0c0c0c)
    TEST_RR_OP(aes64es, x27, x5, x21, 0x0dfefe0dfefe0d0d, 0xf3f3f3f3f3f3f3f3, 0xc0c0c0c0c0c0c0c, x1, 24, x2)

inst_244:
    // Test 244:  Test with dataset: sbox64
    // result rd:x28(0xbf2b2bbf2b2bbfbf), rs1:x4(0xf4f4f4f4f4f4f4f4), rs2:x20(0x0b0b0b0b0b0b0b0b)
    TEST_RR_OP(aes64es, x28, x4, x20, 0xbf2b2bbf2b2bbfbf, 0xf4f4f4f4f4f4f4f4, 0xb0b0b0b0b0b0b0b, x1, 32, x2)

    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with dataset: sbox64
    // result rd:x29(0xe66767e66767e6e6), rs1:x3(0xf5f5f5f5f5f5f5f5), rs2:x19(0x0a0a0a0a0a0a0a0a)
    TEST_RR_OP(aes64es, x29, x3, x19, 0xe66767e66767e6e6, 0xf5f5f5f5f5f5f5f5, 0xa0a0a0a0a0a0a0a, x4, 0, x5)

inst_246:
    // Test 246:  Test with dataset: sbox64
    // result rd:x30(0x4201014201014242), rs1:x2(0xf6f6f6f6f6f6f6f6), rs2:x18(0x0909090909090909)
    TEST_RR_OP(aes64es, x30, x2, x18, 0x4201014201014242, 0xf6f6f6f6f6f6f6f6, 0x909090909090909, x4, 8, x5)

inst_247:
    // Test 247:  Test with dataset: sbox64
    // result rd:x31(0x6830306830306868), rs1:x1(0xf7f7f7f7f7f7f7f7), rs2:x17(0x0808080808080808)
    TEST_RR_OP(aes64es, x31, x1, x17, 0x6830306830306868, 0xf7f7f7f7f7f7f7f7, 0x808080808080808, x4, 16, x5)

inst_248:
    // Test 248:  Test with dataset: sbox64
    // result rd:x1(0x41c5c541c5c54141), rs1:x31(0xf8f8f8f8f8f8f8f8), rs2:x16(0x0707070707070707)
    TEST_RR_OP(aes64es, x1, x31, x16, 0x41c5c541c5c54141, 0xf8f8f8f8f8f8f8f8, 0x707070707070707, x4, 24, x5)

inst_249:
    // Test 249:  Test with dataset: sbox64
    // result rd:x2(0x996f6f996f6f9999), rs1:x30(0xf9f9f9f9f9f9f9f9), rs2:x15(0x0606060606060606)
    TEST_RR_OP(aes64es, x2, x30, x15, 0x996f6f996f6f9999, 0xf9f9f9f9f9f9f9f9, 0x606060606060606, x4, 32, x5)

    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with dataset: sbox64
    // result rd:x3(0x2d6b6b2d6b6b2d2d), rs1:x29(0xfafafafafafafafa), rs2:x14(0x0505050505050505)
    TEST_RR_OP(aes64es, x3, x29, x14, 0x2d6b6b2d6b6b2d2d, 0xfafafafafafafafa, 0x505050505050505, x1, 0, x2)

inst_251:
    // Test 251:  Test with dataset: sbox64
    // result rd:x4(0x0ff2f20ff2f20f0f), rs1:x28(0xfbfbfbfbfbfbfbfb), rs2:x13(0x0404040404040404)
    TEST_RR_OP(aes64es, x4, x28, x13, 0x0ff2f20ff2f20f0f, 0xfbfbfbfbfbfbfbfb, 0x404040404040404, x1, 8, x2)

inst_252:
    // Test 252:  Test with dataset: sbox64
    // result rd:x5(0xb07b7bb07b7bb0b0), rs1:x27(0xfcfcfcfcfcfcfcfc), rs2:x12(0x0303030303030303)
    TEST_RR_OP(aes64es, x5, x27, x12, 0xb07b7bb07b7bb0b0, 0xfcfcfcfcfcfcfcfc, 0x303030303030303, x1, 16, x2)

inst_253:
    // Test 253:  Test with dataset: sbox64
    // result rd:x6(0x5477775477775454), rs1:x26(0xfdfdfdfdfdfdfdfd), rs2:x11(0x0202020202020202)
    TEST_RR_OP(aes64es, x6, x26, x11, 0x5477775477775454, 0xfdfdfdfdfdfdfdfd, 0x202020202020202, x1, 24, x2)

inst_254:
    // Test 254:  Test with dataset: sbox64
    // result rd:x7(0xbb7c7cbb7c7cbbbb), rs1:x25(0xfefefefefefefefe), rs2:x10(0x0101010101010101)
    TEST_RR_OP(aes64es, x7, x25, x10, 0xbb7c7cbb7c7cbbbb, 0xfefefefefefefefe, 0x101010101010101, x1, 32, x2)

    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64es)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64es)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with dataset: sbox64
    // result rd:x8(0x1663631663631616), rs1:x24(0xffffffffffffffff), rs2:x9(0x0000000000000000)
    TEST_RR_OP(aes64es, x8, x24, x9, 0x1663631663631616, 0xffffffffffffffff, 0x0, x1, 0, x2)
	
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

