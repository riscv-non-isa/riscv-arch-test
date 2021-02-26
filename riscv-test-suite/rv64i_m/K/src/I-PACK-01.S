// RISC-V Architectural Validation Test I-PACK-01
//
#
# Copyright (c) 2021 Imperas Software Ltd., www.imperas.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
# either express or implied.
#
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

//
// Specification: K Crypto/Scalar
// Description: Testing instruction 'pack'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV64IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1



    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x6,signature_1_0)

 
    # Testcase 0:  rs1:x31(0x10fd3dedadea5195), rs2:x16(0xdf7f3844121bcc23), result rd:x1(0x121bcc23adea5195)
inst_0:
    TEST_RR_OP(pack, x1, x31, x16, 0x121bcc23adea5195, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x121bcc23adea5195) 
    
 
    # Testcase 1:  rs1:x30(0xbd295ce2d2ffbec1), rs2:x15(0xf5adb41aa47d105b), result rd:x2(0xa47d105bd2ffbec1)
inst_1:
    TEST_RR_OP(pack, x2, x30, x15, 0xa47d105bd2ffbec1, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0xa47d105bd2ffbec1) 
    
 
    # Testcase 2:  rs1:x29(0xc9649f05a8e1a8bb), rs2:x14(0x82f6747f707af2c0), result rd:x3(0x707af2c0a8e1a8bb)
inst_2:
    TEST_RR_OP(pack, x3, x29, x14, 0x707af2c0a8e1a8bb, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x707af2c0a8e1a8bb) 
    
 
    # Testcase 3:  rs1:x28(0x3541291848c99fcb), rs2:x13(0x73a92fd4e19bfbc3), result rd:x4(0xe19bfbc348c99fcb)
inst_3:
    TEST_RR_OP(pack, x4, x28, x13, 0xe19bfbc348c99fcb, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xe19bfbc348c99fcb) 
    
 
    # Testcase 4:  rs1:x27(0x10a24740461d524f), rs2:x12(0x546b0e54528a10af), result rd:x5(0x528a10af461d524f)
inst_4:
    TEST_RR_OP(pack, x5, x27, x12, 0x528a10af461d524f, 0x10a24740461d524f, 0x546b0e54528a10af, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x528a10af461d524f) 
    





    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_2_0)

 
    # Testcase 5:  rs1:x26(0x546b0e54528a10af), rs2:x11(0x10a24740461d524f), result rd:x6(0x461d524f528a10af)
inst_5:
    TEST_RR_OP(pack, x6, x26, x11, 0x461d524f528a10af, 0x546b0e54528a10af, 0x10a24740461d524f, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x461d524f528a10af) 
    
 
    # Testcase 6:  rs1:x25(0x73a92fd4e19bfbc3), rs2:x10(0x3541291848c99fcb), result rd:x7(0x48c99fcbe19bfbc3)
inst_6:
    TEST_RR_OP(pack, x7, x25, x10, 0x48c99fcbe19bfbc3, 0x73a92fd4e19bfbc3, 0x3541291848c99fcb, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x48c99fcbe19bfbc3) 
    
 
    # Testcase 7:  rs1:x24(0x82f6747f707af2c0), rs2:x9(0xc9649f05a8e1a8bb), result rd:x8(0xa8e1a8bb707af2c0)
inst_7:
    TEST_RR_OP(pack, x8, x24, x9, 0xa8e1a8bb707af2c0, 0x82f6747f707af2c0, 0xc9649f05a8e1a8bb, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xa8e1a8bb707af2c0) 
    
 
    # Testcase 8:  rs1:x23(0xf5adb41aa47d105b), rs2:x8(0xbd295ce2d2ffbec1), result rd:x9(0xd2ffbec1a47d105b)
inst_8:
    TEST_RR_OP(pack, x9, x23, x8, 0xd2ffbec1a47d105b, 0xf5adb41aa47d105b, 0xbd295ce2d2ffbec1, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xd2ffbec1a47d105b) 
    
 
    # Testcase 9:  rs1:x22(0xdf7f3844121bcc23), rs2:x7(0x10fd3dedadea5195), result rd:x10(0xadea5195121bcc23)
inst_9:
    TEST_RR_OP(pack, x10, x22, x7, 0xadea5195121bcc23, 0xdf7f3844121bcc23, 0x10fd3dedadea5195, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xadea5195121bcc23) 
    





    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_3_0)

 
    # Testcase 10:  rs1:x21(0x0000000000000001), rs2:x6(0xffffffffffffffff), result rd:x11(0xffffffff00000001)
inst_10:
    TEST_RR_OP(pack, x11, x21, x6, 0xffffffff00000001, 0x1, 0xffffffffffffffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0xffffffff00000001) 
    
 
    # Testcase 11:  rs1:x20(0x0000000000000002), rs2:x5(0x7fffffffffffffff), result rd:x12(0xffffffff00000002)
inst_11:
    TEST_RR_OP(pack, x12, x20, x5, 0xffffffff00000002, 0x2, 0x7fffffffffffffff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0xffffffff00000002) 
    
 
    # Testcase 12:  rs1:x19(0x0000000000000004), rs2:x4(0xbfffffffffffffff), result rd:x13(0xffffffff00000004)
inst_12:
    TEST_RR_OP(pack, x13, x19, x4, 0xffffffff00000004, 0x4, 0xbfffffffffffffff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0xffffffff00000004) 
    
 
    # Testcase 13:  rs1:x18(0x0000000000000008), rs2:x3(0xdfffffffffffffff), result rd:x14(0xffffffff00000008)
inst_13:
    TEST_RR_OP(pack, x14, x18, x3, 0xffffffff00000008, 0x8, 0xdfffffffffffffff, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0xffffffff00000008) 
    
 
    # Testcase 14:  rs1:x17(0x0000000000000010), rs2:x2(0xefffffffffffffff), result rd:x15(0xffffffff00000010)
inst_14:
    TEST_RR_OP(pack, x15, x17, x2, 0xffffffff00000010, 0x10, 0xefffffffffffffff, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0xffffffff00000010) 
    





    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x2,signature_4_0)

 
    # Testcase 15:  rs1:x16(0x0000000000000020), rs2:x1(0xf7ffffffffffffff), result rd:x16(0xffffffff00000020)
inst_15:
    TEST_RR_OP(pack, x16, x16, x1, 0xffffffff00000020, 0x20, 0xf7ffffffffffffff, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0xffffffff00000020) 
    
 
    # Testcase 16:  rs1:x15(0x0000000000000040), rs2:x31(0xfbffffffffffffff), result rd:x17(0xffffffff00000040)
inst_16:
    TEST_RR_OP(pack, x17, x15, x31, 0xffffffff00000040, 0x40, 0xfbffffffffffffff, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0xffffffff00000040) 
    
 
    # Testcase 17:  rs1:x14(0x0000000000000080), rs2:x30(0xfdffffffffffffff), result rd:x18(0xffffffff00000080)
inst_17:
    TEST_RR_OP(pack, x18, x14, x30, 0xffffffff00000080, 0x80, 0xfdffffffffffffff, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0xffffffff00000080) 
    
 
    # Testcase 18:  rs1:x13(0x0000000000000100), rs2:x29(0xfeffffffffffffff), result rd:x19(0xffffffff00000100)
inst_18:
    TEST_RR_OP(pack, x19, x13, x29, 0xffffffff00000100, 0x100, 0xfeffffffffffffff, x2, 24, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0xffffffff00000100) 
    
 
    # Testcase 19:  rs1:x12(0x0000000000000200), rs2:x28(0xff7fffffffffffff), result rd:x20(0xffffffff00000200)
inst_19:
    TEST_RR_OP(pack, x20, x12, x28, 0xffffffff00000200, 0x200, 0xff7fffffffffffff, x2, 32, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0xffffffff00000200) 
    





    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_5_0)

 
    # Testcase 20:  rs1:x11(0x0000000000000400), rs2:x27(0xffbfffffffffffff), result rd:x21(0xffffffff00000400)
inst_20:
    TEST_RR_OP(pack, x21, x11, x27, 0xffffffff00000400, 0x400, 0xffbfffffffffffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xffffffff00000400) 
    
 
    # Testcase 21:  rs1:x10(0x0000000000000800), rs2:x26(0xffdfffffffffffff), result rd:x22(0xffffffff00000800)
inst_21:
    TEST_RR_OP(pack, x22, x10, x26, 0xffffffff00000800, 0x800, 0xffdfffffffffffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffffffff00000800) 
    
 
    # Testcase 22:  rs1:x9(0x0000000000001000), rs2:x25(0xffefffffffffffff), result rd:x23(0xffffffff00001000)
inst_22:
    TEST_RR_OP(pack, x23, x9, x25, 0xffffffff00001000, 0x1000, 0xffefffffffffffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xffffffff00001000) 
    
 
    # Testcase 23:  rs1:x8(0x0000000000002000), rs2:x24(0xfff7ffffffffffff), result rd:x24(0xffffffff00002000)
inst_23:
    TEST_RR_OP(pack, x24, x8, x24, 0xffffffff00002000, 0x2000, 0xfff7ffffffffffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffffffff00002000) 
    
 
    # Testcase 24:  rs1:x7(0x0000000000004000), rs2:x23(0xfffbffffffffffff), result rd:x25(0xffffffff00004000)
inst_24:
    TEST_RR_OP(pack, x25, x7, x23, 0xffffffff00004000, 0x4000, 0xfffbffffffffffff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffffffff00004000) 
    





    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_6_0)

 
    # Testcase 25:  rs1:x6(0x0000000000008000), rs2:x22(0xfffdffffffffffff), result rd:x26(0xffffffff00008000)
inst_25:
    TEST_RR_OP(pack, x26, x6, x22, 0xffffffff00008000, 0x8000, 0xfffdffffffffffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0xffffffff00008000) 
    
 
    # Testcase 26:  rs1:x5(0x0000000000010000), rs2:x21(0xfffeffffffffffff), result rd:x27(0xffffffff00010000)
inst_26:
    TEST_RR_OP(pack, x27, x5, x21, 0xffffffff00010000, 0x10000, 0xfffeffffffffffff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0xffffffff00010000) 
    
 
    # Testcase 27:  rs1:x4(0x0000000000020000), rs2:x20(0xffff7fffffffffff), result rd:x28(0xffffffff00020000)
inst_27:
    TEST_RR_OP(pack, x28, x4, x20, 0xffffffff00020000, 0x20000, 0xffff7fffffffffff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0xffffffff00020000) 
    
 
    # Testcase 28:  rs1:x3(0x0000000000040000), rs2:x19(0xffffbfffffffffff), result rd:x29(0xffffffff00040000)
inst_28:
    TEST_RR_OP(pack, x29, x3, x19, 0xffffffff00040000, 0x40000, 0xffffbfffffffffff, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0xffffffff00040000) 
    
 
    # Testcase 29:  rs1:x2(0x0000000000080000), rs2:x18(0xffffdfffffffffff), result rd:x30(0xffffffff00080000)
inst_29:
    TEST_RR_OP(pack, x30, x2, x18, 0xffffffff00080000, 0x80000, 0xffffdfffffffffff, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0xffffffff00080000) 
    





    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x5,signature_7_0)

 
    # Testcase 30:  rs1:x1(0x0000000000100000), rs2:x17(0xffffefffffffffff), result rd:x31(0xffffffff00100000)
inst_30:
    TEST_RR_OP(pack, x31, x1, x17, 0xffffffff00100000, 0x100000, 0xffffefffffffffff, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0xffffffff00100000) 
    
 
    # Testcase 31:  rs1:x31(0x0000000000200000), rs2:x16(0xfffff7ffffffffff), result rd:x1(0xffffffff00200000)
inst_31:
    TEST_RR_OP(pack, x1, x31, x16, 0xffffffff00200000, 0x200000, 0xfffff7ffffffffff, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0xffffffff00200000) 
    
 
    # Testcase 32:  rs1:x30(0x0000000000400000), rs2:x15(0xfffffbffffffffff), result rd:x2(0xffffffff00400000)
inst_32:
    TEST_RR_OP(pack, x2, x30, x15, 0xffffffff00400000, 0x400000, 0xfffffbffffffffff, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0xffffffff00400000) 
    
 
    # Testcase 33:  rs1:x29(0x0000000000800000), rs2:x14(0xfffffdffffffffff), result rd:x3(0xffffffff00800000)
inst_33:
    TEST_RR_OP(pack, x3, x29, x14, 0xffffffff00800000, 0x800000, 0xfffffdffffffffff, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0xffffffff00800000) 
    
 
    # Testcase 34:  rs1:x28(0x0000000001000000), rs2:x13(0xfffffeffffffffff), result rd:x4(0xffffffff01000000)
inst_34:
    TEST_RR_OP(pack, x4, x28, x13, 0xffffffff01000000, 0x1000000, 0xfffffeffffffffff, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0xffffffff01000000) 
    





    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_8_0)

 
    # Testcase 35:  rs1:x27(0x0000000002000000), rs2:x12(0xffffff7fffffffff), result rd:x5(0xffffffff02000000)
inst_35:
    TEST_RR_OP(pack, x5, x27, x12, 0xffffffff02000000, 0x2000000, 0xffffff7fffffffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xffffffff02000000) 
    
 
    # Testcase 36:  rs1:x26(0x0000000004000000), rs2:x11(0xffffffbfffffffff), result rd:x6(0xffffffff04000000)
inst_36:
    TEST_RR_OP(pack, x6, x26, x11, 0xffffffff04000000, 0x4000000, 0xffffffbfffffffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xffffffff04000000) 
    
 
    # Testcase 37:  rs1:x25(0x0000000008000000), rs2:x10(0xffffffdfffffffff), result rd:x7(0xffffffff08000000)
inst_37:
    TEST_RR_OP(pack, x7, x25, x10, 0xffffffff08000000, 0x8000000, 0xffffffdfffffffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xffffffff08000000) 
    
 
    # Testcase 38:  rs1:x24(0x0000000010000000), rs2:x9(0xffffffefffffffff), result rd:x8(0xffffffff10000000)
inst_38:
    TEST_RR_OP(pack, x8, x24, x9, 0xffffffff10000000, 0x10000000, 0xffffffefffffffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffffffff10000000) 
    
 
    # Testcase 39:  rs1:x23(0x0000000020000000), rs2:x8(0xfffffff7ffffffff), result rd:x9(0xffffffff20000000)
inst_39:
    TEST_RR_OP(pack, x9, x23, x8, 0xffffffff20000000, 0x20000000, 0xfffffff7ffffffff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xffffffff20000000) 
    





    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_9_0)

 
    # Testcase 40:  rs1:x22(0x0000000040000000), rs2:x7(0xfffffffbffffffff), result rd:x10(0xffffffff40000000)
inst_40:
    TEST_RR_OP(pack, x10, x22, x7, 0xffffffff40000000, 0x40000000, 0xfffffffbffffffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffffff40000000) 
    
 
    # Testcase 41:  rs1:x21(0x0000000080000000), rs2:x6(0xfffffffdffffffff), result rd:x11(0xffffffff80000000)
inst_41:
    TEST_RR_OP(pack, x11, x21, x6, 0xffffffff80000000, 0x80000000, 0xfffffffdffffffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffffffff80000000) 
    
 
    # Testcase 42:  rs1:x20(0x0000000100000000), rs2:x5(0xfffffffeffffffff), result rd:x12(0xffffffff00000000)
inst_42:
    TEST_RR_OP(pack, x12, x20, x5, 0xffffffff00000000, 0x100000000, 0xfffffffeffffffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xffffffff00000000) 
    
 
    # Testcase 43:  rs1:x19(0x0000000200000000), rs2:x4(0xffffffff7fffffff), result rd:x13(0x7fffffff00000000)
inst_43:
    TEST_RR_OP(pack, x13, x19, x4, 0x7fffffff00000000, 0x200000000, 0xffffffff7fffffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x7fffffff00000000) 
    
 
    # Testcase 44:  rs1:x18(0x0000000400000000), rs2:x3(0xffffffffbfffffff), result rd:x14(0xbfffffff00000000)
inst_44:
    TEST_RR_OP(pack, x14, x18, x3, 0xbfffffff00000000, 0x400000000, 0xffffffffbfffffff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0xbfffffff00000000) 
    





    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x3,signature_10_0)

 
    # Testcase 45:  rs1:x17(0x0000000800000000), rs2:x2(0xffffffffdfffffff), result rd:x15(0xdfffffff00000000)
inst_45:
    TEST_RR_OP(pack, x15, x17, x2, 0xdfffffff00000000, 0x800000000, 0xffffffffdfffffff, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0xdfffffff00000000) 
    
 
    # Testcase 46:  rs1:x16(0x0000001000000000), rs2:x1(0xffffffffefffffff), result rd:x16(0xefffffff00000000)
inst_46:
    TEST_RR_OP(pack, x16, x16, x1, 0xefffffff00000000, 0x1000000000, 0xffffffffefffffff, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0xefffffff00000000) 
    
 
    # Testcase 47:  rs1:x15(0x0000002000000000), rs2:x31(0xfffffffff7ffffff), result rd:x17(0xf7ffffff00000000)
inst_47:
    TEST_RR_OP(pack, x17, x15, x31, 0xf7ffffff00000000, 0x2000000000, 0xfffffffff7ffffff, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0xf7ffffff00000000) 
    
 
    # Testcase 48:  rs1:x14(0x0000004000000000), rs2:x30(0xfffffffffbffffff), result rd:x18(0xfbffffff00000000)
inst_48:
    TEST_RR_OP(pack, x18, x14, x30, 0xfbffffff00000000, 0x4000000000, 0xfffffffffbffffff, x3, 24, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0xfbffffff00000000) 
    
 
    # Testcase 49:  rs1:x13(0x0000008000000000), rs2:x29(0xfffffffffdffffff), result rd:x19(0xfdffffff00000000)
inst_49:
    TEST_RR_OP(pack, x19, x13, x29, 0xfdffffff00000000, 0x8000000000, 0xfffffffffdffffff, x3, 32, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0xfdffffff00000000) 
    





    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_11_0)

 
    # Testcase 50:  rs1:x12(0x0000010000000000), rs2:x28(0xfffffffffeffffff), result rd:x20(0xfeffffff00000000)
inst_50:
    TEST_RR_OP(pack, x20, x12, x28, 0xfeffffff00000000, 0x10000000000, 0xfffffffffeffffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xfeffffff00000000) 
    
 
    # Testcase 51:  rs1:x11(0x0000020000000000), rs2:x27(0xffffffffff7fffff), result rd:x21(0xff7fffff00000000)
inst_51:
    TEST_RR_OP(pack, x21, x11, x27, 0xff7fffff00000000, 0x20000000000, 0xffffffffff7fffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xff7fffff00000000) 
    
 
    # Testcase 52:  rs1:x10(0x0000040000000000), rs2:x26(0xffffffffffbfffff), result rd:x22(0xffbfffff00000000)
inst_52:
    TEST_RR_OP(pack, x22, x10, x26, 0xffbfffff00000000, 0x40000000000, 0xffffffffffbfffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffbfffff00000000) 
    
 
    # Testcase 53:  rs1:x9(0x0000080000000000), rs2:x25(0xffffffffffdfffff), result rd:x23(0xffdfffff00000000)
inst_53:
    TEST_RR_OP(pack, x23, x9, x25, 0xffdfffff00000000, 0x80000000000, 0xffffffffffdfffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xffdfffff00000000) 
    
 
    # Testcase 54:  rs1:x8(0x0000100000000000), rs2:x24(0xffffffffffefffff), result rd:x24(0xffefffff00000000)
inst_54:
    TEST_RR_OP(pack, x24, x8, x24, 0xffefffff00000000, 0x100000000000, 0xffffffffffefffff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffefffff00000000) 
    





    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_12_0)

 
    # Testcase 55:  rs1:x7(0x0000200000000000), rs2:x23(0xfffffffffff7ffff), result rd:x25(0xfff7ffff00000000)
inst_55:
    TEST_RR_OP(pack, x25, x7, x23, 0xfff7ffff00000000, 0x200000000000, 0xfffffffffff7ffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xfff7ffff00000000) 
    
 
    # Testcase 56:  rs1:x6(0x0000400000000000), rs2:x22(0xfffffffffffbffff), result rd:x26(0xfffbffff00000000)
inst_56:
    TEST_RR_OP(pack, x26, x6, x22, 0xfffbffff00000000, 0x400000000000, 0xfffffffffffbffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xfffbffff00000000) 
    
 
    # Testcase 57:  rs1:x5(0x0000800000000000), rs2:x21(0xfffffffffffdffff), result rd:x27(0xfffdffff00000000)
inst_57:
    TEST_RR_OP(pack, x27, x5, x21, 0xfffdffff00000000, 0x800000000000, 0xfffffffffffdffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xfffdffff00000000) 
    
 
    # Testcase 58:  rs1:x4(0x0001000000000000), rs2:x20(0xfffffffffffeffff), result rd:x28(0xfffeffff00000000)
inst_58:
    TEST_RR_OP(pack, x28, x4, x20, 0xfffeffff00000000, 0x1000000000000, 0xfffffffffffeffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xfffeffff00000000) 
    
 
    # Testcase 59:  rs1:x3(0x0002000000000000), rs2:x19(0xffffffffffff7fff), result rd:x29(0xffff7fff00000000)
inst_59:
    TEST_RR_OP(pack, x29, x3, x19, 0xffff7fff00000000, 0x2000000000000, 0xffffffffffff7fff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0xffff7fff00000000) 
    





    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x4,signature_13_0)

 
    # Testcase 60:  rs1:x2(0x0004000000000000), rs2:x18(0xffffffffffffbfff), result rd:x30(0xffffbfff00000000)
inst_60:
    TEST_RR_OP(pack, x30, x2, x18, 0xffffbfff00000000, 0x4000000000000, 0xffffffffffffbfff, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xffffbfff00000000) 
    
 
    # Testcase 61:  rs1:x1(0x0008000000000000), rs2:x17(0xffffffffffffdfff), result rd:x31(0xffffdfff00000000)
inst_61:
    TEST_RR_OP(pack, x31, x1, x17, 0xffffdfff00000000, 0x8000000000000, 0xffffffffffffdfff, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xffffdfff00000000) 
    
 
    # Testcase 62:  rs1:x31(0x0010000000000000), rs2:x16(0xffffffffffffefff), result rd:x1(0xffffefff00000000)
inst_62:
    TEST_RR_OP(pack, x1, x31, x16, 0xffffefff00000000, 0x10000000000000, 0xffffffffffffefff, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xffffefff00000000) 
    
 
    # Testcase 63:  rs1:x30(0x0020000000000000), rs2:x15(0xfffffffffffff7ff), result rd:x2(0xfffff7ff00000000)
inst_63:
    TEST_RR_OP(pack, x2, x30, x15, 0xfffff7ff00000000, 0x20000000000000, 0xfffffffffffff7ff, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xfffff7ff00000000) 
    
 
    # Testcase 64:  rs1:x29(0x0040000000000000), rs2:x14(0xfffffffffffffbff), result rd:x3(0xfffffbff00000000)
inst_64:
    TEST_RR_OP(pack, x3, x29, x14, 0xfffffbff00000000, 0x40000000000000, 0xfffffffffffffbff, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0xfffffbff00000000) 
    





    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_14_0)

 
    # Testcase 65:  rs1:x28(0x0080000000000000), rs2:x13(0xfffffffffffffdff), result rd:x4(0xfffffdff00000000)
inst_65:
    TEST_RR_OP(pack, x4, x28, x13, 0xfffffdff00000000, 0x80000000000000, 0xfffffffffffffdff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xfffffdff00000000) 
    
 
    # Testcase 66:  rs1:x27(0x0100000000000000), rs2:x12(0xfffffffffffffeff), result rd:x5(0xfffffeff00000000)
inst_66:
    TEST_RR_OP(pack, x5, x27, x12, 0xfffffeff00000000, 0x100000000000000, 0xfffffffffffffeff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xfffffeff00000000) 
    
 
    # Testcase 67:  rs1:x26(0x0200000000000000), rs2:x11(0xffffffffffffff7f), result rd:x6(0xffffff7f00000000)
inst_67:
    TEST_RR_OP(pack, x6, x26, x11, 0xffffff7f00000000, 0x200000000000000, 0xffffffffffffff7f, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xffffff7f00000000) 
    
 
    # Testcase 68:  rs1:x25(0x0400000000000000), rs2:x10(0xffffffffffffffbf), result rd:x7(0xffffffbf00000000)
inst_68:
    TEST_RR_OP(pack, x7, x25, x10, 0xffffffbf00000000, 0x400000000000000, 0xffffffffffffffbf, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xffffffbf00000000) 
    
 
    # Testcase 69:  rs1:x24(0x0800000000000000), rs2:x9(0xffffffffffffffdf), result rd:x8(0xffffffdf00000000)
inst_69:
    TEST_RR_OP(pack, x8, x24, x9, 0xffffffdf00000000, 0x800000000000000, 0xffffffffffffffdf, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffffffdf00000000) 
    





    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_15_0)

 
    # Testcase 70:  rs1:x23(0x1000000000000000), rs2:x8(0xffffffffffffffef), result rd:x9(0xffffffef00000000)
inst_70:
    TEST_RR_OP(pack, x9, x23, x8, 0xffffffef00000000, 0x1000000000000000, 0xffffffffffffffef, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xffffffef00000000) 
    
 
    # Testcase 71:  rs1:x22(0x2000000000000000), rs2:x7(0xfffffffffffffff7), result rd:x10(0xfffffff700000000)
inst_71:
    TEST_RR_OP(pack, x10, x22, x7, 0xfffffff700000000, 0x2000000000000000, 0xfffffffffffffff7, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xfffffff700000000) 
    
 
    # Testcase 72:  rs1:x21(0x4000000000000000), rs2:x6(0xfffffffffffffffb), result rd:x11(0xfffffffb00000000)
inst_72:
    TEST_RR_OP(pack, x11, x21, x6, 0xfffffffb00000000, 0x4000000000000000, 0xfffffffffffffffb, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xfffffffb00000000) 
    
 
    # Testcase 73:  rs1:x20(0x8000000000000000), rs2:x5(0xfffffffffffffffd), result rd:x12(0xfffffffd00000000)
inst_73:
    TEST_RR_OP(pack, x12, x20, x5, 0xfffffffd00000000, 0x8000000000000000, 0xfffffffffffffffd, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xfffffffd00000000) 
    
 
    # Testcase 74:  rs1:x19(0x0000000000000000), rs2:x4(0xfffffffffffffffe), result rd:x13(0xfffffffe00000000)
inst_74:
    TEST_RR_OP(pack, x13, x19, x4, 0xfffffffe00000000, 0x0, 0xfffffffffffffffe, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xfffffffe00000000) 
    





    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x4,signature_16_0)

 
    # Testcase 75:  rs1:x18(0xfffffffffffffffe), rs2:x3(0x0000000000000000), result rd:x14(0x00000000fffffffe)
inst_75:
    TEST_RR_OP(pack, x14, x18, x3, 0x00000000fffffffe, 0xfffffffffffffffe, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0x00000000fffffffe) 
    
 
    # Testcase 76:  rs1:x17(0xfffffffffffffffd), rs2:x2(0x8000000000000000), result rd:x15(0x00000000fffffffd)
inst_76:
    TEST_RR_OP(pack, x15, x17, x2, 0x00000000fffffffd, 0xfffffffffffffffd, 0x8000000000000000, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x00000000fffffffd) 
    
 
    # Testcase 77:  rs1:x16(0xfffffffffffffffb), rs2:x1(0x4000000000000000), result rd:x16(0x00000000fffffffb)
inst_77:
    TEST_RR_OP(pack, x16, x16, x1, 0x00000000fffffffb, 0xfffffffffffffffb, 0x4000000000000000, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x00000000fffffffb) 
    
 
    # Testcase 78:  rs1:x15(0xfffffffffffffff7), rs2:x31(0x2000000000000000), result rd:x17(0x00000000fffffff7)
inst_78:
    TEST_RR_OP(pack, x17, x15, x31, 0x00000000fffffff7, 0xfffffffffffffff7, 0x2000000000000000, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x00000000fffffff7) 
    
 
    # Testcase 79:  rs1:x14(0xffffffffffffffef), rs2:x30(0x1000000000000000), result rd:x18(0x00000000ffffffef)
inst_79:
    TEST_RR_OP(pack, x18, x14, x30, 0x00000000ffffffef, 0xffffffffffffffef, 0x1000000000000000, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x00000000ffffffef) 
    





    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_17_0)

 
    # Testcase 80:  rs1:x13(0xffffffffffffffdf), rs2:x29(0x0800000000000000), result rd:x19(0x00000000ffffffdf)
inst_80:
    TEST_RR_OP(pack, x19, x13, x29, 0x00000000ffffffdf, 0xffffffffffffffdf, 0x800000000000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x00000000ffffffdf) 
    
 
    # Testcase 81:  rs1:x12(0xffffffffffffffbf), rs2:x28(0x0400000000000000), result rd:x20(0x00000000ffffffbf)
inst_81:
    TEST_RR_OP(pack, x20, x12, x28, 0x00000000ffffffbf, 0xffffffffffffffbf, 0x400000000000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00000000ffffffbf) 
    
 
    # Testcase 82:  rs1:x11(0xffffffffffffff7f), rs2:x27(0x0200000000000000), result rd:x21(0x00000000ffffff7f)
inst_82:
    TEST_RR_OP(pack, x21, x11, x27, 0x00000000ffffff7f, 0xffffffffffffff7f, 0x200000000000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000000ffffff7f) 
    
 
    # Testcase 83:  rs1:x10(0xfffffffffffffeff), rs2:x26(0x0100000000000000), result rd:x22(0x00000000fffffeff)
inst_83:
    TEST_RR_OP(pack, x22, x10, x26, 0x00000000fffffeff, 0xfffffffffffffeff, 0x100000000000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000fffffeff) 
    
 
    # Testcase 84:  rs1:x9(0xfffffffffffffdff), rs2:x25(0x0080000000000000), result rd:x23(0x00000000fffffdff)
inst_84:
    TEST_RR_OP(pack, x23, x9, x25, 0x00000000fffffdff, 0xfffffffffffffdff, 0x80000000000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000000fffffdff) 
    





    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_18_0)

 
    # Testcase 85:  rs1:x8(0xfffffffffffffbff), rs2:x24(0x0040000000000000), result rd:x24(0x00000000fffffbff)
inst_85:
    TEST_RR_OP(pack, x24, x8, x24, 0x00000000fffffbff, 0xfffffffffffffbff, 0x40000000000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00000000fffffbff) 
    
 
    # Testcase 86:  rs1:x7(0xfffffffffffff7ff), rs2:x23(0x0020000000000000), result rd:x25(0x00000000fffff7ff)
inst_86:
    TEST_RR_OP(pack, x25, x7, x23, 0x00000000fffff7ff, 0xfffffffffffff7ff, 0x20000000000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000000fffff7ff) 
    
 
    # Testcase 87:  rs1:x6(0xffffffffffffefff), rs2:x22(0x0010000000000000), result rd:x26(0x00000000ffffefff)
inst_87:
    TEST_RR_OP(pack, x26, x6, x22, 0x00000000ffffefff, 0xffffffffffffefff, 0x10000000000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000000ffffefff) 
    
 
    # Testcase 88:  rs1:x5(0xffffffffffffdfff), rs2:x21(0x0008000000000000), result rd:x27(0x00000000ffffdfff)
inst_88:
    TEST_RR_OP(pack, x27, x5, x21, 0x00000000ffffdfff, 0xffffffffffffdfff, 0x8000000000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00000000ffffdfff) 
    
 
    # Testcase 89:  rs1:x4(0xffffffffffffbfff), rs2:x20(0x0004000000000000), result rd:x28(0x00000000ffffbfff)
inst_89:
    TEST_RR_OP(pack, x28, x4, x20, 0x00000000ffffbfff, 0xffffffffffffbfff, 0x4000000000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x00000000ffffbfff) 
    





    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x4,signature_19_0)

 
    # Testcase 90:  rs1:x3(0xffffffffffff7fff), rs2:x19(0x0002000000000000), result rd:x29(0x00000000ffff7fff)
inst_90:
    TEST_RR_OP(pack, x29, x3, x19, 0x00000000ffff7fff, 0xffffffffffff7fff, 0x2000000000000, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x00000000ffff7fff) 
    
 
    # Testcase 91:  rs1:x2(0xfffffffffffeffff), rs2:x18(0x0001000000000000), result rd:x30(0x00000000fffeffff)
inst_91:
    TEST_RR_OP(pack, x30, x2, x18, 0x00000000fffeffff, 0xfffffffffffeffff, 0x1000000000000, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x00000000fffeffff) 
    
 
    # Testcase 92:  rs1:x1(0xfffffffffffdffff), rs2:x17(0x0000800000000000), result rd:x31(0x00000000fffdffff)
inst_92:
    TEST_RR_OP(pack, x31, x1, x17, 0x00000000fffdffff, 0xfffffffffffdffff, 0x800000000000, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x00000000fffdffff) 
    
 
    # Testcase 93:  rs1:x31(0xfffffffffffbffff), rs2:x16(0x0000400000000000), result rd:x1(0x00000000fffbffff)
inst_93:
    TEST_RR_OP(pack, x1, x31, x16, 0x00000000fffbffff, 0xfffffffffffbffff, 0x400000000000, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00000000fffbffff) 
    
 
    # Testcase 94:  rs1:x30(0xfffffffffff7ffff), rs2:x15(0x0000200000000000), result rd:x2(0x00000000fff7ffff)
inst_94:
    TEST_RR_OP(pack, x2, x30, x15, 0x00000000fff7ffff, 0xfffffffffff7ffff, 0x200000000000, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00000000fff7ffff) 
    





    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_20_0)

 
    # Testcase 95:  rs1:x29(0xffffffffffefffff), rs2:x14(0x0000100000000000), result rd:x3(0x00000000ffefffff)
inst_95:
    TEST_RR_OP(pack, x3, x29, x14, 0x00000000ffefffff, 0xffffffffffefffff, 0x100000000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x00000000ffefffff) 
    
 
    # Testcase 96:  rs1:x28(0xffffffffffdfffff), rs2:x13(0x0000080000000000), result rd:x4(0x00000000ffdfffff)
inst_96:
    TEST_RR_OP(pack, x4, x28, x13, 0x00000000ffdfffff, 0xffffffffffdfffff, 0x80000000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00000000ffdfffff) 
    
 
    # Testcase 97:  rs1:x27(0xffffffffffbfffff), rs2:x12(0x0000040000000000), result rd:x5(0x00000000ffbfffff)
inst_97:
    TEST_RR_OP(pack, x5, x27, x12, 0x00000000ffbfffff, 0xffffffffffbfffff, 0x40000000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00000000ffbfffff) 
    
 
    # Testcase 98:  rs1:x26(0xffffffffff7fffff), rs2:x11(0x0000020000000000), result rd:x6(0x00000000ff7fffff)
inst_98:
    TEST_RR_OP(pack, x6, x26, x11, 0x00000000ff7fffff, 0xffffffffff7fffff, 0x20000000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00000000ff7fffff) 
    
 
    # Testcase 99:  rs1:x25(0xfffffffffeffffff), rs2:x10(0x0000010000000000), result rd:x7(0x00000000feffffff)
inst_99:
    TEST_RR_OP(pack, x7, x25, x10, 0x00000000feffffff, 0xfffffffffeffffff, 0x10000000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000000feffffff) 
    





    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_21_0)

 
    # Testcase 100:  rs1:x24(0xfffffffffdffffff), rs2:x9(0x0000008000000000), result rd:x8(0x00000000fdffffff)
inst_100:
    TEST_RR_OP(pack, x8, x24, x9, 0x00000000fdffffff, 0xfffffffffdffffff, 0x8000000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000000fdffffff) 
    
 
    # Testcase 101:  rs1:x23(0xfffffffffbffffff), rs2:x8(0x0000004000000000), result rd:x9(0x00000000fbffffff)
inst_101:
    TEST_RR_OP(pack, x9, x23, x8, 0x00000000fbffffff, 0xfffffffffbffffff, 0x4000000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000000fbffffff) 
    
 
    # Testcase 102:  rs1:x22(0xfffffffff7ffffff), rs2:x7(0x0000002000000000), result rd:x10(0x00000000f7ffffff)
inst_102:
    TEST_RR_OP(pack, x10, x22, x7, 0x00000000f7ffffff, 0xfffffffff7ffffff, 0x2000000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000f7ffffff) 
    
 
    # Testcase 103:  rs1:x21(0xffffffffefffffff), rs2:x6(0x0000001000000000), result rd:x11(0x00000000efffffff)
inst_103:
    TEST_RR_OP(pack, x11, x21, x6, 0x00000000efffffff, 0xffffffffefffffff, 0x1000000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00000000efffffff) 
    
 
    # Testcase 104:  rs1:x20(0xffffffffdfffffff), rs2:x5(0x0000000800000000), result rd:x12(0x00000000dfffffff)
inst_104:
    TEST_RR_OP(pack, x12, x20, x5, 0x00000000dfffffff, 0xffffffffdfffffff, 0x800000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000dfffffff) 
    





    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x5,signature_22_0)

 
    # Testcase 105:  rs1:x19(0xffffffffbfffffff), rs2:x4(0x0000000400000000), result rd:x13(0x00000000bfffffff)
inst_105:
    TEST_RR_OP(pack, x13, x19, x4, 0x00000000bfffffff, 0xffffffffbfffffff, 0x400000000, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x00000000bfffffff) 
    
 
    # Testcase 106:  rs1:x18(0xffffffff7fffffff), rs2:x3(0x0000000200000000), result rd:x14(0x000000007fffffff)
inst_106:
    TEST_RR_OP(pack, x14, x18, x3, 0x000000007fffffff, 0xffffffff7fffffff, 0x200000000, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x000000007fffffff) 
    
 
    # Testcase 107:  rs1:x17(0xfffffffeffffffff), rs2:x2(0x0000000100000000), result rd:x15(0x00000000ffffffff)
inst_107:
    TEST_RR_OP(pack, x15, x17, x2, 0x00000000ffffffff, 0xfffffffeffffffff, 0x100000000, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x00000000ffffffff) 
    
 
    # Testcase 108:  rs1:x16(0xfffffffdffffffff), rs2:x1(0x0000000080000000), result rd:x16(0x80000000ffffffff)
inst_108:
    TEST_RR_OP(pack, x16, x16, x1, 0x80000000ffffffff, 0xfffffffdffffffff, 0x80000000, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x80000000ffffffff) 
    
 
    # Testcase 109:  rs1:x15(0xfffffffbffffffff), rs2:x31(0x0000000040000000), result rd:x17(0x40000000ffffffff)
inst_109:
    TEST_RR_OP(pack, x17, x15, x31, 0x40000000ffffffff, 0xfffffffbffffffff, 0x40000000, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0x40000000ffffffff) 
    





    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_23_0)

 
    # Testcase 110:  rs1:x14(0xfffffff7ffffffff), rs2:x30(0x0000000020000000), result rd:x18(0x20000000ffffffff)
inst_110:
    TEST_RR_OP(pack, x18, x14, x30, 0x20000000ffffffff, 0xfffffff7ffffffff, 0x20000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x20000000ffffffff) 
    
 
    # Testcase 111:  rs1:x13(0xffffffefffffffff), rs2:x29(0x0000000010000000), result rd:x19(0x10000000ffffffff)
inst_111:
    TEST_RR_OP(pack, x19, x13, x29, 0x10000000ffffffff, 0xffffffefffffffff, 0x10000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x10000000ffffffff) 
    
 
    # Testcase 112:  rs1:x12(0xffffffdfffffffff), rs2:x28(0x0000000008000000), result rd:x20(0x08000000ffffffff)
inst_112:
    TEST_RR_OP(pack, x20, x12, x28, 0x08000000ffffffff, 0xffffffdfffffffff, 0x8000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x08000000ffffffff) 
    
 
    # Testcase 113:  rs1:x11(0xffffffbfffffffff), rs2:x27(0x0000000004000000), result rd:x21(0x04000000ffffffff)
inst_113:
    TEST_RR_OP(pack, x21, x11, x27, 0x04000000ffffffff, 0xffffffbfffffffff, 0x4000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x04000000ffffffff) 
    
 
    # Testcase 114:  rs1:x10(0xffffff7fffffffff), rs2:x26(0x0000000002000000), result rd:x22(0x02000000ffffffff)
inst_114:
    TEST_RR_OP(pack, x22, x10, x26, 0x02000000ffffffff, 0xffffff7fffffffff, 0x2000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x02000000ffffffff) 
    





    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_24_0)

 
    # Testcase 115:  rs1:x9(0xfffffeffffffffff), rs2:x25(0x0000000001000000), result rd:x23(0x01000000ffffffff)
inst_115:
    TEST_RR_OP(pack, x23, x9, x25, 0x01000000ffffffff, 0xfffffeffffffffff, 0x1000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x01000000ffffffff) 
    
 
    # Testcase 116:  rs1:x8(0xfffffdffffffffff), rs2:x24(0x0000000000800000), result rd:x24(0x00800000ffffffff)
inst_116:
    TEST_RR_OP(pack, x24, x8, x24, 0x00800000ffffffff, 0xfffffdffffffffff, 0x800000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00800000ffffffff) 
    
 
    # Testcase 117:  rs1:x7(0xfffffbffffffffff), rs2:x23(0x0000000000400000), result rd:x25(0x00400000ffffffff)
inst_117:
    TEST_RR_OP(pack, x25, x7, x23, 0x00400000ffffffff, 0xfffffbffffffffff, 0x400000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00400000ffffffff) 
    
 
    # Testcase 118:  rs1:x6(0xfffff7ffffffffff), rs2:x22(0x0000000000200000), result rd:x26(0x00200000ffffffff)
inst_118:
    TEST_RR_OP(pack, x26, x6, x22, 0x00200000ffffffff, 0xfffff7ffffffffff, 0x200000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00200000ffffffff) 
    
 
    # Testcase 119:  rs1:x5(0xffffefffffffffff), rs2:x21(0x0000000000100000), result rd:x27(0x00100000ffffffff)
inst_119:
    TEST_RR_OP(pack, x27, x5, x21, 0x00100000ffffffff, 0xffffefffffffffff, 0x100000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00100000ffffffff) 
    





    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x5,signature_25_0)

 
    # Testcase 120:  rs1:x4(0xffffdfffffffffff), rs2:x20(0x0000000000080000), result rd:x28(0x00080000ffffffff)
inst_120:
    TEST_RR_OP(pack, x28, x4, x20, 0x00080000ffffffff, 0xffffdfffffffffff, 0x80000, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0x00080000ffffffff) 
    
 
    # Testcase 121:  rs1:x3(0xffffbfffffffffff), rs2:x19(0x0000000000040000), result rd:x29(0x00040000ffffffff)
inst_121:
    TEST_RR_OP(pack, x29, x3, x19, 0x00040000ffffffff, 0xffffbfffffffffff, 0x40000, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0x00040000ffffffff) 
    
 
    # Testcase 122:  rs1:x2(0xffff7fffffffffff), rs2:x18(0x0000000000020000), result rd:x30(0x00020000ffffffff)
inst_122:
    TEST_RR_OP(pack, x30, x2, x18, 0x00020000ffffffff, 0xffff7fffffffffff, 0x20000, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0x00020000ffffffff) 
    
 
    # Testcase 123:  rs1:x1(0xfffeffffffffffff), rs2:x17(0x0000000000010000), result rd:x31(0x00010000ffffffff)
inst_123:
    TEST_RR_OP(pack, x31, x1, x17, 0x00010000ffffffff, 0xfffeffffffffffff, 0x10000, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x00010000ffffffff) 
    
 
    # Testcase 124:  rs1:x31(0xfffdffffffffffff), rs2:x16(0x0000000000008000), result rd:x1(0x00008000ffffffff)
inst_124:
    TEST_RR_OP(pack, x1, x31, x16, 0x00008000ffffffff, 0xfffdffffffffffff, 0x8000, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x00008000ffffffff) 
    





    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_26_0)

 
    # Testcase 125:  rs1:x30(0xfffbffffffffffff), rs2:x15(0x0000000000004000), result rd:x2(0x00004000ffffffff)
inst_125:
    TEST_RR_OP(pack, x2, x30, x15, 0x00004000ffffffff, 0xfffbffffffffffff, 0x4000, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x00004000ffffffff) 
    
 
    # Testcase 126:  rs1:x29(0xfff7ffffffffffff), rs2:x14(0x0000000000002000), result rd:x3(0x00002000ffffffff)
inst_126:
    TEST_RR_OP(pack, x3, x29, x14, 0x00002000ffffffff, 0xfff7ffffffffffff, 0x2000, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x00002000ffffffff) 
    
 
    # Testcase 127:  rs1:x28(0xffefffffffffffff), rs2:x13(0x0000000000001000), result rd:x4(0x00001000ffffffff)
inst_127:
    TEST_RR_OP(pack, x4, x28, x13, 0x00001000ffffffff, 0xffefffffffffffff, 0x1000, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x00001000ffffffff) 
    
 
    # Testcase 128:  rs1:x27(0xffdfffffffffffff), rs2:x12(0x0000000000000800), result rd:x5(0x00000800ffffffff)
inst_128:
    TEST_RR_OP(pack, x5, x27, x12, 0x00000800ffffffff, 0xffdfffffffffffff, 0x800, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x00000800ffffffff) 
    
 
    # Testcase 129:  rs1:x26(0xffbfffffffffffff), rs2:x11(0x0000000000000400), result rd:x6(0x00000400ffffffff)
inst_129:
    TEST_RR_OP(pack, x6, x26, x11, 0x00000400ffffffff, 0xffbfffffffffffff, 0x400, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0x00000400ffffffff) 
    





    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_27_0)

 
    # Testcase 130:  rs1:x25(0xff7fffffffffffff), rs2:x10(0x0000000000000200), result rd:x7(0x00000200ffffffff)
inst_130:
    TEST_RR_OP(pack, x7, x25, x10, 0x00000200ffffffff, 0xff7fffffffffffff, 0x200, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000200ffffffff) 
    
 
    # Testcase 131:  rs1:x24(0xfeffffffffffffff), rs2:x9(0x0000000000000100), result rd:x8(0x00000100ffffffff)
inst_131:
    TEST_RR_OP(pack, x8, x24, x9, 0x00000100ffffffff, 0xfeffffffffffffff, 0x100, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000100ffffffff) 
    
 
    # Testcase 132:  rs1:x23(0xfdffffffffffffff), rs2:x8(0x0000000000000080), result rd:x9(0x00000080ffffffff)
inst_132:
    TEST_RR_OP(pack, x9, x23, x8, 0x00000080ffffffff, 0xfdffffffffffffff, 0x80, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000080ffffffff) 
    
 
    # Testcase 133:  rs1:x22(0xfbffffffffffffff), rs2:x7(0x0000000000000040), result rd:x10(0x00000040ffffffff)
inst_133:
    TEST_RR_OP(pack, x10, x22, x7, 0x00000040ffffffff, 0xfbffffffffffffff, 0x40, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000040ffffffff) 
    
 
    # Testcase 134:  rs1:x21(0xf7ffffffffffffff), rs2:x6(0x0000000000000020), result rd:x11(0x00000020ffffffff)
inst_134:
    TEST_RR_OP(pack, x11, x21, x6, 0x00000020ffffffff, 0xf7ffffffffffffff, 0x20, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00000020ffffffff) 
    





    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x6,signature_28_0)

 
    # Testcase 135:  rs1:x20(0xefffffffffffffff), rs2:x5(0x0000000000000010), result rd:x12(0x00000010ffffffff)
inst_135:
    TEST_RR_OP(pack, x12, x20, x5, 0x00000010ffffffff, 0xefffffffffffffff, 0x10, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x00000010ffffffff) 
    
 
    # Testcase 136:  rs1:x19(0xdfffffffffffffff), rs2:x4(0x0000000000000008), result rd:x13(0x00000008ffffffff)
inst_136:
    TEST_RR_OP(pack, x13, x19, x4, 0x00000008ffffffff, 0xdfffffffffffffff, 0x8, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x00000008ffffffff) 
    
 
    # Testcase 137:  rs1:x18(0xbfffffffffffffff), rs2:x3(0x0000000000000004), result rd:x14(0x00000004ffffffff)
inst_137:
    TEST_RR_OP(pack, x14, x18, x3, 0x00000004ffffffff, 0xbfffffffffffffff, 0x4, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x00000004ffffffff) 
    
 
    # Testcase 138:  rs1:x17(0x7fffffffffffffff), rs2:x2(0x0000000000000002), result rd:x15(0x00000002ffffffff)
inst_138:
    TEST_RR_OP(pack, x15, x17, x2, 0x00000002ffffffff, 0x7fffffffffffffff, 0x2, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x00000002ffffffff) 
    
 
    # Testcase 139:  rs1:x16(0xffffffffffffffff), rs2:x1(0x0000000000000001), result rd:x16(0x00000001ffffffff)
inst_139:
    TEST_RR_OP(pack, x16, x16, x1, 0x00000001ffffffff, 0xffffffffffffffff, 0x1, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0x00000001ffffffff) 
    





    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_29_0)

 
    # Testcase 140:  rs1:x15(0x0000000000000001), rs2:x31(0x0000000000000000), result rd:x17(0x0000000000000001)
inst_140:
    TEST_RR_OP(pack, x17, x15, x31, 0x0000000000000001, 0x1, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x0000000000000001) 
    
 
    # Testcase 141:  rs1:x14(0x0000000000000002), rs2:x30(0x0000000000000000), result rd:x18(0x0000000000000002)
inst_141:
    TEST_RR_OP(pack, x18, x14, x30, 0x0000000000000002, 0x2, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x0000000000000002) 
    
 
    # Testcase 142:  rs1:x13(0x0000000000000004), rs2:x29(0x0000000000000000), result rd:x19(0x0000000000000004)
inst_142:
    TEST_RR_OP(pack, x19, x13, x29, 0x0000000000000004, 0x4, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x0000000000000004) 
    
 
    # Testcase 143:  rs1:x12(0x0000000000000008), rs2:x28(0x0000000000000000), result rd:x20(0x0000000000000008)
inst_143:
    TEST_RR_OP(pack, x20, x12, x28, 0x0000000000000008, 0x8, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x0000000000000008) 
    
 
    # Testcase 144:  rs1:x11(0x0000000000000010), rs2:x27(0x0000000000000000), result rd:x21(0x0000000000000010)
inst_144:
    TEST_RR_OP(pack, x21, x11, x27, 0x0000000000000010, 0x10, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000000000010) 
    





    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_30_0)

 
    # Testcase 145:  rs1:x10(0x0000000000000020), rs2:x26(0x0000000000000000), result rd:x22(0x0000000000000020)
inst_145:
    TEST_RR_OP(pack, x22, x10, x26, 0x0000000000000020, 0x20, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000000000020) 
    
 
    # Testcase 146:  rs1:x9(0x0000000000000040), rs2:x25(0x0000000000000000), result rd:x23(0x0000000000000040)
inst_146:
    TEST_RR_OP(pack, x23, x9, x25, 0x0000000000000040, 0x40, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000000000040) 
    
 
    # Testcase 147:  rs1:x8(0x0000000000000080), rs2:x24(0x0000000000000000), result rd:x24(0x0000000000000080)
inst_147:
    TEST_RR_OP(pack, x24, x8, x24, 0x0000000000000080, 0x80, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000000000080) 
    
 
    # Testcase 148:  rs1:x7(0x0000000000000100), rs2:x23(0x0000000000000000), result rd:x25(0x0000000000000100)
inst_148:
    TEST_RR_OP(pack, x25, x7, x23, 0x0000000000000100, 0x100, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000000000100) 
    
 
    # Testcase 149:  rs1:x6(0x0000000000000200), rs2:x22(0x0000000000000000), result rd:x26(0x0000000000000200)
inst_149:
    TEST_RR_OP(pack, x26, x6, x22, 0x0000000000000200, 0x200, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0000000000000200) 
    





    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x6,signature_31_0)

 
    # Testcase 150:  rs1:x5(0x0000000000000400), rs2:x21(0x0000000000000000), result rd:x27(0x0000000000000400)
inst_150:
    TEST_RR_OP(pack, x27, x5, x21, 0x0000000000000400, 0x400, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x0000000000000400) 
    
 
    # Testcase 151:  rs1:x4(0x0000000000000800), rs2:x20(0x0000000000000000), result rd:x28(0x0000000000000800)
inst_151:
    TEST_RR_OP(pack, x28, x4, x20, 0x0000000000000800, 0x800, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x0000000000000800) 
    
 
    # Testcase 152:  rs1:x3(0x0000000000001000), rs2:x19(0x0000000000000000), result rd:x29(0x0000000000001000)
inst_152:
    TEST_RR_OP(pack, x29, x3, x19, 0x0000000000001000, 0x1000, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x0000000000001000) 
    
 
    # Testcase 153:  rs1:x2(0x0000000000002000), rs2:x18(0x0000000000000000), result rd:x30(0x0000000000002000)
inst_153:
    TEST_RR_OP(pack, x30, x2, x18, 0x0000000000002000, 0x2000, 0x0, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000000000002000) 
    
 
    # Testcase 154:  rs1:x1(0x0000000000004000), rs2:x17(0x0000000000000000), result rd:x31(0x0000000000004000)
inst_154:
    TEST_RR_OP(pack, x31, x1, x17, 0x0000000000004000, 0x4000, 0x0, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x31, 0x0000000000004000) 
    





    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x6,signature_32_0)

 
    # Testcase 155:  rs1:x31(0x0000000000008000), rs2:x16(0x0000000000000000), result rd:x1(0x0000000000008000)
inst_155:
    TEST_RR_OP(pack, x1, x31, x16, 0x0000000000008000, 0x8000, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x0000000000008000) 
    
 
    # Testcase 156:  rs1:x30(0x0000000000010000), rs2:x15(0x0000000000000000), result rd:x2(0x0000000000010000)
inst_156:
    TEST_RR_OP(pack, x2, x30, x15, 0x0000000000010000, 0x10000, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x0000000000010000) 
    
 
    # Testcase 157:  rs1:x29(0x0000000000020000), rs2:x14(0x0000000000000000), result rd:x3(0x0000000000020000)
inst_157:
    TEST_RR_OP(pack, x3, x29, x14, 0x0000000000020000, 0x20000, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x0000000000020000) 
    
 
    # Testcase 158:  rs1:x28(0x0000000000040000), rs2:x13(0x0000000000000000), result rd:x4(0x0000000000040000)
inst_158:
    TEST_RR_OP(pack, x4, x28, x13, 0x0000000000040000, 0x40000, 0x0, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x0000000000040000) 
    
 
    # Testcase 159:  rs1:x27(0x0000000000080000), rs2:x12(0x0000000000000000), result rd:x5(0x0000000000080000)
inst_159:
    TEST_RR_OP(pack, x5, x27, x12, 0x0000000000080000, 0x80000, 0x0, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x0000000000080000) 
    





    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_33_0)

 
    # Testcase 160:  rs1:x26(0x0000000000100000), rs2:x11(0x0000000000000000), result rd:x6(0x0000000000100000)
inst_160:
    TEST_RR_OP(pack, x6, x26, x11, 0x0000000000100000, 0x100000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000000100000) 
    
 
    # Testcase 161:  rs1:x25(0x0000000000200000), rs2:x10(0x0000000000000000), result rd:x7(0x0000000000200000)
inst_161:
    TEST_RR_OP(pack, x7, x25, x10, 0x0000000000200000, 0x200000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000000200000) 
    
 
    # Testcase 162:  rs1:x24(0x0000000000400000), rs2:x9(0x0000000000000000), result rd:x8(0x0000000000400000)
inst_162:
    TEST_RR_OP(pack, x8, x24, x9, 0x0000000000400000, 0x400000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000000400000) 
    
 
    # Testcase 163:  rs1:x23(0x0000000000800000), rs2:x8(0x0000000000000000), result rd:x9(0x0000000000800000)
inst_163:
    TEST_RR_OP(pack, x9, x23, x8, 0x0000000000800000, 0x800000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000000800000) 
    
 
    # Testcase 164:  rs1:x22(0x0000000001000000), rs2:x7(0x0000000000000000), result rd:x10(0x0000000001000000)
inst_164:
    TEST_RR_OP(pack, x10, x22, x7, 0x0000000001000000, 0x1000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000001000000) 
    





    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_34_0)

 
    # Testcase 165:  rs1:x21(0x0000000002000000), rs2:x6(0x0000000000000000), result rd:x11(0x0000000002000000)
inst_165:
    TEST_RR_OP(pack, x11, x21, x6, 0x0000000002000000, 0x2000000, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x0000000002000000) 
    
 
    # Testcase 166:  rs1:x20(0x0000000004000000), rs2:x5(0x0000000000000000), result rd:x12(0x0000000004000000)
inst_166:
    TEST_RR_OP(pack, x12, x20, x5, 0x0000000004000000, 0x4000000, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x0000000004000000) 
    
 
    # Testcase 167:  rs1:x19(0x0000000008000000), rs2:x4(0x0000000000000000), result rd:x13(0x0000000008000000)
inst_167:
    TEST_RR_OP(pack, x13, x19, x4, 0x0000000008000000, 0x8000000, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x0000000008000000) 
    
 
    # Testcase 168:  rs1:x18(0x0000000010000000), rs2:x3(0x0000000000000000), result rd:x14(0x0000000010000000)
inst_168:
    TEST_RR_OP(pack, x14, x18, x3, 0x0000000010000000, 0x10000000, 0x0, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x0000000010000000) 
    
 
    # Testcase 169:  rs1:x17(0x0000000020000000), rs2:x2(0x0000000000000000), result rd:x15(0x0000000020000000)
inst_169:
    TEST_RR_OP(pack, x15, x17, x2, 0x0000000020000000, 0x20000000, 0x0, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x0000000020000000) 
    





    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x2,signature_35_0)

 
    # Testcase 170:  rs1:x16(0x0000000040000000), rs2:x1(0x0000000000000000), result rd:x16(0x0000000040000000)
inst_170:
    TEST_RR_OP(pack, x16, x16, x1, 0x0000000040000000, 0x40000000, 0x0, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x0000000040000000) 
    
 
    # Testcase 171:  rs1:x15(0x0000000080000000), rs2:x31(0x0000000000000000), result rd:x17(0x0000000080000000)
inst_171:
    TEST_RR_OP(pack, x17, x15, x31, 0x0000000080000000, 0x80000000, 0x0, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x0000000080000000) 
    
 
    # Testcase 172:  rs1:x14(0x0000000100000000), rs2:x30(0x0000000000000000), result rd:x18(0x0000000000000000)
inst_172:
    TEST_RR_OP(pack, x18, x14, x30, 0x0000000000000000, 0x100000000, 0x0, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x0000000000000000) 
    
 
    # Testcase 173:  rs1:x13(0x0000000200000000), rs2:x29(0x0000000000000000), result rd:x19(0x0000000000000000)
inst_173:
    TEST_RR_OP(pack, x19, x13, x29, 0x0000000000000000, 0x200000000, 0x0, x2, 24, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x0000000000000000) 
    
 
    # Testcase 174:  rs1:x12(0x0000000400000000), rs2:x28(0x0000000000000000), result rd:x20(0x0000000000000000)
inst_174:
    TEST_RR_OP(pack, x20, x12, x28, 0x0000000000000000, 0x400000000, 0x0, x2, 32, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x0000000000000000) 
    





    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_36_0)

 
    # Testcase 175:  rs1:x11(0x0000000800000000), rs2:x27(0x0000000000000000), result rd:x21(0x0000000000000000)
inst_175:
    TEST_RR_OP(pack, x21, x11, x27, 0x0000000000000000, 0x800000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000000000000) 
    
 
    # Testcase 176:  rs1:x10(0x0000001000000000), rs2:x26(0x0000000000000000), result rd:x22(0x0000000000000000)
inst_176:
    TEST_RR_OP(pack, x22, x10, x26, 0x0000000000000000, 0x1000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000000000000) 
    
 
    # Testcase 177:  rs1:x9(0x0000002000000000), rs2:x25(0x0000000000000000), result rd:x23(0x0000000000000000)
inst_177:
    TEST_RR_OP(pack, x23, x9, x25, 0x0000000000000000, 0x2000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000000000000) 
    
 
    # Testcase 178:  rs1:x8(0x0000004000000000), rs2:x24(0x0000000000000000), result rd:x24(0x0000000000000000)
inst_178:
    TEST_RR_OP(pack, x24, x8, x24, 0x0000000000000000, 0x4000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000000000000) 
    
 
    # Testcase 179:  rs1:x7(0x0000008000000000), rs2:x23(0x0000000000000000), result rd:x25(0x0000000000000000)
inst_179:
    TEST_RR_OP(pack, x25, x7, x23, 0x0000000000000000, 0x8000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000000000000) 
    





    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_37_0)

 
    # Testcase 180:  rs1:x6(0x0000010000000000), rs2:x22(0x0000000000000000), result rd:x26(0x0000000000000000)
inst_180:
    TEST_RR_OP(pack, x26, x6, x22, 0x0000000000000000, 0x10000000000, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x0000000000000000) 
    
 
    # Testcase 181:  rs1:x5(0x0000020000000000), rs2:x21(0x0000000000000000), result rd:x27(0x0000000000000000)
inst_181:
    TEST_RR_OP(pack, x27, x5, x21, 0x0000000000000000, 0x20000000000, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x0000000000000000) 
    
 
    # Testcase 182:  rs1:x4(0x0000040000000000), rs2:x20(0x0000000000000000), result rd:x28(0x0000000000000000)
inst_182:
    TEST_RR_OP(pack, x28, x4, x20, 0x0000000000000000, 0x40000000000, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x0000000000000000) 
    
 
    # Testcase 183:  rs1:x3(0x0000080000000000), rs2:x19(0x0000000000000000), result rd:x29(0x0000000000000000)
inst_183:
    TEST_RR_OP(pack, x29, x3, x19, 0x0000000000000000, 0x80000000000, 0x0, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x0000000000000000) 
    
 
    # Testcase 184:  rs1:x2(0x0000100000000000), rs2:x18(0x0000000000000000), result rd:x30(0x0000000000000000)
inst_184:
    TEST_RR_OP(pack, x30, x2, x18, 0x0000000000000000, 0x100000000000, 0x0, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000000000000000) 
    





    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x5,signature_38_0)

 
    # Testcase 185:  rs1:x1(0x0000200000000000), rs2:x17(0x0000000000000000), result rd:x31(0x0000000000000000)
inst_185:
    TEST_RR_OP(pack, x31, x1, x17, 0x0000000000000000, 0x200000000000, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x0000000000000000) 
    
 
    # Testcase 186:  rs1:x31(0x0000400000000000), rs2:x16(0x0000000000000000), result rd:x1(0x0000000000000000)
inst_186:
    TEST_RR_OP(pack, x1, x31, x16, 0x0000000000000000, 0x400000000000, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x0000000000000000) 
    
 
    # Testcase 187:  rs1:x30(0x0000800000000000), rs2:x15(0x0000000000000000), result rd:x2(0x0000000000000000)
inst_187:
    TEST_RR_OP(pack, x2, x30, x15, 0x0000000000000000, 0x800000000000, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x0000000000000000) 
    
 
    # Testcase 188:  rs1:x29(0x0001000000000000), rs2:x14(0x0000000000000000), result rd:x3(0x0000000000000000)
inst_188:
    TEST_RR_OP(pack, x3, x29, x14, 0x0000000000000000, 0x1000000000000, 0x0, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x0000000000000000) 
    
 
    # Testcase 189:  rs1:x28(0x0002000000000000), rs2:x13(0x0000000000000000), result rd:x4(0x0000000000000000)
inst_189:
    TEST_RR_OP(pack, x4, x28, x13, 0x0000000000000000, 0x2000000000000, 0x0, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x0000000000000000) 
    





    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_39_0)

 
    # Testcase 190:  rs1:x27(0x0004000000000000), rs2:x12(0x0000000000000000), result rd:x5(0x0000000000000000)
inst_190:
    TEST_RR_OP(pack, x5, x27, x12, 0x0000000000000000, 0x4000000000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0000000000000000) 
    
 
    # Testcase 191:  rs1:x26(0x0008000000000000), rs2:x11(0x0000000000000000), result rd:x6(0x0000000000000000)
inst_191:
    TEST_RR_OP(pack, x6, x26, x11, 0x0000000000000000, 0x8000000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000000000000) 
    
 
    # Testcase 192:  rs1:x25(0x0010000000000000), rs2:x10(0x0000000000000000), result rd:x7(0x0000000000000000)
inst_192:
    TEST_RR_OP(pack, x7, x25, x10, 0x0000000000000000, 0x10000000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000000000000) 
    
 
    # Testcase 193:  rs1:x24(0x0020000000000000), rs2:x9(0x0000000000000000), result rd:x8(0x0000000000000000)
inst_193:
    TEST_RR_OP(pack, x8, x24, x9, 0x0000000000000000, 0x20000000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000000000000) 
    
 
    # Testcase 194:  rs1:x23(0x0040000000000000), rs2:x8(0x0000000000000000), result rd:x9(0x0000000000000000)
inst_194:
    TEST_RR_OP(pack, x9, x23, x8, 0x0000000000000000, 0x40000000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000000000000) 
    





    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_40_0)

 
    # Testcase 195:  rs1:x22(0x0080000000000000), rs2:x7(0x0000000000000000), result rd:x10(0x0000000000000000)
inst_195:
    TEST_RR_OP(pack, x10, x22, x7, 0x0000000000000000, 0x80000000000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000000000000) 
    
 
    # Testcase 196:  rs1:x21(0x0100000000000000), rs2:x6(0x0000000000000000), result rd:x11(0x0000000000000000)
inst_196:
    TEST_RR_OP(pack, x11, x21, x6, 0x0000000000000000, 0x100000000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0000000000000000) 
    
 
    # Testcase 197:  rs1:x20(0x0200000000000000), rs2:x5(0x0000000000000000), result rd:x12(0x0000000000000000)
inst_197:
    TEST_RR_OP(pack, x12, x20, x5, 0x0000000000000000, 0x200000000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0000000000000000) 
    
 
    # Testcase 198:  rs1:x19(0x0400000000000000), rs2:x4(0x0000000000000000), result rd:x13(0x0000000000000000)
inst_198:
    TEST_RR_OP(pack, x13, x19, x4, 0x0000000000000000, 0x400000000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0000000000000000) 
    
 
    # Testcase 199:  rs1:x18(0x0800000000000000), rs2:x3(0x0000000000000000), result rd:x14(0x0000000000000000)
inst_199:
    TEST_RR_OP(pack, x14, x18, x3, 0x0000000000000000, 0x800000000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x0000000000000000) 
    





    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x3,signature_41_0)

 
    # Testcase 200:  rs1:x17(0x1000000000000000), rs2:x2(0x0000000000000000), result rd:x15(0x0000000000000000)
inst_200:
    TEST_RR_OP(pack, x15, x17, x2, 0x0000000000000000, 0x1000000000000000, 0x0, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x0000000000000000) 
    
 
    # Testcase 201:  rs1:x16(0x2000000000000000), rs2:x1(0x0000000000000000), result rd:x16(0x0000000000000000)
inst_201:
    TEST_RR_OP(pack, x16, x16, x1, 0x0000000000000000, 0x2000000000000000, 0x0, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x0000000000000000) 
    
 
    # Testcase 202:  rs1:x15(0x4000000000000000), rs2:x31(0x0000000000000000), result rd:x17(0x0000000000000000)
inst_202:
    TEST_RR_OP(pack, x17, x15, x31, 0x0000000000000000, 0x4000000000000000, 0x0, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x0000000000000000) 
    
 
    # Testcase 203:  rs1:x14(0x8000000000000000), rs2:x30(0x0000000000000000), result rd:x18(0x0000000000000000)
inst_203:
    TEST_RR_OP(pack, x18, x14, x30, 0x0000000000000000, 0x8000000000000000, 0x0, x3, 24, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x0000000000000000) 
    
 
    # Testcase 204:  rs1:x13(0x0000000000000000), rs2:x29(0x0000000000000000), result rd:x19(0x0000000000000000)
inst_204:
    TEST_RR_OP(pack, x19, x13, x29, 0x0000000000000000, 0x0, 0x0, x3, 32, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x0000000000000000) 
    





    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_42_0)

 
    # Testcase 205:  rs1:x12(0xfffffffffffffffe), rs2:x28(0x0000000000000000), result rd:x20(0x00000000fffffffe)
inst_205:
    TEST_RR_OP(pack, x20, x12, x28, 0x00000000fffffffe, 0xfffffffffffffffe, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00000000fffffffe) 
    
 
    # Testcase 206:  rs1:x11(0xfffffffffffffffd), rs2:x27(0x0000000000000000), result rd:x21(0x00000000fffffffd)
inst_206:
    TEST_RR_OP(pack, x21, x11, x27, 0x00000000fffffffd, 0xfffffffffffffffd, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000000fffffffd) 
    
 
    # Testcase 207:  rs1:x10(0xfffffffffffffffb), rs2:x26(0x0000000000000000), result rd:x22(0x00000000fffffffb)
inst_207:
    TEST_RR_OP(pack, x22, x10, x26, 0x00000000fffffffb, 0xfffffffffffffffb, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000fffffffb) 
    
 
    # Testcase 208:  rs1:x9(0xfffffffffffffff7), rs2:x25(0x0000000000000000), result rd:x23(0x00000000fffffff7)
inst_208:
    TEST_RR_OP(pack, x23, x9, x25, 0x00000000fffffff7, 0xfffffffffffffff7, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000000fffffff7) 
    
 
    # Testcase 209:  rs1:x8(0xffffffffffffffef), rs2:x24(0x0000000000000000), result rd:x24(0x00000000ffffffef)
inst_209:
    TEST_RR_OP(pack, x24, x8, x24, 0x00000000ffffffef, 0xffffffffffffffef, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00000000ffffffef) 
    





    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_43_0)

 
    # Testcase 210:  rs1:x7(0xffffffffffffffdf), rs2:x23(0x0000000000000000), result rd:x25(0x00000000ffffffdf)
inst_210:
    TEST_RR_OP(pack, x25, x7, x23, 0x00000000ffffffdf, 0xffffffffffffffdf, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000000ffffffdf) 
    
 
    # Testcase 211:  rs1:x6(0xffffffffffffffbf), rs2:x22(0x0000000000000000), result rd:x26(0x00000000ffffffbf)
inst_211:
    TEST_RR_OP(pack, x26, x6, x22, 0x00000000ffffffbf, 0xffffffffffffffbf, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000000ffffffbf) 
    
 
    # Testcase 212:  rs1:x5(0xffffffffffffff7f), rs2:x21(0x0000000000000000), result rd:x27(0x00000000ffffff7f)
inst_212:
    TEST_RR_OP(pack, x27, x5, x21, 0x00000000ffffff7f, 0xffffffffffffff7f, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00000000ffffff7f) 
    
 
    # Testcase 213:  rs1:x4(0xfffffffffffffeff), rs2:x20(0x0000000000000000), result rd:x28(0x00000000fffffeff)
inst_213:
    TEST_RR_OP(pack, x28, x4, x20, 0x00000000fffffeff, 0xfffffffffffffeff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x00000000fffffeff) 
    
 
    # Testcase 214:  rs1:x3(0xfffffffffffffdff), rs2:x19(0x0000000000000000), result rd:x29(0x00000000fffffdff)
inst_214:
    TEST_RR_OP(pack, x29, x3, x19, 0x00000000fffffdff, 0xfffffffffffffdff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x00000000fffffdff) 
    





    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x4,signature_44_0)

 
    # Testcase 215:  rs1:x2(0xfffffffffffffbff), rs2:x18(0x0000000000000000), result rd:x30(0x00000000fffffbff)
inst_215:
    TEST_RR_OP(pack, x30, x2, x18, 0x00000000fffffbff, 0xfffffffffffffbff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x00000000fffffbff) 
    
 
    # Testcase 216:  rs1:x1(0xfffffffffffff7ff), rs2:x17(0x0000000000000000), result rd:x31(0x00000000fffff7ff)
inst_216:
    TEST_RR_OP(pack, x31, x1, x17, 0x00000000fffff7ff, 0xfffffffffffff7ff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x00000000fffff7ff) 
    
 
    # Testcase 217:  rs1:x31(0xffffffffffffefff), rs2:x16(0x0000000000000000), result rd:x1(0x00000000ffffefff)
inst_217:
    TEST_RR_OP(pack, x1, x31, x16, 0x00000000ffffefff, 0xffffffffffffefff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00000000ffffefff) 
    
 
    # Testcase 218:  rs1:x30(0xffffffffffffdfff), rs2:x15(0x0000000000000000), result rd:x2(0x00000000ffffdfff)
inst_218:
    TEST_RR_OP(pack, x2, x30, x15, 0x00000000ffffdfff, 0xffffffffffffdfff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00000000ffffdfff) 
    
 
    # Testcase 219:  rs1:x29(0xffffffffffffbfff), rs2:x14(0x0000000000000000), result rd:x3(0x00000000ffffbfff)
inst_219:
    TEST_RR_OP(pack, x3, x29, x14, 0x00000000ffffbfff, 0xffffffffffffbfff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x00000000ffffbfff) 
    





    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_45_0)

 
    # Testcase 220:  rs1:x28(0xffffffffffff7fff), rs2:x13(0x0000000000000000), result rd:x4(0x00000000ffff7fff)
inst_220:
    TEST_RR_OP(pack, x4, x28, x13, 0x00000000ffff7fff, 0xffffffffffff7fff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00000000ffff7fff) 
    
 
    # Testcase 221:  rs1:x27(0xfffffffffffeffff), rs2:x12(0x0000000000000000), result rd:x5(0x00000000fffeffff)
inst_221:
    TEST_RR_OP(pack, x5, x27, x12, 0x00000000fffeffff, 0xfffffffffffeffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00000000fffeffff) 
    
 
    # Testcase 222:  rs1:x26(0xfffffffffffdffff), rs2:x11(0x0000000000000000), result rd:x6(0x00000000fffdffff)
inst_222:
    TEST_RR_OP(pack, x6, x26, x11, 0x00000000fffdffff, 0xfffffffffffdffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00000000fffdffff) 
    
 
    # Testcase 223:  rs1:x25(0xfffffffffffbffff), rs2:x10(0x0000000000000000), result rd:x7(0x00000000fffbffff)
inst_223:
    TEST_RR_OP(pack, x7, x25, x10, 0x00000000fffbffff, 0xfffffffffffbffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000000fffbffff) 
    
 
    # Testcase 224:  rs1:x24(0xfffffffffff7ffff), rs2:x9(0x0000000000000000), result rd:x8(0x00000000fff7ffff)
inst_224:
    TEST_RR_OP(pack, x8, x24, x9, 0x00000000fff7ffff, 0xfffffffffff7ffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000000fff7ffff) 
    





    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_46_0)

 
    # Testcase 225:  rs1:x23(0xffffffffffefffff), rs2:x8(0x0000000000000000), result rd:x9(0x00000000ffefffff)
inst_225:
    TEST_RR_OP(pack, x9, x23, x8, 0x00000000ffefffff, 0xffffffffffefffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000000ffefffff) 
    
 
    # Testcase 226:  rs1:x22(0xffffffffffdfffff), rs2:x7(0x0000000000000000), result rd:x10(0x00000000ffdfffff)
inst_226:
    TEST_RR_OP(pack, x10, x22, x7, 0x00000000ffdfffff, 0xffffffffffdfffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000ffdfffff) 
    
 
    # Testcase 227:  rs1:x21(0xffffffffffbfffff), rs2:x6(0x0000000000000000), result rd:x11(0x00000000ffbfffff)
inst_227:
    TEST_RR_OP(pack, x11, x21, x6, 0x00000000ffbfffff, 0xffffffffffbfffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00000000ffbfffff) 
    
 
    # Testcase 228:  rs1:x20(0xffffffffff7fffff), rs2:x5(0x0000000000000000), result rd:x12(0x00000000ff7fffff)
inst_228:
    TEST_RR_OP(pack, x12, x20, x5, 0x00000000ff7fffff, 0xffffffffff7fffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000ff7fffff) 
    
 
    # Testcase 229:  rs1:x19(0xfffffffffeffffff), rs2:x4(0x0000000000000000), result rd:x13(0x00000000feffffff)
inst_229:
    TEST_RR_OP(pack, x13, x19, x4, 0x00000000feffffff, 0xfffffffffeffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x00000000feffffff) 
    





    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x4,signature_47_0)

 
    # Testcase 230:  rs1:x18(0xfffffffffdffffff), rs2:x3(0x0000000000000000), result rd:x14(0x00000000fdffffff)
inst_230:
    TEST_RR_OP(pack, x14, x18, x3, 0x00000000fdffffff, 0xfffffffffdffffff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0x00000000fdffffff) 
    
 
    # Testcase 231:  rs1:x17(0xfffffffffbffffff), rs2:x2(0x0000000000000000), result rd:x15(0x00000000fbffffff)
inst_231:
    TEST_RR_OP(pack, x15, x17, x2, 0x00000000fbffffff, 0xfffffffffbffffff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x00000000fbffffff) 
    
 
    # Testcase 232:  rs1:x16(0xfffffffff7ffffff), rs2:x1(0x0000000000000000), result rd:x16(0x00000000f7ffffff)
inst_232:
    TEST_RR_OP(pack, x16, x16, x1, 0x00000000f7ffffff, 0xfffffffff7ffffff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x00000000f7ffffff) 
    
 
    # Testcase 233:  rs1:x15(0xffffffffefffffff), rs2:x31(0x0000000000000000), result rd:x17(0x00000000efffffff)
inst_233:
    TEST_RR_OP(pack, x17, x15, x31, 0x00000000efffffff, 0xffffffffefffffff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x00000000efffffff) 
    
 
    # Testcase 234:  rs1:x14(0xffffffffdfffffff), rs2:x30(0x0000000000000000), result rd:x18(0x00000000dfffffff)
inst_234:
    TEST_RR_OP(pack, x18, x14, x30, 0x00000000dfffffff, 0xffffffffdfffffff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x00000000dfffffff) 
    





    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_48_0)

 
    # Testcase 235:  rs1:x13(0xffffffffbfffffff), rs2:x29(0x0000000000000000), result rd:x19(0x00000000bfffffff)
inst_235:
    TEST_RR_OP(pack, x19, x13, x29, 0x00000000bfffffff, 0xffffffffbfffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x00000000bfffffff) 
    
 
    # Testcase 236:  rs1:x12(0xffffffff7fffffff), rs2:x28(0x0000000000000000), result rd:x20(0x000000007fffffff)
inst_236:
    TEST_RR_OP(pack, x20, x12, x28, 0x000000007fffffff, 0xffffffff7fffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x000000007fffffff) 
    
 
    # Testcase 237:  rs1:x11(0xfffffffeffffffff), rs2:x27(0x0000000000000000), result rd:x21(0x00000000ffffffff)
inst_237:
    TEST_RR_OP(pack, x21, x11, x27, 0x00000000ffffffff, 0xfffffffeffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000000ffffffff) 
    
 
    # Testcase 238:  rs1:x10(0xfffffffdffffffff), rs2:x26(0x0000000000000000), result rd:x22(0x00000000ffffffff)
inst_238:
    TEST_RR_OP(pack, x22, x10, x26, 0x00000000ffffffff, 0xfffffffdffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000ffffffff) 
    
 
    # Testcase 239:  rs1:x9(0xfffffffbffffffff), rs2:x25(0x0000000000000000), result rd:x23(0x00000000ffffffff)
inst_239:
    TEST_RR_OP(pack, x23, x9, x25, 0x00000000ffffffff, 0xfffffffbffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000000ffffffff) 
    





    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_49_0)

 
    # Testcase 240:  rs1:x8(0xfffffff7ffffffff), rs2:x24(0x0000000000000000), result rd:x24(0x00000000ffffffff)
inst_240:
    TEST_RR_OP(pack, x24, x8, x24, 0x00000000ffffffff, 0xfffffff7ffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00000000ffffffff) 
    
 
    # Testcase 241:  rs1:x7(0xffffffefffffffff), rs2:x23(0x0000000000000000), result rd:x25(0x00000000ffffffff)
inst_241:
    TEST_RR_OP(pack, x25, x7, x23, 0x00000000ffffffff, 0xffffffefffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000000ffffffff) 
    
 
    # Testcase 242:  rs1:x6(0xffffffdfffffffff), rs2:x22(0x0000000000000000), result rd:x26(0x00000000ffffffff)
inst_242:
    TEST_RR_OP(pack, x26, x6, x22, 0x00000000ffffffff, 0xffffffdfffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000000ffffffff) 
    
 
    # Testcase 243:  rs1:x5(0xffffffbfffffffff), rs2:x21(0x0000000000000000), result rd:x27(0x00000000ffffffff)
inst_243:
    TEST_RR_OP(pack, x27, x5, x21, 0x00000000ffffffff, 0xffffffbfffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00000000ffffffff) 
    
 
    # Testcase 244:  rs1:x4(0xffffff7fffffffff), rs2:x20(0x0000000000000000), result rd:x28(0x00000000ffffffff)
inst_244:
    TEST_RR_OP(pack, x28, x4, x20, 0x00000000ffffffff, 0xffffff7fffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x00000000ffffffff) 
    





    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x4,signature_50_0)

 
    # Testcase 245:  rs1:x3(0xfffffeffffffffff), rs2:x19(0x0000000000000000), result rd:x29(0x00000000ffffffff)
inst_245:
    TEST_RR_OP(pack, x29, x3, x19, 0x00000000ffffffff, 0xfffffeffffffffff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x00000000ffffffff) 
    
 
    # Testcase 246:  rs1:x2(0xfffffdffffffffff), rs2:x18(0x0000000000000000), result rd:x30(0x00000000ffffffff)
inst_246:
    TEST_RR_OP(pack, x30, x2, x18, 0x00000000ffffffff, 0xfffffdffffffffff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x00000000ffffffff) 
    
 
    # Testcase 247:  rs1:x1(0xfffffbffffffffff), rs2:x17(0x0000000000000000), result rd:x31(0x00000000ffffffff)
inst_247:
    TEST_RR_OP(pack, x31, x1, x17, 0x00000000ffffffff, 0xfffffbffffffffff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x00000000ffffffff) 
    
 
    # Testcase 248:  rs1:x31(0xfffff7ffffffffff), rs2:x16(0x0000000000000000), result rd:x1(0x00000000ffffffff)
inst_248:
    TEST_RR_OP(pack, x1, x31, x16, 0x00000000ffffffff, 0xfffff7ffffffffff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00000000ffffffff) 
    
 
    # Testcase 249:  rs1:x30(0xffffefffffffffff), rs2:x15(0x0000000000000000), result rd:x2(0x00000000ffffffff)
inst_249:
    TEST_RR_OP(pack, x2, x30, x15, 0x00000000ffffffff, 0xffffefffffffffff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00000000ffffffff) 
    





    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_51_0)

 
    # Testcase 250:  rs1:x29(0xffffdfffffffffff), rs2:x14(0x0000000000000000), result rd:x3(0x00000000ffffffff)
inst_250:
    TEST_RR_OP(pack, x3, x29, x14, 0x00000000ffffffff, 0xffffdfffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x00000000ffffffff) 
    
 
    # Testcase 251:  rs1:x28(0xffffbfffffffffff), rs2:x13(0x0000000000000000), result rd:x4(0x00000000ffffffff)
inst_251:
    TEST_RR_OP(pack, x4, x28, x13, 0x00000000ffffffff, 0xffffbfffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00000000ffffffff) 
    
 
    # Testcase 252:  rs1:x27(0xffff7fffffffffff), rs2:x12(0x0000000000000000), result rd:x5(0x00000000ffffffff)
inst_252:
    TEST_RR_OP(pack, x5, x27, x12, 0x00000000ffffffff, 0xffff7fffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00000000ffffffff) 
    
 
    # Testcase 253:  rs1:x26(0xfffeffffffffffff), rs2:x11(0x0000000000000000), result rd:x6(0x00000000ffffffff)
inst_253:
    TEST_RR_OP(pack, x6, x26, x11, 0x00000000ffffffff, 0xfffeffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00000000ffffffff) 
    
 
    # Testcase 254:  rs1:x25(0xfffdffffffffffff), rs2:x10(0x0000000000000000), result rd:x7(0x00000000ffffffff)
inst_254:
    TEST_RR_OP(pack, x7, x25, x10, 0x00000000ffffffff, 0xfffdffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000000ffffffff) 
    





    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_52_0)

 
    # Testcase 255:  rs1:x24(0xfffbffffffffffff), rs2:x9(0x0000000000000000), result rd:x8(0x00000000ffffffff)
inst_255:
    TEST_RR_OP(pack, x8, x24, x9, 0x00000000ffffffff, 0xfffbffffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000000ffffffff) 
    
 
    # Testcase 256:  rs1:x23(0xfff7ffffffffffff), rs2:x8(0x0000000000000000), result rd:x9(0x00000000ffffffff)
inst_256:
    TEST_RR_OP(pack, x9, x23, x8, 0x00000000ffffffff, 0xfff7ffffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000000ffffffff) 
    
 
    # Testcase 257:  rs1:x22(0xffefffffffffffff), rs2:x7(0x0000000000000000), result rd:x10(0x00000000ffffffff)
inst_257:
    TEST_RR_OP(pack, x10, x22, x7, 0x00000000ffffffff, 0xffefffffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000000ffffffff) 
    
 
    # Testcase 258:  rs1:x21(0xffdfffffffffffff), rs2:x6(0x0000000000000000), result rd:x11(0x00000000ffffffff)
inst_258:
    TEST_RR_OP(pack, x11, x21, x6, 0x00000000ffffffff, 0xffdfffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00000000ffffffff) 
    
 
    # Testcase 259:  rs1:x20(0xffbfffffffffffff), rs2:x5(0x0000000000000000), result rd:x12(0x00000000ffffffff)
inst_259:
    TEST_RR_OP(pack, x12, x20, x5, 0x00000000ffffffff, 0xffbfffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000ffffffff) 
    





    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x5,signature_53_0)

 
    # Testcase 260:  rs1:x19(0xff7fffffffffffff), rs2:x4(0x0000000000000000), result rd:x13(0x00000000ffffffff)
inst_260:
    TEST_RR_OP(pack, x13, x19, x4, 0x00000000ffffffff, 0xff7fffffffffffff, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x00000000ffffffff) 
    
 
    # Testcase 261:  rs1:x18(0xfeffffffffffffff), rs2:x3(0x0000000000000000), result rd:x14(0x00000000ffffffff)
inst_261:
    TEST_RR_OP(pack, x14, x18, x3, 0x00000000ffffffff, 0xfeffffffffffffff, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x00000000ffffffff) 
    
 
    # Testcase 262:  rs1:x17(0xfdffffffffffffff), rs2:x2(0x0000000000000000), result rd:x15(0x00000000ffffffff)
inst_262:
    TEST_RR_OP(pack, x15, x17, x2, 0x00000000ffffffff, 0xfdffffffffffffff, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x00000000ffffffff) 
    
 
    # Testcase 263:  rs1:x16(0xfbffffffffffffff), rs2:x1(0x0000000000000000), result rd:x16(0x00000000ffffffff)
inst_263:
    TEST_RR_OP(pack, x16, x16, x1, 0x00000000ffffffff, 0xfbffffffffffffff, 0x0, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x00000000ffffffff) 
    
 
    # Testcase 264:  rs1:x15(0xf7ffffffffffffff), rs2:x31(0x0000000000000000), result rd:x17(0x00000000ffffffff)
inst_264:
    TEST_RR_OP(pack, x17, x15, x31, 0x00000000ffffffff, 0xf7ffffffffffffff, 0x0, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0x00000000ffffffff) 
    





    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_54_0)

 
    # Testcase 265:  rs1:x14(0xefffffffffffffff), rs2:x30(0x0000000000000000), result rd:x18(0x00000000ffffffff)
inst_265:
    TEST_RR_OP(pack, x18, x14, x30, 0x00000000ffffffff, 0xefffffffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x00000000ffffffff) 
    
 
    # Testcase 266:  rs1:x13(0xdfffffffffffffff), rs2:x29(0x0000000000000000), result rd:x19(0x00000000ffffffff)
inst_266:
    TEST_RR_OP(pack, x19, x13, x29, 0x00000000ffffffff, 0xdfffffffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x00000000ffffffff) 
    
 
    # Testcase 267:  rs1:x12(0xbfffffffffffffff), rs2:x28(0x0000000000000000), result rd:x20(0x00000000ffffffff)
inst_267:
    TEST_RR_OP(pack, x20, x12, x28, 0x00000000ffffffff, 0xbfffffffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00000000ffffffff) 
    
 
    # Testcase 268:  rs1:x11(0x7fffffffffffffff), rs2:x27(0x0000000000000000), result rd:x21(0x00000000ffffffff)
inst_268:
    TEST_RR_OP(pack, x21, x11, x27, 0x00000000ffffffff, 0x7fffffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000000ffffffff) 
    
 
    # Testcase 269:  rs1:x10(0xffffffffffffffff), rs2:x26(0x0000000000000000), result rd:x22(0x00000000ffffffff)
inst_269:
    TEST_RR_OP(pack, x22, x10, x26, 0x00000000ffffffff, 0xffffffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000ffffffff) 
    





    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",pack)
	RVTEST_SIGBASE(x1,signature_55_0)

 
    # Testcase 270:  rs1:x25(0x10fd3dedadea5195), rs2:x25(0xdf7f3844121bcc23), result rd:x23(0x121bcc23121bcc23)
inst_270:
    TEST_RR_OP(pack, x23, x25, x25, 0x121bcc23121bcc23, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x121bcc23121bcc23) 
    
 
    # Testcase 271:  rs1:x8(0xbd295ce2d2ffbec1), rs2:x24(0xf5adb41aa47d105b), result rd:x0(0x0000000000000000)
inst_271:
    TEST_RR_OP(pack, x0, x8, x24, 0x0000000000000000, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x0000000000000000) 
    
 
    # Testcase 272:  rs1:x7(0xc9649f05a8e1a8bb), rs2:x0(0x82f6747f707af2c0), result rd:x25(0x00000000a8e1a8bb)
inst_272:
    TEST_RR_OP(pack, x25, x7, x0, 0x00000000a8e1a8bb, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000000a8e1a8bb) 
    
 
    # Testcase 273:  rs1:x0(0x3541291848c99fcb), rs2:x22(0x73a92fd4e19bfbc3), result rd:x26(0xe19bfbc300000000)
inst_273:
    TEST_RR_OP(pack, x26, x0, x22, 0xe19bfbc300000000, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xe19bfbc300000000) 
    


	
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
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

