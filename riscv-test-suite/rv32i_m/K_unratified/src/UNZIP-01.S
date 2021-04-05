// RISC-V Architectural Validation Test UNZIP-01
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
// Description: Testing instruction 'unzip'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV32IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1


    
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x6,signature_1_0)

 
 inst_0:
    // Test 0:  Test with random values
    // result rd:x1(0xef0838d7), rs1:x31(0xadea5195)
    li  x31, 0xadea5195
    unzip x1, x31
    sw x1, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0xef0838d7)
 
 inst_1:
    // Test 1:  Test with random values
    // result rd:x2(0x9ff8cf69), rs1:x30(0xd2ffbec1)
    li  x30, 0xd2ffbec1
    unzip x2, x30
    sw x2, 4(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x9ff8cf69)
 
 inst_2:
    // Test 2:  Test with random values
    // result rd:x3(0xecef0905), rs1:x29(0xa8e1a8bb)
    li  x29, 0xa8e1a8bb
    unzip x3, x29
    sw x3, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xecef0905)
 
 inst_3:
    // Test 3:  Test with random values
    // result rd:x4(0x2abb8979), rs1:x28(0x48c99fcb)
    li  x28, 0x48c99fcb
    unzip x4, x28
    sw x4, 12(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x2abb8979)
 
 inst_4:
    // Test 4:  Test with random values
    // result rd:x5(0x1213a7cb), rs1:x27(0x461d524f)
    li  x27, 0x461d524f
    unzip x5, x27
    sw x5, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x1213a7cb)


    
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_2_0)

 
 inst_5:
    // Test 5:  Test with random values
    // result rd:x6(0x1b0fc043), rs1:x26(0x528a10af)
    li  x26, 0x528a10af
    unzip x6, x26
    sw x6, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x1b0fc043)
 
 inst_6:
    // Test 6:  Test with random values
    // result rd:x7(0xcbf995d9), rs1:x25(0xe19bfbc3)
    li  x25, 0xe19bfbc3
    unzip x7, x25
    sw x7, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xcbf995d9)
 
 inst_7:
    // Test 7:  Test with random values
    // result rd:x8(0x47d8ccc8), rs1:x24(0x707af2c0)
    li  x24, 0x707af2c0
    unzip x8, x24
    sw x8, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x47d8ccc8)
 
 inst_8:
    // Test 8:  Test with random values
    // result rd:x9(0xc6032f4d), rs1:x23(0xa47d105b)
    li  x23, 0xa47d105b
    unzip x9, x23
    sw x9, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xc6032f4d)
 
 inst_9:
    // Test 9:  Test with random values
    // result rd:x10(0x13a545a1), rs1:x22(0x121bcc23)
    li  x22, 0x121bcc23
    unzip x10, x22
    sw x10, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x13a545a1)


    
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_3_0)

 
 inst_10:
    // Test 10:  Test with marching zeros/ones
    // result rd:x11(0x00000001), rs1:x21(0x00000001)
    li  x21, 0x1
    unzip x11, x21
    sw x11, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x00000001)
 
 inst_11:
    // Test 11:  Test with marching zeros/ones
    // result rd:x12(0x00010000), rs1:x20(0x00000002)
    li  x20, 0x2
    unzip x12, x20
    sw x12, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x00010000)
 
 inst_12:
    // Test 12:  Test with marching zeros/ones
    // result rd:x13(0x00000002), rs1:x19(0x00000004)
    li  x19, 0x4
    unzip x13, x19
    sw x13, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x00000002)
 
 inst_13:
    // Test 13:  Test with marching zeros/ones
    // result rd:x14(0x00020000), rs1:x18(0x00000008)
    li  x18, 0x8
    unzip x14, x18
    sw x14, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x00020000)
 
 inst_14:
    // Test 14:  Test with marching zeros/ones
    // result rd:x15(0x00000004), rs1:x17(0x00000010)
    li  x17, 0x10
    unzip x15, x17
    sw x15, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x00000004)


    
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x2,signature_4_0)

 
 inst_15:
    // Test 15:  Test with marching zeros/ones
    // result rd:x16(0x00040000), rs1:x16(0x00000020)
    li  x16, 0x20
    unzip x16, x16
    sw x16, 0(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x00040000)
 
 inst_16:
    // Test 16:  Test with marching zeros/ones
    // result rd:x17(0x00000008), rs1:x15(0x00000040)
    li  x15, 0x40
    unzip x17, x15
    sw x17, 4(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x00000008)
 
 inst_17:
    // Test 17:  Test with marching zeros/ones
    // result rd:x18(0x00080000), rs1:x14(0x00000080)
    li  x14, 0x80
    unzip x18, x14
    sw x18, 8(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x00080000)
 
 inst_18:
    // Test 18:  Test with marching zeros/ones
    // result rd:x19(0x00000010), rs1:x13(0x00000100)
    li  x13, 0x100
    unzip x19, x13
    sw x19, 12(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x00000010)
 
 inst_19:
    // Test 19:  Test with marching zeros/ones
    // result rd:x20(0x00100000), rs1:x12(0x00000200)
    li  x12, 0x200
    unzip x20, x12
    sw x20, 16(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x00100000)


    
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_5_0)

 
 inst_20:
    // Test 20:  Test with marching zeros/ones
    // result rd:x21(0x00000020), rs1:x11(0x00000400)
    li  x11, 0x400
    unzip x21, x11
    sw x21, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000020)
 
 inst_21:
    // Test 21:  Test with marching zeros/ones
    // result rd:x22(0x00200000), rs1:x10(0x00000800)
    li  x10, 0x800
    unzip x22, x10
    sw x22, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00200000)
 
 inst_22:
    // Test 22:  Test with marching zeros/ones
    // result rd:x23(0x00000040), rs1:x9(0x00001000)
    li  x9, 0x1000
    unzip x23, x9
    sw x23, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000040)
 
 inst_23:
    // Test 23:  Test with marching zeros/ones
    // result rd:x24(0x00400000), rs1:x8(0x00002000)
    li  x8, 0x2000
    unzip x24, x8
    sw x24, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00400000)
 
 inst_24:
    // Test 24:  Test with marching zeros/ones
    // result rd:x25(0x00000080), rs1:x7(0x00004000)
    li  x7, 0x4000
    unzip x25, x7
    sw x25, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000080)


    
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_6_0)

 
 inst_25:
    // Test 25:  Test with marching zeros/ones
    // result rd:x26(0x00800000), rs1:x6(0x00008000)
    li  x6, 0x8000
    unzip x26, x6
    sw x26, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x00800000)
 
 inst_26:
    // Test 26:  Test with marching zeros/ones
    // result rd:x27(0x00000100), rs1:x5(0x00010000)
    li  x5, 0x10000
    unzip x27, x5
    sw x27, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x00000100)
 
 inst_27:
    // Test 27:  Test with marching zeros/ones
    // result rd:x28(0x01000000), rs1:x4(0x00020000)
    li  x4, 0x20000
    unzip x28, x4
    sw x28, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x01000000)
 
 inst_28:
    // Test 28:  Test with marching zeros/ones
    // result rd:x29(0x00000200), rs1:x3(0x00040000)
    li  x3, 0x40000
    unzip x29, x3
    sw x29, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x00000200)
 
 inst_29:
    // Test 29:  Test with marching zeros/ones
    // result rd:x30(0x02000000), rs1:x2(0x00080000)
    li  x2, 0x80000
    unzip x30, x2
    sw x30, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x02000000)


    
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x5,signature_7_0)

 
 inst_30:
    // Test 30:  Test with marching zeros/ones
    // result rd:x31(0x00000400), rs1:x1(0x00100000)
    li  x1, 0x100000
    unzip x31, x1
    sw x31, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x00000400)
 
 inst_31:
    // Test 31:  Test with marching zeros/ones
    // result rd:x1(0x04000000), rs1:x31(0x00200000)
    li  x31, 0x200000
    unzip x1, x31
    sw x1, 4(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x04000000)
 
 inst_32:
    // Test 32:  Test with marching zeros/ones
    // result rd:x2(0x00000800), rs1:x30(0x00400000)
    li  x30, 0x400000
    unzip x2, x30
    sw x2, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x00000800)
 
 inst_33:
    // Test 33:  Test with marching zeros/ones
    // result rd:x3(0x08000000), rs1:x29(0x00800000)
    li  x29, 0x800000
    unzip x3, x29
    sw x3, 12(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x08000000)
 
 inst_34:
    // Test 34:  Test with marching zeros/ones
    // result rd:x4(0x00001000), rs1:x28(0x01000000)
    li  x28, 0x1000000
    unzip x4, x28
    sw x4, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x00001000)


    
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_8_0)

 
 inst_35:
    // Test 35:  Test with marching zeros/ones
    // result rd:x5(0x10000000), rs1:x27(0x02000000)
    li  x27, 0x2000000
    unzip x5, x27
    sw x5, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x10000000)
 
 inst_36:
    // Test 36:  Test with marching zeros/ones
    // result rd:x6(0x00002000), rs1:x26(0x04000000)
    li  x26, 0x4000000
    unzip x6, x26
    sw x6, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00002000)
 
 inst_37:
    // Test 37:  Test with marching zeros/ones
    // result rd:x7(0x20000000), rs1:x25(0x08000000)
    li  x25, 0x8000000
    unzip x7, x25
    sw x7, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x20000000)
 
 inst_38:
    // Test 38:  Test with marching zeros/ones
    // result rd:x8(0x00004000), rs1:x24(0x10000000)
    li  x24, 0x10000000
    unzip x8, x24
    sw x8, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00004000)
 
 inst_39:
    // Test 39:  Test with marching zeros/ones
    // result rd:x9(0x40000000), rs1:x23(0x20000000)
    li  x23, 0x20000000
    unzip x9, x23
    sw x9, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x40000000)


    
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_9_0)

 
 inst_40:
    // Test 40:  Test with marching zeros/ones
    // result rd:x10(0x00008000), rs1:x22(0x40000000)
    li  x22, 0x40000000
    unzip x10, x22
    sw x10, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00008000)
 
 inst_41:
    // Test 41:  Test with marching zeros/ones
    // result rd:x11(0x80000000), rs1:x21(0x80000000)
    li  x21, 0x80000000
    unzip x11, x21
    sw x11, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x80000000)
 
 inst_42:
    // Test 42:  Test with marching zeros/ones
    // result rd:x12(0x00000000), rs1:x20(0x00000000)
    li  x20, 0x0
    unzip x12, x20
    sw x12, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000)
 
 inst_43:
    // Test 43:  Test with marching zeros/ones
    // result rd:x13(0xfffffffe), rs1:x19(0xfffffffe)
    li  x19, 0xfffffffe
    unzip x13, x19
    sw x13, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xfffffffe)
 
 inst_44:
    // Test 44:  Test with marching zeros/ones
    // result rd:x14(0xfffeffff), rs1:x18(0xfffffffd)
    li  x18, 0xfffffffd
    unzip x14, x18
    sw x14, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0xfffeffff)


    
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x3,signature_10_0)

 
 inst_45:
    // Test 45:  Test with marching zeros/ones
    // result rd:x15(0xfffffffd), rs1:x17(0xfffffffb)
    li  x17, 0xfffffffb
    unzip x15, x17
    sw x15, 0(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0xfffffffd)
 
 inst_46:
    // Test 46:  Test with marching zeros/ones
    // result rd:x16(0xfffdffff), rs1:x16(0xfffffff7)
    li  x16, 0xfffffff7
    unzip x16, x16
    sw x16, 4(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0xfffdffff)
 
 inst_47:
    // Test 47:  Test with marching zeros/ones
    // result rd:x17(0xfffffffb), rs1:x15(0xffffffef)
    li  x15, 0xffffffef
    unzip x17, x15
    sw x17, 8(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0xfffffffb)
 
 inst_48:
    // Test 48:  Test with marching zeros/ones
    // result rd:x18(0xfffbffff), rs1:x14(0xffffffdf)
    li  x14, 0xffffffdf
    unzip x18, x14
    sw x18, 12(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0xfffbffff)
 
 inst_49:
    // Test 49:  Test with marching zeros/ones
    // result rd:x19(0xfffffff7), rs1:x13(0xffffffbf)
    li  x13, 0xffffffbf
    unzip x19, x13
    sw x19, 16(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0xfffffff7)


    
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_11_0)

 
 inst_50:
    // Test 50:  Test with marching zeros/ones
    // result rd:x20(0xfff7ffff), rs1:x12(0xffffff7f)
    li  x12, 0xffffff7f
    unzip x20, x12
    sw x20, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xfff7ffff)
 
 inst_51:
    // Test 51:  Test with marching zeros/ones
    // result rd:x21(0xffffffef), rs1:x11(0xfffffeff)
    li  x11, 0xfffffeff
    unzip x21, x11
    sw x21, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xffffffef)
 
 inst_52:
    // Test 52:  Test with marching zeros/ones
    // result rd:x22(0xffefffff), rs1:x10(0xfffffdff)
    li  x10, 0xfffffdff
    unzip x22, x10
    sw x22, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffefffff)
 
 inst_53:
    // Test 53:  Test with marching zeros/ones
    // result rd:x23(0xffffffdf), rs1:x9(0xfffffbff)
    li  x9, 0xfffffbff
    unzip x23, x9
    sw x23, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xffffffdf)
 
 inst_54:
    // Test 54:  Test with marching zeros/ones
    // result rd:x24(0xffdfffff), rs1:x8(0xfffff7ff)
    li  x8, 0xfffff7ff
    unzip x24, x8
    sw x24, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffdfffff)


    
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_12_0)

 
 inst_55:
    // Test 55:  Test with marching zeros/ones
    // result rd:x25(0xffffffbf), rs1:x7(0xffffefff)
    li  x7, 0xffffefff
    unzip x25, x7
    sw x25, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffffffbf)
 
 inst_56:
    // Test 56:  Test with marching zeros/ones
    // result rd:x26(0xffbfffff), rs1:x6(0xffffdfff)
    li  x6, 0xffffdfff
    unzip x26, x6
    sw x26, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffbfffff)
 
 inst_57:
    // Test 57:  Test with marching zeros/ones
    // result rd:x27(0xffffff7f), rs1:x5(0xffffbfff)
    li  x5, 0xffffbfff
    unzip x27, x5
    sw x27, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffffff7f)
 
 inst_58:
    // Test 58:  Test with marching zeros/ones
    // result rd:x28(0xff7fffff), rs1:x4(0xffff7fff)
    li  x4, 0xffff7fff
    unzip x28, x4
    sw x28, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xff7fffff)
 
 inst_59:
    // Test 59:  Test with marching zeros/ones
    // result rd:x29(0xfffffeff), rs1:x3(0xfffeffff)
    li  x3, 0xfffeffff
    unzip x29, x3
    sw x29, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0xfffffeff)


    
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x4,signature_13_0)

 
 inst_60:
    // Test 60:  Test with marching zeros/ones
    // result rd:x30(0xfeffffff), rs1:x2(0xfffdffff)
    li  x2, 0xfffdffff
    unzip x30, x2
    sw x30, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xfeffffff)
 
 inst_61:
    // Test 61:  Test with marching zeros/ones
    // result rd:x31(0xfffffdff), rs1:x1(0xfffbffff)
    li  x1, 0xfffbffff
    unzip x31, x1
    sw x31, 4(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xfffffdff)
 
 inst_62:
    // Test 62:  Test with marching zeros/ones
    // result rd:x1(0xfdffffff), rs1:x31(0xfff7ffff)
    li  x31, 0xfff7ffff
    unzip x1, x31
    sw x1, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xfdffffff)
 
 inst_63:
    // Test 63:  Test with marching zeros/ones
    // result rd:x2(0xfffffbff), rs1:x30(0xffefffff)
    li  x30, 0xffefffff
    unzip x2, x30
    sw x2, 12(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xfffffbff)
 
 inst_64:
    // Test 64:  Test with marching zeros/ones
    // result rd:x3(0xfbffffff), rs1:x29(0xffdfffff)
    li  x29, 0xffdfffff
    unzip x3, x29
    sw x3, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0xfbffffff)


    
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_14_0)

 
 inst_65:
    // Test 65:  Test with marching zeros/ones
    // result rd:x4(0xfffff7ff), rs1:x28(0xffbfffff)
    li  x28, 0xffbfffff
    unzip x4, x28
    sw x4, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xfffff7ff)
 
 inst_66:
    // Test 66:  Test with marching zeros/ones
    // result rd:x5(0xf7ffffff), rs1:x27(0xff7fffff)
    li  x27, 0xff7fffff
    unzip x5, x27
    sw x5, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xf7ffffff)
 
 inst_67:
    // Test 67:  Test with marching zeros/ones
    // result rd:x6(0xffffefff), rs1:x26(0xfeffffff)
    li  x26, 0xfeffffff
    unzip x6, x26
    sw x6, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xffffefff)
 
 inst_68:
    // Test 68:  Test with marching zeros/ones
    // result rd:x7(0xefffffff), rs1:x25(0xfdffffff)
    li  x25, 0xfdffffff
    unzip x7, x25
    sw x7, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xefffffff)
 
 inst_69:
    // Test 69:  Test with marching zeros/ones
    // result rd:x8(0xffffdfff), rs1:x24(0xfbffffff)
    li  x24, 0xfbffffff
    unzip x8, x24
    sw x8, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffffdfff)


    
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_15_0)

 
 inst_70:
    // Test 70:  Test with marching zeros/ones
    // result rd:x9(0xdfffffff), rs1:x23(0xf7ffffff)
    li  x23, 0xf7ffffff
    unzip x9, x23
    sw x9, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xdfffffff)
 
 inst_71:
    // Test 71:  Test with marching zeros/ones
    // result rd:x10(0xffffbfff), rs1:x22(0xefffffff)
    li  x22, 0xefffffff
    unzip x10, x22
    sw x10, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffbfff)
 
 inst_72:
    // Test 72:  Test with marching zeros/ones
    // result rd:x11(0xbfffffff), rs1:x21(0xdfffffff)
    li  x21, 0xdfffffff
    unzip x11, x21
    sw x11, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xbfffffff)
 
 inst_73:
    // Test 73:  Test with marching zeros/ones
    // result rd:x12(0xffff7fff), rs1:x20(0xbfffffff)
    li  x20, 0xbfffffff
    unzip x12, x20
    sw x12, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xffff7fff)
 
 inst_74:
    // Test 74:  Test with marching zeros/ones
    // result rd:x13(0x7fffffff), rs1:x19(0x7fffffff)
    li  x19, 0x7fffffff
    unzip x13, x19
    sw x13, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x7fffffff)


    
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x4,signature_16_0)

 
 inst_75:
    // Test 75:  Test with marching zeros/ones
    // result rd:x14(0xffffffff), rs1:x18(0xffffffff)
    li  x18, 0xffffffff
    unzip x14, x18
    sw x14, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xffffffff)
 
 inst_76:
    // Test 76:  Test with marching zeros/ones
    // result rd:x15(0x00000001), rs1:x17(0x00000001)
    li  x17, 0x1
    unzip x15, x17
    sw x15, 4(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x00000001)
 
 inst_77:
    // Test 77:  Test with marching zeros/ones
    // result rd:x16(0x00010000), rs1:x16(0x00000002)
    li  x16, 0x2
    unzip x16, x16
    sw x16, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x00010000)
 
 inst_78:
    // Test 78:  Test with marching zeros/ones
    // result rd:x17(0x00000002), rs1:x15(0x00000004)
    li  x15, 0x4
    unzip x17, x15
    sw x17, 12(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x00000002)
 
 inst_79:
    // Test 79:  Test with marching zeros/ones
    // result rd:x18(0x00020000), rs1:x14(0x00000008)
    li  x14, 0x8
    unzip x18, x14
    sw x18, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x00020000)


    
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_17_0)

 
 inst_80:
    // Test 80:  Test with marching zeros/ones
    // result rd:x19(0x00000004), rs1:x13(0x00000010)
    li  x13, 0x10
    unzip x19, x13
    sw x19, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x00000004)
 
 inst_81:
    // Test 81:  Test with marching zeros/ones
    // result rd:x20(0x00040000), rs1:x12(0x00000020)
    li  x12, 0x20
    unzip x20, x12
    sw x20, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x00040000)
 
 inst_82:
    // Test 82:  Test with marching zeros/ones
    // result rd:x21(0x00000008), rs1:x11(0x00000040)
    li  x11, 0x40
    unzip x21, x11
    sw x21, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00000008)
 
 inst_83:
    // Test 83:  Test with marching zeros/ones
    // result rd:x22(0x00080000), rs1:x10(0x00000080)
    li  x10, 0x80
    unzip x22, x10
    sw x22, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00080000)
 
 inst_84:
    // Test 84:  Test with marching zeros/ones
    // result rd:x23(0x00000010), rs1:x9(0x00000100)
    li  x9, 0x100
    unzip x23, x9
    sw x23, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00000010)


    
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_18_0)

 
 inst_85:
    // Test 85:  Test with marching zeros/ones
    // result rd:x24(0x00100000), rs1:x8(0x00000200)
    li  x8, 0x200
    unzip x24, x8
    sw x24, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00100000)
 
 inst_86:
    // Test 86:  Test with marching zeros/ones
    // result rd:x25(0x00000020), rs1:x7(0x00000400)
    li  x7, 0x400
    unzip x25, x7
    sw x25, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00000020)
 
 inst_87:
    // Test 87:  Test with marching zeros/ones
    // result rd:x26(0x00200000), rs1:x6(0x00000800)
    li  x6, 0x800
    unzip x26, x6
    sw x26, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00200000)
 
 inst_88:
    // Test 88:  Test with marching zeros/ones
    // result rd:x27(0x00000040), rs1:x5(0x00001000)
    li  x5, 0x1000
    unzip x27, x5
    sw x27, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00000040)
 
 inst_89:
    // Test 89:  Test with marching zeros/ones
    // result rd:x28(0x00400000), rs1:x4(0x00002000)
    li  x4, 0x2000
    unzip x28, x4
    sw x28, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x00400000)


    
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x4,signature_19_0)

 
 inst_90:
    // Test 90:  Test with marching zeros/ones
    // result rd:x29(0x00000080), rs1:x3(0x00004000)
    li  x3, 0x4000
    unzip x29, x3
    sw x29, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x00000080)
 
 inst_91:
    // Test 91:  Test with marching zeros/ones
    // result rd:x30(0x00800000), rs1:x2(0x00008000)
    li  x2, 0x8000
    unzip x30, x2
    sw x30, 4(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x00800000)
 
 inst_92:
    // Test 92:  Test with marching zeros/ones
    // result rd:x31(0x00000100), rs1:x1(0x00010000)
    li  x1, 0x10000
    unzip x31, x1
    sw x31, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x00000100)
 
 inst_93:
    // Test 93:  Test with marching zeros/ones
    // result rd:x1(0x01000000), rs1:x31(0x00020000)
    li  x31, 0x20000
    unzip x1, x31
    sw x1, 12(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x01000000)
 
 inst_94:
    // Test 94:  Test with marching zeros/ones
    // result rd:x2(0x00000200), rs1:x30(0x00040000)
    li  x30, 0x40000
    unzip x2, x30
    sw x2, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00000200)


    
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_20_0)

 
 inst_95:
    // Test 95:  Test with marching zeros/ones
    // result rd:x3(0x02000000), rs1:x29(0x00080000)
    li  x29, 0x80000
    unzip x3, x29
    sw x3, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x02000000)
 
 inst_96:
    // Test 96:  Test with marching zeros/ones
    // result rd:x4(0x00000400), rs1:x28(0x00100000)
    li  x28, 0x100000
    unzip x4, x28
    sw x4, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00000400)
 
 inst_97:
    // Test 97:  Test with marching zeros/ones
    // result rd:x5(0x04000000), rs1:x27(0x00200000)
    li  x27, 0x200000
    unzip x5, x27
    sw x5, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x04000000)
 
 inst_98:
    // Test 98:  Test with marching zeros/ones
    // result rd:x6(0x00000800), rs1:x26(0x00400000)
    li  x26, 0x400000
    unzip x6, x26
    sw x6, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00000800)
 
 inst_99:
    // Test 99:  Test with marching zeros/ones
    // result rd:x7(0x08000000), rs1:x25(0x00800000)
    li  x25, 0x800000
    unzip x7, x25
    sw x7, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x08000000)


    
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_21_0)

 
 inst_100:
    // Test 100:  Test with marching zeros/ones
    // result rd:x8(0x00001000), rs1:x24(0x01000000)
    li  x24, 0x1000000
    unzip x8, x24
    sw x8, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00001000)
 
 inst_101:
    // Test 101:  Test with marching zeros/ones
    // result rd:x9(0x10000000), rs1:x23(0x02000000)
    li  x23, 0x2000000
    unzip x9, x23
    sw x9, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x10000000)
 
 inst_102:
    // Test 102:  Test with marching zeros/ones
    // result rd:x10(0x00002000), rs1:x22(0x04000000)
    li  x22, 0x4000000
    unzip x10, x22
    sw x10, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00002000)
 
 inst_103:
    // Test 103:  Test with marching zeros/ones
    // result rd:x11(0x20000000), rs1:x21(0x08000000)
    li  x21, 0x8000000
    unzip x11, x21
    sw x11, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x20000000)
 
 inst_104:
    // Test 104:  Test with marching zeros/ones
    // result rd:x12(0x00004000), rs1:x20(0x10000000)
    li  x20, 0x10000000
    unzip x12, x20
    sw x12, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00004000)


    
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x5,signature_22_0)

 
 inst_105:
    // Test 105:  Test with marching zeros/ones
    // result rd:x13(0x40000000), rs1:x19(0x20000000)
    li  x19, 0x20000000
    unzip x13, x19
    sw x13, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x40000000)
 
 inst_106:
    // Test 106:  Test with marching zeros/ones
    // result rd:x14(0x00008000), rs1:x18(0x40000000)
    li  x18, 0x40000000
    unzip x14, x18
    sw x14, 4(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x00008000)
 
 inst_107:
    // Test 107:  Test with marching zeros/ones
    // result rd:x15(0x80000000), rs1:x17(0x80000000)
    li  x17, 0x80000000
    unzip x15, x17
    sw x15, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x80000000)
 
 inst_108:
    // Test 108:  Test with marching zeros/ones
    // result rd:x16(0x00000000), rs1:x16(0x00000000)
    li  x16, 0x0
    unzip x16, x16
    sw x16, 12(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x00000000)
 
 inst_109:
    // Test 109:  Test with marching zeros/ones
    // result rd:x17(0xfffffffe), rs1:x15(0xfffffffe)
    li  x15, 0xfffffffe
    unzip x17, x15
    sw x17, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0xfffffffe)


    
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_23_0)

 
 inst_110:
    // Test 110:  Test with marching zeros/ones
    // result rd:x18(0xfffeffff), rs1:x14(0xfffffffd)
    li  x14, 0xfffffffd
    unzip x18, x14
    sw x18, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xfffeffff)
 
 inst_111:
    // Test 111:  Test with marching zeros/ones
    // result rd:x19(0xfffffffd), rs1:x13(0xfffffffb)
    li  x13, 0xfffffffb
    unzip x19, x13
    sw x19, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xfffffffd)
 
 inst_112:
    // Test 112:  Test with marching zeros/ones
    // result rd:x20(0xfffdffff), rs1:x12(0xfffffff7)
    li  x12, 0xfffffff7
    unzip x20, x12
    sw x20, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xfffdffff)
 
 inst_113:
    // Test 113:  Test with marching zeros/ones
    // result rd:x21(0xfffffffb), rs1:x11(0xffffffef)
    li  x11, 0xffffffef
    unzip x21, x11
    sw x21, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xfffffffb)
 
 inst_114:
    // Test 114:  Test with marching zeros/ones
    // result rd:x22(0xfffbffff), rs1:x10(0xffffffdf)
    li  x10, 0xffffffdf
    unzip x22, x10
    sw x22, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xfffbffff)


    
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_24_0)

 
 inst_115:
    // Test 115:  Test with marching zeros/ones
    // result rd:x23(0xfffffff7), rs1:x9(0xffffffbf)
    li  x9, 0xffffffbf
    unzip x23, x9
    sw x23, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xfffffff7)
 
 inst_116:
    // Test 116:  Test with marching zeros/ones
    // result rd:x24(0xfff7ffff), rs1:x8(0xffffff7f)
    li  x8, 0xffffff7f
    unzip x24, x8
    sw x24, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xfff7ffff)
 
 inst_117:
    // Test 117:  Test with marching zeros/ones
    // result rd:x25(0xffffffef), rs1:x7(0xfffffeff)
    li  x7, 0xfffffeff
    unzip x25, x7
    sw x25, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffffffef)
 
 inst_118:
    // Test 118:  Test with marching zeros/ones
    // result rd:x26(0xffefffff), rs1:x6(0xfffffdff)
    li  x6, 0xfffffdff
    unzip x26, x6
    sw x26, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffefffff)
 
 inst_119:
    // Test 119:  Test with marching zeros/ones
    // result rd:x27(0xffffffdf), rs1:x5(0xfffffbff)
    li  x5, 0xfffffbff
    unzip x27, x5
    sw x27, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffffffdf)


    
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x5,signature_25_0)

 
 inst_120:
    // Test 120:  Test with marching zeros/ones
    // result rd:x28(0xffdfffff), rs1:x4(0xfffff7ff)
    li  x4, 0xfffff7ff
    unzip x28, x4
    sw x28, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0xffdfffff)
 
 inst_121:
    // Test 121:  Test with marching zeros/ones
    // result rd:x29(0xffffffbf), rs1:x3(0xffffefff)
    li  x3, 0xffffefff
    unzip x29, x3
    sw x29, 4(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0xffffffbf)
 
 inst_122:
    // Test 122:  Test with marching zeros/ones
    // result rd:x30(0xffbfffff), rs1:x2(0xffffdfff)
    li  x2, 0xffffdfff
    unzip x30, x2
    sw x30, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0xffbfffff)
 
 inst_123:
    // Test 123:  Test with marching zeros/ones
    // result rd:x31(0xffffff7f), rs1:x1(0xffffbfff)
    li  x1, 0xffffbfff
    unzip x31, x1
    sw x31, 12(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0xffffff7f)
 
 inst_124:
    // Test 124:  Test with marching zeros/ones
    // result rd:x1(0xff7fffff), rs1:x31(0xffff7fff)
    li  x31, 0xffff7fff
    unzip x1, x31
    sw x1, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0xff7fffff)


    
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_26_0)

 
 inst_125:
    // Test 125:  Test with marching zeros/ones
    // result rd:x2(0xfffffeff), rs1:x30(0xfffeffff)
    li  x30, 0xfffeffff
    unzip x2, x30
    sw x2, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0xfffffeff)
 
 inst_126:
    // Test 126:  Test with marching zeros/ones
    // result rd:x3(0xfeffffff), rs1:x29(0xfffdffff)
    li  x29, 0xfffdffff
    unzip x3, x29
    sw x3, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xfeffffff)
 
 inst_127:
    // Test 127:  Test with marching zeros/ones
    // result rd:x4(0xfffffdff), rs1:x28(0xfffbffff)
    li  x28, 0xfffbffff
    unzip x4, x28
    sw x4, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xfffffdff)
 
 inst_128:
    // Test 128:  Test with marching zeros/ones
    // result rd:x5(0xfdffffff), rs1:x27(0xfff7ffff)
    li  x27, 0xfff7ffff
    unzip x5, x27
    sw x5, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xfdffffff)
 
 inst_129:
    // Test 129:  Test with marching zeros/ones
    // result rd:x6(0xfffffbff), rs1:x26(0xffefffff)
    li  x26, 0xffefffff
    unzip x6, x26
    sw x6, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0xfffffbff)


    
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_27_0)

 
 inst_130:
    // Test 130:  Test with marching zeros/ones
    // result rd:x7(0xfbffffff), rs1:x25(0xffdfffff)
    li  x25, 0xffdfffff
    unzip x7, x25
    sw x7, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfbffffff)
 
 inst_131:
    // Test 131:  Test with marching zeros/ones
    // result rd:x8(0xfffff7ff), rs1:x24(0xffbfffff)
    li  x24, 0xffbfffff
    unzip x8, x24
    sw x8, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xfffff7ff)
 
 inst_132:
    // Test 132:  Test with marching zeros/ones
    // result rd:x9(0xf7ffffff), rs1:x23(0xff7fffff)
    li  x23, 0xff7fffff
    unzip x9, x23
    sw x9, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xf7ffffff)
 
 inst_133:
    // Test 133:  Test with marching zeros/ones
    // result rd:x10(0xffffefff), rs1:x22(0xfeffffff)
    li  x22, 0xfeffffff
    unzip x10, x22
    sw x10, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffefff)
 
 inst_134:
    // Test 134:  Test with marching zeros/ones
    // result rd:x11(0xefffffff), rs1:x21(0xfdffffff)
    li  x21, 0xfdffffff
    unzip x11, x21
    sw x11, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xefffffff)


    
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x6,signature_28_0)

 
 inst_135:
    // Test 135:  Test with marching zeros/ones
    // result rd:x12(0xffffdfff), rs1:x20(0xfbffffff)
    li  x20, 0xfbffffff
    unzip x12, x20
    sw x12, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0xffffdfff)
 
 inst_136:
    // Test 136:  Test with marching zeros/ones
    // result rd:x13(0xdfffffff), rs1:x19(0xf7ffffff)
    li  x19, 0xf7ffffff
    unzip x13, x19
    sw x13, 4(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0xdfffffff)
 
 inst_137:
    // Test 137:  Test with marching zeros/ones
    // result rd:x14(0xffffbfff), rs1:x18(0xefffffff)
    li  x18, 0xefffffff
    unzip x14, x18
    sw x14, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0xffffbfff)
 
 inst_138:
    // Test 138:  Test with marching zeros/ones
    // result rd:x15(0xbfffffff), rs1:x17(0xdfffffff)
    li  x17, 0xdfffffff
    unzip x15, x17
    sw x15, 12(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0xbfffffff)
 
 inst_139:
    // Test 139:  Test with marching zeros/ones
    // result rd:x16(0xffff7fff), rs1:x16(0xbfffffff)
    li  x16, 0xbfffffff
    unzip x16, x16
    sw x16, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0xffff7fff)


    
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_29_0)

 
 inst_140:
    // Test 140:  Test with marching zeros/ones
    // result rd:x17(0x7fffffff), rs1:x15(0x7fffffff)
    li  x15, 0x7fffffff
    unzip x17, x15
    sw x17, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x7fffffff)
 
 inst_141:
    // Test 141:  Test with marching zeros/ones
    // result rd:x18(0xffffffff), rs1:x14(0xffffffff)
    li  x14, 0xffffffff
    unzip x18, x14
    sw x18, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xffffffff)
 
 inst_142:
    // Test 142:  Test with random values
    // result rd:x19(0xef0838d7), rs1:x13(0xadea5195)
    li  x13, 0xadea5195
    unzip x19, x13
    sw x19, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xef0838d7)
 
 inst_143:
    // Test 143:  Test with rd == x0
    // result rd:x0(0x00000000), rs1:x12(0xd2ffbec1)
    li  x12, 0xd2ffbec1
    unzip x0, x12
    sw x0, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x00000000)
 
 inst_144:
    // Test 144:  Test with rs2 == x0
    // result rd:x21(0xecef0905), rs1:x11(0xa8e1a8bb)
    li  x11, 0xa8e1a8bb
    unzip x21, x11
    sw x21, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xecef0905)


    
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zkn.*);def TEST_CASE_1=True;",unzip)
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zks.*);def TEST_CASE_1=True;",unzip)

    RVTEST_SIGBASE(x1,signature_30_0)

 
 inst_145:
    // Test 145:  Test with rs1 == x0
    // result rd:x22(0x00000000), rs1:x0(0x48c99fcb)
    li  x0, 0x48c99fcb
    unzip x22, x0
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

