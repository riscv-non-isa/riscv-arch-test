// RISC-V Architectural Validation Test AES32ESI-01
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
// Description: Testing instruction 'aes32esi'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV32IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1


    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with random values
    // result rd:x1(0x64ea5195), rs1=>rd:x1(0xadea5195), rs2:x16(0x121bcc23), imm:0x3
    TEST_RI_OP(aes32esi, x1, x16, 0x3, 0x64ea5195, 0xadea5195, 0x121bcc23, x6, 0, x7)

inst_1:
    // Test 1:  Test with random values
    // result rd:x2(0x9bffbec1), rs1=>rd:x2(0xd2ffbec1), rs2:x15(0xa47d105b), imm:0x3
    TEST_RI_OP(aes32esi, x2, x15, 0x3, 0x9bffbec1, 0xd2ffbec1, 0xa47d105b, x6, 4, x7)

inst_2:
    // Test 2:  Test with random values
    // result rd:x3(0xa8e1a801), rs1=>rd:x3(0xa8e1a8bb), rs2:x14(0x707af2c0), imm:0x0
    TEST_RI_OP(aes32esi, x3, x14, 0x0, 0xa8e1a801, 0xa8e1a8bb, 0x707af2c0, x6, 8, x7)

inst_3:
    // Test 3:  Test with random values
    // result rd:x4(0xb0c99fcb), rs1=>rd:x4(0x48c99fcb), rs2:x13(0xe19bfbc3), imm:0x3
    TEST_RI_OP(aes32esi, x4, x13, 0x3, 0xb0c99fcb, 0x48c99fcb, 0xe19bfbc3, x6, 12, x7)

inst_4:
    // Test 4:  Test with random values
    // result rd:x5(0x461d524f), rs1=>rd:x5(0x461d524f), rs2:x12(0x528a10af), imm:0x3
    TEST_RI_OP(aes32esi, x5, x12, 0x3, 0x461d524f, 0x461d524f, 0x528a10af, x6, 16, x7)


    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with random values
    // result rd:x6(0x088a10af), rs1=>rd:x6(0x528a10af), rs2:x11(0x461d524f), imm:0x3
    TEST_RI_OP(aes32esi, x6, x11, 0x3, 0x088a10af, 0x528a10af, 0x461d524f, x1, 0, x2)

inst_6:
    // Test 6:  Test with random values
    // result rd:x7(0xb39bfbc3), rs1=>rd:x7(0xe19bfbc3), rs2:x10(0x48c99fcb), imm:0x3
    TEST_RI_OP(aes32esi, x7, x10, 0x3, 0xb39bfbc3, 0xe19bfbc3, 0x48c99fcb, x1, 4, x2)

inst_7:
    // Test 7:  Test with random values
    // result rd:x8(0xb27af2c0), rs1=>rd:x8(0x707af2c0), rs2:x9(0xa8e1a8bb), imm:0x3
    TEST_RI_OP(aes32esi, x8, x9, 0x3, 0xb27af2c0, 0x707af2c0, 0xa8e1a8bb, x1, 8, x2)

inst_8:
    // Test 8:  Test with random values
    // result rd:x9(0xa47dbe5b), rs1=>rd:x9(0xa47d105b), rs2:x8(0xd2ffbec1), imm:0x1
    TEST_RI_OP(aes32esi, x9, x8, 0x1, 0xa47dbe5b, 0xa47d105b, 0xd2ffbec1, x1, 12, x2)

inst_9:
    // Test 9:  Test with random values
    // result rd:x10(0x121b1d23), rs1=>rd:x10(0x121bcc23), rs2:x7(0xadea5195), imm:0x1
    TEST_RI_OP(aes32esi, x10, x7, 0x1, 0x121b1d23, 0x121bcc23, 0xadea5195, x1, 16, x2)


    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with marching zeros/ones
    // result rd:x11(0x16000001), rs1=>rd:x11(0x00000001), rs2:x6(0xffffffff), imm:0x3
    TEST_RI_OP(aes32esi, x11, x6, 0x3, 0x16000001, 0x00000001, 0xffffffff, x1, 0, x7)

inst_11:
    // Test 11:  Test with marching zeros/ones
    // result rd:x12(0x00001602), rs1=>rd:x12(0x00000002), rs2:x5(0x7fffffff), imm:0x1
    TEST_RI_OP(aes32esi, x12, x5, 0x1, 0x00001602, 0x00000002, 0x7fffffff, x1, 4, x7)

inst_12:
    // Test 12:  Test with marching zeros/ones
    // result rd:x13(0x00160004), rs1=>rd:x13(0x00000004), rs2:x4(0xbfffffff), imm:0x2
    TEST_RI_OP(aes32esi, x13, x4, 0x2, 0x00160004, 0x00000004, 0xbfffffff, x1, 8, x7)

inst_13:
    // Test 13:  Test with marching zeros/ones
    // result rd:x14(0x0000001e), rs1=>rd:x14(0x00000008), rs2:x3(0xdfffffff), imm:0x0
    TEST_RI_OP(aes32esi, x14, x3, 0x0, 0x0000001e, 0x00000008, 0xdfffffff, x1, 12, x7)

inst_14:
    // Test 14:  Test with marching zeros/ones
    // result rd:x15(0x00160010), rs1=>rd:x15(0x00000010), rs2:x2(0xefffffff), imm:0x2
    TEST_RI_OP(aes32esi, x15, x2, 0x2, 0x00160010, 0x00000010, 0xefffffff, x1, 16, x7)


    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with marching zeros/ones
    // result rd:x16(0x00001620), rs1=>rd:x16(0x00000020), rs2:x1(0xf7ffffff), imm:0x1
    TEST_RI_OP(aes32esi, x16, x1, 0x1, 0x00001620, 0x00000020, 0xf7ffffff, x2, 0, x3)

inst_16:
    // Test 16:  Test with marching zeros/ones
    // result rd:x17(0x0f000040), rs1=>rd:x17(0x00000040), rs2:x31(0xfbffffff), imm:0x3
    TEST_RI_OP(aes32esi, x17, x31, 0x3, 0x0f000040, 0x00000040, 0xfbffffff, x2, 4, x3)

inst_17:
    // Test 17:  Test with marching zeros/ones
    // result rd:x18(0x54000080), rs1=>rd:x18(0x00000080), rs2:x30(0xfdffffff), imm:0x3
    TEST_RI_OP(aes32esi, x18, x30, 0x3, 0x54000080, 0x00000080, 0xfdffffff, x2, 8, x3)

inst_18:
    // Test 18:  Test with marching zeros/ones
    // result rd:x19(0x00000116), rs1=>rd:x19(0x00000100), rs2:x29(0xfeffffff), imm:0x0
    TEST_RI_OP(aes32esi, x19, x29, 0x0, 0x00000116, 0x00000100, 0xfeffffff, x2, 12, x3)

inst_19:
    // Test 19:  Test with marching zeros/ones
    // result rd:x20(0x16000200), rs1=>rd:x20(0x00000200), rs2:x28(0xff7fffff), imm:0x3
    TEST_RI_OP(aes32esi, x20, x28, 0x3, 0x16000200, 0x00000200, 0xff7fffff, x2, 16, x3)


    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with marching zeros/ones
    // result rd:x21(0x16000400), rs1=>rd:x21(0x00000400), rs2:x27(0xffbfffff), imm:0x3
    TEST_RI_OP(aes32esi, x21, x27, 0x3, 0x16000400, 0x00000400, 0xffbfffff, x1, 0, x2)

inst_21:
    // Test 21:  Test with marching zeros/ones
    // result rd:x22(0x16000800), rs1=>rd:x22(0x00000800), rs2:x26(0xffdfffff), imm:0x3
    TEST_RI_OP(aes32esi, x22, x26, 0x3, 0x16000800, 0x00000800, 0xffdfffff, x1, 4, x2)

inst_22:
    // Test 22:  Test with marching zeros/ones
    // result rd:x23(0x16001000), rs1=>rd:x23(0x00001000), rs2:x25(0xffefffff), imm:0x3
    TEST_RI_OP(aes32esi, x23, x25, 0x3, 0x16001000, 0x00001000, 0xffefffff, x1, 8, x2)

inst_23:
    // Test 23:  Test with marching zeros/ones
    // result rd:x24(0xe9f7ffff), rs1=>rd:x24(0x00002000), rs2:x24(0xfff7ffff), imm:0x3
    TEST_RI_OP(aes32esi, x24, x24, 0x3, 0xe9f7ffff, 0x00002000, 0xfff7ffff, x1, 12, x2)

inst_24:
    // Test 24:  Test with marching zeros/ones
    // result rd:x25(0x00005600), rs1=>rd:x25(0x00004000), rs2:x23(0xfffbffff), imm:0x1
    TEST_RI_OP(aes32esi, x25, x23, 0x1, 0x00005600, 0x00004000, 0xfffbffff, x1, 16, x2)


    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with marching zeros/ones
    // result rd:x26(0x00009600), rs1=>rd:x26(0x00008000), rs2:x22(0xfffdffff), imm:0x1
    TEST_RI_OP(aes32esi, x26, x22, 0x1, 0x00009600, 0x00008000, 0xfffdffff, x1, 0, x7)

inst_26:
    // Test 26:  Test with marching zeros/ones
    // result rd:x27(0x16010000), rs1=>rd:x27(0x00010000), rs2:x21(0xfffeffff), imm:0x3
    TEST_RI_OP(aes32esi, x27, x21, 0x3, 0x16010000, 0x00010000, 0xfffeffff, x1, 4, x7)

inst_27:
    // Test 27:  Test with marching zeros/ones
    // result rd:x28(0x0002d200), rs1=>rd:x28(0x00020000), rs2:x20(0xffff7fff), imm:0x1
    TEST_RI_OP(aes32esi, x28, x20, 0x1, 0x0002d200, 0x00020000, 0xffff7fff, x1, 8, x7)

inst_28:
    // Test 28:  Test with marching zeros/ones
    // result rd:x29(0x00120000), rs1=>rd:x29(0x00040000), rs2:x19(0xffffbfff), imm:0x2
    TEST_RI_OP(aes32esi, x29, x19, 0x2, 0x00120000, 0x00040000, 0xffffbfff, x1, 12, x7)

inst_29:
    // Test 29:  Test with marching zeros/ones
    // result rd:x30(0x00080016), rs1=>rd:x30(0x00080000), rs2:x18(0xffffdfff), imm:0x0
    TEST_RI_OP(aes32esi, x30, x18, 0x0, 0x00080016, 0x00080000, 0xffffdfff, x1, 16, x7)


    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with marching zeros/ones
    // result rd:x31(0x00060000), rs1=>rd:x31(0x00100000), rs2:x17(0xffffefff), imm:0x2
    TEST_RI_OP(aes32esi, x31, x17, 0x2, 0x00060000, 0x00100000, 0xffffefff, x5, 0, x6)

inst_31:
    // Test 31:  Test with marching zeros/ones
    // result rd:x1(0x00206800), rs1=>rd:x1(0x00200000), rs2:x16(0xfffff7ff), imm:0x1
    TEST_RI_OP(aes32esi, x1, x16, 0x1, 0x00206800, 0x00200000, 0xfffff7ff, x5, 4, x6)

inst_32:
    // Test 32:  Test with marching zeros/ones
    // result rd:x2(0x16400000), rs1=>rd:x2(0x00400000), rs2:x15(0xfffffbff), imm:0x3
    TEST_RI_OP(aes32esi, x2, x15, 0x3, 0x16400000, 0x00400000, 0xfffffbff, x5, 8, x6)

inst_33:
    // Test 33:  Test with marching zeros/ones
    // result rd:x3(0x16800000), rs1=>rd:x3(0x00800000), rs2:x14(0xfffffdff), imm:0x3
    TEST_RI_OP(aes32esi, x3, x14, 0x3, 0x16800000, 0x00800000, 0xfffffdff, x5, 12, x6)

inst_34:
    // Test 34:  Test with marching zeros/ones
    // result rd:x4(0x01000016), rs1=>rd:x4(0x01000000), rs2:x13(0xfffffeff), imm:0x0
    TEST_RI_OP(aes32esi, x4, x13, 0x0, 0x01000016, 0x01000000, 0xfffffeff, x5, 16, x6)


    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with marching zeros/ones
    // result rd:x5(0x14000000), rs1=>rd:x5(0x02000000), rs2:x12(0xffffff7f), imm:0x3
    TEST_RI_OP(aes32esi, x5, x12, 0x3, 0x14000000, 0x02000000, 0xffffff7f, x1, 0, x2)

inst_36:
    // Test 36:  Test with marching zeros/ones
    // result rd:x6(0x12000000), rs1=>rd:x6(0x04000000), rs2:x11(0xffffffbf), imm:0x3
    TEST_RI_OP(aes32esi, x6, x11, 0x3, 0x12000000, 0x04000000, 0xffffffbf, x1, 4, x2)

inst_37:
    // Test 37:  Test with marching zeros/ones
    // result rd:x7(0x1e000000), rs1=>rd:x7(0x08000000), rs2:x10(0xffffffdf), imm:0x3
    TEST_RI_OP(aes32esi, x7, x10, 0x3, 0x1e000000, 0x08000000, 0xffffffdf, x1, 8, x2)

inst_38:
    // Test 38:  Test with marching zeros/ones
    // result rd:x8(0x06000000), rs1=>rd:x8(0x10000000), rs2:x9(0xffffffef), imm:0x3
    TEST_RI_OP(aes32esi, x8, x9, 0x3, 0x06000000, 0x10000000, 0xffffffef, x1, 12, x2)

inst_39:
    // Test 39:  Test with marching zeros/ones
    // result rd:x9(0x36000000), rs1=>rd:x9(0x20000000), rs2:x8(0xfffffff7), imm:0x3
    TEST_RI_OP(aes32esi, x9, x8, 0x3, 0x36000000, 0x20000000, 0xfffffff7, x1, 16, x2)


    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with marching zeros/ones
    // result rd:x10(0x40001600), rs1=>rd:x10(0x40000000), rs2:x7(0xfffffffb), imm:0x1
    TEST_RI_OP(aes32esi, x10, x7, 0x1, 0x40001600, 0x40000000, 0xfffffffb, x1, 0, x2)

inst_41:
    // Test 41:  Test with marching zeros/ones
    // result rd:x11(0x80001600), rs1=>rd:x11(0x80000000), rs2:x6(0xfffffffd), imm:0x1
    TEST_RI_OP(aes32esi, x11, x6, 0x1, 0x80001600, 0x80000000, 0xfffffffd, x1, 4, x2)

inst_42:
    // Test 42:  Test with marching zeros/ones
    // result rd:x12(0x16000000), rs1=>rd:x12(0x00000000), rs2:x5(0xfffffffe), imm:0x3
    TEST_RI_OP(aes32esi, x12, x5, 0x3, 0x16000000, 0x00000000, 0xfffffffe, x1, 8, x2)

inst_43:
    // Test 43:  Test with marching zeros/ones
    // result rd:x13(0xffff9cfe), rs1=>rd:x13(0xfffffffe), rs2:x4(0x00000000), imm:0x1
    TEST_RI_OP(aes32esi, x13, x4, 0x1, 0xffff9cfe, 0xfffffffe, 0x00000000, x1, 12, x2)

inst_44:
    // Test 44:  Test with marching zeros/ones
    // result rd:x14(0xff9cfffd), rs1=>rd:x14(0xfffffffd), rs2:x3(0x80000000), imm:0x2
    TEST_RI_OP(aes32esi, x14, x3, 0x2, 0xff9cfffd, 0xfffffffd, 0x80000000, x1, 16, x2)


    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with marching zeros/ones
    // result rd:x15(0xffffff98), rs1=>rd:x15(0xfffffffb), rs2:x2(0x40000000), imm:0x0
    TEST_RI_OP(aes32esi, x15, x2, 0x0, 0xffffff98, 0xfffffffb, 0x40000000, x3, 0, x4)

inst_46:
    // Test 46:  Test with marching zeros/ones
    // result rd:x16(0xff9cfff7), rs1=>rd:x16(0xfffffff7), rs2:x1(0x20000000), imm:0x2
    TEST_RI_OP(aes32esi, x16, x1, 0x2, 0xff9cfff7, 0xfffffff7, 0x20000000, x3, 4, x4)

inst_47:
    // Test 47:  Test with marching zeros/ones
    // result rd:x17(0xffff9cef), rs1=>rd:x17(0xffffffef), rs2:x31(0x10000000), imm:0x1
    TEST_RI_OP(aes32esi, x17, x31, 0x1, 0xffff9cef, 0xffffffef, 0x10000000, x3, 8, x4)

inst_48:
    // Test 48:  Test with marching zeros/ones
    // result rd:x18(0xcfffffdf), rs1=>rd:x18(0xffffffdf), rs2:x30(0x08000000), imm:0x3
    TEST_RI_OP(aes32esi, x18, x30, 0x3, 0xcfffffdf, 0xffffffdf, 0x08000000, x3, 12, x4)

inst_49:
    // Test 49:  Test with marching zeros/ones
    // result rd:x19(0x0dffffbf), rs1=>rd:x19(0xffffffbf), rs2:x29(0x04000000), imm:0x3
    TEST_RI_OP(aes32esi, x19, x29, 0x3, 0x0dffffbf, 0xffffffbf, 0x04000000, x3, 16, x4)


    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with marching zeros/ones
    // result rd:x20(0xffffff1c), rs1=>rd:x20(0xffffff7f), rs2:x28(0x02000000), imm:0x0
    TEST_RI_OP(aes32esi, x20, x28, 0x0, 0xffffff1c, 0xffffff7f, 0x02000000, x1, 0, x2)

inst_51:
    // Test 51:  Test with marching zeros/ones
    // result rd:x21(0x83fffeff), rs1=>rd:x21(0xfffffeff), rs2:x27(0x01000000), imm:0x3
    TEST_RI_OP(aes32esi, x21, x27, 0x3, 0x83fffeff, 0xfffffeff, 0x01000000, x1, 4, x2)

inst_52:
    // Test 52:  Test with marching zeros/ones
    // result rd:x22(0x9cfffdff), rs1=>rd:x22(0xfffffdff), rs2:x26(0x00800000), imm:0x3
    TEST_RI_OP(aes32esi, x22, x26, 0x3, 0x9cfffdff, 0xfffffdff, 0x00800000, x1, 8, x2)

inst_53:
    // Test 53:  Test with marching zeros/ones
    // result rd:x23(0x9cfffbff), rs1=>rd:x23(0xfffffbff), rs2:x25(0x00400000), imm:0x3
    TEST_RI_OP(aes32esi, x23, x25, 0x3, 0x9cfffbff, 0xfffffbff, 0x00400000, x1, 12, x2)

inst_54:
    // Test 54:  Test with marching zeros/ones
    // result rd:x24(0x63200000), rs1=>rd:x24(0xfffff7ff), rs2:x24(0x00200000), imm:0x3
    TEST_RI_OP(aes32esi, x24, x24, 0x3, 0x63200000, 0xfffff7ff, 0x00200000, x1, 16, x2)


    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with marching zeros/ones
    // result rd:x25(0x9cffefff), rs1=>rd:x25(0xffffefff), rs2:x23(0x00100000), imm:0x3
    TEST_RI_OP(aes32esi, x25, x23, 0x3, 0x9cffefff, 0xffffefff, 0x00100000, x1, 0, x2)

inst_56:
    // Test 56:  Test with marching zeros/ones
    // result rd:x26(0xffffbcff), rs1=>rd:x26(0xffffdfff), rs2:x22(0x00080000), imm:0x1
    TEST_RI_OP(aes32esi, x26, x22, 0x1, 0xffffbcff, 0xffffdfff, 0x00080000, x1, 4, x2)

inst_57:
    // Test 57:  Test with marching zeros/ones
    // result rd:x27(0xffffdcff), rs1=>rd:x27(0xffffbfff), rs2:x21(0x00040000), imm:0x1
    TEST_RI_OP(aes32esi, x27, x21, 0x1, 0xffffdcff, 0xffffbfff, 0x00040000, x1, 8, x2)

inst_58:
    // Test 58:  Test with marching zeros/ones
    // result rd:x28(0x9cff7fff), rs1=>rd:x28(0xffff7fff), rs2:x20(0x00020000), imm:0x3
    TEST_RI_OP(aes32esi, x28, x20, 0x3, 0x9cff7fff, 0xffff7fff, 0x00020000, x1, 12, x2)

inst_59:
    // Test 59:  Test with marching zeros/ones
    // result rd:x29(0xfffe9cff), rs1=>rd:x29(0xfffeffff), rs2:x19(0x00010000), imm:0x1
    TEST_RI_OP(aes32esi, x29, x19, 0x1, 0xfffe9cff, 0xfffeffff, 0x00010000, x1, 16, x2)


    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with marching zeros/ones
    // result rd:x30(0xff9effff), rs1=>rd:x30(0xfffdffff), rs2:x18(0x00008000), imm:0x2
    TEST_RI_OP(aes32esi, x30, x18, 0x2, 0xff9effff, 0xfffdffff, 0x00008000, x4, 0, x5)

inst_61:
    // Test 61:  Test with marching zeros/ones
    // result rd:x31(0xfffbff9c), rs1=>rd:x31(0xfffbffff), rs2:x17(0x00004000), imm:0x0
    TEST_RI_OP(aes32esi, x31, x17, 0x0, 0xfffbff9c, 0xfffbffff, 0x00004000, x4, 4, x5)

inst_62:
    // Test 62:  Test with marching zeros/ones
    // result rd:x1(0xff94ffff), rs1=>rd:x1(0xfff7ffff), rs2:x16(0x00002000), imm:0x2
    TEST_RI_OP(aes32esi, x1, x16, 0x2, 0xff94ffff, 0xfff7ffff, 0x00002000, x4, 8, x5)

inst_63:
    // Test 63:  Test with marching zeros/ones
    // result rd:x2(0xffef35ff), rs1=>rd:x2(0xffefffff), rs2:x15(0x00001000), imm:0x1
    TEST_RI_OP(aes32esi, x2, x15, 0x1, 0xffef35ff, 0xffefffff, 0x00001000, x4, 12, x5)

inst_64:
    // Test 64:  Test with marching zeros/ones
    // result rd:x3(0x9cdfffff), rs1=>rd:x3(0xffdfffff), rs2:x14(0x00000800), imm:0x3
    TEST_RI_OP(aes32esi, x3, x14, 0x3, 0x9cdfffff, 0xffdfffff, 0x00000800, x4, 16, x5)


    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with marching zeros/ones
    // result rd:x4(0x9cbfffff), rs1=>rd:x4(0xffbfffff), rs2:x13(0x00000400), imm:0x3
    TEST_RI_OP(aes32esi, x4, x13, 0x3, 0x9cbfffff, 0xffbfffff, 0x00000400, x1, 0, x2)

inst_66:
    // Test 66:  Test with marching zeros/ones
    // result rd:x5(0xff7fff9c), rs1=>rd:x5(0xff7fffff), rs2:x12(0x00000200), imm:0x0
    TEST_RI_OP(aes32esi, x5, x12, 0x0, 0xff7fff9c, 0xff7fffff, 0x00000200, x1, 4, x2)

inst_67:
    // Test 67:  Test with marching zeros/ones
    // result rd:x6(0xfeffff9c), rs1=>rd:x6(0xfeffffff), rs2:x11(0x00000100), imm:0x0
    TEST_RI_OP(aes32esi, x6, x11, 0x0, 0xfeffff9c, 0xfeffffff, 0x00000100, x1, 8, x2)

inst_68:
    // Test 68:  Test with marching zeros/ones
    // result rd:x7(0xfdffff32), rs1=>rd:x7(0xfdffffff), rs2:x10(0x00000080), imm:0x0
    TEST_RI_OP(aes32esi, x7, x10, 0x0, 0xfdffff32, 0xfdffffff, 0x00000080, x1, 12, x2)

inst_69:
    // Test 69:  Test with marching zeros/ones
    // result rd:x8(0xfbfffff6), rs1=>rd:x8(0xfbffffff), rs2:x9(0x00000040), imm:0x0
    TEST_RI_OP(aes32esi, x8, x9, 0x0, 0xfbfffff6, 0xfbffffff, 0x00000040, x1, 16, x2)


    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with marching zeros/ones
    // result rd:x9(0xf7ffff48), rs1=>rd:x9(0xf7ffffff), rs2:x8(0x00000020), imm:0x0
    TEST_RI_OP(aes32esi, x9, x8, 0x0, 0xf7ffff48, 0xf7ffffff, 0x00000020, x1, 0, x2)

inst_71:
    // Test 71:  Test with marching zeros/ones
    // result rd:x10(0xefffff35), rs1=>rd:x10(0xefffffff), rs2:x7(0x00000010), imm:0x0
    TEST_RI_OP(aes32esi, x10, x7, 0x0, 0xefffff35, 0xefffffff, 0x00000010, x1, 4, x2)

inst_72:
    // Test 72:  Test with marching zeros/ones
    // result rd:x11(0xdfffffcf), rs1=>rd:x11(0xdfffffff), rs2:x6(0x00000008), imm:0x0
    TEST_RI_OP(aes32esi, x11, x6, 0x0, 0xdfffffcf, 0xdfffffff, 0x00000008, x1, 8, x2)

inst_73:
    // Test 73:  Test with marching zeros/ones
    // result rd:x12(0xbfffff0d), rs1=>rd:x12(0xbfffffff), rs2:x5(0x00000004), imm:0x0
    TEST_RI_OP(aes32esi, x12, x5, 0x0, 0xbfffff0d, 0xbfffffff, 0x00000004, x1, 12, x2)

inst_74:
    // Test 74:  Test with marching zeros/ones
    // result rd:x13(0x7fffff88), rs1=>rd:x13(0x7fffffff), rs2:x4(0x00000002), imm:0x0
    TEST_RI_OP(aes32esi, x13, x4, 0x0, 0x7fffff88, 0x7fffffff, 0x00000002, x1, 16, x2)


    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with marching zeros/ones
    // result rd:x14(0xffffff83), rs1=>rd:x14(0xffffffff), rs2:x3(0x00000001), imm:0x0
    TEST_RI_OP(aes32esi, x14, x3, 0x0, 0xffffff83, 0xffffffff, 0x00000001, x4, 0, x5)

inst_76:
    // Test 76:  Test with marching zeros/ones
    // result rd:x15(0x00000062), rs1=>rd:x15(0x00000001), rs2:x2(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x15, x2, 0x0, 0x00000062, 0x00000001, 0x00000000, x4, 4, x5)

inst_77:
    // Test 77:  Test with marching zeros/ones
    // result rd:x16(0x00000061), rs1=>rd:x16(0x00000002), rs2:x1(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x16, x1, 0x0, 0x00000061, 0x00000002, 0x00000000, x4, 8, x5)

inst_78:
    // Test 78:  Test with marching zeros/ones
    // result rd:x17(0x00000067), rs1=>rd:x17(0x00000004), rs2:x31(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x17, x31, 0x0, 0x00000067, 0x00000004, 0x00000000, x4, 12, x5)

inst_79:
    // Test 79:  Test with marching zeros/ones
    // result rd:x18(0x0000006b), rs1=>rd:x18(0x00000008), rs2:x30(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x18, x30, 0x0, 0x0000006b, 0x00000008, 0x00000000, x4, 16, x5)


    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with marching zeros/ones
    // result rd:x19(0x00000073), rs1=>rd:x19(0x00000010), rs2:x29(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x19, x29, 0x0, 0x00000073, 0x00000010, 0x00000000, x1, 0, x2)

inst_81:
    // Test 81:  Test with marching zeros/ones
    // result rd:x20(0x00000043), rs1=>rd:x20(0x00000020), rs2:x28(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x20, x28, 0x0, 0x00000043, 0x00000020, 0x00000000, x1, 4, x2)

inst_82:
    // Test 82:  Test with marching zeros/ones
    // result rd:x21(0x00000023), rs1=>rd:x21(0x00000040), rs2:x27(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x21, x27, 0x0, 0x00000023, 0x00000040, 0x00000000, x1, 8, x2)

inst_83:
    // Test 83:  Test with marching zeros/ones
    // result rd:x22(0x000000e3), rs1=>rd:x22(0x00000080), rs2:x26(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x22, x26, 0x0, 0x000000e3, 0x00000080, 0x00000000, x1, 12, x2)

inst_84:
    // Test 84:  Test with marching zeros/ones
    // result rd:x23(0x00000163), rs1=>rd:x23(0x00000100), rs2:x25(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x23, x25, 0x0, 0x00000163, 0x00000100, 0x00000000, x1, 16, x2)


    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with marching zeros/ones
    // result rd:x24(0x00000063), rs1=>rd:x24(0x00000200), rs2:x24(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x24, x24, 0x0, 0x00000063, 0x00000200, 0x00000000, x1, 0, x2)

inst_86:
    // Test 86:  Test with marching zeros/ones
    // result rd:x25(0x00000463), rs1=>rd:x25(0x00000400), rs2:x23(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x25, x23, 0x0, 0x00000463, 0x00000400, 0x00000000, x1, 4, x2)

inst_87:
    // Test 87:  Test with marching zeros/ones
    // result rd:x26(0x00000863), rs1=>rd:x26(0x00000800), rs2:x22(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x26, x22, 0x0, 0x00000863, 0x00000800, 0x00000000, x1, 8, x2)

inst_88:
    // Test 88:  Test with marching zeros/ones
    // result rd:x27(0x00001063), rs1=>rd:x27(0x00001000), rs2:x21(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x27, x21, 0x0, 0x00001063, 0x00001000, 0x00000000, x1, 12, x2)

inst_89:
    // Test 89:  Test with marching zeros/ones
    // result rd:x28(0x00002063), rs1=>rd:x28(0x00002000), rs2:x20(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x28, x20, 0x0, 0x00002063, 0x00002000, 0x00000000, x1, 16, x2)


    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with marching zeros/ones
    // result rd:x29(0x00004063), rs1=>rd:x29(0x00004000), rs2:x19(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x29, x19, 0x0, 0x00004063, 0x00004000, 0x00000000, x4, 0, x5)

inst_91:
    // Test 91:  Test with marching zeros/ones
    // result rd:x30(0x00008063), rs1=>rd:x30(0x00008000), rs2:x18(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x30, x18, 0x0, 0x00008063, 0x00008000, 0x00000000, x4, 4, x5)

inst_92:
    // Test 92:  Test with marching zeros/ones
    // result rd:x31(0x00010063), rs1=>rd:x31(0x00010000), rs2:x17(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x31, x17, 0x0, 0x00010063, 0x00010000, 0x00000000, x4, 8, x5)

inst_93:
    // Test 93:  Test with marching zeros/ones
    // result rd:x1(0x00020063), rs1=>rd:x1(0x00020000), rs2:x16(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x1, x16, 0x0, 0x00020063, 0x00020000, 0x00000000, x4, 12, x5)

inst_94:
    // Test 94:  Test with marching zeros/ones
    // result rd:x2(0x00040063), rs1=>rd:x2(0x00040000), rs2:x15(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x2, x15, 0x0, 0x00040063, 0x00040000, 0x00000000, x4, 16, x5)


    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with marching zeros/ones
    // result rd:x3(0x00080063), rs1=>rd:x3(0x00080000), rs2:x14(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x3, x14, 0x0, 0x00080063, 0x00080000, 0x00000000, x1, 0, x2)

inst_96:
    // Test 96:  Test with marching zeros/ones
    // result rd:x4(0x00100063), rs1=>rd:x4(0x00100000), rs2:x13(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x4, x13, 0x0, 0x00100063, 0x00100000, 0x00000000, x1, 4, x2)

inst_97:
    // Test 97:  Test with marching zeros/ones
    // result rd:x5(0x00200063), rs1=>rd:x5(0x00200000), rs2:x12(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x5, x12, 0x0, 0x00200063, 0x00200000, 0x00000000, x1, 8, x2)

inst_98:
    // Test 98:  Test with marching zeros/ones
    // result rd:x6(0x00400063), rs1=>rd:x6(0x00400000), rs2:x11(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x6, x11, 0x0, 0x00400063, 0x00400000, 0x00000000, x1, 12, x2)

inst_99:
    // Test 99:  Test with marching zeros/ones
    // result rd:x7(0x00800063), rs1=>rd:x7(0x00800000), rs2:x10(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x7, x10, 0x0, 0x00800063, 0x00800000, 0x00000000, x1, 16, x2)


    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with marching zeros/ones
    // result rd:x8(0x01000063), rs1=>rd:x8(0x01000000), rs2:x9(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x8, x9, 0x0, 0x01000063, 0x01000000, 0x00000000, x1, 0, x2)

inst_101:
    // Test 101:  Test with marching zeros/ones
    // result rd:x9(0x02000063), rs1=>rd:x9(0x02000000), rs2:x8(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x9, x8, 0x0, 0x02000063, 0x02000000, 0x00000000, x1, 4, x2)

inst_102:
    // Test 102:  Test with marching zeros/ones
    // result rd:x10(0x04000063), rs1=>rd:x10(0x04000000), rs2:x7(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x10, x7, 0x0, 0x04000063, 0x04000000, 0x00000000, x1, 8, x2)

inst_103:
    // Test 103:  Test with marching zeros/ones
    // result rd:x11(0x08000063), rs1=>rd:x11(0x08000000), rs2:x6(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x11, x6, 0x0, 0x08000063, 0x08000000, 0x00000000, x1, 12, x2)

inst_104:
    // Test 104:  Test with marching zeros/ones
    // result rd:x12(0x10000063), rs1=>rd:x12(0x10000000), rs2:x5(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x12, x5, 0x0, 0x10000063, 0x10000000, 0x00000000, x1, 16, x2)


    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with marching zeros/ones
    // result rd:x13(0x20000063), rs1=>rd:x13(0x20000000), rs2:x4(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x13, x4, 0x0, 0x20000063, 0x20000000, 0x00000000, x5, 0, x6)

inst_106:
    // Test 106:  Test with marching zeros/ones
    // result rd:x14(0x40000063), rs1=>rd:x14(0x40000000), rs2:x3(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x14, x3, 0x0, 0x40000063, 0x40000000, 0x00000000, x5, 4, x6)

inst_107:
    // Test 107:  Test with marching zeros/ones
    // result rd:x15(0x80000063), rs1=>rd:x15(0x80000000), rs2:x2(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x15, x2, 0x0, 0x80000063, 0x80000000, 0x00000000, x5, 8, x6)

inst_108:
    // Test 108:  Test with marching zeros/ones
    // result rd:x16(0x00000063), rs1=>rd:x16(0x00000000), rs2:x1(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x16, x1, 0x0, 0x00000063, 0x00000000, 0x00000000, x5, 12, x6)

inst_109:
    // Test 109:  Test with marching zeros/ones
    // result rd:x17(0xffffff9d), rs1=>rd:x17(0xfffffffe), rs2:x31(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x17, x31, 0x0, 0xffffff9d, 0xfffffffe, 0x00000000, x5, 16, x6)


    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with marching zeros/ones
    // result rd:x18(0xffffff9e), rs1=>rd:x18(0xfffffffd), rs2:x30(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x18, x30, 0x0, 0xffffff9e, 0xfffffffd, 0x00000000, x1, 0, x2)

inst_111:
    // Test 111:  Test with marching zeros/ones
    // result rd:x19(0xffffff98), rs1=>rd:x19(0xfffffffb), rs2:x29(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x19, x29, 0x0, 0xffffff98, 0xfffffffb, 0x00000000, x1, 4, x2)

inst_112:
    // Test 112:  Test with marching zeros/ones
    // result rd:x20(0xffffff94), rs1=>rd:x20(0xfffffff7), rs2:x28(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x20, x28, 0x0, 0xffffff94, 0xfffffff7, 0x00000000, x1, 8, x2)

inst_113:
    // Test 113:  Test with marching zeros/ones
    // result rd:x21(0xffffff8c), rs1=>rd:x21(0xffffffef), rs2:x27(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x21, x27, 0x0, 0xffffff8c, 0xffffffef, 0x00000000, x1, 12, x2)

inst_114:
    // Test 114:  Test with marching zeros/ones
    // result rd:x22(0xffffffbc), rs1=>rd:x22(0xffffffdf), rs2:x26(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x22, x26, 0x0, 0xffffffbc, 0xffffffdf, 0x00000000, x1, 16, x2)


    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with marching zeros/ones
    // result rd:x23(0xffffffdc), rs1=>rd:x23(0xffffffbf), rs2:x25(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x23, x25, 0x0, 0xffffffdc, 0xffffffbf, 0x00000000, x1, 0, x2)

inst_116:
    // Test 116:  Test with marching zeros/ones
    // result rd:x24(0x00000063), rs1=>rd:x24(0xffffff7f), rs2:x24(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x24, x24, 0x0, 0x00000063, 0xffffff7f, 0x00000000, x1, 4, x2)

inst_117:
    // Test 117:  Test with marching zeros/ones
    // result rd:x25(0xfffffe9c), rs1=>rd:x25(0xfffffeff), rs2:x23(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x25, x23, 0x0, 0xfffffe9c, 0xfffffeff, 0x00000000, x1, 8, x2)

inst_118:
    // Test 118:  Test with marching zeros/ones
    // result rd:x26(0xfffffd9c), rs1=>rd:x26(0xfffffdff), rs2:x22(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x26, x22, 0x0, 0xfffffd9c, 0xfffffdff, 0x00000000, x1, 12, x2)

inst_119:
    // Test 119:  Test with marching zeros/ones
    // result rd:x27(0xfffffb9c), rs1=>rd:x27(0xfffffbff), rs2:x21(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x27, x21, 0x0, 0xfffffb9c, 0xfffffbff, 0x00000000, x1, 16, x2)


    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with marching zeros/ones
    // result rd:x28(0xfffff79c), rs1=>rd:x28(0xfffff7ff), rs2:x20(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x28, x20, 0x0, 0xfffff79c, 0xfffff7ff, 0x00000000, x5, 0, x6)

inst_121:
    // Test 121:  Test with marching zeros/ones
    // result rd:x29(0xffffef9c), rs1=>rd:x29(0xffffefff), rs2:x19(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x29, x19, 0x0, 0xffffef9c, 0xffffefff, 0x00000000, x5, 4, x6)

inst_122:
    // Test 122:  Test with marching zeros/ones
    // result rd:x30(0xffffdf9c), rs1=>rd:x30(0xffffdfff), rs2:x18(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x30, x18, 0x0, 0xffffdf9c, 0xffffdfff, 0x00000000, x5, 8, x6)

inst_123:
    // Test 123:  Test with marching zeros/ones
    // result rd:x31(0xffffbf9c), rs1=>rd:x31(0xffffbfff), rs2:x17(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x31, x17, 0x0, 0xffffbf9c, 0xffffbfff, 0x00000000, x5, 12, x6)

inst_124:
    // Test 124:  Test with marching zeros/ones
    // result rd:x1(0xffff7f9c), rs1=>rd:x1(0xffff7fff), rs2:x16(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x1, x16, 0x0, 0xffff7f9c, 0xffff7fff, 0x00000000, x5, 16, x6)


    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with marching zeros/ones
    // result rd:x2(0xfffeff9c), rs1=>rd:x2(0xfffeffff), rs2:x15(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x2, x15, 0x0, 0xfffeff9c, 0xfffeffff, 0x00000000, x1, 0, x7)

inst_126:
    // Test 126:  Test with marching zeros/ones
    // result rd:x3(0xfffdff9c), rs1=>rd:x3(0xfffdffff), rs2:x14(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x3, x14, 0x0, 0xfffdff9c, 0xfffdffff, 0x00000000, x1, 4, x7)

inst_127:
    // Test 127:  Test with marching zeros/ones
    // result rd:x4(0xfffbff9c), rs1=>rd:x4(0xfffbffff), rs2:x13(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x4, x13, 0x0, 0xfffbff9c, 0xfffbffff, 0x00000000, x1, 8, x7)

inst_128:
    // Test 128:  Test with marching zeros/ones
    // result rd:x5(0xfff7ff9c), rs1=>rd:x5(0xfff7ffff), rs2:x12(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x5, x12, 0x0, 0xfff7ff9c, 0xfff7ffff, 0x00000000, x1, 12, x7)

inst_129:
    // Test 129:  Test with marching zeros/ones
    // result rd:x6(0xffefff9c), rs1=>rd:x6(0xffefffff), rs2:x11(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x6, x11, 0x0, 0xffefff9c, 0xffefffff, 0x00000000, x1, 16, x7)


    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with marching zeros/ones
    // result rd:x7(0xffdfff9c), rs1=>rd:x7(0xffdfffff), rs2:x10(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x7, x10, 0x0, 0xffdfff9c, 0xffdfffff, 0x00000000, x1, 0, x2)

inst_131:
    // Test 131:  Test with marching zeros/ones
    // result rd:x8(0xffbfff9c), rs1=>rd:x8(0xffbfffff), rs2:x9(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x8, x9, 0x0, 0xffbfff9c, 0xffbfffff, 0x00000000, x1, 4, x2)

inst_132:
    // Test 132:  Test with marching zeros/ones
    // result rd:x9(0x9c7fffff), rs1=>rd:x9(0xff7fffff), rs2:x8(0x00000000), imm:0x3
    TEST_RI_OP(aes32esi, x9, x8, 0x3, 0x9c7fffff, 0xff7fffff, 0x00000000, x1, 8, x2)

inst_133:
    // Test 133:  Test with marching zeros/ones
    // result rd:x10(0x9dffffff), rs1=>rd:x10(0xfeffffff), rs2:x7(0x00000000), imm:0x3
    TEST_RI_OP(aes32esi, x10, x7, 0x3, 0x9dffffff, 0xfeffffff, 0x00000000, x1, 12, x2)

inst_134:
    // Test 134:  Test with marching zeros/ones
    // result rd:x11(0x9effffff), rs1=>rd:x11(0xfdffffff), rs2:x6(0x00000000), imm:0x3
    TEST_RI_OP(aes32esi, x11, x6, 0x3, 0x9effffff, 0xfdffffff, 0x00000000, x1, 16, x2)


    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with marching zeros/ones
    // result rd:x12(0x98ffffff), rs1=>rd:x12(0xfbffffff), rs2:x5(0x00000000), imm:0x3
    TEST_RI_OP(aes32esi, x12, x5, 0x3, 0x98ffffff, 0xfbffffff, 0x00000000, x6, 0, x7)

inst_136:
    // Test 136:  Test with marching zeros/ones
    // result rd:x13(0xf7ff9cff), rs1=>rd:x13(0xf7ffffff), rs2:x4(0x00000000), imm:0x1
    TEST_RI_OP(aes32esi, x13, x4, 0x1, 0xf7ff9cff, 0xf7ffffff, 0x00000000, x6, 4, x7)

inst_137:
    // Test 137:  Test with marching zeros/ones
    // result rd:x14(0xefff9cff), rs1=>rd:x14(0xefffffff), rs2:x3(0x00000000), imm:0x1
    TEST_RI_OP(aes32esi, x14, x3, 0x1, 0xefff9cff, 0xefffffff, 0x00000000, x6, 8, x7)

inst_138:
    // Test 138:  Test with marching zeros/ones
    // result rd:x15(0xbcffffff), rs1=>rd:x15(0xdfffffff), rs2:x2(0x00000000), imm:0x3
    TEST_RI_OP(aes32esi, x15, x2, 0x3, 0xbcffffff, 0xdfffffff, 0x00000000, x6, 12, x7)

inst_139:
    // Test 139:  Test with marching zeros/ones
    // result rd:x16(0xbfff9cff), rs1=>rd:x16(0xbfffffff), rs2:x1(0x00000000), imm:0x1
    TEST_RI_OP(aes32esi, x16, x1, 0x1, 0xbfff9cff, 0xbfffffff, 0x00000000, x6, 16, x7)


    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with marching zeros/ones
    // result rd:x17(0x7f9cffff), rs1=>rd:x17(0x7fffffff), rs2:x31(0x00000000), imm:0x2
    TEST_RI_OP(aes32esi, x17, x31, 0x2, 0x7f9cffff, 0x7fffffff, 0x00000000, x1, 0, x2)

inst_141:
    // Test 141:  Test with marching zeros/ones
    // result rd:x18(0xffffff9c), rs1=>rd:x18(0xffffffff), rs2:x30(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x18, x30, 0x0, 0xffffff9c, 0xffffffff, 0x00000000, x1, 4, x2)

inst_142:
    // Test 142:  Test with random values
    // result rd:x19(0xad455195), rs1=>rd:x19(0xadea5195), rs2:x29(0x121bcc23), imm:0x2
    TEST_RI_OP(aes32esi, x19, x29, 0x2, 0xad455195, 0xadea5195, 0x121bcc23, x1, 8, x2)

inst_143:
    // Test 143:  Test with rd == x0
    // result rd:x0(0x00000000), rs1=>rd:x0(0xd2ffbec1), rs2:x28(0xa47d105b), imm:0x1
    TEST_RI_OP(aes32esi, x0, x28, 0x1, 0x00000000, 0xd2ffbec1, 0xa47d105b, x1, 12, x2)

inst_144:
    // Test 144:  Test with rs2 == x0
    // result rd:x21(0xcbe1a8bb), rs1=>rd:x21(0xa8e1a8bb), rs2:x0(0x707af2c0), imm:0x3
    TEST_RI_OP(aes32esi, x21, x0, 0x3, 0xcbe1a8bb, 0xa8e1a8bb, 0x707af2c0, x1, 16, x2)


    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with random values
    // result rd:x22(0xb0c99fcb), rs1=>rd:x22(0x48c99fcb), rs2:x26(0xe19bfbc3), imm:0x3
    TEST_RI_OP(aes32esi, x22, x26, 0x3, 0xb0c99fcb, 0x48c99fcb, 0xe19bfbc3, x1, 0, x2)
	
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
	.fill 5, 4, 0xdeadbeef
signature_2_0:
	.fill 5, 4, 0xdeadbeef
signature_3_0:
	.fill 5, 4, 0xdeadbeef
signature_4_0:
	.fill 5, 4, 0xdeadbeef
signature_5_0:
	.fill 5, 4, 0xdeadbeef
signature_6_0:
	.fill 5, 4, 0xdeadbeef
signature_7_0:
	.fill 5, 4, 0xdeadbeef
signature_8_0:
	.fill 5, 4, 0xdeadbeef
signature_9_0:
	.fill 5, 4, 0xdeadbeef
signature_10_0:
	.fill 5, 4, 0xdeadbeef
signature_11_0:
	.fill 5, 4, 0xdeadbeef
signature_12_0:
	.fill 5, 4, 0xdeadbeef
signature_13_0:
	.fill 5, 4, 0xdeadbeef
signature_14_0:
	.fill 5, 4, 0xdeadbeef
signature_15_0:
	.fill 5, 4, 0xdeadbeef
signature_16_0:
	.fill 5, 4, 0xdeadbeef
signature_17_0:
	.fill 5, 4, 0xdeadbeef
signature_18_0:
	.fill 5, 4, 0xdeadbeef
signature_19_0:
	.fill 5, 4, 0xdeadbeef
signature_20_0:
	.fill 5, 4, 0xdeadbeef
signature_21_0:
	.fill 5, 4, 0xdeadbeef
signature_22_0:
	.fill 5, 4, 0xdeadbeef
signature_23_0:
	.fill 5, 4, 0xdeadbeef
signature_24_0:
	.fill 5, 4, 0xdeadbeef
signature_25_0:
	.fill 5, 4, 0xdeadbeef
signature_26_0:
	.fill 5, 4, 0xdeadbeef
signature_27_0:
	.fill 5, 4, 0xdeadbeef
signature_28_0:
	.fill 5, 4, 0xdeadbeef
signature_29_0:
	.fill 5, 4, 0xdeadbeef
signature_30_0:
	.fill 5, 4, 0xdeadbeef


#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END

