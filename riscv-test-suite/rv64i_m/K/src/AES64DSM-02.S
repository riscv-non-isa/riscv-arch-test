// RISC-V Architectural Validation Test AES64DSM-02
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

    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with dataset: sbox64
    // result rd:x1(0x9fc1b0eeee9fc1b0), rs1:x31(0x0000000000000000), rs2:x16(0xffffffffffffffff)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0x9fc1b0eeee9fc1b0, 0x0, 0xffffffffffffffff, x6, 0, x7)

inst_1:
    // Test 1:  Test with dataset: sbox64
    // result rd:x2(0x1218171d1d121817), rs1:x30(0x0101010101010101), rs2:x15(0xfefefefefefefefe)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x1218171d1d121817, 0x101010101010101, 0xfefefefefefefefe, x6, 8, x7)

inst_2:
    // Test 2:  Test with dataset: sbox64
    // result rd:x3(0x8016cb5d5d8016cb), rs1:x29(0x0202020202020202), rs2:x14(0xfdfdfdfdfdfdfdfd)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0x8016cb5d5d8016cb, 0x202020202020202, 0xfdfdfdfdfdfdfdfd, x6, 16, x7)

inst_3:
    // Test 3:  Test with dataset: sbox64
    // result rd:x4(0x7863f8e3e37863f8), rs1:x28(0x0303030303030303), rs2:x13(0xfcfcfcfcfcfcfcfc)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0x7863f8e3e37863f8, 0x303030303030303, 0xfcfcfcfcfcfcfcfc, x6, 24, x7)

inst_4:
    // Test 4:  Test with dataset: sbox64
    // result rd:x5(0x9234c167679234c1), rs1:x27(0x0404040404040404), rs2:x12(0xfbfbfbfbfbfbfbfb)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0x9234c167679234c1, 0x404040404040404, 0xfbfbfbfbfbfbfbfb, x6, 32, x7)

    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with dataset: sbox64
    // result rd:x6(0xd89cfabebed89cfa), rs1:x26(0x0505050505050505), rs2:x11(0xfafafafafafafafa)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0xd89cfabebed89cfa, 0x505050505050505, 0xfafafafafafafafa, x1, 0, x2)

inst_6:
    // Test 6:  Test with dataset: sbox64
    // result rd:x7(0xf7743bb8b8f7743b), rs1:x25(0x0606060606060606), rs2:x10(0xf9f9f9f9f9f9f9f9)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0xf7743bb8b8f7743b, 0x606060606060606, 0xf9f9f9f9f9f9f9f9, x1, 8, x2)

inst_7:
    // Test 7:  Test with dataset: sbox64
    // result rd:x8(0x01a8d8717101a8d8), rs1:x24(0x0707070707070707), rs2:x9(0xf8f8f8f8f8f8f8f8)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0x01a8d8717101a8d8, 0x707070707070707, 0xf8f8f8f8f8f8f8f8, x1, 16, x2)

inst_8:
    // Test 8:  Test with dataset: sbox64
    // result rd:x9(0x5d74c4eded5d74c4), rs1:x23(0x0808080808080808), rs2:x8(0xf7f7f7f7f7f7f7f7)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0x5d74c4eded5d74c4, 0x808080808080808, 0xf7f7f7f7f7f7f7f7, x1, 24, x2)

inst_9:
    // Test 9:  Test with dataset: sbox64
    // result rd:x10(0x8fb8192e2e8fb819), rs1:x22(0x0909090909090909), rs2:x7(0xf6f6f6f6f6f6f6f6)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0x8fb8192e2e8fb819, 0x909090909090909, 0xf6f6f6f6f6f6f6f6, x1, 32, x2)

    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with dataset: sbox64
    // result rd:x11(0xb90a6ddedeb90a6d), rs1:x21(0x0a0a0a0a0a0a0a0a), rs2:x6(0xf5f5f5f5f5f5f5f5)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0xb90a6ddedeb90a6d, 0xa0a0a0a0a0a0a0a, 0xf5f5f5f5f5f5f5f5, x1, 0, x7)

inst_11:
    // Test 11:  Test with dataset: sbox64
    // result rd:x12(0x622a460e0e622a46), rs1:x20(0x0b0b0b0b0b0b0b0b), rs2:x5(0xf4f4f4f4f4f4f4f4)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0x622a460e0e622a46, 0xb0b0b0b0b0b0b0b, 0xf4f4f4f4f4f4f4f4, x1, 8, x7)

inst_12:
    // Test 12:  Test with dataset: sbox64
    // result rd:x13(0x4aafb550504aafb5), rs1:x19(0x0c0c0c0c0c0c0c0c), rs2:x4(0xf3f3f3f3f3f3f3f3)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0x4aafb550504aafb5, 0xc0c0c0c0c0c0c0c, 0xf3f3f3f3f3f3f3f3, x1, 16, x7)

inst_13:
    // Test 13:  Test with dataset: sbox64
    // result rd:x14(0x00f5f7020200f5f7), rs1:x18(0x0d0d0d0d0d0d0d0d), rs2:x3(0xf2f2f2f2f2f2f2f2)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0x00f5f7020200f5f7, 0xd0d0d0d0d0d0d0d, 0xf2f2f2f2f2f2f2f2, x1, 24, x7)

inst_14:
    // Test 14:  Test with dataset: sbox64
    // result rd:x15(0x15f6e90a0a15f6e9), rs1:x17(0x0e0e0e0e0e0e0e0e), rs2:x2(0xf1f1f1f1f1f1f1f1)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0x15f6e90a0a15f6e9, 0xe0e0e0e0e0e0e0e, 0xf1f1f1f1f1f1f1f1, x1, 32, x7)

    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with dataset: sbox64
    // result rd:x16(0x498aa56666498aa5), rs1:x16(0x0f0f0f0f0f0f0f0f), rs2:x1(0xf0f0f0f0f0f0f0f0)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0x498aa56666498aa5, 0xf0f0f0f0f0f0f0f, 0xf0f0f0f0f0f0f0f0, x2, 0, x3)

inst_16:
    // Test 16:  Test with dataset: sbox64
    // result rd:x17(0x2f153208082f1532), rs1:x15(0x1010101010101010), rs2:x31(0xefefefefefefefef)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0x2f153208082f1532, 0x1010101010101010, 0xefefefefefefefef, x2, 8, x3)

inst_17:
    // Test 17:  Test with dataset: sbox64
    // result rd:x18(0x9e6ae410109e6ae4), rs1:x14(0x1111111111111111), rs2:x30(0xeeeeeeeeeeeeeeee)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0x9e6ae410109e6ae4, 0x1111111111111111, 0xeeeeeeeeeeeeeeee, x2, 16, x3)

inst_18:
    // Test 18:  Test with dataset: sbox64
    // result rd:x19(0x34e05e8a8a34e05e), rs1:x13(0x1212121212121212), rs2:x29(0xedededededededed)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0x34e05e8a8a34e05e, 0x1212121212121212, 0xedededededededed, x2, 24, x3)

inst_19:
    // Test 19:  Test with dataset: sbox64
    // result rd:x20(0x8587848686858784), rs1:x12(0x1313131313131313), rs2:x28(0xecececececececec)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0x8587848686858784, 0x1313131313131313, 0xecececececececec, x2, 32, x3)

    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with dataset: sbox64
    // result rd:x21(0xc396643131c39664), rs1:x11(0x1414141414141414), rs2:x27(0xebebebebebebebeb)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0xc396643131c39664, 0x1414141414141414, 0xebebebebebebebeb, x1, 0, x2)

inst_21:
    // Test 21:  Test with dataset: sbox64
    // result rd:x22(0xeedd7a4949eedd7a), rs1:x10(0x1515151515151515), rs2:x26(0xeaeaeaeaeaeaeaea)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0xeedd7a4949eedd7a, 0x1515151515151515, 0xeaeaeaeaeaeaeaea, x1, 8, x2)

inst_22:
    // Test 22:  Test with dataset: sbox64
    // result rd:x23(0x93bb87afaf93bb87), rs1:x9(0x1616161616161616), rs2:x25(0xe9e9e9e9e9e9e9e9)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0x93bb87afaf93bb87, 0x1616161616161616, 0xe9e9e9e9e9e9e9e9, x1, 16, x2)

inst_23:
    // Test 23:  Test with dataset: sbox64
    // result rd:x24(0x71ef3ea0a071ef3e), rs1:x8(0x1717171717171717), rs2:x24(0xe8e8e8e8e8e8e8e8)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0x71ef3ea0a071ef3e, 0x1717171717171717, 0xe8e8e8e8e8e8e8e8, x1, 24, x2)

inst_24:
    // Test 24:  Test with dataset: sbox64
    // result rd:x25(0x8596011212859601), rs1:x7(0x1818181818181818), rs2:x23(0xe7e7e7e7e7e7e7e7)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0x8596011212859601, 0x1818181818181818, 0xe7e7e7e7e7e7e7e7, x1, 32, x2)

    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with dataset: sbox64
    // result rd:x26(0xf4028f7979f4028f), rs1:x6(0x1919191919191919), rs2:x22(0xe6e6e6e6e6e6e6e6)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0xf4028f7979f4028f, 0x1919191919191919, 0xe6e6e6e6e6e6e6e6, x1, 0, x7)

inst_26:
    // Test 26:  Test with dataset: sbox64
    // result rd:x27(0x47952efcfc47952e), rs1:x5(0x1a1a1a1a1a1a1a1a), rs2:x21(0xe5e5e5e5e5e5e5e5)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0x47952efcfc47952e, 0x1a1a1a1a1a1a1a1a, 0xe5e5e5e5e5e5e5e5, x1, 8, x7)

inst_27:
    // Test 27:  Test with dataset: sbox64
    // result rd:x28(0xe42b0ec1c1e42b0e), rs1:x4(0x1b1b1b1b1b1b1b1b), rs2:x20(0xe4e4e4e4e4e4e4e4)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0xe42b0ec1c1e42b0e, 0x1b1b1b1b1b1b1b1b, 0xe4e4e4e4e4e4e4e4, x1, 16, x7)

inst_28:
    // Test 28:  Test with dataset: sbox64
    // result rd:x29(0x565fdfd6d6565fdf), rs1:x3(0x1c1c1c1c1c1c1c1c), rs2:x19(0xe3e3e3e3e3e3e3e3)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0x565fdfd6d6565fdf, 0x1c1c1c1c1c1c1c1c, 0xe3e3e3e3e3e3e3e3, x1, 24, x7)

inst_29:
    // Test 29:  Test with dataset: sbox64
    // result rd:x30(0x5382b667675382b6), rs1:x2(0x1d1d1d1d1d1d1d1d), rs2:x18(0xe2e2e2e2e2e2e2e2)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0x5382b667675382b6, 0x1d1d1d1d1d1d1d1d, 0xe2e2e2e2e2e2e2e2, x1, 32, x7)

    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with dataset: sbox64
    // result rd:x31(0xd6c4dfcdcdd6c4df), rs1:x1(0x1e1e1e1e1e1e1e1e), rs2:x17(0xe1e1e1e1e1e1e1e1)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0xd6c4dfcdcdd6c4df, 0x1e1e1e1e1e1e1e1e, 0xe1e1e1e1e1e1e1e1, x5, 0, x6)

inst_31:
    // Test 31:  Test with dataset: sbox64
    // result rd:x1(0xc117aa7c7cc117aa), rs1:x31(0x1f1f1f1f1f1f1f1f), rs2:x16(0xe0e0e0e0e0e0e0e0)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0xc117aa7c7cc117aa, 0x1f1f1f1f1f1f1f1f, 0xe0e0e0e0e0e0e0e0, x5, 8, x6)

inst_32:
    // Test 32:  Test with dataset: sbox64
    // result rd:x2(0x5835e38e8e5835e3), rs1:x30(0x2020202020202020), rs2:x15(0xdfdfdfdfdfdfdfdf)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x5835e38e8e5835e3, 0x2020202020202020, 0xdfdfdfdfdfdfdfdf, x5, 16, x6)

inst_33:
    // Test 33:  Test with dataset: sbox64
    // result rd:x3(0xf82d1fcacaf82d1f), rs1:x29(0x2121212121212121), rs2:x14(0xdededededededede)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0xf82d1fcacaf82d1f, 0x2121212121212121, 0xdededededededede, x5, 24, x6)

inst_34:
    // Test 34:  Test with dataset: sbox64
    // result rd:x4(0x1ca641fbfb1ca641), rs1:x28(0x2222222222222222), rs2:x13(0xdddddddddddddddd)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0x1ca641fbfb1ca641, 0x2222222222222222, 0xdddddddddddddddd, x5, 32, x6)

    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with dataset: sbox64
    // result rd:x5(0x7821d980807821d9), rs1:x27(0x2323232323232323), rs2:x12(0xdcdcdcdcdcdcdcdc)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0x7821d980807821d9, 0x2323232323232323, 0xdcdcdcdcdcdcdcdc, x1, 0, x2)

inst_36:
    // Test 36:  Test with dataset: sbox64
    // result rd:x6(0x097b304242097b30), rs1:x26(0x2424242424242424), rs2:x11(0xdbdbdbdbdbdbdbdb)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0x097b304242097b30, 0x2424242424242424, 0xdbdbdbdbdbdbdbdb, x1, 8, x2)

inst_37:
    // Test 37:  Test with dataset: sbox64
    // result rd:x7(0xc7ac7f1414c7ac7f), rs1:x25(0x2525252525252525), rs2:x10(0xdadadadadadadada)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0xc7ac7f1414c7ac7f, 0x2525252525252525, 0xdadadadadadadada, x1, 16, x2)

inst_38:
    // Test 38:  Test with dataset: sbox64
    // result rd:x8(0x47d081161647d081), rs1:x24(0x2626262626262626), rs2:x9(0xd9d9d9d9d9d9d9d9)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0x47d081161647d081, 0x2626262626262626, 0xd9d9d9d9d9d9d9d9, x1, 24, x2)

inst_39:
    // Test 39:  Test with dataset: sbox64
    // result rd:x9(0x4d6d5d7d7d4d6d5d), rs1:x23(0x2727272727272727), rs2:x8(0xd8d8d8d8d8d8d8d8)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0x4d6d5d7d7d4d6d5d, 0x2727272727272727, 0xd8d8d8d8d8d8d8d8, x1, 32, x2)

    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with dataset: sbox64
    // result rd:x10(0x71ac924f4f71ac92), rs1:x22(0x2828282828282828), rs2:x7(0xd7d7d7d7d7d7d7d7)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0x71ac924f4f71ac92, 0x2828282828282828, 0xd7d7d7d7d7d7d7d7, x1, 0, x2)

inst_41:
    // Test 41:  Test with dataset: sbox64
    // result rd:x11(0x5e525854545e5258), rs1:x21(0x2929292929292929), rs2:x6(0xd6d6d6d6d6d6d6d6)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0x5e525854545e5258, 0x2929292929292929, 0xd6d6d6d6d6d6d6d6, x1, 8, x2)

inst_42:
    // Test 42:  Test with dataset: sbox64
    // result rd:x12(0x7535551515753555), rs1:x20(0x2a2a2a2a2a2a2a2a), rs2:x5(0xd5d5d5d5d5d5d5d5)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0x7535551515753555, 0x2a2a2a2a2a2a2a2a, 0xd5d5d5d5d5d5d5d5, x1, 16, x2)

inst_43:
    // Test 43:  Test with dataset: sbox64
    // result rd:x13(0x7551674343755167), rs1:x19(0x2b2b2b2b2b2b2b2b), rs2:x4(0xd4d4d4d4d4d4d4d4)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0x7551674343755167, 0x2b2b2b2b2b2b2b2b, 0xd4d4d4d4d4d4d4d4, x1, 24, x2)

inst_44:
    // Test 44:  Test with dataset: sbox64
    // result rd:x14(0xe5280ec3c3e5280e), rs1:x18(0x2c2c2c2c2c2c2c2c), rs2:x3(0xd3d3d3d3d3d3d3d3)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0xe5280ec3c3e5280e, 0x2c2c2c2c2c2c2c2c, 0xd3d3d3d3d3d3d3d3, x1, 32, x2)

    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with dataset: sbox64
    // result rd:x15(0x4c5dc9d8d84c5dc9), rs1:x17(0x2d2d2d2d2d2d2d2d), rs2:x2(0xd2d2d2d2d2d2d2d2)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0x4c5dc9d8d84c5dc9, 0x2d2d2d2d2d2d2d2d, 0xd2d2d2d2d2d2d2d2, x3, 0, x4)

inst_46:
    // Test 46:  Test with dataset: sbox64
    // result rd:x16(0x102f82bdbd102f82), rs1:x16(0x2e2e2e2e2e2e2e2e), rs2:x1(0xd1d1d1d1d1d1d1d1)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0x102f82bdbd102f82, 0x2e2e2e2e2e2e2e2e, 0xd1d1d1d1d1d1d1d1, x3, 8, x4)

inst_47:
    // Test 47:  Test with dataset: sbox64
    // result rd:x17(0x84d8aaf6f684d8aa), rs1:x15(0x2f2f2f2f2f2f2f2f), rs2:x31(0xd0d0d0d0d0d0d0d0)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0x84d8aaf6f684d8aa, 0x2f2f2f2f2f2f2f2f, 0xd0d0d0d0d0d0d0d0, x3, 16, x4)

inst_48:
    // Test 48:  Test with dataset: sbox64
    // result rd:x18(0xb618e14f4fb618e1), rs1:x14(0x3030303030303030), rs2:x30(0xcfcfcfcfcfcfcfcf)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0xb618e14f4fb618e1, 0x3030303030303030, 0xcfcfcfcfcfcfcfcf, x3, 24, x4)

inst_49:
    // Test 49:  Test with dataset: sbox64
    // result rd:x19(0x56c9940b0b56c994), rs1:x13(0x3131313131313131), rs2:x29(0xcececececececece)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0x56c9940b0b56c994, 0x3131313131313131, 0xcececececececece, x3, 32, x4)

    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with dataset: sbox64
    // result rd:x20(0x4604672525460467), rs1:x12(0x3232323232323232), rs2:x28(0xcdcdcdcdcdcdcdcd)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0x4604672525460467, 0x3232323232323232, 0xcdcdcdcdcdcdcdcd, x1, 0, x2)

inst_51:
    // Test 51:  Test with dataset: sbox64
    // result rd:x21(0xba38fb7979ba38fb), rs1:x11(0x3333333333333333), rs2:x27(0xcccccccccccccccc)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0xba38fb7979ba38fb, 0x3333333333333333, 0xcccccccccccccccc, x1, 8, x2)

inst_52:
    // Test 52:  Test with dataset: sbox64
    // result rd:x22(0x648615f7f7648615), rs1:x10(0x3434343434343434), rs2:x26(0xcbcbcbcbcbcbcbcb)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0x648615f7f7648615, 0x3434343434343434, 0xcbcbcbcbcbcbcbcb, x1, 16, x2)

inst_53:
    // Test 53:  Test with dataset: sbox64
    // result rd:x23(0x901959d0d0901959), rs1:x9(0x3535353535353535), rs2:x25(0xcacacacacacacaca)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0x901959d0d0901959, 0x3535353535353535, 0xcacacacacacacaca, x1, 24, x2)

inst_54:
    // Test 54:  Test with dataset: sbox64
    // result rd:x24(0xa6ca90fcfca6ca90), rs1:x8(0x3636363636363636), rs2:x24(0xc9c9c9c9c9c9c9c9)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0xa6ca90fcfca6ca90, 0x3636363636363636, 0xc9c9c9c9c9c9c9c9, x1, 32, x2)

    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with dataset: sbox64
    // result rd:x25(0xbbbdb8bebebbbdb8), rs1:x7(0x3737373737373737), rs2:x23(0xc8c8c8c8c8c8c8c8)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0xbbbdb8bebebbbdb8, 0x3737373737373737, 0xc8c8c8c8c8c8c8c8, x1, 0, x2)

inst_56:
    // Test 56:  Test with dataset: sbox64
    // result rd:x26(0xb836ff7171b836ff), rs1:x6(0x3838383838383838), rs2:x22(0xc7c7c7c7c7c7c7c7)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0xb836ff7171b836ff, 0x3838383838383838, 0xc7c7c7c7c7c7c7c7, x1, 8, x2)

inst_57:
    // Test 57:  Test with dataset: sbox64
    // result rd:x27(0xa2813e1d1da2813e), rs1:x5(0x3939393939393939), rs2:x21(0xc6c6c6c6c6c6c6c6)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0xa2813e1d1da2813e, 0x3939393939393939, 0xc6c6c6c6c6c6c6c6, x1, 16, x2)

inst_58:
    // Test 58:  Test with dataset: sbox64
    // result rd:x28(0xf4a5510000f4a551), rs1:x4(0x3a3a3a3a3a3a3a3a), rs2:x20(0xc5c5c5c5c5c5c5c5)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0xf4a5510000f4a551, 0x3a3a3a3a3a3a3a3a, 0xc5c5c5c5c5c5c5c5, x1, 24, x2)

inst_59:
    // Test 59:  Test with dataset: sbox64
    // result rd:x29(0x38a1f9606038a1f9), rs1:x3(0x3b3b3b3b3b3b3b3b), rs2:x19(0xc4c4c4c4c4c4c4c4)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0x38a1f9606038a1f9, 0x3b3b3b3b3b3b3b3b, 0xc4c4c4c4c4c4c4c4, x1, 32, x2)

    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with dataset: sbox64
    // result rd:x30(0xec50b20e0eec50b2), rs1:x2(0x3c3c3c3c3c3c3c3c), rs2:x18(0xc3c3c3c3c3c3c3c3)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0xec50b20e0eec50b2, 0x3c3c3c3c3c3c3c3c, 0xc3c3c3c3c3c3c3c3, x4, 0, x5)

inst_61:
    // Test 61:  Test with dataset: sbox64
    // result rd:x31(0x6224410707622441), rs1:x1(0x3d3d3d3d3d3d3d3d), rs2:x17(0xc2c2c2c2c2c2c2c2)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0x6224410707622441, 0x3d3d3d3d3d3d3d3d, 0xc2c2c2c2c2c2c2c2, x4, 8, x5)

inst_62:
    // Test 62:  Test with dataset: sbox64
    // result rd:x1(0xf5edf9e1e1f5edf9), rs1:x31(0x3e3e3e3e3e3e3e3e), rs2:x16(0xc1c1c1c1c1c1c1c1)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0xf5edf9e1e1f5edf9, 0x3e3e3e3e3e3e3e3e, 0xc1c1c1c1c1c1c1c1, x4, 16, x5)

inst_63:
    // Test 63:  Test with dataset: sbox64
    // result rd:x2(0x83f7b9cdcd83f7b9), rs1:x30(0x3f3f3f3f3f3f3f3f), rs2:x15(0xc0c0c0c0c0c0c0c0)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x83f7b9cdcd83f7b9, 0x3f3f3f3f3f3f3f3f, 0xc0c0c0c0c0c0c0c0, x4, 24, x5)

inst_64:
    // Test 64:  Test with dataset: sbox64
    // result rd:x3(0xcdda4b5c5ccdda4b), rs1:x29(0x4040404040404040), rs2:x14(0xbfbfbfbfbfbfbfbf)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0xcdda4b5c5ccdda4b, 0x4040404040404040, 0xbfbfbfbfbfbfbfbf, x4, 32, x5)

    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with dataset: sbox64
    // result rd:x4(0xbbe4194646bbe419), rs1:x28(0x4141414141414141), rs2:x13(0xbebebebebebebebe)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0xbbe4194646bbe419, 0x4141414141414141, 0xbebebebebebebebe, x1, 0, x2)

inst_66:
    // Test 66:  Test with dataset: sbox64
    // result rd:x5(0x57216c1a1a57216c), rs1:x27(0x4242424242424242), rs2:x12(0xbdbdbdbdbdbdbdbd)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0x57216c1a1a57216c, 0x4242424242424242, 0xbdbdbdbdbdbdbdbd, x1, 8, x2)

inst_67:
    // Test 67:  Test with dataset: sbox64
    // result rd:x6(0x30082c141430082c), rs1:x26(0x4343434343434343), rs2:x11(0xbcbcbcbcbcbcbcbc)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0x30082c141430082c, 0x4343434343434343, 0xbcbcbcbcbcbcbcbc, x1, 16, x2)

inst_68:
    // Test 68:  Test with dataset: sbox64
    // result rd:x7(0xf5058d7d7df5058d), rs1:x25(0x4444444444444444), rs2:x10(0xbbbbbbbbbbbbbbbb)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0xf5058d7d7df5058d, 0x4444444444444444, 0xbbbbbbbbbbbbbbbb, x1, 24, x2)

inst_69:
    // Test 69:  Test with dataset: sbox64
    // result rd:x8(0x1d56b5fefe1d56b5), rs1:x24(0x4545454545454545), rs2:x9(0xbabababababababa)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0x1d56b5fefe1d56b5, 0x4545454545454545, 0xbabababababababa, x1, 32, x2)

    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with dataset: sbox64
    // result rd:x9(0x4acc098f8f4acc09), rs1:x23(0x4646464646464646), rs2:x8(0xb9b9b9b9b9b9b9b9)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0x4acc098f8f4acc09, 0x4646464646464646, 0xb9b9b9b9b9b9b9b9, x1, 0, x2)

inst_71:
    // Test 71:  Test with dataset: sbox64
    // result rd:x10(0x9f9c1310109f9c13), rs1:x22(0x4747474747474747), rs2:x7(0xb8b8b8b8b8b8b8b8)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0x9f9c1310109f9c13, 0x4747474747474747, 0xb8b8b8b8b8b8b8b8, x1, 8, x2)

inst_72:
    // Test 72:  Test with dataset: sbox64
    // result rd:x11(0x2eddda29292eddda), rs1:x21(0x4848484848484848), rs2:x6(0xb7b7b7b7b7b7b7b7)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0x2eddda29292eddda, 0x4848484848484848, 0xb7b7b7b7b7b7b7b7, x1, 16, x2)

inst_73:
    // Test 73:  Test with dataset: sbox64
    // result rd:x12(0x81205cfdfd81205c), rs1:x20(0x4949494949494949), rs2:x5(0xb6b6b6b6b6b6b6b6)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0x81205cfdfd81205c, 0x4949494949494949, 0xb6b6b6b6b6b6b6b6, x1, 24, x2)

inst_74:
    // Test 74:  Test with dataset: sbox64
    // result rd:x13(0xdbdc555252dbdc55), rs1:x19(0x4a4a4a4a4a4a4a4a), rs2:x4(0xb5b5b5b5b5b5b5b5)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0xdbdc555252dbdc55, 0x4a4a4a4a4a4a4a4a, 0xb5b5b5b5b5b5b5b5, x1, 32, x2)

    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with dataset: sbox64
    // result rd:x14(0xfaeef0e4e4faeef0), rs1:x18(0x4b4b4b4b4b4b4b4b), rs2:x3(0xb4b4b4b4b4b4b4b4)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0xfaeef0e4e4faeef0, 0x4b4b4b4b4b4b4b4b, 0xb4b4b4b4b4b4b4b4, x4, 0, x5)

inst_76:
    // Test 76:  Test with dataset: sbox64
    // result rd:x15(0x3f132905053f1329), rs1:x17(0x4c4c4c4c4c4c4c4c), rs2:x2(0xb3b3b3b3b3b3b3b3)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0x3f132905053f1329, 0x4c4c4c4c4c4c4c4c, 0xb3b3b3b3b3b3b3b3, x4, 8, x5)

inst_77:
    // Test 77:  Test with dataset: sbox64
    // result rd:x16(0xff49a41212ff49a4), rs1:x16(0x4d4d4d4d4d4d4d4d), rs2:x1(0xb2b2b2b2b2b2b2b2)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0xff49a41212ff49a4, 0x4d4d4d4d4d4d4d4d, 0xb2b2b2b2b2b2b2b2, x4, 16, x5)

inst_78:
    // Test 78:  Test with dataset: sbox64
    // result rd:x17(0x20fbc01b1b20fbc0), rs1:x15(0x4e4e4e4e4e4e4e4e), rs2:x31(0xb1b1b1b1b1b1b1b1)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0x20fbc01b1b20fbc0, 0x4e4e4e4e4e4e4e4e, 0xb1b1b1b1b1b1b1b1, x4, 24, x5)

inst_79:
    // Test 79:  Test with dataset: sbox64
    // result rd:x18(0x835fed3131835fed), rs1:x14(0x4f4f4f4f4f4f4f4f), rs2:x30(0xb0b0b0b0b0b0b0b0)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0x835fed3131835fed, 0x4f4f4f4f4f4f4f4f, 0xb0b0b0b0b0b0b0b0, x4, 32, x5)

    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with dataset: sbox64
    // result rd:x19(0x32dc45abab32dc45), rs1:x13(0x5050505050505050), rs2:x29(0xafafafafafafafaf)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0x32dc45abab32dc45, 0x5050505050505050, 0xafafafafafafafaf, x1, 0, x2)

inst_81:
    // Test 81:  Test with dataset: sbox64
    // result rd:x20(0x2cabe265652cabe2), rs1:x12(0x5151515151515151), rs2:x28(0xaeaeaeaeaeaeaeae)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0x2cabe265652cabe2, 0x5151515151515151, 0xaeaeaeaeaeaeaeae, x1, 8, x2)

inst_82:
    // Test 82:  Test with dataset: sbox64
    // result rd:x21(0xe343b31313e343b3), rs1:x11(0x5252525252525252), rs2:x27(0xadadadadadadadad)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0xe343b31313e343b3, 0x5252525252525252, 0xadadadadadadadad, x1, 16, x2)

inst_83:
    // Test 83:  Test with dataset: sbox64
    // result rd:x22(0x806f7a9595806f7a), rs1:x10(0x5353535353535353), rs2:x26(0xacacacacacacacac)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0x806f7a9595806f7a, 0x5353535353535353, 0xacacacacacacacac, x1, 24, x2)

inst_84:
    // Test 84:  Test with dataset: sbox64
    // result rd:x23(0x12efe11c1c12efe1), rs1:x9(0x5454545454545454), rs2:x25(0xabababababababab)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0x12efe11c1c12efe1, 0x5454545454545454, 0xabababababababab, x1, 32, x2)

    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with dataset: sbox64
    // result rd:x24(0x6d68e2e7e76d68e2), rs1:x8(0x5555555555555555), rs2:x24(0xaaaaaaaaaaaaaaaa)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0x6d68e2e7e76d68e2, 0x5555555555555555, 0xaaaaaaaaaaaaaaaa, x1, 0, x2)

inst_86:
    // Test 86:  Test with dataset: sbox64
    // result rd:x25(0x938f9d8181938f9d), rs1:x7(0x5656565656565656), rs2:x23(0xa9a9a9a9a9a9a9a9)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0x938f9d8181938f9d, 0x5656565656565656, 0xa9a9a9a9a9a9a9a9, x1, 8, x2)

inst_87:
    // Test 87:  Test with dataset: sbox64
    // result rd:x26(0xfc8d493838fc8d49), rs1:x6(0x5757575757575757), rs2:x22(0xa8a8a8a8a8a8a8a8)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0xfc8d493838fc8d49, 0x5757575757575757, 0xa8a8a8a8a8a8a8a8, x1, 16, x2)

inst_88:
    // Test 88:  Test with dataset: sbox64
    // result rd:x27(0x4df89a2f2f4df89a), rs1:x5(0x5858585858585858), rs2:x21(0xa7a7a7a7a7a7a7a7)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0x4df89a2f2f4df89a, 0x5858585858585858, 0xa7a7a7a7a7a7a7a7, x1, 24, x2)

inst_89:
    // Test 89:  Test with dataset: sbox64
    // result rd:x28(0x13a8c3787813a8c3), rs1:x4(0x5959595959595959), rs2:x20(0xa6a6a6a6a6a6a6a6)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0x13a8c3787813a8c3, 0x5959595959595959, 0xa6a6a6a6a6a6a6a6, x1, 32, x2)

    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with dataset: sbox64
    // result rd:x29(0x508e3fe1e1508e3f), rs1:x3(0x5a5a5a5a5a5a5a5a), rs2:x19(0xa5a5a5a5a5a5a5a5)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0x508e3fe1e1508e3f, 0x5a5a5a5a5a5a5a5a, 0xa5a5a5a5a5a5a5a5, x4, 0, x5)

inst_91:
    // Test 91:  Test with dataset: sbox64
    // result rd:x30(0xba2ef06464ba2ef0), rs1:x2(0x5b5b5b5b5b5b5b5b), rs2:x18(0xa4a4a4a4a4a4a4a4)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0xba2ef06464ba2ef0, 0x5b5b5b5b5b5b5b5b, 0xa4a4a4a4a4a4a4a4, x4, 8, x5)

inst_92:
    // Test 92:  Test with dataset: sbox64
    // result rd:x31(0xb30465d2d2b30465), rs1:x1(0x5c5c5c5c5c5c5c5c), rs2:x17(0xa3a3a3a3a3a3a3a3)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0xb30465d2d2b30465, 0x5c5c5c5c5c5c5c5c, 0xa3a3a3a3a3a3a3a3, x4, 16, x5)

inst_93:
    // Test 93:  Test with dataset: sbox64
    // result rd:x1(0x4570d2e7e74570d2), rs1:x31(0x5d5d5d5d5d5d5d5d), rs2:x16(0xa2a2a2a2a2a2a2a2)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0x4570d2e7e74570d2, 0x5d5d5d5d5d5d5d5d, 0xa2a2a2a2a2a2a2a2, x4, 24, x5)

inst_94:
    // Test 94:  Test with dataset: sbox64
    // result rd:x2(0x825aee3636825aee), rs1:x30(0x5e5e5e5e5e5e5e5e), rs2:x15(0xa1a1a1a1a1a1a1a1)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x825aee3636825aee, 0x5e5e5e5e5e5e5e5e, 0xa1a1a1a1a1a1a1a1, x4, 32, x5)

    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with dataset: sbox64
    // result rd:x3(0xfb6638a5a5fb6638), rs1:x29(0x5f5f5f5f5f5f5f5f), rs2:x14(0xa0a0a0a0a0a0a0a0)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0xfb6638a5a5fb6638, 0x5f5f5f5f5f5f5f5f, 0xa0a0a0a0a0a0a0a0, x1, 0, x2)

inst_96:
    // Test 96:  Test with dataset: sbox64
    // result rd:x4(0x5cbba245455cbba2), rs1:x28(0x6060606060606060), rs2:x13(0x9f9f9f9f9f9f9f9f)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0x5cbba245455cbba2, 0x6060606060606060, 0x9f9f9f9f9f9f9f9f, x1, 8, x2)

inst_97:
    // Test 97:  Test with dataset: sbox64
    // result rd:x5(0xcdc3cac4c4cdc3ca), rs1:x27(0x6161616161616161), rs2:x12(0x9e9e9e9e9e9e9e9e)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0xcdc3cac4c4cdc3ca, 0x6161616161616161, 0x9e9e9e9e9e9e9e9e, x1, 16, x2)

inst_98:
    // Test 98:  Test with dataset: sbox64
    // result rd:x6(0x872059fefe872059), rs1:x26(0x6262626262626262), rs2:x11(0x9d9d9d9d9d9d9d9d)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0x872059fefe872059, 0x6262626262626262, 0x9d9d9d9d9d9d9d9d, x1, 24, x2)

inst_99:
    // Test 99:  Test with dataset: sbox64
    // result rd:x7(0x546c487070546c48), rs1:x25(0x6363636363636363), rs2:x10(0x9c9c9c9c9c9c9c9c)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0x546c487070546c48, 0x6363636363636363, 0x9c9c9c9c9c9c9c9c, x1, 32, x2)

    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with dataset: sbox64
    // result rd:x8(0xab63cf0707ab63cf), rs1:x24(0x6464646464646464), rs2:x9(0x9b9b9b9b9b9b9b9b)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0xab63cf0707ab63cf, 0x6464646464646464, 0x9b9b9b9b9b9b9b9b, x1, 0, x2)

inst_101:
    // Test 101:  Test with dataset: sbox64
    // result rd:x9(0x202daba6a6202dab), rs1:x23(0x6565656565656565), rs2:x8(0x9a9a9a9a9a9a9a9a)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0x202daba6a6202dab, 0x6565656565656565, 0x9a9a9a9a9a9a9a9a, x1, 8, x2)

inst_102:
    // Test 102:  Test with dataset: sbox64
    // result rd:x10(0x05512f7b7b05512f), rs1:x22(0x6666666666666666), rs2:x7(0x9999999999999999)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0x05512f7b7b05512f, 0x6666666666666666, 0x9999999999999999, x1, 16, x2)

inst_103:
    // Test 103:  Test with dataset: sbox64
    // result rd:x11(0xa46f4c8787a46f4c), rs1:x21(0x6767676767676767), rs2:x6(0x9898989898989898)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0xa46f4c8787a46f4c, 0x6767676767676767, 0x9898989898989898, x1, 24, x2)

inst_104:
    // Test 104:  Test with dataset: sbox64
    // result rd:x12(0xb256c02424b256c0), rs1:x20(0x6868686868686868), rs2:x5(0x9797979797979797)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0xb256c02424b256c0, 0x6868686868686868, 0x9797979797979797, x1, 32, x2)

    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with dataset: sbox64
    // result rd:x13(0xe55c348d8de55c34), rs1:x19(0x6969696969696969), rs2:x4(0x9696969696969696)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0xe55c348d8de55c34, 0x6969696969696969, 0x9696969696969696, x5, 0, x6)

inst_106:
    // Test 106:  Test with dataset: sbox64
    // result rd:x14(0xa55450a1a1a55450), rs1:x18(0x6a6a6a6a6a6a6a6a), rs2:x3(0x9595959595959595)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0xa55450a1a1a55450, 0x6a6a6a6a6a6a6a6a, 0x9595959595959595, x5, 8, x6)

inst_107:
    // Test 107:  Test with dataset: sbox64
    // result rd:x15(0x9d427fa0a09d427f), rs1:x17(0x6b6b6b6b6b6b6b6b), rs2:x2(0x9494949494949494)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0x9d427fa0a09d427f, 0x6b6b6b6b6b6b6b6b, 0x9494949494949494, x5, 16, x6)

inst_108:
    // Test 108:  Test with dataset: sbox64
    // result rd:x16(0x537cc9e6e6537cc9), rs1:x16(0x6c6c6c6c6c6c6c6c), rs2:x1(0x9393939393939393)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0x537cc9e6e6537cc9, 0x6c6c6c6c6c6c6c6c, 0x9393939393939393, x5, 24, x6)

inst_109:
    // Test 109:  Test with dataset: sbox64
    // result rd:x17(0xd045178282d04517), rs1:x15(0x6d6d6d6d6d6d6d6d), rs2:x31(0x9292929292929292)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0xd045178282d04517, 0x6d6d6d6d6d6d6d6d, 0x9292929292929292, x5, 32, x6)

    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with dataset: sbox64
    // result rd:x18(0xec2505ccccec2505), rs1:x14(0x6e6e6e6e6e6e6e6e), rs2:x30(0x9191919191919191)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0xec2505ccccec2505, 0x6e6e6e6e6e6e6e6e, 0x9191919191919191, x1, 0, x2)

inst_111:
    // Test 111:  Test with dataset: sbox64
    // result rd:x19(0xdbe04b7070dbe04b), rs1:x13(0x6f6f6f6f6f6f6f6f), rs2:x29(0x9090909090909090)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0xdbe04b7070dbe04b, 0x6f6f6f6f6f6f6f6f, 0x9090909090909090, x1, 8, x2)

inst_112:
    // Test 112:  Test with dataset: sbox64
    // result rd:x20(0x94c9376a6a94c937), rs1:x12(0x7070707070707070), rs2:x28(0x8f8f8f8f8f8f8f8f)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0x94c9376a6a94c937, 0x7070707070707070, 0x8f8f8f8f8f8f8f8f, x1, 16, x2)

inst_113:
    // Test 113:  Test with dataset: sbox64
    // result rd:x21(0x6ce3a629296ce3a6), rs1:x11(0x7171717171717171), rs2:x27(0x8e8e8e8e8e8e8e8e)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0x6ce3a629296ce3a6, 0x7171717171717171, 0x8e8e8e8e8e8e8e8e, x1, 24, x2)

inst_114:
    // Test 114:  Test with dataset: sbox64
    // result rd:x22(0x652acf8080652acf), rs1:x10(0x7272727272727272), rs2:x26(0x8d8d8d8d8d8d8d8d)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0x652acf8080652acf, 0x7272727272727272, 0x8d8d8d8d8d8d8d8d, x1, 32, x2)

    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with dataset: sbox64
    // result rd:x23(0xe917966868e91796), rs1:x9(0x7373737373737373), rs2:x25(0x8c8c8c8c8c8c8c8c)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0xe917966868e91796, 0x7373737373737373, 0x8c8c8c8c8c8c8c8c, x1, 0, x2)

inst_116:
    // Test 116:  Test with dataset: sbox64
    // result rd:x24(0xd6ded2dadad6ded2), rs1:x8(0x7474747474747474), rs2:x24(0x8b8b8b8b8b8b8b8b)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0xd6ded2dadad6ded2, 0x7474747474747474, 0x8b8b8b8b8b8b8b8b, x1, 8, x2)

inst_117:
    // Test 117:  Test with dataset: sbox64
    // result rd:x25(0xd92229d2d2d92229), rs1:x7(0x7575757575757575), rs2:x23(0x8a8a8a8a8a8a8a8a)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0xd92229d2d2d92229, 0x7575757575757575, 0x8a8a8a8a8a8a8a8a, x1, 16, x2)

inst_118:
    // Test 118:  Test with dataset: sbox64
    // result rd:x26(0xca2b37d6d6ca2b37), rs1:x6(0x7676767676767676), rs2:x22(0x8989898989898989)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0xca2b37d6d6ca2b37, 0x7676767676767676, 0x8989898989898989, x1, 24, x2)

inst_119:
    // Test 119:  Test with dataset: sbox64
    // result rd:x27(0xc4f5516060c4f551), rs1:x5(0x7777777777777777), rs2:x21(0x8888888888888888)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0xc4f5516060c4f551, 0x7777777777777777, 0x8888888888888888, x1, 32, x2)

    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with dataset: sbox64
    // result rd:x28(0x10463b6d6d10463b), rs1:x4(0x7878787878787878), rs2:x20(0x8787878787878787)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0x10463b6d6d10463b, 0x7878787878787878, 0x8787878787878787, x5, 0, x6)

inst_121:
    // Test 121:  Test with dataset: sbox64
    // result rd:x29(0xed0b9e7878ed0b9e), rs1:x3(0x7979797979797979), rs2:x19(0x8686868686868686)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0xed0b9e7878ed0b9e, 0x7979797979797979, 0x8686868686868686, x5, 8, x6)

inst_122:
    // Test 122:  Test with dataset: sbox64
    // result rd:x30(0x8d2257f8f88d2257), rs1:x2(0x7a7a7a7a7a7a7a7a), rs2:x18(0x8585858585858585)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0x8d2257f8f88d2257, 0x7a7a7a7a7a7a7a7a, 0x8585858585858585, x5, 16, x6)

inst_123:
    // Test 123:  Test with dataset: sbox64
    // result rd:x31(0xfc64b02828fc64b0), rs1:x1(0x7b7b7b7b7b7b7b7b), rs2:x17(0x8484848484848484)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0xfc64b02828fc64b0, 0x7b7b7b7b7b7b7b7b, 0x8484848484848484, x5, 24, x6)

inst_124:
    // Test 124:  Test with dataset: sbox64
    // result rd:x1(0xda5a9a1a1ada5a9a), rs1:x31(0x7c7c7c7c7c7c7c7c), rs2:x16(0x8383838383838383)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0xda5a9a1a1ada5a9a, 0x7c7c7c7c7c7c7c7c, 0x8383838383838383, x5, 32, x6)

    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with dataset: sbox64
    // result rd:x2(0x1d191f1b1b1d191f), rs1:x30(0x7d7d7d7d7d7d7d7d), rs2:x15(0x8282828282828282)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x1d191f1b1b1d191f, 0x7d7d7d7d7d7d7d7d, 0x8282828282828282, x1, 0, x7)

inst_126:
    // Test 126:  Test with dataset: sbox64
    // result rd:x3(0xcbfdd0e6e6cbfdd0), rs1:x29(0x7e7e7e7e7e7e7e7e), rs2:x14(0x8181818181818181)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0xcbfdd0e6e6cbfdd0, 0x7e7e7e7e7e7e7e7e, 0x8181818181818181, x1, 8, x7)

inst_127:
    // Test 127:  Test with dataset: sbox64
    // result rd:x4(0xc765963434c76596), rs1:x28(0x7f7f7f7f7f7f7f7f), rs2:x13(0x8080808080808080)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0xc765963434c76596, 0x7f7f7f7f7f7f7f7f, 0x8080808080808080, x1, 16, x7)

inst_128:
    // Test 128:  Test with dataset: sbox64
    // result rd:x5(0x9634c765659634c7), rs1:x27(0x8080808080808080), rs2:x12(0x7f7f7f7f7f7f7f7f)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0x9634c765659634c7, 0x8080808080808080, 0x7f7f7f7f7f7f7f7f, x1, 24, x7)

inst_129:
    // Test 129:  Test with dataset: sbox64
    // result rd:x6(0xd0e6cbfdfdd0e6cb), rs1:x26(0x8181818181818181), rs2:x11(0x7e7e7e7e7e7e7e7e)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0xd0e6cbfdfdd0e6cb, 0x8181818181818181, 0x7e7e7e7e7e7e7e7e, x1, 32, x7)

    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with dataset: sbox64
    // result rd:x7(0x1f1b1d19191f1b1d), rs1:x25(0x8282828282828282), rs2:x10(0x7d7d7d7d7d7d7d7d)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0x1f1b1d19191f1b1d, 0x8282828282828282, 0x7d7d7d7d7d7d7d7d, x1, 0, x2)

inst_131:
    // Test 131:  Test with dataset: sbox64
    // result rd:x8(0x9a1ada5a5a9a1ada), rs1:x24(0x8383838383838383), rs2:x9(0x7c7c7c7c7c7c7c7c)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0x9a1ada5a5a9a1ada, 0x8383838383838383, 0x7c7c7c7c7c7c7c7c, x1, 8, x2)

inst_132:
    // Test 132:  Test with dataset: sbox64
    // result rd:x9(0xb028fc6464b028fc), rs1:x23(0x8484848484848484), rs2:x8(0x7b7b7b7b7b7b7b7b)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0xb028fc6464b028fc, 0x8484848484848484, 0x7b7b7b7b7b7b7b7b, x1, 16, x2)

inst_133:
    // Test 133:  Test with dataset: sbox64
    // result rd:x10(0x57f88d222257f88d), rs1:x22(0x8585858585858585), rs2:x7(0x7a7a7a7a7a7a7a7a)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0x57f88d222257f88d, 0x8585858585858585, 0x7a7a7a7a7a7a7a7a, x1, 24, x2)

inst_134:
    // Test 134:  Test with dataset: sbox64
    // result rd:x11(0x9e78ed0b0b9e78ed), rs1:x21(0x8686868686868686), rs2:x6(0x7979797979797979)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0x9e78ed0b0b9e78ed, 0x8686868686868686, 0x7979797979797979, x1, 32, x2)

    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with dataset: sbox64
    // result rd:x12(0x3b6d1046463b6d10), rs1:x20(0x8787878787878787), rs2:x5(0x7878787878787878)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0x3b6d1046463b6d10, 0x8787878787878787, 0x7878787878787878, x6, 0, x7)

inst_136:
    // Test 136:  Test with dataset: sbox64
    // result rd:x13(0x5160c4f5f55160c4), rs1:x19(0x8888888888888888), rs2:x4(0x7777777777777777)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0x5160c4f5f55160c4, 0x8888888888888888, 0x7777777777777777, x6, 8, x7)

inst_137:
    // Test 137:  Test with dataset: sbox64
    // result rd:x14(0x37d6ca2b2b37d6ca), rs1:x18(0x8989898989898989), rs2:x3(0x7676767676767676)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0x37d6ca2b2b37d6ca, 0x8989898989898989, 0x7676767676767676, x6, 16, x7)

inst_138:
    // Test 138:  Test with dataset: sbox64
    // result rd:x15(0x29d2d9222229d2d9), rs1:x17(0x8a8a8a8a8a8a8a8a), rs2:x2(0x7575757575757575)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0x29d2d9222229d2d9, 0x8a8a8a8a8a8a8a8a, 0x7575757575757575, x6, 24, x7)

inst_139:
    // Test 139:  Test with dataset: sbox64
    // result rd:x16(0xd2dad6deded2dad6), rs1:x16(0x8b8b8b8b8b8b8b8b), rs2:x1(0x7474747474747474)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0xd2dad6deded2dad6, 0x8b8b8b8b8b8b8b8b, 0x7474747474747474, x6, 32, x7)

    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with dataset: sbox64
    // result rd:x17(0x9668e917179668e9), rs1:x15(0x8c8c8c8c8c8c8c8c), rs2:x31(0x7373737373737373)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0x9668e917179668e9, 0x8c8c8c8c8c8c8c8c, 0x7373737373737373, x1, 0, x2)

inst_141:
    // Test 141:  Test with dataset: sbox64
    // result rd:x18(0xcf80652a2acf8065), rs1:x14(0x8d8d8d8d8d8d8d8d), rs2:x30(0x7272727272727272)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0xcf80652a2acf8065, 0x8d8d8d8d8d8d8d8d, 0x7272727272727272, x1, 8, x2)

inst_142:
    // Test 142:  Test with dataset: sbox64
    // result rd:x19(0xa6296ce3e3a6296c), rs1:x13(0x8e8e8e8e8e8e8e8e), rs2:x29(0x7171717171717171)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0xa6296ce3e3a6296c, 0x8e8e8e8e8e8e8e8e, 0x7171717171717171, x1, 16, x2)

inst_143:
    // Test 143:  Test with dataset: sbox64
    // result rd:x20(0x376a94c9c9376a94), rs1:x12(0x8f8f8f8f8f8f8f8f), rs2:x28(0x7070707070707070)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0x376a94c9c9376a94, 0x8f8f8f8f8f8f8f8f, 0x7070707070707070, x1, 24, x2)

inst_144:
    // Test 144:  Test with dataset: sbox64
    // result rd:x21(0x4b70dbe0e04b70db), rs1:x11(0x9090909090909090), rs2:x27(0x6f6f6f6f6f6f6f6f)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0x4b70dbe0e04b70db, 0x9090909090909090, 0x6f6f6f6f6f6f6f6f, x1, 32, x2)

    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with dataset: sbox64
    // result rd:x22(0x05ccec252505ccec), rs1:x10(0x9191919191919191), rs2:x26(0x6e6e6e6e6e6e6e6e)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0x05ccec252505ccec, 0x9191919191919191, 0x6e6e6e6e6e6e6e6e, x1, 0, x2)

inst_146:
    // Test 146:  Test with dataset: sbox64
    // result rd:x23(0x1782d045451782d0), rs1:x9(0x9292929292929292), rs2:x25(0x6d6d6d6d6d6d6d6d)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0x1782d045451782d0, 0x9292929292929292, 0x6d6d6d6d6d6d6d6d, x1, 8, x2)

inst_147:
    // Test 147:  Test with dataset: sbox64
    // result rd:x24(0xc9e6537c7cc9e653), rs1:x8(0x9393939393939393), rs2:x24(0x6c6c6c6c6c6c6c6c)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0xc9e6537c7cc9e653, 0x9393939393939393, 0x6c6c6c6c6c6c6c6c, x1, 16, x2)

inst_148:
    // Test 148:  Test with dataset: sbox64
    // result rd:x25(0x7fa09d42427fa09d), rs1:x7(0x9494949494949494), rs2:x23(0x6b6b6b6b6b6b6b6b)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0x7fa09d42427fa09d, 0x9494949494949494, 0x6b6b6b6b6b6b6b6b, x1, 24, x2)

inst_149:
    // Test 149:  Test with dataset: sbox64
    // result rd:x26(0x50a1a5545450a1a5), rs1:x6(0x9595959595959595), rs2:x22(0x6a6a6a6a6a6a6a6a)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0x50a1a5545450a1a5, 0x9595959595959595, 0x6a6a6a6a6a6a6a6a, x1, 32, x2)

    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with dataset: sbox64
    // result rd:x27(0x348de55c5c348de5), rs1:x5(0x9696969696969696), rs2:x21(0x6969696969696969)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0x348de55c5c348de5, 0x9696969696969696, 0x6969696969696969, x6, 0, x7)

inst_151:
    // Test 151:  Test with dataset: sbox64
    // result rd:x28(0xc024b25656c024b2), rs1:x4(0x9797979797979797), rs2:x20(0x6868686868686868)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0xc024b25656c024b2, 0x9797979797979797, 0x6868686868686868, x6, 8, x7)

inst_152:
    // Test 152:  Test with dataset: sbox64
    // result rd:x29(0x4c87a46f6f4c87a4), rs1:x3(0x9898989898989898), rs2:x19(0x6767676767676767)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0x4c87a46f6f4c87a4, 0x9898989898989898, 0x6767676767676767, x6, 16, x7)

inst_153:
    // Test 153:  Test with dataset: sbox64
    // result rd:x30(0x2f7b0551512f7b05), rs1:x2(0x9999999999999999), rs2:x18(0x6666666666666666)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0x2f7b0551512f7b05, 0x9999999999999999, 0x6666666666666666, x6, 24, x7)

inst_154:
    // Test 154:  Test with dataset: sbox64
    // result rd:x31(0xaba6202d2daba620), rs1:x1(0x9a9a9a9a9a9a9a9a), rs2:x17(0x6565656565656565)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0xaba6202d2daba620, 0x9a9a9a9a9a9a9a9a, 0x6565656565656565, x6, 32, x7)

    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with dataset: sbox64
    // result rd:x1(0xcf07ab6363cf07ab), rs1:x31(0x9b9b9b9b9b9b9b9b), rs2:x16(0x6464646464646464)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0xcf07ab6363cf07ab, 0x9b9b9b9b9b9b9b9b, 0x6464646464646464, x6, 0, x7)

inst_156:
    // Test 156:  Test with dataset: sbox64
    // result rd:x2(0x4870546c6c487054), rs1:x30(0x9c9c9c9c9c9c9c9c), rs2:x15(0x6363636363636363)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x4870546c6c487054, 0x9c9c9c9c9c9c9c9c, 0x6363636363636363, x6, 8, x7)

inst_157:
    // Test 157:  Test with dataset: sbox64
    // result rd:x3(0x59fe87202059fe87), rs1:x29(0x9d9d9d9d9d9d9d9d), rs2:x14(0x6262626262626262)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0x59fe87202059fe87, 0x9d9d9d9d9d9d9d9d, 0x6262626262626262, x6, 16, x7)

inst_158:
    // Test 158:  Test with dataset: sbox64
    // result rd:x4(0xcac4cdc3c3cac4cd), rs1:x28(0x9e9e9e9e9e9e9e9e), rs2:x13(0x6161616161616161)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0xcac4cdc3c3cac4cd, 0x9e9e9e9e9e9e9e9e, 0x6161616161616161, x6, 24, x7)

inst_159:
    // Test 159:  Test with dataset: sbox64
    // result rd:x5(0xa2455cbbbba2455c), rs1:x27(0x9f9f9f9f9f9f9f9f), rs2:x12(0x6060606060606060)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0xa2455cbbbba2455c, 0x9f9f9f9f9f9f9f9f, 0x6060606060606060, x6, 32, x7)

    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with dataset: sbox64
    // result rd:x6(0x38a5fb666638a5fb), rs1:x26(0xa0a0a0a0a0a0a0a0), rs2:x11(0x5f5f5f5f5f5f5f5f)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0x38a5fb666638a5fb, 0xa0a0a0a0a0a0a0a0, 0x5f5f5f5f5f5f5f5f, x1, 0, x2)

inst_161:
    // Test 161:  Test with dataset: sbox64
    // result rd:x7(0xee36825a5aee3682), rs1:x25(0xa1a1a1a1a1a1a1a1), rs2:x10(0x5e5e5e5e5e5e5e5e)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0xee36825a5aee3682, 0xa1a1a1a1a1a1a1a1, 0x5e5e5e5e5e5e5e5e, x1, 8, x2)

inst_162:
    // Test 162:  Test with dataset: sbox64
    // result rd:x8(0xd2e7457070d2e745), rs1:x24(0xa2a2a2a2a2a2a2a2), rs2:x9(0x5d5d5d5d5d5d5d5d)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0xd2e7457070d2e745, 0xa2a2a2a2a2a2a2a2, 0x5d5d5d5d5d5d5d5d, x1, 16, x2)

inst_163:
    // Test 163:  Test with dataset: sbox64
    // result rd:x9(0x65d2b3040465d2b3), rs1:x23(0xa3a3a3a3a3a3a3a3), rs2:x8(0x5c5c5c5c5c5c5c5c)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0x65d2b3040465d2b3, 0xa3a3a3a3a3a3a3a3, 0x5c5c5c5c5c5c5c5c, x1, 24, x2)

inst_164:
    // Test 164:  Test with dataset: sbox64
    // result rd:x10(0xf064ba2e2ef064ba), rs1:x22(0xa4a4a4a4a4a4a4a4), rs2:x7(0x5b5b5b5b5b5b5b5b)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0xf064ba2e2ef064ba, 0xa4a4a4a4a4a4a4a4, 0x5b5b5b5b5b5b5b5b, x1, 32, x2)

    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with dataset: sbox64
    // result rd:x11(0x3fe1508e8e3fe150), rs1:x21(0xa5a5a5a5a5a5a5a5), rs2:x6(0x5a5a5a5a5a5a5a5a)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0x3fe1508e8e3fe150, 0xa5a5a5a5a5a5a5a5, 0x5a5a5a5a5a5a5a5a, x1, 0, x7)

inst_166:
    // Test 166:  Test with dataset: sbox64
    // result rd:x12(0xc37813a8a8c37813), rs1:x20(0xa6a6a6a6a6a6a6a6), rs2:x5(0x5959595959595959)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0xc37813a8a8c37813, 0xa6a6a6a6a6a6a6a6, 0x5959595959595959, x1, 8, x7)

inst_167:
    // Test 167:  Test with dataset: sbox64
    // result rd:x13(0x9a2f4df8f89a2f4d), rs1:x19(0xa7a7a7a7a7a7a7a7), rs2:x4(0x5858585858585858)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0x9a2f4df8f89a2f4d, 0xa7a7a7a7a7a7a7a7, 0x5858585858585858, x1, 16, x7)

inst_168:
    // Test 168:  Test with dataset: sbox64
    // result rd:x14(0x4938fc8d8d4938fc), rs1:x18(0xa8a8a8a8a8a8a8a8), rs2:x3(0x5757575757575757)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0x4938fc8d8d4938fc, 0xa8a8a8a8a8a8a8a8, 0x5757575757575757, x1, 24, x7)

inst_169:
    // Test 169:  Test with dataset: sbox64
    // result rd:x15(0x9d81938f8f9d8193), rs1:x17(0xa9a9a9a9a9a9a9a9), rs2:x2(0x5656565656565656)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0x9d81938f8f9d8193, 0xa9a9a9a9a9a9a9a9, 0x5656565656565656, x1, 32, x7)

    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with dataset: sbox64
    // result rd:x16(0xe2e76d6868e2e76d), rs1:x16(0xaaaaaaaaaaaaaaaa), rs2:x1(0x5555555555555555)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0xe2e76d6868e2e76d, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555, x2, 0, x3)

inst_171:
    // Test 171:  Test with dataset: sbox64
    // result rd:x17(0xe11c12efefe11c12), rs1:x15(0xabababababababab), rs2:x31(0x5454545454545454)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0xe11c12efefe11c12, 0xabababababababab, 0x5454545454545454, x2, 8, x3)

inst_172:
    // Test 172:  Test with dataset: sbox64
    // result rd:x18(0x7a95806f6f7a9580), rs1:x14(0xacacacacacacacac), rs2:x30(0x5353535353535353)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0x7a95806f6f7a9580, 0xacacacacacacacac, 0x5353535353535353, x2, 16, x3)

inst_173:
    // Test 173:  Test with dataset: sbox64
    // result rd:x19(0xb313e34343b313e3), rs1:x13(0xadadadadadadadad), rs2:x29(0x5252525252525252)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0xb313e34343b313e3, 0xadadadadadadadad, 0x5252525252525252, x2, 24, x3)

inst_174:
    // Test 174:  Test with dataset: sbox64
    // result rd:x20(0xe2652cababe2652c), rs1:x12(0xaeaeaeaeaeaeaeae), rs2:x28(0x5151515151515151)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0xe2652cababe2652c, 0xaeaeaeaeaeaeaeae, 0x5151515151515151, x2, 32, x3)

    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with dataset: sbox64
    // result rd:x21(0x45ab32dcdc45ab32), rs1:x11(0xafafafafafafafaf), rs2:x27(0x5050505050505050)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0x45ab32dcdc45ab32, 0xafafafafafafafaf, 0x5050505050505050, x1, 0, x2)

inst_176:
    // Test 176:  Test with dataset: sbox64
    // result rd:x22(0xed31835f5fed3183), rs1:x10(0xb0b0b0b0b0b0b0b0), rs2:x26(0x4f4f4f4f4f4f4f4f)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0xed31835f5fed3183, 0xb0b0b0b0b0b0b0b0, 0x4f4f4f4f4f4f4f4f, x1, 8, x2)

inst_177:
    // Test 177:  Test with dataset: sbox64
    // result rd:x23(0xc01b20fbfbc01b20), rs1:x9(0xb1b1b1b1b1b1b1b1), rs2:x25(0x4e4e4e4e4e4e4e4e)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0xc01b20fbfbc01b20, 0xb1b1b1b1b1b1b1b1, 0x4e4e4e4e4e4e4e4e, x1, 16, x2)

inst_178:
    // Test 178:  Test with dataset: sbox64
    // result rd:x24(0xa412ff4949a412ff), rs1:x8(0xb2b2b2b2b2b2b2b2), rs2:x24(0x4d4d4d4d4d4d4d4d)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0xa412ff4949a412ff, 0xb2b2b2b2b2b2b2b2, 0x4d4d4d4d4d4d4d4d, x1, 24, x2)

inst_179:
    // Test 179:  Test with dataset: sbox64
    // result rd:x25(0x29053f131329053f), rs1:x7(0xb3b3b3b3b3b3b3b3), rs2:x23(0x4c4c4c4c4c4c4c4c)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0x29053f131329053f, 0xb3b3b3b3b3b3b3b3, 0x4c4c4c4c4c4c4c4c, x1, 32, x2)

    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with dataset: sbox64
    // result rd:x26(0xf0e4faeeeef0e4fa), rs1:x6(0xb4b4b4b4b4b4b4b4), rs2:x22(0x4b4b4b4b4b4b4b4b)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0xf0e4faeeeef0e4fa, 0xb4b4b4b4b4b4b4b4, 0x4b4b4b4b4b4b4b4b, x1, 0, x7)

inst_181:
    // Test 181:  Test with dataset: sbox64
    // result rd:x27(0x5552dbdcdc5552db), rs1:x5(0xb5b5b5b5b5b5b5b5), rs2:x21(0x4a4a4a4a4a4a4a4a)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0x5552dbdcdc5552db, 0xb5b5b5b5b5b5b5b5, 0x4a4a4a4a4a4a4a4a, x1, 8, x7)

inst_182:
    // Test 182:  Test with dataset: sbox64
    // result rd:x28(0x5cfd8120205cfd81), rs1:x4(0xb6b6b6b6b6b6b6b6), rs2:x20(0x4949494949494949)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0x5cfd8120205cfd81, 0xb6b6b6b6b6b6b6b6, 0x4949494949494949, x1, 16, x7)

inst_183:
    // Test 183:  Test with dataset: sbox64
    // result rd:x29(0xda292eddddda292e), rs1:x3(0xb7b7b7b7b7b7b7b7), rs2:x19(0x4848484848484848)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0xda292eddddda292e, 0xb7b7b7b7b7b7b7b7, 0x4848484848484848, x1, 24, x7)

inst_184:
    // Test 184:  Test with dataset: sbox64
    // result rd:x30(0x13109f9c9c13109f), rs1:x2(0xb8b8b8b8b8b8b8b8), rs2:x18(0x4747474747474747)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0x13109f9c9c13109f, 0xb8b8b8b8b8b8b8b8, 0x4747474747474747, x1, 32, x7)

    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with dataset: sbox64
    // result rd:x31(0x098f4acccc098f4a), rs1:x1(0xb9b9b9b9b9b9b9b9), rs2:x17(0x4646464646464646)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0x098f4acccc098f4a, 0xb9b9b9b9b9b9b9b9, 0x4646464646464646, x5, 0, x6)

inst_186:
    // Test 186:  Test with dataset: sbox64
    // result rd:x1(0xb5fe1d5656b5fe1d), rs1:x31(0xbabababababababa), rs2:x16(0x4545454545454545)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0xb5fe1d5656b5fe1d, 0xbabababababababa, 0x4545454545454545, x5, 8, x6)

inst_187:
    // Test 187:  Test with dataset: sbox64
    // result rd:x2(0x8d7df505058d7df5), rs1:x30(0xbbbbbbbbbbbbbbbb), rs2:x15(0x4444444444444444)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x8d7df505058d7df5, 0xbbbbbbbbbbbbbbbb, 0x4444444444444444, x5, 16, x6)

inst_188:
    // Test 188:  Test with dataset: sbox64
    // result rd:x3(0x2c143008082c1430), rs1:x29(0xbcbcbcbcbcbcbcbc), rs2:x14(0x4343434343434343)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0x2c143008082c1430, 0xbcbcbcbcbcbcbcbc, 0x4343434343434343, x5, 24, x6)

inst_189:
    // Test 189:  Test with dataset: sbox64
    // result rd:x4(0x6c1a5721216c1a57), rs1:x28(0xbdbdbdbdbdbdbdbd), rs2:x13(0x4242424242424242)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0x6c1a5721216c1a57, 0xbdbdbdbdbdbdbdbd, 0x4242424242424242, x5, 32, x6)

    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with dataset: sbox64
    // result rd:x5(0x1946bbe4e41946bb), rs1:x27(0xbebebebebebebebe), rs2:x12(0x4141414141414141)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0x1946bbe4e41946bb, 0xbebebebebebebebe, 0x4141414141414141, x1, 0, x2)

inst_191:
    // Test 191:  Test with dataset: sbox64
    // result rd:x6(0x4b5ccddada4b5ccd), rs1:x26(0xbfbfbfbfbfbfbfbf), rs2:x11(0x4040404040404040)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0x4b5ccddada4b5ccd, 0xbfbfbfbfbfbfbfbf, 0x4040404040404040, x1, 8, x2)

inst_192:
    // Test 192:  Test with dataset: sbox64
    // result rd:x7(0xb9cd83f7f7b9cd83), rs1:x25(0xc0c0c0c0c0c0c0c0), rs2:x10(0x3f3f3f3f3f3f3f3f)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0xb9cd83f7f7b9cd83, 0xc0c0c0c0c0c0c0c0, 0x3f3f3f3f3f3f3f3f, x1, 16, x2)

inst_193:
    // Test 193:  Test with dataset: sbox64
    // result rd:x8(0xf9e1f5ededf9e1f5), rs1:x24(0xc1c1c1c1c1c1c1c1), rs2:x9(0x3e3e3e3e3e3e3e3e)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0xf9e1f5ededf9e1f5, 0xc1c1c1c1c1c1c1c1, 0x3e3e3e3e3e3e3e3e, x1, 24, x2)

inst_194:
    // Test 194:  Test with dataset: sbox64
    // result rd:x9(0x4107622424410762), rs1:x23(0xc2c2c2c2c2c2c2c2), rs2:x8(0x3d3d3d3d3d3d3d3d)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0x4107622424410762, 0xc2c2c2c2c2c2c2c2, 0x3d3d3d3d3d3d3d3d, x1, 32, x2)

    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with dataset: sbox64
    // result rd:x10(0xb20eec5050b20eec), rs1:x22(0xc3c3c3c3c3c3c3c3), rs2:x7(0x3c3c3c3c3c3c3c3c)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0xb20eec5050b20eec, 0xc3c3c3c3c3c3c3c3, 0x3c3c3c3c3c3c3c3c, x1, 0, x2)

inst_196:
    // Test 196:  Test with dataset: sbox64
    // result rd:x11(0xf96038a1a1f96038), rs1:x21(0xc4c4c4c4c4c4c4c4), rs2:x6(0x3b3b3b3b3b3b3b3b)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0xf96038a1a1f96038, 0xc4c4c4c4c4c4c4c4, 0x3b3b3b3b3b3b3b3b, x1, 8, x2)

inst_197:
    // Test 197:  Test with dataset: sbox64
    // result rd:x12(0x5100f4a5a55100f4), rs1:x20(0xc5c5c5c5c5c5c5c5), rs2:x5(0x3a3a3a3a3a3a3a3a)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0x5100f4a5a55100f4, 0xc5c5c5c5c5c5c5c5, 0x3a3a3a3a3a3a3a3a, x1, 16, x2)

inst_198:
    // Test 198:  Test with dataset: sbox64
    // result rd:x13(0x3e1da281813e1da2), rs1:x19(0xc6c6c6c6c6c6c6c6), rs2:x4(0x3939393939393939)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0x3e1da281813e1da2, 0xc6c6c6c6c6c6c6c6, 0x3939393939393939, x1, 24, x2)

inst_199:
    // Test 199:  Test with dataset: sbox64
    // result rd:x14(0xff71b83636ff71b8), rs1:x18(0xc7c7c7c7c7c7c7c7), rs2:x3(0x3838383838383838)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0xff71b83636ff71b8, 0xc7c7c7c7c7c7c7c7, 0x3838383838383838, x1, 32, x2)

    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with dataset: sbox64
    // result rd:x15(0xb8bebbbdbdb8bebb), rs1:x17(0xc8c8c8c8c8c8c8c8), rs2:x2(0x3737373737373737)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0xb8bebbbdbdb8bebb, 0xc8c8c8c8c8c8c8c8, 0x3737373737373737, x3, 0, x4)

inst_201:
    // Test 201:  Test with dataset: sbox64
    // result rd:x16(0x90fca6caca90fca6), rs1:x16(0xc9c9c9c9c9c9c9c9), rs2:x1(0x3636363636363636)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0x90fca6caca90fca6, 0xc9c9c9c9c9c9c9c9, 0x3636363636363636, x3, 8, x4)

inst_202:
    // Test 202:  Test with dataset: sbox64
    // result rd:x17(0x59d090191959d090), rs1:x15(0xcacacacacacacaca), rs2:x31(0x3535353535353535)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0x59d090191959d090, 0xcacacacacacacaca, 0x3535353535353535, x3, 16, x4)

inst_203:
    // Test 203:  Test with dataset: sbox64
    // result rd:x18(0x15f764868615f764), rs1:x14(0xcbcbcbcbcbcbcbcb), rs2:x30(0x3434343434343434)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0x15f764868615f764, 0xcbcbcbcbcbcbcbcb, 0x3434343434343434, x3, 24, x4)

inst_204:
    // Test 204:  Test with dataset: sbox64
    // result rd:x19(0xfb79ba3838fb79ba), rs1:x13(0xcccccccccccccccc), rs2:x29(0x3333333333333333)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0xfb79ba3838fb79ba, 0xcccccccccccccccc, 0x3333333333333333, x3, 32, x4)

    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with dataset: sbox64
    // result rd:x20(0x6725460404672546), rs1:x12(0xcdcdcdcdcdcdcdcd), rs2:x28(0x3232323232323232)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0x6725460404672546, 0xcdcdcdcdcdcdcdcd, 0x3232323232323232, x1, 0, x2)

inst_206:
    // Test 206:  Test with dataset: sbox64
    // result rd:x21(0x940b56c9c9940b56), rs1:x11(0xcececececececece), rs2:x27(0x3131313131313131)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0x940b56c9c9940b56, 0xcececececececece, 0x3131313131313131, x1, 8, x2)

inst_207:
    // Test 207:  Test with dataset: sbox64
    // result rd:x22(0xe14fb61818e14fb6), rs1:x10(0xcfcfcfcfcfcfcfcf), rs2:x26(0x3030303030303030)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0xe14fb61818e14fb6, 0xcfcfcfcfcfcfcfcf, 0x3030303030303030, x1, 16, x2)

inst_208:
    // Test 208:  Test with dataset: sbox64
    // result rd:x23(0xaaf684d8d8aaf684), rs1:x9(0xd0d0d0d0d0d0d0d0), rs2:x25(0x2f2f2f2f2f2f2f2f)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0xaaf684d8d8aaf684, 0xd0d0d0d0d0d0d0d0, 0x2f2f2f2f2f2f2f2f, x1, 24, x2)

inst_209:
    // Test 209:  Test with dataset: sbox64
    // result rd:x24(0x82bd102f2f82bd10), rs1:x8(0xd1d1d1d1d1d1d1d1), rs2:x24(0x2e2e2e2e2e2e2e2e)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0x82bd102f2f82bd10, 0xd1d1d1d1d1d1d1d1, 0x2e2e2e2e2e2e2e2e, x1, 32, x2)

    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with dataset: sbox64
    // result rd:x25(0xc9d84c5d5dc9d84c), rs1:x7(0xd2d2d2d2d2d2d2d2), rs2:x23(0x2d2d2d2d2d2d2d2d)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0xc9d84c5d5dc9d84c, 0xd2d2d2d2d2d2d2d2, 0x2d2d2d2d2d2d2d2d, x1, 0, x2)

inst_211:
    // Test 211:  Test with dataset: sbox64
    // result rd:x26(0x0ec3e528280ec3e5), rs1:x6(0xd3d3d3d3d3d3d3d3), rs2:x22(0x2c2c2c2c2c2c2c2c)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0x0ec3e528280ec3e5, 0xd3d3d3d3d3d3d3d3, 0x2c2c2c2c2c2c2c2c, x1, 8, x2)

inst_212:
    // Test 212:  Test with dataset: sbox64
    // result rd:x27(0x6743755151674375), rs1:x5(0xd4d4d4d4d4d4d4d4), rs2:x21(0x2b2b2b2b2b2b2b2b)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0x6743755151674375, 0xd4d4d4d4d4d4d4d4, 0x2b2b2b2b2b2b2b2b, x1, 16, x2)

inst_213:
    // Test 213:  Test with dataset: sbox64
    // result rd:x28(0x5515753535551575), rs1:x4(0xd5d5d5d5d5d5d5d5), rs2:x20(0x2a2a2a2a2a2a2a2a)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0x5515753535551575, 0xd5d5d5d5d5d5d5d5, 0x2a2a2a2a2a2a2a2a, x1, 24, x2)

inst_214:
    // Test 214:  Test with dataset: sbox64
    // result rd:x29(0x58545e525258545e), rs1:x3(0xd6d6d6d6d6d6d6d6), rs2:x19(0x2929292929292929)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0x58545e525258545e, 0xd6d6d6d6d6d6d6d6, 0x2929292929292929, x1, 32, x2)

    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with dataset: sbox64
    // result rd:x30(0x924f71acac924f71), rs1:x2(0xd7d7d7d7d7d7d7d7), rs2:x18(0x2828282828282828)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0x924f71acac924f71, 0xd7d7d7d7d7d7d7d7, 0x2828282828282828, x4, 0, x5)

inst_216:
    // Test 216:  Test with dataset: sbox64
    // result rd:x31(0x5d7d4d6d6d5d7d4d), rs1:x1(0xd8d8d8d8d8d8d8d8), rs2:x17(0x2727272727272727)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0x5d7d4d6d6d5d7d4d, 0xd8d8d8d8d8d8d8d8, 0x2727272727272727, x4, 8, x5)

inst_217:
    // Test 217:  Test with dataset: sbox64
    // result rd:x1(0x811647d0d0811647), rs1:x31(0xd9d9d9d9d9d9d9d9), rs2:x16(0x2626262626262626)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0x811647d0d0811647, 0xd9d9d9d9d9d9d9d9, 0x2626262626262626, x4, 16, x5)

inst_218:
    // Test 218:  Test with dataset: sbox64
    // result rd:x2(0x7f14c7acac7f14c7), rs1:x30(0xdadadadadadadada), rs2:x15(0x2525252525252525)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x7f14c7acac7f14c7, 0xdadadadadadadada, 0x2525252525252525, x4, 24, x5)

inst_219:
    // Test 219:  Test with dataset: sbox64
    // result rd:x3(0x3042097b7b304209), rs1:x29(0xdbdbdbdbdbdbdbdb), rs2:x14(0x2424242424242424)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0x3042097b7b304209, 0xdbdbdbdbdbdbdbdb, 0x2424242424242424, x4, 32, x5)

    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with dataset: sbox64
    // result rd:x4(0xd980782121d98078), rs1:x28(0xdcdcdcdcdcdcdcdc), rs2:x13(0x2323232323232323)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0xd980782121d98078, 0xdcdcdcdcdcdcdcdc, 0x2323232323232323, x1, 0, x2)

inst_221:
    // Test 221:  Test with dataset: sbox64
    // result rd:x5(0x41fb1ca6a641fb1c), rs1:x27(0xdddddddddddddddd), rs2:x12(0x2222222222222222)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0x41fb1ca6a641fb1c, 0xdddddddddddddddd, 0x2222222222222222, x1, 8, x2)

inst_222:
    // Test 222:  Test with dataset: sbox64
    // result rd:x6(0x1fcaf82d2d1fcaf8), rs1:x26(0xdededededededede), rs2:x11(0x2121212121212121)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0x1fcaf82d2d1fcaf8, 0xdededededededede, 0x2121212121212121, x1, 16, x2)

inst_223:
    // Test 223:  Test with dataset: sbox64
    // result rd:x7(0xe38e583535e38e58), rs1:x25(0xdfdfdfdfdfdfdfdf), rs2:x10(0x2020202020202020)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0xe38e583535e38e58, 0xdfdfdfdfdfdfdfdf, 0x2020202020202020, x1, 24, x2)

inst_224:
    // Test 224:  Test with dataset: sbox64
    // result rd:x8(0xaa7cc11717aa7cc1), rs1:x24(0xe0e0e0e0e0e0e0e0), rs2:x9(0x1f1f1f1f1f1f1f1f)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0xaa7cc11717aa7cc1, 0xe0e0e0e0e0e0e0e0, 0x1f1f1f1f1f1f1f1f, x1, 32, x2)

    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with dataset: sbox64
    // result rd:x9(0xdfcdd6c4c4dfcdd6), rs1:x23(0xe1e1e1e1e1e1e1e1), rs2:x8(0x1e1e1e1e1e1e1e1e)
    TEST_RR_OP(aes64dsm, x9, x23, x8, 0xdfcdd6c4c4dfcdd6, 0xe1e1e1e1e1e1e1e1, 0x1e1e1e1e1e1e1e1e, x1, 0, x2)

inst_226:
    // Test 226:  Test with dataset: sbox64
    // result rd:x10(0xb667538282b66753), rs1:x22(0xe2e2e2e2e2e2e2e2), rs2:x7(0x1d1d1d1d1d1d1d1d)
    TEST_RR_OP(aes64dsm, x10, x22, x7, 0xb667538282b66753, 0xe2e2e2e2e2e2e2e2, 0x1d1d1d1d1d1d1d1d, x1, 8, x2)

inst_227:
    // Test 227:  Test with dataset: sbox64
    // result rd:x11(0xdfd6565f5fdfd656), rs1:x21(0xe3e3e3e3e3e3e3e3), rs2:x6(0x1c1c1c1c1c1c1c1c)
    TEST_RR_OP(aes64dsm, x11, x21, x6, 0xdfd6565f5fdfd656, 0xe3e3e3e3e3e3e3e3, 0x1c1c1c1c1c1c1c1c, x1, 16, x2)

inst_228:
    // Test 228:  Test with dataset: sbox64
    // result rd:x12(0x0ec1e42b2b0ec1e4), rs1:x20(0xe4e4e4e4e4e4e4e4), rs2:x5(0x1b1b1b1b1b1b1b1b)
    TEST_RR_OP(aes64dsm, x12, x20, x5, 0x0ec1e42b2b0ec1e4, 0xe4e4e4e4e4e4e4e4, 0x1b1b1b1b1b1b1b1b, x1, 24, x2)

inst_229:
    // Test 229:  Test with dataset: sbox64
    // result rd:x13(0x2efc4795952efc47), rs1:x19(0xe5e5e5e5e5e5e5e5), rs2:x4(0x1a1a1a1a1a1a1a1a)
    TEST_RR_OP(aes64dsm, x13, x19, x4, 0x2efc4795952efc47, 0xe5e5e5e5e5e5e5e5, 0x1a1a1a1a1a1a1a1a, x1, 32, x2)

    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with dataset: sbox64
    // result rd:x14(0x8f79f402028f79f4), rs1:x18(0xe6e6e6e6e6e6e6e6), rs2:x3(0x1919191919191919)
    TEST_RR_OP(aes64dsm, x14, x18, x3, 0x8f79f402028f79f4, 0xe6e6e6e6e6e6e6e6, 0x1919191919191919, x4, 0, x5)

inst_231:
    // Test 231:  Test with dataset: sbox64
    // result rd:x15(0x0112859696011285), rs1:x17(0xe7e7e7e7e7e7e7e7), rs2:x2(0x1818181818181818)
    TEST_RR_OP(aes64dsm, x15, x17, x2, 0x0112859696011285, 0xe7e7e7e7e7e7e7e7, 0x1818181818181818, x4, 8, x5)

inst_232:
    // Test 232:  Test with dataset: sbox64
    // result rd:x16(0x3ea071efef3ea071), rs1:x16(0xe8e8e8e8e8e8e8e8), rs2:x1(0x1717171717171717)
    TEST_RR_OP(aes64dsm, x16, x16, x1, 0x3ea071efef3ea071, 0xe8e8e8e8e8e8e8e8, 0x1717171717171717, x4, 16, x5)

inst_233:
    // Test 233:  Test with dataset: sbox64
    // result rd:x17(0x87af93bbbb87af93), rs1:x15(0xe9e9e9e9e9e9e9e9), rs2:x31(0x1616161616161616)
    TEST_RR_OP(aes64dsm, x17, x15, x31, 0x87af93bbbb87af93, 0xe9e9e9e9e9e9e9e9, 0x1616161616161616, x4, 24, x5)

inst_234:
    // Test 234:  Test with dataset: sbox64
    // result rd:x18(0x7a49eedddd7a49ee), rs1:x14(0xeaeaeaeaeaeaeaea), rs2:x30(0x1515151515151515)
    TEST_RR_OP(aes64dsm, x18, x14, x30, 0x7a49eedddd7a49ee, 0xeaeaeaeaeaeaeaea, 0x1515151515151515, x4, 32, x5)

    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with dataset: sbox64
    // result rd:x19(0x6431c396966431c3), rs1:x13(0xebebebebebebebeb), rs2:x29(0x1414141414141414)
    TEST_RR_OP(aes64dsm, x19, x13, x29, 0x6431c396966431c3, 0xebebebebebebebeb, 0x1414141414141414, x1, 0, x2)

inst_236:
    // Test 236:  Test with dataset: sbox64
    // result rd:x20(0x8486858787848685), rs1:x12(0xecececececececec), rs2:x28(0x1313131313131313)
    TEST_RR_OP(aes64dsm, x20, x12, x28, 0x8486858787848685, 0xecececececececec, 0x1313131313131313, x1, 8, x2)

inst_237:
    // Test 237:  Test with dataset: sbox64
    // result rd:x21(0x5e8a34e0e05e8a34), rs1:x11(0xedededededededed), rs2:x27(0x1212121212121212)
    TEST_RR_OP(aes64dsm, x21, x11, x27, 0x5e8a34e0e05e8a34, 0xedededededededed, 0x1212121212121212, x1, 16, x2)

inst_238:
    // Test 238:  Test with dataset: sbox64
    // result rd:x22(0xe4109e6a6ae4109e), rs1:x10(0xeeeeeeeeeeeeeeee), rs2:x26(0x1111111111111111)
    TEST_RR_OP(aes64dsm, x22, x10, x26, 0xe4109e6a6ae4109e, 0xeeeeeeeeeeeeeeee, 0x1111111111111111, x1, 24, x2)

inst_239:
    // Test 239:  Test with dataset: sbox64
    // result rd:x23(0x32082f151532082f), rs1:x9(0xefefefefefefefef), rs2:x25(0x1010101010101010)
    TEST_RR_OP(aes64dsm, x23, x9, x25, 0x32082f151532082f, 0xefefefefefefefef, 0x1010101010101010, x1, 32, x2)

    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with dataset: sbox64
    // result rd:x24(0xa566498a8aa56649), rs1:x8(0xf0f0f0f0f0f0f0f0), rs2:x24(0x0f0f0f0f0f0f0f0f)
    TEST_RR_OP(aes64dsm, x24, x8, x24, 0xa566498a8aa56649, 0xf0f0f0f0f0f0f0f0, 0xf0f0f0f0f0f0f0f, x1, 0, x2)

inst_241:
    // Test 241:  Test with dataset: sbox64
    // result rd:x25(0xe90a15f6f6e90a15), rs1:x7(0xf1f1f1f1f1f1f1f1), rs2:x23(0x0e0e0e0e0e0e0e0e)
    TEST_RR_OP(aes64dsm, x25, x7, x23, 0xe90a15f6f6e90a15, 0xf1f1f1f1f1f1f1f1, 0xe0e0e0e0e0e0e0e, x1, 8, x2)

inst_242:
    // Test 242:  Test with dataset: sbox64
    // result rd:x26(0xf70200f5f5f70200), rs1:x6(0xf2f2f2f2f2f2f2f2), rs2:x22(0x0d0d0d0d0d0d0d0d)
    TEST_RR_OP(aes64dsm, x26, x6, x22, 0xf70200f5f5f70200, 0xf2f2f2f2f2f2f2f2, 0xd0d0d0d0d0d0d0d, x1, 16, x2)

inst_243:
    // Test 243:  Test with dataset: sbox64
    // result rd:x27(0xb5504aafafb5504a), rs1:x5(0xf3f3f3f3f3f3f3f3), rs2:x21(0x0c0c0c0c0c0c0c0c)
    TEST_RR_OP(aes64dsm, x27, x5, x21, 0xb5504aafafb5504a, 0xf3f3f3f3f3f3f3f3, 0xc0c0c0c0c0c0c0c, x1, 24, x2)

inst_244:
    // Test 244:  Test with dataset: sbox64
    // result rd:x28(0x460e622a2a460e62), rs1:x4(0xf4f4f4f4f4f4f4f4), rs2:x20(0x0b0b0b0b0b0b0b0b)
    TEST_RR_OP(aes64dsm, x28, x4, x20, 0x460e622a2a460e62, 0xf4f4f4f4f4f4f4f4, 0xb0b0b0b0b0b0b0b, x1, 32, x2)

    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with dataset: sbox64
    // result rd:x29(0x6ddeb90a0a6ddeb9), rs1:x3(0xf5f5f5f5f5f5f5f5), rs2:x19(0x0a0a0a0a0a0a0a0a)
    TEST_RR_OP(aes64dsm, x29, x3, x19, 0x6ddeb90a0a6ddeb9, 0xf5f5f5f5f5f5f5f5, 0xa0a0a0a0a0a0a0a, x4, 0, x5)

inst_246:
    // Test 246:  Test with dataset: sbox64
    // result rd:x30(0x192e8fb8b8192e8f), rs1:x2(0xf6f6f6f6f6f6f6f6), rs2:x18(0x0909090909090909)
    TEST_RR_OP(aes64dsm, x30, x2, x18, 0x192e8fb8b8192e8f, 0xf6f6f6f6f6f6f6f6, 0x909090909090909, x4, 8, x5)

inst_247:
    // Test 247:  Test with dataset: sbox64
    // result rd:x31(0xc4ed5d7474c4ed5d), rs1:x1(0xf7f7f7f7f7f7f7f7), rs2:x17(0x0808080808080808)
    TEST_RR_OP(aes64dsm, x31, x1, x17, 0xc4ed5d7474c4ed5d, 0xf7f7f7f7f7f7f7f7, 0x808080808080808, x4, 16, x5)

inst_248:
    // Test 248:  Test with dataset: sbox64
    // result rd:x1(0xd87101a8a8d87101), rs1:x31(0xf8f8f8f8f8f8f8f8), rs2:x16(0x0707070707070707)
    TEST_RR_OP(aes64dsm, x1, x31, x16, 0xd87101a8a8d87101, 0xf8f8f8f8f8f8f8f8, 0x707070707070707, x4, 24, x5)

inst_249:
    // Test 249:  Test with dataset: sbox64
    // result rd:x2(0x3bb8f774743bb8f7), rs1:x30(0xf9f9f9f9f9f9f9f9), rs2:x15(0x0606060606060606)
    TEST_RR_OP(aes64dsm, x2, x30, x15, 0x3bb8f774743bb8f7, 0xf9f9f9f9f9f9f9f9, 0x606060606060606, x4, 32, x5)

    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with dataset: sbox64
    // result rd:x3(0xfabed89c9cfabed8), rs1:x29(0xfafafafafafafafa), rs2:x14(0x0505050505050505)
    TEST_RR_OP(aes64dsm, x3, x29, x14, 0xfabed89c9cfabed8, 0xfafafafafafafafa, 0x505050505050505, x1, 0, x2)

inst_251:
    // Test 251:  Test with dataset: sbox64
    // result rd:x4(0xc167923434c16792), rs1:x28(0xfbfbfbfbfbfbfbfb), rs2:x13(0x0404040404040404)
    TEST_RR_OP(aes64dsm, x4, x28, x13, 0xc167923434c16792, 0xfbfbfbfbfbfbfbfb, 0x404040404040404, x1, 8, x2)

inst_252:
    // Test 252:  Test with dataset: sbox64
    // result rd:x5(0xf8e3786363f8e378), rs1:x27(0xfcfcfcfcfcfcfcfc), rs2:x12(0x0303030303030303)
    TEST_RR_OP(aes64dsm, x5, x27, x12, 0xf8e3786363f8e378, 0xfcfcfcfcfcfcfcfc, 0x303030303030303, x1, 16, x2)

inst_253:
    // Test 253:  Test with dataset: sbox64
    // result rd:x6(0xcb5d801616cb5d80), rs1:x26(0xfdfdfdfdfdfdfdfd), rs2:x11(0x0202020202020202)
    TEST_RR_OP(aes64dsm, x6, x26, x11, 0xcb5d801616cb5d80, 0xfdfdfdfdfdfdfdfd, 0x202020202020202, x1, 24, x2)

inst_254:
    // Test 254:  Test with dataset: sbox64
    // result rd:x7(0x171d121818171d12), rs1:x25(0xfefefefefefefefe), rs2:x10(0x0101010101010101)
    TEST_RR_OP(aes64dsm, x7, x25, x10, 0x171d121818171d12, 0xfefefefefefefefe, 0x101010101010101, x1, 32, x2)

    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64dsm)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with dataset: sbox64
    // result rd:x8(0xb0ee9fc1c1b0ee9f), rs1:x24(0xffffffffffffffff), rs2:x9(0x0000000000000000)
    TEST_RR_OP(aes64dsm, x8, x24, x9, 0xb0ee9fc1c1b0ee9f, 0xffffffffffffffff, 0x0, x1, 0, x2)
	
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

