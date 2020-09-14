
#This assembly file tests the ori instruction of the RISC-V I extension for the ori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",ori)

la x7,signature_x7_1

# opcode: ori ; op1:x24; dest:x1; op1val:0xfffffffa;  immval:-6
TEST_IMM_OP( ori, x1, x24, 0xfffffffa, 0xfffffffa, -6, x7, 0, x9)

# opcode: ori ; op1:x6; dest:x6; op1val:0x00040000;  immval:1023
TEST_IMM_OP( ori, x6, x6, 0x403ff, 0x00040000, 1023, x7, 4, x9)

# opcode: ori ; op1:x2; dest:x8; op1val:0x00000200;  immval:-513
TEST_IMM_OP( ori, x8, x2, 0xffffffff, 0x00000200, -513, x7, 8, x9)

# opcode: ori ; op1:x12; dest:x26; op1val:0xffffdfff;  immval:5
TEST_IMM_OP( ori, x26, x12, 0xffffdfff, 0xffffdfff, 5, x7, 12, x9)

# opcode: ori ; op1:x19; dest:x22; op1val:0x80000000;  immval:512
TEST_IMM_OP( ori, x22, x19, 0x80000200, 0x80000000, 512, x7, 16, x9)

# opcode: ori ; op1:x23; dest:x13; op1val:0x00000000;  immval:16
TEST_IMM_OP( ori, x13, x23, 0x10, 0x00000000, 16, x7, 20, x9)

# opcode: ori ; op1:x3; dest:x12; op1val:0x7fffffff;  immval:-2048
TEST_IMM_OP( ori, x12, x3, 0xffffffff, 0x7fffffff, -2048, x7, 24, x9)

# opcode: ori ; op1:x18; dest:x23; op1val:0x00000001;  immval:1365
TEST_IMM_OP( ori, x23, x18, 0x555, 0x00000001, 1365, x7, 28, x9)

# opcode: ori ; op1:x5; dest:x4; op1val:0x00000040;  immval:0
TEST_IMM_OP( ori, x4, x5, 0x40, 0x00000040, 0, x7, 32, x9)

# opcode: ori ; op1:x28; dest:x17; op1val:0xfffffff8;  immval:2047
TEST_IMM_OP( ori, x17, x28, 0xffffffff, 0xfffffff8, 2047, x7, 36, x9)

# opcode: ori ; op1:x16; dest:x19; op1val:0x00000010;  immval:1
TEST_IMM_OP( ori, x19, x16, 0x11, 0x00000010, 1, x7, 40, x9)

# opcode: ori ; op1:x22; dest:x21; op1val:0x00000002;  immval:-129
TEST_IMM_OP( ori, x21, x22, 0xffffff7f, 0x00000002, -129, x7, 44, x9)

# opcode: ori ; op1:x14; dest:x28; op1val:0x00000004;  immval:6
TEST_IMM_OP( ori, x28, x14, 0x6, 0x00000004, 6, x7, 48, x9)

# opcode: ori ; op1:x25; dest:x30; op1val:0x00000008;  immval:-1366
TEST_IMM_OP( ori, x30, x25, 0xfffffaaa, 0x00000008, -1366, x7, 52, x9)

# opcode: ori ; op1:x4; dest:x25; op1val:0x00000020;  immval:9
TEST_IMM_OP( ori, x25, x4, 0x29, 0x00000020, 9, x7, 56, x9)

# opcode: ori ; op1:x29; dest:x10; op1val:0x00000080;  immval:-1366
TEST_IMM_OP( ori, x10, x29, 0xfffffaaa, 0x00000080, -1366, x7, 60, x9)

# opcode: ori ; op1:x21; dest:x20; op1val:0x00000100;  immval:-7
TEST_IMM_OP( ori, x20, x21, 0xfffffff9, 0x00000100, -7, x7, 64, x9)

# opcode: ori ; op1:x27; dest:x14; op1val:0x00000400;  immval:4
TEST_IMM_OP( ori, x14, x27, 0x404, 0x00000400, 4, x7, 68, x9)

# opcode: ori ; op1:x31; dest:x29; op1val:0x00000800;  immval:2047
TEST_IMM_OP( ori, x29, x31, 0xfff, 0x00000800, 2047, x7, 72, x9)

# opcode: ori ; op1:x17; dest:x2; op1val:0x00001000;  immval:-65
TEST_IMM_OP( ori, x2, x17, 0xffffffbf, 0x00001000, -65, x7, 76, x4)

# opcode: ori ; op1:x11; dest:x16; op1val:0x00002000;  immval:8
TEST_IMM_OP( ori, x16, x11, 0x2008, 0x00002000, 8, x7, 80, x4)
la x2,signature_x2_0

# opcode: ori ; op1:x13; dest:x11; op1val:0x00004000;  immval:512
TEST_IMM_OP( ori, x11, x13, 0x4200, 0x00004000, 512, x2, 0, x4)

# opcode: ori ; op1:x8; dest:x15; op1val:0x00008000;  immval:1365
TEST_IMM_OP( ori, x15, x8, 0x8555, 0x00008000, 1365, x2, 4, x4)

# opcode: ori ; op1:x20; dest:x5; op1val:0x00010000;  immval:-2048
TEST_IMM_OP( ori, x5, x20, 0xfffff800, 0x00010000, -2048, x2, 8, x4)

# opcode: ori ; op1:x15; dest:x9; op1val:0x00020000;  immval:1023
TEST_IMM_OP( ori, x9, x15, 0x203ff, 0x00020000, 1023, x2, 12, x4)

# opcode: ori ; op1:x30; dest:x24; op1val:0x00080000;  immval:32
TEST_IMM_OP( ori, x24, x30, 0x80020, 0x00080000, 32, x2, 16, x4)

# opcode: ori ; op1:x10; dest:x18; op1val:0x00100000;  immval:-513
TEST_IMM_OP( ori, x18, x10, 0xfffffdff, 0x00100000, -513, x2, 20, x4)

# opcode: ori ; op1:x7; dest:x27; op1val:0x00200000;  immval:-65
TEST_IMM_OP( ori, x27, x7, 0xffffffbf, 0x00200000, -65, x2, 24, x4)

# opcode: ori ; op1:x1; dest:x3; op1val:0x00400000;  immval:1
TEST_IMM_OP( ori, x3, x1, 0x400001, 0x00400000, 1, x2, 28, x4)

# opcode: ori ; op1:x26; dest:x7; op1val:0x00800000;  immval:-1366
TEST_IMM_OP( ori, x7, x26, 0xfffffaaa, 0x00800000, -1366, x2, 32, x4)

# opcode: ori ; op1:x9; dest:x0; op1val:0x01000000;  immval:0
TEST_IMM_OP( ori, x0, x9, 0x1000000, 0x01000000, 0, x2, 36, x4)

# opcode: ori ; op1:x0; dest:x31; op1val:0x02000000;  immval:128
TEST_IMM_OP( ori, x31, x0, 0x2000080, 0x02000000, 128, x2, 40, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x04000000;  immval:0
TEST_IMM_OP( ori, x11, x10, 0x4000000, 0x04000000, 0, x2, 44, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x08000000;  immval:1
TEST_IMM_OP( ori, x11, x10, 0x8000001, 0x08000000, 1, x2, 48, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x10000000;  immval:512
TEST_IMM_OP( ori, x11, x10, 0x10000200, 0x10000000, 512, x2, 52, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x20000000;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xfffff800, 0x20000000, -2048, x2, 56, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x40000000;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xfffffdff, 0x40000000, -513, x2, 60, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:2
TEST_IMM_OP( ori, x11, x10, 0xfffffffe, 0xfffffffe, 2, x2, 64, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffffd, -6, x2, 68, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffffb, -129, x2, 72, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xfffffff7, 0xfffffff7, 512, x2, 76, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffef;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xffffffef, 0xffffffef, 8, x2, 80, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffffdf, -1366, x2, 84, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:1
TEST_IMM_OP( ori, x11, x10, 0xffffffbf, 0xffffffbf, 1, x2, 88, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xffffff7f, 0xffffff7f, 4, x2, 92, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffeff, -8, x2, 96, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffdff, -1025, x2, 100, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xfffffbff, 0xfffffbff, 512, x2, 104, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfff7ffff, -129, x2, 108, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffefffff, -257, x2, 112, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffdfffff, -10, x2, 116, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffbfffff, -3, x2, 120, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xff7fffff, -2, x2, 124, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfeffffff, -10, x2, 128, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfdffffff, -129, x2, 132, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:32
TEST_IMM_OP( ori, x11, x10, 0xfbffffff, 0xfbffffff, 32, x2, 136, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xf7ffffff, -1, x2, 140, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xefffffff;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xefffffff, -1025, x2, 144, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xdfffffff, -513, x2, 148, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xbfffffff, -6, x2, 152, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x55555555;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffd, 0x55555555, -3, x2, 156, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xaaaaaaaa, -33, x2, 160, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x00000800;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xfffffffb, 0x00000800, -5, x2, 164, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffeffff, -2048, x2, 168, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x00000080;  immval:64
TEST_IMM_OP( ori, x11, x10, 0xc0, 0x00000080, 64, x2, 172, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x3fffffff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0x3fffffff, 0x3fffffff, 256, x2, 176, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x20000000;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffef, 0x20000000, -17, x2, 180, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x00000006;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0x406, 0x00000006, 1024, x2, 184, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffff7ff, -2, x2, 188, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffefff;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xffffefff, 0xffffefff, 7, x2, 192, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xffffbfff, 0xffffbfff, 256, x2, 196, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:2
TEST_IMM_OP( ori, x11, x10, 0xffff7fff, 0xffff7fff, 2, x2, 200, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffffbf, -9, x2, 204, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffdffff, -17, x2, 208, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffbffff, -10, x2, 212, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x00040000;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0x403ff, 0x00040000, 1023, x2, 216, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x01000000;  immval:0
TEST_IMM_OP( ori, x11, x10, 0x1000000, 0x01000000, 0, x2, 220, x4)

# opcode: ori ; op1:x10; dest:x11; op1val:0x02000000;  immval:128
TEST_IMM_OP( ori, x11, x10, 0x2000080, 0x02000000, 128, x2, 224, x4)
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


signature_x2_0:
    .fill 57*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
