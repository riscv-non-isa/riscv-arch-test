// RISC-V Architectural Validation Test RORI-01
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
// Description: Testing instruction 'rori'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV32IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1

    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with random values
    // result rd:x1(0xb5bd4a32), rs1:x31(0xadea5195), imm:0x3
    TEST_IMM_OP(rori, x1, x31, 0xb5bd4a32, 0xadea5195, 0x3, x6, 0, x7)

inst_1:
    // Test 1:  Test with random values
    // result rd:x2(0x5ff7d83a), rs1:x30(0xd2ffbec1), imm:0x1b
    TEST_IMM_OP(rori, x2, x30, 0x5ff7d83a, 0xd2ffbec1, 0x1b, x6, 4, x7)

inst_2:
    // Test 2:  Test with random values
    // result rd:x3(0xa8e1a8bb), rs1:x29(0xa8e1a8bb), imm:0x0
    TEST_IMM_OP(rori, x3, x29, 0xa8e1a8bb, 0xa8e1a8bb, 0x0, x6, 8, x7)

inst_3:
    // Test 3:  Test with random values
    // result rd:x4(0x691933f9), rs1:x28(0x48c99fcb), imm:0x3
    TEST_IMM_OP(rori, x4, x28, 0x691933f9, 0x48c99fcb, 0x3, x6, 12, x7)

inst_4:
    // Test 4:  Test with random values
    // result rd:x5(0xa49e8c3a), rs1:x27(0x461d524f), imm:0xf
    TEST_IMM_OP(rori, x5, x27, 0xa49e8c3a, 0x461d524f, 0xf, x6, 16, x7)

    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with random values
    // result rd:x6(0x215ea514), rs1:x26(0x528a10af), imm:0xf
    TEST_IMM_OP(rori, x6, x26, 0x215ea514, 0x528a10af, 0xf, x1, 0, x2)

inst_6:
    // Test 6:  Test with random values
    // result rd:x7(0x787c337f), rs1:x25(0xe19bfbc3), imm:0xb
    TEST_IMM_OP(rori, x7, x25, 0x787c337f, 0xe19bfbc3, 0xb, x1, 4, x2)

inst_7:
    // Test 7:  Test with random values
    // result rd:x8(0x0f5e580e), rs1:x24(0x707af2c0), imm:0x1b
    TEST_IMM_OP(rori, x8, x24, 0x0f5e580e, 0x707af2c0, 0x1b, x1, 8, x2)

inst_8:
    // Test 8:  Test with random values
    // result rd:x9(0xd23e882d), rs1:x23(0xa47d105b), imm:0x1
    TEST_IMM_OP(rori, x9, x23, 0xd23e882d, 0xa47d105b, 0x1, x1, 12, x2)

inst_9:
    // Test 9:  Test with random values
    // result rd:x10(0xde611890), rs1:x22(0x121bcc23), imm:0x15
    TEST_IMM_OP(rori, x10, x22, 0xde611890, 0x121bcc23, 0x15, x1, 16, x2)

    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with marching zeros/ones
    // result rd:x11(0x00000002), rs1:x21(0x00000001), imm:0x1f
    TEST_IMM_OP(rori, x11, x21, 0x00000002, 0x1, 0x1f, x1, 0, x7)

inst_11:
    // Test 11:  Test with marching zeros/ones
    // result rd:x12(0x00040000), rs1:x20(0x00000002), imm:0xf
    TEST_IMM_OP(rori, x12, x20, 0x00040000, 0x2, 0xf, x1, 4, x7)

inst_12:
    // Test 12:  Test with marching zeros/ones
    // result rd:x13(0x00000800), rs1:x19(0x00000004), imm:0x17
    TEST_IMM_OP(rori, x13, x19, 0x00000800, 0x4, 0x17, x1, 8, x7)

inst_13:
    // Test 13:  Test with marching zeros/ones
    // result rd:x14(0x00000100), rs1:x18(0x00000008), imm:0x1b
    TEST_IMM_OP(rori, x14, x18, 0x00000100, 0x8, 0x1b, x1, 12, x7)

inst_14:
    // Test 14:  Test with marching zeros/ones
    // result rd:x15(0x00000080), rs1:x17(0x00000010), imm:0x1d
    TEST_IMM_OP(rori, x15, x17, 0x00000080, 0x10, 0x1d, x1, 16, x7)

    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with marching zeros/ones
    // result rd:x16(0x00000080), rs1:x16(0x00000020), imm:0x1e
    TEST_IMM_OP(rori, x16, x16, 0x00000080, 0x20, 0x1e, x2, 0, x3)

inst_16:
    // Test 16:  Test with marching zeros/ones
    // result rd:x17(0x00000040), rs1:x15(0x00000040), imm:0x0
    TEST_IMM_OP(rori, x17, x15, 0x00000040, 0x40, 0x0, x2, 4, x3)

inst_17:
    // Test 17:  Test with marching zeros/ones
    // result rd:x18(0x00800000), rs1:x14(0x00000080), imm:0x10
    TEST_IMM_OP(rori, x18, x14, 0x00800000, 0x80, 0x10, x2, 8, x3)

inst_18:
    // Test 18:  Test with marching zeros/ones
    // result rd:x19(0x00000001), rs1:x13(0x00000100), imm:0x8
    TEST_IMM_OP(rori, x19, x13, 0x00000001, 0x100, 0x8, x2, 12, x3)

inst_19:
    // Test 19:  Test with marching zeros/ones
    // result rd:x20(0x00000020), rs1:x12(0x00000200), imm:0x4
    TEST_IMM_OP(rori, x20, x12, 0x00000020, 0x200, 0x4, x2, 16, x3)

    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with marching zeros/ones
    // result rd:x21(0x00000100), rs1:x11(0x00000400), imm:0x2
    TEST_IMM_OP(rori, x21, x11, 0x00000100, 0x400, 0x2, x1, 0, x2)

inst_21:
    // Test 21:  Test with marching zeros/ones
    // result rd:x22(0x00000400), rs1:x10(0x00000800), imm:0x1
    TEST_IMM_OP(rori, x22, x10, 0x00000400, 0x800, 0x1, x1, 4, x2)

inst_22:
    // Test 22:  Test with marching zeros/ones
    // result rd:x23(0x00000200), rs1:x9(0x00001000), imm:0x3
    TEST_IMM_OP(rori, x23, x9, 0x00000200, 0x1000, 0x3, x1, 8, x2)

inst_23:
    // Test 23:  Test with marching zeros/ones
    // result rd:x24(0x00040000), rs1:x8(0x00002000), imm:0x1b
    TEST_IMM_OP(rori, x24, x8, 0x00040000, 0x2000, 0x1b, x1, 12, x2)

inst_24:
    // Test 24:  Test with marching zeros/ones
    // result rd:x25(0x00004000), rs1:x7(0x00004000), imm:0x0
    TEST_IMM_OP(rori, x25, x7, 0x00004000, 0x4000, 0x0, x1, 16, x2)

    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with marching zeros/ones
    // result rd:x26(0x00001000), rs1:x6(0x00008000), imm:0x3
    TEST_IMM_OP(rori, x26, x6, 0x00001000, 0x8000, 0x3, x1, 0, x7)

inst_26:
    // Test 26:  Test with marching zeros/ones
    // result rd:x27(0x00000002), rs1:x5(0x00010000), imm:0xf
    TEST_IMM_OP(rori, x27, x5, 0x00000002, 0x10000, 0xf, x1, 4, x7)

inst_27:
    // Test 27:  Test with marching zeros/ones
    // result rd:x28(0x00000004), rs1:x4(0x00020000), imm:0xf
    TEST_IMM_OP(rori, x28, x4, 0x00000004, 0x20000, 0xf, x1, 8, x7)

inst_28:
    // Test 28:  Test with marching zeros/ones
    // result rd:x29(0x00000080), rs1:x3(0x00040000), imm:0xb
    TEST_IMM_OP(rori, x29, x3, 0x00000080, 0x40000, 0xb, x1, 12, x7)

inst_29:
    // Test 29:  Test with marching zeros/ones
    // result rd:x30(0x01000000), rs1:x2(0x00080000), imm:0x1b
    TEST_IMM_OP(rori, x30, x2, 0x01000000, 0x80000, 0x1b, x1, 16, x7)

    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with marching zeros/ones
    // result rd:x31(0x00080000), rs1:x1(0x00100000), imm:0x1
    TEST_IMM_OP(rori, x31, x1, 0x00080000, 0x100000, 0x1, x5, 0, x6)

inst_31:
    // Test 31:  Test with marching zeros/ones
    // result rd:x1(0x00000001), rs1:x31(0x00200000), imm:0x15
    TEST_IMM_OP(rori, x1, x31, 0x00000001, 0x200000, 0x15, x5, 4, x6)

inst_32:
    // Test 32:  Test with marching zeros/ones
    // result rd:x2(0x00800000), rs1:x30(0x00400000), imm:0x1f
    TEST_IMM_OP(rori, x2, x30, 0x00800000, 0x400000, 0x1f, x5, 8, x6)

inst_33:
    // Test 33:  Test with marching zeros/ones
    // result rd:x3(0x00000100), rs1:x29(0x00800000), imm:0xf
    TEST_IMM_OP(rori, x3, x29, 0x00000100, 0x800000, 0xf, x5, 12, x6)

inst_34:
    // Test 34:  Test with marching zeros/ones
    // result rd:x4(0x00000002), rs1:x28(0x01000000), imm:0x17
    TEST_IMM_OP(rori, x4, x28, 0x00000002, 0x1000000, 0x17, x5, 16, x6)

    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with marching zeros/ones
    // result rd:x5(0x40000000), rs1:x27(0x02000000), imm:0x1b
    TEST_IMM_OP(rori, x5, x27, 0x40000000, 0x2000000, 0x1b, x1, 0, x2)

inst_36:
    // Test 36:  Test with marching zeros/ones
    // result rd:x6(0x20000000), rs1:x26(0x04000000), imm:0x1d
    TEST_IMM_OP(rori, x6, x26, 0x20000000, 0x4000000, 0x1d, x1, 4, x2)

inst_37:
    // Test 37:  Test with marching zeros/ones
    // result rd:x7(0x20000000), rs1:x25(0x08000000), imm:0x1e
    TEST_IMM_OP(rori, x7, x25, 0x20000000, 0x8000000, 0x1e, x1, 8, x2)

inst_38:
    // Test 38:  Test with marching zeros/ones
    // result rd:x8(0x10000000), rs1:x24(0x10000000), imm:0x0
    TEST_IMM_OP(rori, x8, x24, 0x10000000, 0x10000000, 0x0, x1, 12, x2)

inst_39:
    // Test 39:  Test with marching zeros/ones
    // result rd:x9(0x00002000), rs1:x23(0x20000000), imm:0x10
    TEST_IMM_OP(rori, x9, x23, 0x00002000, 0x20000000, 0x10, x1, 16, x2)

    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with marching zeros/ones
    // result rd:x10(0x00400000), rs1:x22(0x40000000), imm:0x8
    TEST_IMM_OP(rori, x10, x22, 0x00400000, 0x40000000, 0x8, x1, 0, x2)

inst_41:
    // Test 41:  Test with marching zeros/ones
    // result rd:x11(0x08000000), rs1:x21(0x80000000), imm:0x4
    TEST_IMM_OP(rori, x11, x21, 0x08000000, 0x80000000, 0x4, x1, 4, x2)

inst_42:
    // Test 42:  Test with marching zeros/ones
    // result rd:x12(0x00000000), rs1:x20(0x00000000), imm:0x2
    TEST_IMM_OP(rori, x12, x20, 0x00000000, 0x0, 0x2, x1, 8, x2)

inst_43:
    // Test 43:  Test with marching zeros/ones
    // result rd:x13(0x7fffffff), rs1:x19(0xfffffffe), imm:0x1
    TEST_IMM_OP(rori, x13, x19, 0x7fffffff, 0xfffffffe, 0x1, x1, 12, x2)

inst_44:
    // Test 44:  Test with marching zeros/ones
    // result rd:x14(0xbfffffff), rs1:x18(0xfffffffd), imm:0x3
    TEST_IMM_OP(rori, x14, x18, 0xbfffffff, 0xfffffffd, 0x3, x1, 16, x2)

    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with marching zeros/ones
    // result rd:x15(0xffffff7f), rs1:x17(0xfffffffb), imm:0x1b
    TEST_IMM_OP(rori, x15, x17, 0xffffff7f, 0xfffffffb, 0x1b, x3, 0, x4)

inst_46:
    // Test 46:  Test with marching zeros/ones
    // result rd:x16(0xfffffff7), rs1:x16(0xfffffff7), imm:0x0
    TEST_IMM_OP(rori, x16, x16, 0xfffffff7, 0xfffffff7, 0x0, x3, 4, x4)

inst_47:
    // Test 47:  Test with marching zeros/ones
    // result rd:x17(0xfffffffd), rs1:x15(0xffffffef), imm:0x3
    TEST_IMM_OP(rori, x17, x15, 0xfffffffd, 0xffffffef, 0x3, x3, 8, x4)

inst_48:
    // Test 48:  Test with marching zeros/ones
    // result rd:x18(0xffbfffff), rs1:x14(0xffffffdf), imm:0xf
    TEST_IMM_OP(rori, x18, x14, 0xffbfffff, 0xffffffdf, 0xf, x3, 12, x4)

inst_49:
    // Test 49:  Test with marching zeros/ones
    // result rd:x19(0xff7fffff), rs1:x13(0xffffffbf), imm:0xf
    TEST_IMM_OP(rori, x19, x13, 0xff7fffff, 0xffffffbf, 0xf, x3, 16, x4)

    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with marching zeros/ones
    // result rd:x20(0xefffffff), rs1:x12(0xffffff7f), imm:0xb
    TEST_IMM_OP(rori, x20, x12, 0xefffffff, 0xffffff7f, 0xb, x1, 0, x2)

inst_51:
    // Test 51:  Test with marching zeros/ones
    // result rd:x21(0xffffdfff), rs1:x11(0xfffffeff), imm:0x1b
    TEST_IMM_OP(rori, x21, x11, 0xffffdfff, 0xfffffeff, 0x1b, x1, 4, x2)

inst_52:
    // Test 52:  Test with marching zeros/ones
    // result rd:x22(0xfffffeff), rs1:x10(0xfffffdff), imm:0x1
    TEST_IMM_OP(rori, x22, x10, 0xfffffeff, 0xfffffdff, 0x1, x1, 8, x2)

inst_53:
    // Test 53:  Test with marching zeros/ones
    // result rd:x23(0xffdfffff), rs1:x9(0xfffffbff), imm:0x15
    TEST_IMM_OP(rori, x23, x9, 0xffdfffff, 0xfffffbff, 0x15, x1, 12, x2)

inst_54:
    // Test 54:  Test with marching zeros/ones
    // result rd:x24(0xffffefff), rs1:x8(0xfffff7ff), imm:0x1f
    TEST_IMM_OP(rori, x24, x8, 0xffffefff, 0xfffff7ff, 0x1f, x1, 16, x2)

    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with marching zeros/ones
    // result rd:x25(0xdfffffff), rs1:x7(0xffffefff), imm:0xf
    TEST_IMM_OP(rori, x25, x7, 0xdfffffff, 0xffffefff, 0xf, x1, 0, x2)

inst_56:
    // Test 56:  Test with marching zeros/ones
    // result rd:x26(0xffbfffff), rs1:x6(0xffffdfff), imm:0x17
    TEST_IMM_OP(rori, x26, x6, 0xffbfffff, 0xffffdfff, 0x17, x1, 4, x2)

inst_57:
    // Test 57:  Test with marching zeros/ones
    // result rd:x27(0xfff7ffff), rs1:x5(0xffffbfff), imm:0x1b
    TEST_IMM_OP(rori, x27, x5, 0xfff7ffff, 0xffffbfff, 0x1b, x1, 8, x2)

inst_58:
    // Test 58:  Test with marching zeros/ones
    // result rd:x28(0xfffbffff), rs1:x4(0xffff7fff), imm:0x1d
    TEST_IMM_OP(rori, x28, x4, 0xfffbffff, 0xffff7fff, 0x1d, x1, 12, x2)

inst_59:
    // Test 59:  Test with marching zeros/ones
    // result rd:x29(0xfffbffff), rs1:x3(0xfffeffff), imm:0x1e
    TEST_IMM_OP(rori, x29, x3, 0xfffbffff, 0xfffeffff, 0x1e, x1, 16, x2)

    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with marching zeros/ones
    // result rd:x30(0xfffdffff), rs1:x2(0xfffdffff), imm:0x0
    TEST_IMM_OP(rori, x30, x2, 0xfffdffff, 0xfffdffff, 0x0, x4, 0, x5)

inst_61:
    // Test 61:  Test with marching zeros/ones
    // result rd:x31(0xfffffffb), rs1:x1(0xfffbffff), imm:0x10
    TEST_IMM_OP(rori, x31, x1, 0xfffffffb, 0xfffbffff, 0x10, x4, 4, x5)

inst_62:
    // Test 62:  Test with marching zeros/ones
    // result rd:x1(0xfffff7ff), rs1:x31(0xfff7ffff), imm:0x8
    TEST_IMM_OP(rori, x1, x31, 0xfffff7ff, 0xfff7ffff, 0x8, x4, 8, x5)

inst_63:
    // Test 63:  Test with marching zeros/ones
    // result rd:x2(0xfffeffff), rs1:x30(0xffefffff), imm:0x4
    TEST_IMM_OP(rori, x2, x30, 0xfffeffff, 0xffefffff, 0x4, x4, 12, x5)

inst_64:
    // Test 64:  Test with marching zeros/ones
    // result rd:x3(0xfff7ffff), rs1:x29(0xffdfffff), imm:0x2
    TEST_IMM_OP(rori, x3, x29, 0xfff7ffff, 0xffdfffff, 0x2, x4, 16, x5)

    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with marching zeros/ones
    // result rd:x4(0xffdfffff), rs1:x28(0xffbfffff), imm:0x1
    TEST_IMM_OP(rori, x4, x28, 0xffdfffff, 0xffbfffff, 0x1, x1, 0, x2)

inst_66:
    // Test 66:  Test with marching zeros/ones
    // result rd:x5(0xff7fffff), rs1:x27(0xff7fffff), imm:0x0
    TEST_IMM_OP(rori, x5, x27, 0xff7fffff, 0xff7fffff, 0x0, x1, 4, x2)

inst_67:
    // Test 67:  Test with marching zeros/ones
    // result rd:x6(0xfeffffff), rs1:x26(0xfeffffff), imm:0x0
    TEST_IMM_OP(rori, x6, x26, 0xfeffffff, 0xfeffffff, 0x0, x1, 8, x2)

inst_68:
    // Test 68:  Test with marching zeros/ones
    // result rd:x7(0xfdffffff), rs1:x25(0xfdffffff), imm:0x0
    TEST_IMM_OP(rori, x7, x25, 0xfdffffff, 0xfdffffff, 0x0, x1, 12, x2)

inst_69:
    // Test 69:  Test with marching zeros/ones
    // result rd:x8(0xfbffffff), rs1:x24(0xfbffffff), imm:0x0
    TEST_IMM_OP(rori, x8, x24, 0xfbffffff, 0xfbffffff, 0x0, x1, 16, x2)

    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with marching zeros/ones
    // result rd:x9(0xf7ffffff), rs1:x23(0xf7ffffff), imm:0x0
    TEST_IMM_OP(rori, x9, x23, 0xf7ffffff, 0xf7ffffff, 0x0, x1, 0, x2)

inst_71:
    // Test 71:  Test with marching zeros/ones
    // result rd:x10(0xefffffff), rs1:x22(0xefffffff), imm:0x0
    TEST_IMM_OP(rori, x10, x22, 0xefffffff, 0xefffffff, 0x0, x1, 4, x2)

inst_72:
    // Test 72:  Test with marching zeros/ones
    // result rd:x11(0xdfffffff), rs1:x21(0xdfffffff), imm:0x0
    TEST_IMM_OP(rori, x11, x21, 0xdfffffff, 0xdfffffff, 0x0, x1, 8, x2)

inst_73:
    // Test 73:  Test with marching zeros/ones
    // result rd:x12(0xbfffffff), rs1:x20(0xbfffffff), imm:0x0
    TEST_IMM_OP(rori, x12, x20, 0xbfffffff, 0xbfffffff, 0x0, x1, 12, x2)

inst_74:
    // Test 74:  Test with marching zeros/ones
    // result rd:x13(0x7fffffff), rs1:x19(0x7fffffff), imm:0x0
    TEST_IMM_OP(rori, x13, x19, 0x7fffffff, 0x7fffffff, 0x0, x1, 16, x2)

    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with marching zeros/ones
    // result rd:x14(0xffffffff), rs1:x18(0xffffffff), imm:0x0
    TEST_IMM_OP(rori, x14, x18, 0xffffffff, 0xffffffff, 0x0, x4, 0, x5)

inst_76:
    // Test 76:  Test with marching zeros/ones
    // result rd:x15(0x00000001), rs1:x17(0x00000001), imm:0x0
    TEST_IMM_OP(rori, x15, x17, 0x00000001, 0x1, 0x0, x4, 4, x5)

inst_77:
    // Test 77:  Test with marching zeros/ones
    // result rd:x16(0x00000002), rs1:x16(0x00000002), imm:0x0
    TEST_IMM_OP(rori, x16, x16, 0x00000002, 0x2, 0x0, x4, 8, x5)

inst_78:
    // Test 78:  Test with marching zeros/ones
    // result rd:x17(0x00000004), rs1:x15(0x00000004), imm:0x0
    TEST_IMM_OP(rori, x17, x15, 0x00000004, 0x4, 0x0, x4, 12, x5)

inst_79:
    // Test 79:  Test with marching zeros/ones
    // result rd:x18(0x00000008), rs1:x14(0x00000008), imm:0x0
    TEST_IMM_OP(rori, x18, x14, 0x00000008, 0x8, 0x0, x4, 16, x5)

    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with marching zeros/ones
    // result rd:x19(0x00000010), rs1:x13(0x00000010), imm:0x0
    TEST_IMM_OP(rori, x19, x13, 0x00000010, 0x10, 0x0, x1, 0, x2)

inst_81:
    // Test 81:  Test with marching zeros/ones
    // result rd:x20(0x00000020), rs1:x12(0x00000020), imm:0x0
    TEST_IMM_OP(rori, x20, x12, 0x00000020, 0x20, 0x0, x1, 4, x2)

inst_82:
    // Test 82:  Test with marching zeros/ones
    // result rd:x21(0x00000040), rs1:x11(0x00000040), imm:0x0
    TEST_IMM_OP(rori, x21, x11, 0x00000040, 0x40, 0x0, x1, 8, x2)

inst_83:
    // Test 83:  Test with marching zeros/ones
    // result rd:x22(0x00000080), rs1:x10(0x00000080), imm:0x0
    TEST_IMM_OP(rori, x22, x10, 0x00000080, 0x80, 0x0, x1, 12, x2)

inst_84:
    // Test 84:  Test with marching zeros/ones
    // result rd:x23(0x00000100), rs1:x9(0x00000100), imm:0x0
    TEST_IMM_OP(rori, x23, x9, 0x00000100, 0x100, 0x0, x1, 16, x2)

    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with marching zeros/ones
    // result rd:x24(0x00000200), rs1:x8(0x00000200), imm:0x0
    TEST_IMM_OP(rori, x24, x8, 0x00000200, 0x200, 0x0, x1, 0, x2)

inst_86:
    // Test 86:  Test with marching zeros/ones
    // result rd:x25(0x00000400), rs1:x7(0x00000400), imm:0x0
    TEST_IMM_OP(rori, x25, x7, 0x00000400, 0x400, 0x0, x1, 4, x2)

inst_87:
    // Test 87:  Test with marching zeros/ones
    // result rd:x26(0x00000800), rs1:x6(0x00000800), imm:0x0
    TEST_IMM_OP(rori, x26, x6, 0x00000800, 0x800, 0x0, x1, 8, x2)

inst_88:
    // Test 88:  Test with marching zeros/ones
    // result rd:x27(0x00001000), rs1:x5(0x00001000), imm:0x0
    TEST_IMM_OP(rori, x27, x5, 0x00001000, 0x1000, 0x0, x1, 12, x2)

inst_89:
    // Test 89:  Test with marching zeros/ones
    // result rd:x28(0x00002000), rs1:x4(0x00002000), imm:0x0
    TEST_IMM_OP(rori, x28, x4, 0x00002000, 0x2000, 0x0, x1, 16, x2)

    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with marching zeros/ones
    // result rd:x29(0x00004000), rs1:x3(0x00004000), imm:0x0
    TEST_IMM_OP(rori, x29, x3, 0x00004000, 0x4000, 0x0, x4, 0, x5)

inst_91:
    // Test 91:  Test with marching zeros/ones
    // result rd:x30(0x00008000), rs1:x2(0x00008000), imm:0x0
    TEST_IMM_OP(rori, x30, x2, 0x00008000, 0x8000, 0x0, x4, 4, x5)

inst_92:
    // Test 92:  Test with marching zeros/ones
    // result rd:x31(0x00010000), rs1:x1(0x00010000), imm:0x0
    TEST_IMM_OP(rori, x31, x1, 0x00010000, 0x10000, 0x0, x4, 8, x5)

inst_93:
    // Test 93:  Test with marching zeros/ones
    // result rd:x1(0x00020000), rs1:x31(0x00020000), imm:0x0
    TEST_IMM_OP(rori, x1, x31, 0x00020000, 0x20000, 0x0, x4, 12, x5)

inst_94:
    // Test 94:  Test with marching zeros/ones
    // result rd:x2(0x00040000), rs1:x30(0x00040000), imm:0x0
    TEST_IMM_OP(rori, x2, x30, 0x00040000, 0x40000, 0x0, x4, 16, x5)

    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with marching zeros/ones
    // result rd:x3(0x00080000), rs1:x29(0x00080000), imm:0x0
    TEST_IMM_OP(rori, x3, x29, 0x00080000, 0x80000, 0x0, x1, 0, x2)

inst_96:
    // Test 96:  Test with marching zeros/ones
    // result rd:x4(0x00100000), rs1:x28(0x00100000), imm:0x0
    TEST_IMM_OP(rori, x4, x28, 0x00100000, 0x100000, 0x0, x1, 4, x2)

inst_97:
    // Test 97:  Test with marching zeros/ones
    // result rd:x5(0x00200000), rs1:x27(0x00200000), imm:0x0
    TEST_IMM_OP(rori, x5, x27, 0x00200000, 0x200000, 0x0, x1, 8, x2)

inst_98:
    // Test 98:  Test with marching zeros/ones
    // result rd:x6(0x00400000), rs1:x26(0x00400000), imm:0x0
    TEST_IMM_OP(rori, x6, x26, 0x00400000, 0x400000, 0x0, x1, 12, x2)

inst_99:
    // Test 99:  Test with marching zeros/ones
    // result rd:x7(0x00800000), rs1:x25(0x00800000), imm:0x0
    TEST_IMM_OP(rori, x7, x25, 0x00800000, 0x800000, 0x0, x1, 16, x2)

    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with marching zeros/ones
    // result rd:x8(0x01000000), rs1:x24(0x01000000), imm:0x0
    TEST_IMM_OP(rori, x8, x24, 0x01000000, 0x1000000, 0x0, x1, 0, x2)

inst_101:
    // Test 101:  Test with marching zeros/ones
    // result rd:x9(0x02000000), rs1:x23(0x02000000), imm:0x0
    TEST_IMM_OP(rori, x9, x23, 0x02000000, 0x2000000, 0x0, x1, 4, x2)

inst_102:
    // Test 102:  Test with marching zeros/ones
    // result rd:x10(0x04000000), rs1:x22(0x04000000), imm:0x0
    TEST_IMM_OP(rori, x10, x22, 0x04000000, 0x4000000, 0x0, x1, 8, x2)

inst_103:
    // Test 103:  Test with marching zeros/ones
    // result rd:x11(0x08000000), rs1:x21(0x08000000), imm:0x0
    TEST_IMM_OP(rori, x11, x21, 0x08000000, 0x8000000, 0x0, x1, 12, x2)

inst_104:
    // Test 104:  Test with marching zeros/ones
    // result rd:x12(0x10000000), rs1:x20(0x10000000), imm:0x0
    TEST_IMM_OP(rori, x12, x20, 0x10000000, 0x10000000, 0x0, x1, 16, x2)

    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with marching zeros/ones
    // result rd:x13(0x20000000), rs1:x19(0x20000000), imm:0x0
    TEST_IMM_OP(rori, x13, x19, 0x20000000, 0x20000000, 0x0, x5, 0, x6)

inst_106:
    // Test 106:  Test with marching zeros/ones
    // result rd:x14(0x40000000), rs1:x18(0x40000000), imm:0x0
    TEST_IMM_OP(rori, x14, x18, 0x40000000, 0x40000000, 0x0, x5, 4, x6)

inst_107:
    // Test 107:  Test with marching zeros/ones
    // result rd:x15(0x80000000), rs1:x17(0x80000000), imm:0x0
    TEST_IMM_OP(rori, x15, x17, 0x80000000, 0x80000000, 0x0, x5, 8, x6)

inst_108:
    // Test 108:  Test with marching zeros/ones
    // result rd:x16(0x00000000), rs1:x16(0x00000000), imm:0x0
    TEST_IMM_OP(rori, x16, x16, 0x00000000, 0x0, 0x0, x5, 12, x6)

inst_109:
    // Test 109:  Test with marching zeros/ones
    // result rd:x17(0xfffffffe), rs1:x15(0xfffffffe), imm:0x0
    TEST_IMM_OP(rori, x17, x15, 0xfffffffe, 0xfffffffe, 0x0, x5, 16, x6)

    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with marching zeros/ones
    // result rd:x18(0xfffffffd), rs1:x14(0xfffffffd), imm:0x0
    TEST_IMM_OP(rori, x18, x14, 0xfffffffd, 0xfffffffd, 0x0, x1, 0, x2)

inst_111:
    // Test 111:  Test with marching zeros/ones
    // result rd:x19(0xfffffffb), rs1:x13(0xfffffffb), imm:0x0
    TEST_IMM_OP(rori, x19, x13, 0xfffffffb, 0xfffffffb, 0x0, x1, 4, x2)

inst_112:
    // Test 112:  Test with marching zeros/ones
    // result rd:x20(0xfffffff7), rs1:x12(0xfffffff7), imm:0x0
    TEST_IMM_OP(rori, x20, x12, 0xfffffff7, 0xfffffff7, 0x0, x1, 8, x2)

inst_113:
    // Test 113:  Test with marching zeros/ones
    // result rd:x21(0xffffffef), rs1:x11(0xffffffef), imm:0x0
    TEST_IMM_OP(rori, x21, x11, 0xffffffef, 0xffffffef, 0x0, x1, 12, x2)

inst_114:
    // Test 114:  Test with marching zeros/ones
    // result rd:x22(0xffffffdf), rs1:x10(0xffffffdf), imm:0x0
    TEST_IMM_OP(rori, x22, x10, 0xffffffdf, 0xffffffdf, 0x0, x1, 16, x2)

    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with marching zeros/ones
    // result rd:x23(0xffffffbf), rs1:x9(0xffffffbf), imm:0x0
    TEST_IMM_OP(rori, x23, x9, 0xffffffbf, 0xffffffbf, 0x0, x1, 0, x2)

inst_116:
    // Test 116:  Test with marching zeros/ones
    // result rd:x24(0xffffff7f), rs1:x8(0xffffff7f), imm:0x0
    TEST_IMM_OP(rori, x24, x8, 0xffffff7f, 0xffffff7f, 0x0, x1, 4, x2)

inst_117:
    // Test 117:  Test with marching zeros/ones
    // result rd:x25(0xfffffeff), rs1:x7(0xfffffeff), imm:0x0
    TEST_IMM_OP(rori, x25, x7, 0xfffffeff, 0xfffffeff, 0x0, x1, 8, x2)

inst_118:
    // Test 118:  Test with marching zeros/ones
    // result rd:x26(0xfffffdff), rs1:x6(0xfffffdff), imm:0x0
    TEST_IMM_OP(rori, x26, x6, 0xfffffdff, 0xfffffdff, 0x0, x1, 12, x2)

inst_119:
    // Test 119:  Test with marching zeros/ones
    // result rd:x27(0xfffffbff), rs1:x5(0xfffffbff), imm:0x0
    TEST_IMM_OP(rori, x27, x5, 0xfffffbff, 0xfffffbff, 0x0, x1, 16, x2)

    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with marching zeros/ones
    // result rd:x28(0xfffff7ff), rs1:x4(0xfffff7ff), imm:0x0
    TEST_IMM_OP(rori, x28, x4, 0xfffff7ff, 0xfffff7ff, 0x0, x5, 0, x6)

inst_121:
    // Test 121:  Test with marching zeros/ones
    // result rd:x29(0xffffefff), rs1:x3(0xffffefff), imm:0x0
    TEST_IMM_OP(rori, x29, x3, 0xffffefff, 0xffffefff, 0x0, x5, 4, x6)

inst_122:
    // Test 122:  Test with marching zeros/ones
    // result rd:x30(0xffffdfff), rs1:x2(0xffffdfff), imm:0x0
    TEST_IMM_OP(rori, x30, x2, 0xffffdfff, 0xffffdfff, 0x0, x5, 8, x6)

inst_123:
    // Test 123:  Test with marching zeros/ones
    // result rd:x31(0xffffbfff), rs1:x1(0xffffbfff), imm:0x0
    TEST_IMM_OP(rori, x31, x1, 0xffffbfff, 0xffffbfff, 0x0, x5, 12, x6)

inst_124:
    // Test 124:  Test with marching zeros/ones
    // result rd:x1(0xffff7fff), rs1:x31(0xffff7fff), imm:0x0
    TEST_IMM_OP(rori, x1, x31, 0xffff7fff, 0xffff7fff, 0x0, x5, 16, x6)

    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with marching zeros/ones
    // result rd:x2(0xfffeffff), rs1:x30(0xfffeffff), imm:0x0
    TEST_IMM_OP(rori, x2, x30, 0xfffeffff, 0xfffeffff, 0x0, x1, 0, x7)

inst_126:
    // Test 126:  Test with marching zeros/ones
    // result rd:x3(0xfffdffff), rs1:x29(0xfffdffff), imm:0x0
    TEST_IMM_OP(rori, x3, x29, 0xfffdffff, 0xfffdffff, 0x0, x1, 4, x7)

inst_127:
    // Test 127:  Test with marching zeros/ones
    // result rd:x4(0xfffbffff), rs1:x28(0xfffbffff), imm:0x0
    TEST_IMM_OP(rori, x4, x28, 0xfffbffff, 0xfffbffff, 0x0, x1, 8, x7)

inst_128:
    // Test 128:  Test with marching zeros/ones
    // result rd:x5(0xfff7ffff), rs1:x27(0xfff7ffff), imm:0x0
    TEST_IMM_OP(rori, x5, x27, 0xfff7ffff, 0xfff7ffff, 0x0, x1, 12, x7)

inst_129:
    // Test 129:  Test with marching zeros/ones
    // result rd:x6(0xffefffff), rs1:x26(0xffefffff), imm:0x0
    TEST_IMM_OP(rori, x6, x26, 0xffefffff, 0xffefffff, 0x0, x1, 16, x7)

    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with marching zeros/ones
    // result rd:x7(0xffdfffff), rs1:x25(0xffdfffff), imm:0x0
    TEST_IMM_OP(rori, x7, x25, 0xffdfffff, 0xffdfffff, 0x0, x1, 0, x2)

inst_131:
    // Test 131:  Test with marching zeros/ones
    // result rd:x8(0xffbfffff), rs1:x24(0xffbfffff), imm:0x0
    TEST_IMM_OP(rori, x8, x24, 0xffbfffff, 0xffbfffff, 0x0, x1, 4, x2)

inst_132:
    // Test 132:  Test with marching zeros/ones
    // result rd:x9(0xffefffff), rs1:x23(0xff7fffff), imm:0x3
    TEST_IMM_OP(rori, x9, x23, 0xffefffff, 0xff7fffff, 0x3, x1, 8, x2)

inst_133:
    // Test 133:  Test with marching zeros/ones
    // result rd:x10(0xdfffffff), rs1:x22(0xfeffffff), imm:0x1b
    TEST_IMM_OP(rori, x10, x22, 0xdfffffff, 0xfeffffff, 0x1b, x1, 12, x2)

inst_134:
    // Test 134:  Test with marching zeros/ones
    // result rd:x11(0xfdffffff), rs1:x21(0xfdffffff), imm:0x0
    TEST_IMM_OP(rori, x11, x21, 0xfdffffff, 0xfdffffff, 0x0, x1, 16, x2)

    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with marching zeros/ones
    // result rd:x12(0xff7fffff), rs1:x20(0xfbffffff), imm:0x3
    TEST_IMM_OP(rori, x12, x20, 0xff7fffff, 0xfbffffff, 0x3, x6, 0, x7)

inst_136:
    // Test 136:  Test with marching zeros/ones
    // result rd:x13(0xffffefff), rs1:x19(0xf7ffffff), imm:0xf
    TEST_IMM_OP(rori, x13, x19, 0xffffefff, 0xf7ffffff, 0xf, x6, 4, x7)

inst_137:
    // Test 137:  Test with marching zeros/ones
    // result rd:x14(0xffffdfff), rs1:x18(0xefffffff), imm:0xf
    TEST_IMM_OP(rori, x14, x18, 0xffffdfff, 0xefffffff, 0xf, x6, 8, x7)

inst_138:
    // Test 138:  Test with marching zeros/ones
    // result rd:x15(0xfffbffff), rs1:x17(0xdfffffff), imm:0xb
    TEST_IMM_OP(rori, x15, x17, 0xfffbffff, 0xdfffffff, 0xb, x6, 12, x7)

inst_139:
    // Test 139:  Test with marching zeros/ones
    // result rd:x16(0xfffffff7), rs1:x16(0xbfffffff), imm:0x1b
    TEST_IMM_OP(rori, x16, x16, 0xfffffff7, 0xbfffffff, 0x1b, x6, 16, x7)

    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with marching zeros/ones
    // result rd:x17(0xbfffffff), rs1:x15(0x7fffffff), imm:0x1
    TEST_IMM_OP(rori, x17, x15, 0xbfffffff, 0x7fffffff, 0x1, x1, 0, x2)

inst_141:
    // Test 141:  Test with marching zeros/ones
    // result rd:x18(0xffffffff), rs1:x14(0xffffffff), imm:0x15
    TEST_IMM_OP(rori, x18, x14, 0xffffffff, 0xffffffff, 0x15, x1, 4, x2)

inst_142:
    // Test 142:  Test with random values
    // result rd:x19(0x5bd4a32b), rs1:x13(0xadea5195), imm:0x1f
    TEST_IMM_OP(rori, x19, x13, 0x5bd4a32b, 0xadea5195, 0x1f, x1, 8, x2)

inst_143:
    // Test 143:  Test with rd == x0
    // result rd:x0(0x00000000), rs1:x12(0xd2ffbec1), imm:0xf
    TEST_IMM_OP(rori, x0, x12, 0x00000000, 0xd2ffbec1, 0xf, x1, 12, x2)

inst_144:
    // Test 144:  Test with rs2 == x0
    // result rd:x21(0xc3517751), rs1:x11(0xa8e1a8bb), imm:0x17
    TEST_IMM_OP(rori, x21, x11, 0xc3517751, 0xa8e1a8bb, 0x17, x1, 16, x2)

    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",rori)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",rori)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with rs1 == x0
    // result rd:x22(0x00000000), rs1:x0(0x48c99fcb), imm:0x1b
    TEST_IMM_OP(rori, x22, x0, 0x00000000, 0x48c99fcb, 0x1b, x1, 0, x2)
	
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

