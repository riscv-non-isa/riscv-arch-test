// RISC-V Architectural Validation Test SHA512SIG0H-01
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
// Description: Testing instruction 'sha512sig0h'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV32IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1

    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x6,signature_1_0)


inst_0:
    // Test 0:  Test with random values
    // result rd:x1(0xf4031638), rs1:x31(0xadea5195), rs2:x16(0x121bcc23)
    TEST_RR_OP(sha512sig0h, x1, x31, x16, 0xf4031638, 0xadea5195, 0x121bcc23, x6, 0, x7)

inst_1:
    // Test 1:  Test with random values
    // result rd:x2(0xb308dfa3), rs1:x30(0xd2ffbec1), rs2:x15(0xa47d105b)
    TEST_RR_OP(sha512sig0h, x2, x30, x15, 0xb308dfa3, 0xd2ffbec1, 0xa47d105b, x6, 4, x7)

inst_2:
    // Test 2:  Test with random values
    // result rd:x3(0x9589f6a4), rs1:x29(0xa8e1a8bb), rs2:x14(0x707af2c0)
    TEST_RR_OP(sha512sig0h, x3, x29, x14, 0x9589f6a4, 0xa8e1a8bb, 0x707af2c0, x6, 8, x7)

inst_3:
    // Test 3:  Test with random values
    // result rd:x4(0x67bd9545), rs1:x28(0x48c99fcb), rs2:x13(0xe19bfbc3)
    TEST_RR_OP(sha512sig0h, x4, x28, x13, 0x67bd9545, 0x48c99fcb, 0xe19bfbc3, x6, 12, x7)

inst_4:
    // Test 4:  Test with random values
    // result rd:x5(0x0cc48ed1), rs1:x27(0x461d524f), rs2:x12(0x528a10af)
    TEST_RR_OP(sha512sig0h, x5, x27, x12, 0x0cc48ed1, 0x461d524f, 0x528a10af, x6, 16, x7)

    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_2_0)


inst_5:
    // Test 5:  Test with random values
    // result rd:x6(0xe6b29666), rs1:x26(0x528a10af), rs2:x11(0x461d524f)
    TEST_RR_OP(sha512sig0h, x6, x26, x11, 0xe6b29666, 0x528a10af, 0x461d524f, x1, 0, x2)

inst_6:
    // Test 6:  Test with random values
    // result rd:x7(0x3aef51ed), rs1:x25(0xe19bfbc3), rs2:x10(0x48c99fcb)
    TEST_RR_OP(sha512sig0h, x7, x25, x10, 0x3aef51ed, 0xe19bfbc3, 0x48c99fcb, x1, 4, x2)

inst_7:
    // Test 7:  Test with random values
    // result rd:x8(0x03adf677), rs1:x24(0x707af2c0), rs2:x9(0xa8e1a8bb)
    TEST_RR_OP(sha512sig0h, x8, x24, x9, 0x03adf677, 0x707af2c0, 0xa8e1a8bb, x1, 8, x2)

inst_8:
    // Test 8:  Test with random values
    // result rd:x9(0x12d20f1d), rs1:x23(0xa47d105b), rs2:x8(0xd2ffbec1)
    TEST_RR_OP(sha512sig0h, x9, x23, x8, 0x12d20f1d, 0xa47d105b, 0xd2ffbec1, x1, 12, x2)

inst_9:
    // Test 9:  Test with random values
    // result rd:x10(0x1c3bca45), rs1:x22(0x121bcc23), rs2:x7(0xadea5195)
    TEST_RR_OP(sha512sig0h, x10, x22, x7, 0x1c3bca45, 0x121bcc23, 0xadea5195, x1, 16, x2)

    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_3_0)


inst_10:
    // Test 10:  Test with marching zeros/ones
    // result rd:x11(0x7f000000), rs1:x21(0x00000001), rs2:x6(0xffffffff)
    TEST_RR_OP(sha512sig0h, x11, x21, x6, 0x7f000000, 0x1, 0xffffffff, x1, 0, x7)

inst_11:
    // Test 11:  Test with marching zeros/ones
    // result rd:x12(0x7f000001), rs1:x20(0x00000002), rs2:x5(0x7fffffff)
    TEST_RR_OP(sha512sig0h, x12, x20, x5, 0x7f000001, 0x2, 0x7fffffff, x1, 4, x7)

inst_12:
    // Test 12:  Test with marching zeros/ones
    // result rd:x13(0x7f000002), rs1:x19(0x00000004), rs2:x4(0xbfffffff)
    TEST_RR_OP(sha512sig0h, x13, x19, x4, 0x7f000002, 0x4, 0xbfffffff, x1, 8, x7)

inst_13:
    // Test 13:  Test with marching zeros/ones
    // result rd:x14(0x7f000004), rs1:x18(0x00000008), rs2:x3(0xdfffffff)
    TEST_RR_OP(sha512sig0h, x14, x18, x3, 0x7f000004, 0x8, 0xdfffffff, x1, 12, x7)

inst_14:
    // Test 14:  Test with marching zeros/ones
    // result rd:x15(0x7f000008), rs1:x17(0x00000010), rs2:x2(0xefffffff)
    TEST_RR_OP(sha512sig0h, x15, x17, x2, 0x7f000008, 0x10, 0xefffffff, x1, 16, x7)

    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x2,signature_4_0)


inst_15:
    // Test 15:  Test with marching zeros/ones
    // result rd:x16(0x7f000010), rs1:x16(0x00000020), rs2:x1(0xf7ffffff)
    TEST_RR_OP(sha512sig0h, x16, x16, x1, 0x7f000010, 0x20, 0xf7ffffff, x2, 0, x3)

inst_16:
    // Test 16:  Test with marching zeros/ones
    // result rd:x17(0x7f000020), rs1:x15(0x00000040), rs2:x31(0xfbffffff)
    TEST_RR_OP(sha512sig0h, x17, x15, x31, 0x7f000020, 0x40, 0xfbffffff, x2, 4, x3)

inst_17:
    // Test 17:  Test with marching zeros/ones
    // result rd:x18(0x7f000041), rs1:x14(0x00000080), rs2:x30(0xfdffffff)
    TEST_RR_OP(sha512sig0h, x18, x14, x30, 0x7f000041, 0x80, 0xfdffffff, x2, 8, x3)

inst_18:
    // Test 18:  Test with marching zeros/ones
    // result rd:x19(0x7f000083), rs1:x13(0x00000100), rs2:x29(0xfeffffff)
    TEST_RR_OP(sha512sig0h, x19, x13, x29, 0x7f000083, 0x100, 0xfeffffff, x2, 12, x3)

inst_19:
    // Test 19:  Test with marching zeros/ones
    // result rd:x20(0x7f000106), rs1:x12(0x00000200), rs2:x28(0xff7fffff)
    TEST_RR_OP(sha512sig0h, x20, x12, x28, 0x7f000106, 0x200, 0xff7fffff, x2, 16, x3)

    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_5_0)


inst_20:
    // Test 20:  Test with marching zeros/ones
    // result rd:x21(0x7f00020c), rs1:x11(0x00000400), rs2:x27(0xffbfffff)
    TEST_RR_OP(sha512sig0h, x21, x11, x27, 0x7f00020c, 0x400, 0xffbfffff, x1, 0, x2)

inst_21:
    // Test 21:  Test with marching zeros/ones
    // result rd:x22(0x7f000418), rs1:x10(0x00000800), rs2:x26(0xffdfffff)
    TEST_RR_OP(sha512sig0h, x22, x10, x26, 0x7f000418, 0x800, 0xffdfffff, x1, 4, x2)

inst_22:
    // Test 22:  Test with marching zeros/ones
    // result rd:x23(0x7f000830), rs1:x9(0x00001000), rs2:x25(0xffefffff)
    TEST_RR_OP(sha512sig0h, x23, x9, x25, 0x7f000830, 0x1000, 0xffefffff, x1, 8, x2)

inst_23:
    // Test 23:  Test with marching zeros/ones
    // result rd:x24(0x7f001060), rs1:x8(0x00002000), rs2:x24(0xfff7ffff)
    TEST_RR_OP(sha512sig0h, x24, x8, x24, 0x7f001060, 0x2000, 0xfff7ffff, x1, 12, x2)

inst_24:
    // Test 24:  Test with marching zeros/ones
    // result rd:x25(0x7f0020c0), rs1:x7(0x00004000), rs2:x23(0xfffbffff)
    TEST_RR_OP(sha512sig0h, x25, x7, x23, 0x7f0020c0, 0x4000, 0xfffbffff, x1, 16, x2)

    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_6_0)


inst_25:
    // Test 25:  Test with marching zeros/ones
    // result rd:x26(0x7f004180), rs1:x6(0x00008000), rs2:x22(0xfffdffff)
    TEST_RR_OP(sha512sig0h, x26, x6, x22, 0x7f004180, 0x8000, 0xfffdffff, x1, 0, x7)

inst_26:
    // Test 26:  Test with marching zeros/ones
    // result rd:x27(0x7f008300), rs1:x5(0x00010000), rs2:x21(0xfffeffff)
    TEST_RR_OP(sha512sig0h, x27, x5, x21, 0x7f008300, 0x10000, 0xfffeffff, x1, 4, x7)

inst_27:
    // Test 27:  Test with marching zeros/ones
    // result rd:x28(0x7f010600), rs1:x4(0x00020000), rs2:x20(0xffff7fff)
    TEST_RR_OP(sha512sig0h, x28, x4, x20, 0x7f010600, 0x20000, 0xffff7fff, x1, 8, x7)

inst_28:
    // Test 28:  Test with marching zeros/ones
    // result rd:x29(0x7f020c00), rs1:x3(0x00040000), rs2:x19(0xffffbfff)
    TEST_RR_OP(sha512sig0h, x29, x3, x19, 0x7f020c00, 0x40000, 0xffffbfff, x1, 12, x7)

inst_29:
    // Test 29:  Test with marching zeros/ones
    // result rd:x30(0x7f041800), rs1:x2(0x00080000), rs2:x18(0xffffdfff)
    TEST_RR_OP(sha512sig0h, x30, x2, x18, 0x7f041800, 0x80000, 0xffffdfff, x1, 16, x7)

    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x5,signature_7_0)


inst_30:
    // Test 30:  Test with marching zeros/ones
    // result rd:x31(0x7f083000), rs1:x1(0x00100000), rs2:x17(0xffffefff)
    TEST_RR_OP(sha512sig0h, x31, x1, x17, 0x7f083000, 0x100000, 0xffffefff, x5, 0, x6)

inst_31:
    // Test 31:  Test with marching zeros/ones
    // result rd:x1(0x7f106000), rs1:x31(0x00200000), rs2:x16(0xfffff7ff)
    TEST_RR_OP(sha512sig0h, x1, x31, x16, 0x7f106000, 0x200000, 0xfffff7ff, x5, 4, x6)

inst_32:
    // Test 32:  Test with marching zeros/ones
    // result rd:x2(0x7f20c000), rs1:x30(0x00400000), rs2:x15(0xfffffbff)
    TEST_RR_OP(sha512sig0h, x2, x30, x15, 0x7f20c000, 0x400000, 0xfffffbff, x5, 8, x6)

inst_33:
    // Test 33:  Test with marching zeros/ones
    // result rd:x3(0x7f418000), rs1:x29(0x00800000), rs2:x14(0xfffffdff)
    TEST_RR_OP(sha512sig0h, x3, x29, x14, 0x7f418000, 0x800000, 0xfffffdff, x5, 12, x6)

inst_34:
    // Test 34:  Test with marching zeros/ones
    // result rd:x4(0x7f830000), rs1:x28(0x01000000), rs2:x13(0xfffffeff)
    TEST_RR_OP(sha512sig0h, x4, x28, x13, 0x7f830000, 0x1000000, 0xfffffeff, x5, 16, x6)

    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_8_0)


inst_35:
    // Test 35:  Test with marching zeros/ones
    // result rd:x5(0xfe060000), rs1:x27(0x02000000), rs2:x12(0xffffff7f)
    TEST_RR_OP(sha512sig0h, x5, x27, x12, 0xfe060000, 0x2000000, 0xffffff7f, x1, 0, x2)

inst_36:
    // Test 36:  Test with marching zeros/ones
    // result rd:x6(0x3d0c0000), rs1:x26(0x04000000), rs2:x11(0xffffffbf)
    TEST_RR_OP(sha512sig0h, x6, x26, x11, 0x3d0c0000, 0x4000000, 0xffffffbf, x1, 4, x2)

inst_37:
    // Test 37:  Test with marching zeros/ones
    // result rd:x7(0x5b180000), rs1:x25(0x08000000), rs2:x10(0xffffffdf)
    TEST_RR_OP(sha512sig0h, x7, x25, x10, 0x5b180000, 0x8000000, 0xffffffdf, x1, 8, x2)

inst_38:
    // Test 38:  Test with marching zeros/ones
    // result rd:x8(0x67300000), rs1:x24(0x10000000), rs2:x9(0xffffffef)
    TEST_RR_OP(sha512sig0h, x8, x24, x9, 0x67300000, 0x10000000, 0xffffffef, x1, 12, x2)

inst_39:
    // Test 39:  Test with marching zeros/ones
    // result rd:x9(0x67600000), rs1:x23(0x20000000), rs2:x8(0xfffffff7)
    TEST_RR_OP(sha512sig0h, x9, x23, x8, 0x67600000, 0x20000000, 0xfffffff7, x1, 16, x2)

    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_9_0)


inst_40:
    // Test 40:  Test with marching zeros/ones
    // result rd:x10(0x5bc00000), rs1:x22(0x40000000), rs2:x7(0xfffffffb)
    TEST_RR_OP(sha512sig0h, x10, x22, x7, 0x5bc00000, 0x40000000, 0xfffffffb, x1, 0, x2)

inst_41:
    // Test 41:  Test with marching zeros/ones
    // result rd:x11(0x3c800000), rs1:x21(0x80000000), rs2:x6(0xfffffffd)
    TEST_RR_OP(sha512sig0h, x11, x21, x6, 0x3c800000, 0x80000000, 0xfffffffd, x1, 4, x2)

inst_42:
    // Test 42:  Test with marching zeros/ones
    // result rd:x12(0xfe000000), rs1:x20(0x00000000), rs2:x5(0xfffffffe)
    TEST_RR_OP(sha512sig0h, x12, x20, x5, 0xfe000000, 0x0, 0xfffffffe, x1, 8, x2)

inst_43:
    // Test 43:  Test with marching zeros/ones
    // result rd:x13(0x7effffff), rs1:x19(0xfffffffe), rs2:x4(0x00000000)
    TEST_RR_OP(sha512sig0h, x13, x19, x4, 0x7effffff, 0xfffffffe, 0x0, x1, 12, x2)

inst_44:
    // Test 44:  Test with marching zeros/ones
    // result rd:x14(0x7efffffe), rs1:x18(0xfffffffd), rs2:x3(0x80000000)
    TEST_RR_OP(sha512sig0h, x14, x18, x3, 0x7efffffe, 0xfffffffd, 0x80000000, x1, 16, x2)

    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x3,signature_10_0)


inst_45:
    // Test 45:  Test with marching zeros/ones
    // result rd:x15(0x7efffffd), rs1:x17(0xfffffffb), rs2:x2(0x40000000)
    TEST_RR_OP(sha512sig0h, x15, x17, x2, 0x7efffffd, 0xfffffffb, 0x40000000, x3, 0, x4)

inst_46:
    // Test 46:  Test with marching zeros/ones
    // result rd:x16(0x7efffffb), rs1:x16(0xfffffff7), rs2:x1(0x20000000)
    TEST_RR_OP(sha512sig0h, x16, x16, x1, 0x7efffffb, 0xfffffff7, 0x20000000, x3, 4, x4)

inst_47:
    // Test 47:  Test with marching zeros/ones
    // result rd:x17(0x7efffff7), rs1:x15(0xffffffef), rs2:x31(0x10000000)
    TEST_RR_OP(sha512sig0h, x17, x15, x31, 0x7efffff7, 0xffffffef, 0x10000000, x3, 8, x4)

inst_48:
    // Test 48:  Test with marching zeros/ones
    // result rd:x18(0x7effffef), rs1:x14(0xffffffdf), rs2:x30(0x08000000)
    TEST_RR_OP(sha512sig0h, x18, x14, x30, 0x7effffef, 0xffffffdf, 0x8000000, x3, 12, x4)

inst_49:
    // Test 49:  Test with marching zeros/ones
    // result rd:x19(0x7effffdf), rs1:x13(0xffffffbf), rs2:x29(0x04000000)
    TEST_RR_OP(sha512sig0h, x19, x13, x29, 0x7effffdf, 0xffffffbf, 0x4000000, x3, 16, x4)

    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_11_0)


inst_50:
    // Test 50:  Test with marching zeros/ones
    // result rd:x20(0x7effffbe), rs1:x12(0xffffff7f), rs2:x28(0x02000000)
    TEST_RR_OP(sha512sig0h, x20, x12, x28, 0x7effffbe, 0xffffff7f, 0x2000000, x1, 0, x2)

inst_51:
    // Test 51:  Test with marching zeros/ones
    // result rd:x21(0x7effff7c), rs1:x11(0xfffffeff), rs2:x27(0x01000000)
    TEST_RR_OP(sha512sig0h, x21, x11, x27, 0x7effff7c, 0xfffffeff, 0x1000000, x1, 4, x2)

inst_52:
    // Test 52:  Test with marching zeros/ones
    // result rd:x22(0x7efffef9), rs1:x10(0xfffffdff), rs2:x26(0x00800000)
    TEST_RR_OP(sha512sig0h, x22, x10, x26, 0x7efffef9, 0xfffffdff, 0x800000, x1, 8, x2)

inst_53:
    // Test 53:  Test with marching zeros/ones
    // result rd:x23(0x7efffdf3), rs1:x9(0xfffffbff), rs2:x25(0x00400000)
    TEST_RR_OP(sha512sig0h, x23, x9, x25, 0x7efffdf3, 0xfffffbff, 0x400000, x1, 12, x2)

inst_54:
    // Test 54:  Test with marching zeros/ones
    // result rd:x24(0x7efffbe7), rs1:x8(0xfffff7ff), rs2:x24(0x00200000)
    TEST_RR_OP(sha512sig0h, x24, x8, x24, 0x7efffbe7, 0xfffff7ff, 0x200000, x1, 16, x2)

    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_12_0)


inst_55:
    // Test 55:  Test with marching zeros/ones
    // result rd:x25(0x7efff7cf), rs1:x7(0xffffefff), rs2:x23(0x00100000)
    TEST_RR_OP(sha512sig0h, x25, x7, x23, 0x7efff7cf, 0xffffefff, 0x100000, x1, 0, x2)

inst_56:
    // Test 56:  Test with marching zeros/ones
    // result rd:x26(0x7effef9f), rs1:x6(0xffffdfff), rs2:x22(0x00080000)
    TEST_RR_OP(sha512sig0h, x26, x6, x22, 0x7effef9f, 0xffffdfff, 0x80000, x1, 4, x2)

inst_57:
    // Test 57:  Test with marching zeros/ones
    // result rd:x27(0x7effdf3f), rs1:x5(0xffffbfff), rs2:x21(0x00040000)
    TEST_RR_OP(sha512sig0h, x27, x5, x21, 0x7effdf3f, 0xffffbfff, 0x40000, x1, 8, x2)

inst_58:
    // Test 58:  Test with marching zeros/ones
    // result rd:x28(0x7effbe7f), rs1:x4(0xffff7fff), rs2:x20(0x00020000)
    TEST_RR_OP(sha512sig0h, x28, x4, x20, 0x7effbe7f, 0xffff7fff, 0x20000, x1, 12, x2)

inst_59:
    // Test 59:  Test with marching zeros/ones
    // result rd:x29(0x7eff7cff), rs1:x3(0xfffeffff), rs2:x19(0x00010000)
    TEST_RR_OP(sha512sig0h, x29, x3, x19, 0x7eff7cff, 0xfffeffff, 0x10000, x1, 16, x2)

    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x4,signature_13_0)


inst_60:
    // Test 60:  Test with marching zeros/ones
    // result rd:x30(0x7efef9ff), rs1:x2(0xfffdffff), rs2:x18(0x00008000)
    TEST_RR_OP(sha512sig0h, x30, x2, x18, 0x7efef9ff, 0xfffdffff, 0x8000, x4, 0, x5)

inst_61:
    // Test 61:  Test with marching zeros/ones
    // result rd:x31(0x7efdf3ff), rs1:x1(0xfffbffff), rs2:x17(0x00004000)
    TEST_RR_OP(sha512sig0h, x31, x1, x17, 0x7efdf3ff, 0xfffbffff, 0x4000, x4, 4, x5)

inst_62:
    // Test 62:  Test with marching zeros/ones
    // result rd:x1(0x7efbe7ff), rs1:x31(0xfff7ffff), rs2:x16(0x00002000)
    TEST_RR_OP(sha512sig0h, x1, x31, x16, 0x7efbe7ff, 0xfff7ffff, 0x2000, x4, 8, x5)

inst_63:
    // Test 63:  Test with marching zeros/ones
    // result rd:x2(0x7ef7cfff), rs1:x30(0xffefffff), rs2:x15(0x00001000)
    TEST_RR_OP(sha512sig0h, x2, x30, x15, 0x7ef7cfff, 0xffefffff, 0x1000, x4, 12, x5)

inst_64:
    // Test 64:  Test with marching zeros/ones
    // result rd:x3(0x7eef9fff), rs1:x29(0xffdfffff), rs2:x14(0x00000800)
    TEST_RR_OP(sha512sig0h, x3, x29, x14, 0x7eef9fff, 0xffdfffff, 0x800, x4, 16, x5)

    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_14_0)


inst_65:
    // Test 65:  Test with marching zeros/ones
    // result rd:x4(0x7edf3fff), rs1:x28(0xffbfffff), rs2:x13(0x00000400)
    TEST_RR_OP(sha512sig0h, x4, x28, x13, 0x7edf3fff, 0xffbfffff, 0x400, x1, 0, x2)

inst_66:
    // Test 66:  Test with marching zeros/ones
    // result rd:x5(0x7ebe7fff), rs1:x27(0xff7fffff), rs2:x12(0x00000200)
    TEST_RR_OP(sha512sig0h, x5, x27, x12, 0x7ebe7fff, 0xff7fffff, 0x200, x1, 4, x2)

inst_67:
    // Test 67:  Test with marching zeros/ones
    // result rd:x6(0x7e7cffff), rs1:x26(0xfeffffff), rs2:x11(0x00000100)
    TEST_RR_OP(sha512sig0h, x6, x26, x11, 0x7e7cffff, 0xfeffffff, 0x100, x1, 8, x2)

inst_68:
    // Test 68:  Test with marching zeros/ones
    // result rd:x7(0xfff9ffff), rs1:x25(0xfdffffff), rs2:x10(0x00000080)
    TEST_RR_OP(sha512sig0h, x7, x25, x10, 0xfff9ffff, 0xfdffffff, 0x80, x1, 12, x2)

inst_69:
    // Test 69:  Test with marching zeros/ones
    // result rd:x8(0x3cf3ffff), rs1:x24(0xfbffffff), rs2:x9(0x00000040)
    TEST_RR_OP(sha512sig0h, x8, x24, x9, 0x3cf3ffff, 0xfbffffff, 0x40, x1, 16, x2)

    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_15_0)


inst_70:
    // Test 70:  Test with marching zeros/ones
    // result rd:x9(0x5ae7ffff), rs1:x23(0xf7ffffff), rs2:x8(0x00000020)
    TEST_RR_OP(sha512sig0h, x9, x23, x8, 0x5ae7ffff, 0xf7ffffff, 0x20, x1, 0, x2)

inst_71:
    // Test 71:  Test with marching zeros/ones
    // result rd:x10(0x66cfffff), rs1:x22(0xefffffff), rs2:x7(0x00000010)
    TEST_RR_OP(sha512sig0h, x10, x22, x7, 0x66cfffff, 0xefffffff, 0x10, x1, 4, x2)

inst_72:
    // Test 72:  Test with marching zeros/ones
    // result rd:x11(0x669fffff), rs1:x21(0xdfffffff), rs2:x6(0x00000008)
    TEST_RR_OP(sha512sig0h, x11, x21, x6, 0x669fffff, 0xdfffffff, 0x8, x1, 8, x2)

inst_73:
    // Test 73:  Test with marching zeros/ones
    // result rd:x12(0x5a3fffff), rs1:x20(0xbfffffff), rs2:x5(0x00000004)
    TEST_RR_OP(sha512sig0h, x12, x20, x5, 0x5a3fffff, 0xbfffffff, 0x4, x1, 12, x2)

inst_74:
    // Test 74:  Test with marching zeros/ones
    // result rd:x13(0x3d7fffff), rs1:x19(0x7fffffff), rs2:x4(0x00000002)
    TEST_RR_OP(sha512sig0h, x13, x19, x4, 0x3d7fffff, 0x7fffffff, 0x2, x1, 16, x2)

    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x4,signature_16_0)


inst_75:
    // Test 75:  Test with marching zeros/ones
    // result rd:x14(0xffffffff), rs1:x18(0xffffffff), rs2:x3(0x00000001)
    TEST_RR_OP(sha512sig0h, x14, x18, x3, 0xffffffff, 0xffffffff, 0x1, x4, 0, x5)

inst_76:
    // Test 76:  Test with marching zeros/ones
    // result rd:x15(0x00000000), rs1:x17(0x00000001), rs2:x2(0x00000000)
    TEST_RR_OP(sha512sig0h, x15, x17, x2, 0x00000000, 0x1, 0x0, x4, 4, x5)

inst_77:
    // Test 77:  Test with marching zeros/ones
    // result rd:x16(0x00000001), rs1:x16(0x00000002), rs2:x1(0x00000000)
    TEST_RR_OP(sha512sig0h, x16, x16, x1, 0x00000001, 0x2, 0x0, x4, 8, x5)

inst_78:
    // Test 78:  Test with marching zeros/ones
    // result rd:x17(0x00000002), rs1:x15(0x00000004), rs2:x31(0x00000000)
    TEST_RR_OP(sha512sig0h, x17, x15, x31, 0x00000002, 0x4, 0x0, x4, 12, x5)

inst_79:
    // Test 79:  Test with marching zeros/ones
    // result rd:x18(0x00000004), rs1:x14(0x00000008), rs2:x30(0x00000000)
    TEST_RR_OP(sha512sig0h, x18, x14, x30, 0x00000004, 0x8, 0x0, x4, 16, x5)

    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_17_0)


inst_80:
    // Test 80:  Test with marching zeros/ones
    // result rd:x19(0x00000008), rs1:x13(0x00000010), rs2:x29(0x00000000)
    TEST_RR_OP(sha512sig0h, x19, x13, x29, 0x00000008, 0x10, 0x0, x1, 0, x2)

inst_81:
    // Test 81:  Test with marching zeros/ones
    // result rd:x20(0x00000010), rs1:x12(0x00000020), rs2:x28(0x00000000)
    TEST_RR_OP(sha512sig0h, x20, x12, x28, 0x00000010, 0x20, 0x0, x1, 4, x2)

inst_82:
    // Test 82:  Test with marching zeros/ones
    // result rd:x21(0x00000020), rs1:x11(0x00000040), rs2:x27(0x00000000)
    TEST_RR_OP(sha512sig0h, x21, x11, x27, 0x00000020, 0x40, 0x0, x1, 8, x2)

inst_83:
    // Test 83:  Test with marching zeros/ones
    // result rd:x22(0x00000041), rs1:x10(0x00000080), rs2:x26(0x00000000)
    TEST_RR_OP(sha512sig0h, x22, x10, x26, 0x00000041, 0x80, 0x0, x1, 12, x2)

inst_84:
    // Test 84:  Test with marching zeros/ones
    // result rd:x23(0x00000083), rs1:x9(0x00000100), rs2:x25(0x00000000)
    TEST_RR_OP(sha512sig0h, x23, x9, x25, 0x00000083, 0x100, 0x0, x1, 16, x2)

    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_18_0)


inst_85:
    // Test 85:  Test with marching zeros/ones
    // result rd:x24(0x00000106), rs1:x8(0x00000200), rs2:x24(0x00000000)
    TEST_RR_OP(sha512sig0h, x24, x8, x24, 0x00000106, 0x200, 0x0, x1, 0, x2)

inst_86:
    // Test 86:  Test with marching zeros/ones
    // result rd:x25(0x0000020c), rs1:x7(0x00000400), rs2:x23(0x00000000)
    TEST_RR_OP(sha512sig0h, x25, x7, x23, 0x0000020c, 0x400, 0x0, x1, 4, x2)

inst_87:
    // Test 87:  Test with marching zeros/ones
    // result rd:x26(0x00000418), rs1:x6(0x00000800), rs2:x22(0x00000000)
    TEST_RR_OP(sha512sig0h, x26, x6, x22, 0x00000418, 0x800, 0x0, x1, 8, x2)

inst_88:
    // Test 88:  Test with marching zeros/ones
    // result rd:x27(0x00000830), rs1:x5(0x00001000), rs2:x21(0x00000000)
    TEST_RR_OP(sha512sig0h, x27, x5, x21, 0x00000830, 0x1000, 0x0, x1, 12, x2)

inst_89:
    // Test 89:  Test with marching zeros/ones
    // result rd:x28(0x00001060), rs1:x4(0x00002000), rs2:x20(0x00000000)
    TEST_RR_OP(sha512sig0h, x28, x4, x20, 0x00001060, 0x2000, 0x0, x1, 16, x2)

    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x4,signature_19_0)


inst_90:
    // Test 90:  Test with marching zeros/ones
    // result rd:x29(0x000020c0), rs1:x3(0x00004000), rs2:x19(0x00000000)
    TEST_RR_OP(sha512sig0h, x29, x3, x19, 0x000020c0, 0x4000, 0x0, x4, 0, x5)

inst_91:
    // Test 91:  Test with marching zeros/ones
    // result rd:x30(0x00004180), rs1:x2(0x00008000), rs2:x18(0x00000000)
    TEST_RR_OP(sha512sig0h, x30, x2, x18, 0x00004180, 0x8000, 0x0, x4, 4, x5)

inst_92:
    // Test 92:  Test with marching zeros/ones
    // result rd:x31(0x00008300), rs1:x1(0x00010000), rs2:x17(0x00000000)
    TEST_RR_OP(sha512sig0h, x31, x1, x17, 0x00008300, 0x10000, 0x0, x4, 8, x5)

inst_93:
    // Test 93:  Test with marching zeros/ones
    // result rd:x1(0x00010600), rs1:x31(0x00020000), rs2:x16(0x00000000)
    TEST_RR_OP(sha512sig0h, x1, x31, x16, 0x00010600, 0x20000, 0x0, x4, 12, x5)

inst_94:
    // Test 94:  Test with marching zeros/ones
    // result rd:x2(0x00020c00), rs1:x30(0x00040000), rs2:x15(0x00000000)
    TEST_RR_OP(sha512sig0h, x2, x30, x15, 0x00020c00, 0x40000, 0x0, x4, 16, x5)

    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_20_0)


inst_95:
    // Test 95:  Test with marching zeros/ones
    // result rd:x3(0x00041800), rs1:x29(0x00080000), rs2:x14(0x00000000)
    TEST_RR_OP(sha512sig0h, x3, x29, x14, 0x00041800, 0x80000, 0x0, x1, 0, x2)

inst_96:
    // Test 96:  Test with marching zeros/ones
    // result rd:x4(0x00083000), rs1:x28(0x00100000), rs2:x13(0x00000000)
    TEST_RR_OP(sha512sig0h, x4, x28, x13, 0x00083000, 0x100000, 0x0, x1, 4, x2)

inst_97:
    // Test 97:  Test with marching zeros/ones
    // result rd:x5(0x00106000), rs1:x27(0x00200000), rs2:x12(0x00000000)
    TEST_RR_OP(sha512sig0h, x5, x27, x12, 0x00106000, 0x200000, 0x0, x1, 8, x2)

inst_98:
    // Test 98:  Test with marching zeros/ones
    // result rd:x6(0x0020c000), rs1:x26(0x00400000), rs2:x11(0x00000000)
    TEST_RR_OP(sha512sig0h, x6, x26, x11, 0x0020c000, 0x400000, 0x0, x1, 12, x2)

inst_99:
    // Test 99:  Test with marching zeros/ones
    // result rd:x7(0x00418000), rs1:x25(0x00800000), rs2:x10(0x00000000)
    TEST_RR_OP(sha512sig0h, x7, x25, x10, 0x00418000, 0x800000, 0x0, x1, 16, x2)

    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_21_0)


inst_100:
    // Test 100:  Test with marching zeros/ones
    // result rd:x8(0x00830000), rs1:x24(0x01000000), rs2:x9(0x00000000)
    TEST_RR_OP(sha512sig0h, x8, x24, x9, 0x00830000, 0x1000000, 0x0, x1, 0, x2)

inst_101:
    // Test 101:  Test with marching zeros/ones
    // result rd:x9(0x01060000), rs1:x23(0x02000000), rs2:x8(0x00000000)
    TEST_RR_OP(sha512sig0h, x9, x23, x8, 0x01060000, 0x2000000, 0x0, x1, 4, x2)

inst_102:
    // Test 102:  Test with marching zeros/ones
    // result rd:x10(0x020c0000), rs1:x22(0x04000000), rs2:x7(0x00000000)
    TEST_RR_OP(sha512sig0h, x10, x22, x7, 0x020c0000, 0x4000000, 0x0, x1, 8, x2)

inst_103:
    // Test 103:  Test with marching zeros/ones
    // result rd:x11(0x04180000), rs1:x21(0x08000000), rs2:x6(0x00000000)
    TEST_RR_OP(sha512sig0h, x11, x21, x6, 0x04180000, 0x8000000, 0x0, x1, 12, x2)

inst_104:
    // Test 104:  Test with marching zeros/ones
    // result rd:x12(0x08300000), rs1:x20(0x10000000), rs2:x5(0x00000000)
    TEST_RR_OP(sha512sig0h, x12, x20, x5, 0x08300000, 0x10000000, 0x0, x1, 16, x2)

    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x5,signature_22_0)


inst_105:
    // Test 105:  Test with marching zeros/ones
    // result rd:x13(0x10600000), rs1:x19(0x20000000), rs2:x4(0x00000000)
    TEST_RR_OP(sha512sig0h, x13, x19, x4, 0x10600000, 0x20000000, 0x0, x5, 0, x6)

inst_106:
    // Test 106:  Test with marching zeros/ones
    // result rd:x14(0x20c00000), rs1:x18(0x40000000), rs2:x3(0x00000000)
    TEST_RR_OP(sha512sig0h, x14, x18, x3, 0x20c00000, 0x40000000, 0x0, x5, 4, x6)

inst_107:
    // Test 107:  Test with marching zeros/ones
    // result rd:x15(0x41800000), rs1:x17(0x80000000), rs2:x2(0x00000000)
    TEST_RR_OP(sha512sig0h, x15, x17, x2, 0x41800000, 0x80000000, 0x0, x5, 8, x6)

inst_108:
    // Test 108:  Test with marching zeros/ones
    // result rd:x16(0x00000000), rs1:x16(0x00000000), rs2:x1(0x00000000)
    TEST_RR_OP(sha512sig0h, x16, x16, x1, 0x00000000, 0x0, 0x0, x5, 12, x6)

inst_109:
    // Test 109:  Test with marching zeros/ones
    // result rd:x17(0x7effffff), rs1:x15(0xfffffffe), rs2:x31(0x00000000)
    TEST_RR_OP(sha512sig0h, x17, x15, x31, 0x7effffff, 0xfffffffe, 0x0, x5, 16, x6)

    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_23_0)


inst_110:
    // Test 110:  Test with marching zeros/ones
    // result rd:x18(0x7efffffe), rs1:x14(0xfffffffd), rs2:x30(0x00000000)
    TEST_RR_OP(sha512sig0h, x18, x14, x30, 0x7efffffe, 0xfffffffd, 0x0, x1, 0, x2)

inst_111:
    // Test 111:  Test with marching zeros/ones
    // result rd:x19(0x7efffffd), rs1:x13(0xfffffffb), rs2:x29(0x00000000)
    TEST_RR_OP(sha512sig0h, x19, x13, x29, 0x7efffffd, 0xfffffffb, 0x0, x1, 4, x2)

inst_112:
    // Test 112:  Test with marching zeros/ones
    // result rd:x20(0x7efffffb), rs1:x12(0xfffffff7), rs2:x28(0x00000000)
    TEST_RR_OP(sha512sig0h, x20, x12, x28, 0x7efffffb, 0xfffffff7, 0x0, x1, 8, x2)

inst_113:
    // Test 113:  Test with marching zeros/ones
    // result rd:x21(0x7efffff7), rs1:x11(0xffffffef), rs2:x27(0x00000000)
    TEST_RR_OP(sha512sig0h, x21, x11, x27, 0x7efffff7, 0xffffffef, 0x0, x1, 12, x2)

inst_114:
    // Test 114:  Test with marching zeros/ones
    // result rd:x22(0x7effffef), rs1:x10(0xffffffdf), rs2:x26(0x00000000)
    TEST_RR_OP(sha512sig0h, x22, x10, x26, 0x7effffef, 0xffffffdf, 0x0, x1, 16, x2)

    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_24_0)


inst_115:
    // Test 115:  Test with marching zeros/ones
    // result rd:x23(0x7effffdf), rs1:x9(0xffffffbf), rs2:x25(0x00000000)
    TEST_RR_OP(sha512sig0h, x23, x9, x25, 0x7effffdf, 0xffffffbf, 0x0, x1, 0, x2)

inst_116:
    // Test 116:  Test with marching zeros/ones
    // result rd:x24(0x7effffbe), rs1:x8(0xffffff7f), rs2:x24(0x00000000)
    TEST_RR_OP(sha512sig0h, x24, x8, x24, 0x7effffbe, 0xffffff7f, 0x0, x1, 4, x2)

inst_117:
    // Test 117:  Test with marching zeros/ones
    // result rd:x25(0x7effff7c), rs1:x7(0xfffffeff), rs2:x23(0x00000000)
    TEST_RR_OP(sha512sig0h, x25, x7, x23, 0x7effff7c, 0xfffffeff, 0x0, x1, 8, x2)

inst_118:
    // Test 118:  Test with marching zeros/ones
    // result rd:x26(0x7efffef9), rs1:x6(0xfffffdff), rs2:x22(0x00000000)
    TEST_RR_OP(sha512sig0h, x26, x6, x22, 0x7efffef9, 0xfffffdff, 0x0, x1, 12, x2)

inst_119:
    // Test 119:  Test with marching zeros/ones
    // result rd:x27(0x7efffdf3), rs1:x5(0xfffffbff), rs2:x21(0x00000000)
    TEST_RR_OP(sha512sig0h, x27, x5, x21, 0x7efffdf3, 0xfffffbff, 0x0, x1, 16, x2)

    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x5,signature_25_0)


inst_120:
    // Test 120:  Test with marching zeros/ones
    // result rd:x28(0x7efffbe7), rs1:x4(0xfffff7ff), rs2:x20(0x00000000)
    TEST_RR_OP(sha512sig0h, x28, x4, x20, 0x7efffbe7, 0xfffff7ff, 0x0, x5, 0, x6)

inst_121:
    // Test 121:  Test with marching zeros/ones
    // result rd:x29(0x7efff7cf), rs1:x3(0xffffefff), rs2:x19(0x00000000)
    TEST_RR_OP(sha512sig0h, x29, x3, x19, 0x7efff7cf, 0xffffefff, 0x0, x5, 4, x6)

inst_122:
    // Test 122:  Test with marching zeros/ones
    // result rd:x30(0x7effef9f), rs1:x2(0xffffdfff), rs2:x18(0x00000000)
    TEST_RR_OP(sha512sig0h, x30, x2, x18, 0x7effef9f, 0xffffdfff, 0x0, x5, 8, x6)

inst_123:
    // Test 123:  Test with marching zeros/ones
    // result rd:x31(0x7effdf3f), rs1:x1(0xffffbfff), rs2:x17(0x00000000)
    TEST_RR_OP(sha512sig0h, x31, x1, x17, 0x7effdf3f, 0xffffbfff, 0x0, x5, 12, x6)

inst_124:
    // Test 124:  Test with marching zeros/ones
    // result rd:x1(0x7effbe7f), rs1:x31(0xffff7fff), rs2:x16(0x00000000)
    TEST_RR_OP(sha512sig0h, x1, x31, x16, 0x7effbe7f, 0xffff7fff, 0x0, x5, 16, x6)

    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_26_0)


inst_125:
    // Test 125:  Test with marching zeros/ones
    // result rd:x2(0x7eff7cff), rs1:x30(0xfffeffff), rs2:x15(0x00000000)
    TEST_RR_OP(sha512sig0h, x2, x30, x15, 0x7eff7cff, 0xfffeffff, 0x0, x1, 0, x7)

inst_126:
    // Test 126:  Test with marching zeros/ones
    // result rd:x3(0x7efef9ff), rs1:x29(0xfffdffff), rs2:x14(0x00000000)
    TEST_RR_OP(sha512sig0h, x3, x29, x14, 0x7efef9ff, 0xfffdffff, 0x0, x1, 4, x7)

inst_127:
    // Test 127:  Test with marching zeros/ones
    // result rd:x4(0x7efdf3ff), rs1:x28(0xfffbffff), rs2:x13(0x00000000)
    TEST_RR_OP(sha512sig0h, x4, x28, x13, 0x7efdf3ff, 0xfffbffff, 0x0, x1, 8, x7)

inst_128:
    // Test 128:  Test with marching zeros/ones
    // result rd:x5(0x7efbe7ff), rs1:x27(0xfff7ffff), rs2:x12(0x00000000)
    TEST_RR_OP(sha512sig0h, x5, x27, x12, 0x7efbe7ff, 0xfff7ffff, 0x0, x1, 12, x7)

inst_129:
    // Test 129:  Test with marching zeros/ones
    // result rd:x6(0x7ef7cfff), rs1:x26(0xffefffff), rs2:x11(0x00000000)
    TEST_RR_OP(sha512sig0h, x6, x26, x11, 0x7ef7cfff, 0xffefffff, 0x0, x1, 16, x7)

    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_27_0)


inst_130:
    // Test 130:  Test with marching zeros/ones
    // result rd:x7(0x7eef9fff), rs1:x25(0xffdfffff), rs2:x10(0x00000000)
    TEST_RR_OP(sha512sig0h, x7, x25, x10, 0x7eef9fff, 0xffdfffff, 0x0, x1, 0, x2)

inst_131:
    // Test 131:  Test with marching zeros/ones
    // result rd:x8(0x7edf3fff), rs1:x24(0xffbfffff), rs2:x9(0x00000000)
    TEST_RR_OP(sha512sig0h, x8, x24, x9, 0x7edf3fff, 0xffbfffff, 0x0, x1, 4, x2)

inst_132:
    // Test 132:  Test with marching zeros/ones
    // result rd:x9(0x7ebe7fff), rs1:x23(0xff7fffff), rs2:x8(0x00000000)
    TEST_RR_OP(sha512sig0h, x9, x23, x8, 0x7ebe7fff, 0xff7fffff, 0x0, x1, 8, x2)

inst_133:
    // Test 133:  Test with marching zeros/ones
    // result rd:x10(0x7e7cffff), rs1:x22(0xfeffffff), rs2:x7(0x00000000)
    TEST_RR_OP(sha512sig0h, x10, x22, x7, 0x7e7cffff, 0xfeffffff, 0x0, x1, 12, x2)

inst_134:
    // Test 134:  Test with marching zeros/ones
    // result rd:x11(0x7ff9ffff), rs1:x21(0xfdffffff), rs2:x6(0x00000000)
    TEST_RR_OP(sha512sig0h, x11, x21, x6, 0x7ff9ffff, 0xfdffffff, 0x0, x1, 16, x2)

    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x6,signature_28_0)


inst_135:
    // Test 135:  Test with marching zeros/ones
    // result rd:x12(0x7cf3ffff), rs1:x20(0xfbffffff), rs2:x5(0x00000000)
    TEST_RR_OP(sha512sig0h, x12, x20, x5, 0x7cf3ffff, 0xfbffffff, 0x0, x6, 0, x7)

inst_136:
    // Test 136:  Test with marching zeros/ones
    // result rd:x13(0x7ae7ffff), rs1:x19(0xf7ffffff), rs2:x4(0x00000000)
    TEST_RR_OP(sha512sig0h, x13, x19, x4, 0x7ae7ffff, 0xf7ffffff, 0x0, x6, 4, x7)

inst_137:
    // Test 137:  Test with marching zeros/ones
    // result rd:x14(0x76cfffff), rs1:x18(0xefffffff), rs2:x3(0x00000000)
    TEST_RR_OP(sha512sig0h, x14, x18, x3, 0x76cfffff, 0xefffffff, 0x0, x6, 8, x7)

inst_138:
    // Test 138:  Test with marching zeros/ones
    // result rd:x15(0x6e9fffff), rs1:x17(0xdfffffff), rs2:x2(0x00000000)
    TEST_RR_OP(sha512sig0h, x15, x17, x2, 0x6e9fffff, 0xdfffffff, 0x0, x6, 12, x7)

inst_139:
    // Test 139:  Test with marching zeros/ones
    // result rd:x16(0x5e3fffff), rs1:x16(0xbfffffff), rs2:x1(0x00000000)
    TEST_RR_OP(sha512sig0h, x16, x16, x1, 0x5e3fffff, 0xbfffffff, 0x0, x6, 16, x7)

    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_29_0)


inst_140:
    // Test 140:  Test with marching zeros/ones
    // result rd:x17(0x3f7fffff), rs1:x15(0x7fffffff), rs2:x31(0x00000000)
    TEST_RR_OP(sha512sig0h, x17, x15, x31, 0x3f7fffff, 0x7fffffff, 0x0, x1, 0, x2)

inst_141:
    // Test 141:  Test with marching zeros/ones
    // result rd:x18(0x7effffff), rs1:x14(0xffffffff), rs2:x30(0x00000000)
    TEST_RR_OP(sha512sig0h, x18, x14, x30, 0x7effffff, 0xffffffff, 0x0, x1, 4, x2)

inst_142:
    // Test 142:  Test with rs1 == rs2
    // result rd:x19(0xaa3bca45), rs1:x29(0xadea5195), rs2:x29(0x121bcc23)
    TEST_RR_OP(sha512sig0h, x19, x29, x29, 0xaa3bca45, 0xadea5195, 0x121bcc23, x1, 8, x2)

inst_143:
    // Test 143:  Test with rd == x0
    // result rd:x0(0x00000000), rs1:x12(0xd2ffbec1), rs2:x28(0xa47d105b)
    TEST_RR_OP(sha512sig0h, x0, x12, x28, 0x00000000, 0xd2ffbec1, 0xa47d105b, x1, 12, x2)

inst_144:
    // Test 144:  Test with rs2 == x0
    // result rd:x21(0x5589f6a4), rs1:x11(0xa8e1a8bb), rs2:x0(0x707af2c0)
    TEST_RR_OP(sha512sig0h, x21, x11, x0, 0x5589f6a4, 0xa8e1a8bb, 0x707af2c0, x1, 16, x2)

    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha512sig0h)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha512sig0h)

	RVTEST_SIGBASE(x1,signature_30_0)


inst_145:
    // Test 145:  Test with rs1 == x0
    // result rd:x22(0x43000000), rs1:x0(0x48c99fcb), rs2:x26(0xe19bfbc3)
    TEST_RR_OP(sha512sig0h, x22, x0, x26, 0x43000000, 0x48c99fcb, 0xe19bfbc3, x1, 0, x2)
	
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

