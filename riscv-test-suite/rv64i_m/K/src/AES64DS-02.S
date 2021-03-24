// RISC-V Architectural Validation Test AES64DS-02
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
// Description: Testing instruction 'aes64ds'.
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

    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with dataset: sbox64
    // result rd:x1(0x7d7d5252527d7d52), rs1:x31(0x0000000000000000), rs2:x16(0xffffffffffffffff)
    TEST_RR_OP(aes64ds, x1, x31, x16, 0x7d7d5252527d7d52, 0x0, 0xffffffffffffffff, x6, 0, x7)

inst_1:
    // Test 1:  Test with dataset: sbox64
    // result rd:x2(0x0c0c0909090c0c09), rs1:x30(0x0101010101010101), rs2:x15(0xfefefefefefefefe)
    TEST_RR_OP(aes64ds, x2, x30, x15, 0x0c0c0909090c0c09, 0x101010101010101, 0xfefefefefefefefe, x6, 8, x7)

inst_2:
    // Test 2:  Test with dataset: sbox64
    // result rd:x3(0x21216a6a6a21216a), rs1:x29(0x0202020202020202), rs2:x14(0xfdfdfdfdfdfdfdfd)
    TEST_RR_OP(aes64ds, x3, x29, x14, 0x21216a6a6a21216a, 0x202020202020202, 0xfdfdfdfdfdfdfdfd, x6, 16, x7)

inst_3:
    // Test 3:  Test with dataset: sbox64
    // result rd:x4(0x5555d5d5d55555d5), rs1:x28(0x0303030303030303), rs2:x13(0xfcfcfcfcfcfcfcfc)
    TEST_RR_OP(aes64ds, x4, x28, x13, 0x5555d5d5d55555d5, 0x303030303030303, 0xfcfcfcfcfcfcfcfc, x6, 24, x7)

inst_4:
    // Test 4:  Test with dataset: sbox64
    // result rd:x5(0x6363303030636330), rs1:x27(0x0404040404040404), rs2:x12(0xfbfbfbfbfbfbfbfb)
    TEST_RR_OP(aes64ds, x5, x27, x12, 0x6363303030636330, 0x404040404040404, 0xfbfbfbfbfbfbfbfb, x6, 32, x7)

    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with dataset: sbox64
    // result rd:x6(0x1414363636141436), rs1:x26(0x0505050505050505), rs2:x11(0xfafafafafafafafa)
    TEST_RR_OP(aes64ds, x6, x26, x11, 0x1414363636141436, 0x505050505050505, 0xfafafafafafafafa, x1, 0, x2)

inst_6:
    // Test 6:  Test with dataset: sbox64
    // result rd:x7(0x6969a5a5a56969a5), rs1:x25(0x0606060606060606), rs2:x10(0xf9f9f9f9f9f9f9f9)
    TEST_RR_OP(aes64ds, x7, x25, x10, 0x6969a5a5a56969a5, 0x606060606060606, 0xf9f9f9f9f9f9f9f9, x1, 8, x2)

inst_7:
    // Test 7:  Test with dataset: sbox64
    // result rd:x8(0xe1e1383838e1e138), rs1:x24(0x0707070707070707), rs2:x9(0xf8f8f8f8f8f8f8f8)
    TEST_RR_OP(aes64ds, x8, x24, x9, 0xe1e1383838e1e138, 0x707070707070707, 0xf8f8f8f8f8f8f8f8, x1, 16, x2)

inst_8:
    // Test 8:  Test with dataset: sbox64
    // result rd:x9(0x2626bfbfbf2626bf), rs1:x23(0x0808080808080808), rs2:x8(0xf7f7f7f7f7f7f7f7)
    TEST_RR_OP(aes64ds, x9, x23, x8, 0x2626bfbfbf2626bf, 0x808080808080808, 0xf7f7f7f7f7f7f7f7, x1, 24, x2)

inst_9:
    // Test 9:  Test with dataset: sbox64
    // result rd:x10(0xd6d6404040d6d640), rs1:x22(0x0909090909090909), rs2:x7(0xf6f6f6f6f6f6f6f6)
    TEST_RR_OP(aes64ds, x10, x22, x7, 0xd6d6404040d6d640, 0x909090909090909, 0xf6f6f6f6f6f6f6f6, x1, 32, x2)

    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with dataset: sbox64
    // result rd:x11(0x7777a3a3a37777a3), rs1:x21(0x0a0a0a0a0a0a0a0a), rs2:x6(0xf5f5f5f5f5f5f5f5)
    TEST_RR_OP(aes64ds, x11, x21, x6, 0x7777a3a3a37777a3, 0xa0a0a0a0a0a0a0a, 0xf5f5f5f5f5f5f5f5, x1, 0, x7)

inst_11:
    // Test 11:  Test with dataset: sbox64
    // result rd:x12(0xbaba9e9e9ebaba9e), rs1:x20(0x0b0b0b0b0b0b0b0b), rs2:x5(0xf4f4f4f4f4f4f4f4)
    TEST_RR_OP(aes64ds, x12, x20, x5, 0xbaba9e9e9ebaba9e, 0xb0b0b0b0b0b0b0b, 0xf4f4f4f4f4f4f4f4, x1, 8, x7)

inst_12:
    // Test 12:  Test with dataset: sbox64
    // result rd:x13(0x7e7e8181817e7e81), rs1:x19(0x0c0c0c0c0c0c0c0c), rs2:x4(0xf3f3f3f3f3f3f3f3)
    TEST_RR_OP(aes64ds, x13, x19, x4, 0x7e7e8181817e7e81, 0xc0c0c0c0c0c0c0c, 0xf3f3f3f3f3f3f3f3, x1, 16, x7)

inst_13:
    // Test 13:  Test with dataset: sbox64
    // result rd:x14(0x0404f3f3f30404f3), rs1:x18(0x0d0d0d0d0d0d0d0d), rs2:x3(0xf2f2f2f2f2f2f2f2)
    TEST_RR_OP(aes64ds, x14, x18, x3, 0x0404f3f3f30404f3, 0xd0d0d0d0d0d0d0d, 0xf2f2f2f2f2f2f2f2, x1, 24, x7)

inst_14:
    // Test 14:  Test with dataset: sbox64
    // result rd:x15(0x2b2bd7d7d72b2bd7), rs1:x17(0x0e0e0e0e0e0e0e0e), rs2:x2(0xf1f1f1f1f1f1f1f1)
    TEST_RR_OP(aes64ds, x15, x17, x2, 0x2b2bd7d7d72b2bd7, 0xe0e0e0e0e0e0e0e, 0xf1f1f1f1f1f1f1f1, x1, 32, x7)

    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with dataset: sbox64
    // result rd:x16(0x1717fbfbfb1717fb), rs1:x16(0x0f0f0f0f0f0f0f0f), rs2:x1(0xf0f0f0f0f0f0f0f0)
    TEST_RR_OP(aes64ds, x16, x16, x1, 0x1717fbfbfb1717fb, 0xf0f0f0f0f0f0f0f, 0xf0f0f0f0f0f0f0f0, x2, 0, x3)

inst_16:
    // Test 16:  Test with dataset: sbox64
    // result rd:x17(0x61617c7c7c61617c), rs1:x15(0x1010101010101010), rs2:x31(0xefefefefefefefef)
    TEST_RR_OP(aes64ds, x17, x15, x31, 0x61617c7c7c61617c, 0x1010101010101010, 0xefefefefefefefef, x2, 8, x3)

inst_17:
    // Test 17:  Test with dataset: sbox64
    // result rd:x18(0x9999e3e3e39999e3), rs1:x14(0x1111111111111111), rs2:x30(0xeeeeeeeeeeeeeeee)
    TEST_RR_OP(aes64ds, x18, x14, x30, 0x9999e3e3e39999e3, 0x1111111111111111, 0xeeeeeeeeeeeeeeee, x2, 16, x3)

inst_18:
    // Test 18:  Test with dataset: sbox64
    // result rd:x19(0x5353393939535339), rs1:x13(0x1212121212121212), rs2:x29(0xedededededededed)
    TEST_RR_OP(aes64ds, x19, x13, x29, 0x5353393939535339, 0x1212121212121212, 0xedededededededed, x2, 24, x3)

inst_19:
    // Test 19:  Test with dataset: sbox64
    // result rd:x20(0x8383828282838382), rs1:x12(0x1313131313131313), rs2:x28(0xecececececececec)
    TEST_RR_OP(aes64ds, x20, x12, x28, 0x8383828282838382, 0x1313131313131313, 0xecececececececec, x2, 32, x3)

    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with dataset: sbox64
    // result rd:x21(0x3c3c9b9b9b3c3c9b), rs1:x11(0x1414141414141414), rs2:x27(0xebebebebebebebeb)
    TEST_RR_OP(aes64ds, x21, x11, x27, 0x3c3c9b9b9b3c3c9b, 0x1414141414141414, 0xebebebebebebebeb, x1, 0, x2)

inst_21:
    // Test 21:  Test with dataset: sbox64
    // result rd:x22(0xbbbb2f2f2fbbbb2f), rs1:x10(0x1515151515151515), rs2:x26(0xeaeaeaeaeaeaeaea)
    TEST_RR_OP(aes64ds, x22, x10, x26, 0xbbbb2f2f2fbbbb2f, 0x1515151515151515, 0xeaeaeaeaeaeaeaea, x1, 8, x2)

inst_22:
    // Test 22:  Test with dataset: sbox64
    // result rd:x23(0xebebffffffebebff), rs1:x9(0x1616161616161616), rs2:x25(0xe9e9e9e9e9e9e9e9)
    TEST_RR_OP(aes64ds, x23, x9, x25, 0xebebffffffebebff, 0x1616161616161616, 0xe9e9e9e9e9e9e9e9, x1, 16, x2)

inst_23:
    // Test 23:  Test with dataset: sbox64
    // result rd:x24(0xc8c8878787c8c887), rs1:x8(0x1717171717171717), rs2:x24(0xe8e8e8e8e8e8e8e8)
    TEST_RR_OP(aes64ds, x24, x8, x24, 0xc8c8878787c8c887, 0x1717171717171717, 0xe8e8e8e8e8e8e8e8, x1, 24, x2)

inst_24:
    // Test 24:  Test with dataset: sbox64
    // result rd:x25(0xb0b0343434b0b034), rs1:x7(0x1818181818181818), rs2:x23(0xe7e7e7e7e7e7e7e7)
    TEST_RR_OP(aes64ds, x25, x7, x23, 0xb0b0343434b0b034, 0x1818181818181818, 0xe7e7e7e7e7e7e7e7, x1, 32, x2)

    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with dataset: sbox64
    // result rd:x26(0xf5f58e8e8ef5f58e), rs1:x6(0x1919191919191919), rs2:x22(0xe6e6e6e6e6e6e6e6)
    TEST_RR_OP(aes64ds, x26, x6, x22, 0xf5f58e8e8ef5f58e, 0x1919191919191919, 0xe6e6e6e6e6e6e6e6, x1, 0, x7)

inst_26:
    // Test 26:  Test with dataset: sbox64
    // result rd:x27(0x2a2a4343432a2a43), rs1:x5(0x1a1a1a1a1a1a1a1a), rs2:x21(0xe5e5e5e5e5e5e5e5)
    TEST_RR_OP(aes64ds, x27, x5, x21, 0x2a2a4343432a2a43, 0x1a1a1a1a1a1a1a1a, 0xe5e5e5e5e5e5e5e5, x1, 8, x7)

inst_27:
    // Test 27:  Test with dataset: sbox64
    // result rd:x28(0xaeae444444aeae44), rs1:x4(0x1b1b1b1b1b1b1b1b), rs2:x20(0xe4e4e4e4e4e4e4e4)
    TEST_RR_OP(aes64ds, x28, x4, x20, 0xaeae444444aeae44, 0x1b1b1b1b1b1b1b1b, 0xe4e4e4e4e4e4e4e4, x1, 16, x7)

inst_28:
    // Test 28:  Test with dataset: sbox64
    // result rd:x29(0x4d4dc4c4c44d4dc4), rs1:x3(0x1c1c1c1c1c1c1c1c), rs2:x19(0xe3e3e3e3e3e3e3e3)
    TEST_RR_OP(aes64ds, x29, x3, x19, 0x4d4dc4c4c44d4dc4, 0x1c1c1c1c1c1c1c1c, 0xe3e3e3e3e3e3e3e3, x1, 24, x7)

inst_29:
    // Test 29:  Test with dataset: sbox64
    // result rd:x30(0x3b3bdedede3b3bde), rs1:x2(0x1d1d1d1d1d1d1d1d), rs2:x18(0xe2e2e2e2e2e2e2e2)
    TEST_RR_OP(aes64ds, x30, x2, x18, 0x3b3bdedede3b3bde, 0x1d1d1d1d1d1d1d1d, 0xe2e2e2e2e2e2e2e2, x1, 32, x7)

    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with dataset: sbox64
    // result rd:x31(0xe0e0e9e9e9e0e0e9), rs1:x1(0x1e1e1e1e1e1e1e1e), rs2:x17(0xe1e1e1e1e1e1e1e1)
    TEST_RR_OP(aes64ds, x31, x1, x17, 0xe0e0e9e9e9e0e0e9, 0x1e1e1e1e1e1e1e1e, 0xe1e1e1e1e1e1e1e1, x5, 0, x6)

inst_31:
    // Test 31:  Test with dataset: sbox64
    // result rd:x1(0xa0a0cbcbcba0a0cb), rs1:x31(0x1f1f1f1f1f1f1f1f), rs2:x16(0xe0e0e0e0e0e0e0e0)
    TEST_RR_OP(aes64ds, x1, x31, x16, 0xa0a0cbcbcba0a0cb, 0x1f1f1f1f1f1f1f1f, 0xe0e0e0e0e0e0e0e0, x5, 8, x6)

inst_32:
    // Test 32:  Test with dataset: sbox64
    // result rd:x2(0xefef545454efef54), rs1:x30(0x2020202020202020), rs2:x15(0xdfdfdfdfdfdfdfdf)
    TEST_RR_OP(aes64ds, x2, x30, x15, 0xefef545454efef54, 0x2020202020202020, 0xdfdfdfdfdfdfdfdf, x5, 16, x6)

inst_33:
    // Test 33:  Test with dataset: sbox64
    // result rd:x3(0x9c9c7b7b7b9c9c7b), rs1:x29(0x2121212121212121), rs2:x14(0xdededededededede)
    TEST_RR_OP(aes64ds, x3, x29, x14, 0x9c9c7b7b7b9c9c7b, 0x2121212121212121, 0xdededededededede, x5, 24, x6)

inst_34:
    // Test 34:  Test with dataset: sbox64
    // result rd:x4(0xc9c9949494c9c994), rs1:x28(0x2222222222222222), rs2:x13(0xdddddddddddddddd)
    TEST_RR_OP(aes64ds, x4, x28, x13, 0xc9c9949494c9c994, 0x2222222222222222, 0xdddddddddddddddd, x5, 32, x6)

    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with dataset: sbox64
    // result rd:x5(0x9393323232939332), rs1:x27(0x2323232323232323), rs2:x12(0xdcdcdcdcdcdcdcdc)
    TEST_RR_OP(aes64ds, x5, x27, x12, 0x9393323232939332, 0x2323232323232323, 0xdcdcdcdcdcdcdcdc, x1, 0, x2)

inst_36:
    // Test 36:  Test with dataset: sbox64
    // result rd:x6(0x9f9fa6a6a69f9fa6), rs1:x26(0x2424242424242424), rs2:x11(0xdbdbdbdbdbdbdbdb)
    TEST_RR_OP(aes64ds, x6, x26, x11, 0x9f9fa6a6a69f9fa6, 0x2424242424242424, 0xdbdbdbdbdbdbdbdb, x1, 8, x2)

inst_37:
    // Test 37:  Test with dataset: sbox64
    // result rd:x7(0x7a7ac2c2c27a7ac2), rs1:x25(0x2525252525252525), rs2:x10(0xdadadadadadadada)
    TEST_RR_OP(aes64ds, x7, x25, x10, 0x7a7ac2c2c27a7ac2, 0x2525252525252525, 0xdadadadadadadada, x1, 16, x2)

inst_38:
    // Test 38:  Test with dataset: sbox64
    // result rd:x8(0xe5e5232323e5e523), rs1:x24(0x2626262626262626), rs2:x9(0xd9d9d9d9d9d9d9d9)
    TEST_RR_OP(aes64ds, x8, x24, x9, 0xe5e5232323e5e523, 0x2626262626262626, 0xd9d9d9d9d9d9d9d9, x1, 24, x2)

inst_39:
    // Test 39:  Test with dataset: sbox64
    // result rd:x9(0x2d2d3d3d3d2d2d3d), rs1:x23(0x2727272727272727), rs2:x8(0xd8d8d8d8d8d8d8d8)
    TEST_RR_OP(aes64ds, x9, x23, x8, 0x2d2d3d3d3d2d2d3d, 0x2727272727272727, 0xd8d8d8d8d8d8d8d8, x1, 32, x2)

    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with dataset: sbox64
    // result rd:x10(0x0d0deeeeee0d0dee), rs1:x22(0x2828282828282828), rs2:x7(0xd7d7d7d7d7d7d7d7)
    TEST_RR_OP(aes64ds, x10, x22, x7, 0x0d0deeeeee0d0dee, 0x2828282828282828, 0xd7d7d7d7d7d7d7d7, x1, 0, x2)

inst_41:
    // Test 41:  Test with dataset: sbox64
    // result rd:x11(0x4a4a4c4c4c4a4a4c), rs1:x21(0x2929292929292929), rs2:x6(0xd6d6d6d6d6d6d6d6)
    TEST_RR_OP(aes64ds, x11, x21, x6, 0x4a4a4c4c4c4a4a4c, 0x2929292929292929, 0xd6d6d6d6d6d6d6d6, x1, 8, x2)

inst_42:
    // Test 42:  Test with dataset: sbox64
    // result rd:x12(0xb5b5959595b5b595), rs1:x20(0x2a2a2a2a2a2a2a2a), rs2:x5(0xd5d5d5d5d5d5d5d5)
    TEST_RR_OP(aes64ds, x12, x20, x5, 0xb5b5959595b5b595, 0x2a2a2a2a2a2a2a2a, 0xd5d5d5d5d5d5d5d5, x1, 16, x2)

inst_43:
    // Test 43:  Test with dataset: sbox64
    // result rd:x13(0x19190b0b0b19190b), rs1:x19(0x2b2b2b2b2b2b2b2b), rs2:x4(0xd4d4d4d4d4d4d4d4)
    TEST_RR_OP(aes64ds, x13, x19, x4, 0x19190b0b0b19190b, 0x2b2b2b2b2b2b2b2b, 0xd4d4d4d4d4d4d4d4, x1, 24, x2)

inst_44:
    // Test 44:  Test with dataset: sbox64
    // result rd:x14(0xa9a9424242a9a942), rs1:x18(0x2c2c2c2c2c2c2c2c), rs2:x3(0xd3d3d3d3d3d3d3d3)
    TEST_RR_OP(aes64ds, x14, x18, x3, 0xa9a9424242a9a942, 0x2c2c2c2c2c2c2c2c, 0xd3d3d3d3d3d3d3d3, x1, 32, x2)

    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with dataset: sbox64
    // result rd:x15(0x7f7ffafafa7f7ffa), rs1:x17(0x2d2d2d2d2d2d2d2d), rs2:x2(0xd2d2d2d2d2d2d2d2)
    TEST_RR_OP(aes64ds, x15, x17, x2, 0x7f7ffafafa7f7ffa, 0x2d2d2d2d2d2d2d2d, 0xd2d2d2d2d2d2d2d2, x3, 0, x4)

inst_46:
    // Test 46:  Test with dataset: sbox64
    // result rd:x16(0x5151c3c3c35151c3), rs1:x16(0x2e2e2e2e2e2e2e2e), rs2:x1(0xd1d1d1d1d1d1d1d1)
    TEST_RR_OP(aes64ds, x16, x16, x1, 0x5151c3c3c35151c3, 0x2e2e2e2e2e2e2e2e, 0xd1d1d1d1d1d1d1d1, x3, 8, x4)

inst_47:
    // Test 47:  Test with dataset: sbox64
    // result rd:x17(0x60604e4e4e60604e), rs1:x15(0x2f2f2f2f2f2f2f2f), rs2:x31(0xd0d0d0d0d0d0d0d0)
    TEST_RR_OP(aes64ds, x17, x15, x31, 0x60604e4e4e60604e, 0x2f2f2f2f2f2f2f2f, 0xd0d0d0d0d0d0d0d0, x3, 16, x4)

inst_48:
    // Test 48:  Test with dataset: sbox64
    // result rd:x18(0x5f5f0808085f5f08), rs1:x14(0x3030303030303030), rs2:x30(0xcfcfcfcfcfcfcfcf)
    TEST_RR_OP(aes64ds, x18, x14, x30, 0x5f5f0808085f5f08, 0x3030303030303030, 0xcfcfcfcfcfcfcfcf, x3, 24, x4)

inst_49:
    // Test 49:  Test with dataset: sbox64
    // result rd:x19(0xecec2e2e2eecec2e), rs1:x13(0x3131313131313131), rs2:x29(0xcececececececece)
    TEST_RR_OP(aes64ds, x19, x13, x29, 0xecec2e2e2eecec2e, 0x3131313131313131, 0xcececececececece, x3, 32, x4)

    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with dataset: sbox64
    // result rd:x20(0x8080a1a1a18080a1), rs1:x12(0x3232323232323232), rs2:x28(0xcdcdcdcdcdcdcdcd)
    TEST_RR_OP(aes64ds, x20, x12, x28, 0x8080a1a1a18080a1, 0x3232323232323232, 0xcdcdcdcdcdcdcdcd, x1, 0, x2)

inst_51:
    // Test 51:  Test with dataset: sbox64
    // result rd:x21(0x2727666666272766), rs1:x11(0x3333333333333333), rs2:x27(0xcccccccccccccccc)
    TEST_RR_OP(aes64ds, x21, x11, x27, 0x2727666666272766, 0x3333333333333333, 0xcccccccccccccccc, x1, 8, x2)

inst_52:
    // Test 52:  Test with dataset: sbox64
    // result rd:x22(0x5959282828595928), rs1:x10(0x3434343434343434), rs2:x26(0xcbcbcbcbcbcbcbcb)
    TEST_RR_OP(aes64ds, x22, x10, x26, 0x5959282828595928, 0x3434343434343434, 0xcbcbcbcbcbcbcbcb, x1, 16, x2)

inst_53:
    // Test 53:  Test with dataset: sbox64
    // result rd:x23(0x1010d9d9d91010d9), rs1:x9(0x3535353535353535), rs2:x25(0xcacacacacacacaca)
    TEST_RR_OP(aes64ds, x23, x9, x25, 0x1010d9d9d91010d9, 0x3535353535353535, 0xcacacacacacacaca, x1, 24, x2)

inst_54:
    // Test 54:  Test with dataset: sbox64
    // result rd:x24(0x1212242424121224), rs1:x8(0x3636363636363636), rs2:x24(0xc9c9c9c9c9c9c9c9)
    TEST_RR_OP(aes64ds, x24, x8, x24, 0x1212242424121224, 0x3636363636363636, 0xc9c9c9c9c9c9c9c9, x1, 32, x2)

    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with dataset: sbox64
    // result rd:x25(0xb1b1b2b2b2b1b1b2), rs1:x7(0x3737373737373737), rs2:x23(0xc8c8c8c8c8c8c8c8)
    TEST_RR_OP(aes64ds, x25, x7, x23, 0xb1b1b2b2b2b1b1b2, 0x3737373737373737, 0xc8c8c8c8c8c8c8c8, x1, 0, x2)

inst_56:
    // Test 56:  Test with dataset: sbox64
    // result rd:x26(0x3131767676313176), rs1:x6(0x3838383838383838), rs2:x22(0xc7c7c7c7c7c7c7c7)
    TEST_RR_OP(aes64ds, x26, x6, x22, 0x3131767676313176, 0x3838383838383838, 0xc7c7c7c7c7c7c7c7, x1, 8, x2)

inst_57:
    // Test 57:  Test with dataset: sbox64
    // result rd:x27(0xc7c75b5b5bc7c75b), rs1:x5(0x3939393939393939), rs2:x21(0xc6c6c6c6c6c6c6c6)
    TEST_RR_OP(aes64ds, x27, x5, x21, 0xc7c75b5b5bc7c75b, 0x3939393939393939, 0xc6c6c6c6c6c6c6c6, x1, 16, x2)

inst_58:
    // Test 58:  Test with dataset: sbox64
    // result rd:x28(0x0707a2a2a20707a2), rs1:x4(0x3a3a3a3a3a3a3a3a), rs2:x20(0xc5c5c5c5c5c5c5c5)
    TEST_RR_OP(aes64ds, x28, x4, x20, 0x0707a2a2a20707a2, 0x3a3a3a3a3a3a3a3a, 0xc5c5c5c5c5c5c5c5, x1, 24, x2)

inst_59:
    // Test 59:  Test with dataset: sbox64
    // result rd:x29(0x8888494949888849), rs1:x3(0x3b3b3b3b3b3b3b3b), rs2:x19(0xc4c4c4c4c4c4c4c4)
    TEST_RR_OP(aes64ds, x29, x3, x19, 0x8888494949888849, 0x3b3b3b3b3b3b3b3b, 0xc4c4c4c4c4c4c4c4, x1, 32, x2)

    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with dataset: sbox64
    // result rd:x30(0x33336d6d6d33336d), rs1:x2(0x3c3c3c3c3c3c3c3c), rs2:x18(0xc3c3c3c3c3c3c3c3)
    TEST_RR_OP(aes64ds, x30, x2, x18, 0x33336d6d6d33336d, 0x3c3c3c3c3c3c3c3c, 0xc3c3c3c3c3c3c3c3, x4, 0, x5)

inst_61:
    // Test 61:  Test with dataset: sbox64
    // result rd:x31(0xa8a88b8b8ba8a88b), rs1:x1(0x3d3d3d3d3d3d3d3d), rs2:x17(0xc2c2c2c2c2c2c2c2)
    TEST_RR_OP(aes64ds, x31, x1, x17, 0xa8a88b8b8ba8a88b, 0x3d3d3d3d3d3d3d3d, 0xc2c2c2c2c2c2c2c2, x4, 8, x5)

inst_62:
    // Test 62:  Test with dataset: sbox64
    // result rd:x1(0xddddd1d1d1ddddd1), rs1:x31(0x3e3e3e3e3e3e3e3e), rs2:x16(0xc1c1c1c1c1c1c1c1)
    TEST_RR_OP(aes64ds, x1, x31, x16, 0xddddd1d1d1ddddd1, 0x3e3e3e3e3e3e3e3e, 0xc1c1c1c1c1c1c1c1, x4, 16, x5)

inst_63:
    // Test 63:  Test with dataset: sbox64
    // result rd:x2(0x1f1f2525251f1f25), rs1:x30(0x3f3f3f3f3f3f3f3f), rs2:x15(0xc0c0c0c0c0c0c0c0)
    TEST_RR_OP(aes64ds, x2, x30, x15, 0x1f1f2525251f1f25, 0x3f3f3f3f3f3f3f3f, 0xc0c0c0c0c0c0c0c0, x4, 24, x5)

inst_64:
    // Test 64:  Test with dataset: sbox64
    // result rd:x3(0xf4f4727272f4f472), rs1:x29(0x4040404040404040), rs2:x14(0xbfbfbfbfbfbfbfbf)
    TEST_RR_OP(aes64ds, x3, x29, x14, 0xf4f4727272f4f472, 0x4040404040404040, 0xbfbfbfbfbfbfbfbf, x4, 32, x5)

    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with dataset: sbox64
    // result rd:x4(0x5a5af8f8f85a5af8), rs1:x28(0x4141414141414141), rs2:x13(0xbebebebebebebebe)
    TEST_RR_OP(aes64ds, x4, x28, x13, 0x5a5af8f8f85a5af8, 0x4141414141414141, 0xbebebebebebebebe, x1, 0, x2)

inst_66:
    // Test 66:  Test with dataset: sbox64
    // result rd:x5(0xcdcdf6f6f6cdcdf6), rs1:x27(0x4242424242424242), rs2:x12(0xbdbdbdbdbdbdbdbd)
    TEST_RR_OP(aes64ds, x5, x27, x12, 0xcdcdf6f6f6cdcdf6, 0x4242424242424242, 0xbdbdbdbdbdbdbdbd, x1, 8, x2)

inst_67:
    // Test 67:  Test with dataset: sbox64
    // result rd:x6(0x7878646464787864), rs1:x26(0x4343434343434343), rs2:x11(0xbcbcbcbcbcbcbcbc)
    TEST_RR_OP(aes64ds, x6, x26, x11, 0x7878646464787864, 0x4343434343434343, 0xbcbcbcbcbcbcbcbc, x1, 16, x2)

inst_68:
    // Test 68:  Test with dataset: sbox64
    // result rd:x7(0xfefe868686fefe86), rs1:x25(0x4444444444444444), rs2:x10(0xbbbbbbbbbbbbbbbb)
    TEST_RR_OP(aes64ds, x7, x25, x10, 0xfefe868686fefe86, 0x4444444444444444, 0xbbbbbbbbbbbbbbbb, x1, 24, x2)

inst_69:
    // Test 69:  Test with dataset: sbox64
    // result rd:x8(0xc0c0686868c0c068), rs1:x24(0x4545454545454545), rs2:x9(0xbabababababababa)
    TEST_RR_OP(aes64ds, x8, x24, x9, 0xc0c0686868c0c068, 0x4545454545454545, 0xbabababababababa, x1, 32, x2)

    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with dataset: sbox64
    // result rd:x9(0xdbdb989898dbdb98), rs1:x23(0x4646464646464646), rs2:x8(0xb9b9b9b9b9b9b9b9)
    TEST_RR_OP(aes64ds, x9, x23, x8, 0xdbdb989898dbdb98, 0x4646464646464646, 0xb9b9b9b9b9b9b9b9, x1, 0, x2)

inst_71:
    // Test 71:  Test with dataset: sbox64
    // result rd:x10(0x9a9a1616169a9a16), rs1:x22(0x4747474747474747), rs2:x7(0xb8b8b8b8b8b8b8b8)
    TEST_RR_OP(aes64ds, x10, x22, x7, 0x9a9a1616169a9a16, 0x4747474747474747, 0xb8b8b8b8b8b8b8b8, x1, 8, x2)

inst_72:
    // Test 72:  Test with dataset: sbox64
    // result rd:x11(0x2020d4d4d42020d4), rs1:x21(0x4848484848484848), rs2:x6(0xb7b7b7b7b7b7b7b7)
    TEST_RR_OP(aes64ds, x11, x21, x6, 0x2020d4d4d42020d4, 0x4848484848484848, 0xb7b7b7b7b7b7b7b7, x1, 16, x2)

inst_73:
    // Test 73:  Test with dataset: sbox64
    // result rd:x12(0x7979a4a4a47979a4), rs1:x20(0x4949494949494949), rs2:x5(0xb6b6b6b6b6b6b6b6)
    TEST_RR_OP(aes64ds, x12, x20, x5, 0x7979a4a4a47979a4, 0x4949494949494949, 0xb6b6b6b6b6b6b6b6, x1, 24, x2)

inst_74:
    // Test 74:  Test with dataset: sbox64
    // result rd:x13(0xd2d25c5c5cd2d25c), rs1:x19(0x4a4a4a4a4a4a4a4a), rs2:x4(0xb5b5b5b5b5b5b5b5)
    TEST_RR_OP(aes64ds, x13, x19, x4, 0xd2d25c5c5cd2d25c, 0x4a4a4a4a4a4a4a4a, 0xb5b5b5b5b5b5b5b5, x1, 32, x2)

    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with dataset: sbox64
    // result rd:x14(0xc6c6ccccccc6c6cc), rs1:x18(0x4b4b4b4b4b4b4b4b), rs2:x3(0xb4b4b4b4b4b4b4b4)
    TEST_RR_OP(aes64ds, x14, x18, x3, 0xc6c6ccccccc6c6cc, 0x4b4b4b4b4b4b4b4b, 0xb4b4b4b4b4b4b4b4, x4, 0, x5)

inst_76:
    // Test 76:  Test with dataset: sbox64
    // result rd:x15(0x4b4b5d5d5d4b4b5d), rs1:x17(0x4c4c4c4c4c4c4c4c), rs2:x2(0xb3b3b3b3b3b3b3b3)
    TEST_RR_OP(aes64ds, x15, x17, x2, 0x4b4b5d5d5d4b4b5d, 0x4c4c4c4c4c4c4c4c, 0xb3b3b3b3b3b3b3b3, x4, 8, x5)

inst_77:
    // Test 77:  Test with dataset: sbox64
    // result rd:x16(0x3e3e6565653e3e65), rs1:x16(0x4d4d4d4d4d4d4d4d), rs2:x1(0xb2b2b2b2b2b2b2b2)
    TEST_RR_OP(aes64ds, x16, x16, x1, 0x3e3e6565653e3e65, 0x4d4d4d4d4d4d4d4d, 0xb2b2b2b2b2b2b2b2, x4, 16, x5)

inst_78:
    // Test 78:  Test with dataset: sbox64
    // result rd:x17(0x5656b6b6b65656b6), rs1:x15(0x4e4e4e4e4e4e4e4e), rs2:x31(0xb1b1b1b1b1b1b1b1)
    TEST_RR_OP(aes64ds, x17, x15, x31, 0x5656b6b6b65656b6, 0x4e4e4e4e4e4e4e4e, 0xb1b1b1b1b1b1b1b1, x4, 24, x5)

inst_79:
    // Test 79:  Test with dataset: sbox64
    // result rd:x18(0xfcfc929292fcfc92), rs1:x14(0x4f4f4f4f4f4f4f4f), rs2:x30(0xb0b0b0b0b0b0b0b0)
    TEST_RR_OP(aes64ds, x18, x14, x30, 0xfcfc929292fcfc92, 0x4f4f4f4f4f4f4f4f, 0xb0b0b0b0b0b0b0b0, x4, 32, x5)

    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with dataset: sbox64
    // result rd:x19(0x1b1b6c6c6c1b1b6c), rs1:x13(0x5050505050505050), rs2:x29(0xafafafafafafafaf)
    TEST_RR_OP(aes64ds, x19, x13, x29, 0x1b1b6c6c6c1b1b6c, 0x5050505050505050, 0xafafafafafafafaf, x1, 0, x2)

inst_81:
    // Test 81:  Test with dataset: sbox64
    // result rd:x20(0xbebe707070bebe70), rs1:x12(0x5151515151515151), rs2:x28(0xaeaeaeaeaeaeaeae)
    TEST_RR_OP(aes64ds, x20, x12, x28, 0xbebe707070bebe70, 0x5151515151515151, 0xaeaeaeaeaeaeaeae, x1, 8, x2)

inst_82:
    // Test 82:  Test with dataset: sbox64
    // result rd:x21(0x1818484848181848), rs1:x11(0x5252525252525252), rs2:x27(0xadadadadadadadad)
    TEST_RR_OP(aes64ds, x21, x11, x27, 0x1818484848181848, 0x5252525252525252, 0xadadadadadadadad, x1, 16, x2)

inst_83:
    // Test 83:  Test with dataset: sbox64
    // result rd:x22(0xaaaa505050aaaa50), rs1:x10(0x5353535353535353), rs2:x26(0xacacacacacacacac)
    TEST_RR_OP(aes64ds, x22, x10, x26, 0xaaaa505050aaaa50, 0x5353535353535353, 0xacacacacacacacac, x1, 24, x2)

inst_84:
    // Test 84:  Test with dataset: sbox64
    // result rd:x23(0x0e0efdfdfd0e0efd), rs1:x9(0x5454545454545454), rs2:x25(0xabababababababab)
    TEST_RR_OP(aes64ds, x23, x9, x25, 0x0e0efdfdfd0e0efd, 0x5454545454545454, 0xabababababababab, x1, 32, x2)

    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with dataset: sbox64
    // result rd:x24(0x6262ededed6262ed), rs1:x8(0x5555555555555555), rs2:x24(0xaaaaaaaaaaaaaaaa)
    TEST_RR_OP(aes64ds, x24, x8, x24, 0x6262ededed6262ed, 0x5555555555555555, 0xaaaaaaaaaaaaaaaa, x1, 0, x2)

inst_86:
    // Test 86:  Test with dataset: sbox64
    // result rd:x25(0xb7b7b9b9b9b7b7b9), rs1:x7(0x5656565656565656), rs2:x23(0xa9a9a9a9a9a9a9a9)
    TEST_RR_OP(aes64ds, x25, x7, x23, 0xb7b7b9b9b9b7b7b9, 0x5656565656565656, 0xa9a9a9a9a9a9a9a9, x1, 8, x2)

inst_87:
    // Test 87:  Test with dataset: sbox64
    // result rd:x26(0x6f6fdadada6f6fda), rs1:x6(0x5757575757575757), rs2:x22(0xa8a8a8a8a8a8a8a8)
    TEST_RR_OP(aes64ds, x26, x6, x22, 0x6f6fdadada6f6fda, 0x5757575757575757, 0xa8a8a8a8a8a8a8a8, x1, 16, x2)

inst_88:
    // Test 88:  Test with dataset: sbox64
    // result rd:x27(0x89895e5e5e89895e), rs1:x5(0x5858585858585858), rs2:x21(0xa7a7a7a7a7a7a7a7)
    TEST_RR_OP(aes64ds, x27, x5, x21, 0x89895e5e5e89895e, 0x5858585858585858, 0xa7a7a7a7a7a7a7a7, x1, 24, x2)

inst_89:
    // Test 89:  Test with dataset: sbox64
    // result rd:x28(0xc5c5151515c5c515), rs1:x4(0x5959595959595959), rs2:x20(0xa6a6a6a6a6a6a6a6)
    TEST_RR_OP(aes64ds, x28, x4, x20, 0xc5c5151515c5c515, 0x5959595959595959, 0xa6a6a6a6a6a6a6a6, x1, 32, x2)

    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with dataset: sbox64
    // result rd:x29(0x2929464646292946), rs1:x3(0x5a5a5a5a5a5a5a5a), rs2:x19(0xa5a5a5a5a5a5a5a5)
    TEST_RR_OP(aes64ds, x29, x3, x19, 0x2929464646292946, 0x5a5a5a5a5a5a5a5a, 0xa5a5a5a5a5a5a5a5, x4, 0, x5)

inst_91:
    // Test 91:  Test with dataset: sbox64
    // result rd:x30(0x1d1d5757571d1d57), rs1:x2(0x5b5b5b5b5b5b5b5b), rs2:x18(0xa4a4a4a4a4a4a4a4)
    TEST_RR_OP(aes64ds, x30, x2, x18, 0x1d1d5757571d1d57, 0x5b5b5b5b5b5b5b5b, 0xa4a4a4a4a4a4a4a4, x4, 8, x5)

inst_92:
    // Test 92:  Test with dataset: sbox64
    // result rd:x31(0x7171a7a7a77171a7), rs1:x1(0x5c5c5c5c5c5c5c5c), rs2:x17(0xa3a3a3a3a3a3a3a3)
    TEST_RR_OP(aes64ds, x31, x1, x17, 0x7171a7a7a77171a7, 0x5c5c5c5c5c5c5c5c, 0xa3a3a3a3a3a3a3a3, x4, 16, x5)

inst_93:
    // Test 93:  Test with dataset: sbox64
    // result rd:x1(0x1a1a8d8d8d1a1a8d), rs1:x31(0x5d5d5d5d5d5d5d5d), rs2:x16(0xa2a2a2a2a2a2a2a2)
    TEST_RR_OP(aes64ds, x1, x31, x16, 0x1a1a8d8d8d1a1a8d, 0x5d5d5d5d5d5d5d5d, 0xa2a2a2a2a2a2a2a2, x4, 24, x5)

inst_94:
    // Test 94:  Test with dataset: sbox64
    // result rd:x2(0xf1f19d9d9df1f19d), rs1:x30(0x5e5e5e5e5e5e5e5e), rs2:x15(0xa1a1a1a1a1a1a1a1)
    TEST_RR_OP(aes64ds, x2, x30, x15, 0xf1f19d9d9df1f19d, 0x5e5e5e5e5e5e5e5e, 0xa1a1a1a1a1a1a1a1, x4, 32, x5)

    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with dataset: sbox64
    // result rd:x3(0x4747848484474784), rs1:x29(0x5f5f5f5f5f5f5f5f), rs2:x14(0xa0a0a0a0a0a0a0a0)
    TEST_RR_OP(aes64ds, x3, x29, x14, 0x4747848484474784, 0x5f5f5f5f5f5f5f5f, 0xa0a0a0a0a0a0a0a0, x1, 0, x2)

inst_96:
    // Test 96:  Test with dataset: sbox64
    // result rd:x4(0x6e6e9090906e6e90), rs1:x28(0x6060606060606060), rs2:x13(0x9f9f9f9f9f9f9f9f)
    TEST_RR_OP(aes64ds, x4, x28, x13, 0x6e6e9090906e6e90, 0x6060606060606060, 0x9f9f9f9f9f9f9f9f, x1, 8, x2)

inst_97:
    // Test 97:  Test with dataset: sbox64
    // result rd:x5(0xdfdfd8d8d8dfdfd8), rs1:x27(0x6161616161616161), rs2:x12(0x9e9e9e9e9e9e9e9e)
    TEST_RR_OP(aes64ds, x5, x27, x12, 0xdfdfd8d8d8dfdfd8, 0x6161616161616161, 0x9e9e9e9e9e9e9e9e, x1, 16, x2)

inst_98:
    // Test 98:  Test with dataset: sbox64
    // result rd:x6(0x7575ababab7575ab), rs1:x26(0x6262626262626262), rs2:x11(0x9d9d9d9d9d9d9d9d)
    TEST_RR_OP(aes64ds, x6, x26, x11, 0x7575ababab7575ab, 0x6262626262626262, 0x9d9d9d9d9d9d9d9d, x1, 24, x2)

inst_99:
    // Test 99:  Test with dataset: sbox64
    // result rd:x7(0x1c1c0000001c1c00), rs1:x25(0x6363636363636363), rs2:x10(0x9c9c9c9c9c9c9c9c)
    TEST_RR_OP(aes64ds, x7, x25, x10, 0x1c1c0000001c1c00, 0x6363636363636363, 0x9c9c9c9c9c9c9c9c, x1, 32, x2)

    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with dataset: sbox64
    // result rd:x8(0xe8e88c8c8ce8e88c), rs1:x24(0x6464646464646464), rs2:x9(0x9b9b9b9b9b9b9b9b)
    TEST_RR_OP(aes64ds, x8, x24, x9, 0xe8e88c8c8ce8e88c, 0x6464646464646464, 0x9b9b9b9b9b9b9b9b, x1, 0, x2)

inst_101:
    // Test 101:  Test with dataset: sbox64
    // result rd:x9(0x3737bcbcbc3737bc), rs1:x23(0x6565656565656565), rs2:x8(0x9a9a9a9a9a9a9a9a)
    TEST_RR_OP(aes64ds, x9, x23, x8, 0x3737bcbcbc3737bc, 0x6565656565656565, 0x9a9a9a9a9a9a9a9a, x1, 8, x2)

inst_102:
    // Test 102:  Test with dataset: sbox64
    // result rd:x10(0xf9f9d3d3d3f9f9d3), rs1:x22(0x6666666666666666), rs2:x7(0x9999999999999999)
    TEST_RR_OP(aes64ds, x10, x22, x7, 0xf9f9d3d3d3f9f9d3, 0x6666666666666666, 0x9999999999999999, x1, 16, x2)

inst_103:
    // Test 103:  Test with dataset: sbox64
    // result rd:x11(0xe2e20a0a0ae2e20a), rs1:x21(0x6767676767676767), rs2:x6(0x9898989898989898)
    TEST_RR_OP(aes64ds, x11, x21, x6, 0xe2e20a0a0ae2e20a, 0x6767676767676767, 0x9898989898989898, x1, 24, x2)

inst_104:
    // Test 104:  Test with dataset: sbox64
    // result rd:x12(0x8585f7f7f78585f7), rs1:x20(0x6868686868686868), rs2:x5(0x9797979797979797)
    TEST_RR_OP(aes64ds, x12, x20, x5, 0x8585f7f7f78585f7, 0x6868686868686868, 0x9797979797979797, x1, 32, x2)

    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with dataset: sbox64
    // result rd:x13(0x3535e4e4e43535e4), rs1:x19(0x6969696969696969), rs2:x4(0x9696969696969696)
    TEST_RR_OP(aes64ds, x13, x19, x4, 0x3535e4e4e43535e4, 0x6969696969696969, 0x9696969696969696, x5, 0, x6)

inst_106:
    // Test 106:  Test with dataset: sbox64
    // result rd:x14(0xadad585858adad58), rs1:x18(0x6a6a6a6a6a6a6a6a), rs2:x3(0x9595959595959595)
    TEST_RR_OP(aes64ds, x14, x18, x3, 0xadad585858adad58, 0x6a6a6a6a6a6a6a6a, 0x9595959595959595, x5, 8, x6)

inst_107:
    // Test 107:  Test with dataset: sbox64
    // result rd:x15(0xe7e7050505e7e705), rs1:x17(0x6b6b6b6b6b6b6b6b), rs2:x2(0x9494949494949494)
    TEST_RR_OP(aes64ds, x15, x17, x2, 0xe7e7050505e7e705, 0x6b6b6b6b6b6b6b6b, 0x9494949494949494, x5, 16, x6)

inst_108:
    // Test 108:  Test with dataset: sbox64
    // result rd:x16(0x2222b8b8b82222b8), rs1:x16(0x6c6c6c6c6c6c6c6c), rs2:x1(0x9393939393939393)
    TEST_RR_OP(aes64ds, x16, x16, x1, 0x2222b8b8b82222b8, 0x6c6c6c6c6c6c6c6c, 0x9393939393939393, x5, 24, x6)

inst_109:
    // Test 109:  Test with dataset: sbox64
    // result rd:x17(0x7474b3b3b37474b3), rs1:x15(0x6d6d6d6d6d6d6d6d), rs2:x31(0x9292929292929292)
    TEST_RR_OP(aes64ds, x17, x15, x31, 0x7474b3b3b37474b3, 0x6d6d6d6d6d6d6d6d, 0x9292929292929292, x5, 32, x6)

    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with dataset: sbox64
    // result rd:x18(0xacac454545acac45), rs1:x14(0x6e6e6e6e6e6e6e6e), rs2:x30(0x9191919191919191)
    TEST_RR_OP(aes64ds, x18, x14, x30, 0xacac454545acac45, 0x6e6e6e6e6e6e6e6e, 0x9191919191919191, x1, 0, x2)

inst_111:
    // Test 111:  Test with dataset: sbox64
    // result rd:x19(0x9696060606969606), rs1:x13(0x6f6f6f6f6f6f6f6f), rs2:x29(0x9090909090909090)
    TEST_RR_OP(aes64ds, x19, x13, x29, 0x9696060606969606, 0x6f6f6f6f6f6f6f6f, 0x9090909090909090, x1, 8, x2)

inst_112:
    // Test 112:  Test with dataset: sbox64
    // result rd:x20(0x7373d0d0d07373d0), rs1:x12(0x7070707070707070), rs2:x28(0x8f8f8f8f8f8f8f8f)
    TEST_RR_OP(aes64ds, x20, x12, x28, 0x7373d0d0d07373d0, 0x7070707070707070, 0x8f8f8f8f8f8f8f8f, x1, 16, x2)

inst_113:
    // Test 113:  Test with dataset: sbox64
    // result rd:x21(0xe6e62c2c2ce6e62c), rs1:x11(0x7171717171717171), rs2:x27(0x8e8e8e8e8e8e8e8e)
    TEST_RR_OP(aes64ds, x21, x11, x27, 0xe6e62c2c2ce6e62c, 0x7171717171717171, 0x8e8e8e8e8e8e8e8e, x1, 24, x2)

inst_114:
    // Test 114:  Test with dataset: sbox64
    // result rd:x22(0xb4b41e1e1eb4b41e), rs1:x10(0x7272727272727272), rs2:x26(0x8d8d8d8d8d8d8d8d)
    TEST_RR_OP(aes64ds, x22, x10, x26, 0xb4b41e1e1eb4b41e, 0x7272727272727272, 0x8d8d8d8d8d8d8d8d, x1, 32, x2)

    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with dataset: sbox64
    // result rd:x23(0xf0f08f8f8ff0f08f), rs1:x9(0x7373737373737373), rs2:x25(0x8c8c8c8c8c8c8c8c)
    TEST_RR_OP(aes64ds, x23, x9, x25, 0xf0f08f8f8ff0f08f, 0x7373737373737373, 0x8c8c8c8c8c8c8c8c, x1, 0, x2)

inst_116:
    // Test 116:  Test with dataset: sbox64
    // result rd:x24(0xcececacacacececa), rs1:x8(0x7474747474747474), rs2:x24(0x8b8b8b8b8b8b8b8b)
    TEST_RR_OP(aes64ds, x24, x8, x24, 0xcececacacacececa, 0x7474747474747474, 0x8b8b8b8b8b8b8b8b, x1, 8, x2)

inst_117:
    // Test 117:  Test with dataset: sbox64
    // result rd:x25(0xcfcf3f3f3fcfcf3f), rs1:x7(0x7575757575757575), rs2:x23(0x8a8a8a8a8a8a8a8a)
    TEST_RR_OP(aes64ds, x25, x7, x23, 0xcfcf3f3f3fcfcf3f, 0x7575757575757575, 0x8a8a8a8a8a8a8a8a, x1, 16, x2)

inst_118:
    // Test 118:  Test with dataset: sbox64
    // result rd:x26(0xf2f20f0f0ff2f20f), rs1:x6(0x7676767676767676), rs2:x22(0x8989898989898989)
    TEST_RR_OP(aes64ds, x26, x6, x22, 0xf2f20f0f0ff2f20f, 0x7676767676767676, 0x8989898989898989, x1, 24, x2)

inst_119:
    // Test 119:  Test with dataset: sbox64
    // result rd:x27(0x9797020202979702), rs1:x5(0x7777777777777777), rs2:x21(0x8888888888888888)
    TEST_RR_OP(aes64ds, x27, x5, x21, 0x9797020202979702, 0x7777777777777777, 0x8888888888888888, x1, 32, x2)

    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with dataset: sbox64
    // result rd:x28(0xeaeac1c1c1eaeac1), rs1:x4(0x7878787878787878), rs2:x20(0x8787878787878787)
    TEST_RR_OP(aes64ds, x28, x4, x20, 0xeaeac1c1c1eaeac1, 0x7878787878787878, 0x8787878787878787, x5, 0, x6)

inst_121:
    // Test 121:  Test with dataset: sbox64
    // result rd:x29(0xdcdcafafafdcdcaf), rs1:x3(0x7979797979797979), rs2:x19(0x8686868686868686)
    TEST_RR_OP(aes64ds, x29, x3, x19, 0xdcdcafafafdcdcaf, 0x7979797979797979, 0x8686868686868686, x5, 8, x6)

inst_122:
    // Test 122:  Test with dataset: sbox64
    // result rd:x30(0x6767bdbdbd6767bd), rs1:x2(0x7a7a7a7a7a7a7a7a), rs2:x18(0x8585858585858585)
    TEST_RR_OP(aes64ds, x30, x2, x18, 0x6767bdbdbd6767bd, 0x7a7a7a7a7a7a7a7a, 0x8585858585858585, x5, 16, x6)

inst_123:
    // Test 123:  Test with dataset: sbox64
    // result rd:x31(0x4f4f0303034f4f03), rs1:x1(0x7b7b7b7b7b7b7b7b), rs2:x17(0x8484848484848484)
    TEST_RR_OP(aes64ds, x31, x1, x17, 0x4f4f0303034f4f03, 0x7b7b7b7b7b7b7b7b, 0x8484848484848484, x5, 24, x6)

inst_124:
    // Test 124:  Test with dataset: sbox64
    // result rd:x1(0x4141010101414101), rs1:x31(0x7c7c7c7c7c7c7c7c), rs2:x16(0x8383838383838383)
    TEST_RR_OP(aes64ds, x1, x31, x16, 0x4141010101414101, 0x7c7c7c7c7c7c7c7c, 0x8383838383838383, x5, 32, x6)

    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with dataset: sbox64
    // result rd:x2(0x1111131313111113), rs1:x30(0x7d7d7d7d7d7d7d7d), rs2:x15(0x8282828282828282)
    TEST_RR_OP(aes64ds, x2, x30, x15, 0x1111131313111113, 0x7d7d7d7d7d7d7d7d, 0x8282828282828282, x1, 0, x7)

inst_126:
    // Test 126:  Test with dataset: sbox64
    // result rd:x3(0x91918a8a8a91918a), rs1:x29(0x7e7e7e7e7e7e7e7e), rs2:x14(0x8181818181818181)
    TEST_RR_OP(aes64ds, x3, x29, x14, 0x91918a8a8a91918a, 0x7e7e7e7e7e7e7e7e, 0x8181818181818181, x1, 8, x7)

inst_127:
    // Test 127:  Test with dataset: sbox64
    // result rd:x4(0x3a3a6b6b6b3a3a6b), rs1:x28(0x7f7f7f7f7f7f7f7f), rs2:x13(0x8080808080808080)
    TEST_RR_OP(aes64ds, x4, x28, x13, 0x3a3a6b6b6b3a3a6b, 0x7f7f7f7f7f7f7f7f, 0x8080808080808080, x1, 16, x7)

inst_128:
    // Test 128:  Test with dataset: sbox64
    // result rd:x5(0x6b6b3a3a3a6b6b3a), rs1:x27(0x8080808080808080), rs2:x12(0x7f7f7f7f7f7f7f7f)
    TEST_RR_OP(aes64ds, x5, x27, x12, 0x6b6b3a3a3a6b6b3a, 0x8080808080808080, 0x7f7f7f7f7f7f7f7f, x1, 24, x7)

inst_129:
    // Test 129:  Test with dataset: sbox64
    // result rd:x6(0x8a8a9191918a8a91), rs1:x26(0x8181818181818181), rs2:x11(0x7e7e7e7e7e7e7e7e)
    TEST_RR_OP(aes64ds, x6, x26, x11, 0x8a8a9191918a8a91, 0x8181818181818181, 0x7e7e7e7e7e7e7e7e, x1, 32, x7)

    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with dataset: sbox64
    // result rd:x7(0x1313111111131311), rs1:x25(0x8282828282828282), rs2:x10(0x7d7d7d7d7d7d7d7d)
    TEST_RR_OP(aes64ds, x7, x25, x10, 0x1313111111131311, 0x8282828282828282, 0x7d7d7d7d7d7d7d7d, x1, 0, x2)

inst_131:
    // Test 131:  Test with dataset: sbox64
    // result rd:x8(0x0101414141010141), rs1:x24(0x8383838383838383), rs2:x9(0x7c7c7c7c7c7c7c7c)
    TEST_RR_OP(aes64ds, x8, x24, x9, 0x0101414141010141, 0x8383838383838383, 0x7c7c7c7c7c7c7c7c, x1, 8, x2)

inst_132:
    // Test 132:  Test with dataset: sbox64
    // result rd:x9(0x03034f4f4f03034f), rs1:x23(0x8484848484848484), rs2:x8(0x7b7b7b7b7b7b7b7b)
    TEST_RR_OP(aes64ds, x9, x23, x8, 0x03034f4f4f03034f, 0x8484848484848484, 0x7b7b7b7b7b7b7b7b, x1, 16, x2)

inst_133:
    // Test 133:  Test with dataset: sbox64
    // result rd:x10(0xbdbd676767bdbd67), rs1:x22(0x8585858585858585), rs2:x7(0x7a7a7a7a7a7a7a7a)
    TEST_RR_OP(aes64ds, x10, x22, x7, 0xbdbd676767bdbd67, 0x8585858585858585, 0x7a7a7a7a7a7a7a7a, x1, 24, x2)

inst_134:
    // Test 134:  Test with dataset: sbox64
    // result rd:x11(0xafafdcdcdcafafdc), rs1:x21(0x8686868686868686), rs2:x6(0x7979797979797979)
    TEST_RR_OP(aes64ds, x11, x21, x6, 0xafafdcdcdcafafdc, 0x8686868686868686, 0x7979797979797979, x1, 32, x2)

    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with dataset: sbox64
    // result rd:x12(0xc1c1eaeaeac1c1ea), rs1:x20(0x8787878787878787), rs2:x5(0x7878787878787878)
    TEST_RR_OP(aes64ds, x12, x20, x5, 0xc1c1eaeaeac1c1ea, 0x8787878787878787, 0x7878787878787878, x6, 0, x7)

inst_136:
    // Test 136:  Test with dataset: sbox64
    // result rd:x13(0x0202979797020297), rs1:x19(0x8888888888888888), rs2:x4(0x7777777777777777)
    TEST_RR_OP(aes64ds, x13, x19, x4, 0x0202979797020297, 0x8888888888888888, 0x7777777777777777, x6, 8, x7)

inst_137:
    // Test 137:  Test with dataset: sbox64
    // result rd:x14(0x0f0ff2f2f20f0ff2), rs1:x18(0x8989898989898989), rs2:x3(0x7676767676767676)
    TEST_RR_OP(aes64ds, x14, x18, x3, 0x0f0ff2f2f20f0ff2, 0x8989898989898989, 0x7676767676767676, x6, 16, x7)

inst_138:
    // Test 138:  Test with dataset: sbox64
    // result rd:x15(0x3f3fcfcfcf3f3fcf), rs1:x17(0x8a8a8a8a8a8a8a8a), rs2:x2(0x7575757575757575)
    TEST_RR_OP(aes64ds, x15, x17, x2, 0x3f3fcfcfcf3f3fcf, 0x8a8a8a8a8a8a8a8a, 0x7575757575757575, x6, 24, x7)

inst_139:
    // Test 139:  Test with dataset: sbox64
    // result rd:x16(0xcacacecececacace), rs1:x16(0x8b8b8b8b8b8b8b8b), rs2:x1(0x7474747474747474)
    TEST_RR_OP(aes64ds, x16, x16, x1, 0xcacacecececacace, 0x8b8b8b8b8b8b8b8b, 0x7474747474747474, x6, 32, x7)

    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with dataset: sbox64
    // result rd:x17(0x8f8ff0f0f08f8ff0), rs1:x15(0x8c8c8c8c8c8c8c8c), rs2:x31(0x7373737373737373)
    TEST_RR_OP(aes64ds, x17, x15, x31, 0x8f8ff0f0f08f8ff0, 0x8c8c8c8c8c8c8c8c, 0x7373737373737373, x1, 0, x2)

inst_141:
    // Test 141:  Test with dataset: sbox64
    // result rd:x18(0x1e1eb4b4b41e1eb4), rs1:x14(0x8d8d8d8d8d8d8d8d), rs2:x30(0x7272727272727272)
    TEST_RR_OP(aes64ds, x18, x14, x30, 0x1e1eb4b4b41e1eb4, 0x8d8d8d8d8d8d8d8d, 0x7272727272727272, x1, 8, x2)

inst_142:
    // Test 142:  Test with dataset: sbox64
    // result rd:x19(0x2c2ce6e6e62c2ce6), rs1:x13(0x8e8e8e8e8e8e8e8e), rs2:x29(0x7171717171717171)
    TEST_RR_OP(aes64ds, x19, x13, x29, 0x2c2ce6e6e62c2ce6, 0x8e8e8e8e8e8e8e8e, 0x7171717171717171, x1, 16, x2)

inst_143:
    // Test 143:  Test with dataset: sbox64
    // result rd:x20(0xd0d0737373d0d073), rs1:x12(0x8f8f8f8f8f8f8f8f), rs2:x28(0x7070707070707070)
    TEST_RR_OP(aes64ds, x20, x12, x28, 0xd0d0737373d0d073, 0x8f8f8f8f8f8f8f8f, 0x7070707070707070, x1, 24, x2)

inst_144:
    // Test 144:  Test with dataset: sbox64
    // result rd:x21(0x0606969696060696), rs1:x11(0x9090909090909090), rs2:x27(0x6f6f6f6f6f6f6f6f)
    TEST_RR_OP(aes64ds, x21, x11, x27, 0x0606969696060696, 0x9090909090909090, 0x6f6f6f6f6f6f6f6f, x1, 32, x2)

    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with dataset: sbox64
    // result rd:x22(0x4545acacac4545ac), rs1:x10(0x9191919191919191), rs2:x26(0x6e6e6e6e6e6e6e6e)
    TEST_RR_OP(aes64ds, x22, x10, x26, 0x4545acacac4545ac, 0x9191919191919191, 0x6e6e6e6e6e6e6e6e, x1, 0, x2)

inst_146:
    // Test 146:  Test with dataset: sbox64
    // result rd:x23(0xb3b3747474b3b374), rs1:x9(0x9292929292929292), rs2:x25(0x6d6d6d6d6d6d6d6d)
    TEST_RR_OP(aes64ds, x23, x9, x25, 0xb3b3747474b3b374, 0x9292929292929292, 0x6d6d6d6d6d6d6d6d, x1, 8, x2)

inst_147:
    // Test 147:  Test with dataset: sbox64
    // result rd:x24(0xb8b8222222b8b822), rs1:x8(0x9393939393939393), rs2:x24(0x6c6c6c6c6c6c6c6c)
    TEST_RR_OP(aes64ds, x24, x8, x24, 0xb8b8222222b8b822, 0x9393939393939393, 0x6c6c6c6c6c6c6c6c, x1, 16, x2)

inst_148:
    // Test 148:  Test with dataset: sbox64
    // result rd:x25(0x0505e7e7e70505e7), rs1:x7(0x9494949494949494), rs2:x23(0x6b6b6b6b6b6b6b6b)
    TEST_RR_OP(aes64ds, x25, x7, x23, 0x0505e7e7e70505e7, 0x9494949494949494, 0x6b6b6b6b6b6b6b6b, x1, 24, x2)

inst_149:
    // Test 149:  Test with dataset: sbox64
    // result rd:x26(0x5858adadad5858ad), rs1:x6(0x9595959595959595), rs2:x22(0x6a6a6a6a6a6a6a6a)
    TEST_RR_OP(aes64ds, x26, x6, x22, 0x5858adadad5858ad, 0x9595959595959595, 0x6a6a6a6a6a6a6a6a, x1, 32, x2)

    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with dataset: sbox64
    // result rd:x27(0xe4e4353535e4e435), rs1:x5(0x9696969696969696), rs2:x21(0x6969696969696969)
    TEST_RR_OP(aes64ds, x27, x5, x21, 0xe4e4353535e4e435, 0x9696969696969696, 0x6969696969696969, x6, 0, x7)

inst_151:
    // Test 151:  Test with dataset: sbox64
    // result rd:x28(0xf7f7858585f7f785), rs1:x4(0x9797979797979797), rs2:x20(0x6868686868686868)
    TEST_RR_OP(aes64ds, x28, x4, x20, 0xf7f7858585f7f785, 0x9797979797979797, 0x6868686868686868, x6, 8, x7)

inst_152:
    // Test 152:  Test with dataset: sbox64
    // result rd:x29(0x0a0ae2e2e20a0ae2), rs1:x3(0x9898989898989898), rs2:x19(0x6767676767676767)
    TEST_RR_OP(aes64ds, x29, x3, x19, 0x0a0ae2e2e20a0ae2, 0x9898989898989898, 0x6767676767676767, x6, 16, x7)

inst_153:
    // Test 153:  Test with dataset: sbox64
    // result rd:x30(0xd3d3f9f9f9d3d3f9), rs1:x2(0x9999999999999999), rs2:x18(0x6666666666666666)
    TEST_RR_OP(aes64ds, x30, x2, x18, 0xd3d3f9f9f9d3d3f9, 0x9999999999999999, 0x6666666666666666, x6, 24, x7)

inst_154:
    // Test 154:  Test with dataset: sbox64
    // result rd:x31(0xbcbc373737bcbc37), rs1:x1(0x9a9a9a9a9a9a9a9a), rs2:x17(0x6565656565656565)
    TEST_RR_OP(aes64ds, x31, x1, x17, 0xbcbc373737bcbc37, 0x9a9a9a9a9a9a9a9a, 0x6565656565656565, x6, 32, x7)

    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with dataset: sbox64
    // result rd:x1(0x8c8ce8e8e88c8ce8), rs1:x31(0x9b9b9b9b9b9b9b9b), rs2:x16(0x6464646464646464)
    TEST_RR_OP(aes64ds, x1, x31, x16, 0x8c8ce8e8e88c8ce8, 0x9b9b9b9b9b9b9b9b, 0x6464646464646464, x6, 0, x7)

inst_156:
    // Test 156:  Test with dataset: sbox64
    // result rd:x2(0x00001c1c1c00001c), rs1:x30(0x9c9c9c9c9c9c9c9c), rs2:x15(0x6363636363636363)
    TEST_RR_OP(aes64ds, x2, x30, x15, 0x00001c1c1c00001c, 0x9c9c9c9c9c9c9c9c, 0x6363636363636363, x6, 8, x7)

inst_157:
    // Test 157:  Test with dataset: sbox64
    // result rd:x3(0xabab757575abab75), rs1:x29(0x9d9d9d9d9d9d9d9d), rs2:x14(0x6262626262626262)
    TEST_RR_OP(aes64ds, x3, x29, x14, 0xabab757575abab75, 0x9d9d9d9d9d9d9d9d, 0x6262626262626262, x6, 16, x7)

inst_158:
    // Test 158:  Test with dataset: sbox64
    // result rd:x4(0xd8d8dfdfdfd8d8df), rs1:x28(0x9e9e9e9e9e9e9e9e), rs2:x13(0x6161616161616161)
    TEST_RR_OP(aes64ds, x4, x28, x13, 0xd8d8dfdfdfd8d8df, 0x9e9e9e9e9e9e9e9e, 0x6161616161616161, x6, 24, x7)

inst_159:
    // Test 159:  Test with dataset: sbox64
    // result rd:x5(0x90906e6e6e90906e), rs1:x27(0x9f9f9f9f9f9f9f9f), rs2:x12(0x6060606060606060)
    TEST_RR_OP(aes64ds, x5, x27, x12, 0x90906e6e6e90906e, 0x9f9f9f9f9f9f9f9f, 0x6060606060606060, x6, 32, x7)

    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with dataset: sbox64
    // result rd:x6(0x8484474747848447), rs1:x26(0xa0a0a0a0a0a0a0a0), rs2:x11(0x5f5f5f5f5f5f5f5f)
    TEST_RR_OP(aes64ds, x6, x26, x11, 0x8484474747848447, 0xa0a0a0a0a0a0a0a0, 0x5f5f5f5f5f5f5f5f, x1, 0, x2)

inst_161:
    // Test 161:  Test with dataset: sbox64
    // result rd:x7(0x9d9df1f1f19d9df1), rs1:x25(0xa1a1a1a1a1a1a1a1), rs2:x10(0x5e5e5e5e5e5e5e5e)
    TEST_RR_OP(aes64ds, x7, x25, x10, 0x9d9df1f1f19d9df1, 0xa1a1a1a1a1a1a1a1, 0x5e5e5e5e5e5e5e5e, x1, 8, x2)

inst_162:
    // Test 162:  Test with dataset: sbox64
    // result rd:x8(0x8d8d1a1a1a8d8d1a), rs1:x24(0xa2a2a2a2a2a2a2a2), rs2:x9(0x5d5d5d5d5d5d5d5d)
    TEST_RR_OP(aes64ds, x8, x24, x9, 0x8d8d1a1a1a8d8d1a, 0xa2a2a2a2a2a2a2a2, 0x5d5d5d5d5d5d5d5d, x1, 16, x2)

inst_163:
    // Test 163:  Test with dataset: sbox64
    // result rd:x9(0xa7a7717171a7a771), rs1:x23(0xa3a3a3a3a3a3a3a3), rs2:x8(0x5c5c5c5c5c5c5c5c)
    TEST_RR_OP(aes64ds, x9, x23, x8, 0xa7a7717171a7a771, 0xa3a3a3a3a3a3a3a3, 0x5c5c5c5c5c5c5c5c, x1, 24, x2)

inst_164:
    // Test 164:  Test with dataset: sbox64
    // result rd:x10(0x57571d1d1d57571d), rs1:x22(0xa4a4a4a4a4a4a4a4), rs2:x7(0x5b5b5b5b5b5b5b5b)
    TEST_RR_OP(aes64ds, x10, x22, x7, 0x57571d1d1d57571d, 0xa4a4a4a4a4a4a4a4, 0x5b5b5b5b5b5b5b5b, x1, 32, x2)

    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with dataset: sbox64
    // result rd:x11(0x4646292929464629), rs1:x21(0xa5a5a5a5a5a5a5a5), rs2:x6(0x5a5a5a5a5a5a5a5a)
    TEST_RR_OP(aes64ds, x11, x21, x6, 0x4646292929464629, 0xa5a5a5a5a5a5a5a5, 0x5a5a5a5a5a5a5a5a, x1, 0, x7)

inst_166:
    // Test 166:  Test with dataset: sbox64
    // result rd:x12(0x1515c5c5c51515c5), rs1:x20(0xa6a6a6a6a6a6a6a6), rs2:x5(0x5959595959595959)
    TEST_RR_OP(aes64ds, x12, x20, x5, 0x1515c5c5c51515c5, 0xa6a6a6a6a6a6a6a6, 0x5959595959595959, x1, 8, x7)

inst_167:
    // Test 167:  Test with dataset: sbox64
    // result rd:x13(0x5e5e8989895e5e89), rs1:x19(0xa7a7a7a7a7a7a7a7), rs2:x4(0x5858585858585858)
    TEST_RR_OP(aes64ds, x13, x19, x4, 0x5e5e8989895e5e89, 0xa7a7a7a7a7a7a7a7, 0x5858585858585858, x1, 16, x7)

inst_168:
    // Test 168:  Test with dataset: sbox64
    // result rd:x14(0xdada6f6f6fdada6f), rs1:x18(0xa8a8a8a8a8a8a8a8), rs2:x3(0x5757575757575757)
    TEST_RR_OP(aes64ds, x14, x18, x3, 0xdada6f6f6fdada6f, 0xa8a8a8a8a8a8a8a8, 0x5757575757575757, x1, 24, x7)

inst_169:
    // Test 169:  Test with dataset: sbox64
    // result rd:x15(0xb9b9b7b7b7b9b9b7), rs1:x17(0xa9a9a9a9a9a9a9a9), rs2:x2(0x5656565656565656)
    TEST_RR_OP(aes64ds, x15, x17, x2, 0xb9b9b7b7b7b9b9b7, 0xa9a9a9a9a9a9a9a9, 0x5656565656565656, x1, 32, x7)

    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with dataset: sbox64
    // result rd:x16(0xeded626262eded62), rs1:x16(0xaaaaaaaaaaaaaaaa), rs2:x1(0x5555555555555555)
    TEST_RR_OP(aes64ds, x16, x16, x1, 0xeded626262eded62, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555, x2, 0, x3)

inst_171:
    // Test 171:  Test with dataset: sbox64
    // result rd:x17(0xfdfd0e0e0efdfd0e), rs1:x15(0xabababababababab), rs2:x31(0x5454545454545454)
    TEST_RR_OP(aes64ds, x17, x15, x31, 0xfdfd0e0e0efdfd0e, 0xabababababababab, 0x5454545454545454, x2, 8, x3)

inst_172:
    // Test 172:  Test with dataset: sbox64
    // result rd:x18(0x5050aaaaaa5050aa), rs1:x14(0xacacacacacacacac), rs2:x30(0x5353535353535353)
    TEST_RR_OP(aes64ds, x18, x14, x30, 0x5050aaaaaa5050aa, 0xacacacacacacacac, 0x5353535353535353, x2, 16, x3)

inst_173:
    // Test 173:  Test with dataset: sbox64
    // result rd:x19(0x4848181818484818), rs1:x13(0xadadadadadadadad), rs2:x29(0x5252525252525252)
    TEST_RR_OP(aes64ds, x19, x13, x29, 0x4848181818484818, 0xadadadadadadadad, 0x5252525252525252, x2, 24, x3)

inst_174:
    // Test 174:  Test with dataset: sbox64
    // result rd:x20(0x7070bebebe7070be), rs1:x12(0xaeaeaeaeaeaeaeae), rs2:x28(0x5151515151515151)
    TEST_RR_OP(aes64ds, x20, x12, x28, 0x7070bebebe7070be, 0xaeaeaeaeaeaeaeae, 0x5151515151515151, x2, 32, x3)

    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with dataset: sbox64
    // result rd:x21(0x6c6c1b1b1b6c6c1b), rs1:x11(0xafafafafafafafaf), rs2:x27(0x5050505050505050)
    TEST_RR_OP(aes64ds, x21, x11, x27, 0x6c6c1b1b1b6c6c1b, 0xafafafafafafafaf, 0x5050505050505050, x1, 0, x2)

inst_176:
    // Test 176:  Test with dataset: sbox64
    // result rd:x22(0x9292fcfcfc9292fc), rs1:x10(0xb0b0b0b0b0b0b0b0), rs2:x26(0x4f4f4f4f4f4f4f4f)
    TEST_RR_OP(aes64ds, x22, x10, x26, 0x9292fcfcfc9292fc, 0xb0b0b0b0b0b0b0b0, 0x4f4f4f4f4f4f4f4f, x1, 8, x2)

inst_177:
    // Test 177:  Test with dataset: sbox64
    // result rd:x23(0xb6b6565656b6b656), rs1:x9(0xb1b1b1b1b1b1b1b1), rs2:x25(0x4e4e4e4e4e4e4e4e)
    TEST_RR_OP(aes64ds, x23, x9, x25, 0xb6b6565656b6b656, 0xb1b1b1b1b1b1b1b1, 0x4e4e4e4e4e4e4e4e, x1, 16, x2)

inst_178:
    // Test 178:  Test with dataset: sbox64
    // result rd:x24(0x65653e3e3e65653e), rs1:x8(0xb2b2b2b2b2b2b2b2), rs2:x24(0x4d4d4d4d4d4d4d4d)
    TEST_RR_OP(aes64ds, x24, x8, x24, 0x65653e3e3e65653e, 0xb2b2b2b2b2b2b2b2, 0x4d4d4d4d4d4d4d4d, x1, 24, x2)

inst_179:
    // Test 179:  Test with dataset: sbox64
    // result rd:x25(0x5d5d4b4b4b5d5d4b), rs1:x7(0xb3b3b3b3b3b3b3b3), rs2:x23(0x4c4c4c4c4c4c4c4c)
    TEST_RR_OP(aes64ds, x25, x7, x23, 0x5d5d4b4b4b5d5d4b, 0xb3b3b3b3b3b3b3b3, 0x4c4c4c4c4c4c4c4c, x1, 32, x2)

    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with dataset: sbox64
    // result rd:x26(0xccccc6c6c6ccccc6), rs1:x6(0xb4b4b4b4b4b4b4b4), rs2:x22(0x4b4b4b4b4b4b4b4b)
    TEST_RR_OP(aes64ds, x26, x6, x22, 0xccccc6c6c6ccccc6, 0xb4b4b4b4b4b4b4b4, 0x4b4b4b4b4b4b4b4b, x1, 0, x7)

inst_181:
    // Test 181:  Test with dataset: sbox64
    // result rd:x27(0x5c5cd2d2d25c5cd2), rs1:x5(0xb5b5b5b5b5b5b5b5), rs2:x21(0x4a4a4a4a4a4a4a4a)
    TEST_RR_OP(aes64ds, x27, x5, x21, 0x5c5cd2d2d25c5cd2, 0xb5b5b5b5b5b5b5b5, 0x4a4a4a4a4a4a4a4a, x1, 8, x7)

inst_182:
    // Test 182:  Test with dataset: sbox64
    // result rd:x28(0xa4a4797979a4a479), rs1:x4(0xb6b6b6b6b6b6b6b6), rs2:x20(0x4949494949494949)
    TEST_RR_OP(aes64ds, x28, x4, x20, 0xa4a4797979a4a479, 0xb6b6b6b6b6b6b6b6, 0x4949494949494949, x1, 16, x7)

inst_183:
    // Test 183:  Test with dataset: sbox64
    // result rd:x29(0xd4d4202020d4d420), rs1:x3(0xb7b7b7b7b7b7b7b7), rs2:x19(0x4848484848484848)
    TEST_RR_OP(aes64ds, x29, x3, x19, 0xd4d4202020d4d420, 0xb7b7b7b7b7b7b7b7, 0x4848484848484848, x1, 24, x7)

inst_184:
    // Test 184:  Test with dataset: sbox64
    // result rd:x30(0x16169a9a9a16169a), rs1:x2(0xb8b8b8b8b8b8b8b8), rs2:x18(0x4747474747474747)
    TEST_RR_OP(aes64ds, x30, x2, x18, 0x16169a9a9a16169a, 0xb8b8b8b8b8b8b8b8, 0x4747474747474747, x1, 32, x7)

    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with dataset: sbox64
    // result rd:x31(0x9898dbdbdb9898db), rs1:x1(0xb9b9b9b9b9b9b9b9), rs2:x17(0x4646464646464646)
    TEST_RR_OP(aes64ds, x31, x1, x17, 0x9898dbdbdb9898db, 0xb9b9b9b9b9b9b9b9, 0x4646464646464646, x5, 0, x6)

inst_186:
    // Test 186:  Test with dataset: sbox64
    // result rd:x1(0x6868c0c0c06868c0), rs1:x31(0xbabababababababa), rs2:x16(0x4545454545454545)
    TEST_RR_OP(aes64ds, x1, x31, x16, 0x6868c0c0c06868c0, 0xbabababababababa, 0x4545454545454545, x5, 8, x6)

inst_187:
    // Test 187:  Test with dataset: sbox64
    // result rd:x2(0x8686fefefe8686fe), rs1:x30(0xbbbbbbbbbbbbbbbb), rs2:x15(0x4444444444444444)
    TEST_RR_OP(aes64ds, x2, x30, x15, 0x8686fefefe8686fe, 0xbbbbbbbbbbbbbbbb, 0x4444444444444444, x5, 16, x6)

inst_188:
    // Test 188:  Test with dataset: sbox64
    // result rd:x3(0x6464787878646478), rs1:x29(0xbcbcbcbcbcbcbcbc), rs2:x14(0x4343434343434343)
    TEST_RR_OP(aes64ds, x3, x29, x14, 0x6464787878646478, 0xbcbcbcbcbcbcbcbc, 0x4343434343434343, x5, 24, x6)

inst_189:
    // Test 189:  Test with dataset: sbox64
    // result rd:x4(0xf6f6cdcdcdf6f6cd), rs1:x28(0xbdbdbdbdbdbdbdbd), rs2:x13(0x4242424242424242)
    TEST_RR_OP(aes64ds, x4, x28, x13, 0xf6f6cdcdcdf6f6cd, 0xbdbdbdbdbdbdbdbd, 0x4242424242424242, x5, 32, x6)

    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with dataset: sbox64
    // result rd:x5(0xf8f85a5a5af8f85a), rs1:x27(0xbebebebebebebebe), rs2:x12(0x4141414141414141)
    TEST_RR_OP(aes64ds, x5, x27, x12, 0xf8f85a5a5af8f85a, 0xbebebebebebebebe, 0x4141414141414141, x1, 0, x2)

inst_191:
    // Test 191:  Test with dataset: sbox64
    // result rd:x6(0x7272f4f4f47272f4), rs1:x26(0xbfbfbfbfbfbfbfbf), rs2:x11(0x4040404040404040)
    TEST_RR_OP(aes64ds, x6, x26, x11, 0x7272f4f4f47272f4, 0xbfbfbfbfbfbfbfbf, 0x4040404040404040, x1, 8, x2)

inst_192:
    // Test 192:  Test with dataset: sbox64
    // result rd:x7(0x25251f1f1f25251f), rs1:x25(0xc0c0c0c0c0c0c0c0), rs2:x10(0x3f3f3f3f3f3f3f3f)
    TEST_RR_OP(aes64ds, x7, x25, x10, 0x25251f1f1f25251f, 0xc0c0c0c0c0c0c0c0, 0x3f3f3f3f3f3f3f3f, x1, 16, x2)

inst_193:
    // Test 193:  Test with dataset: sbox64
    // result rd:x8(0xd1d1ddddddd1d1dd), rs1:x24(0xc1c1c1c1c1c1c1c1), rs2:x9(0x3e3e3e3e3e3e3e3e)
    TEST_RR_OP(aes64ds, x8, x24, x9, 0xd1d1ddddddd1d1dd, 0xc1c1c1c1c1c1c1c1, 0x3e3e3e3e3e3e3e3e, x1, 24, x2)

inst_194:
    // Test 194:  Test with dataset: sbox64
    // result rd:x9(0x8b8ba8a8a88b8ba8), rs1:x23(0xc2c2c2c2c2c2c2c2), rs2:x8(0x3d3d3d3d3d3d3d3d)
    TEST_RR_OP(aes64ds, x9, x23, x8, 0x8b8ba8a8a88b8ba8, 0xc2c2c2c2c2c2c2c2, 0x3d3d3d3d3d3d3d3d, x1, 32, x2)

    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with dataset: sbox64
    // result rd:x10(0x6d6d3333336d6d33), rs1:x22(0xc3c3c3c3c3c3c3c3), rs2:x7(0x3c3c3c3c3c3c3c3c)
    TEST_RR_OP(aes64ds, x10, x22, x7, 0x6d6d3333336d6d33, 0xc3c3c3c3c3c3c3c3, 0x3c3c3c3c3c3c3c3c, x1, 0, x2)

inst_196:
    // Test 196:  Test with dataset: sbox64
    // result rd:x11(0x4949888888494988), rs1:x21(0xc4c4c4c4c4c4c4c4), rs2:x6(0x3b3b3b3b3b3b3b3b)
    TEST_RR_OP(aes64ds, x11, x21, x6, 0x4949888888494988, 0xc4c4c4c4c4c4c4c4, 0x3b3b3b3b3b3b3b3b, x1, 8, x2)

inst_197:
    // Test 197:  Test with dataset: sbox64
    // result rd:x12(0xa2a2070707a2a207), rs1:x20(0xc5c5c5c5c5c5c5c5), rs2:x5(0x3a3a3a3a3a3a3a3a)
    TEST_RR_OP(aes64ds, x12, x20, x5, 0xa2a2070707a2a207, 0xc5c5c5c5c5c5c5c5, 0x3a3a3a3a3a3a3a3a, x1, 16, x2)

inst_198:
    // Test 198:  Test with dataset: sbox64
    // result rd:x13(0x5b5bc7c7c75b5bc7), rs1:x19(0xc6c6c6c6c6c6c6c6), rs2:x4(0x3939393939393939)
    TEST_RR_OP(aes64ds, x13, x19, x4, 0x5b5bc7c7c75b5bc7, 0xc6c6c6c6c6c6c6c6, 0x3939393939393939, x1, 24, x2)

inst_199:
    // Test 199:  Test with dataset: sbox64
    // result rd:x14(0x7676313131767631), rs1:x18(0xc7c7c7c7c7c7c7c7), rs2:x3(0x3838383838383838)
    TEST_RR_OP(aes64ds, x14, x18, x3, 0x7676313131767631, 0xc7c7c7c7c7c7c7c7, 0x3838383838383838, x1, 32, x2)

    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with dataset: sbox64
    // result rd:x15(0xb2b2b1b1b1b2b2b1), rs1:x17(0xc8c8c8c8c8c8c8c8), rs2:x2(0x3737373737373737)
    TEST_RR_OP(aes64ds, x15, x17, x2, 0xb2b2b1b1b1b2b2b1, 0xc8c8c8c8c8c8c8c8, 0x3737373737373737, x3, 0, x4)

inst_201:
    // Test 201:  Test with dataset: sbox64
    // result rd:x16(0x2424121212242412), rs1:x16(0xc9c9c9c9c9c9c9c9), rs2:x1(0x3636363636363636)
    TEST_RR_OP(aes64ds, x16, x16, x1, 0x2424121212242412, 0xc9c9c9c9c9c9c9c9, 0x3636363636363636, x3, 8, x4)

inst_202:
    // Test 202:  Test with dataset: sbox64
    // result rd:x17(0xd9d9101010d9d910), rs1:x15(0xcacacacacacacaca), rs2:x31(0x3535353535353535)
    TEST_RR_OP(aes64ds, x17, x15, x31, 0xd9d9101010d9d910, 0xcacacacacacacaca, 0x3535353535353535, x3, 16, x4)

inst_203:
    // Test 203:  Test with dataset: sbox64
    // result rd:x18(0x2828595959282859), rs1:x14(0xcbcbcbcbcbcbcbcb), rs2:x30(0x3434343434343434)
    TEST_RR_OP(aes64ds, x18, x14, x30, 0x2828595959282859, 0xcbcbcbcbcbcbcbcb, 0x3434343434343434, x3, 24, x4)

inst_204:
    // Test 204:  Test with dataset: sbox64
    // result rd:x19(0x6666272727666627), rs1:x13(0xcccccccccccccccc), rs2:x29(0x3333333333333333)
    TEST_RR_OP(aes64ds, x19, x13, x29, 0x6666272727666627, 0xcccccccccccccccc, 0x3333333333333333, x3, 32, x4)

    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with dataset: sbox64
    // result rd:x20(0xa1a1808080a1a180), rs1:x12(0xcdcdcdcdcdcdcdcd), rs2:x28(0x3232323232323232)
    TEST_RR_OP(aes64ds, x20, x12, x28, 0xa1a1808080a1a180, 0xcdcdcdcdcdcdcdcd, 0x3232323232323232, x1, 0, x2)

inst_206:
    // Test 206:  Test with dataset: sbox64
    // result rd:x21(0x2e2eececec2e2eec), rs1:x11(0xcececececececece), rs2:x27(0x3131313131313131)
    TEST_RR_OP(aes64ds, x21, x11, x27, 0x2e2eececec2e2eec, 0xcececececececece, 0x3131313131313131, x1, 8, x2)

inst_207:
    // Test 207:  Test with dataset: sbox64
    // result rd:x22(0x08085f5f5f08085f), rs1:x10(0xcfcfcfcfcfcfcfcf), rs2:x26(0x3030303030303030)
    TEST_RR_OP(aes64ds, x22, x10, x26, 0x08085f5f5f08085f, 0xcfcfcfcfcfcfcfcf, 0x3030303030303030, x1, 16, x2)

inst_208:
    // Test 208:  Test with dataset: sbox64
    // result rd:x23(0x4e4e6060604e4e60), rs1:x9(0xd0d0d0d0d0d0d0d0), rs2:x25(0x2f2f2f2f2f2f2f2f)
    TEST_RR_OP(aes64ds, x23, x9, x25, 0x4e4e6060604e4e60, 0xd0d0d0d0d0d0d0d0, 0x2f2f2f2f2f2f2f2f, x1, 24, x2)

inst_209:
    // Test 209:  Test with dataset: sbox64
    // result rd:x24(0xc3c3515151c3c351), rs1:x8(0xd1d1d1d1d1d1d1d1), rs2:x24(0x2e2e2e2e2e2e2e2e)
    TEST_RR_OP(aes64ds, x24, x8, x24, 0xc3c3515151c3c351, 0xd1d1d1d1d1d1d1d1, 0x2e2e2e2e2e2e2e2e, x1, 32, x2)

    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with dataset: sbox64
    // result rd:x25(0xfafa7f7f7ffafa7f), rs1:x7(0xd2d2d2d2d2d2d2d2), rs2:x23(0x2d2d2d2d2d2d2d2d)
    TEST_RR_OP(aes64ds, x25, x7, x23, 0xfafa7f7f7ffafa7f, 0xd2d2d2d2d2d2d2d2, 0x2d2d2d2d2d2d2d2d, x1, 0, x2)

inst_211:
    // Test 211:  Test with dataset: sbox64
    // result rd:x26(0x4242a9a9a94242a9), rs1:x6(0xd3d3d3d3d3d3d3d3), rs2:x22(0x2c2c2c2c2c2c2c2c)
    TEST_RR_OP(aes64ds, x26, x6, x22, 0x4242a9a9a94242a9, 0xd3d3d3d3d3d3d3d3, 0x2c2c2c2c2c2c2c2c, x1, 8, x2)

inst_212:
    // Test 212:  Test with dataset: sbox64
    // result rd:x27(0x0b0b1919190b0b19), rs1:x5(0xd4d4d4d4d4d4d4d4), rs2:x21(0x2b2b2b2b2b2b2b2b)
    TEST_RR_OP(aes64ds, x27, x5, x21, 0x0b0b1919190b0b19, 0xd4d4d4d4d4d4d4d4, 0x2b2b2b2b2b2b2b2b, x1, 16, x2)

inst_213:
    // Test 213:  Test with dataset: sbox64
    // result rd:x28(0x9595b5b5b59595b5), rs1:x4(0xd5d5d5d5d5d5d5d5), rs2:x20(0x2a2a2a2a2a2a2a2a)
    TEST_RR_OP(aes64ds, x28, x4, x20, 0x9595b5b5b59595b5, 0xd5d5d5d5d5d5d5d5, 0x2a2a2a2a2a2a2a2a, x1, 24, x2)

inst_214:
    // Test 214:  Test with dataset: sbox64
    // result rd:x29(0x4c4c4a4a4a4c4c4a), rs1:x3(0xd6d6d6d6d6d6d6d6), rs2:x19(0x2929292929292929)
    TEST_RR_OP(aes64ds, x29, x3, x19, 0x4c4c4a4a4a4c4c4a, 0xd6d6d6d6d6d6d6d6, 0x2929292929292929, x1, 32, x2)

    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with dataset: sbox64
    // result rd:x30(0xeeee0d0d0deeee0d), rs1:x2(0xd7d7d7d7d7d7d7d7), rs2:x18(0x2828282828282828)
    TEST_RR_OP(aes64ds, x30, x2, x18, 0xeeee0d0d0deeee0d, 0xd7d7d7d7d7d7d7d7, 0x2828282828282828, x4, 0, x5)

inst_216:
    // Test 216:  Test with dataset: sbox64
    // result rd:x31(0x3d3d2d2d2d3d3d2d), rs1:x1(0xd8d8d8d8d8d8d8d8), rs2:x17(0x2727272727272727)
    TEST_RR_OP(aes64ds, x31, x1, x17, 0x3d3d2d2d2d3d3d2d, 0xd8d8d8d8d8d8d8d8, 0x2727272727272727, x4, 8, x5)

inst_217:
    // Test 217:  Test with dataset: sbox64
    // result rd:x1(0x2323e5e5e52323e5), rs1:x31(0xd9d9d9d9d9d9d9d9), rs2:x16(0x2626262626262626)
    TEST_RR_OP(aes64ds, x1, x31, x16, 0x2323e5e5e52323e5, 0xd9d9d9d9d9d9d9d9, 0x2626262626262626, x4, 16, x5)

inst_218:
    // Test 218:  Test with dataset: sbox64
    // result rd:x2(0xc2c27a7a7ac2c27a), rs1:x30(0xdadadadadadadada), rs2:x15(0x2525252525252525)
    TEST_RR_OP(aes64ds, x2, x30, x15, 0xc2c27a7a7ac2c27a, 0xdadadadadadadada, 0x2525252525252525, x4, 24, x5)

inst_219:
    // Test 219:  Test with dataset: sbox64
    // result rd:x3(0xa6a69f9f9fa6a69f), rs1:x29(0xdbdbdbdbdbdbdbdb), rs2:x14(0x2424242424242424)
    TEST_RR_OP(aes64ds, x3, x29, x14, 0xa6a69f9f9fa6a69f, 0xdbdbdbdbdbdbdbdb, 0x2424242424242424, x4, 32, x5)

    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with dataset: sbox64
    // result rd:x4(0x3232939393323293), rs1:x28(0xdcdcdcdcdcdcdcdc), rs2:x13(0x2323232323232323)
    TEST_RR_OP(aes64ds, x4, x28, x13, 0x3232939393323293, 0xdcdcdcdcdcdcdcdc, 0x2323232323232323, x1, 0, x2)

inst_221:
    // Test 221:  Test with dataset: sbox64
    // result rd:x5(0x9494c9c9c99494c9), rs1:x27(0xdddddddddddddddd), rs2:x12(0x2222222222222222)
    TEST_RR_OP(aes64ds, x5, x27, x12, 0x9494c9c9c99494c9, 0xdddddddddddddddd, 0x2222222222222222, x1, 8, x2)

inst_222:
    // Test 222:  Test with dataset: sbox64
    // result rd:x6(0x7b7b9c9c9c7b7b9c), rs1:x26(0xdededededededede), rs2:x11(0x2121212121212121)
    TEST_RR_OP(aes64ds, x6, x26, x11, 0x7b7b9c9c9c7b7b9c, 0xdededededededede, 0x2121212121212121, x1, 16, x2)

inst_223:
    // Test 223:  Test with dataset: sbox64
    // result rd:x7(0x5454efefef5454ef), rs1:x25(0xdfdfdfdfdfdfdfdf), rs2:x10(0x2020202020202020)
    TEST_RR_OP(aes64ds, x7, x25, x10, 0x5454efefef5454ef, 0xdfdfdfdfdfdfdfdf, 0x2020202020202020, x1, 24, x2)

inst_224:
    // Test 224:  Test with dataset: sbox64
    // result rd:x8(0xcbcba0a0a0cbcba0), rs1:x24(0xe0e0e0e0e0e0e0e0), rs2:x9(0x1f1f1f1f1f1f1f1f)
    TEST_RR_OP(aes64ds, x8, x24, x9, 0xcbcba0a0a0cbcba0, 0xe0e0e0e0e0e0e0e0, 0x1f1f1f1f1f1f1f1f, x1, 32, x2)

    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with dataset: sbox64
    // result rd:x9(0xe9e9e0e0e0e9e9e0), rs1:x23(0xe1e1e1e1e1e1e1e1), rs2:x8(0x1e1e1e1e1e1e1e1e)
    TEST_RR_OP(aes64ds, x9, x23, x8, 0xe9e9e0e0e0e9e9e0, 0xe1e1e1e1e1e1e1e1, 0x1e1e1e1e1e1e1e1e, x1, 0, x2)

inst_226:
    // Test 226:  Test with dataset: sbox64
    // result rd:x10(0xdede3b3b3bdede3b), rs1:x22(0xe2e2e2e2e2e2e2e2), rs2:x7(0x1d1d1d1d1d1d1d1d)
    TEST_RR_OP(aes64ds, x10, x22, x7, 0xdede3b3b3bdede3b, 0xe2e2e2e2e2e2e2e2, 0x1d1d1d1d1d1d1d1d, x1, 8, x2)

inst_227:
    // Test 227:  Test with dataset: sbox64
    // result rd:x11(0xc4c44d4d4dc4c44d), rs1:x21(0xe3e3e3e3e3e3e3e3), rs2:x6(0x1c1c1c1c1c1c1c1c)
    TEST_RR_OP(aes64ds, x11, x21, x6, 0xc4c44d4d4dc4c44d, 0xe3e3e3e3e3e3e3e3, 0x1c1c1c1c1c1c1c1c, x1, 16, x2)

inst_228:
    // Test 228:  Test with dataset: sbox64
    // result rd:x12(0x4444aeaeae4444ae), rs1:x20(0xe4e4e4e4e4e4e4e4), rs2:x5(0x1b1b1b1b1b1b1b1b)
    TEST_RR_OP(aes64ds, x12, x20, x5, 0x4444aeaeae4444ae, 0xe4e4e4e4e4e4e4e4, 0x1b1b1b1b1b1b1b1b, x1, 24, x2)

inst_229:
    // Test 229:  Test with dataset: sbox64
    // result rd:x13(0x43432a2a2a43432a), rs1:x19(0xe5e5e5e5e5e5e5e5), rs2:x4(0x1a1a1a1a1a1a1a1a)
    TEST_RR_OP(aes64ds, x13, x19, x4, 0x43432a2a2a43432a, 0xe5e5e5e5e5e5e5e5, 0x1a1a1a1a1a1a1a1a, x1, 32, x2)

    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with dataset: sbox64
    // result rd:x14(0x8e8ef5f5f58e8ef5), rs1:x18(0xe6e6e6e6e6e6e6e6), rs2:x3(0x1919191919191919)
    TEST_RR_OP(aes64ds, x14, x18, x3, 0x8e8ef5f5f58e8ef5, 0xe6e6e6e6e6e6e6e6, 0x1919191919191919, x4, 0, x5)

inst_231:
    // Test 231:  Test with dataset: sbox64
    // result rd:x15(0x3434b0b0b03434b0), rs1:x17(0xe7e7e7e7e7e7e7e7), rs2:x2(0x1818181818181818)
    TEST_RR_OP(aes64ds, x15, x17, x2, 0x3434b0b0b03434b0, 0xe7e7e7e7e7e7e7e7, 0x1818181818181818, x4, 8, x5)

inst_232:
    // Test 232:  Test with dataset: sbox64
    // result rd:x16(0x8787c8c8c88787c8), rs1:x16(0xe8e8e8e8e8e8e8e8), rs2:x1(0x1717171717171717)
    TEST_RR_OP(aes64ds, x16, x16, x1, 0x8787c8c8c88787c8, 0xe8e8e8e8e8e8e8e8, 0x1717171717171717, x4, 16, x5)

inst_233:
    // Test 233:  Test with dataset: sbox64
    // result rd:x17(0xffffebebebffffeb), rs1:x15(0xe9e9e9e9e9e9e9e9), rs2:x31(0x1616161616161616)
    TEST_RR_OP(aes64ds, x17, x15, x31, 0xffffebebebffffeb, 0xe9e9e9e9e9e9e9e9, 0x1616161616161616, x4, 24, x5)

inst_234:
    // Test 234:  Test with dataset: sbox64
    // result rd:x18(0x2f2fbbbbbb2f2fbb), rs1:x14(0xeaeaeaeaeaeaeaea), rs2:x30(0x1515151515151515)
    TEST_RR_OP(aes64ds, x18, x14, x30, 0x2f2fbbbbbb2f2fbb, 0xeaeaeaeaeaeaeaea, 0x1515151515151515, x4, 32, x5)

    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with dataset: sbox64
    // result rd:x19(0x9b9b3c3c3c9b9b3c), rs1:x13(0xebebebebebebebeb), rs2:x29(0x1414141414141414)
    TEST_RR_OP(aes64ds, x19, x13, x29, 0x9b9b3c3c3c9b9b3c, 0xebebebebebebebeb, 0x1414141414141414, x1, 0, x2)

inst_236:
    // Test 236:  Test with dataset: sbox64
    // result rd:x20(0x8282838383828283), rs1:x12(0xecececececececec), rs2:x28(0x1313131313131313)
    TEST_RR_OP(aes64ds, x20, x12, x28, 0x8282838383828283, 0xecececececececec, 0x1313131313131313, x1, 8, x2)

inst_237:
    // Test 237:  Test with dataset: sbox64
    // result rd:x21(0x3939535353393953), rs1:x11(0xedededededededed), rs2:x27(0x1212121212121212)
    TEST_RR_OP(aes64ds, x21, x11, x27, 0x3939535353393953, 0xedededededededed, 0x1212121212121212, x1, 16, x2)

inst_238:
    // Test 238:  Test with dataset: sbox64
    // result rd:x22(0xe3e3999999e3e399), rs1:x10(0xeeeeeeeeeeeeeeee), rs2:x26(0x1111111111111111)
    TEST_RR_OP(aes64ds, x22, x10, x26, 0xe3e3999999e3e399, 0xeeeeeeeeeeeeeeee, 0x1111111111111111, x1, 24, x2)

inst_239:
    // Test 239:  Test with dataset: sbox64
    // result rd:x23(0x7c7c6161617c7c61), rs1:x9(0xefefefefefefefef), rs2:x25(0x1010101010101010)
    TEST_RR_OP(aes64ds, x23, x9, x25, 0x7c7c6161617c7c61, 0xefefefefefefefef, 0x1010101010101010, x1, 32, x2)

    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with dataset: sbox64
    // result rd:x24(0xfbfb171717fbfb17), rs1:x8(0xf0f0f0f0f0f0f0f0), rs2:x24(0x0f0f0f0f0f0f0f0f)
    TEST_RR_OP(aes64ds, x24, x8, x24, 0xfbfb171717fbfb17, 0xf0f0f0f0f0f0f0f0, 0xf0f0f0f0f0f0f0f, x1, 0, x2)

inst_241:
    // Test 241:  Test with dataset: sbox64
    // result rd:x25(0xd7d72b2b2bd7d72b), rs1:x7(0xf1f1f1f1f1f1f1f1), rs2:x23(0x0e0e0e0e0e0e0e0e)
    TEST_RR_OP(aes64ds, x25, x7, x23, 0xd7d72b2b2bd7d72b, 0xf1f1f1f1f1f1f1f1, 0xe0e0e0e0e0e0e0e, x1, 8, x2)

inst_242:
    // Test 242:  Test with dataset: sbox64
    // result rd:x26(0xf3f3040404f3f304), rs1:x6(0xf2f2f2f2f2f2f2f2), rs2:x22(0x0d0d0d0d0d0d0d0d)
    TEST_RR_OP(aes64ds, x26, x6, x22, 0xf3f3040404f3f304, 0xf2f2f2f2f2f2f2f2, 0xd0d0d0d0d0d0d0d, x1, 16, x2)

inst_243:
    // Test 243:  Test with dataset: sbox64
    // result rd:x27(0x81817e7e7e81817e), rs1:x5(0xf3f3f3f3f3f3f3f3), rs2:x21(0x0c0c0c0c0c0c0c0c)
    TEST_RR_OP(aes64ds, x27, x5, x21, 0x81817e7e7e81817e, 0xf3f3f3f3f3f3f3f3, 0xc0c0c0c0c0c0c0c, x1, 24, x2)

inst_244:
    // Test 244:  Test with dataset: sbox64
    // result rd:x28(0x9e9ebababa9e9eba), rs1:x4(0xf4f4f4f4f4f4f4f4), rs2:x20(0x0b0b0b0b0b0b0b0b)
    TEST_RR_OP(aes64ds, x28, x4, x20, 0x9e9ebababa9e9eba, 0xf4f4f4f4f4f4f4f4, 0xb0b0b0b0b0b0b0b, x1, 32, x2)

    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with dataset: sbox64
    // result rd:x29(0xa3a3777777a3a377), rs1:x3(0xf5f5f5f5f5f5f5f5), rs2:x19(0x0a0a0a0a0a0a0a0a)
    TEST_RR_OP(aes64ds, x29, x3, x19, 0xa3a3777777a3a377, 0xf5f5f5f5f5f5f5f5, 0xa0a0a0a0a0a0a0a, x4, 0, x5)

inst_246:
    // Test 246:  Test with dataset: sbox64
    // result rd:x30(0x4040d6d6d64040d6), rs1:x2(0xf6f6f6f6f6f6f6f6), rs2:x18(0x0909090909090909)
    TEST_RR_OP(aes64ds, x30, x2, x18, 0x4040d6d6d64040d6, 0xf6f6f6f6f6f6f6f6, 0x909090909090909, x4, 8, x5)

inst_247:
    // Test 247:  Test with dataset: sbox64
    // result rd:x31(0xbfbf262626bfbf26), rs1:x1(0xf7f7f7f7f7f7f7f7), rs2:x17(0x0808080808080808)
    TEST_RR_OP(aes64ds, x31, x1, x17, 0xbfbf262626bfbf26, 0xf7f7f7f7f7f7f7f7, 0x808080808080808, x4, 16, x5)

inst_248:
    // Test 248:  Test with dataset: sbox64
    // result rd:x1(0x3838e1e1e13838e1), rs1:x31(0xf8f8f8f8f8f8f8f8), rs2:x16(0x0707070707070707)
    TEST_RR_OP(aes64ds, x1, x31, x16, 0x3838e1e1e13838e1, 0xf8f8f8f8f8f8f8f8, 0x707070707070707, x4, 24, x5)

inst_249:
    // Test 249:  Test with dataset: sbox64
    // result rd:x2(0xa5a5696969a5a569), rs1:x30(0xf9f9f9f9f9f9f9f9), rs2:x15(0x0606060606060606)
    TEST_RR_OP(aes64ds, x2, x30, x15, 0xa5a5696969a5a569, 0xf9f9f9f9f9f9f9f9, 0x606060606060606, x4, 32, x5)

    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with dataset: sbox64
    // result rd:x3(0x3636141414363614), rs1:x29(0xfafafafafafafafa), rs2:x14(0x0505050505050505)
    TEST_RR_OP(aes64ds, x3, x29, x14, 0x3636141414363614, 0xfafafafafafafafa, 0x505050505050505, x1, 0, x2)

inst_251:
    // Test 251:  Test with dataset: sbox64
    // result rd:x4(0x3030636363303063), rs1:x28(0xfbfbfbfbfbfbfbfb), rs2:x13(0x0404040404040404)
    TEST_RR_OP(aes64ds, x4, x28, x13, 0x3030636363303063, 0xfbfbfbfbfbfbfbfb, 0x404040404040404, x1, 8, x2)

inst_252:
    // Test 252:  Test with dataset: sbox64
    // result rd:x5(0xd5d5555555d5d555), rs1:x27(0xfcfcfcfcfcfcfcfc), rs2:x12(0x0303030303030303)
    TEST_RR_OP(aes64ds, x5, x27, x12, 0xd5d5555555d5d555, 0xfcfcfcfcfcfcfcfc, 0x303030303030303, x1, 16, x2)

inst_253:
    // Test 253:  Test with dataset: sbox64
    // result rd:x6(0x6a6a2121216a6a21), rs1:x26(0xfdfdfdfdfdfdfdfd), rs2:x11(0x0202020202020202)
    TEST_RR_OP(aes64ds, x6, x26, x11, 0x6a6a2121216a6a21, 0xfdfdfdfdfdfdfdfd, 0x202020202020202, x1, 24, x2)

inst_254:
    // Test 254:  Test with dataset: sbox64
    // result rd:x7(0x09090c0c0c09090c), rs1:x25(0xfefefefefefefefe), rs2:x10(0x0101010101010101)
    TEST_RR_OP(aes64ds, x7, x25, x10, 0x09090c0c0c09090c, 0xfefefefefefefefe, 0x101010101010101, x1, 32, x2)

    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ds)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ds)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with dataset: sbox64
    // result rd:x8(0x52527d7d7d52527d), rs1:x24(0xffffffffffffffff), rs2:x9(0x0000000000000000)
    TEST_RR_OP(aes64ds, x8, x24, x9, 0x52527d7d7d52527d, 0xffffffffffffffff, 0x0, x1, 0, x2)
	
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

