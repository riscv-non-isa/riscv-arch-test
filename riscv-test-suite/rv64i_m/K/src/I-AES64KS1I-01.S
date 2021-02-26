// RISC-V Architectural Validation Test I-AES64KS1I-01
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
// Description: Testing instruction 'aes64ks1i'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV64IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1


    # address for test results
    # la x6, test_1_res
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x6,signature_1_0)


    # Testcase 0:  rs1:x31(0x10fd3dedadea5195), imm:0x3, result rd:x1(0x55ca542f55ca542f)
inst_0:
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x55ca542f55ca542f, 0x10fd3dedadea5195, 0x3, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x55ca542f55ca542f) 


    # Testcase 1:  rs1:x30(0xbd295ce2d2ffbec1), imm:0x3, result rd:x2(0x987aa542987aa542)
inst_1:
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x987aa542987aa542, 0xbd295ce2d2ffbec1, 0x3, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x987aa542987aa542) 


    # Testcase 2:  rs1:x29(0xc9649f05a8e1a8bb), imm:0x0, result rd:x3(0x6bdd43da6bdd43da)
inst_2:
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x6bdd43da6bdd43da, 0xc9649f05a8e1a8bb, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x6bdd43da6bdd43da) 


    # Testcase 3:  rs1:x28(0x3541291848c99fcb), imm:0x3, result rd:x4(0xad9683adad9683ad)
inst_3:
    TEST_IMM_OP(aes64ks1i, x4, x28, 0xad9683adad9683ad, 0x3541291848c99fcb, 0x3, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xad9683adad9683ad) 


    # Testcase 4:  rs1:x27(0x10a24740461d524f), imm:0x3, result rd:x5(0x09ca3aa809ca3aa8)
inst_4:
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x09ca3aa809ca3aa8, 0x10a24740461d524f, 0x3, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x09ca3aa809ca3aa8) 





    # address for test results
    # la x1, test_2_res
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_2_0)


    # Testcase 5:  rs1:x26(0x546b0e54528a10af), imm:0x3, result rd:x6(0x20207fa320207fa3)
inst_5:
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x20207fa320207fa3, 0x546b0e54528a10af, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x20207fa320207fa3) 


    # Testcase 6:  rs1:x25(0x73a92fd4e19bfbc3), imm:0x3, result rd:x7(0x488fd31d488fd31d)
inst_6:
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x488fd31d488fd31d, 0x73a92fd4e19bfbc3, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x488fd31d488fd31d) 


    # Testcase 7:  rs1:x24(0x82f6747f707af2c0), imm:0x3, result rd:x8(0xd213429ad213429a)
inst_7:
    TEST_IMM_OP(aes64ks1i, x8, x24, 0xd213429ad213429a, 0x82f6747f707af2c0, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xd213429ad213429a) 


    # Testcase 8:  rs1:x23(0xf5adb41aa47d105b), imm:0x1, result rd:x9(0xa2e6958fa2e6958f)
inst_8:
    TEST_IMM_OP(aes64ks1i, x9, x23, 0xa2e6958fa2e6958f, 0xf5adb41aa47d105b, 0x1, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xa2e6958fa2e6958f) 


    # Testcase 9:  rs1:x22(0xdf7f3844121bcc23), imm:0x1, result rd:x10(0x1b9ed2051b9ed205)
inst_9:
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x1b9ed2051b9ed205, 0xdf7f3844121bcc23, 0x1, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x1b9ed2051b9ed205) 





    # address for test results
    # la x1, test_3_res
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_3_0)


    # Testcase 10:  rs1:x21(0x0000000000000001), imm:0x3, result rd:x11(0x6363636b6363636b)
inst_10:
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x6363636b6363636b, 0x1, 0x3, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x6363636b6363636b) 


    # Testcase 11:  rs1:x20(0x0000000000000002), imm:0x1, result rd:x12(0x6363636163636361)
inst_11:
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x6363636163636361, 0x2, 0x1, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x6363636163636361) 


    # Testcase 12:  rs1:x19(0x0000000000000004), imm:0x2, result rd:x13(0x6363636763636367)
inst_12:
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x6363636763636367, 0x4, 0x2, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x6363636763636367) 


    # Testcase 13:  rs1:x18(0x0000000000000008), imm:0x0, result rd:x14(0x6363636263636362)
inst_13:
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x6363636263636362, 0x8, 0x0, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x6363636263636362) 


    # Testcase 14:  rs1:x17(0x0000000000000010), imm:0x2, result rd:x15(0x6363636763636367)
inst_14:
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x6363636763636367, 0x10, 0x2, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x6363636763636367) 





    # address for test results
    # la x2, test_4_res
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x2,signature_4_0)


    # Testcase 15:  rs1:x16(0x0000000000000020), imm:0x1, result rd:x16(0x6363636163636361)
inst_15:
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x6363636163636361, 0x20, 0x1, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x6363636163636361) 


    # Testcase 16:  rs1:x15(0x0000000000000040), imm:0x3, result rd:x17(0x6363636b6363636b)
inst_16:
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x6363636b6363636b, 0x40, 0x3, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x6363636b6363636b) 


    # Testcase 17:  rs1:x14(0x0000000000000080), imm:0x3, result rd:x18(0x6363636b6363636b)
inst_17:
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x6363636b6363636b, 0x80, 0x3, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x6363636b6363636b) 


    # Testcase 18:  rs1:x13(0x0000000000000100), imm:0x0, result rd:x19(0x6363636263636362)
inst_18:
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x6363636263636362, 0x100, 0x0, x2, 24, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x6363636263636362) 


    # Testcase 19:  rs1:x12(0x0000000000000200), imm:0x3, result rd:x20(0x6363636b6363636b)
inst_19:
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x6363636b6363636b, 0x200, 0x3, x2, 32, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x6363636b6363636b) 





    # address for test results
    # la x1, test_5_res
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_5_0)


    # Testcase 20:  rs1:x11(0x0000000000000400), imm:0x3, result rd:x21(0x6363636b6363636b)
inst_20:
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x6363636b6363636b, 0x400, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x6363636b6363636b) 


    # Testcase 21:  rs1:x10(0x0000000000000800), imm:0x3, result rd:x22(0x6363636b6363636b)
inst_21:
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x6363636b6363636b, 0x800, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x6363636b6363636b) 


    # Testcase 22:  rs1:x9(0x0000000000001000), imm:0x3, result rd:x23(0x6363636b6363636b)
inst_22:
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x6363636b6363636b, 0x1000, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x6363636b6363636b) 


    # Testcase 23:  rs1:x8(0x0000000000002000), imm:0x3, result rd:x24(0x6363636b6363636b)
inst_23:
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x6363636b6363636b, 0x2000, 0x3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x6363636b6363636b) 


    # Testcase 24:  rs1:x7(0x0000000000004000), imm:0x1, result rd:x25(0x6363636163636361)
inst_24:
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x6363636163636361, 0x4000, 0x1, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x6363636163636361) 





    # address for test results
    # la x1, test_6_res
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_6_0)


    # Testcase 25:  rs1:x6(0x0000000000008000), imm:0x1, result rd:x26(0x6363636163636361)
inst_25:
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x6363636163636361, 0x8000, 0x1, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x6363636163636361) 


    # Testcase 26:  rs1:x5(0x0000000000010000), imm:0x3, result rd:x27(0x6363636b6363636b)
inst_26:
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x6363636b6363636b, 0x10000, 0x3, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x6363636b6363636b) 


    # Testcase 27:  rs1:x4(0x0000000000020000), imm:0x1, result rd:x28(0x6363636163636361)
inst_27:
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x6363636163636361, 0x20000, 0x1, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x6363636163636361) 


    # Testcase 28:  rs1:x3(0x0000000000040000), imm:0x2, result rd:x29(0x6363636763636367)
inst_28:
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x6363636763636367, 0x40000, 0x2, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x6363636763636367) 


    # Testcase 29:  rs1:x2(0x0000000000080000), imm:0x0, result rd:x30(0x6363636263636362)
inst_29:
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x6363636263636362, 0x80000, 0x0, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x6363636263636362) 





    # address for test results
    # la x5, test_7_res
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x5,signature_7_0)


    # Testcase 30:  rs1:x1(0x0000000000100000), imm:0x2, result rd:x31(0x6363636763636367)
inst_30:
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x6363636763636367, 0x100000, 0x2, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x6363636763636367) 


    # Testcase 31:  rs1:x31(0x0000000000200000), imm:0x1, result rd:x1(0x6363636163636361)
inst_31:
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x6363636163636361, 0x200000, 0x1, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x6363636163636361) 


    # Testcase 32:  rs1:x30(0x0000000000400000), imm:0x3, result rd:x2(0x6363636b6363636b)
inst_32:
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x6363636b6363636b, 0x400000, 0x3, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x6363636b6363636b) 


    # Testcase 33:  rs1:x29(0x0000000000800000), imm:0x3, result rd:x3(0x6363636b6363636b)
inst_33:
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x6363636b6363636b, 0x800000, 0x3, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x6363636b6363636b) 


    # Testcase 34:  rs1:x28(0x0000000001000000), imm:0x0, result rd:x4(0x6363636263636362)
inst_34:
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x6363636263636362, 0x1000000, 0x0, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x6363636263636362) 





    # address for test results
    # la x1, test_8_res
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_8_0)


    # Testcase 35:  rs1:x27(0x0000000002000000), imm:0x3, result rd:x5(0x6363636b6363636b)
inst_35:
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x6363636b6363636b, 0x2000000, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x6363636b6363636b) 


    # Testcase 36:  rs1:x26(0x0000000004000000), imm:0x3, result rd:x6(0x6363636b6363636b)
inst_36:
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x6363636b6363636b, 0x4000000, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x6363636b6363636b) 


    # Testcase 37:  rs1:x25(0x0000000008000000), imm:0x3, result rd:x7(0x6363636b6363636b)
inst_37:
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x6363636b6363636b, 0x8000000, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x6363636b6363636b) 


    # Testcase 38:  rs1:x24(0x0000000010000000), imm:0x3, result rd:x8(0x6363636b6363636b)
inst_38:
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x6363636b6363636b, 0x10000000, 0x3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x6363636b6363636b) 


    # Testcase 39:  rs1:x23(0x0000000020000000), imm:0x3, result rd:x9(0x6363636b6363636b)
inst_39:
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x6363636b6363636b, 0x20000000, 0x3, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x6363636b6363636b) 





    # address for test results
    # la x1, test_9_res
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_9_0)


    # Testcase 40:  rs1:x22(0x0000000040000000), imm:0x1, result rd:x10(0x6363636163636361)
inst_40:
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x6363636163636361, 0x40000000, 0x1, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x6363636163636361) 


    # Testcase 41:  rs1:x21(0x0000000080000000), imm:0x1, result rd:x11(0x6363636163636361)
inst_41:
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x6363636163636361, 0x80000000, 0x1, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x6363636163636361) 


    # Testcase 42:  rs1:x20(0x0000000100000000), imm:0x3, result rd:x12(0x7c63636b7c63636b)
inst_42:
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x7c63636b7c63636b, 0x100000000, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x7c63636b7c63636b) 


    # Testcase 43:  rs1:x19(0x0000000200000000), imm:0x1, result rd:x13(0x7763636177636361)
inst_43:
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x7763636177636361, 0x200000000, 0x1, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x7763636177636361) 


    # Testcase 44:  rs1:x18(0x0000000400000000), imm:0x2, result rd:x14(0xf2636367f2636367)
inst_44:
    TEST_IMM_OP(aes64ks1i, x14, x18, 0xf2636367f2636367, 0x400000000, 0x2, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0xf2636367f2636367) 





    # address for test results
    # la x3, test_10_res
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x3,signature_10_0)


    # Testcase 45:  rs1:x17(0x0000000800000000), imm:0x0, result rd:x15(0x3063636230636362)
inst_45:
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x3063636230636362, 0x800000000, 0x0, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x3063636230636362) 


    # Testcase 46:  rs1:x16(0x0000001000000000), imm:0x2, result rd:x16(0xca636367ca636367)
inst_46:
    TEST_IMM_OP(aes64ks1i, x16, x16, 0xca636367ca636367, 0x1000000000, 0x2, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0xca636367ca636367) 


    # Testcase 47:  rs1:x15(0x0000002000000000), imm:0x1, result rd:x17(0xb7636361b7636361)
inst_47:
    TEST_IMM_OP(aes64ks1i, x17, x15, 0xb7636361b7636361, 0x2000000000, 0x1, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0xb7636361b7636361) 


    # Testcase 48:  rs1:x14(0x0000004000000000), imm:0x3, result rd:x18(0x0963636b0963636b)
inst_48:
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x0963636b0963636b, 0x4000000000, 0x3, x3, 24, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x0963636b0963636b) 


    # Testcase 49:  rs1:x13(0x0000008000000000), imm:0x3, result rd:x19(0xcd63636bcd63636b)
inst_49:
    TEST_IMM_OP(aes64ks1i, x19, x13, 0xcd63636bcd63636b, 0x8000000000, 0x3, x3, 32, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0xcd63636bcd63636b) 





    # address for test results
    # la x1, test_11_res
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_11_0)


    # Testcase 50:  rs1:x12(0x0000010000000000), imm:0x0, result rd:x20(0x6363637d6363637d)
inst_50:
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x6363637d6363637d, 0x10000000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x6363637d6363637d) 


    # Testcase 51:  rs1:x11(0x0000020000000000), imm:0x3, result rd:x21(0x6363637f6363637f)
inst_51:
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x6363637f6363637f, 0x20000000000, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x6363637f6363637f) 


    # Testcase 52:  rs1:x10(0x0000040000000000), imm:0x3, result rd:x22(0x636363fa636363fa)
inst_52:
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x636363fa636363fa, 0x40000000000, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x636363fa636363fa) 


    # Testcase 53:  rs1:x9(0x0000080000000000), imm:0x3, result rd:x23(0x6363633863636338)
inst_53:
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x6363633863636338, 0x80000000000, 0x3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x6363633863636338) 


    # Testcase 54:  rs1:x8(0x0000100000000000), imm:0x3, result rd:x24(0x636363c2636363c2)
inst_54:
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x636363c2636363c2, 0x100000000000, 0x3, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x636363c2636363c2) 





    # address for test results
    # la x1, test_12_res
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_12_0)


    # Testcase 55:  rs1:x7(0x0000200000000000), imm:0x3, result rd:x25(0x636363bf636363bf)
inst_55:
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x636363bf636363bf, 0x200000000000, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x636363bf636363bf) 


    # Testcase 56:  rs1:x6(0x0000400000000000), imm:0x1, result rd:x26(0x6363630b6363630b)
inst_56:
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x6363630b6363630b, 0x400000000000, 0x1, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x6363630b6363630b) 


    # Testcase 57:  rs1:x5(0x0000800000000000), imm:0x1, result rd:x27(0x636363cf636363cf)
inst_57:
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x636363cf636363cf, 0x800000000000, 0x1, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x636363cf636363cf) 


    # Testcase 58:  rs1:x4(0x0001000000000000), imm:0x3, result rd:x28(0x63637c6b63637c6b)
inst_58:
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x63637c6b63637c6b, 0x1000000000000, 0x3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x63637c6b63637c6b) 


    # Testcase 59:  rs1:x3(0x0002000000000000), imm:0x1, result rd:x29(0x6363776163637761)
inst_59:
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x6363776163637761, 0x2000000000000, 0x1, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x6363776163637761) 





    # address for test results
    # la x4, test_13_res
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x4,signature_13_0)


    # Testcase 60:  rs1:x2(0x0004000000000000), imm:0x2, result rd:x30(0x6363f2676363f267)
inst_60:
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x6363f2676363f267, 0x4000000000000, 0x2, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x6363f2676363f267) 


    # Testcase 61:  rs1:x1(0x0008000000000000), imm:0x0, result rd:x31(0x6363306263633062)
inst_61:
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x6363306263633062, 0x8000000000000, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x6363306263633062) 


    # Testcase 62:  rs1:x31(0x0010000000000000), imm:0x2, result rd:x1(0x6363ca676363ca67)
inst_62:
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x6363ca676363ca67, 0x10000000000000, 0x2, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x6363ca676363ca67) 


    # Testcase 63:  rs1:x30(0x0020000000000000), imm:0x1, result rd:x2(0x6363b7616363b761)
inst_63:
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x6363b7616363b761, 0x20000000000000, 0x1, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x6363b7616363b761) 


    # Testcase 64:  rs1:x29(0x0040000000000000), imm:0x3, result rd:x3(0x6363096b6363096b)
inst_64:
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x6363096b6363096b, 0x40000000000000, 0x3, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x6363096b6363096b) 





    # address for test results
    # la x1, test_14_res
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_14_0)


    # Testcase 65:  rs1:x28(0x0080000000000000), imm:0x3, result rd:x4(0x6363cd6b6363cd6b)
inst_65:
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x6363cd6b6363cd6b, 0x80000000000000, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x6363cd6b6363cd6b) 


    # Testcase 66:  rs1:x27(0x0100000000000000), imm:0x0, result rd:x5(0x637c6362637c6362)
inst_66:
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x637c6362637c6362, 0x100000000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x637c6362637c6362) 


    # Testcase 67:  rs1:x26(0x0200000000000000), imm:0x3, result rd:x6(0x6377636b6377636b)
inst_67:
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x6377636b6377636b, 0x200000000000000, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x6377636b6377636b) 


    # Testcase 68:  rs1:x25(0x0400000000000000), imm:0x3, result rd:x7(0x63f2636b63f2636b)
inst_68:
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x63f2636b63f2636b, 0x400000000000000, 0x3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x63f2636b63f2636b) 


    # Testcase 69:  rs1:x24(0x0800000000000000), imm:0x3, result rd:x8(0x6330636b6330636b)
inst_69:
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x6330636b6330636b, 0x800000000000000, 0x3, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x6330636b6330636b) 





    # address for test results
    # la x1, test_15_res
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_15_0)


    # Testcase 70:  rs1:x23(0x1000000000000000), imm:0x3, result rd:x9(0x63ca636b63ca636b)
inst_70:
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x63ca636b63ca636b, 0x1000000000000000, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x63ca636b63ca636b) 


    # Testcase 71:  rs1:x22(0x2000000000000000), imm:0x3, result rd:x10(0x63b7636b63b7636b)
inst_71:
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x63b7636b63b7636b, 0x2000000000000000, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x63b7636b63b7636b) 


    # Testcase 72:  rs1:x21(0x4000000000000000), imm:0x1, result rd:x11(0x6309636163096361)
inst_72:
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x6309636163096361, 0x4000000000000000, 0x1, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x6309636163096361) 


    # Testcase 73:  rs1:x20(0x8000000000000000), imm:0x1, result rd:x12(0x63cd636163cd6361)
inst_73:
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x63cd636163cd6361, 0x8000000000000000, 0x1, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x63cd636163cd6361) 


    # Testcase 74:  rs1:x19(0x0000000000000000), imm:0x3, result rd:x13(0x6363636b6363636b)
inst_74:
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x6363636b6363636b, 0x0, 0x3, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x6363636b6363636b) 





    # address for test results
    # la x4, test_16_res
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x4,signature_16_0)


    # Testcase 75:  rs1:x18(0xfffffffffffffffe), imm:0x1, result rd:x14(0x1616161416161614)
inst_75:
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x1616161416161614, 0xfffffffffffffffe, 0x1, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0x1616161416161614) 


    # Testcase 76:  rs1:x17(0xfffffffffffffffd), imm:0x2, result rd:x15(0x1616161216161612)
inst_76:
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x1616161216161612, 0xfffffffffffffffd, 0x2, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x1616161216161612) 


    # Testcase 77:  rs1:x16(0xfffffffffffffffb), imm:0x0, result rd:x16(0x1616161716161617)
inst_77:
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x1616161716161617, 0xfffffffffffffffb, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x1616161716161617) 


    # Testcase 78:  rs1:x15(0xfffffffffffffff7), imm:0x2, result rd:x17(0x1616161216161612)
inst_78:
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x1616161216161612, 0xfffffffffffffff7, 0x2, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x1616161216161612) 


    # Testcase 79:  rs1:x14(0xffffffffffffffef), imm:0x1, result rd:x18(0x1616161416161614)
inst_79:
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x1616161416161614, 0xffffffffffffffef, 0x1, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x1616161416161614) 





    # address for test results
    # la x1, test_17_res
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_17_0)


    # Testcase 80:  rs1:x13(0xffffffffffffffdf), imm:0x3, result rd:x19(0x1616161e1616161e)
inst_80:
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x1616161e1616161e, 0xffffffffffffffdf, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x1616161e1616161e) 


    # Testcase 81:  rs1:x12(0xffffffffffffffbf), imm:0x3, result rd:x20(0x1616161e1616161e)
inst_81:
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x1616161e1616161e, 0xffffffffffffffbf, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x1616161e1616161e) 


    # Testcase 82:  rs1:x11(0xffffffffffffff7f), imm:0x0, result rd:x21(0x1616161716161617)
inst_82:
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x1616161716161617, 0xffffffffffffff7f, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x1616161716161617) 


    # Testcase 83:  rs1:x10(0xfffffffffffffeff), imm:0x3, result rd:x22(0x1616161e1616161e)
inst_83:
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x1616161e1616161e, 0xfffffffffffffeff, 0x3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x1616161e1616161e) 


    # Testcase 84:  rs1:x9(0xfffffffffffffdff), imm:0x3, result rd:x23(0x1616161e1616161e)
inst_84:
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x1616161e1616161e, 0xfffffffffffffdff, 0x3, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x1616161e1616161e) 





    # address for test results
    # la x1, test_18_res
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_18_0)


    # Testcase 85:  rs1:x8(0xfffffffffffffbff), imm:0x3, result rd:x24(0x1616161e1616161e)
inst_85:
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x1616161e1616161e, 0xfffffffffffffbff, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x1616161e1616161e) 


    # Testcase 86:  rs1:x7(0xfffffffffffff7ff), imm:0x3, result rd:x25(0x1616161e1616161e)
inst_86:
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x1616161e1616161e, 0xfffffffffffff7ff, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x1616161e1616161e) 


    # Testcase 87:  rs1:x6(0xffffffffffffefff), imm:0x3, result rd:x26(0x1616161e1616161e)
inst_87:
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x1616161e1616161e, 0xffffffffffffefff, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x1616161e1616161e) 


    # Testcase 88:  rs1:x5(0xffffffffffffdfff), imm:0x1, result rd:x27(0x1616161416161614)
inst_88:
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x1616161416161614, 0xffffffffffffdfff, 0x1, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x1616161416161614) 


    # Testcase 89:  rs1:x4(0xffffffffffffbfff), imm:0x1, result rd:x28(0x1616161416161614)
inst_89:
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x1616161416161614, 0xffffffffffffbfff, 0x1, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x1616161416161614) 





    # address for test results
    # la x4, test_19_res
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x4,signature_19_0)


    # Testcase 90:  rs1:x3(0xffffffffffff7fff), imm:0x3, result rd:x29(0x1616161e1616161e)
inst_90:
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x1616161e1616161e, 0xffffffffffff7fff, 0x3, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x1616161e1616161e) 


    # Testcase 91:  rs1:x2(0xfffffffffffeffff), imm:0x1, result rd:x30(0x1616161416161614)
inst_91:
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x1616161416161614, 0xfffffffffffeffff, 0x1, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x1616161416161614) 


    # Testcase 92:  rs1:x1(0xfffffffffffdffff), imm:0x2, result rd:x31(0x1616161216161612)
inst_92:
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x1616161216161612, 0xfffffffffffdffff, 0x2, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x1616161216161612) 


    # Testcase 93:  rs1:x31(0xfffffffffffbffff), imm:0x0, result rd:x1(0x1616161716161617)
inst_93:
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x1616161716161617, 0xfffffffffffbffff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x1616161716161617) 


    # Testcase 94:  rs1:x30(0xfffffffffff7ffff), imm:0x2, result rd:x2(0x1616161216161612)
inst_94:
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x1616161216161612, 0xfffffffffff7ffff, 0x2, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x1616161216161612) 





    # address for test results
    # la x1, test_20_res
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_20_0)


    # Testcase 95:  rs1:x29(0xffffffffffefffff), imm:0x1, result rd:x3(0x1616161416161614)
inst_95:
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x1616161416161614, 0xffffffffffefffff, 0x1, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x1616161416161614) 


    # Testcase 96:  rs1:x28(0xffffffffffdfffff), imm:0x3, result rd:x4(0x1616161e1616161e)
inst_96:
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x1616161e1616161e, 0xffffffffffdfffff, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x1616161e1616161e) 


    # Testcase 97:  rs1:x27(0xffffffffffbfffff), imm:0x3, result rd:x5(0x1616161e1616161e)
inst_97:
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x1616161e1616161e, 0xffffffffffbfffff, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x1616161e1616161e) 


    # Testcase 98:  rs1:x26(0xffffffffff7fffff), imm:0x0, result rd:x6(0x1616161716161617)
inst_98:
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x1616161716161617, 0xffffffffff7fffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x1616161716161617) 


    # Testcase 99:  rs1:x25(0xfffffffffeffffff), imm:0x3, result rd:x7(0x1616161e1616161e)
inst_99:
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x1616161e1616161e, 0xfffffffffeffffff, 0x3, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x1616161e1616161e) 





    # address for test results
    # la x1, test_21_res
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_21_0)


    # Testcase 100:  rs1:x24(0xfffffffffdffffff), imm:0x3, result rd:x8(0x1616161e1616161e)
inst_100:
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x1616161e1616161e, 0xfffffffffdffffff, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x1616161e1616161e) 


    # Testcase 101:  rs1:x23(0xfffffffffbffffff), imm:0x3, result rd:x9(0x1616161e1616161e)
inst_101:
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x1616161e1616161e, 0xfffffffffbffffff, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x1616161e1616161e) 


    # Testcase 102:  rs1:x22(0xfffffffff7ffffff), imm:0x3, result rd:x10(0x1616161e1616161e)
inst_102:
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x1616161e1616161e, 0xfffffffff7ffffff, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x1616161e1616161e) 


    # Testcase 103:  rs1:x21(0xffffffffefffffff), imm:0x3, result rd:x11(0x1616161e1616161e)
inst_103:
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x1616161e1616161e, 0xffffffffefffffff, 0x3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x1616161e1616161e) 


    # Testcase 104:  rs1:x20(0xffffffffdfffffff), imm:0x1, result rd:x12(0x1616161416161614)
inst_104:
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x1616161416161614, 0xffffffffdfffffff, 0x1, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x1616161416161614) 





    # address for test results
    # la x5, test_22_res
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x5,signature_22_0)


    # Testcase 105:  rs1:x19(0xffffffffbfffffff), imm:0x1, result rd:x13(0x1616161416161614)
inst_105:
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x1616161416161614, 0xffffffffbfffffff, 0x1, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x1616161416161614) 


    # Testcase 106:  rs1:x18(0xffffffff7fffffff), imm:0x3, result rd:x14(0x1616161e1616161e)
inst_106:
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x1616161e1616161e, 0xffffffff7fffffff, 0x3, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x1616161e1616161e) 


    # Testcase 107:  rs1:x17(0xfffffffeffffffff), imm:0x1, result rd:x15(0xbb161614bb161614)
inst_107:
    TEST_IMM_OP(aes64ks1i, x15, x17, 0xbb161614bb161614, 0xfffffffeffffffff, 0x1, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0xbb161614bb161614) 


    # Testcase 108:  rs1:x16(0xfffffffdffffffff), imm:0x2, result rd:x16(0x5416161254161612)
inst_108:
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x5416161254161612, 0xfffffffdffffffff, 0x2, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x5416161254161612) 


    # Testcase 109:  rs1:x15(0xfffffffbffffffff), imm:0x0, result rd:x17(0x0f1616170f161617)
inst_109:
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x0f1616170f161617, 0xfffffffbffffffff, 0x0, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0x0f1616170f161617) 





    # address for test results
    # la x1, test_23_res
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_23_0)


    # Testcase 110:  rs1:x14(0xfffffff7ffffffff), imm:0x2, result rd:x18(0x6816161268161612)
inst_110:
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x6816161268161612, 0xfffffff7ffffffff, 0x2, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x6816161268161612) 


    # Testcase 111:  rs1:x13(0xffffffefffffffff), imm:0x1, result rd:x19(0xdf161614df161614)
inst_111:
    TEST_IMM_OP(aes64ks1i, x19, x13, 0xdf161614df161614, 0xffffffefffffffff, 0x1, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xdf161614df161614) 


    # Testcase 112:  rs1:x12(0xffffffdfffffffff), imm:0x3, result rd:x20(0x9e16161e9e16161e)
inst_112:
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x9e16161e9e16161e, 0xffffffdfffffffff, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x9e16161e9e16161e) 


    # Testcase 113:  rs1:x11(0xffffffbfffffffff), imm:0x3, result rd:x21(0x0816161e0816161e)
inst_113:
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x0816161e0816161e, 0xffffffbfffffffff, 0x3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0816161e0816161e) 


    # Testcase 114:  rs1:x10(0xffffff7fffffffff), imm:0x0, result rd:x22(0xd2161617d2161617)
inst_114:
    TEST_IMM_OP(aes64ks1i, x22, x10, 0xd2161617d2161617, 0xffffff7fffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xd2161617d2161617) 





    # address for test results
    # la x1, test_24_res
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_24_0)


    # Testcase 115:  rs1:x9(0xfffffeffffffffff), imm:0x3, result rd:x23(0x161616b3161616b3)
inst_115:
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x161616b3161616b3, 0xfffffeffffffffff, 0x3, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x161616b3161616b3) 


    # Testcase 116:  rs1:x8(0xfffffdffffffffff), imm:0x3, result rd:x24(0x1616165c1616165c)
inst_116:
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x1616165c1616165c, 0xfffffdffffffffff, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x1616165c1616165c) 


    # Testcase 117:  rs1:x7(0xfffffbffffffffff), imm:0x3, result rd:x25(0x1616160716161607)
inst_117:
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x1616160716161607, 0xfffffbffffffffff, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x1616160716161607) 


    # Testcase 118:  rs1:x6(0xfffff7ffffffffff), imm:0x3, result rd:x26(0x1616166016161660)
inst_118:
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x1616166016161660, 0xfffff7ffffffffff, 0x3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x1616166016161660) 


    # Testcase 119:  rs1:x5(0xffffefffffffffff), imm:0x3, result rd:x27(0x161616d7161616d7)
inst_119:
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x161616d7161616d7, 0xffffefffffffffff, 0x3, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x161616d7161616d7) 





    # address for test results
    # la x5, test_25_res
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x5,signature_25_0)


    # Testcase 120:  rs1:x4(0xffffdfffffffffff), imm:0x1, result rd:x28(0x1616169c1616169c)
inst_120:
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x1616169c1616169c, 0xffffdfffffffffff, 0x1, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0x1616169c1616169c) 


    # Testcase 121:  rs1:x3(0xffffbfffffffffff), imm:0x1, result rd:x29(0x1616160a1616160a)
inst_121:
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x1616160a1616160a, 0xffffbfffffffffff, 0x1, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0x1616160a1616160a) 


    # Testcase 122:  rs1:x2(0xffff7fffffffffff), imm:0x3, result rd:x30(0x161616da161616da)
inst_122:
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x161616da161616da, 0xffff7fffffffffff, 0x3, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0x161616da161616da) 


    # Testcase 123:  rs1:x1(0xfffeffffffffffff), imm:0x1, result rd:x31(0x1616bb141616bb14)
inst_123:
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x1616bb141616bb14, 0xfffeffffffffffff, 0x1, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x1616bb141616bb14) 


    # Testcase 124:  rs1:x31(0xfffdffffffffffff), imm:0x2, result rd:x1(0x1616541216165412)
inst_124:
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x1616541216165412, 0xfffdffffffffffff, 0x2, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x1616541216165412) 





    # address for test results
    # la x1, test_26_res
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_26_0)


    # Testcase 125:  rs1:x30(0xfffbffffffffffff), imm:0x0, result rd:x2(0x16160f1716160f17)
inst_125:
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x16160f1716160f17, 0xfffbffffffffffff, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x16160f1716160f17) 


    # Testcase 126:  rs1:x29(0xfff7ffffffffffff), imm:0x2, result rd:x3(0x1616681216166812)
inst_126:
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x1616681216166812, 0xfff7ffffffffffff, 0x2, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x1616681216166812) 


    # Testcase 127:  rs1:x28(0xffefffffffffffff), imm:0x1, result rd:x4(0x1616df141616df14)
inst_127:
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x1616df141616df14, 0xffefffffffffffff, 0x1, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x1616df141616df14) 


    # Testcase 128:  rs1:x27(0xffdfffffffffffff), imm:0x3, result rd:x5(0x16169e1e16169e1e)
inst_128:
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x16169e1e16169e1e, 0xffdfffffffffffff, 0x3, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x16169e1e16169e1e) 


    # Testcase 129:  rs1:x26(0xffbfffffffffffff), imm:0x3, result rd:x6(0x1616081e1616081e)
inst_129:
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x1616081e1616081e, 0xffbfffffffffffff, 0x3, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0x1616081e1616081e) 





    # address for test results
    # la x1, test_27_res
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_27_0)


    # Testcase 130:  rs1:x25(0xff7fffffffffffff), imm:0x0, result rd:x7(0x1616d2171616d217)
inst_130:
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x1616d2171616d217, 0xff7fffffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x1616d2171616d217) 


    # Testcase 131:  rs1:x24(0xfeffffffffffffff), imm:0x0, result rd:x8(0x16bb161716bb1617)
inst_131:
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x16bb161716bb1617, 0xfeffffffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x16bb161716bb1617) 


    # Testcase 132:  rs1:x23(0xfdffffffffffffff), imm:0x0, result rd:x9(0x1654161716541617)
inst_132:
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x1654161716541617, 0xfdffffffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x1654161716541617) 


    # Testcase 133:  rs1:x22(0xfbffffffffffffff), imm:0x0, result rd:x10(0x160f1617160f1617)
inst_133:
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x160f1617160f1617, 0xfbffffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x160f1617160f1617) 


    # Testcase 134:  rs1:x21(0xf7ffffffffffffff), imm:0x0, result rd:x11(0x1668161716681617)
inst_134:
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x1668161716681617, 0xf7ffffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x1668161716681617) 





    # address for test results
    # la x6, test_28_res
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x6,signature_28_0)


    # Testcase 135:  rs1:x20(0xefffffffffffffff), imm:0x0, result rd:x12(0x16df161716df1617)
inst_135:
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x16df161716df1617, 0xefffffffffffffff, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x16df161716df1617) 


    # Testcase 136:  rs1:x19(0xdfffffffffffffff), imm:0x0, result rd:x13(0x169e1617169e1617)
inst_136:
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x169e1617169e1617, 0xdfffffffffffffff, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x169e1617169e1617) 


    # Testcase 137:  rs1:x18(0xbfffffffffffffff), imm:0x0, result rd:x14(0x1608161716081617)
inst_137:
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x1608161716081617, 0xbfffffffffffffff, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x1608161716081617) 


    # Testcase 138:  rs1:x17(0x7fffffffffffffff), imm:0x0, result rd:x15(0x16d2161716d21617)
inst_138:
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x16d2161716d21617, 0x7fffffffffffffff, 0x0, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x16d2161716d21617) 


    # Testcase 139:  rs1:x16(0xffffffffffffffff), imm:0x0, result rd:x16(0x1616161716161617)
inst_139:
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x1616161716161617, 0xffffffffffffffff, 0x0, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0x1616161716161617) 





    # address for test results
    # la x1, test_29_res
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_29_0)


    # Testcase 140:  rs1:x15(0x0000000000000001), imm:0x0, result rd:x17(0x6363636263636362)
inst_140:
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x6363636263636362, 0x1, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x6363636263636362) 


    # Testcase 141:  rs1:x14(0x0000000000000002), imm:0x0, result rd:x18(0x6363636263636362)
inst_141:
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x6363636263636362, 0x2, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x6363636263636362) 


    # Testcase 142:  rs1:x13(0x0000000000000004), imm:0x0, result rd:x19(0x6363636263636362)
inst_142:
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x6363636263636362, 0x4, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x6363636263636362) 


    # Testcase 143:  rs1:x12(0x0000000000000008), imm:0x0, result rd:x20(0x6363636263636362)
inst_143:
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x6363636263636362, 0x8, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x6363636263636362) 


    # Testcase 144:  rs1:x11(0x0000000000000010), imm:0x0, result rd:x21(0x6363636263636362)
inst_144:
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x6363636263636362, 0x10, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x6363636263636362) 





    # address for test results
    # la x1, test_30_res
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_30_0)


    # Testcase 145:  rs1:x10(0x0000000000000020), imm:0x0, result rd:x22(0x6363636263636362)
inst_145:
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x6363636263636362, 0x20, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x6363636263636362) 


    # Testcase 146:  rs1:x9(0x0000000000000040), imm:0x0, result rd:x23(0x6363636263636362)
inst_146:
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x6363636263636362, 0x40, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x6363636263636362) 


    # Testcase 147:  rs1:x8(0x0000000000000080), imm:0x0, result rd:x24(0x6363636263636362)
inst_147:
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x6363636263636362, 0x80, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x6363636263636362) 


    # Testcase 148:  rs1:x7(0x0000000000000100), imm:0x0, result rd:x25(0x6363636263636362)
inst_148:
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x6363636263636362, 0x100, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x6363636263636362) 


    # Testcase 149:  rs1:x6(0x0000000000000200), imm:0x0, result rd:x26(0x6363636263636362)
inst_149:
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x6363636263636362, 0x200, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x6363636263636362) 





    # address for test results
    # la x6, test_31_res
    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x6,signature_31_0)


    # Testcase 150:  rs1:x5(0x0000000000000400), imm:0x0, result rd:x27(0x6363636263636362)
inst_150:
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x6363636263636362, 0x400, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x6363636263636362) 


    # Testcase 151:  rs1:x4(0x0000000000000800), imm:0x0, result rd:x28(0x6363636263636362)
inst_151:
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x6363636263636362, 0x800, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x6363636263636362) 


    # Testcase 152:  rs1:x3(0x0000000000001000), imm:0x0, result rd:x29(0x6363636263636362)
inst_152:
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x6363636263636362, 0x1000, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x6363636263636362) 


    # Testcase 153:  rs1:x2(0x0000000000002000), imm:0x0, result rd:x30(0x6363636263636362)
inst_153:
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x6363636263636362, 0x2000, 0x0, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x6363636263636362) 


    # Testcase 154:  rs1:x1(0x0000000000004000), imm:0x0, result rd:x31(0x6363636263636362)
inst_154:
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x6363636263636362, 0x4000, 0x0, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x31, 0x6363636263636362) 





    # address for test results
    # la x6, test_32_res
    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x6,signature_32_0)


    # Testcase 155:  rs1:x31(0x0000000000008000), imm:0x0, result rd:x1(0x6363636263636362)
inst_155:
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x6363636263636362, 0x8000, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x6363636263636362) 


    # Testcase 156:  rs1:x30(0x0000000000010000), imm:0x0, result rd:x2(0x6363636263636362)
inst_156:
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x6363636263636362, 0x10000, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x6363636263636362) 


    # Testcase 157:  rs1:x29(0x0000000000020000), imm:0x0, result rd:x3(0x6363636263636362)
inst_157:
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x6363636263636362, 0x20000, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x6363636263636362) 


    # Testcase 158:  rs1:x28(0x0000000000040000), imm:0x0, result rd:x4(0x6363636263636362)
inst_158:
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x6363636263636362, 0x40000, 0x0, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x6363636263636362) 


    # Testcase 159:  rs1:x27(0x0000000000080000), imm:0x0, result rd:x5(0x6363636263636362)
inst_159:
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x6363636263636362, 0x80000, 0x0, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x6363636263636362) 





    # address for test results
    # la x1, test_33_res
    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_33_0)


    # Testcase 160:  rs1:x26(0x0000000000100000), imm:0x0, result rd:x6(0x6363636263636362)
inst_160:
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x6363636263636362, 0x100000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x6363636263636362) 


    # Testcase 161:  rs1:x25(0x0000000000200000), imm:0x0, result rd:x7(0x6363636263636362)
inst_161:
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x6363636263636362, 0x200000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x6363636263636362) 


    # Testcase 162:  rs1:x24(0x0000000000400000), imm:0x0, result rd:x8(0x6363636263636362)
inst_162:
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x6363636263636362, 0x400000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x6363636263636362) 


    # Testcase 163:  rs1:x23(0x0000000000800000), imm:0x0, result rd:x9(0x6363636263636362)
inst_163:
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x6363636263636362, 0x800000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x6363636263636362) 


    # Testcase 164:  rs1:x22(0x0000000001000000), imm:0x0, result rd:x10(0x6363636263636362)
inst_164:
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x6363636263636362, 0x1000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x6363636263636362) 





    # address for test results
    # la x1, test_34_res
    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_34_0)


    # Testcase 165:  rs1:x21(0x0000000002000000), imm:0x0, result rd:x11(0x6363636263636362)
inst_165:
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x6363636263636362, 0x2000000, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x6363636263636362) 


    # Testcase 166:  rs1:x20(0x0000000004000000), imm:0x0, result rd:x12(0x6363636263636362)
inst_166:
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x6363636263636362, 0x4000000, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x6363636263636362) 


    # Testcase 167:  rs1:x19(0x0000000008000000), imm:0x0, result rd:x13(0x6363636263636362)
inst_167:
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x6363636263636362, 0x8000000, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x6363636263636362) 


    # Testcase 168:  rs1:x18(0x0000000010000000), imm:0x0, result rd:x14(0x6363636263636362)
inst_168:
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x6363636263636362, 0x10000000, 0x0, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x6363636263636362) 


    # Testcase 169:  rs1:x17(0x0000000020000000), imm:0x0, result rd:x15(0x6363636263636362)
inst_169:
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x6363636263636362, 0x20000000, 0x0, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x6363636263636362) 





    # address for test results
    # la x2, test_35_res
    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x2,signature_35_0)


    # Testcase 170:  rs1:x16(0x0000000040000000), imm:0x0, result rd:x16(0x6363636263636362)
inst_170:
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x6363636263636362, 0x40000000, 0x0, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x6363636263636362) 


    # Testcase 171:  rs1:x15(0x0000000080000000), imm:0x0, result rd:x17(0x6363636263636362)
inst_171:
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x6363636263636362, 0x80000000, 0x0, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x6363636263636362) 


    # Testcase 172:  rs1:x14(0x0000000100000000), imm:0x0, result rd:x18(0x7c6363627c636362)
inst_172:
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x7c6363627c636362, 0x100000000, 0x0, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x7c6363627c636362) 


    # Testcase 173:  rs1:x13(0x0000000200000000), imm:0x0, result rd:x19(0x7763636277636362)
inst_173:
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x7763636277636362, 0x200000000, 0x0, x2, 24, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x7763636277636362) 


    # Testcase 174:  rs1:x12(0x0000000400000000), imm:0x0, result rd:x20(0xf2636362f2636362)
inst_174:
    TEST_IMM_OP(aes64ks1i, x20, x12, 0xf2636362f2636362, 0x400000000, 0x0, x2, 32, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0xf2636362f2636362) 





    # address for test results
    # la x1, test_36_res
    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_36_0)


    # Testcase 175:  rs1:x11(0x0000000800000000), imm:0x0, result rd:x21(0x3063636230636362)
inst_175:
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x3063636230636362, 0x800000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x3063636230636362) 


    # Testcase 176:  rs1:x10(0x0000001000000000), imm:0x0, result rd:x22(0xca636362ca636362)
inst_176:
    TEST_IMM_OP(aes64ks1i, x22, x10, 0xca636362ca636362, 0x1000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xca636362ca636362) 


    # Testcase 177:  rs1:x9(0x0000002000000000), imm:0x0, result rd:x23(0xb7636362b7636362)
inst_177:
    TEST_IMM_OP(aes64ks1i, x23, x9, 0xb7636362b7636362, 0x2000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xb7636362b7636362) 


    # Testcase 178:  rs1:x8(0x0000004000000000), imm:0x0, result rd:x24(0x0963636209636362)
inst_178:
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x0963636209636362, 0x4000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0963636209636362) 


    # Testcase 179:  rs1:x7(0x0000008000000000), imm:0x0, result rd:x25(0xcd636362cd636362)
inst_179:
    TEST_IMM_OP(aes64ks1i, x25, x7, 0xcd636362cd636362, 0x8000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xcd636362cd636362) 





    # address for test results
    # la x1, test_37_res
    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_37_0)


    # Testcase 180:  rs1:x6(0x0000010000000000), imm:0x0, result rd:x26(0x6363637d6363637d)
inst_180:
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x6363637d6363637d, 0x10000000000, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x6363637d6363637d) 


    # Testcase 181:  rs1:x5(0x0000020000000000), imm:0x0, result rd:x27(0x6363637663636376)
inst_181:
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x6363637663636376, 0x20000000000, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x6363637663636376) 


    # Testcase 182:  rs1:x4(0x0000040000000000), imm:0x0, result rd:x28(0x636363f3636363f3)
inst_182:
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x636363f3636363f3, 0x40000000000, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x636363f3636363f3) 


    # Testcase 183:  rs1:x3(0x0000080000000000), imm:0x0, result rd:x29(0x6363633163636331)
inst_183:
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x6363633163636331, 0x80000000000, 0x0, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x6363633163636331) 


    # Testcase 184:  rs1:x2(0x0000100000000000), imm:0x0, result rd:x30(0x636363cb636363cb)
inst_184:
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x636363cb636363cb, 0x100000000000, 0x0, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x636363cb636363cb) 





    # address for test results
    # la x5, test_38_res
    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x5,signature_38_0)


    # Testcase 185:  rs1:x1(0x0000200000000000), imm:0x0, result rd:x31(0x636363b6636363b6)
inst_185:
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x636363b6636363b6, 0x200000000000, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x636363b6636363b6) 


    # Testcase 186:  rs1:x31(0x0000400000000000), imm:0x0, result rd:x1(0x6363630863636308)
inst_186:
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x6363630863636308, 0x400000000000, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x6363630863636308) 


    # Testcase 187:  rs1:x30(0x0000800000000000), imm:0x0, result rd:x2(0x636363cc636363cc)
inst_187:
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x636363cc636363cc, 0x800000000000, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x636363cc636363cc) 


    # Testcase 188:  rs1:x29(0x0001000000000000), imm:0x0, result rd:x3(0x63637c6263637c62)
inst_188:
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x63637c6263637c62, 0x1000000000000, 0x0, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x63637c6263637c62) 


    # Testcase 189:  rs1:x28(0x0002000000000000), imm:0x0, result rd:x4(0x6363776263637762)
inst_189:
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x6363776263637762, 0x2000000000000, 0x0, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x6363776263637762) 





    # address for test results
    # la x1, test_39_res
    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_39_0)


    # Testcase 190:  rs1:x27(0x0004000000000000), imm:0x0, result rd:x5(0x6363f2626363f262)
inst_190:
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x6363f2626363f262, 0x4000000000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x6363f2626363f262) 


    # Testcase 191:  rs1:x26(0x0008000000000000), imm:0x0, result rd:x6(0x6363306263633062)
inst_191:
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x6363306263633062, 0x8000000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x6363306263633062) 


    # Testcase 192:  rs1:x25(0x0010000000000000), imm:0x0, result rd:x7(0x6363ca626363ca62)
inst_192:
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x6363ca626363ca62, 0x10000000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x6363ca626363ca62) 


    # Testcase 193:  rs1:x24(0x0020000000000000), imm:0x0, result rd:x8(0x6363b7626363b762)
inst_193:
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x6363b7626363b762, 0x20000000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x6363b7626363b762) 


    # Testcase 194:  rs1:x23(0x0040000000000000), imm:0x0, result rd:x9(0x6363096263630962)
inst_194:
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x6363096263630962, 0x40000000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x6363096263630962) 





    # address for test results
    # la x1, test_40_res
    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_40_0)


    # Testcase 195:  rs1:x22(0x0080000000000000), imm:0x0, result rd:x10(0x6363cd626363cd62)
inst_195:
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x6363cd626363cd62, 0x80000000000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x6363cd626363cd62) 


    # Testcase 196:  rs1:x21(0x0100000000000000), imm:0x0, result rd:x11(0x637c6362637c6362)
inst_196:
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x637c6362637c6362, 0x100000000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x637c6362637c6362) 


    # Testcase 197:  rs1:x20(0x0200000000000000), imm:0x0, result rd:x12(0x6377636263776362)
inst_197:
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x6377636263776362, 0x200000000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x6377636263776362) 


    # Testcase 198:  rs1:x19(0x0400000000000000), imm:0x0, result rd:x13(0x63f2636263f26362)
inst_198:
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x63f2636263f26362, 0x400000000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x63f2636263f26362) 


    # Testcase 199:  rs1:x18(0x0800000000000000), imm:0x0, result rd:x14(0x6330636263306362)
inst_199:
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x6330636263306362, 0x800000000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x6330636263306362) 





    # address for test results
    # la x3, test_41_res
    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x3,signature_41_0)


    # Testcase 200:  rs1:x17(0x1000000000000000), imm:0x0, result rd:x15(0x63ca636263ca6362)
inst_200:
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x63ca636263ca6362, 0x1000000000000000, 0x0, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x63ca636263ca6362) 


    # Testcase 201:  rs1:x16(0x2000000000000000), imm:0x0, result rd:x16(0x63b7636263b76362)
inst_201:
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x63b7636263b76362, 0x2000000000000000, 0x0, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x63b7636263b76362) 


    # Testcase 202:  rs1:x15(0x4000000000000000), imm:0x0, result rd:x17(0x6309636263096362)
inst_202:
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x6309636263096362, 0x4000000000000000, 0x0, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x6309636263096362) 


    # Testcase 203:  rs1:x14(0x8000000000000000), imm:0x0, result rd:x18(0x63cd636263cd6362)
inst_203:
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x63cd636263cd6362, 0x8000000000000000, 0x0, x3, 24, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x63cd636263cd6362) 


    # Testcase 204:  rs1:x13(0x0000000000000000), imm:0x0, result rd:x19(0x6363636263636362)
inst_204:
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x6363636263636362, 0x0, 0x0, x3, 32, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x6363636263636362) 





    # address for test results
    # la x1, test_42_res
    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_42_0)


    # Testcase 205:  rs1:x12(0xfffffffffffffffe), imm:0x0, result rd:x20(0x1616161716161617)
inst_205:
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x1616161716161617, 0xfffffffffffffffe, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x1616161716161617) 


    # Testcase 206:  rs1:x11(0xfffffffffffffffd), imm:0x0, result rd:x21(0x1616161716161617)
inst_206:
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x1616161716161617, 0xfffffffffffffffd, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x1616161716161617) 


    # Testcase 207:  rs1:x10(0xfffffffffffffffb), imm:0x0, result rd:x22(0x1616161716161617)
inst_207:
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x1616161716161617, 0xfffffffffffffffb, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x1616161716161617) 


    # Testcase 208:  rs1:x9(0xfffffffffffffff7), imm:0x0, result rd:x23(0x1616161716161617)
inst_208:
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x1616161716161617, 0xfffffffffffffff7, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x1616161716161617) 


    # Testcase 209:  rs1:x8(0xffffffffffffffef), imm:0x0, result rd:x24(0x1616161716161617)
inst_209:
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x1616161716161617, 0xffffffffffffffef, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x1616161716161617) 





    # address for test results
    # la x1, test_43_res
    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_43_0)


    # Testcase 210:  rs1:x7(0xffffffffffffffdf), imm:0x0, result rd:x25(0x1616161716161617)
inst_210:
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x1616161716161617, 0xffffffffffffffdf, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x1616161716161617) 


    # Testcase 211:  rs1:x6(0xffffffffffffffbf), imm:0x0, result rd:x26(0x1616161716161617)
inst_211:
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x1616161716161617, 0xffffffffffffffbf, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x1616161716161617) 


    # Testcase 212:  rs1:x5(0xffffffffffffff7f), imm:0x0, result rd:x27(0x1616161716161617)
inst_212:
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x1616161716161617, 0xffffffffffffff7f, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x1616161716161617) 


    # Testcase 213:  rs1:x4(0xfffffffffffffeff), imm:0x0, result rd:x28(0x1616161716161617)
inst_213:
    TEST_IMM_OP(aes64ks1i, x28, x4, 0x1616161716161617, 0xfffffffffffffeff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x1616161716161617) 


    # Testcase 214:  rs1:x3(0xfffffffffffffdff), imm:0x0, result rd:x29(0x1616161716161617)
inst_214:
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x1616161716161617, 0xfffffffffffffdff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x1616161716161617) 





    # address for test results
    # la x4, test_44_res
    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x4,signature_44_0)


    # Testcase 215:  rs1:x2(0xfffffffffffffbff), imm:0x0, result rd:x30(0x1616161716161617)
inst_215:
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x1616161716161617, 0xfffffffffffffbff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x1616161716161617) 


    # Testcase 216:  rs1:x1(0xfffffffffffff7ff), imm:0x0, result rd:x31(0x1616161716161617)
inst_216:
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x1616161716161617, 0xfffffffffffff7ff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x1616161716161617) 


    # Testcase 217:  rs1:x31(0xffffffffffffefff), imm:0x0, result rd:x1(0x1616161716161617)
inst_217:
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x1616161716161617, 0xffffffffffffefff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x1616161716161617) 


    # Testcase 218:  rs1:x30(0xffffffffffffdfff), imm:0x0, result rd:x2(0x1616161716161617)
inst_218:
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x1616161716161617, 0xffffffffffffdfff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x1616161716161617) 


    # Testcase 219:  rs1:x29(0xffffffffffffbfff), imm:0x0, result rd:x3(0x1616161716161617)
inst_219:
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x1616161716161617, 0xffffffffffffbfff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x1616161716161617) 





    # address for test results
    # la x1, test_45_res
    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_45_0)


    # Testcase 220:  rs1:x28(0xffffffffffff7fff), imm:0x0, result rd:x4(0x1616161716161617)
inst_220:
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x1616161716161617, 0xffffffffffff7fff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x1616161716161617) 


    # Testcase 221:  rs1:x27(0xfffffffffffeffff), imm:0x0, result rd:x5(0x1616161716161617)
inst_221:
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x1616161716161617, 0xfffffffffffeffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x1616161716161617) 


    # Testcase 222:  rs1:x26(0xfffffffffffdffff), imm:0x0, result rd:x6(0x1616161716161617)
inst_222:
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x1616161716161617, 0xfffffffffffdffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x1616161716161617) 


    # Testcase 223:  rs1:x25(0xfffffffffffbffff), imm:0x0, result rd:x7(0x1616161716161617)
inst_223:
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x1616161716161617, 0xfffffffffffbffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x1616161716161617) 


    # Testcase 224:  rs1:x24(0xfffffffffff7ffff), imm:0x0, result rd:x8(0x1616161716161617)
inst_224:
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x1616161716161617, 0xfffffffffff7ffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x1616161716161617) 





    # address for test results
    # la x1, test_46_res
    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_46_0)


    # Testcase 225:  rs1:x23(0xffffffffffefffff), imm:0x0, result rd:x9(0x1616161716161617)
inst_225:
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x1616161716161617, 0xffffffffffefffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x1616161716161617) 


    # Testcase 226:  rs1:x22(0xffffffffffdfffff), imm:0x0, result rd:x10(0x1616161716161617)
inst_226:
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x1616161716161617, 0xffffffffffdfffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x1616161716161617) 


    # Testcase 227:  rs1:x21(0xffffffffffbfffff), imm:0x0, result rd:x11(0x1616161716161617)
inst_227:
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x1616161716161617, 0xffffffffffbfffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x1616161716161617) 


    # Testcase 228:  rs1:x20(0xffffffffff7fffff), imm:0x0, result rd:x12(0x1616161716161617)
inst_228:
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x1616161716161617, 0xffffffffff7fffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x1616161716161617) 


    # Testcase 229:  rs1:x19(0xfffffffffeffffff), imm:0x0, result rd:x13(0x1616161716161617)
inst_229:
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x1616161716161617, 0xfffffffffeffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x1616161716161617) 





    # address for test results
    # la x4, test_47_res
    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x4,signature_47_0)


    # Testcase 230:  rs1:x18(0xfffffffffdffffff), imm:0x0, result rd:x14(0x1616161716161617)
inst_230:
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x1616161716161617, 0xfffffffffdffffff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0x1616161716161617) 


    # Testcase 231:  rs1:x17(0xfffffffffbffffff), imm:0x0, result rd:x15(0x1616161716161617)
inst_231:
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x1616161716161617, 0xfffffffffbffffff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x1616161716161617) 


    # Testcase 232:  rs1:x16(0xfffffffff7ffffff), imm:0x0, result rd:x16(0x1616161716161617)
inst_232:
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x1616161716161617, 0xfffffffff7ffffff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x1616161716161617) 


    # Testcase 233:  rs1:x15(0xffffffffefffffff), imm:0x0, result rd:x17(0x1616161716161617)
inst_233:
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x1616161716161617, 0xffffffffefffffff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x1616161716161617) 


    # Testcase 234:  rs1:x14(0xffffffffdfffffff), imm:0x0, result rd:x18(0x1616161716161617)
inst_234:
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x1616161716161617, 0xffffffffdfffffff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x1616161716161617) 





    # address for test results
    # la x1, test_48_res
    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_48_0)


    # Testcase 235:  rs1:x13(0xffffffffbfffffff), imm:0x0, result rd:x19(0x1616161716161617)
inst_235:
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x1616161716161617, 0xffffffffbfffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x1616161716161617) 


    # Testcase 236:  rs1:x12(0xffffffff7fffffff), imm:0x0, result rd:x20(0x1616161716161617)
inst_236:
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x1616161716161617, 0xffffffff7fffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x1616161716161617) 


    # Testcase 237:  rs1:x11(0xfffffffeffffffff), imm:0x0, result rd:x21(0xbb161617bb161617)
inst_237:
    TEST_IMM_OP(aes64ks1i, x21, x11, 0xbb161617bb161617, 0xfffffffeffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xbb161617bb161617) 


    # Testcase 238:  rs1:x10(0xfffffffdffffffff), imm:0x0, result rd:x22(0x5416161754161617)
inst_238:
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x5416161754161617, 0xfffffffdffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x5416161754161617) 


    # Testcase 239:  rs1:x9(0xfffffffbffffffff), imm:0x0, result rd:x23(0x0f1616170f161617)
inst_239:
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x0f1616170f161617, 0xfffffffbffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0f1616170f161617) 





    # address for test results
    # la x1, test_49_res
    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_49_0)


    # Testcase 240:  rs1:x8(0xfffffff7ffffffff), imm:0x0, result rd:x24(0x6816161768161617)
inst_240:
    TEST_IMM_OP(aes64ks1i, x24, x8, 0x6816161768161617, 0xfffffff7ffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x6816161768161617) 


    # Testcase 241:  rs1:x7(0xffffffefffffffff), imm:0x0, result rd:x25(0xdf161617df161617)
inst_241:
    TEST_IMM_OP(aes64ks1i, x25, x7, 0xdf161617df161617, 0xffffffefffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xdf161617df161617) 


    # Testcase 242:  rs1:x6(0xffffffdfffffffff), imm:0x0, result rd:x26(0x9e1616179e161617)
inst_242:
    TEST_IMM_OP(aes64ks1i, x26, x6, 0x9e1616179e161617, 0xffffffdfffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x9e1616179e161617) 


    # Testcase 243:  rs1:x5(0xffffffbfffffffff), imm:0x0, result rd:x27(0x0816161708161617)
inst_243:
    TEST_IMM_OP(aes64ks1i, x27, x5, 0x0816161708161617, 0xffffffbfffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x0816161708161617) 


    # Testcase 244:  rs1:x4(0xffffff7fffffffff), imm:0x0, result rd:x28(0xd2161617d2161617)
inst_244:
    TEST_IMM_OP(aes64ks1i, x28, x4, 0xd2161617d2161617, 0xffffff7fffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xd2161617d2161617) 





    # address for test results
    # la x4, test_50_res
    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x4,signature_50_0)


    # Testcase 245:  rs1:x3(0xfffffeffffffffff), imm:0x0, result rd:x29(0x161616ba161616ba)
inst_245:
    TEST_IMM_OP(aes64ks1i, x29, x3, 0x161616ba161616ba, 0xfffffeffffffffff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x161616ba161616ba) 


    # Testcase 246:  rs1:x2(0xfffffdffffffffff), imm:0x0, result rd:x30(0x1616165516161655)
inst_246:
    TEST_IMM_OP(aes64ks1i, x30, x2, 0x1616165516161655, 0xfffffdffffffffff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x1616165516161655) 


    # Testcase 247:  rs1:x1(0xfffffbffffffffff), imm:0x0, result rd:x31(0x1616160e1616160e)
inst_247:
    TEST_IMM_OP(aes64ks1i, x31, x1, 0x1616160e1616160e, 0xfffffbffffffffff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x1616160e1616160e) 


    # Testcase 248:  rs1:x31(0xfffff7ffffffffff), imm:0x0, result rd:x1(0x1616166916161669)
inst_248:
    TEST_IMM_OP(aes64ks1i, x1, x31, 0x1616166916161669, 0xfffff7ffffffffff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x1616166916161669) 


    # Testcase 249:  rs1:x30(0xffffefffffffffff), imm:0x0, result rd:x2(0x161616de161616de)
inst_249:
    TEST_IMM_OP(aes64ks1i, x2, x30, 0x161616de161616de, 0xffffefffffffffff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x161616de161616de) 





    # address for test results
    # la x1, test_51_res
    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_51_0)


    # Testcase 250:  rs1:x29(0xffffdfffffffffff), imm:0x0, result rd:x3(0x1616169f1616169f)
inst_250:
    TEST_IMM_OP(aes64ks1i, x3, x29, 0x1616169f1616169f, 0xffffdfffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x1616169f1616169f) 


    # Testcase 251:  rs1:x28(0xffffbfffffffffff), imm:0x0, result rd:x4(0x1616160916161609)
inst_251:
    TEST_IMM_OP(aes64ks1i, x4, x28, 0x1616160916161609, 0xffffbfffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x1616160916161609) 


    # Testcase 252:  rs1:x27(0xffff7fffffffffff), imm:0x0, result rd:x5(0x161616d3161616d3)
inst_252:
    TEST_IMM_OP(aes64ks1i, x5, x27, 0x161616d3161616d3, 0xffff7fffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x161616d3161616d3) 


    # Testcase 253:  rs1:x26(0xfffeffffffffffff), imm:0x0, result rd:x6(0x1616bb171616bb17)
inst_253:
    TEST_IMM_OP(aes64ks1i, x6, x26, 0x1616bb171616bb17, 0xfffeffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x1616bb171616bb17) 


    # Testcase 254:  rs1:x25(0xfffdffffffffffff), imm:0x0, result rd:x7(0x1616541716165417)
inst_254:
    TEST_IMM_OP(aes64ks1i, x7, x25, 0x1616541716165417, 0xfffdffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x1616541716165417) 





    # address for test results
    # la x1, test_52_res
    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_52_0)


    # Testcase 255:  rs1:x24(0xfffbffffffffffff), imm:0x0, result rd:x8(0x16160f1716160f17)
inst_255:
    TEST_IMM_OP(aes64ks1i, x8, x24, 0x16160f1716160f17, 0xfffbffffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x16160f1716160f17) 


    # Testcase 256:  rs1:x23(0xfff7ffffffffffff), imm:0x0, result rd:x9(0x1616681716166817)
inst_256:
    TEST_IMM_OP(aes64ks1i, x9, x23, 0x1616681716166817, 0xfff7ffffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x1616681716166817) 


    # Testcase 257:  rs1:x22(0xffefffffffffffff), imm:0x0, result rd:x10(0x1616df171616df17)
inst_257:
    TEST_IMM_OP(aes64ks1i, x10, x22, 0x1616df171616df17, 0xffefffffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x1616df171616df17) 


    # Testcase 258:  rs1:x21(0xffdfffffffffffff), imm:0x0, result rd:x11(0x16169e1716169e17)
inst_258:
    TEST_IMM_OP(aes64ks1i, x11, x21, 0x16169e1716169e17, 0xffdfffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x16169e1716169e17) 


    # Testcase 259:  rs1:x20(0xffbfffffffffffff), imm:0x0, result rd:x12(0x1616081716160817)
inst_259:
    TEST_IMM_OP(aes64ks1i, x12, x20, 0x1616081716160817, 0xffbfffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x1616081716160817) 





    # address for test results
    # la x5, test_53_res
    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x5,signature_53_0)


    # Testcase 260:  rs1:x19(0xff7fffffffffffff), imm:0x3, result rd:x13(0x1616d21e1616d21e)
inst_260:
    TEST_IMM_OP(aes64ks1i, x13, x19, 0x1616d21e1616d21e, 0xff7fffffffffffff, 0x3, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x1616d21e1616d21e) 


    # Testcase 261:  rs1:x18(0xfeffffffffffffff), imm:0x3, result rd:x14(0x16bb161e16bb161e)
inst_261:
    TEST_IMM_OP(aes64ks1i, x14, x18, 0x16bb161e16bb161e, 0xfeffffffffffffff, 0x3, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x16bb161e16bb161e) 


    # Testcase 262:  rs1:x17(0xfdffffffffffffff), imm:0x3, result rd:x15(0x1654161e1654161e)
inst_262:
    TEST_IMM_OP(aes64ks1i, x15, x17, 0x1654161e1654161e, 0xfdffffffffffffff, 0x3, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x1654161e1654161e) 


    # Testcase 263:  rs1:x16(0xfbffffffffffffff), imm:0x3, result rd:x16(0x160f161e160f161e)
inst_263:
    TEST_IMM_OP(aes64ks1i, x16, x16, 0x160f161e160f161e, 0xfbffffffffffffff, 0x3, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x160f161e160f161e) 


    # Testcase 264:  rs1:x15(0xf7ffffffffffffff), imm:0x1, result rd:x17(0x1668161416681614)
inst_264:
    TEST_IMM_OP(aes64ks1i, x17, x15, 0x1668161416681614, 0xf7ffffffffffffff, 0x1, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0x1668161416681614) 





    # address for test results
    # la x1, test_54_res
    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_54_0)


    # Testcase 265:  rs1:x14(0xefffffffffffffff), imm:0x1, result rd:x18(0x16df161416df1614)
inst_265:
    TEST_IMM_OP(aes64ks1i, x18, x14, 0x16df161416df1614, 0xefffffffffffffff, 0x1, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x16df161416df1614) 


    # Testcase 266:  rs1:x13(0xdfffffffffffffff), imm:0x3, result rd:x19(0x169e161e169e161e)
inst_266:
    TEST_IMM_OP(aes64ks1i, x19, x13, 0x169e161e169e161e, 0xdfffffffffffffff, 0x3, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x169e161e169e161e) 


    # Testcase 267:  rs1:x12(0xbfffffffffffffff), imm:0x1, result rd:x20(0x1608161416081614)
inst_267:
    TEST_IMM_OP(aes64ks1i, x20, x12, 0x1608161416081614, 0xbfffffffffffffff, 0x1, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x1608161416081614) 


    # Testcase 268:  rs1:x11(0x7fffffffffffffff), imm:0x2, result rd:x21(0x16d2161216d21612)
inst_268:
    TEST_IMM_OP(aes64ks1i, x21, x11, 0x16d2161216d21612, 0x7fffffffffffffff, 0x2, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x16d2161216d21612) 


    # Testcase 269:  rs1:x10(0xffffffffffffffff), imm:0x0, result rd:x22(0x1616161716161617)
inst_269:
    TEST_IMM_OP(aes64ks1i, x22, x10, 0x1616161716161617, 0xffffffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x1616161716161617) 





    # address for test results
    # la x1, test_55_res
    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks1i)
	RVTEST_SIGBASE(x1,signature_55_0)


    # Testcase 270:  rs1:x9(0x10fd3dedadea5195), imm:0x2, result rd:x23(0x55ca542355ca5423)
inst_270:
    TEST_IMM_OP(aes64ks1i, x23, x9, 0x55ca542355ca5423, 0x10fd3dedadea5195, 0x2, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x55ca542355ca5423) 


    # Testcase 271:  rs1:x8(0xbd295ce2d2ffbec1), imm:0x1, result rd:x0(0x0000000000000000)
inst_271:
    TEST_IMM_OP(aes64ks1i, x0, x8, 0x0000000000000000, 0xbd295ce2d2ffbec1, 0x1, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x0000000000000000) 


    # Testcase 272:  rs1:x7(0xc9649f05a8e1a8bb), imm:0x3, result rd:x25(0x6bdd43d36bdd43d3)
inst_272:
    TEST_IMM_OP(aes64ks1i, x25, x7, 0x6bdd43d36bdd43d3, 0xc9649f05a8e1a8bb, 0x3, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x6bdd43d36bdd43d3) 


    # Testcase 273:  rs1:x0(0x3541291848c99fcb), imm:0x3, result rd:x26(0x6363636b6363636b)
inst_273:
    TEST_IMM_OP(aes64ks1i, x26, x0, 0x6363636b6363636b, 0x3541291848c99fcb, 0x3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x6363636b6363636b) 



	
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

