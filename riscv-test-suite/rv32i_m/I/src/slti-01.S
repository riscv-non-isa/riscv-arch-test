
#This assembly file tests the slti instruction of the RISC-V I extension for the slti covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slti)

la x19,signature_x19_1

# opcode: slti ; op1:x20; dest:x14; op1val:0x00000010;  immval:16
TEST_IMM_OP( slti, x14, x20, 0x0, 0x00000010, 16, x19, 0, x23)

# opcode: slti ; op1:x8; dest:x8; op1val:0xfffffff9;  immval:3
TEST_IMM_OP( slti, x8, x8, 0x1, 0xfffffff9, 3, x19, 4, x23)

# opcode: slti ; op1:x9; dest:x4; op1val:0x00000008;  immval:-65
TEST_IMM_OP( slti, x4, x9, 0x0, 0x00000008, -65, x19, 8, x23)

# opcode: slti ; op1:x17; dest:x20; op1val:0xffffdfff;  immval:-3
TEST_IMM_OP( slti, x20, x17, 0x1, 0xffffdfff, -3, x19, 12, x23)

# opcode: slti ; op1:x11; dest:x13; op1val:0x80000000;  immval:2047
TEST_IMM_OP( slti, x13, x11, 0x1, 0x80000000, 2047, x19, 16, x23)

# opcode: slti ; op1:x15; dest:x30; op1val:0x00000000;  immval:-2
TEST_IMM_OP( slti, x30, x15, 0x0, 0x00000000, -2, x19, 20, x23)

# opcode: slti ; op1:x29; dest:x6; op1val:0x7fffffff;  immval:-2048
TEST_IMM_OP( slti, x6, x29, 0x0, 0x7fffffff, -2048, x19, 24, x23)

# opcode: slti ; op1:x3; dest:x27; op1val:0x00000001;  immval:5
TEST_IMM_OP( slti, x27, x3, 0x1, 0x00000001, 5, x19, 28, x23)

# opcode: slti ; op1:x30; dest:x2; op1val:0xfffffffb;  immval:0
TEST_IMM_OP( slti, x2, x30, 0x1, 0xfffffffb, 0, x19, 32, x23)

# opcode: slti ; op1:x5; dest:x10; op1val:0x55555555;  immval:1
TEST_IMM_OP( slti, x10, x5, 0x0, 0x55555555, 1, x19, 36, x23)

# opcode: slti ; op1:x2; dest:x3; op1val:0x00000002;  immval:1365
TEST_IMM_OP( slti, x3, x2, 0x1, 0x00000002, 1365, x19, 40, x23)

# opcode: slti ; op1:x25; dest:x24; op1val:0x00000004;  immval:6
TEST_IMM_OP( slti, x24, x25, 0x1, 0x00000004, 6, x19, 44, x23)

# opcode: slti ; op1:x7; dest:x1; op1val:0x00000020;  immval:-17
TEST_IMM_OP( slti, x1, x7, 0x0, 0x00000020, -17, x19, 48, x23)

# opcode: slti ; op1:x26; dest:x5; op1val:0x00000040;  immval:7
TEST_IMM_OP( slti, x5, x26, 0x0, 0x00000040, 7, x19, 52, x23)

# opcode: slti ; op1:x16; dest:x18; op1val:0x00000080;  immval:-8
TEST_IMM_OP( slti, x18, x16, 0x0, 0x00000080, -8, x19, 56, x23)

# opcode: slti ; op1:x28; dest:x29; op1val:0x00000100;  immval:1023
TEST_IMM_OP( slti, x29, x28, 0x1, 0x00000100, 1023, x19, 60, x23)

# opcode: slti ; op1:x10; dest:x11; op1val:0x00000200;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00000200, 2, x19, 64, x23)

# opcode: slti ; op1:x24; dest:x7; op1val:0x00000400;  immval:9
TEST_IMM_OP( slti, x7, x24, 0x0, 0x00000400, 9, x19, 68, x23)

# opcode: slti ; op1:x14; dest:x28; op1val:0x00000800;  immval:-9
TEST_IMM_OP( slti, x28, x14, 0x0, 0x00000800, -9, x19, 72, x23)

# opcode: slti ; op1:x0; dest:x21; op1val:0x00001000;  immval:128
TEST_IMM_OP( slti, x21, x0, 0x0, 0x00001000, 128, x19, 76, x23)

# opcode: slti ; op1:x12; dest:x22; op1val:0x00002000;  immval:2047
TEST_IMM_OP( slti, x22, x12, 0x0, 0x00002000, 2047, x19, 80, x23)
la x2,signature_x2_0

# opcode: slti ; op1:x27; dest:x15; op1val:0x00004000;  immval:2
TEST_IMM_OP( slti, x15, x27, 0x0, 0x00004000, 2, x2, 0, x3)

# opcode: slti ; op1:x4; dest:x12; op1val:0x00008000;  immval:0
TEST_IMM_OP( slti, x12, x4, 0x0, 0x00008000, 0, x2, 4, x3)

# opcode: slti ; op1:x18; dest:x0; op1val:0x00010000;  immval:-5
TEST_IMM_OP( slti, x0, x18, 0x0, 0x00010000, -5, x2, 8, x3)

# opcode: slti ; op1:x13; dest:x9; op1val:0x00020000;  immval:128
TEST_IMM_OP( slti, x9, x13, 0x0, 0x00020000, 128, x2, 12, x3)

# opcode: slti ; op1:x23; dest:x25; op1val:0x00040000;  immval:1024
TEST_IMM_OP( slti, x25, x23, 0x0, 0x00040000, 1024, x2, 16, x3)

# opcode: slti ; op1:x31; dest:x19; op1val:0x00080000;  immval:-9
TEST_IMM_OP( slti, x19, x31, 0x0, 0x00080000, -9, x2, 20, x3)

# opcode: slti ; op1:x1; dest:x23; op1val:0x00100000;  immval:32
TEST_IMM_OP( slti, x23, x1, 0x0, 0x00100000, 32, x2, 24, x3)

# opcode: slti ; op1:x22; dest:x17; op1val:0x00200000;  immval:-33
TEST_IMM_OP( slti, x17, x22, 0x0, 0x00200000, -33, x2, 28, x3)

# opcode: slti ; op1:x21; dest:x16; op1val:0x00400000;  immval:-7
TEST_IMM_OP( slti, x16, x21, 0x0, 0x00400000, -7, x2, 32, x3)

# opcode: slti ; op1:x19; dest:x31; op1val:0x00800000;  immval:8
TEST_IMM_OP( slti, x31, x19, 0x0, 0x00800000, 8, x2, 36, x3)

# opcode: slti ; op1:x6; dest:x26; op1val:0x01000000;  immval:-6
TEST_IMM_OP( slti, x26, x6, 0x0, 0x01000000, -6, x2, 40, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0x02000000;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x0, 0x02000000, 256, x2, 44, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0x04000000;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x0, 0x04000000, -1, x2, 48, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0x08000000;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x0, 0x08000000, -1, x2, 52, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0x10000000;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x0, 0x10000000, 256, x2, 56, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0x20000000;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x0, 0x20000000, 1024, x2, 60, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0x40000000;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x0, 0x40000000, 3, x2, 64, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffe, 2047, x2, 68, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffd, -1366, x2, 72, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffff7, 2, x2, 76, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffef;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffef, -9, x2, 80, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffdf, -5, x2, 84, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffbf, -17, x2, 88, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfff7ffff, 64, x2, 92, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffefffff, -6, x2, 96, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffdfffff, 2047, x2, 100, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffbfffff, 7, x2, 104, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xff7fffff, -4, x2, 108, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfeffffff, -3, x2, 112, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfdffffff, -8, x2, 116, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfbffffff, 8, x2, 120, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xf7ffffff, 7, x2, 124, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xefffffff;  immval:5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xefffffff, 5, x2, 128, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xdfffffff, -5, x2, 132, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xbfffffff, 4, x2, 136, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xaaaaaaaa, -65, x2, 140, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0x00000200;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00000200, 512, x2, 144, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0x00000080;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00000080, -129, x2, 148, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0x00000007;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00000007, -257, x2, 152, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffeff, -513, x2, 156, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfdffffff, -1025, x2, 160, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffff7f, 5, x2, 164, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffdff, -2048, x2, 168, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffbff, -1025, x2, 172, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffff7ff, -7, x2, 176, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffefff;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffefff, 256, x2, 180, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffbfff, 1024, x2, 184, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffff7fff, 2, x2, 188, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffeffff, 5, x2, 192, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffdffff, -9, x2, 196, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffbffff, -65, x2, 200, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffff9;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffff9, 3, x2, 204, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0x00001000;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00001000, 128, x2, 208, x3)

# opcode: slti ; op1:x10; dest:x11; op1val:0x00010000;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00010000, -5, x2, 212, x3)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x19_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x19_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 54*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
