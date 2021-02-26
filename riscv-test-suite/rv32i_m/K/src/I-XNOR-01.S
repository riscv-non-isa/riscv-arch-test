// RISC-V Architectural Validation Test I-XNOR-01
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
// Description: Testing instruction 'xnor'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV32IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1



    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x6,signature_1_0)

 
    # Testcase 0:  rs1:x31(0x10fd3dedadea5195), rs2:x16(0xdf7f3844121bcc23), result rd:x1(0x400e6249)
inst_0:
    TEST_RR_OP(xnor, x1, x31, x16, 0x400e6249, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x400e6249) 
    
 
    # Testcase 1:  rs1:x30(0xbd295ce2d2ffbec1), rs2:x15(0xf5adb41aa47d105b), result rd:x2(0x897d5165)
inst_1:
    TEST_RR_OP(xnor, x2, x30, x15, 0x897d5165, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x6, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x897d5165) 
    
 
    # Testcase 2:  rs1:x29(0xc9649f05a8e1a8bb), rs2:x14(0x82f6747f707af2c0), result rd:x3(0x2764a584)
inst_2:
    TEST_RR_OP(xnor, x3, x29, x14, 0x2764a584, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x2764a584) 
    
 
    # Testcase 3:  rs1:x28(0x3541291848c99fcb), rs2:x13(0x73a92fd4e19bfbc3), result rd:x4(0x56ad9bf7)
inst_3:
    TEST_RR_OP(xnor, x4, x28, x13, 0x56ad9bf7, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x6, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x56ad9bf7) 
    
 
    # Testcase 4:  rs1:x27(0x10a24740461d524f), rs2:x12(0x546b0e54528a10af), result rd:x5(0xeb68bd1f)
inst_4:
    TEST_RR_OP(xnor, x5, x27, x12, 0xeb68bd1f, 0x10a24740461d524f, 0x546b0e54528a10af, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xeb68bd1f) 
    





    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_2_0)

 
    # Testcase 5:  rs1:x26(0x546b0e54528a10af), rs2:x11(0x10a24740461d524f), result rd:x6(0xeb68bd1f)
inst_5:
    TEST_RR_OP(xnor, x6, x26, x11, 0xeb68bd1f, 0x546b0e54528a10af, 0x10a24740461d524f, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xeb68bd1f) 
    
 
    # Testcase 6:  rs1:x25(0x73a92fd4e19bfbc3), rs2:x10(0x3541291848c99fcb), result rd:x7(0x56ad9bf7)
inst_6:
    TEST_RR_OP(xnor, x7, x25, x10, 0x56ad9bf7, 0x73a92fd4e19bfbc3, 0x3541291848c99fcb, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x56ad9bf7) 
    
 
    # Testcase 7:  rs1:x24(0x82f6747f707af2c0), rs2:x9(0xc9649f05a8e1a8bb), result rd:x8(0x2764a584)
inst_7:
    TEST_RR_OP(xnor, x8, x24, x9, 0x2764a584, 0x82f6747f707af2c0, 0xc9649f05a8e1a8bb, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x2764a584) 
    
 
    # Testcase 8:  rs1:x23(0xf5adb41aa47d105b), rs2:x8(0xbd295ce2d2ffbec1), result rd:x9(0x897d5165)
inst_8:
    TEST_RR_OP(xnor, x9, x23, x8, 0x897d5165, 0xf5adb41aa47d105b, 0xbd295ce2d2ffbec1, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x897d5165) 
    
 
    # Testcase 9:  rs1:x22(0xdf7f3844121bcc23), rs2:x7(0x10fd3dedadea5195), result rd:x10(0x400e6249)
inst_9:
    TEST_RR_OP(xnor, x10, x22, x7, 0x400e6249, 0xdf7f3844121bcc23, 0x10fd3dedadea5195, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x400e6249) 
    





    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_3_0)

 
    # Testcase 10:  rs1:x21(0x00000001), rs2:x6(0xffffffff), result rd:x11(0x00000001)
inst_10:
    TEST_RR_OP(xnor, x11, x21, x6, 0x00000001, 0x1, 0xffffffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x00000001) 
    
 
    # Testcase 11:  rs1:x20(0x00000002), rs2:x5(0x7fffffff), result rd:x12(0x80000002)
inst_11:
    TEST_RR_OP(xnor, x12, x20, x5, 0x80000002, 0x2, 0x7fffffff, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x80000002) 
    
 
    # Testcase 12:  rs1:x19(0x00000004), rs2:x4(0xbfffffff), result rd:x13(0x40000004)
inst_12:
    TEST_RR_OP(xnor, x13, x19, x4, 0x40000004, 0x4, 0xbfffffff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x40000004) 
    
 
    # Testcase 13:  rs1:x18(0x00000008), rs2:x3(0xdfffffff), result rd:x14(0x20000008)
inst_13:
    TEST_RR_OP(xnor, x14, x18, x3, 0x20000008, 0x8, 0xdfffffff, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x20000008) 
    
 
    # Testcase 14:  rs1:x17(0x00000010), rs2:x2(0xefffffff), result rd:x15(0x10000010)
inst_14:
    TEST_RR_OP(xnor, x15, x17, x2, 0x10000010, 0x10, 0xefffffff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x10000010) 
    





    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x2,signature_4_0)

 
    # Testcase 15:  rs1:x16(0x00000020), rs2:x1(0xf7ffffff), result rd:x16(0x08000020)
inst_15:
    TEST_RR_OP(xnor, x16, x16, x1, 0x08000020, 0x20, 0xf7ffffff, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x08000020) 
    
 
    # Testcase 16:  rs1:x15(0x00000040), rs2:x31(0xfbffffff), result rd:x17(0x04000040)
inst_16:
    TEST_RR_OP(xnor, x17, x15, x31, 0x04000040, 0x40, 0xfbffffff, x2, 4, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x04000040) 
    
 
    # Testcase 17:  rs1:x14(0x00000080), rs2:x30(0xfdffffff), result rd:x18(0x02000080)
inst_17:
    TEST_RR_OP(xnor, x18, x14, x30, 0x02000080, 0x80, 0xfdffffff, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x02000080) 
    
 
    # Testcase 18:  rs1:x13(0x00000100), rs2:x29(0xfeffffff), result rd:x19(0x01000100)
inst_18:
    TEST_RR_OP(xnor, x19, x13, x29, 0x01000100, 0x100, 0xfeffffff, x2, 12, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x01000100) 
    
 
    # Testcase 19:  rs1:x12(0x00000200), rs2:x28(0xff7fffff), result rd:x20(0x00800200)
inst_19:
    TEST_RR_OP(xnor, x20, x12, x28, 0x00800200, 0x200, 0xff7fffff, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x00800200) 
    





    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_5_0)

 
    # Testcase 20:  rs1:x11(0x00000400), rs2:x27(0xffbfffff), result rd:x21(0x00400400)
inst_20:
    TEST_RR_OP(xnor, x21, x11, x27, 0x00400400, 0x400, 0xffbfffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00400400) 
    
 
    # Testcase 21:  rs1:x10(0x00000800), rs2:x26(0xffdfffff), result rd:x22(0x00200800)
inst_21:
    TEST_RR_OP(xnor, x22, x10, x26, 0x00200800, 0x800, 0xffdfffff, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00200800) 
    
 
    # Testcase 22:  rs1:x9(0x00001000), rs2:x25(0xffefffff), result rd:x23(0x00101000)
inst_22:
    TEST_RR_OP(xnor, x23, x9, x25, 0x00101000, 0x1000, 0xffefffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00101000) 
    
 
    # Testcase 23:  rs1:x8(0x00002000), rs2:x24(0xfff7ffff), result rd:x24(0x00082000)
inst_23:
    TEST_RR_OP(xnor, x24, x8, x24, 0x00082000, 0x2000, 0xfff7ffff, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00082000) 
    
 
    # Testcase 24:  rs1:x7(0x00004000), rs2:x23(0xfffbffff), result rd:x25(0x00044000)
inst_24:
    TEST_RR_OP(xnor, x25, x7, x23, 0x00044000, 0x4000, 0xfffbffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00044000) 
    





    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_6_0)

 
    # Testcase 25:  rs1:x6(0x00008000), rs2:x22(0xfffdffff), result rd:x26(0x00028000)
inst_25:
    TEST_RR_OP(xnor, x26, x6, x22, 0x00028000, 0x8000, 0xfffdffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x00028000) 
    
 
    # Testcase 26:  rs1:x5(0x00010000), rs2:x21(0xfffeffff), result rd:x27(0x00000000)
inst_26:
    TEST_RR_OP(xnor, x27, x5, x21, 0x00000000, 0x10000, 0xfffeffff, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x00000000) 
    
 
    # Testcase 27:  rs1:x4(0x00020000), rs2:x20(0xffff7fff), result rd:x28(0x00028000)
inst_27:
    TEST_RR_OP(xnor, x28, x4, x20, 0x00028000, 0x20000, 0xffff7fff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x00028000) 
    
 
    # Testcase 28:  rs1:x3(0x00040000), rs2:x19(0xffffbfff), result rd:x29(0x00044000)
inst_28:
    TEST_RR_OP(xnor, x29, x3, x19, 0x00044000, 0x40000, 0xffffbfff, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x00044000) 
    
 
    # Testcase 29:  rs1:x2(0x00080000), rs2:x18(0xffffdfff), result rd:x30(0x00082000)
inst_29:
    TEST_RR_OP(xnor, x30, x2, x18, 0x00082000, 0x80000, 0xffffdfff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x00082000) 
    





    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x5,signature_7_0)

 
    # Testcase 30:  rs1:x1(0x00100000), rs2:x17(0xffffefff), result rd:x31(0x00101000)
inst_30:
    TEST_RR_OP(xnor, x31, x1, x17, 0x00101000, 0x100000, 0xffffefff, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x00101000) 
    
 
    # Testcase 31:  rs1:x31(0x00200000), rs2:x16(0xfffff7ff), result rd:x1(0x00200800)
inst_31:
    TEST_RR_OP(xnor, x1, x31, x16, 0x00200800, 0x200000, 0xfffff7ff, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x00200800) 
    
 
    # Testcase 32:  rs1:x30(0x00400000), rs2:x15(0xfffffbff), result rd:x2(0x00400400)
inst_32:
    TEST_RR_OP(xnor, x2, x30, x15, 0x00400400, 0x400000, 0xfffffbff, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x00400400) 
    
 
    # Testcase 33:  rs1:x29(0x00800000), rs2:x14(0xfffffdff), result rd:x3(0x00800200)
inst_33:
    TEST_RR_OP(xnor, x3, x29, x14, 0x00800200, 0x800000, 0xfffffdff, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x00800200) 
    
 
    # Testcase 34:  rs1:x28(0x01000000), rs2:x13(0xfffffeff), result rd:x4(0x01000100)
inst_34:
    TEST_RR_OP(xnor, x4, x28, x13, 0x01000100, 0x1000000, 0xfffffeff, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x01000100) 
    





    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_8_0)

 
    # Testcase 35:  rs1:x27(0x02000000), rs2:x12(0xffffff7f), result rd:x5(0x02000080)
inst_35:
    TEST_RR_OP(xnor, x5, x27, x12, 0x02000080, 0x2000000, 0xffffff7f, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x02000080) 
    
 
    # Testcase 36:  rs1:x26(0x04000000), rs2:x11(0xffffffbf), result rd:x6(0x04000040)
inst_36:
    TEST_RR_OP(xnor, x6, x26, x11, 0x04000040, 0x4000000, 0xffffffbf, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x04000040) 
    
 
    # Testcase 37:  rs1:x25(0x08000000), rs2:x10(0xffffffdf), result rd:x7(0x08000020)
inst_37:
    TEST_RR_OP(xnor, x7, x25, x10, 0x08000020, 0x8000000, 0xffffffdf, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x08000020) 
    
 
    # Testcase 38:  rs1:x24(0x10000000), rs2:x9(0xffffffef), result rd:x8(0x10000010)
inst_38:
    TEST_RR_OP(xnor, x8, x24, x9, 0x10000010, 0x10000000, 0xffffffef, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x10000010) 
    
 
    # Testcase 39:  rs1:x23(0x20000000), rs2:x8(0xfffffff7), result rd:x9(0x20000008)
inst_39:
    TEST_RR_OP(xnor, x9, x23, x8, 0x20000008, 0x20000000, 0xfffffff7, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x20000008) 
    





    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_9_0)

 
    # Testcase 40:  rs1:x22(0x40000000), rs2:x7(0xfffffffb), result rd:x10(0x40000004)
inst_40:
    TEST_RR_OP(xnor, x10, x22, x7, 0x40000004, 0x40000000, 0xfffffffb, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x40000004) 
    
 
    # Testcase 41:  rs1:x21(0x80000000), rs2:x6(0xfffffffd), result rd:x11(0x80000002)
inst_41:
    TEST_RR_OP(xnor, x11, x21, x6, 0x80000002, 0x80000000, 0xfffffffd, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x80000002) 
    
 
    # Testcase 42:  rs1:x20(0x00000000), rs2:x5(0xfffffffe), result rd:x12(0x00000001)
inst_42:
    TEST_RR_OP(xnor, x12, x20, x5, 0x00000001, 0x0, 0xfffffffe, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000001) 
    
 
    # Testcase 43:  rs1:x19(0xfffffffe), rs2:x4(0x00000000), result rd:x13(0x00000001)
inst_43:
    TEST_RR_OP(xnor, x13, x19, x4, 0x00000001, 0xfffffffe, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x00000001) 
    
 
    # Testcase 44:  rs1:x18(0xfffffffd), rs2:x3(0x80000000), result rd:x14(0x80000002)
inst_44:
    TEST_RR_OP(xnor, x14, x18, x3, 0x80000002, 0xfffffffd, 0x80000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x80000002) 
    





    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x3,signature_10_0)

 
    # Testcase 45:  rs1:x17(0xfffffffb), rs2:x2(0x40000000), result rd:x15(0x40000004)
inst_45:
    TEST_RR_OP(xnor, x15, x17, x2, 0x40000004, 0xfffffffb, 0x40000000, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x40000004) 
    
 
    # Testcase 46:  rs1:x16(0xfffffff7), rs2:x1(0x20000000), result rd:x16(0x20000008)
inst_46:
    TEST_RR_OP(xnor, x16, x16, x1, 0x20000008, 0xfffffff7, 0x20000000, x3, 4, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x20000008) 
    
 
    # Testcase 47:  rs1:x15(0xffffffef), rs2:x31(0x10000000), result rd:x17(0x10000010)
inst_47:
    TEST_RR_OP(xnor, x17, x15, x31, 0x10000010, 0xffffffef, 0x10000000, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x10000010) 
    
 
    # Testcase 48:  rs1:x14(0xffffffdf), rs2:x30(0x08000000), result rd:x18(0x08000020)
inst_48:
    TEST_RR_OP(xnor, x18, x14, x30, 0x08000020, 0xffffffdf, 0x8000000, x3, 12, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x08000020) 
    
 
    # Testcase 49:  rs1:x13(0xffffffbf), rs2:x29(0x04000000), result rd:x19(0x04000040)
inst_49:
    TEST_RR_OP(xnor, x19, x13, x29, 0x04000040, 0xffffffbf, 0x4000000, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x04000040) 
    





    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_11_0)

 
    # Testcase 50:  rs1:x12(0xffffff7f), rs2:x28(0x02000000), result rd:x20(0x02000080)
inst_50:
    TEST_RR_OP(xnor, x20, x12, x28, 0x02000080, 0xffffff7f, 0x2000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x02000080) 
    
 
    # Testcase 51:  rs1:x11(0xfffffeff), rs2:x27(0x01000000), result rd:x21(0x01000100)
inst_51:
    TEST_RR_OP(xnor, x21, x11, x27, 0x01000100, 0xfffffeff, 0x1000000, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x01000100) 
    
 
    # Testcase 52:  rs1:x10(0xfffffdff), rs2:x26(0x00800000), result rd:x22(0x00800200)
inst_52:
    TEST_RR_OP(xnor, x22, x10, x26, 0x00800200, 0xfffffdff, 0x800000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00800200) 
    
 
    # Testcase 53:  rs1:x9(0xfffffbff), rs2:x25(0x00400000), result rd:x23(0x00400400)
inst_53:
    TEST_RR_OP(xnor, x23, x9, x25, 0x00400400, 0xfffffbff, 0x400000, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00400400) 
    
 
    # Testcase 54:  rs1:x8(0xfffff7ff), rs2:x24(0x00200000), result rd:x24(0x00200800)
inst_54:
    TEST_RR_OP(xnor, x24, x8, x24, 0x00200800, 0xfffff7ff, 0x200000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00200800) 
    





    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_12_0)

 
    # Testcase 55:  rs1:x7(0xffffefff), rs2:x23(0x00100000), result rd:x25(0x00101000)
inst_55:
    TEST_RR_OP(xnor, x25, x7, x23, 0x00101000, 0xffffefff, 0x100000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00101000) 
    
 
    # Testcase 56:  rs1:x6(0xffffdfff), rs2:x22(0x00080000), result rd:x26(0x00082000)
inst_56:
    TEST_RR_OP(xnor, x26, x6, x22, 0x00082000, 0xffffdfff, 0x80000, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00082000) 
    
 
    # Testcase 57:  rs1:x5(0xffffbfff), rs2:x21(0x00040000), result rd:x27(0x00044000)
inst_57:
    TEST_RR_OP(xnor, x27, x5, x21, 0x00044000, 0xffffbfff, 0x40000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00044000) 
    
 
    # Testcase 58:  rs1:x4(0xffff7fff), rs2:x20(0x00020000), result rd:x28(0x00028000)
inst_58:
    TEST_RR_OP(xnor, x28, x4, x20, 0x00028000, 0xffff7fff, 0x20000, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x00028000) 
    
 
    # Testcase 59:  rs1:x3(0xfffeffff), rs2:x19(0x00010000), result rd:x29(0x00000000)
inst_59:
    TEST_RR_OP(xnor, x29, x3, x19, 0x00000000, 0xfffeffff, 0x10000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x00000000) 
    





    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x4,signature_13_0)

 
    # Testcase 60:  rs1:x2(0xfffdffff), rs2:x18(0x00008000), result rd:x30(0x00028000)
inst_60:
    TEST_RR_OP(xnor, x30, x2, x18, 0x00028000, 0xfffdffff, 0x8000, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x00028000) 
    
 
    # Testcase 61:  rs1:x1(0xfffbffff), rs2:x17(0x00004000), result rd:x31(0x00044000)
inst_61:
    TEST_RR_OP(xnor, x31, x1, x17, 0x00044000, 0xfffbffff, 0x4000, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x00044000) 
    
 
    # Testcase 62:  rs1:x31(0xfff7ffff), rs2:x16(0x00002000), result rd:x1(0x00082000)
inst_62:
    TEST_RR_OP(xnor, x1, x31, x16, 0x00082000, 0xfff7ffff, 0x2000, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00082000) 
    
 
    # Testcase 63:  rs1:x30(0xffefffff), rs2:x15(0x00001000), result rd:x2(0x00101000)
inst_63:
    TEST_RR_OP(xnor, x2, x30, x15, 0x00101000, 0xffefffff, 0x1000, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00101000) 
    
 
    # Testcase 64:  rs1:x29(0xffdfffff), rs2:x14(0x00000800), result rd:x3(0x00200800)
inst_64:
    TEST_RR_OP(xnor, x3, x29, x14, 0x00200800, 0xffdfffff, 0x800, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x00200800) 
    





    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_14_0)

 
    # Testcase 65:  rs1:x28(0xffbfffff), rs2:x13(0x00000400), result rd:x4(0x00400400)
inst_65:
    TEST_RR_OP(xnor, x4, x28, x13, 0x00400400, 0xffbfffff, 0x400, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00400400) 
    
 
    # Testcase 66:  rs1:x27(0xff7fffff), rs2:x12(0x00000200), result rd:x5(0x00800200)
inst_66:
    TEST_RR_OP(xnor, x5, x27, x12, 0x00800200, 0xff7fffff, 0x200, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00800200) 
    
 
    # Testcase 67:  rs1:x26(0xfeffffff), rs2:x11(0x00000100), result rd:x6(0x01000100)
inst_67:
    TEST_RR_OP(xnor, x6, x26, x11, 0x01000100, 0xfeffffff, 0x100, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x01000100) 
    
 
    # Testcase 68:  rs1:x25(0xfdffffff), rs2:x10(0x00000080), result rd:x7(0x02000080)
inst_68:
    TEST_RR_OP(xnor, x7, x25, x10, 0x02000080, 0xfdffffff, 0x80, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x02000080) 
    
 
    # Testcase 69:  rs1:x24(0xfbffffff), rs2:x9(0x00000040), result rd:x8(0x04000040)
inst_69:
    TEST_RR_OP(xnor, x8, x24, x9, 0x04000040, 0xfbffffff, 0x40, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x04000040) 
    





    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_15_0)

 
    # Testcase 70:  rs1:x23(0xf7ffffff), rs2:x8(0x00000020), result rd:x9(0x08000020)
inst_70:
    TEST_RR_OP(xnor, x9, x23, x8, 0x08000020, 0xf7ffffff, 0x20, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x08000020) 
    
 
    # Testcase 71:  rs1:x22(0xefffffff), rs2:x7(0x00000010), result rd:x10(0x10000010)
inst_71:
    TEST_RR_OP(xnor, x10, x22, x7, 0x10000010, 0xefffffff, 0x10, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x10000010) 
    
 
    # Testcase 72:  rs1:x21(0xdfffffff), rs2:x6(0x00000008), result rd:x11(0x20000008)
inst_72:
    TEST_RR_OP(xnor, x11, x21, x6, 0x20000008, 0xdfffffff, 0x8, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x20000008) 
    
 
    # Testcase 73:  rs1:x20(0xbfffffff), rs2:x5(0x00000004), result rd:x12(0x40000004)
inst_73:
    TEST_RR_OP(xnor, x12, x20, x5, 0x40000004, 0xbfffffff, 0x4, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x40000004) 
    
 
    # Testcase 74:  rs1:x19(0x7fffffff), rs2:x4(0x00000002), result rd:x13(0x80000002)
inst_74:
    TEST_RR_OP(xnor, x13, x19, x4, 0x80000002, 0x7fffffff, 0x2, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x80000002) 
    





    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x4,signature_16_0)

 
    # Testcase 75:  rs1:x18(0xffffffff), rs2:x3(0x00000001), result rd:x14(0x00000001)
inst_75:
    TEST_RR_OP(xnor, x14, x18, x3, 0x00000001, 0xffffffff, 0x1, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0x00000001) 
    
 
    # Testcase 76:  rs1:x17(0x00000001), rs2:x2(0x00000000), result rd:x15(0xfffffffe)
inst_76:
    TEST_RR_OP(xnor, x15, x17, x2, 0xfffffffe, 0x1, 0x0, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0xfffffffe) 
    
 
    # Testcase 77:  rs1:x16(0x00000002), rs2:x1(0x00000000), result rd:x16(0xfffffffd)
inst_77:
    TEST_RR_OP(xnor, x16, x16, x1, 0xfffffffd, 0x2, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0xfffffffd) 
    
 
    # Testcase 78:  rs1:x15(0x00000004), rs2:x31(0x00000000), result rd:x17(0xfffffffb)
inst_78:
    TEST_RR_OP(xnor, x17, x15, x31, 0xfffffffb, 0x4, 0x0, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0xfffffffb) 
    
 
    # Testcase 79:  rs1:x14(0x00000008), rs2:x30(0x00000000), result rd:x18(0xfffffff7)
inst_79:
    TEST_RR_OP(xnor, x18, x14, x30, 0xfffffff7, 0x8, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0xfffffff7) 
    





    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_17_0)

 
    # Testcase 80:  rs1:x13(0x00000010), rs2:x29(0x00000000), result rd:x19(0xffffffef)
inst_80:
    TEST_RR_OP(xnor, x19, x13, x29, 0xffffffef, 0x10, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xffffffef) 
    
 
    # Testcase 81:  rs1:x12(0x00000020), rs2:x28(0x00000000), result rd:x20(0xffffffdf)
inst_81:
    TEST_RR_OP(xnor, x20, x12, x28, 0xffffffdf, 0x20, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xffffffdf) 
    
 
    # Testcase 82:  rs1:x11(0x00000040), rs2:x27(0x00000000), result rd:x21(0xffffffbf)
inst_82:
    TEST_RR_OP(xnor, x21, x11, x27, 0xffffffbf, 0x40, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xffffffbf) 
    
 
    # Testcase 83:  rs1:x10(0x00000080), rs2:x26(0x00000000), result rd:x22(0xffffff7f)
inst_83:
    TEST_RR_OP(xnor, x22, x10, x26, 0xffffff7f, 0x80, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffffff7f) 
    
 
    # Testcase 84:  rs1:x9(0x00000100), rs2:x25(0x00000000), result rd:x23(0xfffffeff)
inst_84:
    TEST_RR_OP(xnor, x23, x9, x25, 0xfffffeff, 0x100, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xfffffeff) 
    





    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_18_0)

 
    # Testcase 85:  rs1:x8(0x00000200), rs2:x24(0x00000000), result rd:x24(0xfffffdff)
inst_85:
    TEST_RR_OP(xnor, x24, x8, x24, 0xfffffdff, 0x200, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xfffffdff) 
    
 
    # Testcase 86:  rs1:x7(0x00000400), rs2:x23(0x00000000), result rd:x25(0xfffffbff)
inst_86:
    TEST_RR_OP(xnor, x25, x7, x23, 0xfffffbff, 0x400, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xfffffbff) 
    
 
    # Testcase 87:  rs1:x6(0x00000800), rs2:x22(0x00000000), result rd:x26(0xfffff7ff)
inst_87:
    TEST_RR_OP(xnor, x26, x6, x22, 0xfffff7ff, 0x800, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xfffff7ff) 
    
 
    # Testcase 88:  rs1:x5(0x00001000), rs2:x21(0x00000000), result rd:x27(0xffffefff)
inst_88:
    TEST_RR_OP(xnor, x27, x5, x21, 0xffffefff, 0x1000, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffffefff) 
    
 
    # Testcase 89:  rs1:x4(0x00002000), rs2:x20(0x00000000), result rd:x28(0xffffdfff)
inst_89:
    TEST_RR_OP(xnor, x28, x4, x20, 0xffffdfff, 0x2000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xffffdfff) 
    





    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x4,signature_19_0)

 
    # Testcase 90:  rs1:x3(0x00004000), rs2:x19(0x00000000), result rd:x29(0xffffbfff)
inst_90:
    TEST_RR_OP(xnor, x29, x3, x19, 0xffffbfff, 0x4000, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0xffffbfff) 
    
 
    # Testcase 91:  rs1:x2(0x00008000), rs2:x18(0x00000000), result rd:x30(0xffff7fff)
inst_91:
    TEST_RR_OP(xnor, x30, x2, x18, 0xffff7fff, 0x8000, 0x0, x4, 4, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xffff7fff) 
    
 
    # Testcase 92:  rs1:x1(0x00010000), rs2:x17(0x00000000), result rd:x31(0xfffeffff)
inst_92:
    TEST_RR_OP(xnor, x31, x1, x17, 0xfffeffff, 0x10000, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xfffeffff) 
    
 
    # Testcase 93:  rs1:x31(0x00020000), rs2:x16(0x00000000), result rd:x1(0xfffdffff)
inst_93:
    TEST_RR_OP(xnor, x1, x31, x16, 0xfffdffff, 0x20000, 0x0, x4, 12, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xfffdffff) 
    
 
    # Testcase 94:  rs1:x30(0x00040000), rs2:x15(0x00000000), result rd:x2(0xfffbffff)
inst_94:
    TEST_RR_OP(xnor, x2, x30, x15, 0xfffbffff, 0x40000, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xfffbffff) 
    





    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_20_0)

 
    # Testcase 95:  rs1:x29(0x00080000), rs2:x14(0x00000000), result rd:x3(0xfff7ffff)
inst_95:
    TEST_RR_OP(xnor, x3, x29, x14, 0xfff7ffff, 0x80000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0xfff7ffff) 
    
 
    # Testcase 96:  rs1:x28(0x00100000), rs2:x13(0x00000000), result rd:x4(0xffefffff)
inst_96:
    TEST_RR_OP(xnor, x4, x28, x13, 0xffefffff, 0x100000, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xffefffff) 
    
 
    # Testcase 97:  rs1:x27(0x00200000), rs2:x12(0x00000000), result rd:x5(0xffdfffff)
inst_97:
    TEST_RR_OP(xnor, x5, x27, x12, 0xffdfffff, 0x200000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xffdfffff) 
    
 
    # Testcase 98:  rs1:x26(0x00400000), rs2:x11(0x00000000), result rd:x6(0xffbfffff)
inst_98:
    TEST_RR_OP(xnor, x6, x26, x11, 0xffbfffff, 0x400000, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xffbfffff) 
    
 
    # Testcase 99:  rs1:x25(0x00800000), rs2:x10(0x00000000), result rd:x7(0xff7fffff)
inst_99:
    TEST_RR_OP(xnor, x7, x25, x10, 0xff7fffff, 0x800000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xff7fffff) 
    





    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_21_0)

 
    # Testcase 100:  rs1:x24(0x01000000), rs2:x9(0x00000000), result rd:x8(0xfeffffff)
inst_100:
    TEST_RR_OP(xnor, x8, x24, x9, 0xfeffffff, 0x1000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xfeffffff) 
    
 
    # Testcase 101:  rs1:x23(0x02000000), rs2:x8(0x00000000), result rd:x9(0xfdffffff)
inst_101:
    TEST_RR_OP(xnor, x9, x23, x8, 0xfdffffff, 0x2000000, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xfdffffff) 
    
 
    # Testcase 102:  rs1:x22(0x04000000), rs2:x7(0x00000000), result rd:x10(0xfbffffff)
inst_102:
    TEST_RR_OP(xnor, x10, x22, x7, 0xfbffffff, 0x4000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xfbffffff) 
    
 
    # Testcase 103:  rs1:x21(0x08000000), rs2:x6(0x00000000), result rd:x11(0xf7ffffff)
inst_103:
    TEST_RR_OP(xnor, x11, x21, x6, 0xf7ffffff, 0x8000000, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xf7ffffff) 
    
 
    # Testcase 104:  rs1:x20(0x10000000), rs2:x5(0x00000000), result rd:x12(0xefffffff)
inst_104:
    TEST_RR_OP(xnor, x12, x20, x5, 0xefffffff, 0x10000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xefffffff) 
    





    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x5,signature_22_0)

 
    # Testcase 105:  rs1:x19(0x20000000), rs2:x4(0x00000000), result rd:x13(0xdfffffff)
inst_105:
    TEST_RR_OP(xnor, x13, x19, x4, 0xdfffffff, 0x20000000, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0xdfffffff) 
    
 
    # Testcase 106:  rs1:x18(0x40000000), rs2:x3(0x00000000), result rd:x14(0xbfffffff)
inst_106:
    TEST_RR_OP(xnor, x14, x18, x3, 0xbfffffff, 0x40000000, 0x0, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0xbfffffff) 
    
 
    # Testcase 107:  rs1:x17(0x80000000), rs2:x2(0x00000000), result rd:x15(0x7fffffff)
inst_107:
    TEST_RR_OP(xnor, x15, x17, x2, 0x7fffffff, 0x80000000, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x7fffffff) 
    
 
    # Testcase 108:  rs1:x16(0x00000000), rs2:x1(0x00000000), result rd:x16(0xffffffff)
inst_108:
    TEST_RR_OP(xnor, x16, x16, x1, 0xffffffff, 0x0, 0x0, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0xffffffff) 
    
 
    # Testcase 109:  rs1:x15(0xfffffffe), rs2:x31(0x00000000), result rd:x17(0x00000001)
inst_109:
    TEST_RR_OP(xnor, x17, x15, x31, 0x00000001, 0xfffffffe, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0x00000001) 
    





    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_23_0)

 
    # Testcase 110:  rs1:x14(0xfffffffd), rs2:x30(0x00000000), result rd:x18(0x00000002)
inst_110:
    TEST_RR_OP(xnor, x18, x14, x30, 0x00000002, 0xfffffffd, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x00000002) 
    
 
    # Testcase 111:  rs1:x13(0xfffffffb), rs2:x29(0x00000000), result rd:x19(0x00000004)
inst_111:
    TEST_RR_OP(xnor, x19, x13, x29, 0x00000004, 0xfffffffb, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x00000004) 
    
 
    # Testcase 112:  rs1:x12(0xfffffff7), rs2:x28(0x00000000), result rd:x20(0x00000008)
inst_112:
    TEST_RR_OP(xnor, x20, x12, x28, 0x00000008, 0xfffffff7, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00000008) 
    
 
    # Testcase 113:  rs1:x11(0xffffffef), rs2:x27(0x00000000), result rd:x21(0x00000010)
inst_113:
    TEST_RR_OP(xnor, x21, x11, x27, 0x00000010, 0xffffffef, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000010) 
    
 
    # Testcase 114:  rs1:x10(0xffffffdf), rs2:x26(0x00000000), result rd:x22(0x00000020)
inst_114:
    TEST_RR_OP(xnor, x22, x10, x26, 0x00000020, 0xffffffdf, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000020) 
    





    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_24_0)

 
    # Testcase 115:  rs1:x9(0xffffffbf), rs2:x25(0x00000000), result rd:x23(0x00000040)
inst_115:
    TEST_RR_OP(xnor, x23, x9, x25, 0x00000040, 0xffffffbf, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000040) 
    
 
    # Testcase 116:  rs1:x8(0xffffff7f), rs2:x24(0x00000000), result rd:x24(0x00000080)
inst_116:
    TEST_RR_OP(xnor, x24, x8, x24, 0x00000080, 0xffffff7f, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00000080) 
    
 
    # Testcase 117:  rs1:x7(0xfffffeff), rs2:x23(0x00000000), result rd:x25(0x00000100)
inst_117:
    TEST_RR_OP(xnor, x25, x7, x23, 0x00000100, 0xfffffeff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000100) 
    
 
    # Testcase 118:  rs1:x6(0xfffffdff), rs2:x22(0x00000000), result rd:x26(0x00000200)
inst_118:
    TEST_RR_OP(xnor, x26, x6, x22, 0x00000200, 0xfffffdff, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00000200) 
    
 
    # Testcase 119:  rs1:x5(0xfffffbff), rs2:x21(0x00000000), result rd:x27(0x00000400)
inst_119:
    TEST_RR_OP(xnor, x27, x5, x21, 0x00000400, 0xfffffbff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00000400) 
    





    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x5,signature_25_0)

 
    # Testcase 120:  rs1:x4(0xfffff7ff), rs2:x20(0x00000000), result rd:x28(0x00000800)
inst_120:
    TEST_RR_OP(xnor, x28, x4, x20, 0x00000800, 0xfffff7ff, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0x00000800) 
    
 
    # Testcase 121:  rs1:x3(0xffffefff), rs2:x19(0x00000000), result rd:x29(0x00001000)
inst_121:
    TEST_RR_OP(xnor, x29, x3, x19, 0x00001000, 0xffffefff, 0x0, x5, 4, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0x00001000) 
    
 
    # Testcase 122:  rs1:x2(0xffffdfff), rs2:x18(0x00000000), result rd:x30(0x00002000)
inst_122:
    TEST_RR_OP(xnor, x30, x2, x18, 0x00002000, 0xffffdfff, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0x00002000) 
    
 
    # Testcase 123:  rs1:x1(0xffffbfff), rs2:x17(0x00000000), result rd:x31(0x00004000)
inst_123:
    TEST_RR_OP(xnor, x31, x1, x17, 0x00004000, 0xffffbfff, 0x0, x5, 12, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x00004000) 
    
 
    # Testcase 124:  rs1:x31(0xffff7fff), rs2:x16(0x00000000), result rd:x1(0x00008000)
inst_124:
    TEST_RR_OP(xnor, x1, x31, x16, 0x00008000, 0xffff7fff, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x00008000) 
    





    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_26_0)

 
    # Testcase 125:  rs1:x30(0xfffeffff), rs2:x15(0x00000000), result rd:x2(0x00010000)
inst_125:
    TEST_RR_OP(xnor, x2, x30, x15, 0x00010000, 0xfffeffff, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x00010000) 
    
 
    # Testcase 126:  rs1:x29(0xfffdffff), rs2:x14(0x00000000), result rd:x3(0x00020000)
inst_126:
    TEST_RR_OP(xnor, x3, x29, x14, 0x00020000, 0xfffdffff, 0x0, x1, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x00020000) 
    
 
    # Testcase 127:  rs1:x28(0xfffbffff), rs2:x13(0x00000000), result rd:x4(0x00040000)
inst_127:
    TEST_RR_OP(xnor, x4, x28, x13, 0x00040000, 0xfffbffff, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x00040000) 
    
 
    # Testcase 128:  rs1:x27(0xfff7ffff), rs2:x12(0x00000000), result rd:x5(0x00080000)
inst_128:
    TEST_RR_OP(xnor, x5, x27, x12, 0x00080000, 0xfff7ffff, 0x0, x1, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x00080000) 
    
 
    # Testcase 129:  rs1:x26(0xffefffff), rs2:x11(0x00000000), result rd:x6(0x00100000)
inst_129:
    TEST_RR_OP(xnor, x6, x26, x11, 0x00100000, 0xffefffff, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0x00100000) 
    





    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_27_0)

 
    # Testcase 130:  rs1:x25(0xffdfffff), rs2:x10(0x00000000), result rd:x7(0x00200000)
inst_130:
    TEST_RR_OP(xnor, x7, x25, x10, 0x00200000, 0xffdfffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00200000) 
    
 
    # Testcase 131:  rs1:x24(0xffbfffff), rs2:x9(0x00000000), result rd:x8(0x00400000)
inst_131:
    TEST_RR_OP(xnor, x8, x24, x9, 0x00400000, 0xffbfffff, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00400000) 
    
 
    # Testcase 132:  rs1:x23(0xff7fffff), rs2:x8(0x00000000), result rd:x9(0x00800000)
inst_132:
    TEST_RR_OP(xnor, x9, x23, x8, 0x00800000, 0xff7fffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00800000) 
    
 
    # Testcase 133:  rs1:x22(0xfeffffff), rs2:x7(0x00000000), result rd:x10(0x01000000)
inst_133:
    TEST_RR_OP(xnor, x10, x22, x7, 0x01000000, 0xfeffffff, 0x0, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x01000000) 
    
 
    # Testcase 134:  rs1:x21(0xfdffffff), rs2:x6(0x00000000), result rd:x11(0x02000000)
inst_134:
    TEST_RR_OP(xnor, x11, x21, x6, 0x02000000, 0xfdffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x02000000) 
    





    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x6,signature_28_0)

 
    # Testcase 135:  rs1:x20(0xfbffffff), rs2:x5(0x00000000), result rd:x12(0x04000000)
inst_135:
    TEST_RR_OP(xnor, x12, x20, x5, 0x04000000, 0xfbffffff, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x04000000) 
    
 
    # Testcase 136:  rs1:x19(0xf7ffffff), rs2:x4(0x00000000), result rd:x13(0x08000000)
inst_136:
    TEST_RR_OP(xnor, x13, x19, x4, 0x08000000, 0xf7ffffff, 0x0, x6, 4, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x08000000) 
    
 
    # Testcase 137:  rs1:x18(0xefffffff), rs2:x3(0x00000000), result rd:x14(0x10000000)
inst_137:
    TEST_RR_OP(xnor, x14, x18, x3, 0x10000000, 0xefffffff, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x10000000) 
    
 
    # Testcase 138:  rs1:x17(0xdfffffff), rs2:x2(0x00000000), result rd:x15(0x20000000)
inst_138:
    TEST_RR_OP(xnor, x15, x17, x2, 0x20000000, 0xdfffffff, 0x0, x6, 12, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x20000000) 
    
 
    # Testcase 139:  rs1:x16(0xbfffffff), rs2:x1(0x00000000), result rd:x16(0x40000000)
inst_139:
    TEST_RR_OP(xnor, x16, x16, x1, 0x40000000, 0xbfffffff, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0x40000000) 
    





    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_29_0)

 
    # Testcase 140:  rs1:x15(0x7fffffff), rs2:x31(0x00000000), result rd:x17(0x80000000)
inst_140:
    TEST_RR_OP(xnor, x17, x15, x31, 0x80000000, 0x7fffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x80000000) 
    
 
    # Testcase 141:  rs1:x14(0xffffffff), rs2:x30(0x00000000), result rd:x18(0x00000000)
inst_141:
    TEST_RR_OP(xnor, x18, x14, x30, 0x00000000, 0xffffffff, 0x0, x1, 4, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x00000000) 
    
 
    # Testcase 142:  rs1:x29(0x10fd3dedadea5195), rs2:x29(0xdf7f3844121bcc23), result rd:x19(0xffffffff)
inst_142:
    TEST_RR_OP(xnor, x19, x29, x29, 0xffffffff, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xffffffff) 
    
 
    # Testcase 143:  rs1:x12(0xbd295ce2d2ffbec1), rs2:x28(0xf5adb41aa47d105b), result rd:x0(0x00000000)
inst_143:
    TEST_RR_OP(xnor, x0, x12, x28, 0x00000000, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x1, 12, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x00000000) 
    
 
    # Testcase 144:  rs1:x11(0xc9649f05a8e1a8bb), rs2:x0(0x82f6747f707af2c0), result rd:x21(0x571e5744)
inst_144:
    TEST_RR_OP(xnor, x21, x11, x0, 0x571e5744, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x571e5744) 
    





    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",xnor)
	RVTEST_SIGBASE(x1,signature_30_0)

 
    # Testcase 145:  rs1:x0(0x3541291848c99fcb), rs2:x26(0x73a92fd4e19bfbc3), result rd:x22(0x1e64043c)
inst_145:
    TEST_RR_OP(xnor, x22, x0, x26, 0x1e64043c, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x1e64043c) 
    


	
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

