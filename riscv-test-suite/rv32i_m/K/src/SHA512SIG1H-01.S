// RISC-V Architectural Validation Test SHA512SIG1H-01
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
// Description: Testing instruction 'sha512sig1h'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV32IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1

    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with random values
    // result rd:x1(0x14615053), rs1:x31(0xadea5195), rs2:x16(0x121bcc23)
    TEST_RR_OP(sha512sig1h, x1, x31, x16, 0x14615053, 0xadea5195, 0x121bcc23, x6, 0, x7)

inst_1:
    // Test 1:  Test with random values
    // result rd:x2(0x36bd72a9), rs1:x30(0xd2ffbec1), rs2:x15(0xa47d105b)
    TEST_RR_OP(sha512sig1h, x2, x30, x15, 0x36bd72a9, 0xd2ffbec1, 0xa47d105b, x6, 4, x7)

inst_2:
    // Test 2:  Test with random values
    // result rd:x3(0x1bf6d665), rs1:x29(0xa8e1a8bb), rs2:x14(0x707af2c0)
    TEST_RR_OP(sha512sig1h, x3, x29, x14, 0x1bf6d665, 0xa8e1a8bb, 0x707af2c0, x6, 8, x7)

inst_3:
    // Test 3:  Test with random values
    // result rd:x4(0x3817b139), rs1:x28(0x48c99fcb), rs2:x13(0xe19bfbc3)
    TEST_RR_OP(sha512sig1h, x4, x28, x13, 0x3817b139, 0x48c99fcb, 0xe19bfbc3, x6, 12, x7)

inst_4:
    // Test 4:  Test with random values
    // result rd:x5(0x73e70ff0), rs1:x27(0x461d524f), rs2:x12(0x528a10af)
    TEST_RR_OP(sha512sig1h, x5, x27, x12, 0x73e70ff0, 0x461d524f, 0x528a10af, x6, 16, x7)

    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with random values
    // result rd:x6(0x3f534769), rs1:x26(0x528a10af), rs2:x11(0x461d524f)
    TEST_RR_OP(sha512sig1h, x6, x26, x11, 0x3f534769, 0x528a10af, 0x461d524f, x1, 0, x2)

inst_6:
    // Test 6:  Test with random values
    // result rd:x7(0x3ca0cdc6), rs1:x25(0xe19bfbc3), rs2:x10(0x48c99fcb)
    TEST_RR_OP(sha512sig1h, x7, x25, x10, 0x3ca0cdc6, 0xe19bfbc3, 0x48c99fcb, x1, 4, x2)

inst_7:
    // Test 7:  Test with random values
    // result rd:x8(0xb70113c1), rs1:x24(0x707af2c0), rs2:x9(0xa8e1a8bb)
    TEST_RR_OP(sha512sig1h, x8, x24, x9, 0xb70113c1, 0x707af2c0, 0xa8e1a8bb, x1, 8, x2)

inst_8:
    // Test 8:  Test with random values
    // result rd:x9(0xd6a14210), rs1:x23(0xa47d105b), rs2:x8(0xd2ffbec1)
    TEST_RR_OP(sha512sig1h, x9, x23, x8, 0xd6a14210, 0xa47d105b, 0xd2ffbec1, x1, 12, x2)

inst_9:
    // Test 9:  Test with random values
    // result rd:x10(0xdaa4ac6e), rs1:x22(0x121bcc23), rs2:x7(0xadea5195)
    TEST_RR_OP(sha512sig1h, x10, x22, x7, 0xdaa4ac6e, 0x121bcc23, 0xadea5195, x1, 16, x2)

    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with marching zeros/ones
    // result rd:x11(0xffffe00f), rs1:x21(0x00000001), rs2:x6(0xffffffff)
    TEST_RR_OP(sha512sig1h, x11, x21, x6, 0xffffe00f, 0x1, 0xffffffff, x1, 0, x7)

inst_11:
    // Test 11:  Test with marching zeros/ones
    // result rd:x12(0xffffe013), rs1:x20(0x00000002), rs2:x5(0x7fffffff)
    TEST_RR_OP(sha512sig1h, x12, x20, x5, 0xffffe013, 0x2, 0x7fffffff, x1, 4, x7)

inst_12:
    // Test 12:  Test with marching zeros/ones
    // result rd:x13(0xffffe025), rs1:x19(0x00000004), rs2:x4(0xbfffffff)
    TEST_RR_OP(sha512sig1h, x13, x19, x4, 0xffffe025, 0x4, 0xbfffffff, x1, 8, x7)

inst_13:
    // Test 13:  Test with marching zeros/ones
    // result rd:x14(0xffffe046), rs1:x18(0x00000008), rs2:x3(0xdfffffff)
    TEST_RR_OP(sha512sig1h, x14, x18, x3, 0xffffe046, 0x8, 0xdfffffff, x1, 12, x7)

inst_14:
    // Test 14:  Test with marching zeros/ones
    // result rd:x15(0xffffe087), rs1:x17(0x00000010), rs2:x2(0xefffffff)
    TEST_RR_OP(sha512sig1h, x15, x17, x2, 0xffffe087, 0x10, 0xefffffff, x1, 16, x7)

    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with marching zeros/ones
    // result rd:x16(0xffffe107), rs1:x16(0x00000020), rs2:x1(0xf7ffffff)
    TEST_RR_OP(sha512sig1h, x16, x16, x1, 0xffffe107, 0x20, 0xf7ffffff, x2, 0, x3)

inst_16:
    // Test 16:  Test with marching zeros/ones
    // result rd:x17(0xffffe206), rs1:x15(0x00000040), rs2:x31(0xfbffffff)
    TEST_RR_OP(sha512sig1h, x17, x15, x31, 0xffffe206, 0x40, 0xfbffffff, x2, 4, x3)

inst_17:
    // Test 17:  Test with marching zeros/ones
    // result rd:x18(0xffffe405), rs1:x14(0x00000080), rs2:x30(0xfdffffff)
    TEST_RR_OP(sha512sig1h, x18, x14, x30, 0xffffe405, 0x80, 0xfdffffff, x2, 8, x3)

inst_18:
    // Test 18:  Test with marching zeros/ones
    // result rd:x19(0xffffe803), rs1:x13(0x00000100), rs2:x29(0xfeffffff)
    TEST_RR_OP(sha512sig1h, x19, x13, x29, 0xffffe803, 0x100, 0xfeffffff, x2, 12, x3)

inst_19:
    // Test 19:  Test with marching zeros/ones
    // result rd:x20(0xfffff00f), rs1:x12(0x00000200), rs2:x28(0xff7fffff)
    TEST_RR_OP(sha512sig1h, x20, x12, x28, 0xfffff00f, 0x200, 0xff7fffff, x2, 16, x3)

    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with marching zeros/ones
    // result rd:x21(0xffffc017), rs1:x11(0x00000400), rs2:x27(0xffbfffff)
    TEST_RR_OP(sha512sig1h, x21, x11, x27, 0xffffc017, 0x400, 0xffbfffff, x1, 0, x2)

inst_21:
    // Test 21:  Test with marching zeros/ones
    // result rd:x22(0xffffa027), rs1:x10(0x00000800), rs2:x26(0xffdfffff)
    TEST_RR_OP(sha512sig1h, x22, x10, x26, 0xffffa027, 0x800, 0xffdfffff, x1, 4, x2)

inst_22:
    // Test 22:  Test with marching zeros/ones
    // result rd:x23(0xffff6047), rs1:x9(0x00001000), rs2:x25(0xffefffff)
    TEST_RR_OP(sha512sig1h, x23, x9, x25, 0xffff6047, 0x1000, 0xffefffff, x1, 8, x2)

inst_23:
    // Test 23:  Test with marching zeros/ones
    // result rd:x24(0xfffee087), rs1:x8(0x00002000), rs2:x24(0xfff7ffff)
    TEST_RR_OP(sha512sig1h, x24, x8, x24, 0xfffee087, 0x2000, 0xfff7ffff, x1, 12, x2)

inst_24:
    // Test 24:  Test with marching zeros/ones
    // result rd:x25(0x7ffde107), rs1:x7(0x00004000), rs2:x23(0xfffbffff)
    TEST_RR_OP(sha512sig1h, x25, x7, x23, 0x7ffde107, 0x4000, 0xfffbffff, x1, 16, x2)

    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with marching zeros/ones
    // result rd:x26(0xbffbe207), rs1:x6(0x00008000), rs2:x22(0xfffdffff)
    TEST_RR_OP(sha512sig1h, x26, x6, x22, 0xbffbe207, 0x8000, 0xfffdffff, x1, 0, x7)

inst_26:
    // Test 26:  Test with marching zeros/ones
    // result rd:x27(0xdff7e407), rs1:x5(0x00010000), rs2:x21(0xfffeffff)
    TEST_RR_OP(sha512sig1h, x27, x5, x21, 0xdff7e407, 0x10000, 0xfffeffff, x1, 4, x7)

inst_27:
    // Test 27:  Test with marching zeros/ones
    // result rd:x28(0xefefe807), rs1:x4(0x00020000), rs2:x20(0xffff7fff)
    TEST_RR_OP(sha512sig1h, x28, x4, x20, 0xefefe807, 0x20000, 0xffff7fff, x1, 8, x7)

inst_28:
    // Test 28:  Test with marching zeros/ones
    // result rd:x29(0xf7dff007), rs1:x3(0x00040000), rs2:x19(0xffffbfff)
    TEST_RR_OP(sha512sig1h, x29, x3, x19, 0xf7dff007, 0x40000, 0xffffbfff, x1, 12, x7)

inst_29:
    // Test 29:  Test with marching zeros/ones
    // result rd:x30(0xfbbfc006), rs1:x2(0x00080000), rs2:x18(0xffffdfff)
    TEST_RR_OP(sha512sig1h, x30, x2, x18, 0xfbbfc006, 0x80000, 0xffffdfff, x1, 16, x7)

    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with marching zeros/ones
    // result rd:x31(0xfd7fa005), rs1:x1(0x00100000), rs2:x17(0xffffefff)
    TEST_RR_OP(sha512sig1h, x31, x1, x17, 0xfd7fa005, 0x100000, 0xffffefff, x5, 0, x6)

inst_31:
    // Test 31:  Test with marching zeros/ones
    // result rd:x1(0xffff6003), rs1:x31(0x00200000), rs2:x16(0xfffff7ff)
    TEST_RR_OP(sha512sig1h, x1, x31, x16, 0xffff6003, 0x200000, 0xfffff7ff, x5, 4, x6)

inst_32:
    // Test 32:  Test with marching zeros/ones
    // result rd:x2(0xfd7ee00f), rs1:x30(0x00400000), rs2:x15(0xfffffbff)
    TEST_RR_OP(sha512sig1h, x2, x30, x15, 0xfd7ee00f, 0x400000, 0xfffffbff, x5, 8, x6)

inst_33:
    // Test 33:  Test with marching zeros/ones
    // result rd:x3(0xfbbde017), rs1:x29(0x00800000), rs2:x14(0xfffffdff)
    TEST_RR_OP(sha512sig1h, x3, x29, x14, 0xfbbde017, 0x800000, 0xfffffdff, x5, 12, x6)

inst_34:
    // Test 34:  Test with marching zeros/ones
    // result rd:x4(0xf7dbe027), rs1:x28(0x01000000), rs2:x13(0xfffffeff)
    TEST_RR_OP(sha512sig1h, x4, x28, x13, 0xf7dbe027, 0x1000000, 0xfffffeff, x5, 16, x6)

    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with marching zeros/ones
    // result rd:x5(0xefe7e047), rs1:x27(0x02000000), rs2:x12(0xffffff7f)
    TEST_RR_OP(sha512sig1h, x5, x27, x12, 0xefe7e047, 0x2000000, 0xffffff7f, x1, 0, x2)

inst_36:
    // Test 36:  Test with marching zeros/ones
    // result rd:x6(0xdfe7e087), rs1:x26(0x04000000), rs2:x11(0xffffffbf)
    TEST_RR_OP(sha512sig1h, x6, x26, x11, 0xdfe7e087, 0x4000000, 0xffffffbf, x1, 4, x2)

inst_37:
    // Test 37:  Test with marching zeros/ones
    // result rd:x7(0xbfdbe107), rs1:x25(0x08000000), rs2:x10(0xffffffdf)
    TEST_RR_OP(sha512sig1h, x7, x25, x10, 0xbfdbe107, 0x8000000, 0xffffffdf, x1, 8, x2)

inst_38:
    // Test 38:  Test with marching zeros/ones
    // result rd:x8(0x7fbde207), rs1:x24(0x10000000), rs2:x9(0xffffffef)
    TEST_RR_OP(sha512sig1h, x8, x24, x9, 0x7fbde207, 0x10000000, 0xffffffef, x1, 12, x2)

inst_39:
    // Test 39:  Test with marching zeros/ones
    // result rd:x9(0xff7ee407), rs1:x23(0x20000000), rs2:x8(0xfffffff7)
    TEST_RR_OP(sha512sig1h, x9, x23, x8, 0xff7ee407, 0x20000000, 0xfffffff7, x1, 16, x2)

    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with marching zeros/ones
    // result rd:x10(0xfeff6807), rs1:x22(0x40000000), rs2:x7(0xfffffffb)
    TEST_RR_OP(sha512sig1h, x10, x22, x7, 0xfeff6807, 0x40000000, 0xfffffffb, x1, 0, x2)

inst_41:
    // Test 41:  Test with marching zeros/ones
    // result rd:x11(0xfdffb007), rs1:x21(0x80000000), rs2:x6(0xfffffffd)
    TEST_RR_OP(sha512sig1h, x11, x21, x6, 0xfdffb007, 0x80000000, 0xfffffffd, x1, 4, x2)

inst_42:
    // Test 42:  Test with marching zeros/ones
    // result rd:x12(0xffffc007), rs1:x20(0x00000000), rs2:x5(0xfffffffe)
    TEST_RR_OP(sha512sig1h, x12, x20, x5, 0xffffc007, 0x0, 0xfffffffe, x1, 8, x2)

inst_43:
    // Test 43:  Test with marching zeros/ones
    // result rd:x13(0xfc001ff0), rs1:x19(0xfffffffe), rs2:x4(0x00000000)
    TEST_RR_OP(sha512sig1h, x13, x19, x4, 0xfc001ff0, 0xfffffffe, 0x0, x1, 12, x2)

inst_44:
    // Test 44:  Test with marching zeros/ones
    // result rd:x14(0xfc001fec), rs1:x18(0xfffffffd), rs2:x3(0x80000000)
    TEST_RR_OP(sha512sig1h, x14, x18, x3, 0xfc001fec, 0xfffffffd, 0x80000000, x1, 16, x2)

    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with marching zeros/ones
    // result rd:x15(0xfc001fda), rs1:x17(0xfffffffb), rs2:x2(0x40000000)
    TEST_RR_OP(sha512sig1h, x15, x17, x2, 0xfc001fda, 0xfffffffb, 0x40000000, x3, 0, x4)

inst_46:
    // Test 46:  Test with marching zeros/ones
    // result rd:x16(0xfc001fb9), rs1:x16(0xfffffff7), rs2:x1(0x20000000)
    TEST_RR_OP(sha512sig1h, x16, x16, x1, 0xfc001fb9, 0xfffffff7, 0x20000000, x3, 4, x4)

inst_47:
    // Test 47:  Test with marching zeros/ones
    // result rd:x17(0xfc001f78), rs1:x15(0xffffffef), rs2:x31(0x10000000)
    TEST_RR_OP(sha512sig1h, x17, x15, x31, 0xfc001f78, 0xffffffef, 0x10000000, x3, 8, x4)

inst_48:
    // Test 48:  Test with marching zeros/ones
    // result rd:x18(0xfc001ef8), rs1:x14(0xffffffdf), rs2:x30(0x08000000)
    TEST_RR_OP(sha512sig1h, x18, x14, x30, 0xfc001ef8, 0xffffffdf, 0x8000000, x3, 12, x4)

inst_49:
    // Test 49:  Test with marching zeros/ones
    // result rd:x19(0xfc001df9), rs1:x13(0xffffffbf), rs2:x29(0x04000000)
    TEST_RR_OP(sha512sig1h, x19, x13, x29, 0xfc001df9, 0xffffffbf, 0x4000000, x3, 16, x4)

    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with marching zeros/ones
    // result rd:x20(0xfc001bfa), rs1:x12(0xffffff7f), rs2:x28(0x02000000)
    TEST_RR_OP(sha512sig1h, x20, x12, x28, 0xfc001bfa, 0xffffff7f, 0x2000000, x1, 0, x2)

inst_51:
    // Test 51:  Test with marching zeros/ones
    // result rd:x21(0xfc0017fc), rs1:x11(0xfffffeff), rs2:x27(0x01000000)
    TEST_RR_OP(sha512sig1h, x21, x11, x27, 0xfc0017fc, 0xfffffeff, 0x1000000, x1, 4, x2)

inst_52:
    // Test 52:  Test with marching zeros/ones
    // result rd:x22(0xfc000ff0), rs1:x10(0xfffffdff), rs2:x26(0x00800000)
    TEST_RR_OP(sha512sig1h, x22, x10, x26, 0xfc000ff0, 0xfffffdff, 0x800000, x1, 8, x2)

inst_53:
    // Test 53:  Test with marching zeros/ones
    // result rd:x23(0xfc003fe8), rs1:x9(0xfffffbff), rs2:x25(0x00400000)
    TEST_RR_OP(sha512sig1h, x23, x9, x25, 0xfc003fe8, 0xfffffbff, 0x400000, x1, 12, x2)

inst_54:
    // Test 54:  Test with marching zeros/ones
    // result rd:x24(0xfc005fd8), rs1:x8(0xfffff7ff), rs2:x24(0x00200000)
    TEST_RR_OP(sha512sig1h, x24, x8, x24, 0xfc005fd8, 0xfffff7ff, 0x200000, x1, 16, x2)

    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with marching zeros/ones
    // result rd:x25(0xfc009fb8), rs1:x7(0xffffefff), rs2:x23(0x00100000)
    TEST_RR_OP(sha512sig1h, x25, x7, x23, 0xfc009fb8, 0xffffefff, 0x100000, x1, 0, x2)

inst_56:
    // Test 56:  Test with marching zeros/ones
    // result rd:x26(0xfc011f78), rs1:x6(0xffffdfff), rs2:x22(0x00080000)
    TEST_RR_OP(sha512sig1h, x26, x6, x22, 0xfc011f78, 0xffffdfff, 0x80000, x1, 4, x2)

inst_57:
    // Test 57:  Test with marching zeros/ones
    // result rd:x27(0x7c021ef8), rs1:x5(0xffffbfff), rs2:x21(0x00040000)
    TEST_RR_OP(sha512sig1h, x27, x5, x21, 0x7c021ef8, 0xffffbfff, 0x40000, x1, 8, x2)

inst_58:
    // Test 58:  Test with marching zeros/ones
    // result rd:x28(0xbc041df8), rs1:x4(0xffff7fff), rs2:x20(0x00020000)
    TEST_RR_OP(sha512sig1h, x28, x4, x20, 0xbc041df8, 0xffff7fff, 0x20000, x1, 12, x2)

inst_59:
    // Test 59:  Test with marching zeros/ones
    // result rd:x29(0xdc081bf8), rs1:x3(0xfffeffff), rs2:x19(0x00010000)
    TEST_RR_OP(sha512sig1h, x29, x3, x19, 0xdc081bf8, 0xfffeffff, 0x10000, x1, 16, x2)

    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with marching zeros/ones
    // result rd:x30(0xec1017f8), rs1:x2(0xfffdffff), rs2:x18(0x00008000)
    TEST_RR_OP(sha512sig1h, x30, x2, x18, 0xec1017f8, 0xfffdffff, 0x8000, x4, 0, x5)

inst_61:
    // Test 61:  Test with marching zeros/ones
    // result rd:x31(0xf4200ff8), rs1:x1(0xfffbffff), rs2:x17(0x00004000)
    TEST_RR_OP(sha512sig1h, x31, x1, x17, 0xf4200ff8, 0xfffbffff, 0x4000, x4, 4, x5)

inst_62:
    // Test 62:  Test with marching zeros/ones
    // result rd:x1(0xf8403ff9), rs1:x31(0xfff7ffff), rs2:x16(0x00002000)
    TEST_RR_OP(sha512sig1h, x1, x31, x16, 0xf8403ff9, 0xfff7ffff, 0x2000, x4, 8, x5)

inst_63:
    // Test 63:  Test with marching zeros/ones
    // result rd:x2(0xfe805ffa), rs1:x30(0xffefffff), rs2:x15(0x00001000)
    TEST_RR_OP(sha512sig1h, x2, x30, x15, 0xfe805ffa, 0xffefffff, 0x1000, x4, 12, x5)

inst_64:
    // Test 64:  Test with marching zeros/ones
    // result rd:x3(0xfc009ffc), rs1:x29(0xffdfffff), rs2:x14(0x00000800)
    TEST_RR_OP(sha512sig1h, x3, x29, x14, 0xfc009ffc, 0xffdfffff, 0x800, x4, 16, x5)

    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with marching zeros/ones
    // result rd:x4(0xfe811ff0), rs1:x28(0xffbfffff), rs2:x13(0x00000400)
    TEST_RR_OP(sha512sig1h, x4, x28, x13, 0xfe811ff0, 0xffbfffff, 0x400, x1, 0, x2)

inst_66:
    // Test 66:  Test with marching zeros/ones
    // result rd:x5(0xf8421fe8), rs1:x27(0xff7fffff), rs2:x12(0x00000200)
    TEST_RR_OP(sha512sig1h, x5, x27, x12, 0xf8421fe8, 0xff7fffff, 0x200, x1, 4, x2)

inst_67:
    // Test 67:  Test with marching zeros/ones
    // result rd:x6(0xf4241fd8), rs1:x26(0xfeffffff), rs2:x11(0x00000100)
    TEST_RR_OP(sha512sig1h, x6, x26, x11, 0xf4241fd8, 0xfeffffff, 0x100, x1, 8, x2)

inst_68:
    // Test 68:  Test with marching zeros/ones
    // result rd:x7(0xec181fb8), rs1:x25(0xfdffffff), rs2:x10(0x00000080)
    TEST_RR_OP(sha512sig1h, x7, x25, x10, 0xec181fb8, 0xfdffffff, 0x80, x1, 12, x2)

inst_69:
    // Test 69:  Test with marching zeros/ones
    // result rd:x8(0xdc181f78), rs1:x24(0xfbffffff), rs2:x9(0x00000040)
    TEST_RR_OP(sha512sig1h, x8, x24, x9, 0xdc181f78, 0xfbffffff, 0x40, x1, 16, x2)

    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with marching zeros/ones
    // result rd:x9(0xbc241ef8), rs1:x23(0xf7ffffff), rs2:x8(0x00000020)
    TEST_RR_OP(sha512sig1h, x9, x23, x8, 0xbc241ef8, 0xf7ffffff, 0x20, x1, 0, x2)

inst_71:
    // Test 71:  Test with marching zeros/ones
    // result rd:x10(0x7c421df8), rs1:x22(0xefffffff), rs2:x7(0x00000010)
    TEST_RR_OP(sha512sig1h, x10, x22, x7, 0x7c421df8, 0xefffffff, 0x10, x1, 4, x2)

inst_72:
    // Test 72:  Test with marching zeros/ones
    // result rd:x11(0xfc811bf8), rs1:x21(0xdfffffff), rs2:x6(0x00000008)
    TEST_RR_OP(sha512sig1h, x11, x21, x6, 0xfc811bf8, 0xdfffffff, 0x8, x1, 8, x2)

inst_73:
    // Test 73:  Test with marching zeros/ones
    // result rd:x12(0xfd0097f8), rs1:x20(0xbfffffff), rs2:x5(0x00000004)
    TEST_RR_OP(sha512sig1h, x12, x20, x5, 0xfd0097f8, 0xbfffffff, 0x4, x1, 12, x2)

inst_74:
    // Test 74:  Test with marching zeros/ones
    // result rd:x13(0xfe004ff8), rs1:x19(0x7fffffff), rs2:x4(0x00000002)
    TEST_RR_OP(sha512sig1h, x13, x19, x4, 0xfe004ff8, 0x7fffffff, 0x2, x1, 16, x2)

    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with marching zeros/ones
    // result rd:x14(0xfc003ff8), rs1:x18(0xffffffff), rs2:x3(0x00000001)
    TEST_RR_OP(sha512sig1h, x14, x18, x3, 0xfc003ff8, 0xffffffff, 0x1, x4, 0, x5)

inst_76:
    // Test 76:  Test with marching zeros/ones
    // result rd:x15(0x00000008), rs1:x17(0x00000001), rs2:x2(0x00000000)
    TEST_RR_OP(sha512sig1h, x15, x17, x2, 0x00000008, 0x1, 0x0, x4, 4, x5)

inst_77:
    // Test 77:  Test with marching zeros/ones
    // result rd:x16(0x00000010), rs1:x16(0x00000002), rs2:x1(0x00000000)
    TEST_RR_OP(sha512sig1h, x16, x16, x1, 0x00000010, 0x2, 0x0, x4, 8, x5)

inst_78:
    // Test 78:  Test with marching zeros/ones
    // result rd:x17(0x00000020), rs1:x15(0x00000004), rs2:x31(0x00000000)
    TEST_RR_OP(sha512sig1h, x17, x15, x31, 0x00000020, 0x4, 0x0, x4, 12, x5)

inst_79:
    // Test 79:  Test with marching zeros/ones
    // result rd:x18(0x00000040), rs1:x14(0x00000008), rs2:x30(0x00000000)
    TEST_RR_OP(sha512sig1h, x18, x14, x30, 0x00000040, 0x8, 0x0, x4, 16, x5)

    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with marching zeros/ones
    // result rd:x19(0x00000080), rs1:x13(0x00000010), rs2:x29(0x00000000)
    TEST_RR_OP(sha512sig1h, x19, x13, x29, 0x00000080, 0x10, 0x0, x1, 0, x2)

inst_81:
    // Test 81:  Test with marching zeros/ones
    // result rd:x20(0x00000100), rs1:x12(0x00000020), rs2:x28(0x00000000)
    TEST_RR_OP(sha512sig1h, x20, x12, x28, 0x00000100, 0x20, 0x0, x1, 4, x2)

inst_82:
    // Test 82:  Test with marching zeros/ones
    // result rd:x21(0x00000201), rs1:x11(0x00000040), rs2:x27(0x00000000)
    TEST_RR_OP(sha512sig1h, x21, x11, x27, 0x00000201, 0x40, 0x0, x1, 8, x2)

inst_83:
    // Test 83:  Test with marching zeros/ones
    // result rd:x22(0x00000402), rs1:x10(0x00000080), rs2:x26(0x00000000)
    TEST_RR_OP(sha512sig1h, x22, x10, x26, 0x00000402, 0x80, 0x0, x1, 12, x2)

inst_84:
    // Test 84:  Test with marching zeros/ones
    // result rd:x23(0x00000804), rs1:x9(0x00000100), rs2:x25(0x00000000)
    TEST_RR_OP(sha512sig1h, x23, x9, x25, 0x00000804, 0x100, 0x0, x1, 16, x2)

    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with marching zeros/ones
    // result rd:x24(0x00001008), rs1:x8(0x00000200), rs2:x24(0x00000000)
    TEST_RR_OP(sha512sig1h, x24, x8, x24, 0x00001008, 0x200, 0x0, x1, 0, x2)

inst_86:
    // Test 86:  Test with marching zeros/ones
    // result rd:x25(0x00002010), rs1:x7(0x00000400), rs2:x23(0x00000000)
    TEST_RR_OP(sha512sig1h, x25, x7, x23, 0x00002010, 0x400, 0x0, x1, 4, x2)

inst_87:
    // Test 87:  Test with marching zeros/ones
    // result rd:x26(0x00004020), rs1:x6(0x00000800), rs2:x22(0x00000000)
    TEST_RR_OP(sha512sig1h, x26, x6, x22, 0x00004020, 0x800, 0x0, x1, 8, x2)

inst_88:
    // Test 88:  Test with marching zeros/ones
    // result rd:x27(0x00008040), rs1:x5(0x00001000), rs2:x21(0x00000000)
    TEST_RR_OP(sha512sig1h, x27, x5, x21, 0x00008040, 0x1000, 0x0, x1, 12, x2)

inst_89:
    // Test 89:  Test with marching zeros/ones
    // result rd:x28(0x00010080), rs1:x4(0x00002000), rs2:x20(0x00000000)
    TEST_RR_OP(sha512sig1h, x28, x4, x20, 0x00010080, 0x2000, 0x0, x1, 16, x2)

    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with marching zeros/ones
    // result rd:x29(0x00020100), rs1:x3(0x00004000), rs2:x19(0x00000000)
    TEST_RR_OP(sha512sig1h, x29, x3, x19, 0x00020100, 0x4000, 0x0, x4, 0, x5)

inst_91:
    // Test 91:  Test with marching zeros/ones
    // result rd:x30(0x00040200), rs1:x2(0x00008000), rs2:x18(0x00000000)
    TEST_RR_OP(sha512sig1h, x30, x2, x18, 0x00040200, 0x8000, 0x0, x4, 4, x5)

inst_92:
    // Test 92:  Test with marching zeros/ones
    // result rd:x31(0x00080400), rs1:x1(0x00010000), rs2:x17(0x00000000)
    TEST_RR_OP(sha512sig1h, x31, x1, x17, 0x00080400, 0x10000, 0x0, x4, 8, x5)

inst_93:
    // Test 93:  Test with marching zeros/ones
    // result rd:x1(0x00100800), rs1:x31(0x00020000), rs2:x16(0x00000000)
    TEST_RR_OP(sha512sig1h, x1, x31, x16, 0x00100800, 0x20000, 0x0, x4, 12, x5)

inst_94:
    // Test 94:  Test with marching zeros/ones
    // result rd:x2(0x00201000), rs1:x30(0x00040000), rs2:x15(0x00000000)
    TEST_RR_OP(sha512sig1h, x2, x30, x15, 0x00201000, 0x40000, 0x0, x4, 16, x5)

    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with marching zeros/ones
    // result rd:x3(0x00402001), rs1:x29(0x00080000), rs2:x14(0x00000000)
    TEST_RR_OP(sha512sig1h, x3, x29, x14, 0x00402001, 0x80000, 0x0, x1, 0, x2)

inst_96:
    // Test 96:  Test with marching zeros/ones
    // result rd:x4(0x00804002), rs1:x28(0x00100000), rs2:x13(0x00000000)
    TEST_RR_OP(sha512sig1h, x4, x28, x13, 0x00804002, 0x100000, 0x0, x1, 4, x2)

inst_97:
    // Test 97:  Test with marching zeros/ones
    // result rd:x5(0x01008004), rs1:x27(0x00200000), rs2:x12(0x00000000)
    TEST_RR_OP(sha512sig1h, x5, x27, x12, 0x01008004, 0x200000, 0x0, x1, 8, x2)

inst_98:
    // Test 98:  Test with marching zeros/ones
    // result rd:x6(0x02010008), rs1:x26(0x00400000), rs2:x11(0x00000000)
    TEST_RR_OP(sha512sig1h, x6, x26, x11, 0x02010008, 0x400000, 0x0, x1, 12, x2)

inst_99:
    // Test 99:  Test with marching zeros/ones
    // result rd:x7(0x04020010), rs1:x25(0x00800000), rs2:x10(0x00000000)
    TEST_RR_OP(sha512sig1h, x7, x25, x10, 0x04020010, 0x800000, 0x0, x1, 16, x2)

    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with marching zeros/ones
    // result rd:x8(0x08040020), rs1:x24(0x01000000), rs2:x9(0x00000000)
    TEST_RR_OP(sha512sig1h, x8, x24, x9, 0x08040020, 0x1000000, 0x0, x1, 0, x2)

inst_101:
    // Test 101:  Test with marching zeros/ones
    // result rd:x9(0x10080040), rs1:x23(0x02000000), rs2:x8(0x00000000)
    TEST_RR_OP(sha512sig1h, x9, x23, x8, 0x10080040, 0x2000000, 0x0, x1, 4, x2)

inst_102:
    // Test 102:  Test with marching zeros/ones
    // result rd:x10(0x20100080), rs1:x22(0x04000000), rs2:x7(0x00000000)
    TEST_RR_OP(sha512sig1h, x10, x22, x7, 0x20100080, 0x4000000, 0x0, x1, 8, x2)

inst_103:
    // Test 103:  Test with marching zeros/ones
    // result rd:x11(0x40200100), rs1:x21(0x08000000), rs2:x6(0x00000000)
    TEST_RR_OP(sha512sig1h, x11, x21, x6, 0x40200100, 0x8000000, 0x0, x1, 12, x2)

inst_104:
    // Test 104:  Test with marching zeros/ones
    // result rd:x12(0x80400200), rs1:x20(0x10000000), rs2:x5(0x00000000)
    TEST_RR_OP(sha512sig1h, x12, x20, x5, 0x80400200, 0x10000000, 0x0, x1, 16, x2)

    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with marching zeros/ones
    // result rd:x13(0x00800400), rs1:x19(0x20000000), rs2:x4(0x00000000)
    TEST_RR_OP(sha512sig1h, x13, x19, x4, 0x00800400, 0x20000000, 0x0, x5, 0, x6)

inst_106:
    // Test 106:  Test with marching zeros/ones
    // result rd:x14(0x01000800), rs1:x18(0x40000000), rs2:x3(0x00000000)
    TEST_RR_OP(sha512sig1h, x14, x18, x3, 0x01000800, 0x40000000, 0x0, x5, 4, x6)

inst_107:
    // Test 107:  Test with marching zeros/ones
    // result rd:x15(0x02001000), rs1:x17(0x80000000), rs2:x2(0x00000000)
    TEST_RR_OP(sha512sig1h, x15, x17, x2, 0x02001000, 0x80000000, 0x0, x5, 8, x6)

inst_108:
    // Test 108:  Test with marching zeros/ones
    // result rd:x16(0x00000000), rs1:x16(0x00000000), rs2:x1(0x00000000)
    TEST_RR_OP(sha512sig1h, x16, x16, x1, 0x00000000, 0x0, 0x0, x5, 12, x6)

inst_109:
    // Test 109:  Test with marching zeros/ones
    // result rd:x17(0xfc001ff0), rs1:x15(0xfffffffe), rs2:x31(0x00000000)
    TEST_RR_OP(sha512sig1h, x17, x15, x31, 0xfc001ff0, 0xfffffffe, 0x0, x5, 16, x6)

    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with marching zeros/ones
    // result rd:x18(0xfc001fe8), rs1:x14(0xfffffffd), rs2:x30(0x00000000)
    TEST_RR_OP(sha512sig1h, x18, x14, x30, 0xfc001fe8, 0xfffffffd, 0x0, x1, 0, x2)

inst_111:
    // Test 111:  Test with marching zeros/ones
    // result rd:x19(0xfc001fd8), rs1:x13(0xfffffffb), rs2:x29(0x00000000)
    TEST_RR_OP(sha512sig1h, x19, x13, x29, 0xfc001fd8, 0xfffffffb, 0x0, x1, 4, x2)

inst_112:
    // Test 112:  Test with marching zeros/ones
    // result rd:x20(0xfc001fb8), rs1:x12(0xfffffff7), rs2:x28(0x00000000)
    TEST_RR_OP(sha512sig1h, x20, x12, x28, 0xfc001fb8, 0xfffffff7, 0x0, x1, 8, x2)

inst_113:
    // Test 113:  Test with marching zeros/ones
    // result rd:x21(0xfc001f78), rs1:x11(0xffffffef), rs2:x27(0x00000000)
    TEST_RR_OP(sha512sig1h, x21, x11, x27, 0xfc001f78, 0xffffffef, 0x0, x1, 12, x2)

inst_114:
    // Test 114:  Test with marching zeros/ones
    // result rd:x22(0xfc001ef8), rs1:x10(0xffffffdf), rs2:x26(0x00000000)
    TEST_RR_OP(sha512sig1h, x22, x10, x26, 0xfc001ef8, 0xffffffdf, 0x0, x1, 16, x2)

    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with marching zeros/ones
    // result rd:x23(0xfc001df9), rs1:x9(0xffffffbf), rs2:x25(0x00000000)
    TEST_RR_OP(sha512sig1h, x23, x9, x25, 0xfc001df9, 0xffffffbf, 0x0, x1, 0, x2)

inst_116:
    // Test 116:  Test with marching zeros/ones
    // result rd:x24(0xfc001bfa), rs1:x8(0xffffff7f), rs2:x24(0x00000000)
    TEST_RR_OP(sha512sig1h, x24, x8, x24, 0xfc001bfa, 0xffffff7f, 0x0, x1, 4, x2)

inst_117:
    // Test 117:  Test with marching zeros/ones
    // result rd:x25(0xfc0017fc), rs1:x7(0xfffffeff), rs2:x23(0x00000000)
    TEST_RR_OP(sha512sig1h, x25, x7, x23, 0xfc0017fc, 0xfffffeff, 0x0, x1, 8, x2)

inst_118:
    // Test 118:  Test with marching zeros/ones
    // result rd:x26(0xfc000ff0), rs1:x6(0xfffffdff), rs2:x22(0x00000000)
    TEST_RR_OP(sha512sig1h, x26, x6, x22, 0xfc000ff0, 0xfffffdff, 0x0, x1, 12, x2)

inst_119:
    // Test 119:  Test with marching zeros/ones
    // result rd:x27(0xfc003fe8), rs1:x5(0xfffffbff), rs2:x21(0x00000000)
    TEST_RR_OP(sha512sig1h, x27, x5, x21, 0xfc003fe8, 0xfffffbff, 0x0, x1, 16, x2)

    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with marching zeros/ones
    // result rd:x28(0xfc005fd8), rs1:x4(0xfffff7ff), rs2:x20(0x00000000)
    TEST_RR_OP(sha512sig1h, x28, x4, x20, 0xfc005fd8, 0xfffff7ff, 0x0, x5, 0, x6)

inst_121:
    // Test 121:  Test with marching zeros/ones
    // result rd:x29(0xfc009fb8), rs1:x3(0xffffefff), rs2:x19(0x00000000)
    TEST_RR_OP(sha512sig1h, x29, x3, x19, 0xfc009fb8, 0xffffefff, 0x0, x5, 4, x6)

inst_122:
    // Test 122:  Test with marching zeros/ones
    // result rd:x30(0xfc011f78), rs1:x2(0xffffdfff), rs2:x18(0x00000000)
    TEST_RR_OP(sha512sig1h, x30, x2, x18, 0xfc011f78, 0xffffdfff, 0x0, x5, 8, x6)

inst_123:
    // Test 123:  Test with marching zeros/ones
    // result rd:x31(0xfc021ef8), rs1:x1(0xffffbfff), rs2:x17(0x00000000)
    TEST_RR_OP(sha512sig1h, x31, x1, x17, 0xfc021ef8, 0xffffbfff, 0x0, x5, 12, x6)

inst_124:
    // Test 124:  Test with marching zeros/ones
    // result rd:x1(0xfc041df8), rs1:x31(0xffff7fff), rs2:x16(0x00000000)
    TEST_RR_OP(sha512sig1h, x1, x31, x16, 0xfc041df8, 0xffff7fff, 0x0, x5, 16, x6)

    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with marching zeros/ones
    // result rd:x2(0xfc081bf8), rs1:x30(0xfffeffff), rs2:x15(0x00000000)
    TEST_RR_OP(sha512sig1h, x2, x30, x15, 0xfc081bf8, 0xfffeffff, 0x0, x1, 0, x7)

inst_126:
    // Test 126:  Test with marching zeros/ones
    // result rd:x3(0xfc1017f8), rs1:x29(0xfffdffff), rs2:x14(0x00000000)
    TEST_RR_OP(sha512sig1h, x3, x29, x14, 0xfc1017f8, 0xfffdffff, 0x0, x1, 4, x7)

inst_127:
    // Test 127:  Test with marching zeros/ones
    // result rd:x4(0xfc200ff8), rs1:x28(0xfffbffff), rs2:x13(0x00000000)
    TEST_RR_OP(sha512sig1h, x4, x28, x13, 0xfc200ff8, 0xfffbffff, 0x0, x1, 8, x7)

inst_128:
    // Test 128:  Test with marching zeros/ones
    // result rd:x5(0xfc403ff9), rs1:x27(0xfff7ffff), rs2:x12(0x00000000)
    TEST_RR_OP(sha512sig1h, x5, x27, x12, 0xfc403ff9, 0xfff7ffff, 0x0, x1, 12, x7)

inst_129:
    // Test 129:  Test with marching zeros/ones
    // result rd:x6(0xfc805ffa), rs1:x26(0xffefffff), rs2:x11(0x00000000)
    TEST_RR_OP(sha512sig1h, x6, x26, x11, 0xfc805ffa, 0xffefffff, 0x0, x1, 16, x7)

    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with marching zeros/ones
    // result rd:x7(0xfd009ffc), rs1:x25(0xffdfffff), rs2:x10(0x00000000)
    TEST_RR_OP(sha512sig1h, x7, x25, x10, 0xfd009ffc, 0xffdfffff, 0x0, x1, 0, x2)

inst_131:
    // Test 131:  Test with marching zeros/ones
    // result rd:x8(0xfe011ff0), rs1:x24(0xffbfffff), rs2:x9(0x00000000)
    TEST_RR_OP(sha512sig1h, x8, x24, x9, 0xfe011ff0, 0xffbfffff, 0x0, x1, 4, x2)

inst_132:
    // Test 132:  Test with marching zeros/ones
    // result rd:x9(0xf8021fe8), rs1:x23(0xff7fffff), rs2:x8(0x00000000)
    TEST_RR_OP(sha512sig1h, x9, x23, x8, 0xf8021fe8, 0xff7fffff, 0x0, x1, 8, x2)

inst_133:
    // Test 133:  Test with marching zeros/ones
    // result rd:x10(0xf4041fd8), rs1:x22(0xfeffffff), rs2:x7(0x00000000)
    TEST_RR_OP(sha512sig1h, x10, x22, x7, 0xf4041fd8, 0xfeffffff, 0x0, x1, 12, x2)

inst_134:
    // Test 134:  Test with marching zeros/ones
    // result rd:x11(0xec081fb8), rs1:x21(0xfdffffff), rs2:x6(0x00000000)
    TEST_RR_OP(sha512sig1h, x11, x21, x6, 0xec081fb8, 0xfdffffff, 0x0, x1, 16, x2)

    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with marching zeros/ones
    // result rd:x12(0xdc101f78), rs1:x20(0xfbffffff), rs2:x5(0x00000000)
    TEST_RR_OP(sha512sig1h, x12, x20, x5, 0xdc101f78, 0xfbffffff, 0x0, x6, 0, x7)

inst_136:
    // Test 136:  Test with marching zeros/ones
    // result rd:x13(0xbc201ef8), rs1:x19(0xf7ffffff), rs2:x4(0x00000000)
    TEST_RR_OP(sha512sig1h, x13, x19, x4, 0xbc201ef8, 0xf7ffffff, 0x0, x6, 4, x7)

inst_137:
    // Test 137:  Test with marching zeros/ones
    // result rd:x14(0x7c401df8), rs1:x18(0xefffffff), rs2:x3(0x00000000)
    TEST_RR_OP(sha512sig1h, x14, x18, x3, 0x7c401df8, 0xefffffff, 0x0, x6, 8, x7)

inst_138:
    // Test 138:  Test with marching zeros/ones
    // result rd:x15(0xfc801bf8), rs1:x17(0xdfffffff), rs2:x2(0x00000000)
    TEST_RR_OP(sha512sig1h, x15, x17, x2, 0xfc801bf8, 0xdfffffff, 0x0, x6, 12, x7)

inst_139:
    // Test 139:  Test with marching zeros/ones
    // result rd:x16(0xfd0017f8), rs1:x16(0xbfffffff), rs2:x1(0x00000000)
    TEST_RR_OP(sha512sig1h, x16, x16, x1, 0xfd0017f8, 0xbfffffff, 0x0, x6, 16, x7)

    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with marching zeros/ones
    // result rd:x17(0xfe000ff8), rs1:x15(0x7fffffff), rs2:x31(0x00000000)
    TEST_RR_OP(sha512sig1h, x17, x15, x31, 0xfe000ff8, 0x7fffffff, 0x0, x1, 0, x2)

inst_141:
    // Test 141:  Test with marching zeros/ones
    // result rd:x18(0xfc001ff8), rs1:x14(0xffffffff), rs2:x30(0x00000000)
    TEST_RR_OP(sha512sig1h, x18, x14, x30, 0xfc001ff8, 0xffffffff, 0x0, x1, 4, x2)

inst_142:
    // Test 142:  Test with rs1 == rs2
    // result rd:x19(0xe9126c6b), rs1:x29(0xadea5195), rs2:x29(0x121bcc23)
    TEST_RR_OP(sha512sig1h, x19, x29, x29, 0xe9126c6b, 0xadea5195, 0x121bcc23, x1, 8, x2)

inst_143:
    // Test 143:  Test with rd == x0
    // result rd:x0(0x00000000), rs1:x12(0xd2ffbec1), rs2:x28(0xa47d105b)
    TEST_RR_OP(sha512sig1h, x0, x12, x28, 0x00000000, 0xd2ffbec1, 0xa47d105b, x1, 12, x2)

inst_144:
    // Test 144:  Test with rs2 == x0
    // result rd:x21(0x45aed666), rs1:x11(0xa8e1a8bb), rs2:x0(0x707af2c0)
    TEST_RR_OP(sha512sig1h, x21, x11, x0, 0x45aed666, 0xa8e1a8bb, 0x707af2c0, x1, 16, x2)

    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig1h)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig1h)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with rs1 == x0
    // result rd:x22(0x7f786007), rs1:x0(0x48c99fcb), rs2:x26(0xe19bfbc3)
    TEST_RR_OP(sha512sig1h, x22, x0, x26, 0x7f786007, 0x48c99fcb, 0xe19bfbc3, x1, 0, x2)
	
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

