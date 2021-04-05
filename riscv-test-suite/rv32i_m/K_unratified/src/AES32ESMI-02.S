// RISC-V Architectural Validation Test AES32ESMI-02
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
// Description: Testing instruction 'aes32esmi'.
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


    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with dataset: sbox32
    // result rd:x1(0x08893253), rs1=>rd:x1(0xadea5195), rs2:x16(0x00000000), imm:0x0
    TEST_RI_OP(aes32esmi, x1, x16, 0x0, 0x08893253, 0xadea5195, 0x00000000, x6, 0, x7)

inst_1:
    // Test 1:  Test with dataset: sbox32
    // result rd:x2(0xae834645), rs1=>rd:x2(0xd2ffbec1), rs2:x15(0x00000100), imm:0x1
    TEST_RI_OP(aes32esmi, x2, x15, 0x1, 0xae834645, 0xd2ffbec1, 0x00000100, x6, 4, x7)

inst_2:
    // Test 2:  Test with dataset: sbox32
    // result rd:x3(0xdf0f31cc), rs1=>rd:x3(0xa8e1a8bb), rs2:x14(0x00020000), imm:0x2
    TEST_RI_OP(aes32esmi, x3, x14, 0x2, 0xdf0f31cc, 0xa8e1a8bb, 0x00020000, x6, 8, x7)

inst_3:
    // Test 3:  Test with dataset: sbox32
    // result rd:x4(0xbe44e4b0), rs1=>rd:x4(0x48c99fcb), rs2:x13(0x03000000), imm:0x3
    TEST_RI_OP(aes32esmi, x4, x13, 0x3, 0xbe44e4b0, 0x48c99fcb, 0x03000000, x6, 12, x7)

inst_4:
    // Test 4:  Test with dataset: sbox32
    // result rd:x5(0x4befa0b0), rs1=>rd:x5(0x461d524f), rs2:x12(0x00000004), imm:0x0
    TEST_RI_OP(aes32esmi, x5, x12, 0x0, 0x4befa0b0, 0x461d524f, 0x00000004, x6, 16, x7)


    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with dataset: sbox32
    // result rd:x6(0x39e1c612), rs1=>rd:x6(0x528a10af), rs2:x11(0x00000500), imm:0x1
    TEST_RI_OP(aes32esmi, x6, x11, 0x1, 0x39e1c612, 0x528a10af, 0x00000500, x1, 0, x2)

inst_6:
    // Test 6:  Test with dataset: sbox32
    // result rd:x7(0x8e454aac), rs1=>rd:x7(0xe19bfbc3), rs2:x10(0x00060000), imm:0x2
    TEST_RI_OP(aes32esmi, x7, x10, 0x2, 0x8e454aac, 0xe19bfbc3, 0x00060000, x1, 4, x2)

inst_7:
    // Test 7:  Test with dataset: sbox32
    // result rd:x8(0xe12e3705), rs1=>rd:x8(0x707af2c0), rs2:x9(0x07000000), imm:0x3
    TEST_RI_OP(aes32esmi, x8, x9, 0x3, 0xe12e3705, 0x707af2c0, 0x07000000, x1, 8, x2)

inst_8:
    // Test 8:  Test with dataset: sbox32
    // result rd:x9(0xf44d203b), rs1=>rd:x9(0xa47d105b), rs2:x8(0x00000008), imm:0x0
    TEST_RI_OP(aes32esmi, x9, x8, 0x0, 0xf44d203b, 0xa47d105b, 0x00000008, x1, 12, x2)

inst_9:
    // Test 9:  Test with dataset: sbox32
    // result rd:x10(0x131ace20), rs1=>rd:x10(0x121bcc23), rs2:x7(0x00000900), imm:0x1
    TEST_RI_OP(aes32esmi, x10, x7, 0x1, 0x131ace20, 0x121bcc23, 0x00000900, x1, 16, x2)


    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with dataset: sbox32
    // result rd:x11(0xca24f8f2), rs1=>rd:x11(0xadea5195), rs2:x6(0x000a0000), imm:0x2
    TEST_RI_OP(aes32esmi, x11, x6, 0x2, 0xca24f8f2, 0xadea5195, 0x000a0000, x1, 0, x7)

inst_11:
    // Test 11:  Test with dataset: sbox32
    // result rd:x12(0x848295ea), rs1=>rd:x12(0xd2ffbec1), rs2:x5(0x0b000000), imm:0x3
    TEST_RI_OP(aes32esmi, x12, x5, 0x3, 0x848295ea, 0xd2ffbec1, 0x0b000000, x1, 4, x7)

inst_12:
    // Test 12:  Test with dataset: sbox32
    // result rd:x13(0xb11f565c), rs1=>rd:x13(0xa8e1a8bb), rs2:x4(0x0000000c), imm:0x0
    TEST_RI_OP(aes32esmi, x13, x4, 0x0, 0xb11f565c, 0xa8e1a8bb, 0x0000000c, x1, 8, x7)

inst_13:
    // Test 13:  Test with dataset: sbox32
    // result rd:x14(0x9f1e2aa9), rs1=>rd:x14(0x48c99fcb), rs2:x3(0x00000d00), imm:0x1
    TEST_RI_OP(aes32esmi, x14, x3, 0x1, 0x9f1e2aa9, 0x48c99fcb, 0x00000d00, x1, 12, x7)

inst_14:
    // Test 14:  Test with dataset: sbox32
    // result rd:x15(0xed50b4e4), rs1=>rd:x15(0x461d524f), rs2:x2(0x000e0000), imm:0x2
    TEST_RI_OP(aes32esmi, x15, x2, 0x2, 0xed50b4e4, 0x461d524f, 0x000e0000, x1, 16, x7)


    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with dataset: sbox32
    // result rd:x16(0xbe1066d9), rs1=>rd:x16(0x528a10af), rs2:x1(0x0f000000), imm:0x3
    TEST_RI_OP(aes32esmi, x16, x1, 0x3, 0xbe1066d9, 0x528a10af, 0x0f000000, x2, 0, x3)

inst_16:
    // Test 16:  Test with dataset: sbox32
    // result rd:x17(0xa451314c), rs1=>rd:x17(0xe19bfbc3), rs2:x31(0x00000010), imm:0x0
    TEST_RI_OP(aes32esmi, x17, x31, 0x0, 0xa451314c, 0xe19bfbc3, 0x00000010, x2, 4, x3)

inst_17:
    // Test 17:  Test with dataset: sbox32
    // result rd:x18(0xf2f8ed5d), rs1=>rd:x18(0x707af2c0), rs2:x30(0x00001100), imm:0x1
    TEST_RI_OP(aes32esmi, x18, x30, 0x1, 0xf2f8ed5d, 0x707af2c0, 0x00001100, x2, 8, x3)

inst_18:
    // Test 18:  Test with dataset: sbox32
    // result rd:x19(0x6df45092), rs1=>rd:x19(0xa47d105b), rs2:x29(0x00120000), imm:0x2
    TEST_RI_OP(aes32esmi, x19, x29, 0x2, 0x6df45092, 0xa47d105b, 0x00120000, x2, 12, x3)

inst_19:
    // Test 19:  Test with dataset: sbox32
    // result rd:x20(0xe89cb15e), rs1=>rd:x20(0x121bcc23), rs2:x28(0x13000000), imm:0x3
    TEST_RI_OP(aes32esmi, x20, x28, 0x3, 0xe89cb15e, 0x121bcc23, 0x13000000, x2, 16, x3)


    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with dataset: sbox32
    // result rd:x21(0xb810ab7a), rs1=>rd:x21(0xadea5195), rs2:x27(0x00000014), imm:0x0
    TEST_RI_OP(aes32esmi, x21, x27, 0x0, 0xb810ab7a, 0xadea5195, 0x00000014, x1, 0, x2)

inst_21:
    // Test 21:  Test with dataset: sbox32
    // result rd:x22(0x8ba60c2a), rs1=>rd:x22(0xd2ffbec1), rs2:x26(0x00001500), imm:0x1
    TEST_RI_OP(aes32esmi, x22, x26, 0x1, 0x8ba60c2a, 0xd2ffbec1, 0x00001500, x1, 4, x2)

inst_22:
    // Test 22:  Test with dataset: sbox32
    // result rd:x23(0xef6f61fc), rs1=>rd:x23(0xa8e1a8bb), rs2:x25(0x00160000), imm:0x2
    TEST_RI_OP(aes32esmi, x23, x25, 0x2, 0xef6f61fc, 0xa8e1a8bb, 0x00160000, x1, 8, x2)

inst_23:
    // Test 23:  Test with dataset: sbox32
    // result rd:x24(0xec0bf0f0), rs1=>rd:x24(0x48c99fcb), rs2:x24(0x17000000), imm:0x3
    TEST_RI_OP(aes32esmi, x24, x24, 0x3, 0xec0bf0f0, 0x48c99fcb, 0x17000000, x1, 12, x2)

inst_24:
    // Test 24:  Test with dataset: sbox32
    // result rd:x25(0xaab0ff0e), rs1=>rd:x25(0x461d524f), rs2:x23(0x00000018), imm:0x0
    TEST_RI_OP(aes32esmi, x25, x23, 0x0, 0xaab0ff0e, 0x461d524f, 0x00000018, x1, 16, x2)


    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with dataset: sbox32
    // result rd:x26(0x865ea3c8), rs1=>rd:x26(0x528a10af), rs2:x22(0x00001900), imm:0x1
    TEST_RI_OP(aes32esmi, x26, x22, 0x1, 0x865ea3c8, 0x528a10af, 0x00001900, x1, 0, x7)

inst_26:
    // Test 26:  Test with dataset: sbox32
    // result rd:x27(0x43c40661), rs1=>rd:x27(0xe19bfbc3), rs2:x21(0x001a0000), imm:0x2
    TEST_RI_OP(aes32esmi, x27, x21, 0x2, 0x43c40661, 0xe19bfbc3, 0x001a0000, x1, 4, x7)

inst_27:
    // Test 27:  Test with dataset: sbox32
    // result rd:x28(0x35905d6f), rs1=>rd:x28(0x707af2c0), rs2:x20(0x1b000000), imm:0x3
    TEST_RI_OP(aes32esmi, x28, x20, 0x3, 0x35905d6f, 0x707af2c0, 0x1b000000, x1, 8, x7)

inst_28:
    // Test 28:  Test with dataset: sbox32
    // result rd:x29(0x1be18c78), rs1=>rd:x29(0xa47d105b), rs2:x19(0x0000001c), imm:0x0
    TEST_RI_OP(aes32esmi, x29, x19, 0x0, 0x1be18c78, 0xa47d105b, 0x0000001c, x1, 12, x7)

inst_29:
    // Test 29:  Test with dataset: sbox32
    // result rd:x30(0xb6bf9fd4), rs1=>rd:x30(0x121bcc23), rs2:x18(0x00001d00), imm:0x1
    TEST_RI_OP(aes32esmi, x30, x18, 0x1, 0xb6bf9fd4, 0x121bcc23, 0x00001d00, x1, 16, x7)


    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with dataset: sbox32
    // result rd:x31(0xdf0ec7e7), rs1=>rd:x31(0xadea5195), rs2:x17(0x001e0000), imm:0x2
    TEST_RI_OP(aes32esmi, x31, x17, 0x2, 0xdf0ec7e7, 0xadea5195, 0x001e0000, x5, 0, x6)

inst_31:
    // Test 31:  Test with dataset: sbox32
    // result rd:x1(0x49a47e01), rs1=>rd:x1(0xd2ffbec1), rs2:x16(0x1f000000), imm:0x3
    TEST_RI_OP(aes32esmi, x1, x16, 0x3, 0x49a47e01, 0xd2ffbec1, 0x1f000000, x5, 4, x6)

inst_32:
    // Test 32:  Test with dataset: sbox32
    // result rd:x2(0x6a561fce), rs1=>rd:x2(0xa8e1a8bb), rs2:x15(0x00000020), imm:0x0
    TEST_RI_OP(aes32esmi, x2, x15, 0x0, 0x6a561fce, 0xa8e1a8bb, 0x00000020, x5, 8, x6)

inst_33:
    // Test 33:  Test with dataset: sbox32
    // result rd:x3(0xb5347ed7), rs1=>rd:x3(0x48c99fcb), rs2:x14(0x00002100), imm:0x1
    TEST_RI_OP(aes32esmi, x3, x14, 0x1, 0xb5347ed7, 0x48c99fcb, 0x00002100, x5, 12, x6)

inst_34:
    // Test 34:  Test with dataset: sbox32
    // result rd:x4(0xd520fcdc), rs1=>rd:x4(0x461d524f), rs2:x13(0x00220000), imm:0x2
    TEST_RI_OP(aes32esmi, x4, x13, 0x2, 0xd520fcdc, 0x461d524f, 0x00220000, x5, 16, x6)


    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with dataset: sbox32
    // result rd:x5(0x1ee03689), rs1=>rd:x5(0x528a10af), rs2:x12(0x23000000), imm:0x3
    TEST_RI_OP(aes32esmi, x5, x12, 0x3, 0x1ee03689, 0x528a10af, 0x23000000, x1, 0, x2)

inst_36:
    // Test 36:  Test with dataset: sbox32
    // result rd:x6(0xbbadcdaf), rs1=>rd:x6(0xe19bfbc3), rs2:x11(0x00000024), imm:0x0
    TEST_RI_OP(aes32esmi, x6, x11, 0x0, 0xbbadcdaf, 0xe19bfbc3, 0x00000024, x1, 4, x2)

inst_37:
    // Test 37:  Test with dataset: sbox32
    // result rd:x7(0x4f458c81), rs1=>rd:x7(0x707af2c0), rs2:x10(0x00002500), imm:0x1
    TEST_RI_OP(aes32esmi, x7, x10, 0x1, 0x4f458c81, 0x707af2c0, 0x00002500, x1, 8, x2)

inst_38:
    // Test 38:  Test with dataset: sbox32
    // result rd:x8(0x538812ac), rs1=>rd:x8(0xa47d105b), rs2:x9(0x00260000), imm:0x2
    TEST_RI_OP(aes32esmi, x8, x9, 0x2, 0x538812ac, 0xa47d105b, 0x00260000, x1, 12, x2)

inst_39:
    // Test 39:  Test with dataset: sbox32
    // result rd:x9(0x915400ef), rs1=>rd:x9(0x121bcc23), rs2:x8(0x27000000), imm:0x3
    TEST_RI_OP(aes32esmi, x9, x8, 0x3, 0x915400ef, 0x121bcc23, 0x27000000, x1, 16, x2)


    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with dataset: sbox32
    // result rd:x10(0xf1de65fd), rs1=>rd:x10(0xadea5195), rs2:x7(0x00000028), imm:0x0
    TEST_RI_OP(aes32esmi, x10, x7, 0x0, 0xf1de65fd, 0xadea5195, 0x00000028, x1, 0, x2)

inst_41:
    // Test 41:  Test with dataset: sbox32
    // result rd:x11(0x775aef35), rs1=>rd:x11(0xd2ffbec1), rs2:x6(0x00002900), imm:0x1
    TEST_RI_OP(aes32esmi, x11, x6, 0x1, 0x775aef35, 0xd2ffbec1, 0x00002900, x1, 4, x2)

inst_42:
    // Test 42:  Test with dataset: sbox32
    // result rd:x12(0x4d309c5e), rs1=>rd:x12(0xa8e1a8bb), rs2:x5(0x002a0000), imm:0x2
    TEST_RI_OP(aes32esmi, x12, x5, 0x2, 0x4d309c5e, 0xa8e1a8bb, 0x002a0000, x1, 8, x2)

inst_43:
    // Test 43:  Test with dataset: sbox32
    // result rd:x13(0xb1c16e3a), rs1=>rd:x13(0x48c99fcb), rs2:x4(0x2b000000), imm:0x3
    TEST_RI_OP(aes32esmi, x13, x4, 0x3, 0xb1c16e3a, 0x48c99fcb, 0x2b000000, x1, 12, x2)

inst_44:
    // Test 44:  Test with dataset: sbox32
    // result rd:x14(0xd56c23ad), rs1=>rd:x14(0x461d524f), rs2:x3(0x0000002c), imm:0x0
    TEST_RI_OP(aes32esmi, x14, x3, 0x0, 0xd56c23ad, 0x461d524f, 0x0000002c, x1, 16, x2)


    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with dataset: sbox32
    // result rd:x15(0x8a52bbdc), rs1=>rd:x15(0x528a10af), rs2:x2(0x00002d00), imm:0x1
    TEST_RI_OP(aes32esmi, x15, x2, 0x1, 0x8a52bbdc, 0x528a10af, 0x00002d00, x3, 0, x4)

inst_46:
    // Test 46:  Test with dataset: sbox32
    // result rd:x16(0xd0f9a8f2), rs1=>rd:x16(0xe19bfbc3), rs2:x1(0x002e0000), imm:0x2
    TEST_RI_OP(aes32esmi, x16, x1, 0x2, 0xd0f9a8f2, 0xe19bfbc3, 0x002e0000, x3, 4, x4)

inst_47:
    // Test 47:  Test with dataset: sbox32
    // result rd:x17(0x5a45e7d5), rs1=>rd:x17(0x707af2c0), rs2:x31(0x2f000000), imm:0x3
    TEST_RI_OP(aes32esmi, x17, x31, 0x3, 0x5a45e7d5, 0x707af2c0, 0x2f000000, x3, 8, x4)

inst_48:
    // Test 48:  Test with dataset: sbox32
    // result rd:x18(0xa8791453), rs1=>rd:x18(0xa47d105b), rs2:x30(0x00000030), imm:0x0
    TEST_RI_OP(aes32esmi, x18, x30, 0x0, 0xa8791453, 0xa47d105b, 0x00000030, x3, 12, x4)

inst_49:
    // Test 49:  Test with dataset: sbox32
    // result rd:x19(0xd5dc5971), rs1=>rd:x19(0x121bcc23), rs2:x29(0x00003100), imm:0x1
    TEST_RI_OP(aes32esmi, x19, x29, 0x1, 0xd5dc5971, 0x121bcc23, 0x00003100, x3, 16, x4)


    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with dataset: sbox32
    // result rd:x20(0x8eac34b6), rs1=>rd:x20(0xadea5195), rs2:x28(0x00320000), imm:0x2
    TEST_RI_OP(aes32esmi, x20, x28, 0x2, 0x8eac34b6, 0xadea5195, 0x00320000, x1, 0, x2)

inst_51:
    // Test 51:  Test with dataset: sbox32
    // result rd:x21(0x4fa17d02), rs1=>rd:x21(0xd2ffbec1), rs2:x27(0x33000000), imm:0x3
    TEST_RI_OP(aes32esmi, x21, x27, 0x3, 0x4fa17d02, 0xd2ffbec1, 0x33000000, x1, 4, x2)

inst_52:
    // Test 52:  Test with dataset: sbox32
    // result rd:x22(0x80f9b08b), rs1=>rd:x22(0xa8e1a8bb), rs2:x26(0x00000034), imm:0x0
    TEST_RI_OP(aes32esmi, x22, x26, 0x0, 0x80f9b08b, 0xa8e1a8bb, 0x00000034, x1, 8, x2)

inst_53:
    // Test 53:  Test with dataset: sbox32
    // result rd:x23(0xde5fa86a), rs1=>rd:x23(0x48c99fcb), rs2:x25(0x00003500), imm:0x1
    TEST_RI_OP(aes32esmi, x23, x25, 0x1, 0xde5fa86a, 0x48c99fcb, 0x00003500, x1, 12, x2)

inst_54:
    // Test 54:  Test with dataset: sbox32
    // result rd:x24(0x053c0f05), rs1=>rd:x24(0x461d524f), rs2:x24(0x00360000), imm:0x2
    TEST_RI_OP(aes32esmi, x24, x24, 0x2, 0x053c0f05, 0x461d524f, 0x00360000, x1, 16, x2)


    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with dataset: sbox32
    // result rd:x25(0x7d3f8a35), rs1=>rd:x25(0x528a10af), rs2:x23(0x37000000), imm:0x3
    TEST_RI_OP(aes32esmi, x25, x23, 0x3, 0x7d3f8a35, 0x528a10af, 0x37000000, x1, 0, x2)

inst_56:
    // Test 56:  Test with dataset: sbox32
    // result rd:x26(0xe89cfccd), rs1=>rd:x26(0xe19bfbc3), rs2:x22(0x00000038), imm:0x0
    TEST_RI_OP(aes32esmi, x26, x22, 0x0, 0xe89cfccd, 0xe19bfbc3, 0x00000038, x1, 4, x2)

inst_57:
    // Test 57:  Test with dataset: sbox32
    // result rd:x27(0x6268d6f6), rs1=>rd:x27(0x707af2c0), rs2:x21(0x00003900), imm:0x1
    TEST_RI_OP(aes32esmi, x27, x21, 0x1, 0x6268d6f6, 0x707af2c0, 0x00003900, x1, 8, x2)

inst_58:
    // Test 58:  Test with dataset: sbox32
    // result rd:x28(0x24668bdb), rs1=>rd:x28(0xa47d105b), rs2:x20(0x003a0000), imm:0x2
    TEST_RI_OP(aes32esmi, x28, x20, 0x2, 0x24668bdb, 0xa47d105b, 0x003a0000, x1, 12, x2)

inst_59:
    // Test 59:  Test with dataset: sbox32
    // result rd:x29(0xcd262ec1), rs1=>rd:x29(0x121bcc23), rs2:x19(0x3b000000), imm:0x3
    TEST_RI_OP(aes32esmi, x29, x19, 0x3, 0xcd262ec1, 0x121bcc23, 0x3b000000, x1, 16, x2)


    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with dataset: sbox32
    // result rd:x30(0x8b01ba58), rs1=>rd:x30(0xadea5195), rs2:x18(0x0000003c), imm:0x0
    TEST_RI_OP(aes32esmi, x30, x18, 0x0, 0x8b01ba58, 0xadea5195, 0x0000003c, x4, 0, x5)

inst_61:
    // Test 61:  Test with dataset: sbox32
    // result rd:x31(0xf5d8f0a8), rs1=>rd:x31(0xd2ffbec1), rs2:x17(0x00003d00), imm:0x1
    TEST_RI_OP(aes32esmi, x31, x17, 0x1, 0xf5d8f0a8, 0xd2ffbec1, 0x00003d00, x4, 4, x5)

inst_62:
    // Test 62:  Test with dataset: sbox32
    // result rd:x1(0x1a9e6509), rs1=>rd:x1(0xa8e1a8bb), rs2:x16(0x003e0000), imm:0x2
    TEST_RI_OP(aes32esmi, x1, x16, 0x2, 0x1a9e6509, 0xa8e1a8bb, 0x003e0000, x4, 8, x5)

inst_63:
    // Test 63:  Test with dataset: sbox32
    // result rd:x2(0xa256eabe), rs1=>rd:x2(0x48c99fcb), rs2:x15(0x3f000000), imm:0x3
    TEST_RI_OP(aes32esmi, x2, x15, 0x3, 0xa256eabe, 0x48c99fcb, 0x3f000000, x4, 12, x5)

inst_64:
    // Test 64:  Test with dataset: sbox32
    // result rd:x3(0x5d145b5d), rs1=>rd:x3(0x461d524f), rs2:x14(0x00000040), imm:0x0
    TEST_RI_OP(aes32esmi, x3, x14, 0x0, 0x5d145b5d, 0x461d524f, 0x00000040, x4, 16, x5)


    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with dataset: sbox32
    // result rd:x4(0xd1090d31), rs1=>rd:x4(0x528a10af), rs2:x13(0x00004100), imm:0x1
    TEST_RI_OP(aes32esmi, x4, x13, 0x1, 0xd1090d31, 0x528a10af, 0x00004100, x1, 0, x2)

inst_66:
    // Test 66:  Test with dataset: sbox32
    // result rd:x5(0xcdc38fef), rs1=>rd:x5(0xe19bfbc3), rs2:x12(0x00420000), imm:0x2
    TEST_RI_OP(aes32esmi, x5, x12, 0x2, 0xcdc38fef, 0xe19bfbc3, 0x00420000, x1, 4, x2)

inst_67:
    // Test 67:  Test with dataset: sbox32
    // result rd:x6(0x4454e8da), rs1=>rd:x6(0x707af2c0), rs2:x11(0x43000000), imm:0x3
    TEST_RI_OP(aes32esmi, x6, x11, 0x3, 0x4454e8da, 0x707af2c0, 0x43000000, x1, 8, x2)

inst_68:
    // Test 68:  Test with dataset: sbox32
    // result rd:x7(0x89660b6d), rs1=>rd:x7(0xa47d105b), rs2:x10(0x00000044), imm:0x0
    TEST_RI_OP(aes32esmi, x7, x10, 0x0, 0x89660b6d, 0xa47d105b, 0x00000044, x1, 12, x2)

inst_69:
    // Test 69:  Test with dataset: sbox32
    // result rd:x8(0x7c751091), rs1=>rd:x8(0x121bcc23), rs2:x9(0x00004500), imm:0x1
    TEST_RI_OP(aes32esmi, x8, x9, 0x1, 0x7c751091, 0x121bcc23, 0x00004500, x1, 16, x2)


    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with dataset: sbox32
    // result rd:x9(0xf75ebfcf), rs1=>rd:x9(0xadea5195), rs2:x8(0x00460000), imm:0x2
    TEST_RI_OP(aes32esmi, x9, x8, 0x2, 0xf75ebfcf, 0xadea5195, 0x00460000, x1, 0, x2)

inst_71:
    // Test 71:  Test with dataset: sbox32
    // result rd:x10(0x89041e61), rs1=>rd:x10(0xd2ffbec1), rs2:x7(0x47000000), imm:0x3
    TEST_RI_OP(aes32esmi, x10, x7, 0x3, 0x89041e61, 0xd2ffbec1, 0x47000000, x1, 4, x2)

inst_72:
    // Test 72:  Test with dataset: sbox32
    // result rd:x11(0x5eb3fa1f), rs1=>rd:x11(0xa8e1a8bb), rs2:x6(0x00000048), imm:0x0
    TEST_RI_OP(aes32esmi, x11, x6, 0x0, 0x5eb3fa1f, 0xa8e1a8bb, 0x00000048, x1, 8, x2)

inst_73:
    // Test 73:  Test with dataset: sbox32
    // result rd:x12(0x73f2e986), rs1=>rd:x12(0x48c99fcb), rs2:x5(0x00004900), imm:0x1
    TEST_RI_OP(aes32esmi, x12, x5, 0x1, 0x73f2e986, 0x48c99fcb, 0x00004900, x1, 12, x2)

inst_74:
    // Test 74:  Test with dataset: sbox32
    // result rd:x13(0x90aa3399), rs1=>rd:x13(0x461d524f), rs2:x4(0x004a0000), imm:0x2
    TEST_RI_OP(aes32esmi, x13, x4, 0x2, 0x90aa3399, 0x461d524f, 0x004a0000, x1, 16, x2)


    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with dataset: sbox32
    // result rd:x14(0x2f44a31c), rs1=>rd:x14(0x528a10af), rs2:x3(0x4b000000), imm:0x3
    TEST_RI_OP(aes32esmi, x14, x3, 0x3, 0x2f44a31c, 0x528a10af, 0x4b000000, x4, 0, x5)

inst_76:
    // Test 76:  Test with dataset: sbox32
    // result rd:x15(0x9ab2d291), rs1=>rd:x15(0xe19bfbc3), rs2:x2(0x0000004c), imm:0x0
    TEST_RI_OP(aes32esmi, x15, x2, 0x0, 0x9ab2d291, 0xe19bfbc3, 0x0000004c, x4, 4, x5)

inst_77:
    // Test 77:  Test with dataset: sbox32
    // result rd:x16(0x93992ffe), rs1=>rd:x16(0x707af2c0), rs2:x1(0x00004d00), imm:0x1
    TEST_RI_OP(aes32esmi, x16, x1, 0x1, 0x93992ffe, 0x707af2c0, 0x00004d00, x4, 8, x5)

inst_78:
    // Test 78:  Test with dataset: sbox32
    // result rd:x17(0x8b236174), rs1=>rd:x17(0xa47d105b), rs2:x31(0x004e0000), imm:0x2
    TEST_RI_OP(aes32esmi, x17, x31, 0x2, 0x8b236174, 0xa47d105b, 0x004e0000, x4, 12, x5)

inst_79:
    // Test 79:  Test with dataset: sbox32
    // result rd:x18(0x018c48a7), rs1=>rd:x18(0x121bcc23), rs2:x30(0x4f000000), imm:0x3
    TEST_RI_OP(aes32esmi, x18, x30, 0x3, 0x018c48a7, 0x121bcc23, 0x4f000000, x4, 16, x5)


    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with dataset: sbox32
    // result rd:x19(0x58b90233), rs1=>rd:x19(0xadea5195), rs2:x29(0x00000050), imm:0x0
    TEST_RI_OP(aes32esmi, x19, x29, 0x0, 0x58b90233, 0xadea5195, 0x00000050, x1, 0, x2)

inst_81:
    // Test 81:  Test with dataset: sbox32
    // result rd:x20(0x032e07a9), rs1=>rd:x20(0xd2ffbec1), rs2:x28(0x00005100), imm:0x1
    TEST_RI_OP(aes32esmi, x20, x28, 0x1, 0x032e07a9, 0xd2ffbec1, 0x00005100, x1, 4, x2)

inst_82:
    // Test 82:  Test with dataset: sbox32
    // result rd:x21(0xa8e1a8bb), rs1=>rd:x21(0xa8e1a8bb), rs2:x27(0x00520000), imm:0x2
    TEST_RI_OP(aes32esmi, x21, x27, 0x2, 0xa8e1a8bb, 0xa8e1a8bb, 0x00520000, x1, 8, x2)

inst_83:
    // Test 83:  Test with dataset: sbox32
    // result rd:x22(0x89e57226), rs1=>rd:x22(0x48c99fcb), rs2:x26(0x53000000), imm:0x3
    TEST_RI_OP(aes32esmi, x22, x26, 0x3, 0x89e57226, 0x48c99fcb, 0x53000000, x1, 12, x2)

inst_84:
    // Test 84:  Test with dataset: sbox32
    // result rd:x23(0x263d720f), rs1=>rd:x23(0x461d524f), rs2:x25(0x00000054), imm:0x0
    TEST_RI_OP(aes32esmi, x23, x25, 0x0, 0x263d720f, 0x461d524f, 0x00000054, x1, 16, x2)


    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with dataset: sbox32
    // result rd:x24(0xfcfcb61f), rs1=>rd:x24(0x528a10af), rs2:x24(0x00005500), imm:0x1
    TEST_RI_OP(aes32esmi, x24, x24, 0x1, 0xfcfcb61f, 0x528a10af, 0x00005500, x1, 0, x2)

inst_86:
    // Test 86:  Test with dataset: sbox32
    // result rd:x25(0x50e23372), rs1=>rd:x25(0xe19bfbc3), rs2:x23(0x00560000), imm:0x2
    TEST_RI_OP(aes32esmi, x25, x23, 0x2, 0x50e23372, 0xe19bfbc3, 0x00560000, x1, 4, x2)

inst_87:
    // Test 87:  Test with dataset: sbox32
    // result rd:x26(0xc697a99b), rs1=>rd:x26(0x707af2c0), rs2:x22(0x57000000), imm:0x3
    TEST_RI_OP(aes32esmi, x26, x22, 0x3, 0xc697a99b, 0x707af2c0, 0x57000000, x1, 8, x2)

inst_88:
    // Test 88:  Test with dataset: sbox32
    // result rd:x27(0x1a177a8f), rs1=>rd:x27(0xa47d105b), rs2:x21(0x00000058), imm:0x0
    TEST_RI_OP(aes32esmi, x27, x21, 0x0, 0x1a177a8f, 0xa47d105b, 0x00000058, x1, 12, x2)

inst_89:
    // Test 89:  Test with dataset: sbox32
    // result rd:x28(0xd9d04165), rs1=>rd:x28(0x121bcc23), rs2:x20(0x00005900), imm:0x1
    TEST_RI_OP(aes32esmi, x28, x20, 0x1, 0xd9d04165, 0x121bcc23, 0x00005900, x1, 16, x2)


    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with dataset: sbox32
    // result rd:x29(0x138d882b), rs1=>rd:x29(0xadea5195), rs2:x19(0x005a0000), imm:0x2
    TEST_RI_OP(aes32esmi, x29, x19, 0x2, 0x138d882b, 0xadea5195, 0x005a0000, x4, 0, x5)

inst_91:
    // Test 91:  Test with dataset: sbox32
    // result rd:x30(0xa0b487f8), rs1=>rd:x30(0xd2ffbec1), rs2:x18(0x5b000000), imm:0x3
    TEST_RI_OP(aes32esmi, x30, x18, 0x3, 0xa0b487f8, 0xd2ffbec1, 0x5b000000, x4, 4, x5)

inst_92:
    // Test 92:  Test with dataset: sbox32
    // result rd:x31(0x76abe22f), rs1=>rd:x31(0xa8e1a8bb), rs2:x17(0x0000005c), imm:0x0
    TEST_RI_OP(aes32esmi, x31, x17, 0x0, 0x76abe22f, 0xa8e1a8bb, 0x0000005c, x4, 8, x5)

inst_93:
    // Test 93:  Test with dataset: sbox32
    // result rd:x1(0x0485071f), rs1=>rd:x1(0x48c99fcb), rs2:x16(0x00005d00), imm:0x1
    TEST_RI_OP(aes32esmi, x1, x16, 0x1, 0x0485071f, 0x48c99fcb, 0x00005d00, x4, 12, x5)

inst_94:
    // Test 94:  Test with dataset: sbox32
    // result rd:x2(0x1eadba17), rs1=>rd:x2(0x461d524f), rs2:x15(0x005e0000), imm:0x2
    TEST_RI_OP(aes32esmi, x2, x15, 0x2, 0x1eadba17, 0x461d524f, 0x005e0000, x4, 16, x5)


    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with dataset: sbox32
    // result rd:x3(0xd7c0df60), rs1=>rd:x3(0x528a10af), rs2:x14(0x5f000000), imm:0x3
    TEST_RI_OP(aes32esmi, x3, x14, 0x3, 0xd7c0df60, 0x528a10af, 0x5f000000, x1, 0, x2)

inst_96:
    // Test 96:  Test with dataset: sbox32
    // result rd:x4(0x8a4b2b78), rs1=>rd:x4(0xe19bfbc3), rs2:x13(0x00000060), imm:0x0
    TEST_RI_OP(aes32esmi, x4, x13, 0x0, 0x8a4b2b78, 0xe19bfbc3, 0x00000060, x1, 4, x2)

inst_97:
    // Test 97:  Test with dataset: sbox32
    // result rd:x5(0x9f9537ea), rs1=>rd:x5(0x707af2c0), rs2:x12(0x00006100), imm:0x1
    TEST_RI_OP(aes32esmi, x5, x12, 0x1, 0x9f9537ea, 0x707af2c0, 0x00006100, x1, 8, x2)

inst_98:
    // Test 98:  Test with dataset: sbox32
    // result rd:x6(0x0e32f5f1), rs1=>rd:x6(0xa47d105b), rs2:x11(0x00620000), imm:0x2
    TEST_RI_OP(aes32esmi, x6, x11, 0x2, 0x0e32f5f1, 0xa47d105b, 0x00620000, x1, 12, x2)

inst_99:
    // Test 99:  Test with dataset: sbox32
    // result rd:x7(0xff0d37d8), rs1=>rd:x7(0x121bcc23), rs2:x10(0x63000000), imm:0x3
    TEST_RI_OP(aes32esmi, x7, x10, 0x3, 0xff0d37d8, 0x121bcc23, 0x63000000, x1, 16, x2)


    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with dataset: sbox32
    // result rd:x8(0x68a91213), rs1=>rd:x8(0xadea5195), rs2:x9(0x00000064), imm:0x0
    TEST_RI_OP(aes32esmi, x8, x9, 0x0, 0x68a91213, 0xadea5195, 0x00000064, x1, 0, x2)

inst_101:
    // Test 101:  Test with dataset: sbox32
    // result rd:x9(0x9fb22416), rs1=>rd:x9(0xd2ffbec1), rs2:x8(0x00006500), imm:0x1
    TEST_RI_OP(aes32esmi, x9, x8, 0x1, 0x9fb22416, 0xd2ffbec1, 0x00006500, x1, 4, x2)

inst_102:
    // Test 102:  Test with dataset: sbox32
    // result rd:x10(0x9b87fd88), rs1=>rd:x10(0xa8e1a8bb), rs2:x7(0x00660000), imm:0x2
    TEST_RI_OP(aes32esmi, x10, x7, 0x2, 0x9b87fd88, 0xa8e1a8bb, 0x00660000, x1, 8, x2)

inst_103:
    // Test 103:  Test with dataset: sbox32
    // result rd:x11(0x595d1a4e), rs1=>rd:x11(0x48c99fcb), rs2:x6(0x67000000), imm:0x3
    TEST_RI_OP(aes32esmi, x11, x6, 0x3, 0x595d1a4e, 0x48c99fcb, 0x67000000, x1, 12, x2)

inst_104:
    // Test 104:  Test with dataset: sbox32
    // result rd:x12(0x895817c5), rs1=>rd:x12(0x461d524f), rs2:x5(0x00000068), imm:0x0
    TEST_RI_OP(aes32esmi, x12, x5, 0x0, 0x895817c5, 0x461d524f, 0x00000068, x1, 16, x2)


    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with dataset: sbox32
    // result rd:x13(0xab73f9bf), rs1=>rd:x13(0x528a10af), rs2:x4(0x00006900), imm:0x1
    TEST_RI_OP(aes32esmi, x13, x4, 0x1, 0xab73f9bf, 0x528a10af, 0x00006900, x5, 0, x6)

inst_106:
    // Test 106:  Test with dataset: sbox32
    // result rd:x14(0xe39ffdc1), rs1=>rd:x14(0xe19bfbc3), rs2:x3(0x006a0000), imm:0x2
    TEST_RI_OP(aes32esmi, x14, x3, 0x2, 0xe39ffdc1, 0xe19bfbc3, 0x006a0000, x5, 4, x6)

inst_107:
    // Test 107:  Test with dataset: sbox32
    // result rd:x15(0x8efb8dbf), rs1=>rd:x15(0x707af2c0), rs2:x2(0x6b000000), imm:0x3
    TEST_RI_OP(aes32esmi, x15, x2, 0x3, 0x8efb8dbf, 0x707af2c0, 0x6b000000, x5, 8, x6)

inst_108:
    // Test 108:  Test with dataset: sbox32
    // result rd:x16(0x542d40fb), rs1=>rd:x16(0xa47d105b), rs2:x1(0x0000006c), imm:0x0
    TEST_RI_OP(aes32esmi, x16, x1, 0x0, 0x542d40fb, 0xa47d105b, 0x0000006c, x5, 12, x6)

inst_109:
    // Test 109:  Test with dataset: sbox32
    // result rd:x17(0x2e27b467), rs1=>rd:x17(0x121bcc23), rs2:x31(0x00006d00), imm:0x1
    TEST_RI_OP(aes32esmi, x17, x31, 0x1, 0x2e27b467, 0x121bcc23, 0x00006d00, x5, 16, x6)


    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with dataset: sbox32
    // result rd:x18(0x32cfeb0a), rs1=>rd:x18(0xadea5195), rs2:x30(0x006e0000), imm:0x2
    TEST_RI_OP(aes32esmi, x18, x30, 0x2, 0x32cfeb0a, 0xadea5195, 0x006e0000, x1, 0, x2)

inst_111:
    // Test 111:  Test with dataset: sbox32
    // result rd:x19(0x991c1669), rs1=>rd:x19(0xd2ffbec1), rs2:x29(0x6f000000), imm:0x3
    TEST_RI_OP(aes32esmi, x19, x29, 0x3, 0x991c1669, 0xd2ffbec1, 0x6f000000, x1, 4, x2)

inst_112:
    // Test 112:  Test with dataset: sbox32
    // result rd:x20(0x5bb0f919), rs1=>rd:x20(0xa8e1a8bb), rs2:x28(0x00000070), imm:0x0
    TEST_RI_OP(aes32esmi, x20, x28, 0x0, 0x5bb0f919, 0xa8e1a8bb, 0x00000070, x1, 8, x2)

inst_113:
    // Test 113:  Test with dataset: sbox32
    // result rd:x21(0xeb6ac235), rs1=>rd:x21(0x48c99fcb), rs2:x27(0x00007100), imm:0x1
    TEST_RI_OP(aes32esmi, x21, x27, 0x1, 0xeb6ac235, 0x48c99fcb, 0x00007100, x1, 12, x2)

inst_114:
    // Test 114:  Test with dataset: sbox32
    // result rd:x22(0x069d920f), rs1=>rd:x22(0x461d524f), rs2:x26(0x00720000), imm:0x2
    TEST_RI_OP(aes32esmi, x22, x26, 0x2, 0x069d920f, 0x461d524f, 0x00720000, x1, 16, x2)


    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with dataset: sbox32
    // result rd:x23(0x57009f20), rs1=>rd:x23(0x528a10af), rs2:x25(0x73000000), imm:0x3
    TEST_RI_OP(aes32esmi, x23, x25, 0x3, 0x57009f20, 0x528a10af, 0x73000000, x1, 0, x2)

inst_116:
    // Test 116:  Test with dataset: sbox32
    // result rd:x24(0xad92924b), rs1=>rd:x24(0xe19bfbc3), rs2:x24(0x00000074), imm:0x0
    TEST_RI_OP(aes32esmi, x24, x24, 0x0, 0xad92924b, 0xe19bfbc3, 0x00000074, x1, 4, x2)

inst_117:
    // Test 117:  Test with dataset: sbox32
    // result rd:x25(0xede7d37c), rs1=>rd:x25(0x707af2c0), rs2:x23(0x00007500), imm:0x1
    TEST_RI_OP(aes32esmi, x25, x23, 0x1, 0xede7d37c, 0x707af2c0, 0x00007500, x1, 8, x2)

inst_118:
    // Test 118:  Test with dataset: sbox32
    // result rd:x26(0x9c0d5863), rs1=>rd:x26(0xa47d105b), rs2:x22(0x00760000), imm:0x2
    TEST_RI_OP(aes32esmi, x26, x22, 0x2, 0x9c0d5863, 0xa47d105b, 0x00760000, x1, 12, x2)

inst_119:
    // Test 119:  Test with dataset: sbox32
    // result rd:x27(0xe31f39d6), rs1=>rd:x27(0x121bcc23), rs2:x21(0x77000000), imm:0x3
    TEST_RI_OP(aes32esmi, x27, x21, 0x3, 0xe31f39d6, 0x121bcc23, 0x77000000, x1, 16, x2)


    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with dataset: sbox32
    // result rd:x28(0x7256edf6), rs1=>rd:x28(0xadea5195), rs2:x20(0x00000078), imm:0x0
    TEST_RI_OP(aes32esmi, x28, x20, 0x0, 0x7256edf6, 0xadea5195, 0x00000078, x5, 0, x6)

inst_121:
    // Test 121:  Test with dataset: sbox32
    // result rd:x29(0x6449c900), rs1=>rd:x29(0xd2ffbec1), rs2:x19(0x00007900), imm:0x1
    TEST_RI_OP(aes32esmi, x29, x19, 0x1, 0x6449c900, 0xd2ffbec1, 0x00007900, x5, 4, x6)

inst_122:
    // Test 122:  Test with dataset: sbox32
    // result rd:x30(0x724edd61), rs1=>rd:x30(0xa8e1a8bb), rs2:x18(0x007a0000), imm:0x2
    TEST_RI_OP(aes32esmi, x30, x18, 0x2, 0x724edd61, 0xa8e1a8bb, 0x007a0000, x5, 8, x6)

inst_123:
    // Test 123:  Test with dataset: sbox32
    // result rd:x31(0x0aaabeea), rs1=>rd:x31(0x48c99fcb), rs2:x17(0x7b000000), imm:0x3
    TEST_RI_OP(aes32esmi, x31, x17, 0x3, 0x0aaabeea, 0x48c99fcb, 0x7b000000, x5, 12, x6)

inst_124:
    // Test 124:  Test with dataset: sbox32
    // result rd:x1(0x760d426f), rs1=>rd:x1(0x461d524f), rs2:x16(0x0000007c), imm:0x0
    TEST_RI_OP(aes32esmi, x1, x16, 0x0, 0x760d426f, 0x461d524f, 0x0000007c, x5, 16, x6)


    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with dataset: sbox32
    // result rd:x2(0xad75f5b5), rs1=>rd:x2(0x528a10af), rs2:x15(0x00007d00), imm:0x1
    TEST_RI_OP(aes32esmi, x2, x15, 0x1, 0xad75f5b5, 0x528a10af, 0x00007d00, x1, 0, x7)

inst_126:
    // Test 126:  Test with dataset: sbox32
    // result rd:x3(0x1266f530), rs1=>rd:x3(0xe19bfbc3), rs2:x14(0x007e0000), imm:0x2
    TEST_RI_OP(aes32esmi, x3, x14, 0x2, 0x1266f530, 0xe19bfbc3, 0x007e0000, x1, 4, x7)

inst_127:
    // Test 127:  Test with dataset: sbox32
    // result rd:x4(0xcf172012), rs1=>rd:x4(0x707af2c0), rs2:x13(0x7f000000), imm:0x3
    TEST_RI_OP(aes32esmi, x4, x13, 0x3, 0xcf172012, 0x707af2c0, 0x7f000000, x1, 8, x7)

inst_128:
    // Test 128:  Test with dataset: sbox32
    // result rd:x5(0xe8b0ddda), rs1=>rd:x5(0xa47d105b), rs2:x12(0x00000080), imm:0x0
    TEST_RI_OP(aes32esmi, x5, x12, 0x0, 0xe8b0ddda, 0xa47d105b, 0x00000080, x1, 12, x7)

inst_129:
    // Test 129:  Test with dataset: sbox32
    // result rd:x6(0x1e17d437), rs1=>rd:x6(0x121bcc23), rs2:x11(0x00008100), imm:0x1
    TEST_RI_OP(aes32esmi, x6, x11, 0x1, 0x1e17d437, 0x121bcc23, 0x00008100, x1, 16, x7)


    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with dataset: sbox32
    // result rd:x7(0xbecc6486), rs1=>rd:x7(0xadea5195), rs2:x10(0x00820000), imm:0x2
    TEST_RI_OP(aes32esmi, x7, x10, 0x2, 0xbecc6486, 0xadea5195, 0x00820000, x1, 0, x2)

inst_131:
    // Test 131:  Test with dataset: sbox32
    // result rd:x8(0x11d0522d), rs1=>rd:x8(0xd2ffbec1), rs2:x9(0x83000000), imm:0x3
    TEST_RI_OP(aes32esmi, x8, x9, 0x3, 0x11d0522d, 0xd2ffbec1, 0x83000000, x1, 4, x2)

inst_132:
    // Test 132:  Test with dataset: sbox32
    // result rd:x9(0x49bef705), rs1=>rd:x9(0xa8e1a8bb), rs2:x8(0x00000084), imm:0x0
    TEST_RI_OP(aes32esmi, x9, x8, 0x0, 0x49bef705, 0xa8e1a8bb, 0x00000084, x1, 8, x2)

inst_133:
    // Test 133:  Test with dataset: sbox32
    // result rd:x10(0xdf5eaa69), rs1=>rd:x10(0x48c99fcb), rs2:x7(0x00008500), imm:0x1
    TEST_RI_OP(aes32esmi, x10, x7, 0x1, 0xdf5eaa69, 0x48c99fcb, 0x00008500, x1, 12, x2)

inst_134:
    // Test 134:  Test with dataset: sbox32
    // result rd:x11(0x02959e0b), rs1=>rd:x11(0x461d524f), rs2:x6(0x00860000), imm:0x2
    TEST_RI_OP(aes32esmi, x11, x6, 0x2, 0x02959e0b, 0x461d524f, 0x00860000, x1, 16, x2)


    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with dataset: sbox32
    // result rd:x12(0x7cb307b8), rs1=>rd:x12(0x528a10af), rs2:x5(0x87000000), imm:0x3
    TEST_RI_OP(aes32esmi, x12, x5, 0x3, 0x7cb307b8, 0x528a10af, 0x87000000, x6, 0, x7)

inst_136:
    // Test 136:  Test with dataset: sbox32
    // result rd:x13(0xb65f3f50), rs1=>rd:x13(0xe19bfbc3), rs2:x4(0x00000088), imm:0x0
    TEST_RI_OP(aes32esmi, x13, x4, 0x0, 0xb65f3f50, 0xe19bfbc3, 0x00000088, x6, 4, x7)

inst_137:
    // Test 137:  Test with dataset: sbox32
    // result rd:x14(0xd7dda732), rs1=>rd:x14(0x707af2c0), rs2:x3(0x00008900), imm:0x1
    TEST_RI_OP(aes32esmi, x14, x3, 0x1, 0xd7dda732, 0x707af2c0, 0x00008900, x6, 8, x7)

inst_138:
    // Test 138:  Test with dataset: sbox32
    // result rd:x15(0xda819225), rs1=>rd:x15(0xa47d105b), rs2:x2(0x008a0000), imm:0x2
    TEST_RI_OP(aes32esmi, x15, x2, 0x2, 0xda819225, 0xa47d105b, 0x008a0000, x6, 12, x7)

inst_139:
    // Test 139:  Test with dataset: sbox32
    // result rd:x16(0x685cf11e), rs1=>rd:x16(0x121bcc23), rs2:x1(0x8b000000), imm:0x3
    TEST_RI_OP(aes32esmi, x16, x1, 0x3, 0x685cf11e, 0x121bcc23, 0x8b000000, x6, 16, x7)


    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with dataset: sbox32
    // result rd:x17(0x018e355d), rs1=>rd:x17(0xadea5195), rs2:x31(0x0000008c), imm:0x0
    TEST_RI_OP(aes32esmi, x17, x31, 0x0, 0x018e355d, 0xadea5195, 0x0000008c, x1, 0, x2)

inst_141:
    // Test 141:  Test with dataset: sbox32
    // result rd:x18(0x8fa20426), rs1=>rd:x18(0xd2ffbec1), rs2:x30(0x00008d00), imm:0x1
    TEST_RI_OP(aes32esmi, x18, x30, 0x1, 0x8fa20426, 0xd2ffbec1, 0x00008d00, x1, 4, x2)

inst_142:
    // Test 142:  Test with dataset: sbox32
    // result rd:x19(0xb1d383a2), rs1=>rd:x19(0xa8e1a8bb), rs2:x29(0x008e0000), imm:0x2
    TEST_RI_OP(aes32esmi, x19, x29, 0x2, 0xb1d383a2, 0xa8e1a8bb, 0x008e0000, x1, 8, x2)

inst_143:
    // Test 143:  Test with dataset: sbox32
    // result rd:x20(0xae5cecb8), rs1=>rd:x20(0x48c99fcb), rs2:x28(0x8f000000), imm:0x3
    TEST_RI_OP(aes32esmi, x20, x28, 0x3, 0xae5cecb8, 0x48c99fcb, 0x8f000000, x1, 12, x2)

inst_144:
    // Test 144:  Test with dataset: sbox32
    // result rd:x21(0xe67d328f), rs1=>rd:x21(0x461d524f), rs2:x27(0x00000090), imm:0x0
    TEST_RI_OP(aes32esmi, x21, x27, 0x0, 0xe67d328f, 0x461d524f, 0x00000090, x1, 16, x2)


    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with dataset: sbox32
    // result rd:x22(0xd30b0937), rs1=>rd:x22(0x528a10af), rs2:x26(0x00009100), imm:0x1
    TEST_RI_OP(aes32esmi, x22, x26, 0x1, 0xd30b0937, 0x528a10af, 0x00009100, x1, 0, x2)

inst_146:
    // Test 146:  Test with dataset: sbox32
    // result rd:x23(0xae052a8c), rs1=>rd:x23(0xe19bfbc3), rs2:x25(0x00920000), imm:0x2
    TEST_RI_OP(aes32esmi, x23, x25, 0x2, 0xae052a8c, 0xe19bfbc3, 0x00920000, x1, 4, x2)

inst_147:
    // Test 147:  Test with dataset: sbox32
    // result rd:x24(0x307fdcdc), rs1=>rd:x24(0x707af2c0), rs2:x24(0x93000000), imm:0x3
    TEST_RI_OP(aes32esmi, x24, x24, 0x3, 0x307fdcdc, 0x707af2c0, 0x93000000, x1, 8, x2)

inst_148:
    // Test 148:  Test with dataset: sbox32
    // result rd:x25(0xc25f321f), rs1=>rd:x25(0xa47d105b), rs2:x23(0x00000094), imm:0x0
    TEST_RI_OP(aes32esmi, x25, x23, 0x0, 0xc25f321f, 0xa47d105b, 0x00000094, x1, 12, x2)

inst_149:
    // Test 149:  Test with dataset: sbox32
    // result rd:x26(0x3831985d), rs1=>rd:x26(0x121bcc23), rs2:x22(0x00009500), imm:0x1
    TEST_RI_OP(aes32esmi, x26, x22, 0x1, 0x3831985d, 0x121bcc23, 0x00009500, x1, 16, x2)


    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with dataset: sbox32
    // result rd:x27(0x3dd1fa05), rs1=>rd:x27(0xadea5195), rs2:x21(0x00960000), imm:0x2
    TEST_RI_OP(aes32esmi, x27, x21, 0x2, 0x3dd1fa05, 0xadea5195, 0x00960000, x6, 0, x7)

inst_151:
    // Test 151:  Test with dataset: sbox32
    // result rd:x28(0xd97c3649), rs1=>rd:x28(0xd2ffbec1), rs2:x20(0x97000000), imm:0x3
    TEST_RI_OP(aes32esmi, x28, x20, 0x3, 0xd97c3649, 0xd2ffbec1, 0x97000000, x6, 4, x7)

inst_152:
    // Test 152:  Test with dataset: sbox32
    // result rd:x29(0x62a7ee37), rs1=>rd:x29(0xa8e1a8bb), rs2:x19(0x00000098), imm:0x0
    TEST_RI_OP(aes32esmi, x29, x19, 0x0, 0x62a7ee37, 0xa8e1a8bb, 0x00000098, x6, 8, x7)

inst_153:
    // Test 153:  Test with dataset: sbox32
    // result rd:x30(0xa62758e2), rs1=>rd:x30(0x48c99fcb), rs2:x18(0x00009900), imm:0x1
    TEST_RI_OP(aes32esmi, x30, x18, 0x1, 0xa62758e2, 0x48c99fcb, 0x00009900, x6, 12, x7)

inst_154:
    // Test 154:  Test with dataset: sbox32
    // result rd:x31(0xfe7681f7), rs1=>rd:x31(0x461d524f), rs2:x17(0x009a0000), imm:0x2
    TEST_RI_OP(aes32esmi, x31, x17, 0x2, 0xfe7681f7, 0x461d524f, 0x009a0000, x6, 16, x7)


    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with dataset: sbox32
    // result rd:x1(0x7ab604bb), rs1=>rd:x1(0x528a10af), rs2:x16(0x9b000000), imm:0x3
    TEST_RI_OP(aes32esmi, x1, x16, 0x3, 0x7ab604bb, 0x528a10af, 0x9b000000, x6, 0, x7)

inst_156:
    // Test 156:  Test with dataset: sbox32
    // result rd:x2(0x98452564), rs1=>rd:x2(0xe19bfbc3), rs2:x15(0x0000009c), imm:0x0
    TEST_RI_OP(aes32esmi, x2, x15, 0x0, 0x98452564, 0xe19bfbc3, 0x0000009c, x6, 4, x7)

inst_157:
    // Test 157:  Test with dataset: sbox32
    // result rd:x3(0x2e244e22), rs1=>rd:x3(0x707af2c0), rs2:x14(0x00009d00), imm:0x1
    TEST_RI_OP(aes32esmi, x3, x14, 0x1, 0x2e244e22, 0x707af2c0, 0x00009d00, x6, 8, x7)

inst_158:
    // Test 158:  Test with dataset: sbox32
    // result rd:x4(0xaf6b0d50), rs1=>rd:x4(0xa47d105b), rs2:x13(0x009e0000), imm:0x2
    TEST_RI_OP(aes32esmi, x4, x13, 0x2, 0xaf6b0d50, 0xa47d105b, 0x009e0000, x6, 12, x7)

inst_159:
    // Test 159:  Test with dataset: sbox32
    // result rd:x5(0xbf6d17f8), rs1=>rd:x5(0x121bcc23), rs2:x12(0x9f000000), imm:0x3
    TEST_RI_OP(aes32esmi, x5, x12, 0x3, 0xbf6d17f8, 0x121bcc23, 0x9f000000, x6, 16, x7)


    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with dataset: sbox32
    // result rd:x6(0x960ab14e), rs1=>rd:x6(0xadea5195), rs2:x11(0x000000a0), imm:0x0
    TEST_RI_OP(aes32esmi, x6, x11, 0x0, 0x960ab14e, 0xadea5195, 0x000000a0, x1, 0, x2)

inst_161:
    // Test 161:  Test with dataset: sbox32
    // result rd:x7(0xe0cdda97), rs1=>rd:x7(0xd2ffbec1), rs2:x10(0x0000a100), imm:0x1
    TEST_RI_OP(aes32esmi, x7, x10, 0x1, 0xe0cdda97, 0xd2ffbec1, 0x0000a100, x1, 4, x2)

inst_162:
    // Test 162:  Test with dataset: sbox32
    // result rd:x8(0x9295e681), rs1=>rd:x8(0xa8e1a8bb), rs2:x9(0x00a20000), imm:0x2
    TEST_RI_OP(aes32esmi, x8, x9, 0x2, 0x9295e681, 0xa8e1a8bb, 0x00a20000, x1, 8, x2)

inst_163:
    // Test 163:  Test with dataset: sbox32
    // result rd:x9(0x5cd795c1), rs1=>rd:x9(0x48c99fcb), rs2:x8(0xa3000000), imm:0x3
    TEST_RI_OP(aes32esmi, x9, x8, 0x3, 0x5cd795c1, 0x48c99fcb, 0xa3000000, x1, 12, x2)

inst_164:
    // Test 164:  Test with dataset: sbox32
    // result rd:x10(0x9d541bdd), rs1=>rd:x10(0x461d524f), rs2:x7(0x000000a4), imm:0x0
    TEST_RI_OP(aes32esmi, x10, x7, 0x0, 0x9d541bdd, 0x461d524f, 0x000000a4, x1, 16, x2)


    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with dataset: sbox32
    // result rd:x11(0x548c1ca5), rs1=>rd:x11(0x528a10af), rs2:x6(0x0000a500), imm:0x1
    TEST_RI_OP(aes32esmi, x11, x6, 0x1, 0x548c1ca5, 0x528a10af, 0x0000a500, x1, 0, x7)

inst_166:
    // Test 166:  Test with dataset: sbox32
    // result rd:x12(0xc5d397e7), rs1=>rd:x12(0xe19bfbc3), rs2:x5(0x00a60000), imm:0x2
    TEST_RI_OP(aes32esmi, x12, x5, 0x2, 0xc5d397e7, 0xe19bfbc3, 0x00a60000, x1, 4, x7)

inst_167:
    // Test 167:  Test with dataset: sbox32
    // result rd:x13(0xc89eae9c), rs1=>rd:x13(0x707af2c0), rs2:x4(0xa7000000), imm:0x3
    TEST_RI_OP(aes32esmi, x13, x4, 0x3, 0xc89eae9c, 0x707af2c0, 0xa7000000, x1, 8, x7)

inst_168:
    // Test 168:  Test with dataset: sbox32
    // result rd:x14(0xf9bfd2c4), rs1=>rd:x14(0xa47d105b), rs2:x3(0x000000a8), imm:0x0
    TEST_RI_OP(aes32esmi, x14, x3, 0x0, 0xf9bfd2c4, 0xa47d105b, 0x000000a8, x1, 12, x7)

inst_169:
    // Test 169:  Test with dataset: sbox32
    // result rd:x15(0xc1c8714d), rs1=>rd:x15(0x121bcc23), rs2:x2(0x0000a900), imm:0x1
    TEST_RI_OP(aes32esmi, x15, x2, 0x1, 0xc1c8714d, 0x121bcc23, 0x0000a900, x1, 16, x7)


    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with dataset: sbox32
    // result rd:x16(0x01a9be39), rs1=>rd:x16(0xadea5195), rs2:x1(0x00aa0000), imm:0x2
    TEST_RI_OP(aes32esmi, x16, x1, 0x2, 0x01a9be39, 0xadea5195, 0x00aa0000, x2, 0, x3)

inst_171:
    // Test 171:  Test with dataset: sbox32
    // result rd:x17(0x1659dca3), rs1=>rd:x17(0xd2ffbec1), rs2:x31(0xab000000), imm:0x3
    TEST_RI_OP(aes32esmi, x17, x31, 0x3, 0x1659dca3, 0xd2ffbec1, 0xab000000, x2, 4, x3)

inst_172:
    // Test 172:  Test with dataset: sbox32
    // result rd:x18(0x00703982), rs1=>rd:x18(0xa8e1a8bb), rs2:x30(0x000000ac), imm:0x0
    TEST_RI_OP(aes32esmi, x18, x30, 0x0, 0x00703982, 0xa8e1a8bb, 0x000000ac, x2, 8, x3)

inst_173:
    // Test 173:  Test with dataset: sbox32
    // result rd:x19(0xdd5cae6f), rs1=>rd:x19(0x48c99fcb), rs2:x29(0x0000ad00), imm:0x1
    TEST_RI_OP(aes32esmi, x19, x29, 0x1, 0xdd5cae6f, 0x48c99fcb, 0x0000ad00, x2, 12, x3)

inst_174:
    // Test 174:  Test with dataset: sbox32
    // result rd:x20(0xa2ce65ab), rs1=>rd:x20(0x461d524f), rs2:x28(0x00ae0000), imm:0x2
    TEST_RI_OP(aes32esmi, x20, x28, 0x2, 0xa2ce65ab, 0x461d524f, 0x00ae0000, x2, 16, x3)


    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with dataset: sbox32
    // result rd:x21(0xa00169d6), rs1=>rd:x21(0x528a10af), rs2:x27(0xaf000000), imm:0x3
    TEST_RI_OP(aes32esmi, x21, x27, 0x3, 0xa00169d6, 0x528a10af, 0xaf000000, x1, 0, x2)

inst_176:
    // Test 176:  Test with dataset: sbox32
    // result rd:x22(0xd37c1c16), rs1=>rd:x22(0xe19bfbc3), rs2:x26(0x000000b0), imm:0x0
    TEST_RI_OP(aes32esmi, x22, x26, 0x0, 0xd37c1c16, 0xe19bfbc3, 0x000000b0, x1, 4, x2)

inst_177:
    // Test 177:  Test with dataset: sbox32
    // result rd:x23(0xb8b27983), rs1=>rd:x23(0x707af2c0), rs2:x25(0x0000b100), imm:0x1
    TEST_RI_OP(aes32esmi, x23, x25, 0x1, 0xb8b27983, 0x707af2c0, 0x0000b100, x1, 8, x2)

inst_178:
    // Test 178:  Test with dataset: sbox32
    // result rd:x24(0x37dc5937), rs1=>rd:x24(0xa47d105b), rs2:x24(0x00b20000), imm:0x2
    TEST_RI_OP(aes32esmi, x24, x24, 0x2, 0x37dc5937, 0xa47d105b, 0x00b20000, x1, 12, x2)

inst_179:
    // Test 179:  Test with dataset: sbox32
    // result rd:x25(0xc8aca14e), rs1=>rd:x25(0x121bcc23), rs2:x23(0xb3000000), imm:0x3
    TEST_RI_OP(aes32esmi, x25, x23, 0x3, 0xc8aca14e, 0x121bcc23, 0xb3000000, x1, 16, x2)


    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with dataset: sbox32
    // result rd:x26(0x2167dc94), rs1=>rd:x26(0xadea5195), rs2:x22(0x000000b4), imm:0x0
    TEST_RI_OP(aes32esmi, x26, x22, 0x0, 0x2167dc94, 0xadea5195, 0x000000b4, x1, 0, x7)

inst_181:
    // Test 181:  Test with dataset: sbox32
    // result rd:x27(0x072a0fa5), rs1=>rd:x27(0xd2ffbec1), rs2:x21(0x0000b500), imm:0x1
    TEST_RI_OP(aes32esmi, x27, x21, 0x1, 0x072a0fa5, 0xd2ffbec1, 0x0000b500, x1, 4, x7)

inst_182:
    // Test 182:  Test with dataset: sbox32
    // result rd:x28(0xe67d7af5), rs1=>rd:x28(0xa8e1a8bb), rs2:x20(0x00b60000), imm:0x2
    TEST_RI_OP(aes32esmi, x28, x20, 0x2, 0xe67d7af5, 0xa8e1a8bb, 0x00b60000, x1, 8, x7)

inst_183:
    // Test 183:  Test with dataset: sbox32
    // result rd:x29(0x01293662), rs1=>rd:x29(0x48c99fcb), rs2:x19(0xb7000000), imm:0x3
    TEST_RI_OP(aes32esmi, x29, x19, 0x3, 0x01293662, 0x48c99fcb, 0xb7000000, x1, 12, x7)

inst_184:
    // Test 184:  Test with dataset: sbox32
    // result rd:x30(0xf2713e97), rs1=>rd:x30(0x461d524f), rs2:x18(0x000000b8), imm:0x0
    TEST_RI_OP(aes32esmi, x30, x18, 0x0, 0xf2713e97, 0x461d524f, 0x000000b8, x1, 16, x7)


    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with dataset: sbox32
    // result rd:x31(0x04dcbc55), rs1=>rd:x31(0x528a10af), rs2:x17(0x0000b900), imm:0x1
    TEST_RI_OP(aes32esmi, x31, x17, 0x1, 0x04dcbc55, 0x528a10af, 0x0000b900, x5, 0, x6)

inst_186:
    // Test 186:  Test with dataset: sbox32
    // result rd:x1(0x1568fc37), rs1=>rd:x1(0xe19bfbc3), rs2:x16(0x00ba0000), imm:0x2
    TEST_RI_OP(aes32esmi, x1, x16, 0x2, 0x1568fc37, 0xe19bfbc3, 0x00ba0000, x5, 4, x6)

inst_187:
    // Test 187:  Test with dataset: sbox32
    // result rd:x2(0xbf5f182a), rs1=>rd:x2(0x707af2c0), rs2:x15(0xbb000000), imm:0x3
    TEST_RI_OP(aes32esmi, x2, x15, 0x3, 0xbf5f182a, 0x707af2c0, 0xbb000000, x5, 8, x6)

inst_188:
    // Test 188:  Test with dataset: sbox32
    // result rd:x3(0x0b187591), rs1=>rd:x3(0xa47d105b), rs2:x14(0x000000bc), imm:0x0
    TEST_RI_OP(aes32esmi, x3, x14, 0x0, 0x0b187591, 0xa47d105b, 0x000000bc, x5, 12, x6)

inst_189:
    // Test 189:  Test with dataset: sbox32
    // result rd:x4(0x686138ad), rs1=>rd:x4(0x121bcc23), rs2:x13(0x0000bd00), imm:0x1
    TEST_RI_OP(aes32esmi, x4, x13, 0x1, 0x686138ad, 0x121bcc23, 0x0000bd00, x5, 16, x6)


    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with dataset: sbox32
    // result rd:x5(0x03adb83b), rs1=>rd:x5(0xadea5195), rs2:x12(0x00be0000), imm:0x2
    TEST_RI_OP(aes32esmi, x5, x12, 0x2, 0x03adb83b, 0xadea5195, 0x00be0000, x1, 0, x2)

inst_191:
    // Test 191:  Test with dataset: sbox32
    // result rd:x6(0xc2e7b6c9), rs1=>rd:x6(0xd2ffbec1), rs2:x11(0xbf000000), imm:0x3
    TEST_RI_OP(aes32esmi, x6, x11, 0x3, 0xc2e7b6c9, 0xd2ffbec1, 0xbf000000, x1, 4, x2)

inst_192:
    // Test 192:  Test with dataset: sbox32
    // result rd:x7(0x7d5b12d4), rs1=>rd:x7(0xa8e1a8bb), rs2:x10(0x000000c0), imm:0x0
    TEST_RI_OP(aes32esmi, x7, x10, 0x0, 0x7d5b12d4, 0xa8e1a8bb, 0x000000c0, x1, 8, x2)

inst_193:
    // Test 193:  Test with dataset: sbox32
    // result rd:x8(0x30b16f43), rs1=>rd:x8(0x48c99fcb), rs2:x9(0x0000c100), imm:0x1
    TEST_RI_OP(aes32esmi, x8, x9, 0x1, 0x30b16f43, 0x48c99fcb, 0x0000c100, x1, 12, x2)

inst_194:
    // Test 194:  Test with dataset: sbox32
    // result rd:x9(0x63573d6a), rs1=>rd:x9(0x461d524f), rs2:x8(0x00c20000), imm:0x2
    TEST_RI_OP(aes32esmi, x9, x8, 0x2, 0x63573d6a, 0x461d524f, 0x00c20000, x1, 16, x2)


    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with dataset: sbox32
    // result rd:x10(0x0ef83e81), rs1=>rd:x10(0x528a10af), rs2:x7(0xc3000000), imm:0x3
    TEST_RI_OP(aes32esmi, x10, x7, 0x3, 0x0ef83e81, 0x528a10af, 0xc3000000, x1, 0, x2)

inst_196:
    // Test 196:  Test with dataset: sbox32
    // result rd:x11(0xc587e7fb), rs1=>rd:x11(0xe19bfbc3), rs2:x6(0x000000c4), imm:0x0
    TEST_RI_OP(aes32esmi, x11, x6, 0x0, 0xc587e7fb, 0xe19bfbc3, 0x000000c4, x1, 4, x2)

inst_197:
    // Test 197:  Test with dataset: sbox32
    // result rd:x12(0xd6dca531), rs1=>rd:x12(0x707af2c0), rs2:x5(0x0000c500), imm:0x1
    TEST_RI_OP(aes32esmi, x12, x5, 0x1, 0xd6dca531, 0x707af2c0, 0x0000c500, x1, 8, x2)

inst_198:
    // Test 198:  Test with dataset: sbox32
    // result rd:x13(0x100ed7ef), rs1=>rd:x13(0xa47d105b), rs2:x4(0x00c60000), imm:0x2
    TEST_RI_OP(aes32esmi, x13, x4, 0x2, 0x100ed7ef, 0xa47d105b, 0x00c60000, x1, 12, x2)

inst_199:
    // Test 199:  Test with dataset: sbox32
    // result rd:x14(0x854a0ae5), rs1=>rd:x14(0x121bcc23), rs2:x3(0xc7000000), imm:0x3
    TEST_RI_OP(aes32esmi, x14, x3, 0x3, 0x854a0ae5, 0x121bcc23, 0xc7000000, x1, 16, x2)


    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with dataset: sbox32
    // result rd:x15(0x8e02b95e), rs1=>rd:x15(0xadea5195), rs2:x2(0x000000c8), imm:0x0
    TEST_RI_OP(aes32esmi, x15, x2, 0x0, 0x8e02b95e, 0xadea5195, 0x000000c8, x3, 0, x4)

inst_201:
    // Test 201:  Test with dataset: sbox32
    // result rd:x16(0x0f221fbd), rs1=>rd:x16(0xd2ffbec1), rs2:x1(0x0000c900), imm:0x1
    TEST_RI_OP(aes32esmi, x16, x1, 0x1, 0x0f221fbd, 0xd2ffbec1, 0x0000c900, x3, 4, x4)

inst_202:
    // Test 202:  Test with dataset: sbox32
    // result rd:x17(0xdc0934cf), rs1=>rd:x17(0xa8e1a8bb), rs2:x31(0x00ca0000), imm:0x2
    TEST_RI_OP(aes32esmi, x17, x31, 0x2, 0xdc0934cf, 0xa8e1a8bb, 0x00ca0000, x3, 8, x4)

inst_203:
    // Test 203:  Test with dataset: sbox32
    // result rd:x18(0x76e880d4), rs1=>rd:x18(0x48c99fcb), rs2:x30(0xcb000000), imm:0x3
    TEST_RI_OP(aes32esmi, x18, x30, 0x3, 0x76e880d4, 0x48c99fcb, 0xcb000000, x3, 12, x4)

inst_204:
    // Test 204:  Test with dataset: sbox32
    // result rd:x19(0x9b5619d9), rs1=>rd:x19(0x461d524f), rs2:x29(0x000000cc), imm:0x0
    TEST_RI_OP(aes32esmi, x19, x29, 0x0, 0x9b5619d9, 0x461d524f, 0x000000cc, x3, 16, x4)


    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with dataset: sbox32
    // result rd:x20(0xef377173), rs1=>rd:x20(0x528a10af), rs2:x28(0x0000cd00), imm:0x1
    TEST_RI_OP(aes32esmi, x20, x28, 0x1, 0xef377173, 0x528a10af, 0x0000cd00, x1, 0, x2)

inst_206:
    // Test 206:  Test with dataset: sbox32
    // result rd:x21(0x6a967d48), rs1=>rd:x21(0xe19bfbc3), rs2:x27(0x00ce0000), imm:0x2
    TEST_RI_OP(aes32esmi, x21, x27, 0x2, 0x6a967d48, 0xe19bfbc3, 0x00ce0000, x1, 4, x2)

inst_207:
    // Test 207:  Test with dataset: sbox32
    // result rd:x22(0x7fff784a), rs1=>rd:x22(0x707af2c0), rs2:x26(0xcf000000), imm:0x3
    TEST_RI_OP(aes32esmi, x22, x26, 0x3, 0x7fff784a, 0x707af2c0, 0xcf000000, x1, 8, x2)

inst_208:
    // Test 208:  Test with dataset: sbox32
    // result rd:x23(0x340d60bb), rs1=>rd:x23(0xa47d105b), rs2:x25(0x000000d0), imm:0x0
    TEST_RI_OP(aes32esmi, x23, x25, 0x0, 0x340d60bb, 0xa47d105b, 0x000000d0, x1, 12, x2)

inst_209:
    // Test 209:  Test with dataset: sbox32
    // result rd:x24(0x3e3ead42), rs1=>rd:x24(0x121bcc23), rs2:x24(0x0000d100), imm:0x1
    TEST_RI_OP(aes32esmi, x24, x24, 0x1, 0x3e3ead42, 0x121bcc23, 0x0000d100, x1, 16, x2)


    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with dataset: sbox32
    // result rd:x25(0x189b9520), rs1=>rd:x25(0xadea5195), rs2:x23(0x00d20000), imm:0x2
    TEST_RI_OP(aes32esmi, x25, x23, 0x2, 0x189b9520, 0xadea5195, 0x00d20000, x1, 0, x2)

inst_211:
    // Test 211:  Test with dataset: sbox32
    // result rd:x26(0x1e55d8a7), rs1=>rd:x26(0xd2ffbec1), rs2:x22(0xd3000000), imm:0x3
    TEST_RI_OP(aes32esmi, x26, x22, 0x3, 0x1e55d8a7, 0xd2ffbec1, 0xd3000000, x1, 4, x2)

inst_212:
    // Test 212:  Test with dataset: sbox32
    // result rd:x27(0x70a9e02b), rs1=>rd:x27(0xa8e1a8bb), rs2:x21(0x000000d4), imm:0x0
    TEST_RI_OP(aes32esmi, x27, x21, 0x0, 0x70a9e02b, 0xa8e1a8bb, 0x000000d4, x1, 8, x2)

inst_213:
    // Test 213:  Test with dataset: sbox32
    // result rd:x28(0x4bca99ce), rs1=>rd:x28(0x48c99fcb), rs2:x20(0x0000d500), imm:0x1
    TEST_RI_OP(aes32esmi, x28, x20, 0x1, 0x4bca99ce, 0x48c99fcb, 0x0000d500, x1, 12, x2)

inst_214:
    // Test 214:  Test with dataset: sbox32
    // result rd:x29(0xb0ea53b9), rs1=>rd:x29(0x461d524f), rs2:x19(0x00d60000), imm:0x2
    TEST_RI_OP(aes32esmi, x29, x19, 0x2, 0xb0ea53b9, 0x461d524f, 0x00d60000, x1, 16, x2)


    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with dataset: sbox32
    // result rd:x30(0x4e981ea1), rs1=>rd:x30(0x528a10af), rs2:x18(0xd7000000), imm:0x3
    TEST_RI_OP(aes32esmi, x30, x18, 0x3, 0x4e981ea1, 0x528a10af, 0xd7000000, x4, 0, x5)

inst_216:
    // Test 216:  Test with dataset: sbox32
    // result rd:x31(0x42fa9a01), rs1=>rd:x31(0xe19bfbc3), rs2:x17(0x000000d8), imm:0x0
    TEST_RI_OP(aes32esmi, x31, x17, 0x0, 0x42fa9a01, 0xe19bfbc3, 0x000000d8, x4, 4, x5)

inst_217:
    // Test 217:  Test with dataset: sbox32
    // result rd:x1(0x454f989f), rs1=>rd:x1(0x707af2c0), rs2:x16(0x0000d900), imm:0x1
    TEST_RI_OP(aes32esmi, x1, x16, 0x1, 0x454f989f, 0x707af2c0, 0x0000d900, x4, 8, x5)

inst_218:
    // Test 218:  Test with dataset: sbox32
    // result rd:x2(0xf3d3e90c), rs1=>rd:x2(0xa47d105b), rs2:x15(0x00da0000), imm:0x2
    TEST_RI_OP(aes32esmi, x2, x15, 0x2, 0xf3d3e90c, 0xa47d105b, 0x00da0000, x4, 12, x5)

inst_219:
    // Test 219:  Test with dataset: sbox32
    // result rd:x3(0x7bcb759a), rs1=>rd:x3(0x121bcc23), rs2:x14(0xdb000000), imm:0x3
    TEST_RI_OP(aes32esmi, x3, x14, 0x3, 0x7bcb759a, 0x121bcc23, 0xdb000000, x4, 16, x5)


    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with dataset: sbox32
    // result rd:x4(0x3c6cd782), rs1=>rd:x4(0xadea5195), rs2:x13(0x000000dc), imm:0x0
    TEST_RI_OP(aes32esmi, x4, x13, 0x0, 0x3c6cd782, 0xadea5195, 0x000000dc, x1, 0, x2)

inst_221:
    // Test 221:  Test with dataset: sbox32
    // result rd:x5(0x133e2799), rs1=>rd:x5(0xd2ffbec1), rs2:x12(0x0000dd00), imm:0x1
    TEST_RI_OP(aes32esmi, x5, x12, 0x1, 0x133e2799, 0xd2ffbec1, 0x0000dd00, x1, 4, x2)

inst_222:
    // Test 222:  Test with dataset: sbox32
    // result rd:x6(0xb5db8fa6), rs1=>rd:x6(0xa8e1a8bb), rs2:x11(0x00de0000), imm:0x2
    TEST_RI_OP(aes32esmi, x6, x11, 0x2, 0xb5db8fa6, 0xa8e1a8bb, 0x00de0000, x1, 8, x2)

inst_223:
    // Test 223:  Test with dataset: sbox32
    // result rd:x7(0x6f700155), rs1=>rd:x7(0x48c99fcb), rs2:x10(0xdf000000), imm:0x3
    TEST_RI_OP(aes32esmi, x7, x10, 0x3, 0x6f700155, 0x48c99fcb, 0xdf000000, x1, 12, x2)

inst_224:
    // Test 224:  Test with dataset: sbox32
    // result rd:x8(0x7efcb396), rs1=>rd:x8(0x461d524f), rs2:x9(0x000000e0), imm:0x0
    TEST_RI_OP(aes32esmi, x8, x9, 0x0, 0x7efcb396, 0x461d524f, 0x000000e0, x1, 16, x2)


    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with dataset: sbox32
    // result rd:x9(0xaa72fbbc), rs1=>rd:x9(0x528a10af), rs2:x8(0x0000e100), imm:0x1
    TEST_RI_OP(aes32esmi, x9, x8, 0x1, 0xaa72fbbc, 0x528a10af, 0x0000e100, x1, 0, x2)

inst_226:
    // Test 226:  Test with dataset: sbox32
    // result rd:x10(0x79b0485b), rs1=>rd:x10(0xe19bfbc3), rs2:x7(0x00e20000), imm:0x2
    TEST_RI_OP(aes32esmi, x10, x7, 0x2, 0x79b0485b, 0xe19bfbc3, 0x00e20000, x1, 4, x2)

inst_227:
    // Test 227:  Test with dataset: sbox32
    // result rd:x11(0x5249e3d1), rs1=>rd:x11(0x707af2c0), rs2:x6(0xe3000000), imm:0x3
    TEST_RI_OP(aes32esmi, x11, x6, 0x3, 0x5249e3d1, 0x707af2c0, 0xe3000000, x1, 8, x2)

inst_228:
    // Test 228:  Test with dataset: sbox32
    // result rd:x12(0x1f147989), rs1=>rd:x12(0xa47d105b), rs2:x5(0x000000e4), imm:0x0
    TEST_RI_OP(aes32esmi, x12, x5, 0x0, 0x1f147989, 0xa47d105b, 0x000000e4, x1, 12, x2)

inst_229:
    // Test 229:  Test with dataset: sbox32
    // result rd:x13(0xcbc26553), rs1=>rd:x13(0x121bcc23), rs2:x4(0x0000e500), imm:0x1
    TEST_RI_OP(aes32esmi, x13, x4, 0x1, 0xcbc26553, 0x121bcc23, 0x0000e500, x1, 16, x2)


    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with dataset: sbox32
    // result rd:x14(0x23edd81b), rs1=>rd:x14(0xadea5195), rs2:x3(0x00e60000), imm:0x2
    TEST_RI_OP(aes32esmi, x14, x3, 0x2, 0x23edd81b, 0xadea5195, 0x00e60000, x4, 0, x5)

inst_231:
    // Test 231:  Test with dataset: sbox32
    // result rd:x15(0xe1582a55), rs1=>rd:x15(0xd2ffbec1), rs2:x2(0xe7000000), imm:0x3
    TEST_RI_OP(aes32esmi, x15, x2, 0x3, 0xe1582a55, 0xd2ffbec1, 0xe7000000, x4, 4, x5)

inst_232:
    // Test 232:  Test with dataset: sbox32
    // result rd:x16(0x1e7a3396), rs1=>rd:x16(0xa8e1a8bb), rs2:x1(0x000000e8), imm:0x0
    TEST_RI_OP(aes32esmi, x16, x1, 0x0, 0x1e7a3396, 0xa8e1a8bb, 0x000000e8, x4, 8, x5)

inst_233:
    // Test 233:  Test with dataset: sbox32
    // result rd:x17(0x56d7a3e9), rs1=>rd:x17(0x48c99fcb), rs2:x31(0x0000e900), imm:0x1
    TEST_RI_OP(aes32esmi, x17, x31, 0x1, 0x56d7a3e9, 0x48c99fcb, 0x0000e900, x4, 12, x5)

inst_234:
    // Test 234:  Test with dataset: sbox32
    // result rd:x18(0xc108c0c8), rs1=>rd:x18(0x461d524f), rs2:x30(0x00ea0000), imm:0x2
    TEST_RI_OP(aes32esmi, x18, x30, 0x2, 0xc108c0c8, 0x461d524f, 0x00ea0000, x4, 16, x5)


    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with dataset: sbox32
    // result rd:x19(0x9baaf946), rs1=>rd:x19(0x528a10af), rs2:x29(0xeb000000), imm:0x3
    TEST_RI_OP(aes32esmi, x19, x29, 0x3, 0x9baaf946, 0x528a10af, 0xeb000000, x1, 0, x2)

inst_236:
    // Test 236:  Test with dataset: sbox32
    // result rd:x20(0xa8553544), rs1=>rd:x20(0xe19bfbc3), rs2:x28(0x000000ec), imm:0x0
    TEST_RI_OP(aes32esmi, x20, x28, 0x0, 0xa8553544, 0xe19bfbc3, 0x000000ec, x1, 4, x2)

inst_237:
    // Test 237:  Test with dataset: sbox32
    // result rd:x21(0x252f583f), rs1=>rd:x21(0x707af2c0), rs2:x27(0x0000ed00), imm:0x1
    TEST_RI_OP(aes32esmi, x21, x27, 0x1, 0x252f583f, 0x707af2c0, 0x0000ed00, x1, 8, x2)

inst_238:
    // Test 238:  Test with dataset: sbox32
    // result rd:x22(0x8c2d6873), rs1=>rd:x22(0xa47d105b), rs2:x26(0x00ee0000), imm:0x2
    TEST_RI_OP(aes32esmi, x22, x26, 0x2, 0x8c2d6873, 0xa47d105b, 0x00ee0000, x1, 12, x2)

inst_239:
    // Test 239:  Test with dataset: sbox32
    // result rd:x23(0xb76113fc), rs1=>rd:x23(0x121bcc23), rs2:x25(0xef000000), imm:0x3
    TEST_RI_OP(aes32esmi, x23, x25, 0x3, 0xb76113fc, 0x121bcc23, 0xef000000, x1, 16, x2)


    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with dataset: sbox32
    // result rd:x24(0x8f8c8cf3), rs1=>rd:x24(0xadea5195), rs2:x24(0x000000f0), imm:0x0
    TEST_RI_OP(aes32esmi, x24, x24, 0x0, 0x8f8c8cf3, 0xadea5195, 0x000000f0, x1, 0, x2)

inst_241:
    // Test 241:  Test with dataset: sbox32
    // result rd:x25(0x735ee739), rs1=>rd:x25(0xd2ffbec1), rs2:x23(0x0000f100), imm:0x1
    TEST_RI_OP(aes32esmi, x25, x23, 0x1, 0x735ee739, 0xd2ffbec1, 0x0000f100, x1, 4, x2)

inst_242:
    // Test 242:  Test with dataset: sbox32
    // result rd:x26(0x21e82832), rs1=>rd:x26(0xa8e1a8bb), rs2:x22(0x00f20000), imm:0x2
    TEST_RI_OP(aes32esmi, x26, x22, 0x2, 0x21e82832, 0xa8e1a8bb, 0x00f20000, x1, 8, x2)

inst_243:
    // Test 243:  Test with dataset: sbox32
    // result rd:x27(0x52de92c6), rs1=>rd:x27(0x48c99fcb), rs2:x21(0xf3000000), imm:0x3
    TEST_RI_OP(aes32esmi, x27, x21, 0x3, 0x52de92c6, 0x48c99fcb, 0xf3000000, x1, 12, x2)

inst_244:
    // Test 244:  Test with dataset: sbox32
    // result rd:x28(0x9ca2ed2a), rs1=>rd:x28(0x461d524f), rs2:x20(0x000000f4), imm:0x0
    TEST_RI_OP(aes32esmi, x28, x20, 0x0, 0x9ca2ed2a, 0x461d524f, 0x000000f4, x1, 16, x2)


    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with dataset: sbox32
    // result rd:x29(0xb46cc79e), rs1=>rd:x29(0x528a10af), rs2:x19(0x0000f500), imm:0x1
    TEST_RI_OP(aes32esmi, x29, x19, 0x1, 0xb46cc79e, 0x528a10af, 0x0000f500, x4, 0, x5)

inst_246:
    // Test 246:  Test with dataset: sbox32
    // result rd:x30(0xa31f3d81), rs1=>rd:x30(0xe19bfbc3), rs2:x18(0x00f60000), imm:0x2
    TEST_RI_OP(aes32esmi, x30, x18, 0x2, 0xa31f3d81, 0xe19bfbc3, 0x00f60000, x4, 4, x5)

inst_247:
    // Test 247:  Test with dataset: sbox32
    // result rd:x31(0xa0c29aa8), rs1=>rd:x31(0x707af2c0), rs2:x17(0xf7000000), imm:0x3
    TEST_RI_OP(aes32esmi, x31, x17, 0x3, 0xa0c29aa8, 0x707af2c0, 0xf7000000, x4, 8, x5)

inst_248:
    // Test 248:  Test with dataset: sbox32
    // result rd:x1(0x673c51d9), rs1=>rd:x1(0xa47d105b), rs2:x16(0x000000f8), imm:0x0
    TEST_RI_OP(aes32esmi, x1, x16, 0x0, 0x673c51d9, 0xa47d105b, 0x000000f8, x4, 12, x5)

inst_249:
    // Test 249:  Test with dataset: sbox32
    // result rd:x2(0x8b82e593), rs1=>rd:x2(0x121bcc23), rs2:x15(0x0000f900), imm:0x1
    TEST_RI_OP(aes32esmi, x2, x15, 0x1, 0x8b82e593, 0x121bcc23, 0x0000f900, x4, 16, x5)


    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with dataset: sbox32
    // result rd:x3(0x80b026b8), rs1=>rd:x3(0xadea5195), rs2:x14(0x00fa0000), imm:0x2
    TEST_RI_OP(aes32esmi, x3, x14, 0x2, 0x80b026b8, 0xadea5195, 0x00fa0000, x1, 0, x2)

inst_251:
    // Test 251:  Test with dataset: sbox32
    // result rd:x4(0xcceeb1ce), rs1=>rd:x4(0xd2ffbec1), rs2:x13(0xfb000000), imm:0x3
    TEST_RI_OP(aes32esmi, x4, x13, 0x3, 0xcceeb1ce, 0xd2ffbec1, 0xfb000000, x1, 4, x2)

inst_252:
    // Test 252:  Test with dataset: sbox32
    // result rd:x5(0x635118c0), rs1=>rd:x5(0xa8e1a8bb), rs2:x12(0x000000fc), imm:0x0
    TEST_RI_OP(aes32esmi, x5, x12, 0x0, 0x635118c0, 0xa8e1a8bb, 0x000000fc, x1, 8, x2)

inst_253:
    // Test 253:  Test with dataset: sbox32
    // result rd:x6(0x1c9d3737), rs1=>rd:x6(0x48c99fcb), rs2:x11(0x0000fd00), imm:0x1
    TEST_RI_OP(aes32esmi, x6, x11, 0x1, 0x1c9d3737, 0x48c99fcb, 0x0000fd00, x1, 12, x2)

inst_254:
    // Test 254:  Test with dataset: sbox32
    // result rd:x7(0xfd7084f4), rs1=>rd:x7(0x461d524f), rs2:x10(0x00fe0000), imm:0x2
    TEST_RI_OP(aes32esmi, x7, x10, 0x2, 0xfd7084f4, 0x461d524f, 0x00fe0000, x1, 16, x2)


    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes32esmi)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",aes32esmi)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with dataset: sbox32
    // result rd:x8(0x7eb006b9), rs1=>rd:x8(0x528a10af), rs2:x9(0xff000000), imm:0x3
    TEST_RI_OP(aes32esmi, x8, x9, 0x3, 0x7eb006b9, 0x528a10af, 0xff000000, x1, 0, x2)
	
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

