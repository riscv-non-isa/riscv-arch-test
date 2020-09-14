
#This assembly file tests the slti instruction of the RISC-V I extension for the slti covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slti)

la x7,signature_x7_1

# opcode: slti ; op1:x5; dest:x24; op1val:0xfffffffc;  immval:-4
TEST_IMM_OP( slti, x24, x5, 0x0, 0xfffffffc, -4, x7, 0, x14)

# opcode: slti ; op1:x12; dest:x12; op1val:0xffffffff;  immval:-33
TEST_IMM_OP( slti, x12, x12, 0x0, 0xffffffff, -33, x7, 4, x14)

# opcode: slti ; op1:x27; dest:x28; op1val:0x3fffffff;  immval:2
TEST_IMM_OP( slti, x28, x27, 0x0, 0x3fffffff, 2, x7, 8, x14)

# opcode: slti ; op1:x28; dest:x5; op1val:0x00000080;  immval:-1025
TEST_IMM_OP( slti, x5, x28, 0x0, 0x00000080, -1025, x7, 12, x14)

# opcode: slti ; op1:x1; dest:x18; op1val:0xff7fffff;  immval:9
TEST_IMM_OP( slti, x18, x1, 0x1, 0xff7fffff, 9, x7, 16, x14)

# opcode: slti ; op1:x23; dest:x3; op1val:0x80000000;  immval:16
TEST_IMM_OP( slti, x3, x23, 0x1, 0x80000000, 16, x7, 20, x14)

# opcode: slti ; op1:x6; dest:x15; op1val:0x00000000;  immval:2
TEST_IMM_OP( slti, x15, x6, 0x1, 0x00000000, 2, x7, 24, x14)

# opcode: slti ; op1:x9; dest:x2; op1val:0x7fffffff;  immval:-33
TEST_IMM_OP( slti, x2, x9, 0x0, 0x7fffffff, -33, x7, 28, x14)

# opcode: slti ; op1:x19; dest:x25; op1val:0x00000001;  immval:6
TEST_IMM_OP( slti, x25, x19, 0x1, 0x00000001, 6, x7, 32, x14)

# opcode: slti ; op1:x15; dest:x10; op1val:0xffffefff;  immval:-2048
TEST_IMM_OP( slti, x10, x15, 0x1, 0xffffefff, -2048, x7, 36, x14)

# opcode: slti ; op1:x25; dest:x13; op1val:0x00000080;  immval:0
TEST_IMM_OP( slti, x13, x25, 0x0, 0x00000080, 0, x7, 40, x14)

# opcode: slti ; op1:x26; dest:x27; op1val:0xffbfffff;  immval:2047
TEST_IMM_OP( slti, x27, x26, 0x1, 0xffbfffff, 2047, x7, 44, x14)

# opcode: slti ; op1:x11; dest:x26; op1val:0xfffffff9;  immval:1
TEST_IMM_OP( slti, x26, x11, 0x1, 0xfffffff9, 1, x7, 48, x14)

# opcode: slti ; op1:x8; dest:x30; op1val:0x00000002;  immval:-9
TEST_IMM_OP( slti, x30, x8, 0x0, 0x00000002, -9, x7, 52, x14)

# opcode: slti ; op1:x30; dest:x6; op1val:0x00000004;  immval:1
TEST_IMM_OP( slti, x6, x30, 0x0, 0x00000004, 1, x7, 56, x14)

# opcode: slti ; op1:x31; dest:x17; op1val:0x00000008;  immval:-8
TEST_IMM_OP( slti, x17, x31, 0x0, 0x00000008, -8, x7, 60, x14)

# opcode: slti ; op1:x18; dest:x0; op1val:0x00000010;  immval:2047
TEST_IMM_OP( slti, x0, x18, 0x1, 0x00000010, 2047, x7, 64, x14)

# opcode: slti ; op1:x17; dest:x16; op1val:0x00000020;  immval:-1366
TEST_IMM_OP( slti, x16, x17, 0x0, 0x00000020, -1366, x7, 68, x14)

# opcode: slti ; op1:x20; dest:x21; op1val:0x00000040;  immval:-2048
TEST_IMM_OP( slti, x21, x20, 0x0, 0x00000040, -2048, x7, 72, x14)

# opcode: slti ; op1:x4; dest:x19; op1val:0x00000100;  immval:1024
TEST_IMM_OP( slti, x19, x4, 0x1, 0x00000100, 1024, x7, 76, x14)

# opcode: slti ; op1:x13; dest:x29; op1val:0x00000200;  immval:-10
TEST_IMM_OP( slti, x29, x13, 0x0, 0x00000200, -10, x7, 80, x6)
la x5,signature_x5_0

# opcode: slti ; op1:x16; dest:x1; op1val:0x00000400;  immval:-9
TEST_IMM_OP( slti, x1, x16, 0x0, 0x00000400, -9, x5, 0, x6)

# opcode: slti ; op1:x2; dest:x7; op1val:0x00000800;  immval:-1366
TEST_IMM_OP( slti, x7, x2, 0x0, 0x00000800, -1366, x5, 4, x6)

# opcode: slti ; op1:x14; dest:x20; op1val:0x00001000;  immval:64
TEST_IMM_OP( slti, x20, x14, 0x0, 0x00001000, 64, x5, 8, x6)

# opcode: slti ; op1:x22; dest:x14; op1val:0x00002000;  immval:-10
TEST_IMM_OP( slti, x14, x22, 0x0, 0x00002000, -10, x5, 12, x6)

# opcode: slti ; op1:x3; dest:x23; op1val:0x00004000;  immval:-9
TEST_IMM_OP( slti, x23, x3, 0x0, 0x00004000, -9, x5, 16, x6)

# opcode: slti ; op1:x0; dest:x31; op1val:0x00008000;  immval:32
TEST_IMM_OP( slti, x31, x0, 0x0, 0x00008000, 32, x5, 20, x6)

# opcode: slti ; op1:x21; dest:x4; op1val:0x00010000;  immval:1023
TEST_IMM_OP( slti, x4, x21, 0x0, 0x00010000, 1023, x5, 24, x6)

# opcode: slti ; op1:x10; dest:x8; op1val:0x00020000;  immval:32
TEST_IMM_OP( slti, x8, x10, 0x0, 0x00020000, 32, x5, 28, x6)

# opcode: slti ; op1:x7; dest:x9; op1val:0x00040000;  immval:-257
TEST_IMM_OP( slti, x9, x7, 0x0, 0x00040000, -257, x5, 32, x6)

# opcode: slti ; op1:x24; dest:x22; op1val:0x00080000;  immval:16
TEST_IMM_OP( slti, x22, x24, 0x0, 0x00080000, 16, x5, 36, x6)

# opcode: slti ; op1:x29; dest:x11; op1val:0x00100000;  immval:1365
TEST_IMM_OP( slti, x11, x29, 0x0, 0x00100000, 1365, x5, 40, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x00200000;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00200000, -3, x5, 44, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x00400000;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00400000, 64, x5, 48, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x00800000;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00800000, 64, x5, 52, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x01000000;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x0, 0x01000000, 1365, x5, 56, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x02000000;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x0, 0x02000000, -1, x5, 60, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x04000000;  immval:-1024
TEST_IMM_OP( slti, x11, x10, 0x0, 0x04000000, -1024, x5, 64, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x08000000;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x0, 0x08000000, -33, x5, 68, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x10000000;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x10000000, 7, x5, 72, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x20000000;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x0, 0x20000000, 1365, x5, 76, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x40000000;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x0, 0x40000000, 8, x5, 80, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffe, -1, x5, 84, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffd, 128, x5, 88, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffb, 2047, x5, 92, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffff7, 3, x5, 96, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffef;  immval:5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffef, 5, x5, 100, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffdf, -9, x5, 104, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffbf, -10, x5, 108, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffff7f, -33, x5, 112, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfff7ffff, 32, x5, 116, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffefffff, -9, x5, 120, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffdfffff, -5, x5, 124, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfeffffff, 8, x5, 128, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfdffffff, -10, x5, 132, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfbffffff, -257, x5, 136, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xf7ffffff, -7, x5, 140, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xefffffff;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xefffffff, 1, x5, 144, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xdfffffff, -65, x5, 148, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xbfffffff, 7, x5, 152, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x55555555;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x0, 0x55555555, -1, x5, 156, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xaaaaaaaa, 3, x5, 160, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xbfffffff, 4, x5, 164, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x00800000;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00800000, 256, x5, 168, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffeff, -129, x5, 172, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffdffff, -513, x5, 176, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffdfff, -7, x5, 180, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x20000000;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x20000000, -2, x5, 184, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffdff, 1, x5, 188, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffeff, 512, x5, 192, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffbff, 128, x5, 196, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffff7ff, -6, x5, 200, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffbfff, -1, x5, 204, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffff7fff, 128, x5, 208, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffeffff, 3, x5, 212, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x02000000;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x0, 0x02000000, -17, x5, 216, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffbffff, -9, x5, 220, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffff;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x0, 0xffffffff, -33, x5, 224, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x00000010;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0x00000010, 2047, x5, 228, x6)

# opcode: slti ; op1:x10; dest:x11; op1val:0x00008000;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00008000, 32, x5, 232, x6)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x7_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x5_0:
    .fill 59*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
