// RISC-V Architectural Validation Test AES32ESI-02
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
// Using dataset: sbox32

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
    // Test 0:  Test with dataset: sbox32
    // result rd:x1(0xadea51f6), rs1=>rd:x1(0xadea5195), rs2:x16(0x00000000), imm:0x0
    TEST_RI_OP(aes32esi, x1, x16, 0x0, 0xadea51f6, 0xadea5195, 0x00000000, x6, 0, x7)

inst_1:
    // Test 1:  Test with dataset: sbox32
    // result rd:x2(0xd2ffc2c1), rs1=>rd:x2(0xd2ffbec1), rs2:x15(0x00000100), imm:0x1
    TEST_RI_OP(aes32esi, x2, x15, 0x1, 0xd2ffc2c1, 0xd2ffbec1, 0x00000100, x6, 4, x7)

inst_2:
    // Test 2:  Test with dataset: sbox32
    // result rd:x3(0xa896a8bb), rs1=>rd:x3(0xa8e1a8bb), rs2:x14(0x00020000), imm:0x2
    TEST_RI_OP(aes32esi, x3, x14, 0x2, 0xa896a8bb, 0xa8e1a8bb, 0x00020000, x6, 8, x7)

inst_3:
    // Test 3:  Test with dataset: sbox32
    // result rd:x4(0x33c99fcb), rs1=>rd:x4(0x48c99fcb), rs2:x13(0x03000000), imm:0x3
    TEST_RI_OP(aes32esi, x4, x13, 0x3, 0x33c99fcb, 0x48c99fcb, 0x03000000, x6, 12, x7)

inst_4:
    // Test 4:  Test with dataset: sbox32
    // result rd:x5(0x461d52bd), rs1=>rd:x5(0x461d524f), rs2:x12(0x00000004), imm:0x0
    TEST_RI_OP(aes32esi, x5, x12, 0x0, 0x461d52bd, 0x461d524f, 0x00000004, x6, 16, x7)


    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with dataset: sbox32
    // result rd:x6(0x528a7baf), rs1=>rd:x6(0x528a10af), rs2:x11(0x00000500), imm:0x1
    TEST_RI_OP(aes32esi, x6, x11, 0x1, 0x528a7baf, 0x528a10af, 0x00000500, x1, 0, x2)

inst_6:
    // Test 6:  Test with dataset: sbox32
    // result rd:x7(0xe1f4fbc3), rs1=>rd:x7(0xe19bfbc3), rs2:x10(0x00060000), imm:0x2
    TEST_RI_OP(aes32esi, x7, x10, 0x2, 0xe1f4fbc3, 0xe19bfbc3, 0x00060000, x1, 4, x2)

inst_7:
    // Test 7:  Test with dataset: sbox32
    // result rd:x8(0xb57af2c0), rs1=>rd:x8(0x707af2c0), rs2:x9(0x07000000), imm:0x3
    TEST_RI_OP(aes32esi, x8, x9, 0x3, 0xb57af2c0, 0x707af2c0, 0x07000000, x1, 8, x2)

inst_8:
    // Test 8:  Test with dataset: sbox32
    // result rd:x9(0xa47d106b), rs1=>rd:x9(0xa47d105b), rs2:x8(0x00000008), imm:0x0
    TEST_RI_OP(aes32esi, x9, x8, 0x0, 0xa47d106b, 0xa47d105b, 0x00000008, x1, 12, x2)

inst_9:
    // Test 9:  Test with dataset: sbox32
    // result rd:x10(0x121bcd23), rs1=>rd:x10(0x121bcc23), rs2:x7(0x00000900), imm:0x1
    TEST_RI_OP(aes32esi, x10, x7, 0x1, 0x121bcd23, 0x121bcc23, 0x00000900, x1, 16, x2)


    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with dataset: sbox32
    // result rd:x11(0xad8d5195), rs1=>rd:x11(0xadea5195), rs2:x6(0x000a0000), imm:0x2
    TEST_RI_OP(aes32esi, x11, x6, 0x2, 0xad8d5195, 0xadea5195, 0x000a0000, x1, 0, x7)

inst_11:
    // Test 11:  Test with dataset: sbox32
    // result rd:x12(0xf9ffbec1), rs1=>rd:x12(0xd2ffbec1), rs2:x5(0x0b000000), imm:0x3
    TEST_RI_OP(aes32esi, x12, x5, 0x3, 0xf9ffbec1, 0xd2ffbec1, 0x0b000000, x1, 4, x7)

inst_12:
    // Test 12:  Test with dataset: sbox32
    // result rd:x13(0xa8e1a845), rs1=>rd:x13(0xa8e1a8bb), rs2:x4(0x0000000c), imm:0x0
    TEST_RI_OP(aes32esi, x13, x4, 0x0, 0xa8e1a845, 0xa8e1a8bb, 0x0000000c, x1, 8, x7)

inst_13:
    // Test 13:  Test with dataset: sbox32
    // result rd:x14(0x48c948cb), rs1=>rd:x14(0x48c99fcb), rs2:x3(0x00000d00), imm:0x1
    TEST_RI_OP(aes32esi, x14, x3, 0x1, 0x48c948cb, 0x48c99fcb, 0x00000d00, x1, 12, x7)

inst_14:
    // Test 14:  Test with dataset: sbox32
    // result rd:x15(0x46b6524f), rs1=>rd:x15(0x461d524f), rs2:x2(0x000e0000), imm:0x2
    TEST_RI_OP(aes32esi, x15, x2, 0x2, 0x46b6524f, 0x461d524f, 0x000e0000, x1, 16, x7)


    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with dataset: sbox32
    // result rd:x16(0x248a10af), rs1=>rd:x16(0x528a10af), rs2:x1(0x0f000000), imm:0x3
    TEST_RI_OP(aes32esi, x16, x1, 0x3, 0x248a10af, 0x528a10af, 0x0f000000, x2, 0, x3)

inst_16:
    // Test 16:  Test with dataset: sbox32
    // result rd:x17(0xe19bfb09), rs1=>rd:x17(0xe19bfbc3), rs2:x31(0x00000010), imm:0x0
    TEST_RI_OP(aes32esi, x17, x31, 0x0, 0xe19bfb09, 0xe19bfbc3, 0x00000010, x2, 4, x3)

inst_17:
    // Test 17:  Test with dataset: sbox32
    // result rd:x18(0x707a70c0), rs1=>rd:x18(0x707af2c0), rs2:x30(0x00001100), imm:0x1
    TEST_RI_OP(aes32esi, x18, x30, 0x1, 0x707a70c0, 0x707af2c0, 0x00001100, x2, 8, x3)

inst_18:
    // Test 18:  Test with dataset: sbox32
    // result rd:x19(0xa4b4105b), rs1=>rd:x19(0xa47d105b), rs2:x29(0x00120000), imm:0x2
    TEST_RI_OP(aes32esi, x19, x29, 0x2, 0xa4b4105b, 0xa47d105b, 0x00120000, x2, 12, x3)

inst_19:
    // Test 19:  Test with dataset: sbox32
    // result rd:x20(0x6f1bcc23), rs1=>rd:x20(0x121bcc23), rs2:x28(0x13000000), imm:0x3
    TEST_RI_OP(aes32esi, x20, x28, 0x3, 0x6f1bcc23, 0x121bcc23, 0x13000000, x2, 16, x3)


    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with dataset: sbox32
    // result rd:x21(0xadea516f), rs1=>rd:x21(0xadea5195), rs2:x27(0x00000014), imm:0x0
    TEST_RI_OP(aes32esi, x21, x27, 0x0, 0xadea516f, 0xadea5195, 0x00000014, x1, 0, x2)

inst_21:
    // Test 21:  Test with dataset: sbox32
    // result rd:x22(0xd2ffe7c1), rs1=>rd:x22(0xd2ffbec1), rs2:x26(0x00001500), imm:0x1
    TEST_RI_OP(aes32esi, x22, x26, 0x1, 0xd2ffe7c1, 0xd2ffbec1, 0x00001500, x1, 4, x2)

inst_22:
    // Test 22:  Test with dataset: sbox32
    // result rd:x23(0xa8a6a8bb), rs1=>rd:x23(0xa8e1a8bb), rs2:x25(0x00160000), imm:0x2
    TEST_RI_OP(aes32esi, x23, x25, 0x2, 0xa8a6a8bb, 0xa8e1a8bb, 0x00160000, x1, 8, x2)

inst_23:
    // Test 23:  Test with dataset: sbox32
    // result rd:x24(0xe7000000), rs1=>rd:x24(0x48c99fcb), rs2:x24(0x17000000), imm:0x3
    TEST_RI_OP(aes32esi, x24, x24, 0x3, 0xe7000000, 0x48c99fcb, 0x17000000, x1, 12, x2)

inst_24:
    // Test 24:  Test with dataset: sbox32
    // result rd:x25(0x461d52e2), rs1=>rd:x25(0x461d524f), rs2:x23(0x00000018), imm:0x0
    TEST_RI_OP(aes32esi, x25, x23, 0x0, 0x461d52e2, 0x461d524f, 0x00000018, x1, 16, x2)


    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with dataset: sbox32
    // result rd:x26(0x528ac4af), rs1=>rd:x26(0x528a10af), rs2:x22(0x00001900), imm:0x1
    TEST_RI_OP(aes32esi, x26, x22, 0x1, 0x528ac4af, 0x528a10af, 0x00001900, x1, 0, x7)

inst_26:
    // Test 26:  Test with dataset: sbox32
    // result rd:x27(0xe139fbc3), rs1=>rd:x27(0xe19bfbc3), rs2:x21(0x001a0000), imm:0x2
    TEST_RI_OP(aes32esi, x27, x21, 0x2, 0xe139fbc3, 0xe19bfbc3, 0x001a0000, x1, 4, x7)

inst_27:
    // Test 27:  Test with dataset: sbox32
    // result rd:x28(0xdf7af2c0), rs1=>rd:x28(0x707af2c0), rs2:x20(0x1b000000), imm:0x3
    TEST_RI_OP(aes32esi, x28, x20, 0x3, 0xdf7af2c0, 0x707af2c0, 0x1b000000, x1, 8, x7)

inst_28:
    // Test 28:  Test with dataset: sbox32
    // result rd:x29(0xa47d10c7), rs1=>rd:x29(0xa47d105b), rs2:x19(0x0000001c), imm:0x0
    TEST_RI_OP(aes32esi, x29, x19, 0x0, 0xa47d10c7, 0xa47d105b, 0x0000001c, x1, 12, x7)

inst_29:
    // Test 29:  Test with dataset: sbox32
    // result rd:x30(0x121b6823), rs1=>rd:x30(0x121bcc23), rs2:x18(0x00001d00), imm:0x1
    TEST_RI_OP(aes32esi, x30, x18, 0x1, 0x121b6823, 0x121bcc23, 0x00001d00, x1, 16, x7)


    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with dataset: sbox32
    // result rd:x31(0xad985195), rs1=>rd:x31(0xadea5195), rs2:x17(0x001e0000), imm:0x2
    TEST_RI_OP(aes32esi, x31, x17, 0x2, 0xad985195, 0xadea5195, 0x001e0000, x5, 0, x6)

inst_31:
    // Test 31:  Test with dataset: sbox32
    // result rd:x1(0x12ffbec1), rs1=>rd:x1(0xd2ffbec1), rs2:x16(0x1f000000), imm:0x3
    TEST_RI_OP(aes32esi, x1, x16, 0x3, 0x12ffbec1, 0xd2ffbec1, 0x1f000000, x5, 4, x6)

inst_32:
    // Test 32:  Test with dataset: sbox32
    // result rd:x2(0xa8e1a80c), rs1=>rd:x2(0xa8e1a8bb), rs2:x15(0x00000020), imm:0x0
    TEST_RI_OP(aes32esi, x2, x15, 0x0, 0xa8e1a80c, 0xa8e1a8bb, 0x00000020, x5, 8, x6)

inst_33:
    // Test 33:  Test with dataset: sbox32
    // result rd:x3(0x48c962cb), rs1=>rd:x3(0x48c99fcb), rs2:x14(0x00002100), imm:0x1
    TEST_RI_OP(aes32esi, x3, x14, 0x1, 0x48c962cb, 0x48c99fcb, 0x00002100, x5, 12, x6)

inst_34:
    // Test 34:  Test with dataset: sbox32
    // result rd:x4(0x468e524f), rs1=>rd:x4(0x461d524f), rs2:x13(0x00220000), imm:0x2
    TEST_RI_OP(aes32esi, x4, x13, 0x2, 0x468e524f, 0x461d524f, 0x00220000, x5, 16, x6)


    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with dataset: sbox32
    // result rd:x5(0x748a10af), rs1=>rd:x5(0x528a10af), rs2:x12(0x23000000), imm:0x3
    TEST_RI_OP(aes32esi, x5, x12, 0x3, 0x748a10af, 0x528a10af, 0x23000000, x1, 0, x2)

inst_36:
    // Test 36:  Test with dataset: sbox32
    // result rd:x6(0xe19bfbf5), rs1=>rd:x6(0xe19bfbc3), rs2:x11(0x00000024), imm:0x0
    TEST_RI_OP(aes32esi, x6, x11, 0x0, 0xe19bfbf5, 0xe19bfbc3, 0x00000024, x1, 4, x2)

inst_37:
    // Test 37:  Test with dataset: sbox32
    // result rd:x7(0x707acdc0), rs1=>rd:x7(0x707af2c0), rs2:x10(0x00002500), imm:0x1
    TEST_RI_OP(aes32esi, x7, x10, 0x1, 0x707acdc0, 0x707af2c0, 0x00002500, x1, 8, x2)

inst_38:
    // Test 38:  Test with dataset: sbox32
    // result rd:x8(0xa48a105b), rs1=>rd:x8(0xa47d105b), rs2:x9(0x00260000), imm:0x2
    TEST_RI_OP(aes32esi, x8, x9, 0x2, 0xa48a105b, 0xa47d105b, 0x00260000, x1, 12, x2)

inst_39:
    // Test 39:  Test with dataset: sbox32
    // result rd:x9(0xde1bcc23), rs1=>rd:x9(0x121bcc23), rs2:x8(0x27000000), imm:0x3
    TEST_RI_OP(aes32esi, x9, x8, 0x3, 0xde1bcc23, 0x121bcc23, 0x27000000, x1, 16, x2)


    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with dataset: sbox32
    // result rd:x10(0xadea51a1), rs1=>rd:x10(0xadea5195), rs2:x7(0x00000028), imm:0x0
    TEST_RI_OP(aes32esi, x10, x7, 0x0, 0xadea51a1, 0xadea5195, 0x00000028, x1, 0, x2)

inst_41:
    // Test 41:  Test with dataset: sbox32
    // result rd:x11(0xd2ff1bc1), rs1=>rd:x11(0xd2ffbec1), rs2:x6(0x00002900), imm:0x1
    TEST_RI_OP(aes32esi, x11, x6, 0x1, 0xd2ff1bc1, 0xd2ffbec1, 0x00002900, x1, 4, x2)

inst_42:
    // Test 42:  Test with dataset: sbox32
    // result rd:x12(0xa804a8bb), rs1=>rd:x12(0xa8e1a8bb), rs2:x5(0x002a0000), imm:0x2
    TEST_RI_OP(aes32esi, x12, x5, 0x2, 0xa804a8bb, 0xa8e1a8bb, 0x002a0000, x1, 8, x2)

inst_43:
    // Test 43:  Test with dataset: sbox32
    // result rd:x13(0xb9c99fcb), rs1=>rd:x13(0x48c99fcb), rs2:x4(0x2b000000), imm:0x3
    TEST_RI_OP(aes32esi, x13, x4, 0x3, 0xb9c99fcb, 0x48c99fcb, 0x2b000000, x1, 12, x2)

inst_44:
    // Test 44:  Test with dataset: sbox32
    // result rd:x14(0x461d523e), rs1=>rd:x14(0x461d524f), rs2:x3(0x0000002c), imm:0x0
    TEST_RI_OP(aes32esi, x14, x3, 0x0, 0x461d523e, 0x461d524f, 0x0000002c, x1, 16, x2)


    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with dataset: sbox32
    // result rd:x15(0x528ac8af), rs1=>rd:x15(0x528a10af), rs2:x2(0x00002d00), imm:0x1
    TEST_RI_OP(aes32esi, x15, x2, 0x1, 0x528ac8af, 0x528a10af, 0x00002d00, x3, 0, x4)

inst_46:
    // Test 46:  Test with dataset: sbox32
    // result rd:x16(0xe1aafbc3), rs1=>rd:x16(0xe19bfbc3), rs2:x1(0x002e0000), imm:0x2
    TEST_RI_OP(aes32esi, x16, x1, 0x2, 0xe1aafbc3, 0xe19bfbc3, 0x002e0000, x3, 4, x4)

inst_47:
    // Test 47:  Test with dataset: sbox32
    // result rd:x17(0x657af2c0), rs1=>rd:x17(0x707af2c0), rs2:x31(0x2f000000), imm:0x3
    TEST_RI_OP(aes32esi, x17, x31, 0x3, 0x657af2c0, 0x707af2c0, 0x2f000000, x3, 8, x4)

inst_48:
    // Test 48:  Test with dataset: sbox32
    // result rd:x18(0xa47d105f), rs1=>rd:x18(0xa47d105b), rs2:x30(0x00000030), imm:0x0
    TEST_RI_OP(aes32esi, x18, x30, 0x0, 0xa47d105f, 0xa47d105b, 0x00000030, x3, 12, x4)

inst_49:
    // Test 49:  Test with dataset: sbox32
    // result rd:x19(0x121b0b23), rs1=>rd:x19(0x121bcc23), rs2:x29(0x00003100), imm:0x1
    TEST_RI_OP(aes32esi, x19, x29, 0x1, 0x121b0b23, 0x121bcc23, 0x00003100, x3, 16, x4)


    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with dataset: sbox32
    // result rd:x20(0xadc95195), rs1=>rd:x20(0xadea5195), rs2:x28(0x00320000), imm:0x2
    TEST_RI_OP(aes32esi, x20, x28, 0x2, 0xadc95195, 0xadea5195, 0x00320000, x1, 0, x2)

inst_51:
    // Test 51:  Test with dataset: sbox32
    // result rd:x21(0x11ffbec1), rs1=>rd:x21(0xd2ffbec1), rs2:x27(0x33000000), imm:0x3
    TEST_RI_OP(aes32esi, x21, x27, 0x3, 0x11ffbec1, 0xd2ffbec1, 0x33000000, x1, 4, x2)

inst_52:
    // Test 52:  Test with dataset: sbox32
    // result rd:x22(0xa8e1a8a3), rs1=>rd:x22(0xa8e1a8bb), rs2:x26(0x00000034), imm:0x0
    TEST_RI_OP(aes32esi, x22, x26, 0x0, 0xa8e1a8a3, 0xa8e1a8bb, 0x00000034, x1, 8, x2)

inst_53:
    // Test 53:  Test with dataset: sbox32
    // result rd:x23(0x48c909cb), rs1=>rd:x23(0x48c99fcb), rs2:x25(0x00003500), imm:0x1
    TEST_RI_OP(aes32esi, x23, x25, 0x1, 0x48c909cb, 0x48c99fcb, 0x00003500, x1, 12, x2)

inst_54:
    // Test 54:  Test with dataset: sbox32
    // result rd:x24(0x00330000), rs1=>rd:x24(0x461d524f), rs2:x24(0x00360000), imm:0x2
    TEST_RI_OP(aes32esi, x24, x24, 0x2, 0x00330000, 0x461d524f, 0x00360000, x1, 16, x2)


    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with dataset: sbox32
    // result rd:x25(0xc88a10af), rs1=>rd:x25(0x528a10af), rs2:x23(0x37000000), imm:0x3
    TEST_RI_OP(aes32esi, x25, x23, 0x3, 0xc88a10af, 0x528a10af, 0x37000000, x1, 0, x2)

inst_56:
    // Test 56:  Test with dataset: sbox32
    // result rd:x26(0xe19bfbc4), rs1=>rd:x26(0xe19bfbc3), rs2:x22(0x00000038), imm:0x0
    TEST_RI_OP(aes32esi, x26, x22, 0x0, 0xe19bfbc4, 0xe19bfbc3, 0x00000038, x1, 4, x2)

inst_57:
    // Test 57:  Test with dataset: sbox32
    // result rd:x27(0x707ae0c0), rs1=>rd:x27(0x707af2c0), rs2:x21(0x00003900), imm:0x1
    TEST_RI_OP(aes32esi, x27, x21, 0x1, 0x707ae0c0, 0x707af2c0, 0x00003900, x1, 8, x2)

inst_58:
    // Test 58:  Test with dataset: sbox32
    // result rd:x28(0xa4fd105b), rs1=>rd:x28(0xa47d105b), rs2:x20(0x003a0000), imm:0x2
    TEST_RI_OP(aes32esi, x28, x20, 0x2, 0xa4fd105b, 0xa47d105b, 0x003a0000, x1, 12, x2)

inst_59:
    // Test 59:  Test with dataset: sbox32
    // result rd:x29(0xf01bcc23), rs1=>rd:x29(0x121bcc23), rs2:x19(0x3b000000), imm:0x3
    TEST_RI_OP(aes32esi, x29, x19, 0x3, 0xf01bcc23, 0x121bcc23, 0x3b000000, x1, 16, x2)


    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with dataset: sbox32
    // result rd:x30(0xadea517e), rs1=>rd:x30(0xadea5195), rs2:x18(0x0000003c), imm:0x0
    TEST_RI_OP(aes32esi, x30, x18, 0x0, 0xadea517e, 0xadea5195, 0x0000003c, x4, 0, x5)

inst_61:
    // Test 61:  Test with dataset: sbox32
    // result rd:x31(0xd2ff99c1), rs1=>rd:x31(0xd2ffbec1), rs2:x17(0x00003d00), imm:0x1
    TEST_RI_OP(aes32esi, x31, x17, 0x1, 0xd2ff99c1, 0xd2ffbec1, 0x00003d00, x4, 4, x5)

inst_62:
    // Test 62:  Test with dataset: sbox32
    // result rd:x1(0xa853a8bb), rs1=>rd:x1(0xa8e1a8bb), rs2:x16(0x003e0000), imm:0x2
    TEST_RI_OP(aes32esi, x1, x16, 0x2, 0xa853a8bb, 0xa8e1a8bb, 0x003e0000, x4, 8, x5)

inst_63:
    // Test 63:  Test with dataset: sbox32
    // result rd:x2(0x3dc99fcb), rs1=>rd:x2(0x48c99fcb), rs2:x15(0x3f000000), imm:0x3
    TEST_RI_OP(aes32esi, x2, x15, 0x3, 0x3dc99fcb, 0x48c99fcb, 0x3f000000, x4, 12, x5)

inst_64:
    // Test 64:  Test with dataset: sbox32
    // result rd:x3(0x461d5246), rs1=>rd:x3(0x461d524f), rs2:x14(0x00000040), imm:0x0
    TEST_RI_OP(aes32esi, x3, x14, 0x0, 0x461d5246, 0x461d524f, 0x00000040, x4, 16, x5)


    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with dataset: sbox32
    // result rd:x4(0x528a93af), rs1=>rd:x4(0x528a10af), rs2:x13(0x00004100), imm:0x1
    TEST_RI_OP(aes32esi, x4, x13, 0x1, 0x528a93af, 0x528a10af, 0x00004100, x1, 0, x2)

inst_66:
    // Test 66:  Test with dataset: sbox32
    // result rd:x5(0xe1b7fbc3), rs1=>rd:x5(0xe19bfbc3), rs2:x12(0x00420000), imm:0x2
    TEST_RI_OP(aes32esi, x5, x12, 0x2, 0xe1b7fbc3, 0xe19bfbc3, 0x00420000, x1, 4, x2)

inst_67:
    // Test 67:  Test with dataset: sbox32
    // result rd:x6(0x6a7af2c0), rs1=>rd:x6(0x707af2c0), rs2:x11(0x43000000), imm:0x3
    TEST_RI_OP(aes32esi, x6, x11, 0x3, 0x6a7af2c0, 0x707af2c0, 0x43000000, x1, 8, x2)

inst_68:
    // Test 68:  Test with dataset: sbox32
    // result rd:x7(0xa47d1040), rs1=>rd:x7(0xa47d105b), rs2:x10(0x00000044), imm:0x0
    TEST_RI_OP(aes32esi, x7, x10, 0x0, 0xa47d1040, 0xa47d105b, 0x00000044, x1, 12, x2)

inst_69:
    // Test 69:  Test with dataset: sbox32
    // result rd:x8(0x121ba223), rs1=>rd:x8(0x121bcc23), rs2:x9(0x00004500), imm:0x1
    TEST_RI_OP(aes32esi, x8, x9, 0x1, 0x121ba223, 0x121bcc23, 0x00004500, x1, 16, x2)


    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with dataset: sbox32
    // result rd:x9(0xadb05195), rs1=>rd:x9(0xadea5195), rs2:x8(0x00460000), imm:0x2
    TEST_RI_OP(aes32esi, x9, x8, 0x2, 0xadb05195, 0xadea5195, 0x00460000, x1, 0, x2)

inst_71:
    // Test 71:  Test with dataset: sbox32
    // result rd:x10(0x72ffbec1), rs1=>rd:x10(0xd2ffbec1), rs2:x7(0x47000000), imm:0x3
    TEST_RI_OP(aes32esi, x10, x7, 0x3, 0x72ffbec1, 0xd2ffbec1, 0x47000000, x1, 4, x2)

inst_72:
    // Test 72:  Test with dataset: sbox32
    // result rd:x11(0xa8e1a8e9), rs1=>rd:x11(0xa8e1a8bb), rs2:x6(0x00000048), imm:0x0
    TEST_RI_OP(aes32esi, x11, x6, 0x0, 0xa8e1a8e9, 0xa8e1a8bb, 0x00000048, x1, 8, x2)

inst_73:
    // Test 73:  Test with dataset: sbox32
    // result rd:x12(0x48c9a4cb), rs1=>rd:x12(0x48c99fcb), rs2:x5(0x00004900), imm:0x1
    TEST_RI_OP(aes32esi, x12, x5, 0x1, 0x48c9a4cb, 0x48c99fcb, 0x00004900, x1, 12, x2)

inst_74:
    // Test 74:  Test with dataset: sbox32
    // result rd:x13(0x46cb524f), rs1=>rd:x13(0x461d524f), rs2:x4(0x004a0000), imm:0x2
    TEST_RI_OP(aes32esi, x13, x4, 0x2, 0x46cb524f, 0x461d524f, 0x004a0000, x1, 16, x2)


    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with dataset: sbox32
    // result rd:x14(0xe18a10af), rs1=>rd:x14(0x528a10af), rs2:x3(0x4b000000), imm:0x3
    TEST_RI_OP(aes32esi, x14, x3, 0x3, 0xe18a10af, 0x528a10af, 0x4b000000, x4, 0, x5)

inst_76:
    // Test 76:  Test with dataset: sbox32
    // result rd:x15(0xe19bfbea), rs1=>rd:x15(0xe19bfbc3), rs2:x2(0x0000004c), imm:0x0
    TEST_RI_OP(aes32esi, x15, x2, 0x0, 0xe19bfbea, 0xe19bfbc3, 0x0000004c, x4, 4, x5)

inst_77:
    // Test 77:  Test with dataset: sbox32
    // result rd:x16(0x707a11c0), rs1=>rd:x16(0x707af2c0), rs2:x1(0x00004d00), imm:0x1
    TEST_RI_OP(aes32esi, x16, x1, 0x1, 0x707a11c0, 0x707af2c0, 0x00004d00, x4, 8, x5)

inst_78:
    // Test 78:  Test with dataset: sbox32
    // result rd:x17(0xa452105b), rs1=>rd:x17(0xa47d105b), rs2:x31(0x004e0000), imm:0x2
    TEST_RI_OP(aes32esi, x17, x31, 0x2, 0xa452105b, 0xa47d105b, 0x004e0000, x4, 12, x5)

inst_79:
    // Test 79:  Test with dataset: sbox32
    // result rd:x18(0x961bcc23), rs1=>rd:x18(0x121bcc23), rs2:x30(0x4f000000), imm:0x3
    TEST_RI_OP(aes32esi, x18, x30, 0x3, 0x961bcc23, 0x121bcc23, 0x4f000000, x4, 16, x5)


    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with dataset: sbox32
    // result rd:x19(0xadea51c6), rs1=>rd:x19(0xadea5195), rs2:x29(0x00000050), imm:0x0
    TEST_RI_OP(aes32esi, x19, x29, 0x0, 0xadea51c6, 0xadea5195, 0x00000050, x1, 0, x2)

inst_81:
    // Test 81:  Test with dataset: sbox32
    // result rd:x20(0xd2ff6fc1), rs1=>rd:x20(0xd2ffbec1), rs2:x28(0x00005100), imm:0x1
    TEST_RI_OP(aes32esi, x20, x28, 0x1, 0xd2ff6fc1, 0xd2ffbec1, 0x00005100, x1, 4, x2)

inst_82:
    // Test 82:  Test with dataset: sbox32
    // result rd:x21(0xa8e1a8bb), rs1=>rd:x21(0xa8e1a8bb), rs2:x27(0x00520000), imm:0x2
    TEST_RI_OP(aes32esi, x21, x27, 0x2, 0xa8e1a8bb, 0xa8e1a8bb, 0x00520000, x1, 8, x2)

inst_83:
    // Test 83:  Test with dataset: sbox32
    // result rd:x22(0xa5c99fcb), rs1=>rd:x22(0x48c99fcb), rs2:x26(0x53000000), imm:0x3
    TEST_RI_OP(aes32esi, x22, x26, 0x3, 0xa5c99fcb, 0x48c99fcb, 0x53000000, x1, 12, x2)

inst_84:
    // Test 84:  Test with dataset: sbox32
    // result rd:x23(0x461d526f), rs1=>rd:x23(0x461d524f), rs2:x25(0x00000054), imm:0x0
    TEST_RI_OP(aes32esi, x23, x25, 0x0, 0x461d526f, 0x461d524f, 0x00000054, x1, 16, x2)


    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with dataset: sbox32
    // result rd:x24(0x0000a900), rs1=>rd:x24(0x528a10af), rs2:x24(0x00005500), imm:0x1
    TEST_RI_OP(aes32esi, x24, x24, 0x1, 0x0000a900, 0x528a10af, 0x00005500, x1, 0, x2)

inst_86:
    // Test 86:  Test with dataset: sbox32
    // result rd:x25(0xe12afbc3), rs1=>rd:x25(0xe19bfbc3), rs2:x23(0x00560000), imm:0x2
    TEST_RI_OP(aes32esi, x25, x23, 0x2, 0xe12afbc3, 0xe19bfbc3, 0x00560000, x1, 4, x2)

inst_87:
    // Test 87:  Test with dataset: sbox32
    // result rd:x26(0x2b7af2c0), rs1=>rd:x26(0x707af2c0), rs2:x22(0x57000000), imm:0x3
    TEST_RI_OP(aes32esi, x26, x22, 0x3, 0x2b7af2c0, 0x707af2c0, 0x57000000, x1, 8, x2)

inst_88:
    // Test 88:  Test with dataset: sbox32
    // result rd:x27(0xa47d1031), rs1=>rd:x27(0xa47d105b), rs2:x21(0x00000058), imm:0x0
    TEST_RI_OP(aes32esi, x27, x21, 0x0, 0xa47d1031, 0xa47d105b, 0x00000058, x1, 12, x2)

inst_89:
    // Test 89:  Test with dataset: sbox32
    // result rd:x28(0x121b0723), rs1=>rd:x28(0x121bcc23), rs2:x20(0x00005900), imm:0x1
    TEST_RI_OP(aes32esi, x28, x20, 0x1, 0x121b0723, 0x121bcc23, 0x00005900, x1, 16, x2)


    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with dataset: sbox32
    // result rd:x29(0xad545195), rs1=>rd:x29(0xadea5195), rs2:x19(0x005a0000), imm:0x2
    TEST_RI_OP(aes32esi, x29, x19, 0x2, 0xad545195, 0xadea5195, 0x005a0000, x4, 0, x5)

inst_91:
    // Test 91:  Test with dataset: sbox32
    // result rd:x30(0xebffbec1), rs1=>rd:x30(0xd2ffbec1), rs2:x18(0x5b000000), imm:0x3
    TEST_RI_OP(aes32esi, x30, x18, 0x3, 0xebffbec1, 0xd2ffbec1, 0x5b000000, x4, 4, x5)

inst_92:
    // Test 92:  Test with dataset: sbox32
    // result rd:x31(0xa8e1a8f1), rs1=>rd:x31(0xa8e1a8bb), rs2:x17(0x0000005c), imm:0x0
    TEST_RI_OP(aes32esi, x31, x17, 0x0, 0xa8e1a8f1, 0xa8e1a8bb, 0x0000005c, x4, 8, x5)

inst_93:
    // Test 93:  Test with dataset: sbox32
    // result rd:x1(0x48c9d3cb), rs1=>rd:x1(0x48c99fcb), rs2:x16(0x00005d00), imm:0x1
    TEST_RI_OP(aes32esi, x1, x16, 0x1, 0x48c9d3cb, 0x48c99fcb, 0x00005d00, x4, 12, x5)

inst_94:
    // Test 94:  Test with dataset: sbox32
    // result rd:x2(0x4645524f), rs1=>rd:x2(0x461d524f), rs2:x15(0x005e0000), imm:0x2
    TEST_RI_OP(aes32esi, x2, x15, 0x2, 0x4645524f, 0x461d524f, 0x005e0000, x4, 16, x5)


    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with dataset: sbox32
    // result rd:x3(0x9d8a10af), rs1=>rd:x3(0x528a10af), rs2:x14(0x5f000000), imm:0x3
    TEST_RI_OP(aes32esi, x3, x14, 0x3, 0x9d8a10af, 0x528a10af, 0x5f000000, x1, 0, x2)

inst_96:
    // Test 96:  Test with dataset: sbox32
    // result rd:x4(0xe19bfb13), rs1=>rd:x4(0xe19bfbc3), rs2:x13(0x00000060), imm:0x0
    TEST_RI_OP(aes32esi, x4, x13, 0x0, 0xe19bfb13, 0xe19bfbc3, 0x00000060, x1, 4, x2)

inst_97:
    // Test 97:  Test with dataset: sbox32
    // result rd:x5(0x707a1dc0), rs1=>rd:x5(0x707af2c0), rs2:x12(0x00006100), imm:0x1
    TEST_RI_OP(aes32esi, x5, x12, 0x1, 0x707a1dc0, 0x707af2c0, 0x00006100, x1, 8, x2)

inst_98:
    // Test 98:  Test with dataset: sbox32
    // result rd:x6(0xa4d7105b), rs1=>rd:x6(0xa47d105b), rs2:x11(0x00620000), imm:0x2
    TEST_RI_OP(aes32esi, x6, x11, 0x2, 0xa4d7105b, 0xa47d105b, 0x00620000, x1, 12, x2)

inst_99:
    // Test 99:  Test with dataset: sbox32
    // result rd:x7(0xe91bcc23), rs1=>rd:x7(0x121bcc23), rs2:x10(0x63000000), imm:0x3
    TEST_RI_OP(aes32esi, x7, x10, 0x3, 0xe91bcc23, 0x121bcc23, 0x63000000, x1, 16, x2)


    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with dataset: sbox32
    // result rd:x8(0xadea51d6), rs1=>rd:x8(0xadea5195), rs2:x9(0x00000064), imm:0x0
    TEST_RI_OP(aes32esi, x8, x9, 0x0, 0xadea51d6, 0xadea5195, 0x00000064, x1, 0, x2)

inst_101:
    // Test 101:  Test with dataset: sbox32
    // result rd:x9(0xd2fff3c1), rs1=>rd:x9(0xd2ffbec1), rs2:x8(0x00006500), imm:0x1
    TEST_RI_OP(aes32esi, x9, x8, 0x1, 0xd2fff3c1, 0xd2ffbec1, 0x00006500, x1, 4, x2)

inst_102:
    // Test 102:  Test with dataset: sbox32
    // result rd:x10(0xa8d2a8bb), rs1=>rd:x10(0xa8e1a8bb), rs2:x7(0x00660000), imm:0x2
    TEST_RI_OP(aes32esi, x10, x7, 0x2, 0xa8d2a8bb, 0xa8e1a8bb, 0x00660000, x1, 8, x2)

inst_103:
    // Test 103:  Test with dataset: sbox32
    // result rd:x11(0xcdc99fcb), rs1=>rd:x11(0x48c99fcb), rs2:x6(0x67000000), imm:0x3
    TEST_RI_OP(aes32esi, x11, x6, 0x3, 0xcdc99fcb, 0x48c99fcb, 0x67000000, x1, 12, x2)

inst_104:
    // Test 104:  Test with dataset: sbox32
    // result rd:x12(0x461d520a), rs1=>rd:x12(0x461d524f), rs2:x5(0x00000068), imm:0x0
    TEST_RI_OP(aes32esi, x12, x5, 0x0, 0x461d520a, 0x461d524f, 0x00000068, x1, 16, x2)


    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with dataset: sbox32
    // result rd:x13(0x528ae9af), rs1=>rd:x13(0x528a10af), rs2:x4(0x00006900), imm:0x1
    TEST_RI_OP(aes32esi, x13, x4, 0x1, 0x528ae9af, 0x528a10af, 0x00006900, x5, 0, x6)

inst_106:
    // Test 106:  Test with dataset: sbox32
    // result rd:x14(0xe199fbc3), rs1=>rd:x14(0xe19bfbc3), rs2:x3(0x006a0000), imm:0x2
    TEST_RI_OP(aes32esi, x14, x3, 0x2, 0xe199fbc3, 0xe19bfbc3, 0x006a0000, x5, 4, x6)

inst_107:
    // Test 107:  Test with dataset: sbox32
    // result rd:x15(0x0f7af2c0), rs1=>rd:x15(0x707af2c0), rs2:x2(0x6b000000), imm:0x3
    TEST_RI_OP(aes32esi, x15, x2, 0x3, 0x0f7af2c0, 0x707af2c0, 0x6b000000, x5, 8, x6)

inst_108:
    // Test 108:  Test with dataset: sbox32
    // result rd:x16(0xa47d100b), rs1=>rd:x16(0xa47d105b), rs2:x1(0x0000006c), imm:0x0
    TEST_RI_OP(aes32esi, x16, x1, 0x0, 0xa47d100b, 0xa47d105b, 0x0000006c, x5, 12, x6)

inst_109:
    // Test 109:  Test with dataset: sbox32
    // result rd:x17(0x121bf023), rs1=>rd:x17(0x121bcc23), rs2:x31(0x00006d00), imm:0x1
    TEST_RI_OP(aes32esi, x17, x31, 0x1, 0x121bf023, 0x121bcc23, 0x00006d00, x5, 16, x6)


    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with dataset: sbox32
    // result rd:x18(0xad755195), rs1=>rd:x18(0xadea5195), rs2:x30(0x006e0000), imm:0x2
    TEST_RI_OP(aes32esi, x18, x30, 0x2, 0xad755195, 0xadea5195, 0x006e0000, x1, 0, x2)

inst_111:
    // Test 111:  Test with dataset: sbox32
    // result rd:x19(0x7affbec1), rs1=>rd:x19(0xd2ffbec1), rs2:x29(0x6f000000), imm:0x3
    TEST_RI_OP(aes32esi, x19, x29, 0x3, 0x7affbec1, 0xd2ffbec1, 0x6f000000, x1, 4, x2)

inst_112:
    // Test 112:  Test with dataset: sbox32
    // result rd:x20(0xa8e1a8ea), rs1=>rd:x20(0xa8e1a8bb), rs2:x28(0x00000070), imm:0x0
    TEST_RI_OP(aes32esi, x20, x28, 0x0, 0xa8e1a8ea, 0xa8e1a8bb, 0x00000070, x1, 8, x2)

inst_113:
    // Test 113:  Test with dataset: sbox32
    // result rd:x21(0x48c93ccb), rs1=>rd:x21(0x48c99fcb), rs2:x27(0x00007100), imm:0x1
    TEST_RI_OP(aes32esi, x21, x27, 0x1, 0x48c93ccb, 0x48c99fcb, 0x00007100, x1, 12, x2)

inst_114:
    // Test 114:  Test with dataset: sbox32
    // result rd:x22(0x465d524f), rs1=>rd:x22(0x461d524f), rs2:x26(0x00720000), imm:0x2
    TEST_RI_OP(aes32esi, x22, x26, 0x2, 0x465d524f, 0x461d524f, 0x00720000, x1, 16, x2)


    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with dataset: sbox32
    // result rd:x23(0xdd8a10af), rs1=>rd:x23(0x528a10af), rs2:x25(0x73000000), imm:0x3
    TEST_RI_OP(aes32esi, x23, x25, 0x3, 0xdd8a10af, 0x528a10af, 0x73000000, x1, 0, x2)

inst_116:
    // Test 116:  Test with dataset: sbox32
    // result rd:x24(0x000000e6), rs1=>rd:x24(0xe19bfbc3), rs2:x24(0x00000074), imm:0x0
    TEST_RI_OP(aes32esi, x24, x24, 0x0, 0x000000e6, 0xe19bfbc3, 0x00000074, x1, 4, x2)

inst_117:
    // Test 117:  Test with dataset: sbox32
    // result rd:x25(0x707a6fc0), rs1=>rd:x25(0x707af2c0), rs2:x23(0x00007500), imm:0x1
    TEST_RI_OP(aes32esi, x25, x23, 0x1, 0x707a6fc0, 0x707af2c0, 0x00007500, x1, 8, x2)

inst_118:
    // Test 118:  Test with dataset: sbox32
    // result rd:x26(0xa445105b), rs1=>rd:x26(0xa47d105b), rs2:x22(0x00760000), imm:0x2
    TEST_RI_OP(aes32esi, x26, x22, 0x2, 0xa445105b, 0xa47d105b, 0x00760000, x1, 12, x2)

inst_119:
    // Test 119:  Test with dataset: sbox32
    // result rd:x27(0xe71bcc23), rs1=>rd:x27(0x121bcc23), rs2:x21(0x77000000), imm:0x3
    TEST_RI_OP(aes32esi, x27, x21, 0x3, 0xe71bcc23, 0x121bcc23, 0x77000000, x1, 16, x2)


    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with dataset: sbox32
    // result rd:x28(0xadea5129), rs1=>rd:x28(0xadea5195), rs2:x20(0x00000078), imm:0x0
    TEST_RI_OP(aes32esi, x28, x20, 0x0, 0xadea5129, 0xadea5195, 0x00000078, x5, 0, x6)

inst_121:
    // Test 121:  Test with dataset: sbox32
    // result rd:x29(0xd2ff08c1), rs1=>rd:x29(0xd2ffbec1), rs2:x19(0x00007900), imm:0x1
    TEST_RI_OP(aes32esi, x29, x19, 0x1, 0xd2ff08c1, 0xd2ffbec1, 0x00007900, x5, 4, x6)

inst_122:
    // Test 122:  Test with dataset: sbox32
    // result rd:x30(0xa83ba8bb), rs1=>rd:x30(0xa8e1a8bb), rs2:x18(0x007a0000), imm:0x2
    TEST_RI_OP(aes32esi, x30, x18, 0x2, 0xa83ba8bb, 0xa8e1a8bb, 0x007a0000, x5, 8, x6)

inst_123:
    // Test 123:  Test with dataset: sbox32
    // result rd:x31(0x69c99fcb), rs1=>rd:x31(0x48c99fcb), rs2:x17(0x7b000000), imm:0x3
    TEST_RI_OP(aes32esi, x31, x17, 0x3, 0x69c99fcb, 0x48c99fcb, 0x7b000000, x5, 12, x6)

inst_124:
    // Test 124:  Test with dataset: sbox32
    // result rd:x1(0x461d525f), rs1=>rd:x1(0x461d524f), rs2:x16(0x0000007c), imm:0x0
    TEST_RI_OP(aes32esi, x1, x16, 0x0, 0x461d525f, 0x461d524f, 0x0000007c, x5, 16, x6)


    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with dataset: sbox32
    // result rd:x2(0x528aefaf), rs1=>rd:x2(0x528a10af), rs2:x15(0x00007d00), imm:0x1
    TEST_RI_OP(aes32esi, x2, x15, 0x1, 0x528aefaf, 0x528a10af, 0x00007d00, x1, 0, x7)

inst_126:
    // Test 126:  Test with dataset: sbox32
    // result rd:x3(0xe168fbc3), rs1=>rd:x3(0xe19bfbc3), rs2:x14(0x007e0000), imm:0x2
    TEST_RI_OP(aes32esi, x3, x14, 0x2, 0xe168fbc3, 0xe19bfbc3, 0x007e0000, x1, 4, x7)

inst_127:
    // Test 127:  Test with dataset: sbox32
    // result rd:x4(0xa27af2c0), rs1=>rd:x4(0x707af2c0), rs2:x13(0x7f000000), imm:0x3
    TEST_RI_OP(aes32esi, x4, x13, 0x3, 0xa27af2c0, 0x707af2c0, 0x7f000000, x1, 8, x7)

inst_128:
    // Test 128:  Test with dataset: sbox32
    // result rd:x5(0xa47d1096), rs1=>rd:x5(0xa47d105b), rs2:x12(0x00000080), imm:0x0
    TEST_RI_OP(aes32esi, x5, x12, 0x0, 0xa47d1096, 0xa47d105b, 0x00000080, x1, 12, x7)

inst_129:
    // Test 129:  Test with dataset: sbox32
    // result rd:x6(0x121bc023), rs1=>rd:x6(0x121bcc23), rs2:x11(0x00008100), imm:0x1
    TEST_RI_OP(aes32esi, x6, x11, 0x1, 0x121bc023, 0x121bcc23, 0x00008100, x1, 16, x7)


    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with dataset: sbox32
    // result rd:x7(0xadf95195), rs1=>rd:x7(0xadea5195), rs2:x10(0x00820000), imm:0x2
    TEST_RI_OP(aes32esi, x7, x10, 0x2, 0xadf95195, 0xadea5195, 0x00820000, x1, 0, x2)

inst_131:
    // Test 131:  Test with dataset: sbox32
    // result rd:x8(0x3effbec1), rs1=>rd:x8(0xd2ffbec1), rs2:x9(0x83000000), imm:0x3
    TEST_RI_OP(aes32esi, x8, x9, 0x3, 0x3effbec1, 0xd2ffbec1, 0x83000000, x1, 4, x2)

inst_132:
    // Test 132:  Test with dataset: sbox32
    // result rd:x9(0xa8e1a8e4), rs1=>rd:x9(0xa8e1a8bb), rs2:x8(0x00000084), imm:0x0
    TEST_RI_OP(aes32esi, x9, x8, 0x0, 0xa8e1a8e4, 0xa8e1a8bb, 0x00000084, x1, 8, x2)

inst_133:
    // Test 133:  Test with dataset: sbox32
    // result rd:x10(0x48c908cb), rs1=>rd:x10(0x48c99fcb), rs2:x7(0x00008500), imm:0x1
    TEST_RI_OP(aes32esi, x10, x7, 0x1, 0x48c908cb, 0x48c99fcb, 0x00008500, x1, 12, x2)

inst_134:
    // Test 134:  Test with dataset: sbox32
    // result rd:x11(0x4659524f), rs1=>rd:x11(0x461d524f), rs2:x6(0x00860000), imm:0x2
    TEST_RI_OP(aes32esi, x11, x6, 0x2, 0x4659524f, 0x461d524f, 0x00860000, x1, 16, x2)


    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with dataset: sbox32
    // result rd:x12(0x458a10af), rs1=>rd:x12(0x528a10af), rs2:x5(0x87000000), imm:0x3
    TEST_RI_OP(aes32esi, x12, x5, 0x3, 0x458a10af, 0x528a10af, 0x87000000, x6, 0, x7)

inst_136:
    // Test 136:  Test with dataset: sbox32
    // result rd:x13(0xe19bfb07), rs1=>rd:x13(0xe19bfbc3), rs2:x4(0x00000088), imm:0x0
    TEST_RI_OP(aes32esi, x13, x4, 0x0, 0xe19bfb07, 0xe19bfbc3, 0x00000088, x6, 4, x7)

inst_137:
    // Test 137:  Test with dataset: sbox32
    // result rd:x14(0x707a55c0), rs1=>rd:x14(0x707af2c0), rs2:x3(0x00008900), imm:0x1
    TEST_RI_OP(aes32esi, x14, x3, 0x1, 0x707a55c0, 0x707af2c0, 0x00008900, x6, 8, x7)

inst_138:
    // Test 138:  Test with dataset: sbox32
    // result rd:x15(0xa403105b), rs1=>rd:x15(0xa47d105b), rs2:x2(0x008a0000), imm:0x2
    TEST_RI_OP(aes32esi, x15, x2, 0x2, 0xa403105b, 0xa47d105b, 0x008a0000, x6, 12, x7)

inst_139:
    // Test 139:  Test with dataset: sbox32
    // result rd:x16(0x2f1bcc23), rs1=>rd:x16(0x121bcc23), rs2:x1(0x8b000000), imm:0x3
    TEST_RI_OP(aes32esi, x16, x1, 0x3, 0x2f1bcc23, 0x121bcc23, 0x8b000000, x6, 16, x7)


    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with dataset: sbox32
    // result rd:x17(0xadea51f1), rs1=>rd:x17(0xadea5195), rs2:x31(0x0000008c), imm:0x0
    TEST_RI_OP(aes32esi, x17, x31, 0x0, 0xadea51f1, 0xadea5195, 0x0000008c, x1, 0, x2)

inst_141:
    // Test 141:  Test with dataset: sbox32
    // result rd:x18(0xd2ffe3c1), rs1=>rd:x18(0xd2ffbec1), rs2:x30(0x00008d00), imm:0x1
    TEST_RI_OP(aes32esi, x18, x30, 0x1, 0xd2ffe3c1, 0xd2ffbec1, 0x00008d00, x1, 4, x2)

inst_142:
    // Test 142:  Test with dataset: sbox32
    // result rd:x19(0xa8f8a8bb), rs1=>rd:x19(0xa8e1a8bb), rs2:x29(0x008e0000), imm:0x2
    TEST_RI_OP(aes32esi, x19, x29, 0x2, 0xa8f8a8bb, 0xa8e1a8bb, 0x008e0000, x1, 8, x2)

inst_143:
    // Test 143:  Test with dataset: sbox32
    // result rd:x20(0x3bc99fcb), rs1=>rd:x20(0x48c99fcb), rs2:x28(0x8f000000), imm:0x3
    TEST_RI_OP(aes32esi, x20, x28, 0x3, 0x3bc99fcb, 0x48c99fcb, 0x8f000000, x1, 12, x2)

inst_144:
    // Test 144:  Test with dataset: sbox32
    // result rd:x21(0x461d522f), rs1=>rd:x21(0x461d524f), rs2:x27(0x00000090), imm:0x0
    TEST_RI_OP(aes32esi, x21, x27, 0x0, 0x461d522f, 0x461d524f, 0x00000090, x1, 16, x2)


    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with dataset: sbox32
    // result rd:x22(0x528a91af), rs1=>rd:x22(0x528a10af), rs2:x26(0x00009100), imm:0x1
    TEST_RI_OP(aes32esi, x22, x26, 0x1, 0x528a91af, 0x528a10af, 0x00009100, x1, 0, x2)

inst_146:
    // Test 146:  Test with dataset: sbox32
    // result rd:x23(0xe1d4fbc3), rs1=>rd:x23(0xe19bfbc3), rs2:x25(0x00920000), imm:0x2
    TEST_RI_OP(aes32esi, x23, x25, 0x2, 0xe1d4fbc3, 0xe19bfbc3, 0x00920000, x1, 4, x2)

inst_147:
    // Test 147:  Test with dataset: sbox32
    // result rd:x24(0x4f000000), rs1=>rd:x24(0x707af2c0), rs2:x24(0x93000000), imm:0x3
    TEST_RI_OP(aes32esi, x24, x24, 0x3, 0x4f000000, 0x707af2c0, 0x93000000, x1, 8, x2)

inst_148:
    // Test 148:  Test with dataset: sbox32
    // result rd:x25(0xa47d1079), rs1=>rd:x25(0xa47d105b), rs2:x23(0x00000094), imm:0x0
    TEST_RI_OP(aes32esi, x25, x23, 0x0, 0xa47d1079, 0xa47d105b, 0x00000094, x1, 12, x2)

inst_149:
    // Test 149:  Test with dataset: sbox32
    // result rd:x26(0x121be623), rs1=>rd:x26(0x121bcc23), rs2:x22(0x00009500), imm:0x1
    TEST_RI_OP(aes32esi, x26, x22, 0x1, 0x121be623, 0x121bcc23, 0x00009500, x1, 16, x2)


    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with dataset: sbox32
    // result rd:x27(0xad7a5195), rs1=>rd:x27(0xadea5195), rs2:x21(0x00960000), imm:0x2
    TEST_RI_OP(aes32esi, x27, x21, 0x2, 0xad7a5195, 0xadea5195, 0x00960000, x6, 0, x7)

inst_151:
    // Test 151:  Test with dataset: sbox32
    // result rd:x28(0x5affbec1), rs1=>rd:x28(0xd2ffbec1), rs2:x20(0x97000000), imm:0x3
    TEST_RI_OP(aes32esi, x28, x20, 0x3, 0x5affbec1, 0xd2ffbec1, 0x97000000, x6, 4, x7)

inst_152:
    // Test 152:  Test with dataset: sbox32
    // result rd:x29(0xa8e1a8fd), rs1=>rd:x29(0xa8e1a8bb), rs2:x19(0x00000098), imm:0x0
    TEST_RI_OP(aes32esi, x29, x19, 0x0, 0xa8e1a8fd, 0xa8e1a8bb, 0x00000098, x6, 8, x7)

inst_153:
    // Test 153:  Test with dataset: sbox32
    // result rd:x30(0x48c971cb), rs1=>rd:x30(0x48c99fcb), rs2:x18(0x00009900), imm:0x1
    TEST_RI_OP(aes32esi, x30, x18, 0x1, 0x48c971cb, 0x48c99fcb, 0x00009900, x6, 12, x7)

inst_154:
    // Test 154:  Test with dataset: sbox32
    // result rd:x31(0x46a5524f), rs1=>rd:x31(0x461d524f), rs2:x17(0x009a0000), imm:0x2
    TEST_RI_OP(aes32esi, x31, x17, 0x2, 0x46a5524f, 0x461d524f, 0x009a0000, x6, 16, x7)


    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with dataset: sbox32
    // result rd:x1(0x468a10af), rs1=>rd:x1(0x528a10af), rs2:x16(0x9b000000), imm:0x3
    TEST_RI_OP(aes32esi, x1, x16, 0x3, 0x468a10af, 0x528a10af, 0x9b000000, x6, 0, x7)

inst_156:
    // Test 156:  Test with dataset: sbox32
    // result rd:x2(0xe19bfb1d), rs1=>rd:x2(0xe19bfbc3), rs2:x15(0x0000009c), imm:0x0
    TEST_RI_OP(aes32esi, x2, x15, 0x0, 0xe19bfb1d, 0xe19bfbc3, 0x0000009c, x6, 4, x7)

inst_157:
    // Test 157:  Test with dataset: sbox32
    // result rd:x3(0x707aacc0), rs1=>rd:x3(0x707af2c0), rs2:x14(0x00009d00), imm:0x1
    TEST_RI_OP(aes32esi, x3, x14, 0x1, 0x707aacc0, 0x707af2c0, 0x00009d00, x6, 8, x7)

inst_158:
    // Test 158:  Test with dataset: sbox32
    // result rd:x4(0xa476105b), rs1=>rd:x4(0xa47d105b), rs2:x13(0x009e0000), imm:0x2
    TEST_RI_OP(aes32esi, x4, x13, 0x2, 0xa476105b, 0xa47d105b, 0x009e0000, x6, 12, x7)

inst_159:
    // Test 159:  Test with dataset: sbox32
    // result rd:x5(0xc91bcc23), rs1=>rd:x5(0x121bcc23), rs2:x12(0x9f000000), imm:0x3
    TEST_RI_OP(aes32esi, x5, x12, 0x3, 0xc91bcc23, 0x121bcc23, 0x9f000000, x6, 16, x7)


    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with dataset: sbox32
    // result rd:x6(0xadea5175), rs1=>rd:x6(0xadea5195), rs2:x11(0x000000a0), imm:0x0
    TEST_RI_OP(aes32esi, x6, x11, 0x0, 0xadea5175, 0xadea5195, 0x000000a0, x1, 0, x2)

inst_161:
    // Test 161:  Test with dataset: sbox32
    // result rd:x7(0xd2ff8cc1), rs1=>rd:x7(0xd2ffbec1), rs2:x10(0x0000a100), imm:0x1
    TEST_RI_OP(aes32esi, x7, x10, 0x1, 0xd2ff8cc1, 0xd2ffbec1, 0x0000a100, x1, 4, x2)

inst_162:
    // Test 162:  Test with dataset: sbox32
    // result rd:x8(0xa8dba8bb), rs1=>rd:x8(0xa8e1a8bb), rs2:x9(0x00a20000), imm:0x2
    TEST_RI_OP(aes32esi, x8, x9, 0x2, 0xa8dba8bb, 0xa8e1a8bb, 0x00a20000, x1, 8, x2)

inst_163:
    // Test 163:  Test with dataset: sbox32
    // result rd:x9(0x42c99fcb), rs1=>rd:x9(0x48c99fcb), rs2:x8(0xa3000000), imm:0x3
    TEST_RI_OP(aes32esi, x9, x8, 0x3, 0x42c99fcb, 0x48c99fcb, 0xa3000000, x1, 12, x2)

inst_164:
    // Test 164:  Test with dataset: sbox32
    // result rd:x10(0x461d5206), rs1=>rd:x10(0x461d524f), rs2:x7(0x000000a4), imm:0x0
    TEST_RI_OP(aes32esi, x10, x7, 0x0, 0x461d5206, 0x461d524f, 0x000000a4, x1, 16, x2)


    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with dataset: sbox32
    // result rd:x11(0x528a16af), rs1=>rd:x11(0x528a10af), rs2:x6(0x0000a500), imm:0x1
    TEST_RI_OP(aes32esi, x11, x6, 0x1, 0x528a16af, 0x528a10af, 0x0000a500, x1, 0, x7)

inst_166:
    // Test 166:  Test with dataset: sbox32
    // result rd:x12(0xe1bffbc3), rs1=>rd:x12(0xe19bfbc3), rs2:x5(0x00a60000), imm:0x2
    TEST_RI_OP(aes32esi, x12, x5, 0x2, 0xe1bffbc3, 0xe19bfbc3, 0x00a60000, x1, 4, x7)

inst_167:
    // Test 167:  Test with dataset: sbox32
    // result rd:x13(0x2c7af2c0), rs1=>rd:x13(0x707af2c0), rs2:x4(0xa7000000), imm:0x3
    TEST_RI_OP(aes32esi, x13, x4, 0x3, 0x2c7af2c0, 0x707af2c0, 0xa7000000, x1, 8, x7)

inst_168:
    // Test 168:  Test with dataset: sbox32
    // result rd:x14(0xa47d1099), rs1=>rd:x14(0xa47d105b), rs2:x3(0x000000a8), imm:0x0
    TEST_RI_OP(aes32esi, x14, x3, 0x0, 0xa47d1099, 0xa47d105b, 0x000000a8, x1, 12, x7)

inst_169:
    // Test 169:  Test with dataset: sbox32
    // result rd:x15(0x121b1f23), rs1=>rd:x15(0x121bcc23), rs2:x2(0x0000a900), imm:0x1
    TEST_RI_OP(aes32esi, x15, x2, 0x1, 0x121b1f23, 0x121bcc23, 0x0000a900, x1, 16, x7)


    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with dataset: sbox32
    // result rd:x16(0xad465195), rs1=>rd:x16(0xadea5195), rs2:x1(0x00aa0000), imm:0x2
    TEST_RI_OP(aes32esi, x16, x1, 0x2, 0xad465195, 0xadea5195, 0x00aa0000, x2, 0, x3)

inst_171:
    // Test 171:  Test with dataset: sbox32
    // result rd:x17(0xb0ffbec1), rs1=>rd:x17(0xd2ffbec1), rs2:x31(0xab000000), imm:0x3
    TEST_RI_OP(aes32esi, x17, x31, 0x3, 0xb0ffbec1, 0xd2ffbec1, 0xab000000, x2, 4, x3)

inst_172:
    // Test 172:  Test with dataset: sbox32
    // result rd:x18(0xa8e1a82a), rs1=>rd:x18(0xa8e1a8bb), rs2:x30(0x000000ac), imm:0x0
    TEST_RI_OP(aes32esi, x18, x30, 0x0, 0xa8e1a82a, 0xa8e1a8bb, 0x000000ac, x2, 8, x3)

inst_173:
    // Test 173:  Test with dataset: sbox32
    // result rd:x19(0x48c90acb), rs1=>rd:x19(0x48c99fcb), rs2:x29(0x0000ad00), imm:0x1
    TEST_RI_OP(aes32esi, x19, x29, 0x1, 0x48c90acb, 0x48c99fcb, 0x0000ad00, x2, 12, x3)

inst_174:
    // Test 174:  Test with dataset: sbox32
    // result rd:x20(0x46f9524f), rs1=>rd:x20(0x461d524f), rs2:x28(0x00ae0000), imm:0x2
    TEST_RI_OP(aes32esi, x20, x28, 0x2, 0x46f9524f, 0x461d524f, 0x00ae0000, x2, 16, x3)


    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with dataset: sbox32
    // result rd:x21(0x2b8a10af), rs1=>rd:x21(0x528a10af), rs2:x27(0xaf000000), imm:0x3
    TEST_RI_OP(aes32esi, x21, x27, 0x3, 0x2b8a10af, 0x528a10af, 0xaf000000, x1, 0, x2)

inst_176:
    // Test 176:  Test with dataset: sbox32
    // result rd:x22(0xe19bfb24), rs1=>rd:x22(0xe19bfbc3), rs2:x26(0x000000b0), imm:0x0
    TEST_RI_OP(aes32esi, x22, x26, 0x0, 0xe19bfb24, 0xe19bfbc3, 0x000000b0, x1, 4, x2)

inst_177:
    // Test 177:  Test with dataset: sbox32
    // result rd:x23(0x707a3ac0), rs1=>rd:x23(0x707af2c0), rs2:x25(0x0000b100), imm:0x1
    TEST_RI_OP(aes32esi, x23, x25, 0x1, 0x707a3ac0, 0x707af2c0, 0x0000b100, x1, 8, x2)

inst_178:
    // Test 178:  Test with dataset: sbox32
    // result rd:x24(0x00850000), rs1=>rd:x24(0xa47d105b), rs2:x24(0x00b20000), imm:0x2
    TEST_RI_OP(aes32esi, x24, x24, 0x2, 0x00850000, 0xa47d105b, 0x00b20000, x1, 12, x2)

inst_179:
    // Test 179:  Test with dataset: sbox32
    // result rd:x25(0x7f1bcc23), rs1=>rd:x25(0x121bcc23), rs2:x23(0xb3000000), imm:0x3
    TEST_RI_OP(aes32esi, x25, x23, 0x3, 0x7f1bcc23, 0x121bcc23, 0xb3000000, x1, 16, x2)


    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with dataset: sbox32
    // result rd:x26(0xadea5118), rs1=>rd:x26(0xadea5195), rs2:x22(0x000000b4), imm:0x0
    TEST_RI_OP(aes32esi, x26, x22, 0x0, 0xadea5118, 0xadea5195, 0x000000b4, x1, 0, x7)

inst_181:
    // Test 181:  Test with dataset: sbox32
    // result rd:x27(0xd2ff6bc1), rs1=>rd:x27(0xd2ffbec1), rs2:x21(0x0000b500), imm:0x1
    TEST_RI_OP(aes32esi, x27, x21, 0x1, 0xd2ff6bc1, 0xd2ffbec1, 0x0000b500, x1, 4, x7)

inst_182:
    // Test 182:  Test with dataset: sbox32
    // result rd:x28(0xa8afa8bb), rs1=>rd:x28(0xa8e1a8bb), rs2:x20(0x00b60000), imm:0x2
    TEST_RI_OP(aes32esi, x28, x20, 0x2, 0xa8afa8bb, 0xa8e1a8bb, 0x00b60000, x1, 8, x7)

inst_183:
    // Test 183:  Test with dataset: sbox32
    // result rd:x29(0xe1c99fcb), rs1=>rd:x29(0x48c99fcb), rs2:x19(0xb7000000), imm:0x3
    TEST_RI_OP(aes32esi, x29, x19, 0x3, 0xe1c99fcb, 0x48c99fcb, 0xb7000000, x1, 12, x7)

inst_184:
    // Test 184:  Test with dataset: sbox32
    // result rd:x30(0x461d5223), rs1=>rd:x30(0x461d524f), rs2:x18(0x000000b8), imm:0x0
    TEST_RI_OP(aes32esi, x30, x18, 0x0, 0x461d5223, 0x461d524f, 0x000000b8, x1, 16, x7)


    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with dataset: sbox32
    // result rd:x31(0x528a46af), rs1=>rd:x31(0x528a10af), rs2:x17(0x0000b900), imm:0x1
    TEST_RI_OP(aes32esi, x31, x17, 0x1, 0x528a46af, 0x528a10af, 0x0000b900, x5, 0, x6)

inst_186:
    // Test 186:  Test with dataset: sbox32
    // result rd:x1(0xe16ffbc3), rs1=>rd:x1(0xe19bfbc3), rs2:x16(0x00ba0000), imm:0x2
    TEST_RI_OP(aes32esi, x1, x16, 0x2, 0xe16ffbc3, 0xe19bfbc3, 0x00ba0000, x5, 4, x6)

inst_187:
    // Test 187:  Test with dataset: sbox32
    // result rd:x2(0x9a7af2c0), rs1=>rd:x2(0x707af2c0), rs2:x15(0xbb000000), imm:0x3
    TEST_RI_OP(aes32esi, x2, x15, 0x3, 0x9a7af2c0, 0x707af2c0, 0xbb000000, x5, 8, x6)

inst_188:
    // Test 188:  Test with dataset: sbox32
    // result rd:x3(0xa47d103e), rs1=>rd:x3(0xa47d105b), rs2:x14(0x000000bc), imm:0x0
    TEST_RI_OP(aes32esi, x3, x14, 0x0, 0xa47d103e, 0xa47d105b, 0x000000bc, x5, 12, x6)

inst_189:
    // Test 189:  Test with dataset: sbox32
    // result rd:x4(0x121bb623), rs1=>rd:x4(0x121bcc23), rs2:x13(0x0000bd00), imm:0x1
    TEST_RI_OP(aes32esi, x4, x13, 0x1, 0x121bb623, 0x121bcc23, 0x0000bd00, x5, 16, x6)


    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with dataset: sbox32
    // result rd:x5(0xad445195), rs1=>rd:x5(0xadea5195), rs2:x12(0x00be0000), imm:0x2
    TEST_RI_OP(aes32esi, x5, x12, 0x2, 0xad445195, 0xadea5195, 0x00be0000, x1, 0, x2)

inst_191:
    // Test 191:  Test with dataset: sbox32
    // result rd:x6(0xdaffbec1), rs1=>rd:x6(0xd2ffbec1), rs2:x11(0xbf000000), imm:0x3
    TEST_RI_OP(aes32esi, x6, x11, 0x3, 0xdaffbec1, 0xd2ffbec1, 0xbf000000, x1, 4, x2)

inst_192:
    // Test 192:  Test with dataset: sbox32
    // result rd:x7(0xa8e1a801), rs1=>rd:x7(0xa8e1a8bb), rs2:x10(0x000000c0), imm:0x0
    TEST_RI_OP(aes32esi, x7, x10, 0x0, 0xa8e1a801, 0xa8e1a8bb, 0x000000c0, x1, 8, x2)

inst_193:
    // Test 193:  Test with dataset: sbox32
    // result rd:x8(0x48c9e7cb), rs1=>rd:x8(0x48c99fcb), rs2:x9(0x0000c100), imm:0x1
    TEST_RI_OP(aes32esi, x8, x9, 0x1, 0x48c9e7cb, 0x48c99fcb, 0x0000c100, x1, 12, x2)

inst_194:
    // Test 194:  Test with dataset: sbox32
    // result rd:x9(0x4638524f), rs1=>rd:x9(0x461d524f), rs2:x8(0x00c20000), imm:0x2
    TEST_RI_OP(aes32esi, x9, x8, 0x2, 0x4638524f, 0x461d524f, 0x00c20000, x1, 16, x2)


    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with dataset: sbox32
    // result rd:x10(0x7c8a10af), rs1=>rd:x10(0x528a10af), rs2:x7(0xc3000000), imm:0x3
    TEST_RI_OP(aes32esi, x10, x7, 0x3, 0x7c8a10af, 0x528a10af, 0xc3000000, x1, 0, x2)

inst_196:
    // Test 196:  Test with dataset: sbox32
    // result rd:x11(0xe19bfbdf), rs1=>rd:x11(0xe19bfbc3), rs2:x6(0x000000c4), imm:0x0
    TEST_RI_OP(aes32esi, x11, x6, 0x0, 0xe19bfbdf, 0xe19bfbc3, 0x000000c4, x1, 4, x2)

inst_197:
    // Test 197:  Test with dataset: sbox32
    // result rd:x12(0x707a54c0), rs1=>rd:x12(0x707af2c0), rs2:x5(0x0000c500), imm:0x1
    TEST_RI_OP(aes32esi, x12, x5, 0x1, 0x707a54c0, 0x707af2c0, 0x0000c500, x1, 8, x2)

inst_198:
    // Test 198:  Test with dataset: sbox32
    // result rd:x13(0xa4c9105b), rs1=>rd:x13(0xa47d105b), rs2:x4(0x00c60000), imm:0x2
    TEST_RI_OP(aes32esi, x13, x4, 0x2, 0xa4c9105b, 0xa47d105b, 0x00c60000, x1, 12, x2)

inst_199:
    // Test 199:  Test with dataset: sbox32
    // result rd:x14(0xd41bcc23), rs1=>rd:x14(0x121bcc23), rs2:x3(0xc7000000), imm:0x3
    TEST_RI_OP(aes32esi, x14, x3, 0x3, 0xd41bcc23, 0x121bcc23, 0xc7000000, x1, 16, x2)


    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with dataset: sbox32
    // result rd:x15(0xadea517d), rs1=>rd:x15(0xadea5195), rs2:x2(0x000000c8), imm:0x0
    TEST_RI_OP(aes32esi, x15, x2, 0x0, 0xadea517d, 0xadea5195, 0x000000c8, x3, 0, x4)

inst_201:
    // Test 201:  Test with dataset: sbox32
    // result rd:x16(0xd2ff63c1), rs1=>rd:x16(0xd2ffbec1), rs2:x1(0x0000c900), imm:0x1
    TEST_RI_OP(aes32esi, x16, x1, 0x1, 0xd2ff63c1, 0xd2ffbec1, 0x0000c900, x3, 4, x4)

inst_202:
    // Test 202:  Test with dataset: sbox32
    // result rd:x17(0xa895a8bb), rs1=>rd:x17(0xa8e1a8bb), rs2:x31(0x00ca0000), imm:0x2
    TEST_RI_OP(aes32esi, x17, x31, 0x2, 0xa895a8bb, 0xa8e1a8bb, 0x00ca0000, x3, 8, x4)

inst_203:
    // Test 203:  Test with dataset: sbox32
    // result rd:x18(0x57c99fcb), rs1=>rd:x18(0x48c99fcb), rs2:x30(0xcb000000), imm:0x3
    TEST_RI_OP(aes32esi, x18, x30, 0x3, 0x57c99fcb, 0x48c99fcb, 0xcb000000, x3, 12, x4)

inst_204:
    // Test 204:  Test with dataset: sbox32
    // result rd:x19(0x461d5204), rs1=>rd:x19(0x461d524f), rs2:x29(0x000000cc), imm:0x0
    TEST_RI_OP(aes32esi, x19, x29, 0x0, 0x461d5204, 0x461d524f, 0x000000cc, x3, 16, x4)


    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with dataset: sbox32
    // result rd:x20(0x528aadaf), rs1=>rd:x20(0x528a10af), rs2:x28(0x0000cd00), imm:0x1
    TEST_RI_OP(aes32esi, x20, x28, 0x1, 0x528aadaf, 0x528a10af, 0x0000cd00, x1, 0, x2)

inst_206:
    // Test 206:  Test with dataset: sbox32
    // result rd:x21(0xe110fbc3), rs1=>rd:x21(0xe19bfbc3), rs2:x27(0x00ce0000), imm:0x2
    TEST_RI_OP(aes32esi, x21, x27, 0x2, 0xe110fbc3, 0xe19bfbc3, 0x00ce0000, x1, 4, x2)

inst_207:
    // Test 207:  Test with dataset: sbox32
    // result rd:x22(0xfa7af2c0), rs1=>rd:x22(0x707af2c0), rs2:x26(0xcf000000), imm:0x3
    TEST_RI_OP(aes32esi, x22, x26, 0x3, 0xfa7af2c0, 0x707af2c0, 0xcf000000, x1, 8, x2)

inst_208:
    // Test 208:  Test with dataset: sbox32
    // result rd:x23(0xa47d102b), rs1=>rd:x23(0xa47d105b), rs2:x25(0x000000d0), imm:0x0
    TEST_RI_OP(aes32esi, x23, x25, 0x0, 0xa47d102b, 0xa47d105b, 0x000000d0, x1, 12, x2)

inst_209:
    // Test 209:  Test with dataset: sbox32
    // result rd:x24(0x0000ef00), rs1=>rd:x24(0x121bcc23), rs2:x24(0x0000d100), imm:0x1
    TEST_RI_OP(aes32esi, x24, x24, 0x1, 0x0000ef00, 0x121bcc23, 0x0000d100, x1, 16, x2)


    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with dataset: sbox32
    // result rd:x25(0xad5f5195), rs1=>rd:x25(0xadea5195), rs2:x23(0x00d20000), imm:0x2
    TEST_RI_OP(aes32esi, x25, x23, 0x2, 0xad5f5195, 0xadea5195, 0x00d20000, x1, 0, x2)

inst_211:
    // Test 211:  Test with dataset: sbox32
    // result rd:x26(0xb4ffbec1), rs1=>rd:x26(0xd2ffbec1), rs2:x22(0xd3000000), imm:0x3
    TEST_RI_OP(aes32esi, x26, x22, 0x3, 0xb4ffbec1, 0xd2ffbec1, 0xd3000000, x1, 4, x2)

inst_212:
    // Test 212:  Test with dataset: sbox32
    // result rd:x27(0xa8e1a8f3), rs1=>rd:x27(0xa8e1a8bb), rs2:x21(0x000000d4), imm:0x0
    TEST_RI_OP(aes32esi, x27, x21, 0x0, 0xa8e1a8f3, 0xa8e1a8bb, 0x000000d4, x1, 8, x2)

inst_213:
    // Test 213:  Test with dataset: sbox32
    // result rd:x28(0x48c99ccb), rs1=>rd:x28(0x48c99fcb), rs2:x20(0x0000d500), imm:0x1
    TEST_RI_OP(aes32esi, x28, x20, 0x1, 0x48c99ccb, 0x48c99fcb, 0x0000d500, x1, 12, x2)

inst_214:
    // Test 214:  Test with dataset: sbox32
    // result rd:x29(0x46eb524f), rs1=>rd:x29(0x461d524f), rs2:x19(0x00d60000), imm:0x2
    TEST_RI_OP(aes32esi, x29, x19, 0x2, 0x46eb524f, 0x461d524f, 0x00d60000, x1, 16, x2)


    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with dataset: sbox32
    // result rd:x30(0x5c8a10af), rs1=>rd:x30(0x528a10af), rs2:x18(0xd7000000), imm:0x3
    TEST_RI_OP(aes32esi, x30, x18, 0x3, 0x5c8a10af, 0x528a10af, 0xd7000000, x4, 0, x5)

inst_216:
    // Test 216:  Test with dataset: sbox32
    // result rd:x31(0xe19bfba2), rs1=>rd:x31(0xe19bfbc3), rs2:x17(0x000000d8), imm:0x0
    TEST_RI_OP(aes32esi, x31, x17, 0x0, 0xe19bfba2, 0xe19bfbc3, 0x000000d8, x4, 4, x5)

inst_217:
    // Test 217:  Test with dataset: sbox32
    // result rd:x1(0x707ac7c0), rs1=>rd:x1(0x707af2c0), rs2:x16(0x0000d900), imm:0x1
    TEST_RI_OP(aes32esi, x1, x16, 0x1, 0x707ac7c0, 0x707af2c0, 0x0000d900, x4, 8, x5)

inst_218:
    // Test 218:  Test with dataset: sbox32
    // result rd:x2(0xa42a105b), rs1=>rd:x2(0xa47d105b), rs2:x15(0x00da0000), imm:0x2
    TEST_RI_OP(aes32esi, x2, x15, 0x2, 0xa42a105b, 0xa47d105b, 0x00da0000, x4, 12, x5)

inst_219:
    // Test 219:  Test with dataset: sbox32
    // result rd:x3(0xab1bcc23), rs1=>rd:x3(0x121bcc23), rs2:x14(0xdb000000), imm:0x3
    TEST_RI_OP(aes32esi, x3, x14, 0x3, 0xab1bcc23, 0x121bcc23, 0xdb000000, x4, 16, x5)


    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with dataset: sbox32
    // result rd:x4(0xadea5113), rs1=>rd:x4(0xadea5195), rs2:x13(0x000000dc), imm:0x0
    TEST_RI_OP(aes32esi, x4, x13, 0x0, 0xadea5113, 0xadea5195, 0x000000dc, x1, 0, x2)

inst_221:
    // Test 221:  Test with dataset: sbox32
    // result rd:x5(0xd2ff7fc1), rs1=>rd:x5(0xd2ffbec1), rs2:x12(0x0000dd00), imm:0x1
    TEST_RI_OP(aes32esi, x5, x12, 0x1, 0xd2ff7fc1, 0xd2ffbec1, 0x0000dd00, x1, 4, x2)

inst_222:
    // Test 222:  Test with dataset: sbox32
    // result rd:x6(0xa8fca8bb), rs1=>rd:x6(0xa8e1a8bb), rs2:x11(0x00de0000), imm:0x2
    TEST_RI_OP(aes32esi, x6, x11, 0x2, 0xa8fca8bb, 0xa8e1a8bb, 0x00de0000, x1, 8, x2)

inst_223:
    // Test 223:  Test with dataset: sbox32
    // result rd:x7(0xd6c99fcb), rs1=>rd:x7(0x48c99fcb), rs2:x10(0xdf000000), imm:0x3
    TEST_RI_OP(aes32esi, x7, x10, 0x3, 0xd6c99fcb, 0x48c99fcb, 0xdf000000, x1, 12, x2)

inst_224:
    // Test 224:  Test with dataset: sbox32
    // result rd:x8(0x461d52ae), rs1=>rd:x8(0x461d524f), rs2:x9(0x000000e0), imm:0x0
    TEST_RI_OP(aes32esi, x8, x9, 0x0, 0x461d52ae, 0x461d524f, 0x000000e0, x1, 16, x2)


    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with dataset: sbox32
    // result rd:x9(0x528ae8af), rs1=>rd:x9(0x528a10af), rs2:x8(0x0000e100), imm:0x1
    TEST_RI_OP(aes32esi, x9, x8, 0x1, 0x528ae8af, 0x528a10af, 0x0000e100, x1, 0, x2)

inst_226:
    // Test 226:  Test with dataset: sbox32
    // result rd:x10(0xe103fbc3), rs1=>rd:x10(0xe19bfbc3), rs2:x7(0x00e20000), imm:0x2
    TEST_RI_OP(aes32esi, x10, x7, 0x2, 0xe103fbc3, 0xe19bfbc3, 0x00e20000, x1, 4, x2)

inst_227:
    // Test 227:  Test with dataset: sbox32
    // result rd:x11(0x617af2c0), rs1=>rd:x11(0x707af2c0), rs2:x6(0xe3000000), imm:0x3
    TEST_RI_OP(aes32esi, x11, x6, 0x3, 0x617af2c0, 0x707af2c0, 0xe3000000, x1, 8, x2)

inst_228:
    // Test 228:  Test with dataset: sbox32
    // result rd:x12(0xa47d1032), rs1=>rd:x12(0xa47d105b), rs2:x5(0x000000e4), imm:0x0
    TEST_RI_OP(aes32esi, x12, x5, 0x0, 0xa47d1032, 0xa47d105b, 0x000000e4, x1, 12, x2)

inst_229:
    // Test 229:  Test with dataset: sbox32
    // result rd:x13(0x121b1523), rs1=>rd:x13(0x121bcc23), rs2:x4(0x0000e500), imm:0x1
    TEST_RI_OP(aes32esi, x13, x4, 0x1, 0x121b1523, 0x121bcc23, 0x0000e500, x1, 16, x2)


    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with dataset: sbox32
    // result rd:x14(0xad645195), rs1=>rd:x14(0xadea5195), rs2:x3(0x00e60000), imm:0x2
    TEST_RI_OP(aes32esi, x14, x3, 0x2, 0xad645195, 0xadea5195, 0x00e60000, x4, 0, x5)

inst_231:
    // Test 231:  Test with dataset: sbox32
    // result rd:x15(0x46ffbec1), rs1=>rd:x15(0xd2ffbec1), rs2:x2(0xe7000000), imm:0x3
    TEST_RI_OP(aes32esi, x15, x2, 0x3, 0x46ffbec1, 0xd2ffbec1, 0xe7000000, x4, 4, x5)

inst_232:
    // Test 232:  Test with dataset: sbox32
    // result rd:x16(0xa8e1a820), rs1=>rd:x16(0xa8e1a8bb), rs2:x1(0x000000e8), imm:0x0
    TEST_RI_OP(aes32esi, x16, x1, 0x0, 0xa8e1a820, 0xa8e1a8bb, 0x000000e8, x4, 8, x5)

inst_233:
    // Test 233:  Test with dataset: sbox32
    // result rd:x17(0x48c981cb), rs1=>rd:x17(0x48c99fcb), rs2:x31(0x0000e900), imm:0x1
    TEST_RI_OP(aes32esi, x17, x31, 0x1, 0x48c981cb, 0x48c99fcb, 0x0000e900, x4, 12, x5)

inst_234:
    // Test 234:  Test with dataset: sbox32
    // result rd:x18(0x469a524f), rs1=>rd:x18(0x461d524f), rs2:x30(0x00ea0000), imm:0x2
    TEST_RI_OP(aes32esi, x18, x30, 0x2, 0x469a524f, 0x461d524f, 0x00ea0000, x4, 16, x5)


    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with dataset: sbox32
    // result rd:x19(0xbb8a10af), rs1=>rd:x19(0x528a10af), rs2:x29(0xeb000000), imm:0x3
    TEST_RI_OP(aes32esi, x19, x29, 0x3, 0xbb8a10af, 0x528a10af, 0xeb000000, x1, 0, x2)

inst_236:
    // Test 236:  Test with dataset: sbox32
    // result rd:x20(0xe19bfb0d), rs1=>rd:x20(0xe19bfbc3), rs2:x28(0x000000ec), imm:0x0
    TEST_RI_OP(aes32esi, x20, x28, 0x0, 0xe19bfb0d, 0xe19bfbc3, 0x000000ec, x1, 4, x2)

inst_237:
    // Test 237:  Test with dataset: sbox32
    // result rd:x21(0x707aa7c0), rs1=>rd:x21(0x707af2c0), rs2:x27(0x0000ed00), imm:0x1
    TEST_RI_OP(aes32esi, x21, x27, 0x1, 0x707aa7c0, 0x707af2c0, 0x0000ed00, x1, 8, x2)

inst_238:
    // Test 238:  Test with dataset: sbox32
    // result rd:x22(0xa455105b), rs1=>rd:x22(0xa47d105b), rs2:x26(0x00ee0000), imm:0x2
    TEST_RI_OP(aes32esi, x22, x26, 0x2, 0xa455105b, 0xa47d105b, 0x00ee0000, x1, 12, x2)

inst_239:
    // Test 239:  Test with dataset: sbox32
    // result rd:x23(0xcd1bcc23), rs1=>rd:x23(0x121bcc23), rs2:x25(0xef000000), imm:0x3
    TEST_RI_OP(aes32esi, x23, x25, 0x3, 0xcd1bcc23, 0x121bcc23, 0xef000000, x1, 16, x2)


    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with dataset: sbox32
    // result rd:x24(0x0000007c), rs1=>rd:x24(0xadea5195), rs2:x24(0x000000f0), imm:0x0
    TEST_RI_OP(aes32esi, x24, x24, 0x0, 0x0000007c, 0xadea5195, 0x000000f0, x1, 0, x2)

inst_241:
    // Test 241:  Test with dataset: sbox32
    // result rd:x25(0xd2ff1fc1), rs1=>rd:x25(0xd2ffbec1), rs2:x23(0x0000f100), imm:0x1
    TEST_RI_OP(aes32esi, x25, x23, 0x1, 0xd2ff1fc1, 0xd2ffbec1, 0x0000f100, x1, 4, x2)

inst_242:
    // Test 242:  Test with dataset: sbox32
    // result rd:x26(0xa868a8bb), rs1=>rd:x26(0xa8e1a8bb), rs2:x22(0x00f20000), imm:0x2
    TEST_RI_OP(aes32esi, x26, x22, 0x2, 0xa868a8bb, 0xa8e1a8bb, 0x00f20000, x1, 8, x2)

inst_243:
    // Test 243:  Test with dataset: sbox32
    // result rd:x27(0x45c99fcb), rs1=>rd:x27(0x48c99fcb), rs2:x21(0xf3000000), imm:0x3
    TEST_RI_OP(aes32esi, x27, x21, 0x3, 0x45c99fcb, 0x48c99fcb, 0xf3000000, x1, 12, x2)

inst_244:
    // Test 244:  Test with dataset: sbox32
    // result rd:x28(0x461d52f0), rs1=>rd:x28(0x461d524f), rs2:x20(0x000000f4), imm:0x0
    TEST_RI_OP(aes32esi, x28, x20, 0x0, 0x461d52f0, 0x461d524f, 0x000000f4, x1, 16, x2)


    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with dataset: sbox32
    // result rd:x29(0x528af6af), rs1=>rd:x29(0x528a10af), rs2:x19(0x0000f500), imm:0x1
    TEST_RI_OP(aes32esi, x29, x19, 0x1, 0x528af6af, 0x528a10af, 0x0000f500, x4, 0, x5)

inst_246:
    // Test 246:  Test with dataset: sbox32
    // result rd:x30(0xe1d9fbc3), rs1=>rd:x30(0xe19bfbc3), rs2:x18(0x00f60000), imm:0x2
    TEST_RI_OP(aes32esi, x30, x18, 0x2, 0xe1d9fbc3, 0xe19bfbc3, 0x00f60000, x4, 4, x5)

inst_247:
    // Test 247:  Test with dataset: sbox32
    // result rd:x31(0x187af2c0), rs1=>rd:x31(0x707af2c0), rs2:x17(0xf7000000), imm:0x3
    TEST_RI_OP(aes32esi, x31, x17, 0x3, 0x187af2c0, 0x707af2c0, 0xf7000000, x4, 8, x5)

inst_248:
    // Test 248:  Test with dataset: sbox32
    // result rd:x1(0xa47d101a), rs1=>rd:x1(0xa47d105b), rs2:x16(0x000000f8), imm:0x0
    TEST_RI_OP(aes32esi, x1, x16, 0x0, 0xa47d101a, 0xa47d105b, 0x000000f8, x4, 12, x5)

inst_249:
    // Test 249:  Test with dataset: sbox32
    // result rd:x2(0x121b5523), rs1=>rd:x2(0x121bcc23), rs2:x15(0x0000f900), imm:0x1
    TEST_RI_OP(aes32esi, x2, x15, 0x1, 0x121b5523, 0x121bcc23, 0x0000f900, x4, 16, x5)


    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with dataset: sbox32
    // result rd:x3(0xadc75195), rs1=>rd:x3(0xadea5195), rs2:x14(0x00fa0000), imm:0x2
    TEST_RI_OP(aes32esi, x3, x14, 0x2, 0xadc75195, 0xadea5195, 0x00fa0000, x1, 0, x2)

inst_251:
    // Test 251:  Test with dataset: sbox32
    // result rd:x4(0xddffbec1), rs1=>rd:x4(0xd2ffbec1), rs2:x13(0xfb000000), imm:0x3
    TEST_RI_OP(aes32esi, x4, x13, 0x3, 0xddffbec1, 0xd2ffbec1, 0xfb000000, x1, 4, x2)

inst_252:
    // Test 252:  Test with dataset: sbox32
    // result rd:x5(0xa8e1a80b), rs1=>rd:x5(0xa8e1a8bb), rs2:x12(0x000000fc), imm:0x0
    TEST_RI_OP(aes32esi, x5, x12, 0x0, 0xa8e1a80b, 0xa8e1a8bb, 0x000000fc, x1, 8, x2)

inst_253:
    // Test 253:  Test with dataset: sbox32
    // result rd:x6(0x48c9cbcb), rs1=>rd:x6(0x48c99fcb), rs2:x11(0x0000fd00), imm:0x1
    TEST_RI_OP(aes32esi, x6, x11, 0x1, 0x48c9cbcb, 0x48c99fcb, 0x0000fd00, x1, 12, x2)

inst_254:
    // Test 254:  Test with dataset: sbox32
    // result rd:x7(0x46a6524f), rs1=>rd:x7(0x461d524f), rs2:x10(0x00fe0000), imm:0x2
    TEST_RI_OP(aes32esi, x7, x10, 0x2, 0x46a6524f, 0x461d524f, 0x00fe0000, x1, 16, x2)


    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esi)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esi)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with dataset: sbox32
    // result rd:x8(0x448a10af), rs1=>rd:x8(0x528a10af), rs2:x9(0xff000000), imm:0x3
    TEST_RI_OP(aes32esi, x8, x9, 0x3, 0x448a10af, 0x528a10af, 0xff000000, x1, 0, x2)
	
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
signature_31_0:
	.fill 5, 4, 0xdeadbeef
signature_32_0:
	.fill 5, 4, 0xdeadbeef
signature_33_0:
	.fill 5, 4, 0xdeadbeef
signature_34_0:
	.fill 5, 4, 0xdeadbeef
signature_35_0:
	.fill 5, 4, 0xdeadbeef
signature_36_0:
	.fill 5, 4, 0xdeadbeef
signature_37_0:
	.fill 5, 4, 0xdeadbeef
signature_38_0:
	.fill 5, 4, 0xdeadbeef
signature_39_0:
	.fill 5, 4, 0xdeadbeef
signature_40_0:
	.fill 5, 4, 0xdeadbeef
signature_41_0:
	.fill 5, 4, 0xdeadbeef
signature_42_0:
	.fill 5, 4, 0xdeadbeef
signature_43_0:
	.fill 5, 4, 0xdeadbeef
signature_44_0:
	.fill 5, 4, 0xdeadbeef
signature_45_0:
	.fill 5, 4, 0xdeadbeef
signature_46_0:
	.fill 5, 4, 0xdeadbeef
signature_47_0:
	.fill 5, 4, 0xdeadbeef
signature_48_0:
	.fill 5, 4, 0xdeadbeef
signature_49_0:
	.fill 5, 4, 0xdeadbeef
signature_50_0:
	.fill 5, 4, 0xdeadbeef
signature_51_0:
	.fill 5, 4, 0xdeadbeef
signature_52_0:
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

