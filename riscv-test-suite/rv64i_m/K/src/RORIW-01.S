// RISC-V Architectural Validation Test RORIW-01
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
// Description: Testing instruction 'roriw'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV64IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1

    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with random values
    // result rd:x1(0xffffffffb5bd4a32), rs1:x31(0x10fd3dedadea5195), imm:0x3
    TEST_IMM_OP(roriw, x1, x31, 0xffffffffb5bd4a32, 0x10fd3dedadea5195, 0x3, x6, 0, x7)

inst_1:
    // Test 1:  Test with random values
    // result rd:x2(0x000000005ff7d83a), rs1:x30(0xbd295ce2d2ffbec1), imm:0x1b
    TEST_IMM_OP(roriw, x2, x30, 0x000000005ff7d83a, 0xbd295ce2d2ffbec1, 0x1b, x6, 8, x7)

inst_2:
    // Test 2:  Test with random values
    // result rd:x3(0xffffffffa8e1a8bb), rs1:x29(0xc9649f05a8e1a8bb), imm:0x0
    TEST_IMM_OP(roriw, x3, x29, 0xffffffffa8e1a8bb, 0xc9649f05a8e1a8bb, 0x0, x6, 16, x7)

inst_3:
    // Test 3:  Test with random values
    // result rd:x4(0x00000000691933f9), rs1:x28(0x3541291848c99fcb), imm:0x3
    TEST_IMM_OP(roriw, x4, x28, 0x00000000691933f9, 0x3541291848c99fcb, 0x3, x6, 24, x7)

inst_4:
    // Test 4:  Test with random values
    // result rd:x5(0xffffffffa49e8c3a), rs1:x27(0x10a24740461d524f), imm:0xf
    TEST_IMM_OP(roriw, x5, x27, 0xffffffffa49e8c3a, 0x10a24740461d524f, 0xf, x6, 32, x7)

    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with random values
    // result rd:x6(0x00000000215ea514), rs1:x26(0x546b0e54528a10af), imm:0xf
    TEST_IMM_OP(roriw, x6, x26, 0x00000000215ea514, 0x546b0e54528a10af, 0xf, x1, 0, x2)

inst_6:
    // Test 6:  Test with random values
    // result rd:x7(0x00000000787c337f), rs1:x25(0x73a92fd4e19bfbc3), imm:0xb
    TEST_IMM_OP(roriw, x7, x25, 0x00000000787c337f, 0x73a92fd4e19bfbc3, 0xb, x1, 8, x2)

inst_7:
    // Test 7:  Test with random values
    // result rd:x8(0x000000000f5e580e), rs1:x24(0x82f6747f707af2c0), imm:0x1b
    TEST_IMM_OP(roriw, x8, x24, 0x000000000f5e580e, 0x82f6747f707af2c0, 0x1b, x1, 16, x2)

inst_8:
    // Test 8:  Test with random values
    // result rd:x9(0xffffffffd23e882d), rs1:x23(0xf5adb41aa47d105b), imm:0x1
    TEST_IMM_OP(roriw, x9, x23, 0xffffffffd23e882d, 0xf5adb41aa47d105b, 0x1, x1, 24, x2)

inst_9:
    // Test 9:  Test with random values
    // result rd:x10(0xffffffffde611890), rs1:x22(0xdf7f3844121bcc23), imm:0x15
    TEST_IMM_OP(roriw, x10, x22, 0xffffffffde611890, 0xdf7f3844121bcc23, 0x15, x1, 32, x2)

    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with marching zeros/ones
    // result rd:x11(0x0000000000000002), rs1:x21(0x0000000000000001), imm:0x1f
    TEST_IMM_OP(roriw, x11, x21, 0x0000000000000002, 0x1, 0x1f, x1, 0, x7)

inst_11:
    // Test 11:  Test with marching zeros/ones
    // result rd:x12(0x0000000000040000), rs1:x20(0x0000000000000002), imm:0xf
    TEST_IMM_OP(roriw, x12, x20, 0x0000000000040000, 0x2, 0xf, x1, 8, x7)

inst_12:
    // Test 12:  Test with marching zeros/ones
    // result rd:x13(0x0000000000000800), rs1:x19(0x0000000000000004), imm:0x17
    TEST_IMM_OP(roriw, x13, x19, 0x0000000000000800, 0x4, 0x17, x1, 16, x7)

inst_13:
    // Test 13:  Test with marching zeros/ones
    // result rd:x14(0x0000000000000100), rs1:x18(0x0000000000000008), imm:0x1b
    TEST_IMM_OP(roriw, x14, x18, 0x0000000000000100, 0x8, 0x1b, x1, 24, x7)

inst_14:
    // Test 14:  Test with marching zeros/ones
    // result rd:x15(0x0000000000000080), rs1:x17(0x0000000000000010), imm:0x1d
    TEST_IMM_OP(roriw, x15, x17, 0x0000000000000080, 0x10, 0x1d, x1, 32, x7)

    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with marching zeros/ones
    // result rd:x16(0x0000000000000080), rs1:x16(0x0000000000000020), imm:0x1e
    TEST_IMM_OP(roriw, x16, x16, 0x0000000000000080, 0x20, 0x1e, x2, 0, x3)

inst_16:
    // Test 16:  Test with marching zeros/ones
    // result rd:x17(0x0000000000000040), rs1:x15(0x0000000000000040), imm:0x0
    TEST_IMM_OP(roriw, x17, x15, 0x0000000000000040, 0x40, 0x0, x2, 8, x3)

inst_17:
    // Test 17:  Test with marching zeros/ones
    // result rd:x18(0x0000000000800000), rs1:x14(0x0000000000000080), imm:0x10
    TEST_IMM_OP(roriw, x18, x14, 0x0000000000800000, 0x80, 0x10, x2, 16, x3)

inst_18:
    // Test 18:  Test with marching zeros/ones
    // result rd:x19(0x0000000000000001), rs1:x13(0x0000000000000100), imm:0x8
    TEST_IMM_OP(roriw, x19, x13, 0x0000000000000001, 0x100, 0x8, x2, 24, x3)

inst_19:
    // Test 19:  Test with marching zeros/ones
    // result rd:x20(0x0000000000000020), rs1:x12(0x0000000000000200), imm:0x4
    TEST_IMM_OP(roriw, x20, x12, 0x0000000000000020, 0x200, 0x4, x2, 32, x3)

    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with marching zeros/ones
    // result rd:x21(0x0000000000000100), rs1:x11(0x0000000000000400), imm:0x2
    TEST_IMM_OP(roriw, x21, x11, 0x0000000000000100, 0x400, 0x2, x1, 0, x2)

inst_21:
    // Test 21:  Test with marching zeros/ones
    // result rd:x22(0x0000000000000400), rs1:x10(0x0000000000000800), imm:0x1
    TEST_IMM_OP(roriw, x22, x10, 0x0000000000000400, 0x800, 0x1, x1, 8, x2)

inst_22:
    // Test 22:  Test with marching zeros/ones
    // result rd:x23(0x0000000000000200), rs1:x9(0x0000000000001000), imm:0x3
    TEST_IMM_OP(roriw, x23, x9, 0x0000000000000200, 0x1000, 0x3, x1, 16, x2)

inst_23:
    // Test 23:  Test with marching zeros/ones
    // result rd:x24(0x0000000000040000), rs1:x8(0x0000000000002000), imm:0x1b
    TEST_IMM_OP(roriw, x24, x8, 0x0000000000040000, 0x2000, 0x1b, x1, 24, x2)

inst_24:
    // Test 24:  Test with marching zeros/ones
    // result rd:x25(0x0000000000004000), rs1:x7(0x0000000000004000), imm:0x0
    TEST_IMM_OP(roriw, x25, x7, 0x0000000000004000, 0x4000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with marching zeros/ones
    // result rd:x26(0x0000000000001000), rs1:x6(0x0000000000008000), imm:0x3
    TEST_IMM_OP(roriw, x26, x6, 0x0000000000001000, 0x8000, 0x3, x1, 0, x7)

inst_26:
    // Test 26:  Test with marching zeros/ones
    // result rd:x27(0x0000000000000002), rs1:x5(0x0000000000010000), imm:0xf
    TEST_IMM_OP(roriw, x27, x5, 0x0000000000000002, 0x10000, 0xf, x1, 8, x7)

inst_27:
    // Test 27:  Test with marching zeros/ones
    // result rd:x28(0x0000000000000004), rs1:x4(0x0000000000020000), imm:0xf
    TEST_IMM_OP(roriw, x28, x4, 0x0000000000000004, 0x20000, 0xf, x1, 16, x7)

inst_28:
    // Test 28:  Test with marching zeros/ones
    // result rd:x29(0x0000000000000080), rs1:x3(0x0000000000040000), imm:0xb
    TEST_IMM_OP(roriw, x29, x3, 0x0000000000000080, 0x40000, 0xb, x1, 24, x7)

inst_29:
    // Test 29:  Test with marching zeros/ones
    // result rd:x30(0x0000000001000000), rs1:x2(0x0000000000080000), imm:0x1b
    TEST_IMM_OP(roriw, x30, x2, 0x0000000001000000, 0x80000, 0x1b, x1, 32, x7)

    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with marching zeros/ones
    // result rd:x31(0x0000000000080000), rs1:x1(0x0000000000100000), imm:0x1
    TEST_IMM_OP(roriw, x31, x1, 0x0000000000080000, 0x100000, 0x1, x5, 0, x6)

inst_31:
    // Test 31:  Test with marching zeros/ones
    // result rd:x1(0x0000000000000001), rs1:x31(0x0000000000200000), imm:0x15
    TEST_IMM_OP(roriw, x1, x31, 0x0000000000000001, 0x200000, 0x15, x5, 8, x6)

inst_32:
    // Test 32:  Test with marching zeros/ones
    // result rd:x2(0x0000000000800000), rs1:x30(0x0000000000400000), imm:0x1f
    TEST_IMM_OP(roriw, x2, x30, 0x0000000000800000, 0x400000, 0x1f, x5, 16, x6)

inst_33:
    // Test 33:  Test with marching zeros/ones
    // result rd:x3(0x0000000000000100), rs1:x29(0x0000000000800000), imm:0xf
    TEST_IMM_OP(roriw, x3, x29, 0x0000000000000100, 0x800000, 0xf, x5, 24, x6)

inst_34:
    // Test 34:  Test with marching zeros/ones
    // result rd:x4(0x0000000000000002), rs1:x28(0x0000000001000000), imm:0x17
    TEST_IMM_OP(roriw, x4, x28, 0x0000000000000002, 0x1000000, 0x17, x5, 32, x6)

    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with marching zeros/ones
    // result rd:x5(0x0000000040000000), rs1:x27(0x0000000002000000), imm:0x1b
    TEST_IMM_OP(roriw, x5, x27, 0x0000000040000000, 0x2000000, 0x1b, x1, 0, x2)

inst_36:
    // Test 36:  Test with marching zeros/ones
    // result rd:x6(0x0000000020000000), rs1:x26(0x0000000004000000), imm:0x1d
    TEST_IMM_OP(roriw, x6, x26, 0x0000000020000000, 0x4000000, 0x1d, x1, 8, x2)

inst_37:
    // Test 37:  Test with marching zeros/ones
    // result rd:x7(0x0000000020000000), rs1:x25(0x0000000008000000), imm:0x1e
    TEST_IMM_OP(roriw, x7, x25, 0x0000000020000000, 0x8000000, 0x1e, x1, 16, x2)

inst_38:
    // Test 38:  Test with marching zeros/ones
    // result rd:x8(0x0000000010000000), rs1:x24(0x0000000010000000), imm:0x0
    TEST_IMM_OP(roriw, x8, x24, 0x0000000010000000, 0x10000000, 0x0, x1, 24, x2)

inst_39:
    // Test 39:  Test with marching zeros/ones
    // result rd:x9(0x0000000000002000), rs1:x23(0x0000000020000000), imm:0x10
    TEST_IMM_OP(roriw, x9, x23, 0x0000000000002000, 0x20000000, 0x10, x1, 32, x2)

    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with marching zeros/ones
    // result rd:x10(0x0000000000400000), rs1:x22(0x0000000040000000), imm:0x8
    TEST_IMM_OP(roriw, x10, x22, 0x0000000000400000, 0x40000000, 0x8, x1, 0, x2)

inst_41:
    // Test 41:  Test with marching zeros/ones
    // result rd:x11(0x0000000008000000), rs1:x21(0x0000000080000000), imm:0x4
    TEST_IMM_OP(roriw, x11, x21, 0x0000000008000000, 0x80000000, 0x4, x1, 8, x2)

inst_42:
    // Test 42:  Test with marching zeros/ones
    // result rd:x12(0x0000000000000000), rs1:x20(0x0000000100000000), imm:0x2
    TEST_IMM_OP(roriw, x12, x20, 0x0000000000000000, 0x100000000, 0x2, x1, 16, x2)

inst_43:
    // Test 43:  Test with marching zeros/ones
    // result rd:x13(0x0000000000000000), rs1:x19(0x0000000200000000), imm:0x1
    TEST_IMM_OP(roriw, x13, x19, 0x0000000000000000, 0x200000000, 0x1, x1, 24, x2)

inst_44:
    // Test 44:  Test with marching zeros/ones
    // result rd:x14(0x0000000000000000), rs1:x18(0x0000000400000000), imm:0x3
    TEST_IMM_OP(roriw, x14, x18, 0x0000000000000000, 0x400000000, 0x3, x1, 32, x2)

    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with marching zeros/ones
    // result rd:x15(0x0000000000000000), rs1:x17(0x0000000800000000), imm:0x1b
    TEST_IMM_OP(roriw, x15, x17, 0x0000000000000000, 0x800000000, 0x1b, x3, 0, x4)

inst_46:
    // Test 46:  Test with marching zeros/ones
    // result rd:x16(0x0000000000000000), rs1:x16(0x0000001000000000), imm:0x0
    TEST_IMM_OP(roriw, x16, x16, 0x0000000000000000, 0x1000000000, 0x0, x3, 8, x4)

inst_47:
    // Test 47:  Test with marching zeros/ones
    // result rd:x17(0x0000000000000000), rs1:x15(0x0000002000000000), imm:0x3
    TEST_IMM_OP(roriw, x17, x15, 0x0000000000000000, 0x2000000000, 0x3, x3, 16, x4)

inst_48:
    // Test 48:  Test with marching zeros/ones
    // result rd:x18(0x0000000000000000), rs1:x14(0x0000004000000000), imm:0xf
    TEST_IMM_OP(roriw, x18, x14, 0x0000000000000000, 0x4000000000, 0xf, x3, 24, x4)

inst_49:
    // Test 49:  Test with marching zeros/ones
    // result rd:x19(0x0000000000000000), rs1:x13(0x0000008000000000), imm:0xf
    TEST_IMM_OP(roriw, x19, x13, 0x0000000000000000, 0x8000000000, 0xf, x3, 32, x4)

    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with marching zeros/ones
    // result rd:x20(0x0000000000000000), rs1:x12(0x0000010000000000), imm:0xb
    TEST_IMM_OP(roriw, x20, x12, 0x0000000000000000, 0x10000000000, 0xb, x1, 0, x2)

inst_51:
    // Test 51:  Test with marching zeros/ones
    // result rd:x21(0x0000000000000000), rs1:x11(0x0000020000000000), imm:0x1b
    TEST_IMM_OP(roriw, x21, x11, 0x0000000000000000, 0x20000000000, 0x1b, x1, 8, x2)

inst_52:
    // Test 52:  Test with marching zeros/ones
    // result rd:x22(0x0000000000000000), rs1:x10(0x0000040000000000), imm:0x1
    TEST_IMM_OP(roriw, x22, x10, 0x0000000000000000, 0x40000000000, 0x1, x1, 16, x2)

inst_53:
    // Test 53:  Test with marching zeros/ones
    // result rd:x23(0x0000000000000000), rs1:x9(0x0000080000000000), imm:0x15
    TEST_IMM_OP(roriw, x23, x9, 0x0000000000000000, 0x80000000000, 0x15, x1, 24, x2)

inst_54:
    // Test 54:  Test with marching zeros/ones
    // result rd:x24(0x0000000000000000), rs1:x8(0x0000100000000000), imm:0x1f
    TEST_IMM_OP(roriw, x24, x8, 0x0000000000000000, 0x100000000000, 0x1f, x1, 32, x2)

    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with marching zeros/ones
    // result rd:x25(0x0000000000000000), rs1:x7(0x0000200000000000), imm:0xf
    TEST_IMM_OP(roriw, x25, x7, 0x0000000000000000, 0x200000000000, 0xf, x1, 0, x2)

inst_56:
    // Test 56:  Test with marching zeros/ones
    // result rd:x26(0x0000000000000000), rs1:x6(0x0000400000000000), imm:0x17
    TEST_IMM_OP(roriw, x26, x6, 0x0000000000000000, 0x400000000000, 0x17, x1, 8, x2)

inst_57:
    // Test 57:  Test with marching zeros/ones
    // result rd:x27(0x0000000000000000), rs1:x5(0x0000800000000000), imm:0x1b
    TEST_IMM_OP(roriw, x27, x5, 0x0000000000000000, 0x800000000000, 0x1b, x1, 16, x2)

inst_58:
    // Test 58:  Test with marching zeros/ones
    // result rd:x28(0x0000000000000000), rs1:x4(0x0001000000000000), imm:0x1d
    TEST_IMM_OP(roriw, x28, x4, 0x0000000000000000, 0x1000000000000, 0x1d, x1, 24, x2)

inst_59:
    // Test 59:  Test with marching zeros/ones
    // result rd:x29(0x0000000000000000), rs1:x3(0x0002000000000000), imm:0x1e
    TEST_IMM_OP(roriw, x29, x3, 0x0000000000000000, 0x2000000000000, 0x1e, x1, 32, x2)

    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with marching zeros/ones
    // result rd:x30(0x0000000000000000), rs1:x2(0x0004000000000000), imm:0x0
    TEST_IMM_OP(roriw, x30, x2, 0x0000000000000000, 0x4000000000000, 0x0, x4, 0, x5)

inst_61:
    // Test 61:  Test with marching zeros/ones
    // result rd:x31(0x0000000000000000), rs1:x1(0x0008000000000000), imm:0x10
    TEST_IMM_OP(roriw, x31, x1, 0x0000000000000000, 0x8000000000000, 0x10, x4, 8, x5)

inst_62:
    // Test 62:  Test with marching zeros/ones
    // result rd:x1(0x0000000000000000), rs1:x31(0x0010000000000000), imm:0x8
    TEST_IMM_OP(roriw, x1, x31, 0x0000000000000000, 0x10000000000000, 0x8, x4, 16, x5)

inst_63:
    // Test 63:  Test with marching zeros/ones
    // result rd:x2(0x0000000000000000), rs1:x30(0x0020000000000000), imm:0x4
    TEST_IMM_OP(roriw, x2, x30, 0x0000000000000000, 0x20000000000000, 0x4, x4, 24, x5)

inst_64:
    // Test 64:  Test with marching zeros/ones
    // result rd:x3(0x0000000000000000), rs1:x29(0x0040000000000000), imm:0x2
    TEST_IMM_OP(roriw, x3, x29, 0x0000000000000000, 0x40000000000000, 0x2, x4, 32, x5)

    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with marching zeros/ones
    // result rd:x4(0x0000000000000000), rs1:x28(0x0080000000000000), imm:0x1
    TEST_IMM_OP(roriw, x4, x28, 0x0000000000000000, 0x80000000000000, 0x1, x1, 0, x2)

inst_66:
    // Test 66:  Test with marching zeros/ones
    // result rd:x5(0x0000000000000000), rs1:x27(0x0100000000000000), imm:0x3
    TEST_IMM_OP(roriw, x5, x27, 0x0000000000000000, 0x100000000000000, 0x3, x1, 8, x2)

inst_67:
    // Test 67:  Test with marching zeros/ones
    // result rd:x6(0x0000000000000000), rs1:x26(0x0200000000000000), imm:0x1b
    TEST_IMM_OP(roriw, x6, x26, 0x0000000000000000, 0x200000000000000, 0x1b, x1, 16, x2)

inst_68:
    // Test 68:  Test with marching zeros/ones
    // result rd:x7(0x0000000000000000), rs1:x25(0x0400000000000000), imm:0x0
    TEST_IMM_OP(roriw, x7, x25, 0x0000000000000000, 0x400000000000000, 0x0, x1, 24, x2)

inst_69:
    // Test 69:  Test with marching zeros/ones
    // result rd:x8(0x0000000000000000), rs1:x24(0x0800000000000000), imm:0x3
    TEST_IMM_OP(roriw, x8, x24, 0x0000000000000000, 0x800000000000000, 0x3, x1, 32, x2)

    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with marching zeros/ones
    // result rd:x9(0x0000000000000000), rs1:x23(0x1000000000000000), imm:0xf
    TEST_IMM_OP(roriw, x9, x23, 0x0000000000000000, 0x1000000000000000, 0xf, x1, 0, x2)

inst_71:
    // Test 71:  Test with marching zeros/ones
    // result rd:x10(0x0000000000000000), rs1:x22(0x2000000000000000), imm:0xf
    TEST_IMM_OP(roriw, x10, x22, 0x0000000000000000, 0x2000000000000000, 0xf, x1, 8, x2)

inst_72:
    // Test 72:  Test with marching zeros/ones
    // result rd:x11(0x0000000000000000), rs1:x21(0x4000000000000000), imm:0xb
    TEST_IMM_OP(roriw, x11, x21, 0x0000000000000000, 0x4000000000000000, 0xb, x1, 16, x2)

inst_73:
    // Test 73:  Test with marching zeros/ones
    // result rd:x12(0x0000000000000000), rs1:x20(0x8000000000000000), imm:0x1b
    TEST_IMM_OP(roriw, x12, x20, 0x0000000000000000, 0x8000000000000000, 0x1b, x1, 24, x2)

inst_74:
    // Test 74:  Test with marching zeros/ones
    // result rd:x13(0x0000000000000000), rs1:x19(0x0000000000000000), imm:0x1
    TEST_IMM_OP(roriw, x13, x19, 0x0000000000000000, 0x0, 0x1, x1, 32, x2)

    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with marching zeros/ones
    // result rd:x14(0xfffffffffffff7ff), rs1:x18(0xfffffffffffffffe), imm:0x15
    TEST_IMM_OP(roriw, x14, x18, 0xfffffffffffff7ff, 0xfffffffffffffffe, 0x15, x4, 0, x5)

inst_76:
    // Test 76:  Test with marching zeros/ones
    // result rd:x15(0xfffffffffffffffb), rs1:x17(0xfffffffffffffffd), imm:0x1f
    TEST_IMM_OP(roriw, x15, x17, 0xfffffffffffffffb, 0xfffffffffffffffd, 0x1f, x4, 8, x5)

inst_77:
    // Test 77:  Test with marching zeros/ones
    // result rd:x16(0xfffffffffff7ffff), rs1:x16(0xfffffffffffffffb), imm:0xf
    TEST_IMM_OP(roriw, x16, x16, 0xfffffffffff7ffff, 0xfffffffffffffffb, 0xf, x4, 16, x5)

inst_78:
    // Test 78:  Test with marching zeros/ones
    // result rd:x17(0xffffffffffffefff), rs1:x15(0xfffffffffffffff7), imm:0x17
    TEST_IMM_OP(roriw, x17, x15, 0xffffffffffffefff, 0xfffffffffffffff7, 0x17, x4, 24, x5)

inst_79:
    // Test 79:  Test with marching zeros/ones
    // result rd:x18(0xfffffffffffffdff), rs1:x14(0xffffffffffffffef), imm:0x1b
    TEST_IMM_OP(roriw, x18, x14, 0xfffffffffffffdff, 0xffffffffffffffef, 0x1b, x4, 32, x5)

    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with marching zeros/ones
    // result rd:x19(0xfffffffffffffeff), rs1:x13(0xffffffffffffffdf), imm:0x1d
    TEST_IMM_OP(roriw, x19, x13, 0xfffffffffffffeff, 0xffffffffffffffdf, 0x1d, x1, 0, x2)

inst_81:
    // Test 81:  Test with marching zeros/ones
    // result rd:x20(0xfffffffffffffeff), rs1:x12(0xffffffffffffffbf), imm:0x1e
    TEST_IMM_OP(roriw, x20, x12, 0xfffffffffffffeff, 0xffffffffffffffbf, 0x1e, x1, 8, x2)

inst_82:
    // Test 82:  Test with marching zeros/ones
    // result rd:x21(0xffffffffffffff7f), rs1:x11(0xffffffffffffff7f), imm:0x0
    TEST_IMM_OP(roriw, x21, x11, 0xffffffffffffff7f, 0xffffffffffffff7f, 0x0, x1, 16, x2)

inst_83:
    // Test 83:  Test with marching zeros/ones
    // result rd:x22(0xfffffffffeffffff), rs1:x10(0xfffffffffffffeff), imm:0x10
    TEST_IMM_OP(roriw, x22, x10, 0xfffffffffeffffff, 0xfffffffffffffeff, 0x10, x1, 24, x2)

inst_84:
    // Test 84:  Test with marching zeros/ones
    // result rd:x23(0xfffffffffffffffd), rs1:x9(0xfffffffffffffdff), imm:0x8
    TEST_IMM_OP(roriw, x23, x9, 0xfffffffffffffffd, 0xfffffffffffffdff, 0x8, x1, 32, x2)

    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with marching zeros/ones
    // result rd:x24(0xffffffffffffffbf), rs1:x8(0xfffffffffffffbff), imm:0x4
    TEST_IMM_OP(roriw, x24, x8, 0xffffffffffffffbf, 0xfffffffffffffbff, 0x4, x1, 0, x2)

inst_86:
    // Test 86:  Test with marching zeros/ones
    // result rd:x25(0xfffffffffffffdff), rs1:x7(0xfffffffffffff7ff), imm:0x2
    TEST_IMM_OP(roriw, x25, x7, 0xfffffffffffffdff, 0xfffffffffffff7ff, 0x2, x1, 8, x2)

inst_87:
    // Test 87:  Test with marching zeros/ones
    // result rd:x26(0xfffffffffffff7ff), rs1:x6(0xffffffffffffefff), imm:0x1
    TEST_IMM_OP(roriw, x26, x6, 0xfffffffffffff7ff, 0xffffffffffffefff, 0x1, x1, 16, x2)

inst_88:
    // Test 88:  Test with marching zeros/ones
    // result rd:x27(0xfffffffffffffbff), rs1:x5(0xffffffffffffdfff), imm:0x3
    TEST_IMM_OP(roriw, x27, x5, 0xfffffffffffffbff, 0xffffffffffffdfff, 0x3, x1, 24, x2)

inst_89:
    // Test 89:  Test with marching zeros/ones
    // result rd:x28(0xfffffffffff7ffff), rs1:x4(0xffffffffffffbfff), imm:0x1b
    TEST_IMM_OP(roriw, x28, x4, 0xfffffffffff7ffff, 0xffffffffffffbfff, 0x1b, x1, 32, x2)

    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with marching zeros/ones
    // result rd:x29(0xffffffffffff7fff), rs1:x3(0xffffffffffff7fff), imm:0x0
    TEST_IMM_OP(roriw, x29, x3, 0xffffffffffff7fff, 0xffffffffffff7fff, 0x0, x4, 0, x5)

inst_91:
    // Test 91:  Test with marching zeros/ones
    // result rd:x30(0xffffffffffffdfff), rs1:x2(0xfffffffffffeffff), imm:0x3
    TEST_IMM_OP(roriw, x30, x2, 0xffffffffffffdfff, 0xfffffffffffeffff, 0x3, x4, 8, x5)

inst_92:
    // Test 92:  Test with marching zeros/ones
    // result rd:x31(0xfffffffffffffffb), rs1:x1(0xfffffffffffdffff), imm:0xf
    TEST_IMM_OP(roriw, x31, x1, 0xfffffffffffffffb, 0xfffffffffffdffff, 0xf, x4, 16, x5)

inst_93:
    // Test 93:  Test with marching zeros/ones
    // result rd:x1(0xfffffffffffffff7), rs1:x31(0xfffffffffffbffff), imm:0xf
    TEST_IMM_OP(roriw, x1, x31, 0xfffffffffffffff7, 0xfffffffffffbffff, 0xf, x4, 24, x5)

inst_94:
    // Test 94:  Test with marching zeros/ones
    // result rd:x2(0xfffffffffffffeff), rs1:x30(0xfffffffffff7ffff), imm:0xb
    TEST_IMM_OP(roriw, x2, x30, 0xfffffffffffffeff, 0xfffffffffff7ffff, 0xb, x4, 32, x5)

    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with marching zeros/ones
    // result rd:x3(0xfffffffffdffffff), rs1:x29(0xffffffffffefffff), imm:0x1b
    TEST_IMM_OP(roriw, x3, x29, 0xfffffffffdffffff, 0xffffffffffefffff, 0x1b, x1, 0, x2)

inst_96:
    // Test 96:  Test with marching zeros/ones
    // result rd:x4(0xffffffffffefffff), rs1:x28(0xffffffffffdfffff), imm:0x1
    TEST_IMM_OP(roriw, x4, x28, 0xffffffffffefffff, 0xffffffffffdfffff, 0x1, x1, 8, x2)

inst_97:
    // Test 97:  Test with marching zeros/ones
    // result rd:x5(0xfffffffffffffffd), rs1:x27(0xffffffffffbfffff), imm:0x15
    TEST_IMM_OP(roriw, x5, x27, 0xfffffffffffffffd, 0xffffffffffbfffff, 0x15, x1, 16, x2)

inst_98:
    // Test 98:  Test with marching zeros/ones
    // result rd:x6(0xfffffffffeffffff), rs1:x26(0xffffffffff7fffff), imm:0x1f
    TEST_IMM_OP(roriw, x6, x26, 0xfffffffffeffffff, 0xffffffffff7fffff, 0x1f, x1, 24, x2)

inst_99:
    // Test 99:  Test with marching zeros/ones
    // result rd:x7(0xfffffffffffffdff), rs1:x25(0xfffffffffeffffff), imm:0xf
    TEST_IMM_OP(roriw, x7, x25, 0xfffffffffffffdff, 0xfffffffffeffffff, 0xf, x1, 32, x2)

    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with marching zeros/ones
    // result rd:x8(0xfffffffffffffffb), rs1:x24(0xfffffffffdffffff), imm:0x17
    TEST_IMM_OP(roriw, x8, x24, 0xfffffffffffffffb, 0xfffffffffdffffff, 0x17, x1, 0, x2)

inst_101:
    // Test 101:  Test with marching zeros/ones
    // result rd:x9(0x000000007fffffff), rs1:x23(0xfffffffffbffffff), imm:0x1b
    TEST_IMM_OP(roriw, x9, x23, 0x000000007fffffff, 0xfffffffffbffffff, 0x1b, x1, 8, x2)

inst_102:
    // Test 102:  Test with marching zeros/ones
    // result rd:x10(0xffffffffbfffffff), rs1:x22(0xfffffffff7ffffff), imm:0x1d
    TEST_IMM_OP(roriw, x10, x22, 0xffffffffbfffffff, 0xfffffffff7ffffff, 0x1d, x1, 16, x2)

inst_103:
    // Test 103:  Test with marching zeros/ones
    // result rd:x11(0xffffffffbfffffff), rs1:x21(0xffffffffefffffff), imm:0x1e
    TEST_IMM_OP(roriw, x11, x21, 0xffffffffbfffffff, 0xffffffffefffffff, 0x1e, x1, 24, x2)

inst_104:
    // Test 104:  Test with marching zeros/ones
    // result rd:x12(0xffffffffdfffffff), rs1:x20(0xffffffffdfffffff), imm:0x0
    TEST_IMM_OP(roriw, x12, x20, 0xffffffffdfffffff, 0xffffffffdfffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with marching zeros/ones
    // result rd:x13(0xffffffffffffbfff), rs1:x19(0xffffffffbfffffff), imm:0x10
    TEST_IMM_OP(roriw, x13, x19, 0xffffffffffffbfff, 0xffffffffbfffffff, 0x10, x5, 0, x6)

inst_106:
    // Test 106:  Test with marching zeros/ones
    // result rd:x14(0xffffffffff7fffff), rs1:x18(0xffffffff7fffffff), imm:0x8
    TEST_IMM_OP(roriw, x14, x18, 0xffffffffff7fffff, 0xffffffff7fffffff, 0x8, x5, 8, x6)

inst_107:
    // Test 107:  Test with marching zeros/ones
    // result rd:x15(0xffffffffffffffff), rs1:x17(0xfffffffeffffffff), imm:0x4
    TEST_IMM_OP(roriw, x15, x17, 0xffffffffffffffff, 0xfffffffeffffffff, 0x4, x5, 16, x6)

inst_108:
    // Test 108:  Test with marching zeros/ones
    // result rd:x16(0xffffffffffffffff), rs1:x16(0xfffffffdffffffff), imm:0x2
    TEST_IMM_OP(roriw, x16, x16, 0xffffffffffffffff, 0xfffffffdffffffff, 0x2, x5, 24, x6)

inst_109:
    // Test 109:  Test with marching zeros/ones
    // result rd:x17(0xffffffffffffffff), rs1:x15(0xfffffffbffffffff), imm:0x1
    TEST_IMM_OP(roriw, x17, x15, 0xffffffffffffffff, 0xfffffffbffffffff, 0x1, x5, 32, x6)

    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with marching zeros/ones
    // result rd:x18(0xffffffffffffffff), rs1:x14(0xfffffff7ffffffff), imm:0x3
    TEST_IMM_OP(roriw, x18, x14, 0xffffffffffffffff, 0xfffffff7ffffffff, 0x3, x1, 0, x2)

inst_111:
    // Test 111:  Test with marching zeros/ones
    // result rd:x19(0xffffffffffffffff), rs1:x13(0xffffffefffffffff), imm:0x1b
    TEST_IMM_OP(roriw, x19, x13, 0xffffffffffffffff, 0xffffffefffffffff, 0x1b, x1, 8, x2)

inst_112:
    // Test 112:  Test with marching zeros/ones
    // result rd:x20(0xffffffffffffffff), rs1:x12(0xffffffdfffffffff), imm:0x0
    TEST_IMM_OP(roriw, x20, x12, 0xffffffffffffffff, 0xffffffdfffffffff, 0x0, x1, 16, x2)

inst_113:
    // Test 113:  Test with marching zeros/ones
    // result rd:x21(0xffffffffffffffff), rs1:x11(0xffffffbfffffffff), imm:0x3
    TEST_IMM_OP(roriw, x21, x11, 0xffffffffffffffff, 0xffffffbfffffffff, 0x3, x1, 24, x2)

inst_114:
    // Test 114:  Test with marching zeros/ones
    // result rd:x22(0xffffffffffffffff), rs1:x10(0xffffff7fffffffff), imm:0xf
    TEST_IMM_OP(roriw, x22, x10, 0xffffffffffffffff, 0xffffff7fffffffff, 0xf, x1, 32, x2)

    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with marching zeros/ones
    // result rd:x23(0xffffffffffffffff), rs1:x9(0xfffffeffffffffff), imm:0xf
    TEST_IMM_OP(roriw, x23, x9, 0xffffffffffffffff, 0xfffffeffffffffff, 0xf, x1, 0, x2)

inst_116:
    // Test 116:  Test with marching zeros/ones
    // result rd:x24(0xffffffffffffffff), rs1:x8(0xfffffdffffffffff), imm:0xb
    TEST_IMM_OP(roriw, x24, x8, 0xffffffffffffffff, 0xfffffdffffffffff, 0xb, x1, 8, x2)

inst_117:
    // Test 117:  Test with marching zeros/ones
    // result rd:x25(0xffffffffffffffff), rs1:x7(0xfffffbffffffffff), imm:0x1b
    TEST_IMM_OP(roriw, x25, x7, 0xffffffffffffffff, 0xfffffbffffffffff, 0x1b, x1, 16, x2)

inst_118:
    // Test 118:  Test with marching zeros/ones
    // result rd:x26(0xffffffffffffffff), rs1:x6(0xfffff7ffffffffff), imm:0x1
    TEST_IMM_OP(roriw, x26, x6, 0xffffffffffffffff, 0xfffff7ffffffffff, 0x1, x1, 24, x2)

inst_119:
    // Test 119:  Test with marching zeros/ones
    // result rd:x27(0xffffffffffffffff), rs1:x5(0xffffefffffffffff), imm:0x15
    TEST_IMM_OP(roriw, x27, x5, 0xffffffffffffffff, 0xffffefffffffffff, 0x15, x1, 32, x2)

    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with marching zeros/ones
    // result rd:x28(0xffffffffffffffff), rs1:x4(0xffffdfffffffffff), imm:0x1f
    TEST_IMM_OP(roriw, x28, x4, 0xffffffffffffffff, 0xffffdfffffffffff, 0x1f, x5, 0, x6)

inst_121:
    // Test 121:  Test with marching zeros/ones
    // result rd:x29(0xffffffffffffffff), rs1:x3(0xffffbfffffffffff), imm:0xf
    TEST_IMM_OP(roriw, x29, x3, 0xffffffffffffffff, 0xffffbfffffffffff, 0xf, x5, 8, x6)

inst_122:
    // Test 122:  Test with marching zeros/ones
    // result rd:x30(0xffffffffffffffff), rs1:x2(0xffff7fffffffffff), imm:0x17
    TEST_IMM_OP(roriw, x30, x2, 0xffffffffffffffff, 0xffff7fffffffffff, 0x17, x5, 16, x6)

inst_123:
    // Test 123:  Test with marching zeros/ones
    // result rd:x31(0xffffffffffffffff), rs1:x1(0xfffeffffffffffff), imm:0x1b
    TEST_IMM_OP(roriw, x31, x1, 0xffffffffffffffff, 0xfffeffffffffffff, 0x1b, x5, 24, x6)

inst_124:
    // Test 124:  Test with marching zeros/ones
    // result rd:x1(0xffffffffffffffff), rs1:x31(0xfffdffffffffffff), imm:0x1d
    TEST_IMM_OP(roriw, x1, x31, 0xffffffffffffffff, 0xfffdffffffffffff, 0x1d, x5, 32, x6)

    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with marching zeros/ones
    // result rd:x2(0xffffffffffffffff), rs1:x30(0xfffbffffffffffff), imm:0x1e
    TEST_IMM_OP(roriw, x2, x30, 0xffffffffffffffff, 0xfffbffffffffffff, 0x1e, x1, 0, x7)

inst_126:
    // Test 126:  Test with marching zeros/ones
    // result rd:x3(0xffffffffffffffff), rs1:x29(0xfff7ffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x3, x29, 0xffffffffffffffff, 0xfff7ffffffffffff, 0x0, x1, 8, x7)

inst_127:
    // Test 127:  Test with marching zeros/ones
    // result rd:x4(0xffffffffffffffff), rs1:x28(0xffefffffffffffff), imm:0x10
    TEST_IMM_OP(roriw, x4, x28, 0xffffffffffffffff, 0xffefffffffffffff, 0x10, x1, 16, x7)

inst_128:
    // Test 128:  Test with marching zeros/ones
    // result rd:x5(0xffffffffffffffff), rs1:x27(0xffdfffffffffffff), imm:0x8
    TEST_IMM_OP(roriw, x5, x27, 0xffffffffffffffff, 0xffdfffffffffffff, 0x8, x1, 24, x7)

inst_129:
    // Test 129:  Test with marching zeros/ones
    // result rd:x6(0xffffffffffffffff), rs1:x26(0xffbfffffffffffff), imm:0x4
    TEST_IMM_OP(roriw, x6, x26, 0xffffffffffffffff, 0xffbfffffffffffff, 0x4, x1, 32, x7)

    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with marching zeros/ones
    // result rd:x7(0xffffffffffffffff), rs1:x25(0xff7fffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x7, x25, 0xffffffffffffffff, 0xff7fffffffffffff, 0x0, x1, 0, x2)

inst_131:
    // Test 131:  Test with marching zeros/ones
    // result rd:x8(0xffffffffffffffff), rs1:x24(0xfeffffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x8, x24, 0xffffffffffffffff, 0xfeffffffffffffff, 0x0, x1, 8, x2)

inst_132:
    // Test 132:  Test with marching zeros/ones
    // result rd:x9(0xffffffffffffffff), rs1:x23(0xfdffffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x9, x23, 0xffffffffffffffff, 0xfdffffffffffffff, 0x0, x1, 16, x2)

inst_133:
    // Test 133:  Test with marching zeros/ones
    // result rd:x10(0xffffffffffffffff), rs1:x22(0xfbffffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x10, x22, 0xffffffffffffffff, 0xfbffffffffffffff, 0x0, x1, 24, x2)

inst_134:
    // Test 134:  Test with marching zeros/ones
    // result rd:x11(0xffffffffffffffff), rs1:x21(0xf7ffffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x11, x21, 0xffffffffffffffff, 0xf7ffffffffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with marching zeros/ones
    // result rd:x12(0xffffffffffffffff), rs1:x20(0xefffffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x12, x20, 0xffffffffffffffff, 0xefffffffffffffff, 0x0, x6, 0, x7)

inst_136:
    // Test 136:  Test with marching zeros/ones
    // result rd:x13(0xffffffffffffffff), rs1:x19(0xdfffffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x13, x19, 0xffffffffffffffff, 0xdfffffffffffffff, 0x0, x6, 8, x7)

inst_137:
    // Test 137:  Test with marching zeros/ones
    // result rd:x14(0xffffffffffffffff), rs1:x18(0xbfffffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x14, x18, 0xffffffffffffffff, 0xbfffffffffffffff, 0x0, x6, 16, x7)

inst_138:
    // Test 138:  Test with marching zeros/ones
    // result rd:x15(0xffffffffffffffff), rs1:x17(0x7fffffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x15, x17, 0xffffffffffffffff, 0x7fffffffffffffff, 0x0, x6, 24, x7)

inst_139:
    // Test 139:  Test with marching zeros/ones
    // result rd:x16(0xffffffffffffffff), rs1:x16(0xffffffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x16, x16, 0xffffffffffffffff, 0xffffffffffffffff, 0x0, x6, 32, x7)

    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with marching zeros/ones
    // result rd:x17(0x0000000000000001), rs1:x15(0x0000000000000001), imm:0x0
    TEST_IMM_OP(roriw, x17, x15, 0x0000000000000001, 0x1, 0x0, x1, 0, x2)

inst_141:
    // Test 141:  Test with marching zeros/ones
    // result rd:x18(0x0000000000000002), rs1:x14(0x0000000000000002), imm:0x0
    TEST_IMM_OP(roriw, x18, x14, 0x0000000000000002, 0x2, 0x0, x1, 8, x2)

inst_142:
    // Test 142:  Test with marching zeros/ones
    // result rd:x19(0x0000000000000004), rs1:x13(0x0000000000000004), imm:0x0
    TEST_IMM_OP(roriw, x19, x13, 0x0000000000000004, 0x4, 0x0, x1, 16, x2)

inst_143:
    // Test 143:  Test with marching zeros/ones
    // result rd:x20(0x0000000000000008), rs1:x12(0x0000000000000008), imm:0x0
    TEST_IMM_OP(roriw, x20, x12, 0x0000000000000008, 0x8, 0x0, x1, 24, x2)

inst_144:
    // Test 144:  Test with marching zeros/ones
    // result rd:x21(0x0000000000000010), rs1:x11(0x0000000000000010), imm:0x0
    TEST_IMM_OP(roriw, x21, x11, 0x0000000000000010, 0x10, 0x0, x1, 32, x2)

    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with marching zeros/ones
    // result rd:x22(0x0000000000000020), rs1:x10(0x0000000000000020), imm:0x0
    TEST_IMM_OP(roriw, x22, x10, 0x0000000000000020, 0x20, 0x0, x1, 0, x2)

inst_146:
    // Test 146:  Test with marching zeros/ones
    // result rd:x23(0x0000000000000040), rs1:x9(0x0000000000000040), imm:0x0
    TEST_IMM_OP(roriw, x23, x9, 0x0000000000000040, 0x40, 0x0, x1, 8, x2)

inst_147:
    // Test 147:  Test with marching zeros/ones
    // result rd:x24(0x0000000000000080), rs1:x8(0x0000000000000080), imm:0x0
    TEST_IMM_OP(roriw, x24, x8, 0x0000000000000080, 0x80, 0x0, x1, 16, x2)

inst_148:
    // Test 148:  Test with marching zeros/ones
    // result rd:x25(0x0000000000000100), rs1:x7(0x0000000000000100), imm:0x0
    TEST_IMM_OP(roriw, x25, x7, 0x0000000000000100, 0x100, 0x0, x1, 24, x2)

inst_149:
    // Test 149:  Test with marching zeros/ones
    // result rd:x26(0x0000000000000200), rs1:x6(0x0000000000000200), imm:0x0
    TEST_IMM_OP(roriw, x26, x6, 0x0000000000000200, 0x200, 0x0, x1, 32, x2)

    
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x6,signature_31_0)


inst_150:
    // Test 150:  Test with marching zeros/ones
    // result rd:x27(0x0000000000000400), rs1:x5(0x0000000000000400), imm:0x0
    TEST_IMM_OP(roriw, x27, x5, 0x0000000000000400, 0x400, 0x0, x6, 0, x7)

inst_151:
    // Test 151:  Test with marching zeros/ones
    // result rd:x28(0x0000000000000800), rs1:x4(0x0000000000000800), imm:0x0
    TEST_IMM_OP(roriw, x28, x4, 0x0000000000000800, 0x800, 0x0, x6, 8, x7)

inst_152:
    // Test 152:  Test with marching zeros/ones
    // result rd:x29(0x0000000000001000), rs1:x3(0x0000000000001000), imm:0x0
    TEST_IMM_OP(roriw, x29, x3, 0x0000000000001000, 0x1000, 0x0, x6, 16, x7)

inst_153:
    // Test 153:  Test with marching zeros/ones
    // result rd:x30(0x0000000000002000), rs1:x2(0x0000000000002000), imm:0x0
    TEST_IMM_OP(roriw, x30, x2, 0x0000000000002000, 0x2000, 0x0, x6, 24, x7)

inst_154:
    // Test 154:  Test with marching zeros/ones
    // result rd:x31(0x0000000000004000), rs1:x1(0x0000000000004000), imm:0x0
    TEST_IMM_OP(roriw, x31, x1, 0x0000000000004000, 0x4000, 0x0, x6, 32, x7)

    
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x6,signature_32_0)


inst_155:
    // Test 155:  Test with marching zeros/ones
    // result rd:x1(0x0000000000008000), rs1:x31(0x0000000000008000), imm:0x0
    TEST_IMM_OP(roriw, x1, x31, 0x0000000000008000, 0x8000, 0x0, x6, 0, x7)

inst_156:
    // Test 156:  Test with marching zeros/ones
    // result rd:x2(0x0000000000010000), rs1:x30(0x0000000000010000), imm:0x0
    TEST_IMM_OP(roriw, x2, x30, 0x0000000000010000, 0x10000, 0x0, x6, 8, x7)

inst_157:
    // Test 157:  Test with marching zeros/ones
    // result rd:x3(0x0000000000020000), rs1:x29(0x0000000000020000), imm:0x0
    TEST_IMM_OP(roriw, x3, x29, 0x0000000000020000, 0x20000, 0x0, x6, 16, x7)

inst_158:
    // Test 158:  Test with marching zeros/ones
    // result rd:x4(0x0000000000040000), rs1:x28(0x0000000000040000), imm:0x0
    TEST_IMM_OP(roriw, x4, x28, 0x0000000000040000, 0x40000, 0x0, x6, 24, x7)

inst_159:
    // Test 159:  Test with marching zeros/ones
    // result rd:x5(0x0000000000080000), rs1:x27(0x0000000000080000), imm:0x0
    TEST_IMM_OP(roriw, x5, x27, 0x0000000000080000, 0x80000, 0x0, x6, 32, x7)

    
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_33_0)


inst_160:
    // Test 160:  Test with marching zeros/ones
    // result rd:x6(0x0000000000100000), rs1:x26(0x0000000000100000), imm:0x0
    TEST_IMM_OP(roriw, x6, x26, 0x0000000000100000, 0x100000, 0x0, x1, 0, x2)

inst_161:
    // Test 161:  Test with marching zeros/ones
    // result rd:x7(0x0000000000200000), rs1:x25(0x0000000000200000), imm:0x0
    TEST_IMM_OP(roriw, x7, x25, 0x0000000000200000, 0x200000, 0x0, x1, 8, x2)

inst_162:
    // Test 162:  Test with marching zeros/ones
    // result rd:x8(0x0000000000400000), rs1:x24(0x0000000000400000), imm:0x0
    TEST_IMM_OP(roriw, x8, x24, 0x0000000000400000, 0x400000, 0x0, x1, 16, x2)

inst_163:
    // Test 163:  Test with marching zeros/ones
    // result rd:x9(0x0000000000800000), rs1:x23(0x0000000000800000), imm:0x0
    TEST_IMM_OP(roriw, x9, x23, 0x0000000000800000, 0x800000, 0x0, x1, 24, x2)

inst_164:
    // Test 164:  Test with marching zeros/ones
    // result rd:x10(0x0000000001000000), rs1:x22(0x0000000001000000), imm:0x0
    TEST_IMM_OP(roriw, x10, x22, 0x0000000001000000, 0x1000000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_34_0)


inst_165:
    // Test 165:  Test with marching zeros/ones
    // result rd:x11(0x0000000002000000), rs1:x21(0x0000000002000000), imm:0x0
    TEST_IMM_OP(roriw, x11, x21, 0x0000000002000000, 0x2000000, 0x0, x1, 0, x7)

inst_166:
    // Test 166:  Test with marching zeros/ones
    // result rd:x12(0x0000000004000000), rs1:x20(0x0000000004000000), imm:0x0
    TEST_IMM_OP(roriw, x12, x20, 0x0000000004000000, 0x4000000, 0x0, x1, 8, x7)

inst_167:
    // Test 167:  Test with marching zeros/ones
    // result rd:x13(0x0000000008000000), rs1:x19(0x0000000008000000), imm:0x0
    TEST_IMM_OP(roriw, x13, x19, 0x0000000008000000, 0x8000000, 0x0, x1, 16, x7)

inst_168:
    // Test 168:  Test with marching zeros/ones
    // result rd:x14(0x0000000010000000), rs1:x18(0x0000000010000000), imm:0x0
    TEST_IMM_OP(roriw, x14, x18, 0x0000000010000000, 0x10000000, 0x0, x1, 24, x7)

inst_169:
    // Test 169:  Test with marching zeros/ones
    // result rd:x15(0x0000000020000000), rs1:x17(0x0000000020000000), imm:0x0
    TEST_IMM_OP(roriw, x15, x17, 0x0000000020000000, 0x20000000, 0x0, x1, 32, x7)

    
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x2,signature_35_0)


inst_170:
    // Test 170:  Test with marching zeros/ones
    // result rd:x16(0x0000000040000000), rs1:x16(0x0000000040000000), imm:0x0
    TEST_IMM_OP(roriw, x16, x16, 0x0000000040000000, 0x40000000, 0x0, x2, 0, x3)

inst_171:
    // Test 171:  Test with marching zeros/ones
    // result rd:x17(0xffffffff80000000), rs1:x15(0x0000000080000000), imm:0x0
    TEST_IMM_OP(roriw, x17, x15, 0xffffffff80000000, 0x80000000, 0x0, x2, 8, x3)

inst_172:
    // Test 172:  Test with marching zeros/ones
    // result rd:x18(0x0000000000000000), rs1:x14(0x0000000100000000), imm:0x0
    TEST_IMM_OP(roriw, x18, x14, 0x0000000000000000, 0x100000000, 0x0, x2, 16, x3)

inst_173:
    // Test 173:  Test with marching zeros/ones
    // result rd:x19(0x0000000000000000), rs1:x13(0x0000000200000000), imm:0x0
    TEST_IMM_OP(roriw, x19, x13, 0x0000000000000000, 0x200000000, 0x0, x2, 24, x3)

inst_174:
    // Test 174:  Test with marching zeros/ones
    // result rd:x20(0x0000000000000000), rs1:x12(0x0000000400000000), imm:0x0
    TEST_IMM_OP(roriw, x20, x12, 0x0000000000000000, 0x400000000, 0x0, x2, 32, x3)

    
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_36_0)


inst_175:
    // Test 175:  Test with marching zeros/ones
    // result rd:x21(0x0000000000000000), rs1:x11(0x0000000800000000), imm:0x0
    TEST_IMM_OP(roriw, x21, x11, 0x0000000000000000, 0x800000000, 0x0, x1, 0, x2)

inst_176:
    // Test 176:  Test with marching zeros/ones
    // result rd:x22(0x0000000000000000), rs1:x10(0x0000001000000000), imm:0x0
    TEST_IMM_OP(roriw, x22, x10, 0x0000000000000000, 0x1000000000, 0x0, x1, 8, x2)

inst_177:
    // Test 177:  Test with marching zeros/ones
    // result rd:x23(0x0000000000000000), rs1:x9(0x0000002000000000), imm:0x0
    TEST_IMM_OP(roriw, x23, x9, 0x0000000000000000, 0x2000000000, 0x0, x1, 16, x2)

inst_178:
    // Test 178:  Test with marching zeros/ones
    // result rd:x24(0x0000000000000000), rs1:x8(0x0000004000000000), imm:0x0
    TEST_IMM_OP(roriw, x24, x8, 0x0000000000000000, 0x4000000000, 0x0, x1, 24, x2)

inst_179:
    // Test 179:  Test with marching zeros/ones
    // result rd:x25(0x0000000000000000), rs1:x7(0x0000008000000000), imm:0x0
    TEST_IMM_OP(roriw, x25, x7, 0x0000000000000000, 0x8000000000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_37_0)


inst_180:
    // Test 180:  Test with marching zeros/ones
    // result rd:x26(0x0000000000000000), rs1:x6(0x0000010000000000), imm:0x0
    TEST_IMM_OP(roriw, x26, x6, 0x0000000000000000, 0x10000000000, 0x0, x1, 0, x7)

inst_181:
    // Test 181:  Test with marching zeros/ones
    // result rd:x27(0x0000000000000000), rs1:x5(0x0000020000000000), imm:0x0
    TEST_IMM_OP(roriw, x27, x5, 0x0000000000000000, 0x20000000000, 0x0, x1, 8, x7)

inst_182:
    // Test 182:  Test with marching zeros/ones
    // result rd:x28(0x0000000000000000), rs1:x4(0x0000040000000000), imm:0x0
    TEST_IMM_OP(roriw, x28, x4, 0x0000000000000000, 0x40000000000, 0x0, x1, 16, x7)

inst_183:
    // Test 183:  Test with marching zeros/ones
    // result rd:x29(0x0000000000000000), rs1:x3(0x0000080000000000), imm:0x0
    TEST_IMM_OP(roriw, x29, x3, 0x0000000000000000, 0x80000000000, 0x0, x1, 24, x7)

inst_184:
    // Test 184:  Test with marching zeros/ones
    // result rd:x30(0x0000000000000000), rs1:x2(0x0000100000000000), imm:0x0
    TEST_IMM_OP(roriw, x30, x2, 0x0000000000000000, 0x100000000000, 0x0, x1, 32, x7)

    
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x5,signature_38_0)


inst_185:
    // Test 185:  Test with marching zeros/ones
    // result rd:x31(0x0000000000000000), rs1:x1(0x0000200000000000), imm:0x0
    TEST_IMM_OP(roriw, x31, x1, 0x0000000000000000, 0x200000000000, 0x0, x5, 0, x6)

inst_186:
    // Test 186:  Test with marching zeros/ones
    // result rd:x1(0x0000000000000000), rs1:x31(0x0000400000000000), imm:0x0
    TEST_IMM_OP(roriw, x1, x31, 0x0000000000000000, 0x400000000000, 0x0, x5, 8, x6)

inst_187:
    // Test 187:  Test with marching zeros/ones
    // result rd:x2(0x0000000000000000), rs1:x30(0x0000800000000000), imm:0x0
    TEST_IMM_OP(roriw, x2, x30, 0x0000000000000000, 0x800000000000, 0x0, x5, 16, x6)

inst_188:
    // Test 188:  Test with marching zeros/ones
    // result rd:x3(0x0000000000000000), rs1:x29(0x0001000000000000), imm:0x0
    TEST_IMM_OP(roriw, x3, x29, 0x0000000000000000, 0x1000000000000, 0x0, x5, 24, x6)

inst_189:
    // Test 189:  Test with marching zeros/ones
    // result rd:x4(0x0000000000000000), rs1:x28(0x0002000000000000), imm:0x0
    TEST_IMM_OP(roriw, x4, x28, 0x0000000000000000, 0x2000000000000, 0x0, x5, 32, x6)

    
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_39_0)


inst_190:
    // Test 190:  Test with marching zeros/ones
    // result rd:x5(0x0000000000000000), rs1:x27(0x0004000000000000), imm:0x0
    TEST_IMM_OP(roriw, x5, x27, 0x0000000000000000, 0x4000000000000, 0x0, x1, 0, x2)

inst_191:
    // Test 191:  Test with marching zeros/ones
    // result rd:x6(0x0000000000000000), rs1:x26(0x0008000000000000), imm:0x0
    TEST_IMM_OP(roriw, x6, x26, 0x0000000000000000, 0x8000000000000, 0x0, x1, 8, x2)

inst_192:
    // Test 192:  Test with marching zeros/ones
    // result rd:x7(0x0000000000000000), rs1:x25(0x0010000000000000), imm:0x0
    TEST_IMM_OP(roriw, x7, x25, 0x0000000000000000, 0x10000000000000, 0x0, x1, 16, x2)

inst_193:
    // Test 193:  Test with marching zeros/ones
    // result rd:x8(0x0000000000000000), rs1:x24(0x0020000000000000), imm:0x0
    TEST_IMM_OP(roriw, x8, x24, 0x0000000000000000, 0x20000000000000, 0x0, x1, 24, x2)

inst_194:
    // Test 194:  Test with marching zeros/ones
    // result rd:x9(0x0000000000000000), rs1:x23(0x0040000000000000), imm:0x0
    TEST_IMM_OP(roriw, x9, x23, 0x0000000000000000, 0x40000000000000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_40_0)


inst_195:
    // Test 195:  Test with marching zeros/ones
    // result rd:x10(0x0000000000000000), rs1:x22(0x0080000000000000), imm:0x0
    TEST_IMM_OP(roriw, x10, x22, 0x0000000000000000, 0x80000000000000, 0x0, x1, 0, x2)

inst_196:
    // Test 196:  Test with marching zeros/ones
    // result rd:x11(0x0000000000000000), rs1:x21(0x0100000000000000), imm:0x0
    TEST_IMM_OP(roriw, x11, x21, 0x0000000000000000, 0x100000000000000, 0x0, x1, 8, x2)

inst_197:
    // Test 197:  Test with marching zeros/ones
    // result rd:x12(0x0000000000000000), rs1:x20(0x0200000000000000), imm:0x0
    TEST_IMM_OP(roriw, x12, x20, 0x0000000000000000, 0x200000000000000, 0x0, x1, 16, x2)

inst_198:
    // Test 198:  Test with marching zeros/ones
    // result rd:x13(0x0000000000000000), rs1:x19(0x0400000000000000), imm:0x0
    TEST_IMM_OP(roriw, x13, x19, 0x0000000000000000, 0x400000000000000, 0x0, x1, 24, x2)

inst_199:
    // Test 199:  Test with marching zeros/ones
    // result rd:x14(0x0000000000000000), rs1:x18(0x0800000000000000), imm:0x0
    TEST_IMM_OP(roriw, x14, x18, 0x0000000000000000, 0x800000000000000, 0x0, x1, 32, x2)

    
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x3,signature_41_0)


inst_200:
    // Test 200:  Test with marching zeros/ones
    // result rd:x15(0x0000000000000000), rs1:x17(0x1000000000000000), imm:0x0
    TEST_IMM_OP(roriw, x15, x17, 0x0000000000000000, 0x1000000000000000, 0x0, x3, 0, x4)

inst_201:
    // Test 201:  Test with marching zeros/ones
    // result rd:x16(0x0000000000000000), rs1:x16(0x2000000000000000), imm:0x0
    TEST_IMM_OP(roriw, x16, x16, 0x0000000000000000, 0x2000000000000000, 0x0, x3, 8, x4)

inst_202:
    // Test 202:  Test with marching zeros/ones
    // result rd:x17(0x0000000000000000), rs1:x15(0x4000000000000000), imm:0x0
    TEST_IMM_OP(roriw, x17, x15, 0x0000000000000000, 0x4000000000000000, 0x0, x3, 16, x4)

inst_203:
    // Test 203:  Test with marching zeros/ones
    // result rd:x18(0x0000000000000000), rs1:x14(0x8000000000000000), imm:0x0
    TEST_IMM_OP(roriw, x18, x14, 0x0000000000000000, 0x8000000000000000, 0x0, x3, 24, x4)

inst_204:
    // Test 204:  Test with marching zeros/ones
    // result rd:x19(0x0000000000000000), rs1:x13(0x0000000000000000), imm:0x0
    TEST_IMM_OP(roriw, x19, x13, 0x0000000000000000, 0x0, 0x0, x3, 32, x4)

    
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_42_0)


inst_205:
    // Test 205:  Test with marching zeros/ones
    // result rd:x20(0xfffffffffffffffe), rs1:x12(0xfffffffffffffffe), imm:0x0
    TEST_IMM_OP(roriw, x20, x12, 0xfffffffffffffffe, 0xfffffffffffffffe, 0x0, x1, 0, x2)

inst_206:
    // Test 206:  Test with marching zeros/ones
    // result rd:x21(0xfffffffffffffffd), rs1:x11(0xfffffffffffffffd), imm:0x0
    TEST_IMM_OP(roriw, x21, x11, 0xfffffffffffffffd, 0xfffffffffffffffd, 0x0, x1, 8, x2)

inst_207:
    // Test 207:  Test with marching zeros/ones
    // result rd:x22(0xfffffffffffffffb), rs1:x10(0xfffffffffffffffb), imm:0x0
    TEST_IMM_OP(roriw, x22, x10, 0xfffffffffffffffb, 0xfffffffffffffffb, 0x0, x1, 16, x2)

inst_208:
    // Test 208:  Test with marching zeros/ones
    // result rd:x23(0xfffffffffffffff7), rs1:x9(0xfffffffffffffff7), imm:0x0
    TEST_IMM_OP(roriw, x23, x9, 0xfffffffffffffff7, 0xfffffffffffffff7, 0x0, x1, 24, x2)

inst_209:
    // Test 209:  Test with marching zeros/ones
    // result rd:x24(0xffffffffffffffef), rs1:x8(0xffffffffffffffef), imm:0x0
    TEST_IMM_OP(roriw, x24, x8, 0xffffffffffffffef, 0xffffffffffffffef, 0x0, x1, 32, x2)

    
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_43_0)


inst_210:
    // Test 210:  Test with marching zeros/ones
    // result rd:x25(0xffffffffffffffdf), rs1:x7(0xffffffffffffffdf), imm:0x0
    TEST_IMM_OP(roriw, x25, x7, 0xffffffffffffffdf, 0xffffffffffffffdf, 0x0, x1, 0, x2)

inst_211:
    // Test 211:  Test with marching zeros/ones
    // result rd:x26(0xffffffffffffffbf), rs1:x6(0xffffffffffffffbf), imm:0x0
    TEST_IMM_OP(roriw, x26, x6, 0xffffffffffffffbf, 0xffffffffffffffbf, 0x0, x1, 8, x2)

inst_212:
    // Test 212:  Test with marching zeros/ones
    // result rd:x27(0xffffffffffffff7f), rs1:x5(0xffffffffffffff7f), imm:0x0
    TEST_IMM_OP(roriw, x27, x5, 0xffffffffffffff7f, 0xffffffffffffff7f, 0x0, x1, 16, x2)

inst_213:
    // Test 213:  Test with marching zeros/ones
    // result rd:x28(0xfffffffffffffeff), rs1:x4(0xfffffffffffffeff), imm:0x0
    TEST_IMM_OP(roriw, x28, x4, 0xfffffffffffffeff, 0xfffffffffffffeff, 0x0, x1, 24, x2)

inst_214:
    // Test 214:  Test with marching zeros/ones
    // result rd:x29(0xfffffffffffffdff), rs1:x3(0xfffffffffffffdff), imm:0x0
    TEST_IMM_OP(roriw, x29, x3, 0xfffffffffffffdff, 0xfffffffffffffdff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x4,signature_44_0)


inst_215:
    // Test 215:  Test with marching zeros/ones
    // result rd:x30(0xfffffffffffffbff), rs1:x2(0xfffffffffffffbff), imm:0x0
    TEST_IMM_OP(roriw, x30, x2, 0xfffffffffffffbff, 0xfffffffffffffbff, 0x0, x4, 0, x5)

inst_216:
    // Test 216:  Test with marching zeros/ones
    // result rd:x31(0xfffffffffffff7ff), rs1:x1(0xfffffffffffff7ff), imm:0x0
    TEST_IMM_OP(roriw, x31, x1, 0xfffffffffffff7ff, 0xfffffffffffff7ff, 0x0, x4, 8, x5)

inst_217:
    // Test 217:  Test with marching zeros/ones
    // result rd:x1(0xffffffffffffefff), rs1:x31(0xffffffffffffefff), imm:0x0
    TEST_IMM_OP(roriw, x1, x31, 0xffffffffffffefff, 0xffffffffffffefff, 0x0, x4, 16, x5)

inst_218:
    // Test 218:  Test with marching zeros/ones
    // result rd:x2(0xffffffffffffdfff), rs1:x30(0xffffffffffffdfff), imm:0x0
    TEST_IMM_OP(roriw, x2, x30, 0xffffffffffffdfff, 0xffffffffffffdfff, 0x0, x4, 24, x5)

inst_219:
    // Test 219:  Test with marching zeros/ones
    // result rd:x3(0xffffffffffffbfff), rs1:x29(0xffffffffffffbfff), imm:0x0
    TEST_IMM_OP(roriw, x3, x29, 0xffffffffffffbfff, 0xffffffffffffbfff, 0x0, x4, 32, x5)

    
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_45_0)


inst_220:
    // Test 220:  Test with marching zeros/ones
    // result rd:x4(0xffffffffffff7fff), rs1:x28(0xffffffffffff7fff), imm:0x0
    TEST_IMM_OP(roriw, x4, x28, 0xffffffffffff7fff, 0xffffffffffff7fff, 0x0, x1, 0, x2)

inst_221:
    // Test 221:  Test with marching zeros/ones
    // result rd:x5(0xfffffffffffeffff), rs1:x27(0xfffffffffffeffff), imm:0x0
    TEST_IMM_OP(roriw, x5, x27, 0xfffffffffffeffff, 0xfffffffffffeffff, 0x0, x1, 8, x2)

inst_222:
    // Test 222:  Test with marching zeros/ones
    // result rd:x6(0xfffffffffffdffff), rs1:x26(0xfffffffffffdffff), imm:0x0
    TEST_IMM_OP(roriw, x6, x26, 0xfffffffffffdffff, 0xfffffffffffdffff, 0x0, x1, 16, x2)

inst_223:
    // Test 223:  Test with marching zeros/ones
    // result rd:x7(0xfffffffffffbffff), rs1:x25(0xfffffffffffbffff), imm:0x0
    TEST_IMM_OP(roriw, x7, x25, 0xfffffffffffbffff, 0xfffffffffffbffff, 0x0, x1, 24, x2)

inst_224:
    // Test 224:  Test with marching zeros/ones
    // result rd:x8(0xfffffffffff7ffff), rs1:x24(0xfffffffffff7ffff), imm:0x0
    TEST_IMM_OP(roriw, x8, x24, 0xfffffffffff7ffff, 0xfffffffffff7ffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_46_0)


inst_225:
    // Test 225:  Test with marching zeros/ones
    // result rd:x9(0xffffffffffefffff), rs1:x23(0xffffffffffefffff), imm:0x0
    TEST_IMM_OP(roriw, x9, x23, 0xffffffffffefffff, 0xffffffffffefffff, 0x0, x1, 0, x2)

inst_226:
    // Test 226:  Test with marching zeros/ones
    // result rd:x10(0xffffffffffdfffff), rs1:x22(0xffffffffffdfffff), imm:0x0
    TEST_IMM_OP(roriw, x10, x22, 0xffffffffffdfffff, 0xffffffffffdfffff, 0x0, x1, 8, x2)

inst_227:
    // Test 227:  Test with marching zeros/ones
    // result rd:x11(0xffffffffffbfffff), rs1:x21(0xffffffffffbfffff), imm:0x0
    TEST_IMM_OP(roriw, x11, x21, 0xffffffffffbfffff, 0xffffffffffbfffff, 0x0, x1, 16, x2)

inst_228:
    // Test 228:  Test with marching zeros/ones
    // result rd:x12(0xffffffffff7fffff), rs1:x20(0xffffffffff7fffff), imm:0x0
    TEST_IMM_OP(roriw, x12, x20, 0xffffffffff7fffff, 0xffffffffff7fffff, 0x0, x1, 24, x2)

inst_229:
    // Test 229:  Test with marching zeros/ones
    // result rd:x13(0xfffffffffeffffff), rs1:x19(0xfffffffffeffffff), imm:0x0
    TEST_IMM_OP(roriw, x13, x19, 0xfffffffffeffffff, 0xfffffffffeffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x4,signature_47_0)


inst_230:
    // Test 230:  Test with marching zeros/ones
    // result rd:x14(0xfffffffffdffffff), rs1:x18(0xfffffffffdffffff), imm:0x0
    TEST_IMM_OP(roriw, x14, x18, 0xfffffffffdffffff, 0xfffffffffdffffff, 0x0, x4, 0, x5)

inst_231:
    // Test 231:  Test with marching zeros/ones
    // result rd:x15(0xfffffffffbffffff), rs1:x17(0xfffffffffbffffff), imm:0x0
    TEST_IMM_OP(roriw, x15, x17, 0xfffffffffbffffff, 0xfffffffffbffffff, 0x0, x4, 8, x5)

inst_232:
    // Test 232:  Test with marching zeros/ones
    // result rd:x16(0xfffffffff7ffffff), rs1:x16(0xfffffffff7ffffff), imm:0x0
    TEST_IMM_OP(roriw, x16, x16, 0xfffffffff7ffffff, 0xfffffffff7ffffff, 0x0, x4, 16, x5)

inst_233:
    // Test 233:  Test with marching zeros/ones
    // result rd:x17(0xffffffffefffffff), rs1:x15(0xffffffffefffffff), imm:0x0
    TEST_IMM_OP(roriw, x17, x15, 0xffffffffefffffff, 0xffffffffefffffff, 0x0, x4, 24, x5)

inst_234:
    // Test 234:  Test with marching zeros/ones
    // result rd:x18(0xffffffffdfffffff), rs1:x14(0xffffffffdfffffff), imm:0x0
    TEST_IMM_OP(roriw, x18, x14, 0xffffffffdfffffff, 0xffffffffdfffffff, 0x0, x4, 32, x5)

    
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_48_0)


inst_235:
    // Test 235:  Test with marching zeros/ones
    // result rd:x19(0xffffffffbfffffff), rs1:x13(0xffffffffbfffffff), imm:0x0
    TEST_IMM_OP(roriw, x19, x13, 0xffffffffbfffffff, 0xffffffffbfffffff, 0x0, x1, 0, x2)

inst_236:
    // Test 236:  Test with marching zeros/ones
    // result rd:x20(0x000000007fffffff), rs1:x12(0xffffffff7fffffff), imm:0x0
    TEST_IMM_OP(roriw, x20, x12, 0x000000007fffffff, 0xffffffff7fffffff, 0x0, x1, 8, x2)

inst_237:
    // Test 237:  Test with marching zeros/ones
    // result rd:x21(0xffffffffffffffff), rs1:x11(0xfffffffeffffffff), imm:0x0
    TEST_IMM_OP(roriw, x21, x11, 0xffffffffffffffff, 0xfffffffeffffffff, 0x0, x1, 16, x2)

inst_238:
    // Test 238:  Test with marching zeros/ones
    // result rd:x22(0xffffffffffffffff), rs1:x10(0xfffffffdffffffff), imm:0x0
    TEST_IMM_OP(roriw, x22, x10, 0xffffffffffffffff, 0xfffffffdffffffff, 0x0, x1, 24, x2)

inst_239:
    // Test 239:  Test with marching zeros/ones
    // result rd:x23(0xffffffffffffffff), rs1:x9(0xfffffffbffffffff), imm:0x0
    TEST_IMM_OP(roriw, x23, x9, 0xffffffffffffffff, 0xfffffffbffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_49_0)


inst_240:
    // Test 240:  Test with marching zeros/ones
    // result rd:x24(0xffffffffffffffff), rs1:x8(0xfffffff7ffffffff), imm:0x0
    TEST_IMM_OP(roriw, x24, x8, 0xffffffffffffffff, 0xfffffff7ffffffff, 0x0, x1, 0, x2)

inst_241:
    // Test 241:  Test with marching zeros/ones
    // result rd:x25(0xffffffffffffffff), rs1:x7(0xffffffefffffffff), imm:0x0
    TEST_IMM_OP(roriw, x25, x7, 0xffffffffffffffff, 0xffffffefffffffff, 0x0, x1, 8, x2)

inst_242:
    // Test 242:  Test with marching zeros/ones
    // result rd:x26(0xffffffffffffffff), rs1:x6(0xffffffdfffffffff), imm:0x0
    TEST_IMM_OP(roriw, x26, x6, 0xffffffffffffffff, 0xffffffdfffffffff, 0x0, x1, 16, x2)

inst_243:
    // Test 243:  Test with marching zeros/ones
    // result rd:x27(0xffffffffffffffff), rs1:x5(0xffffffbfffffffff), imm:0x0
    TEST_IMM_OP(roriw, x27, x5, 0xffffffffffffffff, 0xffffffbfffffffff, 0x0, x1, 24, x2)

inst_244:
    // Test 244:  Test with marching zeros/ones
    // result rd:x28(0xffffffffffffffff), rs1:x4(0xffffff7fffffffff), imm:0x0
    TEST_IMM_OP(roriw, x28, x4, 0xffffffffffffffff, 0xffffff7fffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x4,signature_50_0)


inst_245:
    // Test 245:  Test with marching zeros/ones
    // result rd:x29(0xffffffffffffffff), rs1:x3(0xfffffeffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x29, x3, 0xffffffffffffffff, 0xfffffeffffffffff, 0x0, x4, 0, x5)

inst_246:
    // Test 246:  Test with marching zeros/ones
    // result rd:x30(0xffffffffffffffff), rs1:x2(0xfffffdffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x30, x2, 0xffffffffffffffff, 0xfffffdffffffffff, 0x0, x4, 8, x5)

inst_247:
    // Test 247:  Test with marching zeros/ones
    // result rd:x31(0xffffffffffffffff), rs1:x1(0xfffffbffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x31, x1, 0xffffffffffffffff, 0xfffffbffffffffff, 0x0, x4, 16, x5)

inst_248:
    // Test 248:  Test with marching zeros/ones
    // result rd:x1(0xffffffffffffffff), rs1:x31(0xfffff7ffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x1, x31, 0xffffffffffffffff, 0xfffff7ffffffffff, 0x0, x4, 24, x5)

inst_249:
    // Test 249:  Test with marching zeros/ones
    // result rd:x2(0xffffffffffffffff), rs1:x30(0xffffefffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x2, x30, 0xffffffffffffffff, 0xffffefffffffffff, 0x0, x4, 32, x5)

    
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_51_0)


inst_250:
    // Test 250:  Test with marching zeros/ones
    // result rd:x3(0xffffffffffffffff), rs1:x29(0xffffdfffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x3, x29, 0xffffffffffffffff, 0xffffdfffffffffff, 0x0, x1, 0, x2)

inst_251:
    // Test 251:  Test with marching zeros/ones
    // result rd:x4(0xffffffffffffffff), rs1:x28(0xffffbfffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x4, x28, 0xffffffffffffffff, 0xffffbfffffffffff, 0x0, x1, 8, x2)

inst_252:
    // Test 252:  Test with marching zeros/ones
    // result rd:x5(0xffffffffffffffff), rs1:x27(0xffff7fffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x5, x27, 0xffffffffffffffff, 0xffff7fffffffffff, 0x0, x1, 16, x2)

inst_253:
    // Test 253:  Test with marching zeros/ones
    // result rd:x6(0xffffffffffffffff), rs1:x26(0xfffeffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x6, x26, 0xffffffffffffffff, 0xfffeffffffffffff, 0x0, x1, 24, x2)

inst_254:
    // Test 254:  Test with marching zeros/ones
    // result rd:x7(0xffffffffffffffff), rs1:x25(0xfffdffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x7, x25, 0xffffffffffffffff, 0xfffdffffffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_52_0)


inst_255:
    // Test 255:  Test with marching zeros/ones
    // result rd:x8(0xffffffffffffffff), rs1:x24(0xfffbffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x8, x24, 0xffffffffffffffff, 0xfffbffffffffffff, 0x0, x1, 0, x2)

inst_256:
    // Test 256:  Test with marching zeros/ones
    // result rd:x9(0xffffffffffffffff), rs1:x23(0xfff7ffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x9, x23, 0xffffffffffffffff, 0xfff7ffffffffffff, 0x0, x1, 8, x2)

inst_257:
    // Test 257:  Test with marching zeros/ones
    // result rd:x10(0xffffffffffffffff), rs1:x22(0xffefffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x10, x22, 0xffffffffffffffff, 0xffefffffffffffff, 0x0, x1, 16, x2)

inst_258:
    // Test 258:  Test with marching zeros/ones
    // result rd:x11(0xffffffffffffffff), rs1:x21(0xffdfffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x11, x21, 0xffffffffffffffff, 0xffdfffffffffffff, 0x0, x1, 24, x2)

inst_259:
    // Test 259:  Test with marching zeros/ones
    // result rd:x12(0xffffffffffffffff), rs1:x20(0xffbfffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x12, x20, 0xffffffffffffffff, 0xffbfffffffffffff, 0x0, x1, 32, x2)

    
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x5,signature_53_0)


inst_260:
    // Test 260:  Test with marching zeros/ones
    // result rd:x13(0xffffffffffffffff), rs1:x19(0xff7fffffffffffff), imm:0x8
    TEST_IMM_OP(roriw, x13, x19, 0xffffffffffffffff, 0xff7fffffffffffff, 0x8, x5, 0, x6)

inst_261:
    // Test 261:  Test with marching zeros/ones
    // result rd:x14(0xffffffffffffffff), rs1:x18(0xfeffffffffffffff), imm:0x4
    TEST_IMM_OP(roriw, x14, x18, 0xffffffffffffffff, 0xfeffffffffffffff, 0x4, x5, 8, x6)

inst_262:
    // Test 262:  Test with marching zeros/ones
    // result rd:x15(0xffffffffffffffff), rs1:x17(0xfdffffffffffffff), imm:0x2
    TEST_IMM_OP(roriw, x15, x17, 0xffffffffffffffff, 0xfdffffffffffffff, 0x2, x5, 16, x6)

inst_263:
    // Test 263:  Test with marching zeros/ones
    // result rd:x16(0xffffffffffffffff), rs1:x16(0xfbffffffffffffff), imm:0x1
    TEST_IMM_OP(roriw, x16, x16, 0xffffffffffffffff, 0xfbffffffffffffff, 0x1, x5, 24, x6)

inst_264:
    // Test 264:  Test with marching zeros/ones
    // result rd:x17(0xffffffffffffffff), rs1:x15(0xf7ffffffffffffff), imm:0x3
    TEST_IMM_OP(roriw, x17, x15, 0xffffffffffffffff, 0xf7ffffffffffffff, 0x3, x5, 32, x6)

    
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_54_0)


inst_265:
    // Test 265:  Test with marching zeros/ones
    // result rd:x18(0xffffffffffffffff), rs1:x14(0xefffffffffffffff), imm:0x1b
    TEST_IMM_OP(roriw, x18, x14, 0xffffffffffffffff, 0xefffffffffffffff, 0x1b, x1, 0, x2)

inst_266:
    // Test 266:  Test with marching zeros/ones
    // result rd:x19(0xffffffffffffffff), rs1:x13(0xdfffffffffffffff), imm:0x0
    TEST_IMM_OP(roriw, x19, x13, 0xffffffffffffffff, 0xdfffffffffffffff, 0x0, x1, 8, x2)

inst_267:
    // Test 267:  Test with marching zeros/ones
    // result rd:x20(0xffffffffffffffff), rs1:x12(0xbfffffffffffffff), imm:0x3
    TEST_IMM_OP(roriw, x20, x12, 0xffffffffffffffff, 0xbfffffffffffffff, 0x3, x1, 16, x2)

inst_268:
    // Test 268:  Test with marching zeros/ones
    // result rd:x21(0xffffffffffffffff), rs1:x11(0x7fffffffffffffff), imm:0xf
    TEST_IMM_OP(roriw, x21, x11, 0xffffffffffffffff, 0x7fffffffffffffff, 0xf, x1, 24, x2)

inst_269:
    // Test 269:  Test with marching zeros/ones
    // result rd:x22(0xffffffffffffffff), rs1:x10(0xffffffffffffffff), imm:0xf
    TEST_IMM_OP(roriw, x22, x10, 0xffffffffffffffff, 0xffffffffffffffff, 0xf, x1, 32, x2)

    
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",roriw)
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",roriw)

	RVTEST_SIGBASE(x1,signature_55_0)


inst_270:
    // Test 270:  Test with random values
    // result rd:x23(0x0000000032b5bd4a), rs1:x9(0x10fd3dedadea5195), imm:0xb
    TEST_IMM_OP(roriw, x23, x9, 0x0000000032b5bd4a, 0x10fd3dedadea5195, 0xb, x1, 0, x2)

inst_271:
    // Test 271:  Test with rd == x0
    // result rd:x0(0x0000000000000000), rs1:x8(0xbd295ce2d2ffbec1), imm:0x1b
    TEST_IMM_OP(roriw, x0, x8, 0x0000000000000000, 0xbd295ce2d2ffbec1, 0x1b, x1, 8, x2)

inst_272:
    // Test 272:  Test with rs2 == x0
    // result rd:x25(0xffffffffd470d45d), rs1:x7(0xc9649f05a8e1a8bb), imm:0x1
    TEST_IMM_OP(roriw, x25, x7, 0xffffffffd470d45d, 0xc9649f05a8e1a8bb, 0x1, x1, 16, x2)

inst_273:
    // Test 273:  Test with rs1 == x0
    // result rd:x26(0x0000000000000000), rs1:x0(0x3541291848c99fcb), imm:0x15
    TEST_IMM_OP(roriw, x26, x0, 0x0000000000000000, 0x3541291848c99fcb, 0x15, x1, 24, x2)
	
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
signature_53_0:
	.fill 5, 8, 0xdeadbeef
signature_54_0:
	.fill 5, 8, 0xdeadbeef
signature_55_0:
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

