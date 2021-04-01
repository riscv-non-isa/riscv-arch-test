// RISC-V Architectural Validation Test AES64IM-02
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
// Description: Testing instruction 'aes64im'.
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


    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x6,signature_1_0)

 
 inst_0:
    // Test 0:  Test with dataset: sbox64
    // result rd:x1(0x0000000000000000), rs1:x31(0x0000000000000000)
    li  x31, 0x0
    aes64im x1, x31
    sd x1, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x0000000000000000)
 
 inst_1:
    // Test 1:  Test with dataset: sbox64
    // result rd:x2(0x0101010101010101), rs1:x30(0x0101010101010101)
    li  x30, 0x101010101010101
    aes64im x2, x30
    sd x2, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x0101010101010101)
 
 inst_2:
    // Test 2:  Test with dataset: sbox64
    // result rd:x3(0x0202020202020202), rs1:x29(0x0202020202020202)
    li  x29, 0x202020202020202
    aes64im x3, x29
    sd x3, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x0202020202020202)
 
 inst_3:
    // Test 3:  Test with dataset: sbox64
    // result rd:x4(0x0303030303030303), rs1:x28(0x0303030303030303)
    li  x28, 0x303030303030303
    aes64im x4, x28
    sd x4, 24(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x0303030303030303)
 
 inst_4:
    // Test 4:  Test with dataset: sbox64
    // result rd:x5(0x0404040404040404), rs1:x27(0x0404040404040404)
    li  x27, 0x404040404040404
    aes64im x5, x27
    sd x5, 32(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x0404040404040404)


    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_2_0)

 
 inst_5:
    // Test 5:  Test with dataset: sbox64
    // result rd:x6(0x0505050505050505), rs1:x26(0x0505050505050505)
    li  x26, 0x505050505050505
    aes64im x6, x26
    sd x6, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0505050505050505)
 
 inst_6:
    // Test 6:  Test with dataset: sbox64
    // result rd:x7(0x0606060606060606), rs1:x25(0x0606060606060606)
    li  x25, 0x606060606060606
    aes64im x7, x25
    sd x7, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0606060606060606)
 
 inst_7:
    // Test 7:  Test with dataset: sbox64
    // result rd:x8(0x0707070707070707), rs1:x24(0x0707070707070707)
    li  x24, 0x707070707070707
    aes64im x8, x24
    sd x8, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0707070707070707)
 
 inst_8:
    // Test 8:  Test with dataset: sbox64
    // result rd:x9(0x0808080808080808), rs1:x23(0x0808080808080808)
    li  x23, 0x808080808080808
    aes64im x9, x23
    sd x9, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0808080808080808)
 
 inst_9:
    // Test 9:  Test with dataset: sbox64
    // result rd:x10(0x0909090909090909), rs1:x22(0x0909090909090909)
    li  x22, 0x909090909090909
    aes64im x10, x22
    sd x10, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0909090909090909)


    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_3_0)

 
 inst_10:
    // Test 10:  Test with dataset: sbox64
    // result rd:x11(0x0a0a0a0a0a0a0a0a), rs1:x21(0x0a0a0a0a0a0a0a0a)
    li  x21, 0xa0a0a0a0a0a0a0a
    aes64im x11, x21
    sd x11, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x0a0a0a0a0a0a0a0a)
 
 inst_11:
    // Test 11:  Test with dataset: sbox64
    // result rd:x12(0x0b0b0b0b0b0b0b0b), rs1:x20(0x0b0b0b0b0b0b0b0b)
    li  x20, 0xb0b0b0b0b0b0b0b
    aes64im x12, x20
    sd x12, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x0b0b0b0b0b0b0b0b)
 
 inst_12:
    // Test 12:  Test with dataset: sbox64
    // result rd:x13(0x0c0c0c0c0c0c0c0c), rs1:x19(0x0c0c0c0c0c0c0c0c)
    li  x19, 0xc0c0c0c0c0c0c0c
    aes64im x13, x19
    sd x13, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x0c0c0c0c0c0c0c0c)
 
 inst_13:
    // Test 13:  Test with dataset: sbox64
    // result rd:x14(0x0d0d0d0d0d0d0d0d), rs1:x18(0x0d0d0d0d0d0d0d0d)
    li  x18, 0xd0d0d0d0d0d0d0d
    aes64im x14, x18
    sd x14, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x0d0d0d0d0d0d0d0d)
 
 inst_14:
    // Test 14:  Test with dataset: sbox64
    // result rd:x15(0x0e0e0e0e0e0e0e0e), rs1:x17(0x0e0e0e0e0e0e0e0e)
    li  x17, 0xe0e0e0e0e0e0e0e
    aes64im x15, x17
    sd x15, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x0e0e0e0e0e0e0e0e)


    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x2,signature_4_0)

 
 inst_15:
    // Test 15:  Test with dataset: sbox64
    // result rd:x16(0x0f0f0f0f0f0f0f0f), rs1:x16(0x0f0f0f0f0f0f0f0f)
    li  x16, 0xf0f0f0f0f0f0f0f
    aes64im x16, x16
    sd x16, 0(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x0f0f0f0f0f0f0f0f)
 
 inst_16:
    // Test 16:  Test with dataset: sbox64
    // result rd:x17(0x1010101010101010), rs1:x15(0x1010101010101010)
    li  x15, 0x1010101010101010
    aes64im x17, x15
    sd x17, 8(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x1010101010101010)
 
 inst_17:
    // Test 17:  Test with dataset: sbox64
    // result rd:x18(0x1111111111111111), rs1:x14(0x1111111111111111)
    li  x14, 0x1111111111111111
    aes64im x18, x14
    sd x18, 16(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x1111111111111111)
 
 inst_18:
    // Test 18:  Test with dataset: sbox64
    // result rd:x19(0x1212121212121212), rs1:x13(0x1212121212121212)
    li  x13, 0x1212121212121212
    aes64im x19, x13
    sd x19, 24(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x1212121212121212)
 
 inst_19:
    // Test 19:  Test with dataset: sbox64
    // result rd:x20(0x1313131313131313), rs1:x12(0x1313131313131313)
    li  x12, 0x1313131313131313
    aes64im x20, x12
    sd x20, 32(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x1313131313131313)


    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_5_0)

 
 inst_20:
    // Test 20:  Test with dataset: sbox64
    // result rd:x21(0x1414141414141414), rs1:x11(0x1414141414141414)
    li  x11, 0x1414141414141414
    aes64im x21, x11
    sd x21, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x1414141414141414)
 
 inst_21:
    // Test 21:  Test with dataset: sbox64
    // result rd:x22(0x1515151515151515), rs1:x10(0x1515151515151515)
    li  x10, 0x1515151515151515
    aes64im x22, x10
    sd x22, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x1515151515151515)
 
 inst_22:
    // Test 22:  Test with dataset: sbox64
    // result rd:x23(0x1616161616161616), rs1:x9(0x1616161616161616)
    li  x9, 0x1616161616161616
    aes64im x23, x9
    sd x23, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x1616161616161616)
 
 inst_23:
    // Test 23:  Test with dataset: sbox64
    // result rd:x24(0x1717171717171717), rs1:x8(0x1717171717171717)
    li  x8, 0x1717171717171717
    aes64im x24, x8
    sd x24, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x1717171717171717)
 
 inst_24:
    // Test 24:  Test with dataset: sbox64
    // result rd:x25(0x1818181818181818), rs1:x7(0x1818181818181818)
    li  x7, 0x1818181818181818
    aes64im x25, x7
    sd x25, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x1818181818181818)


    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_6_0)

 
 inst_25:
    // Test 25:  Test with dataset: sbox64
    // result rd:x26(0x1919191919191919), rs1:x6(0x1919191919191919)
    li  x6, 0x1919191919191919
    aes64im x26, x6
    sd x26, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x1919191919191919)
 
 inst_26:
    // Test 26:  Test with dataset: sbox64
    // result rd:x27(0x1a1a1a1a1a1a1a1a), rs1:x5(0x1a1a1a1a1a1a1a1a)
    li  x5, 0x1a1a1a1a1a1a1a1a
    aes64im x27, x5
    sd x27, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x1a1a1a1a1a1a1a1a)
 
 inst_27:
    // Test 27:  Test with dataset: sbox64
    // result rd:x28(0x1b1b1b1b1b1b1b1b), rs1:x4(0x1b1b1b1b1b1b1b1b)
    li  x4, 0x1b1b1b1b1b1b1b1b
    aes64im x28, x4
    sd x28, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x1b1b1b1b1b1b1b1b)
 
 inst_28:
    // Test 28:  Test with dataset: sbox64
    // result rd:x29(0x1c1c1c1c1c1c1c1c), rs1:x3(0x1c1c1c1c1c1c1c1c)
    li  x3, 0x1c1c1c1c1c1c1c1c
    aes64im x29, x3
    sd x29, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x1c1c1c1c1c1c1c1c)
 
 inst_29:
    // Test 29:  Test with dataset: sbox64
    // result rd:x30(0x1d1d1d1d1d1d1d1d), rs1:x2(0x1d1d1d1d1d1d1d1d)
    li  x2, 0x1d1d1d1d1d1d1d1d
    aes64im x30, x2
    sd x30, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x1d1d1d1d1d1d1d1d)


    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x5,signature_7_0)

 
 inst_30:
    // Test 30:  Test with dataset: sbox64
    // result rd:x31(0x1e1e1e1e1e1e1e1e), rs1:x1(0x1e1e1e1e1e1e1e1e)
    li  x1, 0x1e1e1e1e1e1e1e1e
    aes64im x31, x1
    sd x31, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x1e1e1e1e1e1e1e1e)
 
 inst_31:
    // Test 31:  Test with dataset: sbox64
    // result rd:x1(0x1f1f1f1f1f1f1f1f), rs1:x31(0x1f1f1f1f1f1f1f1f)
    li  x31, 0x1f1f1f1f1f1f1f1f
    aes64im x1, x31
    sd x1, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x1f1f1f1f1f1f1f1f)
 
 inst_32:
    // Test 32:  Test with dataset: sbox64
    // result rd:x2(0x2020202020202020), rs1:x30(0x2020202020202020)
    li  x30, 0x2020202020202020
    aes64im x2, x30
    sd x2, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x2020202020202020)
 
 inst_33:
    // Test 33:  Test with dataset: sbox64
    // result rd:x3(0x2121212121212121), rs1:x29(0x2121212121212121)
    li  x29, 0x2121212121212121
    aes64im x3, x29
    sd x3, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x2121212121212121)
 
 inst_34:
    // Test 34:  Test with dataset: sbox64
    // result rd:x4(0x2222222222222222), rs1:x28(0x2222222222222222)
    li  x28, 0x2222222222222222
    aes64im x4, x28
    sd x4, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x2222222222222222)


    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_8_0)

 
 inst_35:
    // Test 35:  Test with dataset: sbox64
    // result rd:x5(0x2323232323232323), rs1:x27(0x2323232323232323)
    li  x27, 0x2323232323232323
    aes64im x5, x27
    sd x5, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x2323232323232323)
 
 inst_36:
    // Test 36:  Test with dataset: sbox64
    // result rd:x6(0x2424242424242424), rs1:x26(0x2424242424242424)
    li  x26, 0x2424242424242424
    aes64im x6, x26
    sd x6, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x2424242424242424)
 
 inst_37:
    // Test 37:  Test with dataset: sbox64
    // result rd:x7(0x2525252525252525), rs1:x25(0x2525252525252525)
    li  x25, 0x2525252525252525
    aes64im x7, x25
    sd x7, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x2525252525252525)
 
 inst_38:
    // Test 38:  Test with dataset: sbox64
    // result rd:x8(0x2626262626262626), rs1:x24(0x2626262626262626)
    li  x24, 0x2626262626262626
    aes64im x8, x24
    sd x8, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x2626262626262626)
 
 inst_39:
    // Test 39:  Test with dataset: sbox64
    // result rd:x9(0x2727272727272727), rs1:x23(0x2727272727272727)
    li  x23, 0x2727272727272727
    aes64im x9, x23
    sd x9, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x2727272727272727)


    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_9_0)

 
 inst_40:
    // Test 40:  Test with dataset: sbox64
    // result rd:x10(0x2828282828282828), rs1:x22(0x2828282828282828)
    li  x22, 0x2828282828282828
    aes64im x10, x22
    sd x10, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x2828282828282828)
 
 inst_41:
    // Test 41:  Test with dataset: sbox64
    // result rd:x11(0x2929292929292929), rs1:x21(0x2929292929292929)
    li  x21, 0x2929292929292929
    aes64im x11, x21
    sd x11, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x2929292929292929)
 
 inst_42:
    // Test 42:  Test with dataset: sbox64
    // result rd:x12(0x2a2a2a2a2a2a2a2a), rs1:x20(0x2a2a2a2a2a2a2a2a)
    li  x20, 0x2a2a2a2a2a2a2a2a
    aes64im x12, x20
    sd x12, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x2a2a2a2a2a2a2a2a)
 
 inst_43:
    // Test 43:  Test with dataset: sbox64
    // result rd:x13(0x2b2b2b2b2b2b2b2b), rs1:x19(0x2b2b2b2b2b2b2b2b)
    li  x19, 0x2b2b2b2b2b2b2b2b
    aes64im x13, x19
    sd x13, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x2b2b2b2b2b2b2b2b)
 
 inst_44:
    // Test 44:  Test with dataset: sbox64
    // result rd:x14(0x2c2c2c2c2c2c2c2c), rs1:x18(0x2c2c2c2c2c2c2c2c)
    li  x18, 0x2c2c2c2c2c2c2c2c
    aes64im x14, x18
    sd x14, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x2c2c2c2c2c2c2c2c)


    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x3,signature_10_0)

 
 inst_45:
    // Test 45:  Test with dataset: sbox64
    // result rd:x15(0x2d2d2d2d2d2d2d2d), rs1:x17(0x2d2d2d2d2d2d2d2d)
    li  x17, 0x2d2d2d2d2d2d2d2d
    aes64im x15, x17
    sd x15, 0(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x2d2d2d2d2d2d2d2d)
 
 inst_46:
    // Test 46:  Test with dataset: sbox64
    // result rd:x16(0x2e2e2e2e2e2e2e2e), rs1:x16(0x2e2e2e2e2e2e2e2e)
    li  x16, 0x2e2e2e2e2e2e2e2e
    aes64im x16, x16
    sd x16, 8(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x2e2e2e2e2e2e2e2e)
 
 inst_47:
    // Test 47:  Test with dataset: sbox64
    // result rd:x17(0x2f2f2f2f2f2f2f2f), rs1:x15(0x2f2f2f2f2f2f2f2f)
    li  x15, 0x2f2f2f2f2f2f2f2f
    aes64im x17, x15
    sd x17, 16(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x2f2f2f2f2f2f2f2f)
 
 inst_48:
    // Test 48:  Test with dataset: sbox64
    // result rd:x18(0x3030303030303030), rs1:x14(0x3030303030303030)
    li  x14, 0x3030303030303030
    aes64im x18, x14
    sd x18, 24(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x3030303030303030)
 
 inst_49:
    // Test 49:  Test with dataset: sbox64
    // result rd:x19(0x3131313131313131), rs1:x13(0x3131313131313131)
    li  x13, 0x3131313131313131
    aes64im x19, x13
    sd x19, 32(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x3131313131313131)


    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_11_0)

 
 inst_50:
    // Test 50:  Test with dataset: sbox64
    // result rd:x20(0x3232323232323232), rs1:x12(0x3232323232323232)
    li  x12, 0x3232323232323232
    aes64im x20, x12
    sd x20, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x3232323232323232)
 
 inst_51:
    // Test 51:  Test with dataset: sbox64
    // result rd:x21(0x3333333333333333), rs1:x11(0x3333333333333333)
    li  x11, 0x3333333333333333
    aes64im x21, x11
    sd x21, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x3333333333333333)
 
 inst_52:
    // Test 52:  Test with dataset: sbox64
    // result rd:x22(0x3434343434343434), rs1:x10(0x3434343434343434)
    li  x10, 0x3434343434343434
    aes64im x22, x10
    sd x22, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x3434343434343434)
 
 inst_53:
    // Test 53:  Test with dataset: sbox64
    // result rd:x23(0x3535353535353535), rs1:x9(0x3535353535353535)
    li  x9, 0x3535353535353535
    aes64im x23, x9
    sd x23, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x3535353535353535)
 
 inst_54:
    // Test 54:  Test with dataset: sbox64
    // result rd:x24(0x3636363636363636), rs1:x8(0x3636363636363636)
    li  x8, 0x3636363636363636
    aes64im x24, x8
    sd x24, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x3636363636363636)


    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_12_0)

 
 inst_55:
    // Test 55:  Test with dataset: sbox64
    // result rd:x25(0x3737373737373737), rs1:x7(0x3737373737373737)
    li  x7, 0x3737373737373737
    aes64im x25, x7
    sd x25, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x3737373737373737)
 
 inst_56:
    // Test 56:  Test with dataset: sbox64
    // result rd:x26(0x3838383838383838), rs1:x6(0x3838383838383838)
    li  x6, 0x3838383838383838
    aes64im x26, x6
    sd x26, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x3838383838383838)
 
 inst_57:
    // Test 57:  Test with dataset: sbox64
    // result rd:x27(0x3939393939393939), rs1:x5(0x3939393939393939)
    li  x5, 0x3939393939393939
    aes64im x27, x5
    sd x27, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x3939393939393939)
 
 inst_58:
    // Test 58:  Test with dataset: sbox64
    // result rd:x28(0x3a3a3a3a3a3a3a3a), rs1:x4(0x3a3a3a3a3a3a3a3a)
    li  x4, 0x3a3a3a3a3a3a3a3a
    aes64im x28, x4
    sd x28, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x3a3a3a3a3a3a3a3a)
 
 inst_59:
    // Test 59:  Test with dataset: sbox64
    // result rd:x29(0x3b3b3b3b3b3b3b3b), rs1:x3(0x3b3b3b3b3b3b3b3b)
    li  x3, 0x3b3b3b3b3b3b3b3b
    aes64im x29, x3
    sd x29, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x3b3b3b3b3b3b3b3b)


    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x4,signature_13_0)

 
 inst_60:
    // Test 60:  Test with dataset: sbox64
    // result rd:x30(0x3c3c3c3c3c3c3c3c), rs1:x2(0x3c3c3c3c3c3c3c3c)
    li  x2, 0x3c3c3c3c3c3c3c3c
    aes64im x30, x2
    sd x30, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x3c3c3c3c3c3c3c3c)
 
 inst_61:
    // Test 61:  Test with dataset: sbox64
    // result rd:x31(0x3d3d3d3d3d3d3d3d), rs1:x1(0x3d3d3d3d3d3d3d3d)
    li  x1, 0x3d3d3d3d3d3d3d3d
    aes64im x31, x1
    sd x31, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x3d3d3d3d3d3d3d3d)
 
 inst_62:
    // Test 62:  Test with dataset: sbox64
    // result rd:x1(0x3e3e3e3e3e3e3e3e), rs1:x31(0x3e3e3e3e3e3e3e3e)
    li  x31, 0x3e3e3e3e3e3e3e3e
    aes64im x1, x31
    sd x1, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x3e3e3e3e3e3e3e3e)
 
 inst_63:
    // Test 63:  Test with dataset: sbox64
    // result rd:x2(0x3f3f3f3f3f3f3f3f), rs1:x30(0x3f3f3f3f3f3f3f3f)
    li  x30, 0x3f3f3f3f3f3f3f3f
    aes64im x2, x30
    sd x2, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x3f3f3f3f3f3f3f3f)
 
 inst_64:
    // Test 64:  Test with dataset: sbox64
    // result rd:x3(0x4040404040404040), rs1:x29(0x4040404040404040)
    li  x29, 0x4040404040404040
    aes64im x3, x29
    sd x3, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x4040404040404040)


    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_14_0)

 
 inst_65:
    // Test 65:  Test with dataset: sbox64
    // result rd:x4(0x4141414141414141), rs1:x28(0x4141414141414141)
    li  x28, 0x4141414141414141
    aes64im x4, x28
    sd x4, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x4141414141414141)
 
 inst_66:
    // Test 66:  Test with dataset: sbox64
    // result rd:x5(0x4242424242424242), rs1:x27(0x4242424242424242)
    li  x27, 0x4242424242424242
    aes64im x5, x27
    sd x5, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x4242424242424242)
 
 inst_67:
    // Test 67:  Test with dataset: sbox64
    // result rd:x6(0x4343434343434343), rs1:x26(0x4343434343434343)
    li  x26, 0x4343434343434343
    aes64im x6, x26
    sd x6, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x4343434343434343)
 
 inst_68:
    // Test 68:  Test with dataset: sbox64
    // result rd:x7(0x4444444444444444), rs1:x25(0x4444444444444444)
    li  x25, 0x4444444444444444
    aes64im x7, x25
    sd x7, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x4444444444444444)
 
 inst_69:
    // Test 69:  Test with dataset: sbox64
    // result rd:x8(0x4545454545454545), rs1:x24(0x4545454545454545)
    li  x24, 0x4545454545454545
    aes64im x8, x24
    sd x8, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x4545454545454545)


    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_15_0)

 
 inst_70:
    // Test 70:  Test with dataset: sbox64
    // result rd:x9(0x4646464646464646), rs1:x23(0x4646464646464646)
    li  x23, 0x4646464646464646
    aes64im x9, x23
    sd x9, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x4646464646464646)
 
 inst_71:
    // Test 71:  Test with dataset: sbox64
    // result rd:x10(0x4747474747474747), rs1:x22(0x4747474747474747)
    li  x22, 0x4747474747474747
    aes64im x10, x22
    sd x10, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x4747474747474747)
 
 inst_72:
    // Test 72:  Test with dataset: sbox64
    // result rd:x11(0x4848484848484848), rs1:x21(0x4848484848484848)
    li  x21, 0x4848484848484848
    aes64im x11, x21
    sd x11, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x4848484848484848)
 
 inst_73:
    // Test 73:  Test with dataset: sbox64
    // result rd:x12(0x4949494949494949), rs1:x20(0x4949494949494949)
    li  x20, 0x4949494949494949
    aes64im x12, x20
    sd x12, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x4949494949494949)
 
 inst_74:
    // Test 74:  Test with dataset: sbox64
    // result rd:x13(0x4a4a4a4a4a4a4a4a), rs1:x19(0x4a4a4a4a4a4a4a4a)
    li  x19, 0x4a4a4a4a4a4a4a4a
    aes64im x13, x19
    sd x13, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x4a4a4a4a4a4a4a4a)


    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x4,signature_16_0)

 
 inst_75:
    // Test 75:  Test with dataset: sbox64
    // result rd:x14(0x4b4b4b4b4b4b4b4b), rs1:x18(0x4b4b4b4b4b4b4b4b)
    li  x18, 0x4b4b4b4b4b4b4b4b
    aes64im x14, x18
    sd x14, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0x4b4b4b4b4b4b4b4b)
 
 inst_76:
    // Test 76:  Test with dataset: sbox64
    // result rd:x15(0x4c4c4c4c4c4c4c4c), rs1:x17(0x4c4c4c4c4c4c4c4c)
    li  x17, 0x4c4c4c4c4c4c4c4c
    aes64im x15, x17
    sd x15, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x4c4c4c4c4c4c4c4c)
 
 inst_77:
    // Test 77:  Test with dataset: sbox64
    // result rd:x16(0x4d4d4d4d4d4d4d4d), rs1:x16(0x4d4d4d4d4d4d4d4d)
    li  x16, 0x4d4d4d4d4d4d4d4d
    aes64im x16, x16
    sd x16, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x4d4d4d4d4d4d4d4d)
 
 inst_78:
    // Test 78:  Test with dataset: sbox64
    // result rd:x17(0x4e4e4e4e4e4e4e4e), rs1:x15(0x4e4e4e4e4e4e4e4e)
    li  x15, 0x4e4e4e4e4e4e4e4e
    aes64im x17, x15
    sd x17, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x4e4e4e4e4e4e4e4e)
 
 inst_79:
    // Test 79:  Test with dataset: sbox64
    // result rd:x18(0x4f4f4f4f4f4f4f4f), rs1:x14(0x4f4f4f4f4f4f4f4f)
    li  x14, 0x4f4f4f4f4f4f4f4f
    aes64im x18, x14
    sd x18, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x4f4f4f4f4f4f4f4f)


    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_17_0)

 
 inst_80:
    // Test 80:  Test with dataset: sbox64
    // result rd:x19(0x5050505050505050), rs1:x13(0x5050505050505050)
    li  x13, 0x5050505050505050
    aes64im x19, x13
    sd x19, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x5050505050505050)
 
 inst_81:
    // Test 81:  Test with dataset: sbox64
    // result rd:x20(0x5151515151515151), rs1:x12(0x5151515151515151)
    li  x12, 0x5151515151515151
    aes64im x20, x12
    sd x20, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x5151515151515151)
 
 inst_82:
    // Test 82:  Test with dataset: sbox64
    // result rd:x21(0x5252525252525252), rs1:x11(0x5252525252525252)
    li  x11, 0x5252525252525252
    aes64im x21, x11
    sd x21, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x5252525252525252)
 
 inst_83:
    // Test 83:  Test with dataset: sbox64
    // result rd:x22(0x5353535353535353), rs1:x10(0x5353535353535353)
    li  x10, 0x5353535353535353
    aes64im x22, x10
    sd x22, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x5353535353535353)
 
 inst_84:
    // Test 84:  Test with dataset: sbox64
    // result rd:x23(0x5454545454545454), rs1:x9(0x5454545454545454)
    li  x9, 0x5454545454545454
    aes64im x23, x9
    sd x23, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x5454545454545454)


    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_18_0)

 
 inst_85:
    // Test 85:  Test with dataset: sbox64
    // result rd:x24(0x5555555555555555), rs1:x8(0x5555555555555555)
    li  x8, 0x5555555555555555
    aes64im x24, x8
    sd x24, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x5555555555555555)
 
 inst_86:
    // Test 86:  Test with dataset: sbox64
    // result rd:x25(0x5656565656565656), rs1:x7(0x5656565656565656)
    li  x7, 0x5656565656565656
    aes64im x25, x7
    sd x25, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x5656565656565656)
 
 inst_87:
    // Test 87:  Test with dataset: sbox64
    // result rd:x26(0x5757575757575757), rs1:x6(0x5757575757575757)
    li  x6, 0x5757575757575757
    aes64im x26, x6
    sd x26, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x5757575757575757)
 
 inst_88:
    // Test 88:  Test with dataset: sbox64
    // result rd:x27(0x5858585858585858), rs1:x5(0x5858585858585858)
    li  x5, 0x5858585858585858
    aes64im x27, x5
    sd x27, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x5858585858585858)
 
 inst_89:
    // Test 89:  Test with dataset: sbox64
    // result rd:x28(0x5959595959595959), rs1:x4(0x5959595959595959)
    li  x4, 0x5959595959595959
    aes64im x28, x4
    sd x28, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x5959595959595959)


    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x4,signature_19_0)

 
 inst_90:
    // Test 90:  Test with dataset: sbox64
    // result rd:x29(0x5a5a5a5a5a5a5a5a), rs1:x3(0x5a5a5a5a5a5a5a5a)
    li  x3, 0x5a5a5a5a5a5a5a5a
    aes64im x29, x3
    sd x29, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x5a5a5a5a5a5a5a5a)
 
 inst_91:
    // Test 91:  Test with dataset: sbox64
    // result rd:x30(0x5b5b5b5b5b5b5b5b), rs1:x2(0x5b5b5b5b5b5b5b5b)
    li  x2, 0x5b5b5b5b5b5b5b5b
    aes64im x30, x2
    sd x30, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x5b5b5b5b5b5b5b5b)
 
 inst_92:
    // Test 92:  Test with dataset: sbox64
    // result rd:x31(0x5c5c5c5c5c5c5c5c), rs1:x1(0x5c5c5c5c5c5c5c5c)
    li  x1, 0x5c5c5c5c5c5c5c5c
    aes64im x31, x1
    sd x31, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x5c5c5c5c5c5c5c5c)
 
 inst_93:
    // Test 93:  Test with dataset: sbox64
    // result rd:x1(0x5d5d5d5d5d5d5d5d), rs1:x31(0x5d5d5d5d5d5d5d5d)
    li  x31, 0x5d5d5d5d5d5d5d5d
    aes64im x1, x31
    sd x1, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x5d5d5d5d5d5d5d5d)
 
 inst_94:
    // Test 94:  Test with dataset: sbox64
    // result rd:x2(0x5e5e5e5e5e5e5e5e), rs1:x30(0x5e5e5e5e5e5e5e5e)
    li  x30, 0x5e5e5e5e5e5e5e5e
    aes64im x2, x30
    sd x2, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x5e5e5e5e5e5e5e5e)


    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_20_0)

 
 inst_95:
    // Test 95:  Test with dataset: sbox64
    // result rd:x3(0x5f5f5f5f5f5f5f5f), rs1:x29(0x5f5f5f5f5f5f5f5f)
    li  x29, 0x5f5f5f5f5f5f5f5f
    aes64im x3, x29
    sd x3, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x5f5f5f5f5f5f5f5f)
 
 inst_96:
    // Test 96:  Test with dataset: sbox64
    // result rd:x4(0x6060606060606060), rs1:x28(0x6060606060606060)
    li  x28, 0x6060606060606060
    aes64im x4, x28
    sd x4, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x6060606060606060)
 
 inst_97:
    // Test 97:  Test with dataset: sbox64
    // result rd:x5(0x6161616161616161), rs1:x27(0x6161616161616161)
    li  x27, 0x6161616161616161
    aes64im x5, x27
    sd x5, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x6161616161616161)
 
 inst_98:
    // Test 98:  Test with dataset: sbox64
    // result rd:x6(0x6262626262626262), rs1:x26(0x6262626262626262)
    li  x26, 0x6262626262626262
    aes64im x6, x26
    sd x6, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x6262626262626262)
 
 inst_99:
    // Test 99:  Test with dataset: sbox64
    // result rd:x7(0x6363636363636363), rs1:x25(0x6363636363636363)
    li  x25, 0x6363636363636363
    aes64im x7, x25
    sd x7, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x6363636363636363)


    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_21_0)

 
 inst_100:
    // Test 100:  Test with dataset: sbox64
    // result rd:x8(0x6464646464646464), rs1:x24(0x6464646464646464)
    li  x24, 0x6464646464646464
    aes64im x8, x24
    sd x8, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x6464646464646464)
 
 inst_101:
    // Test 101:  Test with dataset: sbox64
    // result rd:x9(0x6565656565656565), rs1:x23(0x6565656565656565)
    li  x23, 0x6565656565656565
    aes64im x9, x23
    sd x9, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x6565656565656565)
 
 inst_102:
    // Test 102:  Test with dataset: sbox64
    // result rd:x10(0x6666666666666666), rs1:x22(0x6666666666666666)
    li  x22, 0x6666666666666666
    aes64im x10, x22
    sd x10, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x6666666666666666)
 
 inst_103:
    // Test 103:  Test with dataset: sbox64
    // result rd:x11(0x6767676767676767), rs1:x21(0x6767676767676767)
    li  x21, 0x6767676767676767
    aes64im x11, x21
    sd x11, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x6767676767676767)
 
 inst_104:
    // Test 104:  Test with dataset: sbox64
    // result rd:x12(0x6868686868686868), rs1:x20(0x6868686868686868)
    li  x20, 0x6868686868686868
    aes64im x12, x20
    sd x12, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x6868686868686868)


    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x5,signature_22_0)

 
 inst_105:
    // Test 105:  Test with dataset: sbox64
    // result rd:x13(0x6969696969696969), rs1:x19(0x6969696969696969)
    li  x19, 0x6969696969696969
    aes64im x13, x19
    sd x13, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x6969696969696969)
 
 inst_106:
    // Test 106:  Test with dataset: sbox64
    // result rd:x14(0x6a6a6a6a6a6a6a6a), rs1:x18(0x6a6a6a6a6a6a6a6a)
    li  x18, 0x6a6a6a6a6a6a6a6a
    aes64im x14, x18
    sd x14, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x6a6a6a6a6a6a6a6a)
 
 inst_107:
    // Test 107:  Test with dataset: sbox64
    // result rd:x15(0x6b6b6b6b6b6b6b6b), rs1:x17(0x6b6b6b6b6b6b6b6b)
    li  x17, 0x6b6b6b6b6b6b6b6b
    aes64im x15, x17
    sd x15, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x6b6b6b6b6b6b6b6b)
 
 inst_108:
    // Test 108:  Test with dataset: sbox64
    // result rd:x16(0x6c6c6c6c6c6c6c6c), rs1:x16(0x6c6c6c6c6c6c6c6c)
    li  x16, 0x6c6c6c6c6c6c6c6c
    aes64im x16, x16
    sd x16, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x6c6c6c6c6c6c6c6c)
 
 inst_109:
    // Test 109:  Test with dataset: sbox64
    // result rd:x17(0x6d6d6d6d6d6d6d6d), rs1:x15(0x6d6d6d6d6d6d6d6d)
    li  x15, 0x6d6d6d6d6d6d6d6d
    aes64im x17, x15
    sd x17, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0x6d6d6d6d6d6d6d6d)


    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_23_0)

 
 inst_110:
    // Test 110:  Test with dataset: sbox64
    // result rd:x18(0x6e6e6e6e6e6e6e6e), rs1:x14(0x6e6e6e6e6e6e6e6e)
    li  x14, 0x6e6e6e6e6e6e6e6e
    aes64im x18, x14
    sd x18, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x6e6e6e6e6e6e6e6e)
 
 inst_111:
    // Test 111:  Test with dataset: sbox64
    // result rd:x19(0x6f6f6f6f6f6f6f6f), rs1:x13(0x6f6f6f6f6f6f6f6f)
    li  x13, 0x6f6f6f6f6f6f6f6f
    aes64im x19, x13
    sd x19, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x6f6f6f6f6f6f6f6f)
 
 inst_112:
    // Test 112:  Test with dataset: sbox64
    // result rd:x20(0x7070707070707070), rs1:x12(0x7070707070707070)
    li  x12, 0x7070707070707070
    aes64im x20, x12
    sd x20, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x7070707070707070)
 
 inst_113:
    // Test 113:  Test with dataset: sbox64
    // result rd:x21(0x7171717171717171), rs1:x11(0x7171717171717171)
    li  x11, 0x7171717171717171
    aes64im x21, x11
    sd x21, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x7171717171717171)
 
 inst_114:
    // Test 114:  Test with dataset: sbox64
    // result rd:x22(0x7272727272727272), rs1:x10(0x7272727272727272)
    li  x10, 0x7272727272727272
    aes64im x22, x10
    sd x22, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x7272727272727272)


    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_24_0)

 
 inst_115:
    // Test 115:  Test with dataset: sbox64
    // result rd:x23(0x7373737373737373), rs1:x9(0x7373737373737373)
    li  x9, 0x7373737373737373
    aes64im x23, x9
    sd x23, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x7373737373737373)
 
 inst_116:
    // Test 116:  Test with dataset: sbox64
    // result rd:x24(0x7474747474747474), rs1:x8(0x7474747474747474)
    li  x8, 0x7474747474747474
    aes64im x24, x8
    sd x24, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x7474747474747474)
 
 inst_117:
    // Test 117:  Test with dataset: sbox64
    // result rd:x25(0x7575757575757575), rs1:x7(0x7575757575757575)
    li  x7, 0x7575757575757575
    aes64im x25, x7
    sd x25, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x7575757575757575)
 
 inst_118:
    // Test 118:  Test with dataset: sbox64
    // result rd:x26(0x7676767676767676), rs1:x6(0x7676767676767676)
    li  x6, 0x7676767676767676
    aes64im x26, x6
    sd x26, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x7676767676767676)
 
 inst_119:
    // Test 119:  Test with dataset: sbox64
    // result rd:x27(0x7777777777777777), rs1:x5(0x7777777777777777)
    li  x5, 0x7777777777777777
    aes64im x27, x5
    sd x27, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x7777777777777777)


    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x5,signature_25_0)

 
 inst_120:
    // Test 120:  Test with dataset: sbox64
    // result rd:x28(0x7878787878787878), rs1:x4(0x7878787878787878)
    li  x4, 0x7878787878787878
    aes64im x28, x4
    sd x28, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0x7878787878787878)
 
 inst_121:
    // Test 121:  Test with dataset: sbox64
    // result rd:x29(0x7979797979797979), rs1:x3(0x7979797979797979)
    li  x3, 0x7979797979797979
    aes64im x29, x3
    sd x29, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0x7979797979797979)
 
 inst_122:
    // Test 122:  Test with dataset: sbox64
    // result rd:x30(0x7a7a7a7a7a7a7a7a), rs1:x2(0x7a7a7a7a7a7a7a7a)
    li  x2, 0x7a7a7a7a7a7a7a7a
    aes64im x30, x2
    sd x30, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0x7a7a7a7a7a7a7a7a)
 
 inst_123:
    // Test 123:  Test with dataset: sbox64
    // result rd:x31(0x7b7b7b7b7b7b7b7b), rs1:x1(0x7b7b7b7b7b7b7b7b)
    li  x1, 0x7b7b7b7b7b7b7b7b
    aes64im x31, x1
    sd x31, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x7b7b7b7b7b7b7b7b)
 
 inst_124:
    // Test 124:  Test with dataset: sbox64
    // result rd:x1(0x7c7c7c7c7c7c7c7c), rs1:x31(0x7c7c7c7c7c7c7c7c)
    li  x31, 0x7c7c7c7c7c7c7c7c
    aes64im x1, x31
    sd x1, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x7c7c7c7c7c7c7c7c)


    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_26_0)

 
 inst_125:
    // Test 125:  Test with dataset: sbox64
    // result rd:x2(0x7d7d7d7d7d7d7d7d), rs1:x30(0x7d7d7d7d7d7d7d7d)
    li  x30, 0x7d7d7d7d7d7d7d7d
    aes64im x2, x30
    sd x2, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x7d7d7d7d7d7d7d7d)
 
 inst_126:
    // Test 126:  Test with dataset: sbox64
    // result rd:x3(0x7e7e7e7e7e7e7e7e), rs1:x29(0x7e7e7e7e7e7e7e7e)
    li  x29, 0x7e7e7e7e7e7e7e7e
    aes64im x3, x29
    sd x3, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x7e7e7e7e7e7e7e7e)
 
 inst_127:
    // Test 127:  Test with dataset: sbox64
    // result rd:x4(0x7f7f7f7f7f7f7f7f), rs1:x28(0x7f7f7f7f7f7f7f7f)
    li  x28, 0x7f7f7f7f7f7f7f7f
    aes64im x4, x28
    sd x4, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x7f7f7f7f7f7f7f7f)
 
 inst_128:
    // Test 128:  Test with dataset: sbox64
    // result rd:x5(0x8080808080808080), rs1:x27(0x8080808080808080)
    li  x27, 0x8080808080808080
    aes64im x5, x27
    sd x5, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x8080808080808080)
 
 inst_129:
    // Test 129:  Test with dataset: sbox64
    // result rd:x6(0x8181818181818181), rs1:x26(0x8181818181818181)
    li  x26, 0x8181818181818181
    aes64im x6, x26
    sd x6, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0x8181818181818181)


    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_27_0)

 
 inst_130:
    // Test 130:  Test with dataset: sbox64
    // result rd:x7(0x8282828282828282), rs1:x25(0x8282828282828282)
    li  x25, 0x8282828282828282
    aes64im x7, x25
    sd x7, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x8282828282828282)
 
 inst_131:
    // Test 131:  Test with dataset: sbox64
    // result rd:x8(0x8383838383838383), rs1:x24(0x8383838383838383)
    li  x24, 0x8383838383838383
    aes64im x8, x24
    sd x8, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x8383838383838383)
 
 inst_132:
    // Test 132:  Test with dataset: sbox64
    // result rd:x9(0x8484848484848484), rs1:x23(0x8484848484848484)
    li  x23, 0x8484848484848484
    aes64im x9, x23
    sd x9, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x8484848484848484)
 
 inst_133:
    // Test 133:  Test with dataset: sbox64
    // result rd:x10(0x8585858585858585), rs1:x22(0x8585858585858585)
    li  x22, 0x8585858585858585
    aes64im x10, x22
    sd x10, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x8585858585858585)
 
 inst_134:
    // Test 134:  Test with dataset: sbox64
    // result rd:x11(0x8686868686868686), rs1:x21(0x8686868686868686)
    li  x21, 0x8686868686868686
    aes64im x11, x21
    sd x11, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x8686868686868686)


    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x6,signature_28_0)

 
 inst_135:
    // Test 135:  Test with dataset: sbox64
    // result rd:x12(0x8787878787878787), rs1:x20(0x8787878787878787)
    li  x20, 0x8787878787878787
    aes64im x12, x20
    sd x12, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x8787878787878787)
 
 inst_136:
    // Test 136:  Test with dataset: sbox64
    // result rd:x13(0x8888888888888888), rs1:x19(0x8888888888888888)
    li  x19, 0x8888888888888888
    aes64im x13, x19
    sd x13, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x8888888888888888)
 
 inst_137:
    // Test 137:  Test with dataset: sbox64
    // result rd:x14(0x8989898989898989), rs1:x18(0x8989898989898989)
    li  x18, 0x8989898989898989
    aes64im x14, x18
    sd x14, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x8989898989898989)
 
 inst_138:
    // Test 138:  Test with dataset: sbox64
    // result rd:x15(0x8a8a8a8a8a8a8a8a), rs1:x17(0x8a8a8a8a8a8a8a8a)
    li  x17, 0x8a8a8a8a8a8a8a8a
    aes64im x15, x17
    sd x15, 24(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x8a8a8a8a8a8a8a8a)
 
 inst_139:
    // Test 139:  Test with dataset: sbox64
    // result rd:x16(0x8b8b8b8b8b8b8b8b), rs1:x16(0x8b8b8b8b8b8b8b8b)
    li  x16, 0x8b8b8b8b8b8b8b8b
    aes64im x16, x16
    sd x16, 32(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0x8b8b8b8b8b8b8b8b)


    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_29_0)

 
 inst_140:
    // Test 140:  Test with dataset: sbox64
    // result rd:x17(0x8c8c8c8c8c8c8c8c), rs1:x15(0x8c8c8c8c8c8c8c8c)
    li  x15, 0x8c8c8c8c8c8c8c8c
    aes64im x17, x15
    sd x17, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x8c8c8c8c8c8c8c8c)
 
 inst_141:
    // Test 141:  Test with dataset: sbox64
    // result rd:x18(0x8d8d8d8d8d8d8d8d), rs1:x14(0x8d8d8d8d8d8d8d8d)
    li  x14, 0x8d8d8d8d8d8d8d8d
    aes64im x18, x14
    sd x18, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x8d8d8d8d8d8d8d8d)
 
 inst_142:
    // Test 142:  Test with dataset: sbox64
    // result rd:x19(0x8e8e8e8e8e8e8e8e), rs1:x13(0x8e8e8e8e8e8e8e8e)
    li  x13, 0x8e8e8e8e8e8e8e8e
    aes64im x19, x13
    sd x19, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x8e8e8e8e8e8e8e8e)
 
 inst_143:
    // Test 143:  Test with dataset: sbox64
    // result rd:x20(0x8f8f8f8f8f8f8f8f), rs1:x12(0x8f8f8f8f8f8f8f8f)
    li  x12, 0x8f8f8f8f8f8f8f8f
    aes64im x20, x12
    sd x20, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x8f8f8f8f8f8f8f8f)
 
 inst_144:
    // Test 144:  Test with dataset: sbox64
    // result rd:x21(0x9090909090909090), rs1:x11(0x9090909090909090)
    li  x11, 0x9090909090909090
    aes64im x21, x11
    sd x21, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x9090909090909090)


    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_30_0)

 
 inst_145:
    // Test 145:  Test with dataset: sbox64
    // result rd:x22(0x9191919191919191), rs1:x10(0x9191919191919191)
    li  x10, 0x9191919191919191
    aes64im x22, x10
    sd x22, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x9191919191919191)
 
 inst_146:
    // Test 146:  Test with dataset: sbox64
    // result rd:x23(0x9292929292929292), rs1:x9(0x9292929292929292)
    li  x9, 0x9292929292929292
    aes64im x23, x9
    sd x23, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x9292929292929292)
 
 inst_147:
    // Test 147:  Test with dataset: sbox64
    // result rd:x24(0x9393939393939393), rs1:x8(0x9393939393939393)
    li  x8, 0x9393939393939393
    aes64im x24, x8
    sd x24, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x9393939393939393)
 
 inst_148:
    // Test 148:  Test with dataset: sbox64
    // result rd:x25(0x9494949494949494), rs1:x7(0x9494949494949494)
    li  x7, 0x9494949494949494
    aes64im x25, x7
    sd x25, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x9494949494949494)
 
 inst_149:
    // Test 149:  Test with dataset: sbox64
    // result rd:x26(0x9595959595959595), rs1:x6(0x9595959595959595)
    li  x6, 0x9595959595959595
    aes64im x26, x6
    sd x26, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x9595959595959595)


    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x6,signature_31_0)

 
 inst_150:
    // Test 150:  Test with dataset: sbox64
    // result rd:x27(0x9696969696969696), rs1:x5(0x9696969696969696)
    li  x5, 0x9696969696969696
    aes64im x27, x5
    sd x27, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x9696969696969696)
 
 inst_151:
    // Test 151:  Test with dataset: sbox64
    // result rd:x28(0x9797979797979797), rs1:x4(0x9797979797979797)
    li  x4, 0x9797979797979797
    aes64im x28, x4
    sd x28, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x9797979797979797)
 
 inst_152:
    // Test 152:  Test with dataset: sbox64
    // result rd:x29(0x9898989898989898), rs1:x3(0x9898989898989898)
    li  x3, 0x9898989898989898
    aes64im x29, x3
    sd x29, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x9898989898989898)
 
 inst_153:
    // Test 153:  Test with dataset: sbox64
    // result rd:x30(0x9999999999999999), rs1:x2(0x9999999999999999)
    li  x2, 0x9999999999999999
    aes64im x30, x2
    sd x30, 24(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x9999999999999999)
 
 inst_154:
    // Test 154:  Test with dataset: sbox64
    // result rd:x31(0x9a9a9a9a9a9a9a9a), rs1:x1(0x9a9a9a9a9a9a9a9a)
    li  x1, 0x9a9a9a9a9a9a9a9a
    aes64im x31, x1
    sd x31, 32(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x31, 0x9a9a9a9a9a9a9a9a)


    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x6,signature_32_0)

 
 inst_155:
    // Test 155:  Test with dataset: sbox64
    // result rd:x1(0x9b9b9b9b9b9b9b9b), rs1:x31(0x9b9b9b9b9b9b9b9b)
    li  x31, 0x9b9b9b9b9b9b9b9b
    aes64im x1, x31
    sd x1, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x9b9b9b9b9b9b9b9b)
 
 inst_156:
    // Test 156:  Test with dataset: sbox64
    // result rd:x2(0x9c9c9c9c9c9c9c9c), rs1:x30(0x9c9c9c9c9c9c9c9c)
    li  x30, 0x9c9c9c9c9c9c9c9c
    aes64im x2, x30
    sd x2, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x9c9c9c9c9c9c9c9c)
 
 inst_157:
    // Test 157:  Test with dataset: sbox64
    // result rd:x3(0x9d9d9d9d9d9d9d9d), rs1:x29(0x9d9d9d9d9d9d9d9d)
    li  x29, 0x9d9d9d9d9d9d9d9d
    aes64im x3, x29
    sd x3, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x9d9d9d9d9d9d9d9d)
 
 inst_158:
    // Test 158:  Test with dataset: sbox64
    // result rd:x4(0x9e9e9e9e9e9e9e9e), rs1:x28(0x9e9e9e9e9e9e9e9e)
    li  x28, 0x9e9e9e9e9e9e9e9e
    aes64im x4, x28
    sd x4, 24(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x9e9e9e9e9e9e9e9e)
 
 inst_159:
    // Test 159:  Test with dataset: sbox64
    // result rd:x5(0x9f9f9f9f9f9f9f9f), rs1:x27(0x9f9f9f9f9f9f9f9f)
    li  x27, 0x9f9f9f9f9f9f9f9f
    aes64im x5, x27
    sd x5, 32(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x9f9f9f9f9f9f9f9f)


    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_33_0)

 
 inst_160:
    // Test 160:  Test with dataset: sbox64
    // result rd:x6(0xa0a0a0a0a0a0a0a0), rs1:x26(0xa0a0a0a0a0a0a0a0)
    li  x26, 0xa0a0a0a0a0a0a0a0
    aes64im x6, x26
    sd x6, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xa0a0a0a0a0a0a0a0)
 
 inst_161:
    // Test 161:  Test with dataset: sbox64
    // result rd:x7(0xa1a1a1a1a1a1a1a1), rs1:x25(0xa1a1a1a1a1a1a1a1)
    li  x25, 0xa1a1a1a1a1a1a1a1
    aes64im x7, x25
    sd x7, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xa1a1a1a1a1a1a1a1)
 
 inst_162:
    // Test 162:  Test with dataset: sbox64
    // result rd:x8(0xa2a2a2a2a2a2a2a2), rs1:x24(0xa2a2a2a2a2a2a2a2)
    li  x24, 0xa2a2a2a2a2a2a2a2
    aes64im x8, x24
    sd x8, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xa2a2a2a2a2a2a2a2)
 
 inst_163:
    // Test 163:  Test with dataset: sbox64
    // result rd:x9(0xa3a3a3a3a3a3a3a3), rs1:x23(0xa3a3a3a3a3a3a3a3)
    li  x23, 0xa3a3a3a3a3a3a3a3
    aes64im x9, x23
    sd x9, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xa3a3a3a3a3a3a3a3)
 
 inst_164:
    // Test 164:  Test with dataset: sbox64
    // result rd:x10(0xa4a4a4a4a4a4a4a4), rs1:x22(0xa4a4a4a4a4a4a4a4)
    li  x22, 0xa4a4a4a4a4a4a4a4
    aes64im x10, x22
    sd x10, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xa4a4a4a4a4a4a4a4)


    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_34_0)

 
 inst_165:
    // Test 165:  Test with dataset: sbox64
    // result rd:x11(0xa5a5a5a5a5a5a5a5), rs1:x21(0xa5a5a5a5a5a5a5a5)
    li  x21, 0xa5a5a5a5a5a5a5a5
    aes64im x11, x21
    sd x11, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0xa5a5a5a5a5a5a5a5)
 
 inst_166:
    // Test 166:  Test with dataset: sbox64
    // result rd:x12(0xa6a6a6a6a6a6a6a6), rs1:x20(0xa6a6a6a6a6a6a6a6)
    li  x20, 0xa6a6a6a6a6a6a6a6
    aes64im x12, x20
    sd x12, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0xa6a6a6a6a6a6a6a6)
 
 inst_167:
    // Test 167:  Test with dataset: sbox64
    // result rd:x13(0xa7a7a7a7a7a7a7a7), rs1:x19(0xa7a7a7a7a7a7a7a7)
    li  x19, 0xa7a7a7a7a7a7a7a7
    aes64im x13, x19
    sd x13, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0xa7a7a7a7a7a7a7a7)
 
 inst_168:
    // Test 168:  Test with dataset: sbox64
    // result rd:x14(0xa8a8a8a8a8a8a8a8), rs1:x18(0xa8a8a8a8a8a8a8a8)
    li  x18, 0xa8a8a8a8a8a8a8a8
    aes64im x14, x18
    sd x14, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0xa8a8a8a8a8a8a8a8)
 
 inst_169:
    // Test 169:  Test with dataset: sbox64
    // result rd:x15(0xa9a9a9a9a9a9a9a9), rs1:x17(0xa9a9a9a9a9a9a9a9)
    li  x17, 0xa9a9a9a9a9a9a9a9
    aes64im x15, x17
    sd x15, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0xa9a9a9a9a9a9a9a9)


    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x2,signature_35_0)

 
 inst_170:
    // Test 170:  Test with dataset: sbox64
    // result rd:x16(0xaaaaaaaaaaaaaaaa), rs1:x16(0xaaaaaaaaaaaaaaaa)
    li  x16, 0xaaaaaaaaaaaaaaaa
    aes64im x16, x16
    sd x16, 0(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0xaaaaaaaaaaaaaaaa)
 
 inst_171:
    // Test 171:  Test with dataset: sbox64
    // result rd:x17(0xabababababababab), rs1:x15(0xabababababababab)
    li  x15, 0xabababababababab
    aes64im x17, x15
    sd x17, 8(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0xabababababababab)
 
 inst_172:
    // Test 172:  Test with dataset: sbox64
    // result rd:x18(0xacacacacacacacac), rs1:x14(0xacacacacacacacac)
    li  x14, 0xacacacacacacacac
    aes64im x18, x14
    sd x18, 16(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0xacacacacacacacac)
 
 inst_173:
    // Test 173:  Test with dataset: sbox64
    // result rd:x19(0xadadadadadadadad), rs1:x13(0xadadadadadadadad)
    li  x13, 0xadadadadadadadad
    aes64im x19, x13
    sd x19, 24(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0xadadadadadadadad)
 
 inst_174:
    // Test 174:  Test with dataset: sbox64
    // result rd:x20(0xaeaeaeaeaeaeaeae), rs1:x12(0xaeaeaeaeaeaeaeae)
    li  x12, 0xaeaeaeaeaeaeaeae
    aes64im x20, x12
    sd x20, 32(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0xaeaeaeaeaeaeaeae)


    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_36_0)

 
 inst_175:
    // Test 175:  Test with dataset: sbox64
    // result rd:x21(0xafafafafafafafaf), rs1:x11(0xafafafafafafafaf)
    li  x11, 0xafafafafafafafaf
    aes64im x21, x11
    sd x21, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xafafafafafafafaf)
 
 inst_176:
    // Test 176:  Test with dataset: sbox64
    // result rd:x22(0xb0b0b0b0b0b0b0b0), rs1:x10(0xb0b0b0b0b0b0b0b0)
    li  x10, 0xb0b0b0b0b0b0b0b0
    aes64im x22, x10
    sd x22, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xb0b0b0b0b0b0b0b0)
 
 inst_177:
    // Test 177:  Test with dataset: sbox64
    // result rd:x23(0xb1b1b1b1b1b1b1b1), rs1:x9(0xb1b1b1b1b1b1b1b1)
    li  x9, 0xb1b1b1b1b1b1b1b1
    aes64im x23, x9
    sd x23, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xb1b1b1b1b1b1b1b1)
 
 inst_178:
    // Test 178:  Test with dataset: sbox64
    // result rd:x24(0xb2b2b2b2b2b2b2b2), rs1:x8(0xb2b2b2b2b2b2b2b2)
    li  x8, 0xb2b2b2b2b2b2b2b2
    aes64im x24, x8
    sd x24, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xb2b2b2b2b2b2b2b2)
 
 inst_179:
    // Test 179:  Test with dataset: sbox64
    // result rd:x25(0xb3b3b3b3b3b3b3b3), rs1:x7(0xb3b3b3b3b3b3b3b3)
    li  x7, 0xb3b3b3b3b3b3b3b3
    aes64im x25, x7
    sd x25, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xb3b3b3b3b3b3b3b3)


    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_37_0)

 
 inst_180:
    // Test 180:  Test with dataset: sbox64
    // result rd:x26(0xb4b4b4b4b4b4b4b4), rs1:x6(0xb4b4b4b4b4b4b4b4)
    li  x6, 0xb4b4b4b4b4b4b4b4
    aes64im x26, x6
    sd x26, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0xb4b4b4b4b4b4b4b4)
 
 inst_181:
    // Test 181:  Test with dataset: sbox64
    // result rd:x27(0xb5b5b5b5b5b5b5b5), rs1:x5(0xb5b5b5b5b5b5b5b5)
    li  x5, 0xb5b5b5b5b5b5b5b5
    aes64im x27, x5
    sd x27, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0xb5b5b5b5b5b5b5b5)
 
 inst_182:
    // Test 182:  Test with dataset: sbox64
    // result rd:x28(0xb6b6b6b6b6b6b6b6), rs1:x4(0xb6b6b6b6b6b6b6b6)
    li  x4, 0xb6b6b6b6b6b6b6b6
    aes64im x28, x4
    sd x28, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0xb6b6b6b6b6b6b6b6)
 
 inst_183:
    // Test 183:  Test with dataset: sbox64
    // result rd:x29(0xb7b7b7b7b7b7b7b7), rs1:x3(0xb7b7b7b7b7b7b7b7)
    li  x3, 0xb7b7b7b7b7b7b7b7
    aes64im x29, x3
    sd x29, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0xb7b7b7b7b7b7b7b7)
 
 inst_184:
    // Test 184:  Test with dataset: sbox64
    // result rd:x30(0xb8b8b8b8b8b8b8b8), rs1:x2(0xb8b8b8b8b8b8b8b8)
    li  x2, 0xb8b8b8b8b8b8b8b8
    aes64im x30, x2
    sd x30, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0xb8b8b8b8b8b8b8b8)


    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x5,signature_38_0)

 
 inst_185:
    // Test 185:  Test with dataset: sbox64
    // result rd:x31(0xb9b9b9b9b9b9b9b9), rs1:x1(0xb9b9b9b9b9b9b9b9)
    li  x1, 0xb9b9b9b9b9b9b9b9
    aes64im x31, x1
    sd x31, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0xb9b9b9b9b9b9b9b9)
 
 inst_186:
    // Test 186:  Test with dataset: sbox64
    // result rd:x1(0xbabababababababa), rs1:x31(0xbabababababababa)
    li  x31, 0xbabababababababa
    aes64im x1, x31
    sd x1, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0xbabababababababa)
 
 inst_187:
    // Test 187:  Test with dataset: sbox64
    // result rd:x2(0xbbbbbbbbbbbbbbbb), rs1:x30(0xbbbbbbbbbbbbbbbb)
    li  x30, 0xbbbbbbbbbbbbbbbb
    aes64im x2, x30
    sd x2, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0xbbbbbbbbbbbbbbbb)
 
 inst_188:
    // Test 188:  Test with dataset: sbox64
    // result rd:x3(0xbcbcbcbcbcbcbcbc), rs1:x29(0xbcbcbcbcbcbcbcbc)
    li  x29, 0xbcbcbcbcbcbcbcbc
    aes64im x3, x29
    sd x3, 24(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0xbcbcbcbcbcbcbcbc)
 
 inst_189:
    // Test 189:  Test with dataset: sbox64
    // result rd:x4(0xbdbdbdbdbdbdbdbd), rs1:x28(0xbdbdbdbdbdbdbdbd)
    li  x28, 0xbdbdbdbdbdbdbdbd
    aes64im x4, x28
    sd x4, 32(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0xbdbdbdbdbdbdbdbd)


    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_39_0)

 
 inst_190:
    // Test 190:  Test with dataset: sbox64
    // result rd:x5(0xbebebebebebebebe), rs1:x27(0xbebebebebebebebe)
    li  x27, 0xbebebebebebebebe
    aes64im x5, x27
    sd x5, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xbebebebebebebebe)
 
 inst_191:
    // Test 191:  Test with dataset: sbox64
    // result rd:x6(0xbfbfbfbfbfbfbfbf), rs1:x26(0xbfbfbfbfbfbfbfbf)
    li  x26, 0xbfbfbfbfbfbfbfbf
    aes64im x6, x26
    sd x6, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xbfbfbfbfbfbfbfbf)
 
 inst_192:
    // Test 192:  Test with dataset: sbox64
    // result rd:x7(0xc0c0c0c0c0c0c0c0), rs1:x25(0xc0c0c0c0c0c0c0c0)
    li  x25, 0xc0c0c0c0c0c0c0c0
    aes64im x7, x25
    sd x7, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xc0c0c0c0c0c0c0c0)
 
 inst_193:
    // Test 193:  Test with dataset: sbox64
    // result rd:x8(0xc1c1c1c1c1c1c1c1), rs1:x24(0xc1c1c1c1c1c1c1c1)
    li  x24, 0xc1c1c1c1c1c1c1c1
    aes64im x8, x24
    sd x8, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xc1c1c1c1c1c1c1c1)
 
 inst_194:
    // Test 194:  Test with dataset: sbox64
    // result rd:x9(0xc2c2c2c2c2c2c2c2), rs1:x23(0xc2c2c2c2c2c2c2c2)
    li  x23, 0xc2c2c2c2c2c2c2c2
    aes64im x9, x23
    sd x9, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xc2c2c2c2c2c2c2c2)


    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_40_0)

 
 inst_195:
    // Test 195:  Test with dataset: sbox64
    // result rd:x10(0xc3c3c3c3c3c3c3c3), rs1:x22(0xc3c3c3c3c3c3c3c3)
    li  x22, 0xc3c3c3c3c3c3c3c3
    aes64im x10, x22
    sd x10, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xc3c3c3c3c3c3c3c3)
 
 inst_196:
    // Test 196:  Test with dataset: sbox64
    // result rd:x11(0xc4c4c4c4c4c4c4c4), rs1:x21(0xc4c4c4c4c4c4c4c4)
    li  x21, 0xc4c4c4c4c4c4c4c4
    aes64im x11, x21
    sd x11, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xc4c4c4c4c4c4c4c4)
 
 inst_197:
    // Test 197:  Test with dataset: sbox64
    // result rd:x12(0xc5c5c5c5c5c5c5c5), rs1:x20(0xc5c5c5c5c5c5c5c5)
    li  x20, 0xc5c5c5c5c5c5c5c5
    aes64im x12, x20
    sd x12, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xc5c5c5c5c5c5c5c5)
 
 inst_198:
    // Test 198:  Test with dataset: sbox64
    // result rd:x13(0xc6c6c6c6c6c6c6c6), rs1:x19(0xc6c6c6c6c6c6c6c6)
    li  x19, 0xc6c6c6c6c6c6c6c6
    aes64im x13, x19
    sd x13, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xc6c6c6c6c6c6c6c6)
 
 inst_199:
    // Test 199:  Test with dataset: sbox64
    // result rd:x14(0xc7c7c7c7c7c7c7c7), rs1:x18(0xc7c7c7c7c7c7c7c7)
    li  x18, 0xc7c7c7c7c7c7c7c7
    aes64im x14, x18
    sd x14, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0xc7c7c7c7c7c7c7c7)


    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x3,signature_41_0)

 
 inst_200:
    // Test 200:  Test with dataset: sbox64
    // result rd:x15(0xc8c8c8c8c8c8c8c8), rs1:x17(0xc8c8c8c8c8c8c8c8)
    li  x17, 0xc8c8c8c8c8c8c8c8
    aes64im x15, x17
    sd x15, 0(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0xc8c8c8c8c8c8c8c8)
 
 inst_201:
    // Test 201:  Test with dataset: sbox64
    // result rd:x16(0xc9c9c9c9c9c9c9c9), rs1:x16(0xc9c9c9c9c9c9c9c9)
    li  x16, 0xc9c9c9c9c9c9c9c9
    aes64im x16, x16
    sd x16, 8(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0xc9c9c9c9c9c9c9c9)
 
 inst_202:
    // Test 202:  Test with dataset: sbox64
    // result rd:x17(0xcacacacacacacaca), rs1:x15(0xcacacacacacacaca)
    li  x15, 0xcacacacacacacaca
    aes64im x17, x15
    sd x17, 16(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0xcacacacacacacaca)
 
 inst_203:
    // Test 203:  Test with dataset: sbox64
    // result rd:x18(0xcbcbcbcbcbcbcbcb), rs1:x14(0xcbcbcbcbcbcbcbcb)
    li  x14, 0xcbcbcbcbcbcbcbcb
    aes64im x18, x14
    sd x18, 24(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0xcbcbcbcbcbcbcbcb)
 
 inst_204:
    // Test 204:  Test with dataset: sbox64
    // result rd:x19(0xcccccccccccccccc), rs1:x13(0xcccccccccccccccc)
    li  x13, 0xcccccccccccccccc
    aes64im x19, x13
    sd x19, 32(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0xcccccccccccccccc)


    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_42_0)

 
 inst_205:
    // Test 205:  Test with dataset: sbox64
    // result rd:x20(0xcdcdcdcdcdcdcdcd), rs1:x12(0xcdcdcdcdcdcdcdcd)
    li  x12, 0xcdcdcdcdcdcdcdcd
    aes64im x20, x12
    sd x20, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xcdcdcdcdcdcdcdcd)
 
 inst_206:
    // Test 206:  Test with dataset: sbox64
    // result rd:x21(0xcececececececece), rs1:x11(0xcececececececece)
    li  x11, 0xcececececececece
    aes64im x21, x11
    sd x21, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xcececececececece)
 
 inst_207:
    // Test 207:  Test with dataset: sbox64
    // result rd:x22(0xcfcfcfcfcfcfcfcf), rs1:x10(0xcfcfcfcfcfcfcfcf)
    li  x10, 0xcfcfcfcfcfcfcfcf
    aes64im x22, x10
    sd x22, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xcfcfcfcfcfcfcfcf)
 
 inst_208:
    // Test 208:  Test with dataset: sbox64
    // result rd:x23(0xd0d0d0d0d0d0d0d0), rs1:x9(0xd0d0d0d0d0d0d0d0)
    li  x9, 0xd0d0d0d0d0d0d0d0
    aes64im x23, x9
    sd x23, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xd0d0d0d0d0d0d0d0)
 
 inst_209:
    // Test 209:  Test with dataset: sbox64
    // result rd:x24(0xd1d1d1d1d1d1d1d1), rs1:x8(0xd1d1d1d1d1d1d1d1)
    li  x8, 0xd1d1d1d1d1d1d1d1
    aes64im x24, x8
    sd x24, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xd1d1d1d1d1d1d1d1)


    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_43_0)

 
 inst_210:
    // Test 210:  Test with dataset: sbox64
    // result rd:x25(0xd2d2d2d2d2d2d2d2), rs1:x7(0xd2d2d2d2d2d2d2d2)
    li  x7, 0xd2d2d2d2d2d2d2d2
    aes64im x25, x7
    sd x25, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xd2d2d2d2d2d2d2d2)
 
 inst_211:
    // Test 211:  Test with dataset: sbox64
    // result rd:x26(0xd3d3d3d3d3d3d3d3), rs1:x6(0xd3d3d3d3d3d3d3d3)
    li  x6, 0xd3d3d3d3d3d3d3d3
    aes64im x26, x6
    sd x26, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xd3d3d3d3d3d3d3d3)
 
 inst_212:
    // Test 212:  Test with dataset: sbox64
    // result rd:x27(0xd4d4d4d4d4d4d4d4), rs1:x5(0xd4d4d4d4d4d4d4d4)
    li  x5, 0xd4d4d4d4d4d4d4d4
    aes64im x27, x5
    sd x27, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xd4d4d4d4d4d4d4d4)
 
 inst_213:
    // Test 213:  Test with dataset: sbox64
    // result rd:x28(0xd5d5d5d5d5d5d5d5), rs1:x4(0xd5d5d5d5d5d5d5d5)
    li  x4, 0xd5d5d5d5d5d5d5d5
    aes64im x28, x4
    sd x28, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xd5d5d5d5d5d5d5d5)
 
 inst_214:
    // Test 214:  Test with dataset: sbox64
    // result rd:x29(0xd6d6d6d6d6d6d6d6), rs1:x3(0xd6d6d6d6d6d6d6d6)
    li  x3, 0xd6d6d6d6d6d6d6d6
    aes64im x29, x3
    sd x29, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0xd6d6d6d6d6d6d6d6)


    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x4,signature_44_0)

 
 inst_215:
    // Test 215:  Test with dataset: sbox64
    // result rd:x30(0xd7d7d7d7d7d7d7d7), rs1:x2(0xd7d7d7d7d7d7d7d7)
    li  x2, 0xd7d7d7d7d7d7d7d7
    aes64im x30, x2
    sd x30, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xd7d7d7d7d7d7d7d7)
 
 inst_216:
    // Test 216:  Test with dataset: sbox64
    // result rd:x31(0xd8d8d8d8d8d8d8d8), rs1:x1(0xd8d8d8d8d8d8d8d8)
    li  x1, 0xd8d8d8d8d8d8d8d8
    aes64im x31, x1
    sd x31, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xd8d8d8d8d8d8d8d8)
 
 inst_217:
    // Test 217:  Test with dataset: sbox64
    // result rd:x1(0xd9d9d9d9d9d9d9d9), rs1:x31(0xd9d9d9d9d9d9d9d9)
    li  x31, 0xd9d9d9d9d9d9d9d9
    aes64im x1, x31
    sd x1, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xd9d9d9d9d9d9d9d9)
 
 inst_218:
    // Test 218:  Test with dataset: sbox64
    // result rd:x2(0xdadadadadadadada), rs1:x30(0xdadadadadadadada)
    li  x30, 0xdadadadadadadada
    aes64im x2, x30
    sd x2, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xdadadadadadadada)
 
 inst_219:
    // Test 219:  Test with dataset: sbox64
    // result rd:x3(0xdbdbdbdbdbdbdbdb), rs1:x29(0xdbdbdbdbdbdbdbdb)
    li  x29, 0xdbdbdbdbdbdbdbdb
    aes64im x3, x29
    sd x3, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0xdbdbdbdbdbdbdbdb)


    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_45_0)

 
 inst_220:
    // Test 220:  Test with dataset: sbox64
    // result rd:x4(0xdcdcdcdcdcdcdcdc), rs1:x28(0xdcdcdcdcdcdcdcdc)
    li  x28, 0xdcdcdcdcdcdcdcdc
    aes64im x4, x28
    sd x4, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xdcdcdcdcdcdcdcdc)
 
 inst_221:
    // Test 221:  Test with dataset: sbox64
    // result rd:x5(0xdddddddddddddddd), rs1:x27(0xdddddddddddddddd)
    li  x27, 0xdddddddddddddddd
    aes64im x5, x27
    sd x5, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xdddddddddddddddd)
 
 inst_222:
    // Test 222:  Test with dataset: sbox64
    // result rd:x6(0xdededededededede), rs1:x26(0xdededededededede)
    li  x26, 0xdededededededede
    aes64im x6, x26
    sd x6, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xdededededededede)
 
 inst_223:
    // Test 223:  Test with dataset: sbox64
    // result rd:x7(0xdfdfdfdfdfdfdfdf), rs1:x25(0xdfdfdfdfdfdfdfdf)
    li  x25, 0xdfdfdfdfdfdfdfdf
    aes64im x7, x25
    sd x7, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xdfdfdfdfdfdfdfdf)
 
 inst_224:
    // Test 224:  Test with dataset: sbox64
    // result rd:x8(0xe0e0e0e0e0e0e0e0), rs1:x24(0xe0e0e0e0e0e0e0e0)
    li  x24, 0xe0e0e0e0e0e0e0e0
    aes64im x8, x24
    sd x8, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xe0e0e0e0e0e0e0e0)


    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_46_0)

 
 inst_225:
    // Test 225:  Test with dataset: sbox64
    // result rd:x9(0xe1e1e1e1e1e1e1e1), rs1:x23(0xe1e1e1e1e1e1e1e1)
    li  x23, 0xe1e1e1e1e1e1e1e1
    aes64im x9, x23
    sd x9, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xe1e1e1e1e1e1e1e1)
 
 inst_226:
    // Test 226:  Test with dataset: sbox64
    // result rd:x10(0xe2e2e2e2e2e2e2e2), rs1:x22(0xe2e2e2e2e2e2e2e2)
    li  x22, 0xe2e2e2e2e2e2e2e2
    aes64im x10, x22
    sd x10, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xe2e2e2e2e2e2e2e2)
 
 inst_227:
    // Test 227:  Test with dataset: sbox64
    // result rd:x11(0xe3e3e3e3e3e3e3e3), rs1:x21(0xe3e3e3e3e3e3e3e3)
    li  x21, 0xe3e3e3e3e3e3e3e3
    aes64im x11, x21
    sd x11, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xe3e3e3e3e3e3e3e3)
 
 inst_228:
    // Test 228:  Test with dataset: sbox64
    // result rd:x12(0xe4e4e4e4e4e4e4e4), rs1:x20(0xe4e4e4e4e4e4e4e4)
    li  x20, 0xe4e4e4e4e4e4e4e4
    aes64im x12, x20
    sd x12, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xe4e4e4e4e4e4e4e4)
 
 inst_229:
    // Test 229:  Test with dataset: sbox64
    // result rd:x13(0xe5e5e5e5e5e5e5e5), rs1:x19(0xe5e5e5e5e5e5e5e5)
    li  x19, 0xe5e5e5e5e5e5e5e5
    aes64im x13, x19
    sd x13, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xe5e5e5e5e5e5e5e5)


    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x4,signature_47_0)

 
 inst_230:
    // Test 230:  Test with dataset: sbox64
    // result rd:x14(0xe6e6e6e6e6e6e6e6), rs1:x18(0xe6e6e6e6e6e6e6e6)
    li  x18, 0xe6e6e6e6e6e6e6e6
    aes64im x14, x18
    sd x14, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xe6e6e6e6e6e6e6e6)
 
 inst_231:
    // Test 231:  Test with dataset: sbox64
    // result rd:x15(0xe7e7e7e7e7e7e7e7), rs1:x17(0xe7e7e7e7e7e7e7e7)
    li  x17, 0xe7e7e7e7e7e7e7e7
    aes64im x15, x17
    sd x15, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0xe7e7e7e7e7e7e7e7)
 
 inst_232:
    // Test 232:  Test with dataset: sbox64
    // result rd:x16(0xe8e8e8e8e8e8e8e8), rs1:x16(0xe8e8e8e8e8e8e8e8)
    li  x16, 0xe8e8e8e8e8e8e8e8
    aes64im x16, x16
    sd x16, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0xe8e8e8e8e8e8e8e8)
 
 inst_233:
    // Test 233:  Test with dataset: sbox64
    // result rd:x17(0xe9e9e9e9e9e9e9e9), rs1:x15(0xe9e9e9e9e9e9e9e9)
    li  x15, 0xe9e9e9e9e9e9e9e9
    aes64im x17, x15
    sd x17, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0xe9e9e9e9e9e9e9e9)
 
 inst_234:
    // Test 234:  Test with dataset: sbox64
    // result rd:x18(0xeaeaeaeaeaeaeaea), rs1:x14(0xeaeaeaeaeaeaeaea)
    li  x14, 0xeaeaeaeaeaeaeaea
    aes64im x18, x14
    sd x18, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0xeaeaeaeaeaeaeaea)


    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_48_0)

 
 inst_235:
    // Test 235:  Test with dataset: sbox64
    // result rd:x19(0xebebebebebebebeb), rs1:x13(0xebebebebebebebeb)
    li  x13, 0xebebebebebebebeb
    aes64im x19, x13
    sd x19, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xebebebebebebebeb)
 
 inst_236:
    // Test 236:  Test with dataset: sbox64
    // result rd:x20(0xecececececececec), rs1:x12(0xecececececececec)
    li  x12, 0xecececececececec
    aes64im x20, x12
    sd x20, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xecececececececec)
 
 inst_237:
    // Test 237:  Test with dataset: sbox64
    // result rd:x21(0xedededededededed), rs1:x11(0xedededededededed)
    li  x11, 0xedededededededed
    aes64im x21, x11
    sd x21, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xedededededededed)
 
 inst_238:
    // Test 238:  Test with dataset: sbox64
    // result rd:x22(0xeeeeeeeeeeeeeeee), rs1:x10(0xeeeeeeeeeeeeeeee)
    li  x10, 0xeeeeeeeeeeeeeeee
    aes64im x22, x10
    sd x22, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xeeeeeeeeeeeeeeee)
 
 inst_239:
    // Test 239:  Test with dataset: sbox64
    // result rd:x23(0xefefefefefefefef), rs1:x9(0xefefefefefefefef)
    li  x9, 0xefefefefefefefef
    aes64im x23, x9
    sd x23, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xefefefefefefefef)


    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_49_0)

 
 inst_240:
    // Test 240:  Test with dataset: sbox64
    // result rd:x24(0xf0f0f0f0f0f0f0f0), rs1:x8(0xf0f0f0f0f0f0f0f0)
    li  x8, 0xf0f0f0f0f0f0f0f0
    aes64im x24, x8
    sd x24, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xf0f0f0f0f0f0f0f0)
 
 inst_241:
    // Test 241:  Test with dataset: sbox64
    // result rd:x25(0xf1f1f1f1f1f1f1f1), rs1:x7(0xf1f1f1f1f1f1f1f1)
    li  x7, 0xf1f1f1f1f1f1f1f1
    aes64im x25, x7
    sd x25, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xf1f1f1f1f1f1f1f1)
 
 inst_242:
    // Test 242:  Test with dataset: sbox64
    // result rd:x26(0xf2f2f2f2f2f2f2f2), rs1:x6(0xf2f2f2f2f2f2f2f2)
    li  x6, 0xf2f2f2f2f2f2f2f2
    aes64im x26, x6
    sd x26, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xf2f2f2f2f2f2f2f2)
 
 inst_243:
    // Test 243:  Test with dataset: sbox64
    // result rd:x27(0xf3f3f3f3f3f3f3f3), rs1:x5(0xf3f3f3f3f3f3f3f3)
    li  x5, 0xf3f3f3f3f3f3f3f3
    aes64im x27, x5
    sd x27, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xf3f3f3f3f3f3f3f3)
 
 inst_244:
    // Test 244:  Test with dataset: sbox64
    // result rd:x28(0xf4f4f4f4f4f4f4f4), rs1:x4(0xf4f4f4f4f4f4f4f4)
    li  x4, 0xf4f4f4f4f4f4f4f4
    aes64im x28, x4
    sd x28, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xf4f4f4f4f4f4f4f4)


    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x4,signature_50_0)

 
 inst_245:
    // Test 245:  Test with dataset: sbox64
    // result rd:x29(0xf5f5f5f5f5f5f5f5), rs1:x3(0xf5f5f5f5f5f5f5f5)
    li  x3, 0xf5f5f5f5f5f5f5f5
    aes64im x29, x3
    sd x29, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0xf5f5f5f5f5f5f5f5)
 
 inst_246:
    // Test 246:  Test with dataset: sbox64
    // result rd:x30(0xf6f6f6f6f6f6f6f6), rs1:x2(0xf6f6f6f6f6f6f6f6)
    li  x2, 0xf6f6f6f6f6f6f6f6
    aes64im x30, x2
    sd x30, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xf6f6f6f6f6f6f6f6)
 
 inst_247:
    // Test 247:  Test with dataset: sbox64
    // result rd:x31(0xf7f7f7f7f7f7f7f7), rs1:x1(0xf7f7f7f7f7f7f7f7)
    li  x1, 0xf7f7f7f7f7f7f7f7
    aes64im x31, x1
    sd x31, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xf7f7f7f7f7f7f7f7)
 
 inst_248:
    // Test 248:  Test with dataset: sbox64
    // result rd:x1(0xf8f8f8f8f8f8f8f8), rs1:x31(0xf8f8f8f8f8f8f8f8)
    li  x31, 0xf8f8f8f8f8f8f8f8
    aes64im x1, x31
    sd x1, 24(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xf8f8f8f8f8f8f8f8)
 
 inst_249:
    // Test 249:  Test with dataset: sbox64
    // result rd:x2(0xf9f9f9f9f9f9f9f9), rs1:x30(0xf9f9f9f9f9f9f9f9)
    li  x30, 0xf9f9f9f9f9f9f9f9
    aes64im x2, x30
    sd x2, 32(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xf9f9f9f9f9f9f9f9)


    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_51_0)

 
 inst_250:
    // Test 250:  Test with dataset: sbox64
    // result rd:x3(0xfafafafafafafafa), rs1:x29(0xfafafafafafafafa)
    li  x29, 0xfafafafafafafafa
    aes64im x3, x29
    sd x3, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0xfafafafafafafafa)
 
 inst_251:
    // Test 251:  Test with dataset: sbox64
    // result rd:x4(0xfbfbfbfbfbfbfbfb), rs1:x28(0xfbfbfbfbfbfbfbfb)
    li  x28, 0xfbfbfbfbfbfbfbfb
    aes64im x4, x28
    sd x4, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xfbfbfbfbfbfbfbfb)
 
 inst_252:
    // Test 252:  Test with dataset: sbox64
    // result rd:x5(0xfcfcfcfcfcfcfcfc), rs1:x27(0xfcfcfcfcfcfcfcfc)
    li  x27, 0xfcfcfcfcfcfcfcfc
    aes64im x5, x27
    sd x5, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xfcfcfcfcfcfcfcfc)
 
 inst_253:
    // Test 253:  Test with dataset: sbox64
    // result rd:x6(0xfdfdfdfdfdfdfdfd), rs1:x26(0xfdfdfdfdfdfdfdfd)
    li  x26, 0xfdfdfdfdfdfdfdfd
    aes64im x6, x26
    sd x6, 24(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xfdfdfdfdfdfdfdfd)
 
 inst_254:
    // Test 254:  Test with dataset: sbox64
    // result rd:x7(0xfefefefefefefefe), rs1:x25(0xfefefefefefefefe)
    li  x25, 0xfefefefefefefefe
    aes64im x7, x25
    sd x7, 32(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfefefefefefefefe)


    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64im)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes64im)

    RVTEST_SIGBASE(x1,signature_52_0)

 
 inst_255:
    // Test 255:  Test with dataset: sbox64
    // result rd:x8(0xffffffffffffffff), rs1:x24(0xffffffffffffffff)
    li  x24, 0xffffffffffffffff
    aes64im x8, x24
    sd x8, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffffffffffffffff)
	
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

