// RISC-V Architectural Validation Test SHA256SIG1-01
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
// Description: Testing instruction 'sha256sig1'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV32IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1


    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x6,signature_1_0)

 
 inst_0:
    // Test 0:  Test with random values
    // result rd:x1(0x62d319dc), rs1:x31(0xadea5195)
    li  x31, 0xadea5195
    sha256sig1 x1, x31
    sw x1, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x62d319dc)
 
 inst_1:
    // Test 1:  Test with random values
    // result rd:x2(0x288c6ccf), rs1:x30(0xd2ffbec1)
    li  x30, 0xd2ffbec1
    sha256sig1 x2, x30
    sw x2, 4(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x288c6ccf)
 
 inst_2:
    // Test 2:  Test with random values
    // result rd:x3(0xe1609906), rs1:x29(0xa8e1a8bb)
    li  x29, 0xa8e1a8bb
    sha256sig1 x3, x29
    sw x3, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xe1609906)
 
 inst_3:
    // Test 3:  Test with random values
    // result rd:x4(0xfc0eff1a), rs1:x28(0x48c99fcb)
    li  x28, 0x48c99fcb
    sha256sig1 x4, x28
    sw x4, 12(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xfc0eff1a)
 
 inst_4:
    // Test 4:  Test with random values
    // result rd:x5(0x037fcc99), rs1:x27(0x461d524f)
    li  x27, 0x461d524f
    sha256sig1 x5, x27
    sw x5, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x037fcc99)


    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_2_0)

 
 inst_5:
    // Test 5:  Test with random values
    // result rd:x6(0x4a56e190), rs1:x26(0x528a10af)
    li  x26, 0x528a10af
    sha256sig1 x6, x26
    sw x6, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x4a56e190)
 
 inst_6:
    // Test 6:  Test with random values
    // result rd:x7(0x82a1ea00), rs1:x25(0xe19bfbc3)
    li  x25, 0xe19bfbc3
    sha256sig1 x7, x25
    sw x7, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x82a1ea00)
 
 inst_7:
    // Test 7:  Test with random values
    // result rd:x8(0x2724288e), rs1:x24(0x707af2c0)
    li  x24, 0x707af2c0
    sha256sig1 x8, x24
    sw x8, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x2724288e)
 
 inst_8:
    // Test 8:  Test with random values
    // result rd:x9(0x2a0fb9f5), rs1:x23(0xa47d105b)
    li  x23, 0xa47d105b
    sha256sig1 x9, x23
    sw x9, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x2a0fb9f5)
 
 inst_9:
    // Test 9:  Test with random values
    // result rd:x10(0x9f916dbd), rs1:x22(0x121bcc23)
    li  x22, 0x121bcc23
    sha256sig1 x10, x22
    sw x10, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x9f916dbd)


    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_3_0)

 
 inst_10:
    // Test 10:  Test with marching zeros/ones
    // result rd:x11(0x0000a000), rs1:x21(0x00000001)
    li  x21, 0x1
    sha256sig1 x11, x21
    sw x11, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x0000a000)
 
 inst_11:
    // Test 11:  Test with marching zeros/ones
    // result rd:x12(0x00014000), rs1:x20(0x00000002)
    li  x20, 0x2
    sha256sig1 x12, x20
    sw x12, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x00014000)
 
 inst_12:
    // Test 12:  Test with marching zeros/ones
    // result rd:x13(0x00028000), rs1:x19(0x00000004)
    li  x19, 0x4
    sha256sig1 x13, x19
    sw x13, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x00028000)
 
 inst_13:
    // Test 13:  Test with marching zeros/ones
    // result rd:x14(0x00050000), rs1:x18(0x00000008)
    li  x18, 0x8
    sha256sig1 x14, x18
    sw x14, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x00050000)
 
 inst_14:
    // Test 14:  Test with marching zeros/ones
    // result rd:x15(0x000a0000), rs1:x17(0x00000010)
    li  x17, 0x10
    sha256sig1 x15, x17
    sw x15, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x000a0000)


    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x2,signature_4_0)

 
 inst_15:
    // Test 15:  Test with marching zeros/ones
    // result rd:x16(0x00140000), rs1:x16(0x00000020)
    li  x16, 0x20
    sha256sig1 x16, x16
    sw x16, 0(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x00140000)
 
 inst_16:
    // Test 16:  Test with marching zeros/ones
    // result rd:x17(0x00280000), rs1:x15(0x00000040)
    li  x15, 0x40
    sha256sig1 x17, x15
    sw x17, 4(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x00280000)
 
 inst_17:
    // Test 17:  Test with marching zeros/ones
    // result rd:x18(0x00500000), rs1:x14(0x00000080)
    li  x14, 0x80
    sha256sig1 x18, x14
    sw x18, 8(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x00500000)
 
 inst_18:
    // Test 18:  Test with marching zeros/ones
    // result rd:x19(0x00a00000), rs1:x13(0x00000100)
    li  x13, 0x100
    sha256sig1 x19, x13
    sw x19, 12(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x00a00000)
 
 inst_19:
    // Test 19:  Test with marching zeros/ones
    // result rd:x20(0x01400000), rs1:x12(0x00000200)
    li  x12, 0x200
    sha256sig1 x20, x12
    sw x20, 16(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x01400000)


    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_5_0)

 
 inst_20:
    // Test 20:  Test with marching zeros/ones
    // result rd:x21(0x02800001), rs1:x11(0x00000400)
    li  x11, 0x400
    sha256sig1 x21, x11
    sw x21, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x02800001)
 
 inst_21:
    // Test 21:  Test with marching zeros/ones
    // result rd:x22(0x05000002), rs1:x10(0x00000800)
    li  x10, 0x800
    sha256sig1 x22, x10
    sw x22, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x05000002)
 
 inst_22:
    // Test 22:  Test with marching zeros/ones
    // result rd:x23(0x0a000004), rs1:x9(0x00001000)
    li  x9, 0x1000
    sha256sig1 x23, x9
    sw x23, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0a000004)
 
 inst_23:
    // Test 23:  Test with marching zeros/ones
    // result rd:x24(0x14000008), rs1:x8(0x00002000)
    li  x8, 0x2000
    sha256sig1 x24, x8
    sw x24, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x14000008)
 
 inst_24:
    // Test 24:  Test with marching zeros/ones
    // result rd:x25(0x28000010), rs1:x7(0x00004000)
    li  x7, 0x4000
    sha256sig1 x25, x7
    sw x25, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x28000010)


    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_6_0)

 
 inst_25:
    // Test 25:  Test with marching zeros/ones
    // result rd:x26(0x50000020), rs1:x6(0x00008000)
    li  x6, 0x8000
    sha256sig1 x26, x6
    sw x26, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x50000020)
 
 inst_26:
    // Test 26:  Test with marching zeros/ones
    // result rd:x27(0xa0000040), rs1:x5(0x00010000)
    li  x5, 0x10000
    sha256sig1 x27, x5
    sw x27, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0xa0000040)
 
 inst_27:
    // Test 27:  Test with marching zeros/ones
    // result rd:x28(0x40000081), rs1:x4(0x00020000)
    li  x4, 0x20000
    sha256sig1 x28, x4
    sw x28, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x40000081)
 
 inst_28:
    // Test 28:  Test with marching zeros/ones
    // result rd:x29(0x80000102), rs1:x3(0x00040000)
    li  x3, 0x40000
    sha256sig1 x29, x3
    sw x29, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x80000102)
 
 inst_29:
    // Test 29:  Test with marching zeros/ones
    // result rd:x30(0x00000205), rs1:x2(0x00080000)
    li  x2, 0x80000
    sha256sig1 x30, x2
    sw x30, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x00000205)


    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x5,signature_7_0)

 
 inst_30:
    // Test 30:  Test with marching zeros/ones
    // result rd:x31(0x0000040a), rs1:x1(0x00100000)
    li  x1, 0x100000
    sha256sig1 x31, x1
    sw x31, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x0000040a)
 
 inst_31:
    // Test 31:  Test with marching zeros/ones
    // result rd:x1(0x00000814), rs1:x31(0x00200000)
    li  x31, 0x200000
    sha256sig1 x1, x31
    sw x1, 4(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x00000814)
 
 inst_32:
    // Test 32:  Test with marching zeros/ones
    // result rd:x2(0x00001028), rs1:x30(0x00400000)
    li  x30, 0x400000
    sha256sig1 x2, x30
    sw x2, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x00001028)
 
 inst_33:
    // Test 33:  Test with marching zeros/ones
    // result rd:x3(0x00002050), rs1:x29(0x00800000)
    li  x29, 0x800000
    sha256sig1 x3, x29
    sw x3, 12(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x00002050)
 
 inst_34:
    // Test 34:  Test with marching zeros/ones
    // result rd:x4(0x000040a0), rs1:x28(0x01000000)
    li  x28, 0x1000000
    sha256sig1 x4, x28
    sw x4, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x000040a0)


    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_8_0)

 
 inst_35:
    // Test 35:  Test with marching zeros/ones
    // result rd:x5(0x00008140), rs1:x27(0x02000000)
    li  x27, 0x2000000
    sha256sig1 x5, x27
    sw x5, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00008140)
 
 inst_36:
    // Test 36:  Test with marching zeros/ones
    // result rd:x6(0x00010280), rs1:x26(0x04000000)
    li  x26, 0x4000000
    sha256sig1 x6, x26
    sw x6, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00010280)
 
 inst_37:
    // Test 37:  Test with marching zeros/ones
    // result rd:x7(0x00020500), rs1:x25(0x08000000)
    li  x25, 0x8000000
    sha256sig1 x7, x25
    sw x7, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00020500)
 
 inst_38:
    // Test 38:  Test with marching zeros/ones
    // result rd:x8(0x00040a00), rs1:x24(0x10000000)
    li  x24, 0x10000000
    sha256sig1 x8, x24
    sw x8, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00040a00)
 
 inst_39:
    // Test 39:  Test with marching zeros/ones
    // result rd:x9(0x00081400), rs1:x23(0x20000000)
    li  x23, 0x20000000
    sha256sig1 x9, x23
    sw x9, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00081400)


    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_9_0)

 
 inst_40:
    // Test 40:  Test with marching zeros/ones
    // result rd:x10(0x00102800), rs1:x22(0x40000000)
    li  x22, 0x40000000
    sha256sig1 x10, x22
    sw x10, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00102800)
 
 inst_41:
    // Test 41:  Test with marching zeros/ones
    // result rd:x11(0x00205000), rs1:x21(0x80000000)
    li  x21, 0x80000000
    sha256sig1 x11, x21
    sw x11, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00205000)
 
 inst_42:
    // Test 42:  Test with marching zeros/ones
    // result rd:x12(0x00000000), rs1:x20(0x00000000)
    li  x20, 0x0
    sha256sig1 x12, x20
    sw x12, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000)
 
 inst_43:
    // Test 43:  Test with marching zeros/ones
    // result rd:x13(0x003f5fff), rs1:x19(0xfffffffe)
    li  x19, 0xfffffffe
    sha256sig1 x13, x19
    sw x13, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x003f5fff)
 
 inst_44:
    // Test 44:  Test with marching zeros/ones
    // result rd:x14(0x003ebfff), rs1:x18(0xfffffffd)
    li  x18, 0xfffffffd
    sha256sig1 x14, x18
    sw x14, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x003ebfff)


    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x3,signature_10_0)

 
 inst_45:
    // Test 45:  Test with marching zeros/ones
    // result rd:x15(0x003d7fff), rs1:x17(0xfffffffb)
    li  x17, 0xfffffffb
    sha256sig1 x15, x17
    sw x15, 0(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x003d7fff)
 
 inst_46:
    // Test 46:  Test with marching zeros/ones
    // result rd:x16(0x003affff), rs1:x16(0xfffffff7)
    li  x16, 0xfffffff7
    sha256sig1 x16, x16
    sw x16, 4(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x003affff)
 
 inst_47:
    // Test 47:  Test with marching zeros/ones
    // result rd:x17(0x0035ffff), rs1:x15(0xffffffef)
    li  x15, 0xffffffef
    sha256sig1 x17, x15
    sw x17, 8(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x0035ffff)
 
 inst_48:
    // Test 48:  Test with marching zeros/ones
    // result rd:x18(0x002bffff), rs1:x14(0xffffffdf)
    li  x14, 0xffffffdf
    sha256sig1 x18, x14
    sw x18, 12(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x002bffff)
 
 inst_49:
    // Test 49:  Test with marching zeros/ones
    // result rd:x19(0x0017ffff), rs1:x13(0xffffffbf)
    li  x13, 0xffffffbf
    sha256sig1 x19, x13
    sw x19, 16(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x0017ffff)


    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_11_0)

 
 inst_50:
    // Test 50:  Test with marching zeros/ones
    // result rd:x20(0x006fffff), rs1:x12(0xffffff7f)
    li  x12, 0xffffff7f
    sha256sig1 x20, x12
    sw x20, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x006fffff)
 
 inst_51:
    // Test 51:  Test with marching zeros/ones
    // result rd:x21(0x009fffff), rs1:x11(0xfffffeff)
    li  x11, 0xfffffeff
    sha256sig1 x21, x11
    sw x21, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x009fffff)
 
 inst_52:
    // Test 52:  Test with marching zeros/ones
    // result rd:x22(0x017fffff), rs1:x10(0xfffffdff)
    li  x10, 0xfffffdff
    sha256sig1 x22, x10
    sw x22, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x017fffff)
 
 inst_53:
    // Test 53:  Test with marching zeros/ones
    // result rd:x23(0x02bffffe), rs1:x9(0xfffffbff)
    li  x9, 0xfffffbff
    sha256sig1 x23, x9
    sw x23, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x02bffffe)
 
 inst_54:
    // Test 54:  Test with marching zeros/ones
    // result rd:x24(0x053ffffd), rs1:x8(0xfffff7ff)
    li  x8, 0xfffff7ff
    sha256sig1 x24, x8
    sw x24, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x053ffffd)


    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_12_0)

 
 inst_55:
    // Test 55:  Test with marching zeros/ones
    // result rd:x25(0x0a3ffffb), rs1:x7(0xffffefff)
    li  x7, 0xffffefff
    sha256sig1 x25, x7
    sw x25, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0a3ffffb)
 
 inst_56:
    // Test 56:  Test with marching zeros/ones
    // result rd:x26(0x143ffff7), rs1:x6(0xffffdfff)
    li  x6, 0xffffdfff
    sha256sig1 x26, x6
    sw x26, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x143ffff7)
 
 inst_57:
    // Test 57:  Test with marching zeros/ones
    // result rd:x27(0x283fffef), rs1:x5(0xffffbfff)
    li  x5, 0xffffbfff
    sha256sig1 x27, x5
    sw x27, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x283fffef)
 
 inst_58:
    // Test 58:  Test with marching zeros/ones
    // result rd:x28(0x503fffdf), rs1:x4(0xffff7fff)
    li  x4, 0xffff7fff
    sha256sig1 x28, x4
    sw x28, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x503fffdf)
 
 inst_59:
    // Test 59:  Test with marching zeros/ones
    // result rd:x29(0xa03fffbf), rs1:x3(0xfffeffff)
    li  x3, 0xfffeffff
    sha256sig1 x29, x3
    sw x29, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0xa03fffbf)


    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x4,signature_13_0)

 
 inst_60:
    // Test 60:  Test with marching zeros/ones
    // result rd:x30(0x403fff7e), rs1:x2(0xfffdffff)
    li  x2, 0xfffdffff
    sha256sig1 x30, x2
    sw x30, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x403fff7e)
 
 inst_61:
    // Test 61:  Test with marching zeros/ones
    // result rd:x31(0x803ffefd), rs1:x1(0xfffbffff)
    li  x1, 0xfffbffff
    sha256sig1 x31, x1
    sw x31, 4(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x803ffefd)
 
 inst_62:
    // Test 62:  Test with marching zeros/ones
    // result rd:x1(0x003ffdfa), rs1:x31(0xfff7ffff)
    li  x31, 0xfff7ffff
    sha256sig1 x1, x31
    sw x1, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x003ffdfa)
 
 inst_63:
    // Test 63:  Test with marching zeros/ones
    // result rd:x2(0x003ffbf5), rs1:x30(0xffefffff)
    li  x30, 0xffefffff
    sha256sig1 x2, x30
    sw x2, 12(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x003ffbf5)
 
 inst_64:
    // Test 64:  Test with marching zeros/ones
    // result rd:x3(0x003ff7eb), rs1:x29(0xffdfffff)
    li  x29, 0xffdfffff
    sha256sig1 x3, x29
    sw x3, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x003ff7eb)


    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_14_0)

 
 inst_65:
    // Test 65:  Test with marching zeros/ones
    // result rd:x4(0x003fefd7), rs1:x28(0xffbfffff)
    li  x28, 0xffbfffff
    sha256sig1 x4, x28
    sw x4, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x003fefd7)
 
 inst_66:
    // Test 66:  Test with marching zeros/ones
    // result rd:x5(0x003fdfaf), rs1:x27(0xff7fffff)
    li  x27, 0xff7fffff
    sha256sig1 x5, x27
    sw x5, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x003fdfaf)
 
 inst_67:
    // Test 67:  Test with marching zeros/ones
    // result rd:x6(0x003fbf5f), rs1:x26(0xfeffffff)
    li  x26, 0xfeffffff
    sha256sig1 x6, x26
    sw x6, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x003fbf5f)
 
 inst_68:
    // Test 68:  Test with marching zeros/ones
    // result rd:x7(0x003f7ebf), rs1:x25(0xfdffffff)
    li  x25, 0xfdffffff
    sha256sig1 x7, x25
    sw x7, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x003f7ebf)
 
 inst_69:
    // Test 69:  Test with marching zeros/ones
    // result rd:x8(0x003efd7f), rs1:x24(0xfbffffff)
    li  x24, 0xfbffffff
    sha256sig1 x8, x24
    sw x8, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x003efd7f)


    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_15_0)

 
 inst_70:
    // Test 70:  Test with marching zeros/ones
    // result rd:x9(0x003dfaff), rs1:x23(0xf7ffffff)
    li  x23, 0xf7ffffff
    sha256sig1 x9, x23
    sw x9, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x003dfaff)
 
 inst_71:
    // Test 71:  Test with marching zeros/ones
    // result rd:x10(0x003bf5ff), rs1:x22(0xefffffff)
    li  x22, 0xefffffff
    sha256sig1 x10, x22
    sw x10, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x003bf5ff)
 
 inst_72:
    // Test 72:  Test with marching zeros/ones
    // result rd:x11(0x0037ebff), rs1:x21(0xdfffffff)
    li  x21, 0xdfffffff
    sha256sig1 x11, x21
    sw x11, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0037ebff)
 
 inst_73:
    // Test 73:  Test with marching zeros/ones
    // result rd:x12(0x002fd7ff), rs1:x20(0xbfffffff)
    li  x20, 0xbfffffff
    sha256sig1 x12, x20
    sw x12, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x002fd7ff)
 
 inst_74:
    // Test 74:  Test with marching zeros/ones
    // result rd:x13(0x001fafff), rs1:x19(0x7fffffff)
    li  x19, 0x7fffffff
    sha256sig1 x13, x19
    sw x13, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x001fafff)


    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x4,signature_16_0)

 
 inst_75:
    // Test 75:  Test with marching zeros/ones
    // result rd:x14(0x003fffff), rs1:x18(0xffffffff)
    li  x18, 0xffffffff
    sha256sig1 x14, x18
    sw x14, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0x003fffff)
 
 inst_76:
    // Test 76:  Test with marching zeros/ones
    // result rd:x15(0x0000a000), rs1:x17(0x00000001)
    li  x17, 0x1
    sha256sig1 x15, x17
    sw x15, 4(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x0000a000)
 
 inst_77:
    // Test 77:  Test with marching zeros/ones
    // result rd:x16(0x00014000), rs1:x16(0x00000002)
    li  x16, 0x2
    sha256sig1 x16, x16
    sw x16, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x00014000)
 
 inst_78:
    // Test 78:  Test with marching zeros/ones
    // result rd:x17(0x00028000), rs1:x15(0x00000004)
    li  x15, 0x4
    sha256sig1 x17, x15
    sw x17, 12(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x00028000)
 
 inst_79:
    // Test 79:  Test with marching zeros/ones
    // result rd:x18(0x00050000), rs1:x14(0x00000008)
    li  x14, 0x8
    sha256sig1 x18, x14
    sw x18, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x00050000)


    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_17_0)

 
 inst_80:
    // Test 80:  Test with marching zeros/ones
    // result rd:x19(0x000a0000), rs1:x13(0x00000010)
    li  x13, 0x10
    sha256sig1 x19, x13
    sw x19, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x000a0000)
 
 inst_81:
    // Test 81:  Test with marching zeros/ones
    // result rd:x20(0x00140000), rs1:x12(0x00000020)
    li  x12, 0x20
    sha256sig1 x20, x12
    sw x20, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00140000)
 
 inst_82:
    // Test 82:  Test with marching zeros/ones
    // result rd:x21(0x00280000), rs1:x11(0x00000040)
    li  x11, 0x40
    sha256sig1 x21, x11
    sw x21, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00280000)
 
 inst_83:
    // Test 83:  Test with marching zeros/ones
    // result rd:x22(0x00500000), rs1:x10(0x00000080)
    li  x10, 0x80
    sha256sig1 x22, x10
    sw x22, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00500000)
 
 inst_84:
    // Test 84:  Test with marching zeros/ones
    // result rd:x23(0x00a00000), rs1:x9(0x00000100)
    li  x9, 0x100
    sha256sig1 x23, x9
    sw x23, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00a00000)


    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_18_0)

 
 inst_85:
    // Test 85:  Test with marching zeros/ones
    // result rd:x24(0x01400000), rs1:x8(0x00000200)
    li  x8, 0x200
    sha256sig1 x24, x8
    sw x24, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x01400000)
 
 inst_86:
    // Test 86:  Test with marching zeros/ones
    // result rd:x25(0x02800001), rs1:x7(0x00000400)
    li  x7, 0x400
    sha256sig1 x25, x7
    sw x25, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x02800001)
 
 inst_87:
    // Test 87:  Test with marching zeros/ones
    // result rd:x26(0x05000002), rs1:x6(0x00000800)
    li  x6, 0x800
    sha256sig1 x26, x6
    sw x26, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x05000002)
 
 inst_88:
    // Test 88:  Test with marching zeros/ones
    // result rd:x27(0x0a000004), rs1:x5(0x00001000)
    li  x5, 0x1000
    sha256sig1 x27, x5
    sw x27, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x0a000004)
 
 inst_89:
    // Test 89:  Test with marching zeros/ones
    // result rd:x28(0x14000008), rs1:x4(0x00002000)
    li  x4, 0x2000
    sha256sig1 x28, x4
    sw x28, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x14000008)


    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x4,signature_19_0)

 
 inst_90:
    // Test 90:  Test with marching zeros/ones
    // result rd:x29(0x28000010), rs1:x3(0x00004000)
    li  x3, 0x4000
    sha256sig1 x29, x3
    sw x29, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x28000010)
 
 inst_91:
    // Test 91:  Test with marching zeros/ones
    // result rd:x30(0x50000020), rs1:x2(0x00008000)
    li  x2, 0x8000
    sha256sig1 x30, x2
    sw x30, 4(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x50000020)
 
 inst_92:
    // Test 92:  Test with marching zeros/ones
    // result rd:x31(0xa0000040), rs1:x1(0x00010000)
    li  x1, 0x10000
    sha256sig1 x31, x1
    sw x31, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xa0000040)
 
 inst_93:
    // Test 93:  Test with marching zeros/ones
    // result rd:x1(0x40000081), rs1:x31(0x00020000)
    li  x31, 0x20000
    sha256sig1 x1, x31
    sw x1, 12(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x40000081)
 
 inst_94:
    // Test 94:  Test with marching zeros/ones
    // result rd:x2(0x80000102), rs1:x30(0x00040000)
    li  x30, 0x40000
    sha256sig1 x2, x30
    sw x2, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x80000102)


    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_20_0)

 
 inst_95:
    // Test 95:  Test with marching zeros/ones
    // result rd:x3(0x00000205), rs1:x29(0x00080000)
    li  x29, 0x80000
    sha256sig1 x3, x29
    sw x3, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x00000205)
 
 inst_96:
    // Test 96:  Test with marching zeros/ones
    // result rd:x4(0x0000040a), rs1:x28(0x00100000)
    li  x28, 0x100000
    sha256sig1 x4, x28
    sw x4, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x0000040a)
 
 inst_97:
    // Test 97:  Test with marching zeros/ones
    // result rd:x5(0x00000814), rs1:x27(0x00200000)
    li  x27, 0x200000
    sha256sig1 x5, x27
    sw x5, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00000814)
 
 inst_98:
    // Test 98:  Test with marching zeros/ones
    // result rd:x6(0x00001028), rs1:x26(0x00400000)
    li  x26, 0x400000
    sha256sig1 x6, x26
    sw x6, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00001028)
 
 inst_99:
    // Test 99:  Test with marching zeros/ones
    // result rd:x7(0x00002050), rs1:x25(0x00800000)
    li  x25, 0x800000
    sha256sig1 x7, x25
    sw x7, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00002050)


    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_21_0)

 
 inst_100:
    // Test 100:  Test with marching zeros/ones
    // result rd:x8(0x000040a0), rs1:x24(0x01000000)
    li  x24, 0x1000000
    sha256sig1 x8, x24
    sw x8, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x000040a0)
 
 inst_101:
    // Test 101:  Test with marching zeros/ones
    // result rd:x9(0x00008140), rs1:x23(0x02000000)
    li  x23, 0x2000000
    sha256sig1 x9, x23
    sw x9, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00008140)
 
 inst_102:
    // Test 102:  Test with marching zeros/ones
    // result rd:x10(0x00010280), rs1:x22(0x04000000)
    li  x22, 0x4000000
    sha256sig1 x10, x22
    sw x10, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00010280)
 
 inst_103:
    // Test 103:  Test with marching zeros/ones
    // result rd:x11(0x00020500), rs1:x21(0x08000000)
    li  x21, 0x8000000
    sha256sig1 x11, x21
    sw x11, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00020500)
 
 inst_104:
    // Test 104:  Test with marching zeros/ones
    // result rd:x12(0x00040a00), rs1:x20(0x10000000)
    li  x20, 0x10000000
    sha256sig1 x12, x20
    sw x12, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00040a00)


    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x5,signature_22_0)

 
 inst_105:
    // Test 105:  Test with marching zeros/ones
    // result rd:x13(0x00081400), rs1:x19(0x20000000)
    li  x19, 0x20000000
    sha256sig1 x13, x19
    sw x13, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x00081400)
 
 inst_106:
    // Test 106:  Test with marching zeros/ones
    // result rd:x14(0x00102800), rs1:x18(0x40000000)
    li  x18, 0x40000000
    sha256sig1 x14, x18
    sw x14, 4(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x00102800)
 
 inst_107:
    // Test 107:  Test with marching zeros/ones
    // result rd:x15(0x00205000), rs1:x17(0x80000000)
    li  x17, 0x80000000
    sha256sig1 x15, x17
    sw x15, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x00205000)
 
 inst_108:
    // Test 108:  Test with marching zeros/ones
    // result rd:x16(0x00000000), rs1:x16(0x00000000)
    li  x16, 0x0
    sha256sig1 x16, x16
    sw x16, 12(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x00000000)
 
 inst_109:
    // Test 109:  Test with marching zeros/ones
    // result rd:x17(0x003f5fff), rs1:x15(0xfffffffe)
    li  x15, 0xfffffffe
    sha256sig1 x17, x15
    sw x17, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0x003f5fff)


    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_23_0)

 
 inst_110:
    // Test 110:  Test with marching zeros/ones
    // result rd:x18(0x003ebfff), rs1:x14(0xfffffffd)
    li  x14, 0xfffffffd
    sha256sig1 x18, x14
    sw x18, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x003ebfff)
 
 inst_111:
    // Test 111:  Test with marching zeros/ones
    // result rd:x19(0x003d7fff), rs1:x13(0xfffffffb)
    li  x13, 0xfffffffb
    sha256sig1 x19, x13
    sw x19, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x003d7fff)
 
 inst_112:
    // Test 112:  Test with marching zeros/ones
    // result rd:x20(0x003affff), rs1:x12(0xfffffff7)
    li  x12, 0xfffffff7
    sha256sig1 x20, x12
    sw x20, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x003affff)
 
 inst_113:
    // Test 113:  Test with marching zeros/ones
    // result rd:x21(0x0035ffff), rs1:x11(0xffffffef)
    li  x11, 0xffffffef
    sha256sig1 x21, x11
    sw x21, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0035ffff)
 
 inst_114:
    // Test 114:  Test with marching zeros/ones
    // result rd:x22(0x002bffff), rs1:x10(0xffffffdf)
    li  x10, 0xffffffdf
    sha256sig1 x22, x10
    sw x22, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x002bffff)


    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_24_0)

 
 inst_115:
    // Test 115:  Test with marching zeros/ones
    // result rd:x23(0x0017ffff), rs1:x9(0xffffffbf)
    li  x9, 0xffffffbf
    sha256sig1 x23, x9
    sw x23, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0017ffff)
 
 inst_116:
    // Test 116:  Test with marching zeros/ones
    // result rd:x24(0x006fffff), rs1:x8(0xffffff7f)
    li  x8, 0xffffff7f
    sha256sig1 x24, x8
    sw x24, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x006fffff)
 
 inst_117:
    // Test 117:  Test with marching zeros/ones
    // result rd:x25(0x009fffff), rs1:x7(0xfffffeff)
    li  x7, 0xfffffeff
    sha256sig1 x25, x7
    sw x25, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x009fffff)
 
 inst_118:
    // Test 118:  Test with marching zeros/ones
    // result rd:x26(0x017fffff), rs1:x6(0xfffffdff)
    li  x6, 0xfffffdff
    sha256sig1 x26, x6
    sw x26, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x017fffff)
 
 inst_119:
    // Test 119:  Test with marching zeros/ones
    // result rd:x27(0x02bffffe), rs1:x5(0xfffffbff)
    li  x5, 0xfffffbff
    sha256sig1 x27, x5
    sw x27, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x02bffffe)


    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x5,signature_25_0)

 
 inst_120:
    // Test 120:  Test with marching zeros/ones
    // result rd:x28(0x053ffffd), rs1:x4(0xfffff7ff)
    li  x4, 0xfffff7ff
    sha256sig1 x28, x4
    sw x28, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0x053ffffd)
 
 inst_121:
    // Test 121:  Test with marching zeros/ones
    // result rd:x29(0x0a3ffffb), rs1:x3(0xffffefff)
    li  x3, 0xffffefff
    sha256sig1 x29, x3
    sw x29, 4(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0x0a3ffffb)
 
 inst_122:
    // Test 122:  Test with marching zeros/ones
    // result rd:x30(0x143ffff7), rs1:x2(0xffffdfff)
    li  x2, 0xffffdfff
    sha256sig1 x30, x2
    sw x30, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0x143ffff7)
 
 inst_123:
    // Test 123:  Test with marching zeros/ones
    // result rd:x31(0x283fffef), rs1:x1(0xffffbfff)
    li  x1, 0xffffbfff
    sha256sig1 x31, x1
    sw x31, 12(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x283fffef)
 
 inst_124:
    // Test 124:  Test with marching zeros/ones
    // result rd:x1(0x503fffdf), rs1:x31(0xffff7fff)
    li  x31, 0xffff7fff
    sha256sig1 x1, x31
    sw x1, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x503fffdf)


    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_26_0)

 
 inst_125:
    // Test 125:  Test with marching zeros/ones
    // result rd:x2(0xa03fffbf), rs1:x30(0xfffeffff)
    li  x30, 0xfffeffff
    sha256sig1 x2, x30
    sw x2, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0xa03fffbf)
 
 inst_126:
    // Test 126:  Test with marching zeros/ones
    // result rd:x3(0x403fff7e), rs1:x29(0xfffdffff)
    li  x29, 0xfffdffff
    sha256sig1 x3, x29
    sw x3, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x403fff7e)
 
 inst_127:
    // Test 127:  Test with marching zeros/ones
    // result rd:x4(0x803ffefd), rs1:x28(0xfffbffff)
    li  x28, 0xfffbffff
    sha256sig1 x4, x28
    sw x4, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x803ffefd)
 
 inst_128:
    // Test 128:  Test with marching zeros/ones
    // result rd:x5(0x003ffdfa), rs1:x27(0xfff7ffff)
    li  x27, 0xfff7ffff
    sha256sig1 x5, x27
    sw x5, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x003ffdfa)
 
 inst_129:
    // Test 129:  Test with marching zeros/ones
    // result rd:x6(0x003ffbf5), rs1:x26(0xffefffff)
    li  x26, 0xffefffff
    sha256sig1 x6, x26
    sw x6, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0x003ffbf5)


    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_27_0)

 
 inst_130:
    // Test 130:  Test with marching zeros/ones
    // result rd:x7(0x003ff7eb), rs1:x25(0xffdfffff)
    li  x25, 0xffdfffff
    sha256sig1 x7, x25
    sw x7, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x003ff7eb)
 
 inst_131:
    // Test 131:  Test with marching zeros/ones
    // result rd:x8(0x003fefd7), rs1:x24(0xffbfffff)
    li  x24, 0xffbfffff
    sha256sig1 x8, x24
    sw x8, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x003fefd7)
 
 inst_132:
    // Test 132:  Test with marching zeros/ones
    // result rd:x9(0x003fdfaf), rs1:x23(0xff7fffff)
    li  x23, 0xff7fffff
    sha256sig1 x9, x23
    sw x9, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x003fdfaf)
 
 inst_133:
    // Test 133:  Test with marching zeros/ones
    // result rd:x10(0x003fbf5f), rs1:x22(0xfeffffff)
    li  x22, 0xfeffffff
    sha256sig1 x10, x22
    sw x10, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x003fbf5f)
 
 inst_134:
    // Test 134:  Test with marching zeros/ones
    // result rd:x11(0x003f7ebf), rs1:x21(0xfdffffff)
    li  x21, 0xfdffffff
    sha256sig1 x11, x21
    sw x11, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x003f7ebf)


    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x6,signature_28_0)

 
 inst_135:
    // Test 135:  Test with marching zeros/ones
    // result rd:x12(0x003efd7f), rs1:x20(0xfbffffff)
    li  x20, 0xfbffffff
    sha256sig1 x12, x20
    sw x12, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x003efd7f)
 
 inst_136:
    // Test 136:  Test with marching zeros/ones
    // result rd:x13(0x003dfaff), rs1:x19(0xf7ffffff)
    li  x19, 0xf7ffffff
    sha256sig1 x13, x19
    sw x13, 4(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x003dfaff)
 
 inst_137:
    // Test 137:  Test with marching zeros/ones
    // result rd:x14(0x003bf5ff), rs1:x18(0xefffffff)
    li  x18, 0xefffffff
    sha256sig1 x14, x18
    sw x14, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x003bf5ff)
 
 inst_138:
    // Test 138:  Test with marching zeros/ones
    // result rd:x15(0x0037ebff), rs1:x17(0xdfffffff)
    li  x17, 0xdfffffff
    sha256sig1 x15, x17
    sw x15, 12(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x0037ebff)
 
 inst_139:
    // Test 139:  Test with marching zeros/ones
    // result rd:x16(0x002fd7ff), rs1:x16(0xbfffffff)
    li  x16, 0xbfffffff
    sha256sig1 x16, x16
    sw x16, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0x002fd7ff)


    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_29_0)

 
 inst_140:
    // Test 140:  Test with marching zeros/ones
    // result rd:x17(0x001fafff), rs1:x15(0x7fffffff)
    li  x15, 0x7fffffff
    sha256sig1 x17, x15
    sw x17, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x001fafff)
 
 inst_141:
    // Test 141:  Test with marching zeros/ones
    // result rd:x18(0x003fffff), rs1:x14(0xffffffff)
    li  x14, 0xffffffff
    sha256sig1 x18, x14
    sw x18, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x003fffff)
 
 inst_142:
    // Test 142:  Test with random values
    // result rd:x19(0x62d319dc), rs1:x13(0xadea5195)
    li  x13, 0xadea5195
    sha256sig1 x19, x13
    sw x19, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x62d319dc)
 
 inst_143:
    // Test 143:  Test with rd == x0
    // result rd:x0(0x00000000), rs1:x12(0xd2ffbec1)
    li  x12, 0xd2ffbec1
    sha256sig1 x0, x12
    sw x0, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x00000000)
 
 inst_144:
    // Test 144:  Test with rs2 == x0
    // result rd:x21(0xe1609906), rs1:x11(0xa8e1a8bb)
    li  x11, 0xa8e1a8bb
    sha256sig1 x21, x11
    sw x21, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xe1609906)


    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sha256sig1)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",sha256sig1)

    RVTEST_SIGBASE(x1,signature_30_0)

 
 inst_145:
    // Test 145:  Test with rs1 == x0
    // result rd:x22(0x00000000), rs1:x0(0x48c99fcb)
    li  x0, 0x48c99fcb
    sha256sig1 x22, x0
    sw x22, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000)
	
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

