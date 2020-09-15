
#This assembly file tests the ori instruction of the RISC-V I extension for the ori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",ori)

la x5,signature_x5_1

# opcode: ori ; op1:x8; dest:x31; op1val:0x00000002;  immval:2
TEST_IMM_OP( ori, x31, x8, 0x2, 0x00000002, 2, x5, 0, x9)

# opcode: ori ; op1:x12; dest:x12; op1val:0x08000000;  immval:2047
TEST_IMM_OP( ori, x12, x12, 0x80007ff, 0x08000000, 2047, x5, 4, x9)

# opcode: ori ; op1:x27; dest:x23; op1val:0x00000003;  immval:-9
TEST_IMM_OP( ori, x23, x27, 0xfffffff7, 0x00000003, -9, x5, 8, x9)

# opcode: ori ; op1:x22; dest:x15; op1val:0xffffffef;  immval:1365
TEST_IMM_OP( ori, x15, x22, 0xffffffff, 0xffffffef, 1365, x5, 12, x9)

# opcode: ori ; op1:x2; dest:x17; op1val:0xfffffff6;  immval:-1025
TEST_IMM_OP( ori, x17, x2, 0xffffffff, 0xfffffff6, -1025, x5, 16, x9)

# opcode: ori ; op1:x16; dest:x19; op1val:0x80000000;  immval:1024
TEST_IMM_OP( ori, x19, x16, 0x80000400, 0x80000000, 1024, x5, 20, x9)

# opcode: ori ; op1:x19; dest:x16; op1val:0x00000000;  immval:-1
TEST_IMM_OP( ori, x16, x19, 0xffffffff, 0x00000000, -1, x5, 24, x9)

# opcode: ori ; op1:x25; dest:x27; op1val:0x7fffffff;  immval:-9
TEST_IMM_OP( ori, x27, x25, 0xffffffff, 0x7fffffff, -9, x5, 28, x9)

# opcode: ori ; op1:x28; dest:x13; op1val:0x00000001;  immval:1365
TEST_IMM_OP( ori, x13, x28, 0x555, 0x00000001, 1365, x5, 32, x9)

# opcode: ori ; op1:x15; dest:x21; op1val:0xffbfffff;  immval:-2048
TEST_IMM_OP( ori, x21, x15, 0xffffffff, 0xffbfffff, -2048, x5, 36, x9)

# opcode: ori ; op1:x29; dest:x1; op1val:0x00000040;  immval:0
TEST_IMM_OP( ori, x1, x29, 0x40, 0x00000040, 0, x5, 40, x9)

# opcode: ori ; op1:x4; dest:x3; op1val:0xfdffffff;  immval:1
TEST_IMM_OP( ori, x3, x4, 0xfdffffff, 0xfdffffff, 1, x5, 44, x9)

# opcode: ori ; op1:x10; dest:x24; op1val:0x00000004;  immval:1024
TEST_IMM_OP( ori, x24, x10, 0x404, 0x00000004, 1024, x5, 48, x9)

# opcode: ori ; op1:x14; dest:x18; op1val:0x00000008;  immval:8
TEST_IMM_OP( ori, x18, x14, 0x8, 0x00000008, 8, x5, 52, x9)

# opcode: ori ; op1:x0; dest:x22; op1val:0x00000010;  immval:7
TEST_IMM_OP( ori, x22, x0, 0x17, 0x00000010, 7, x5, 56, x9)

# opcode: ori ; op1:x31; dest:x8; op1val:0x00000020;  immval:1
TEST_IMM_OP( ori, x8, x31, 0x21, 0x00000020, 1, x5, 60, x9)

# opcode: ori ; op1:x23; dest:x25; op1val:0x00000080;  immval:2
TEST_IMM_OP( ori, x25, x23, 0x82, 0x00000080, 2, x5, 64, x9)

# opcode: ori ; op1:x1; dest:x26; op1val:0x00000100;  immval:-3
TEST_IMM_OP( ori, x26, x1, 0xfffffffd, 0x00000100, -3, x5, 68, x9)

# opcode: ori ; op1:x26; dest:x11; op1val:0x00000200;  immval:2047
TEST_IMM_OP( ori, x11, x26, 0x7ff, 0x00000200, 2047, x5, 72, x9)

# opcode: ori ; op1:x13; dest:x7; op1val:0x00000400;  immval:1
TEST_IMM_OP( ori, x7, x13, 0x401, 0x00000400, 1, x5, 76, x9)

# opcode: ori ; op1:x7; dest:x6; op1val:0x00000800;  immval:1365
TEST_IMM_OP( ori, x6, x7, 0xd55, 0x00000800, 1365, x5, 80, x9)

# opcode: ori ; op1:x3; dest:x29; op1val:0x00001000;  immval:-1024
TEST_IMM_OP( ori, x29, x3, 0xfffffc00, 0x00001000, -1024, x5, 84, x7)

# opcode: ori ; op1:x18; dest:x0; op1val:0x00002000;  immval:-2
TEST_IMM_OP( ori, x0, x18, 0xfffffffe, 0x00002000, -2, x5, 88, x7)

# opcode: ori ; op1:x30; dest:x10; op1val:0x00004000;  immval:512
TEST_IMM_OP( ori, x10, x30, 0x4200, 0x00004000, 512, x5, 92, x7)
la x1,signature_x1_0

# opcode: ori ; op1:x21; dest:x30; op1val:0x00008000;  immval:-2
TEST_IMM_OP( ori, x30, x21, 0xfffffffe, 0x00008000, -2, x1, 0, x7)

# opcode: ori ; op1:x6; dest:x5; op1val:0x00010000;  immval:8
TEST_IMM_OP( ori, x5, x6, 0x10008, 0x00010000, 8, x1, 4, x7)

# opcode: ori ; op1:x24; dest:x4; op1val:0x00020000;  immval:256
TEST_IMM_OP( ori, x4, x24, 0x20100, 0x00020000, 256, x1, 8, x7)

# opcode: ori ; op1:x11; dest:x28; op1val:0x00040000;  immval:1024
TEST_IMM_OP( ori, x28, x11, 0x40400, 0x00040000, 1024, x1, 12, x7)

# opcode: ori ; op1:x9; dest:x14; op1val:0x00080000;  immval:-17
TEST_IMM_OP( ori, x14, x9, 0xffffffef, 0x00080000, -17, x1, 16, x7)

# opcode: ori ; op1:x5; dest:x2; op1val:0x00100000;  immval:6
TEST_IMM_OP( ori, x2, x5, 0x100006, 0x00100000, 6, x1, 20, x7)

# opcode: ori ; op1:x17; dest:x20; op1val:0x00200000;  immval:-129
TEST_IMM_OP( ori, x20, x17, 0xffffff7f, 0x00200000, -129, x1, 24, x7)

# opcode: ori ; op1:x20; dest:x9; op1val:0x00400000;  immval:0
TEST_IMM_OP( ori, x9, x20, 0x400000, 0x00400000, 0, x1, 28, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0x00800000;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xfffffaaa, 0x00800000, -1366, x1, 32, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0x01000000;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffbf, 0x01000000, -65, x1, 36, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0x02000000;  immval:32
TEST_IMM_OP( ori, x11, x10, 0x2000020, 0x02000000, 32, x1, 40, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0x04000000;  immval:256
TEST_IMM_OP( ori, x11, x10, 0x4000100, 0x04000000, 256, x1, 44, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0x10000000;  immval:3
TEST_IMM_OP( ori, x11, x10, 0x10000003, 0x10000000, 3, x1, 48, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0x20000000;  immval:1
TEST_IMM_OP( ori, x11, x10, 0x20000001, 0x20000000, 1, x1, 52, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0x40000000;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xfffffbff, 0x40000000, -1025, x1, 56, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:0
TEST_IMM_OP( ori, x11, x10, 0xfffffffe, 0xfffffffe, 0, x1, 60, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xfffffffd, 0xfffffffd, 8, x1, 64, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:16
TEST_IMM_OP( ori, x11, x10, 0xfffffffb, 0xfffffffb, 16, x1, 68, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffff7, -6, x1, 72, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffffdf, -17, x1, 76, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffffbf, 1023, x1, 80, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xfff7ffff, 0xfff7ffff, 8, x1, 84, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffefffff, -513, x1, 88, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:6
TEST_IMM_OP( ori, x11, x10, 0xffdfffff, 0xffdfffff, 6, x1, 92, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xff7fffff, -10, x1, 96, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xfeffffff, 0xfeffffff, 5, x1, 100, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:64
TEST_IMM_OP( ori, x11, x10, 0xfbffffff, 0xfbffffff, 64, x1, 104, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xf7ffffff, -1, x1, 108, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xefffffff;  immval:0
TEST_IMM_OP( ori, x11, x10, 0xefffffff, 0xefffffff, 0, x1, 112, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xdfffffff, -65, x1, 116, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:16
TEST_IMM_OP( ori, x11, x10, 0xbfffffff, 0xbfffffff, 16, x1, 120, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0x55555555;  immval:3
TEST_IMM_OP( ori, x11, x10, 0x55555557, 0x55555555, 3, x1, 124, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xfffffffe, 0xaaaaaaaa, -4, x1, 128, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff6;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xfffffff6, 0xfffffff6, 4, x1, 132, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xffbfffff, 0xffbfffff, 128, x1, 136, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffffe, -257, x1, 140, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0x7fffffff;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0x7fffffff, -33, x1, 144, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffff7fff, -4, x1, 148, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffff7f, -17, x1, 152, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xfffffeff, 0xfffffeff, -1024, x1, 156, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:2
TEST_IMM_OP( ori, x11, x10, 0xfffffdff, 0xfffffdff, 2, x1, 160, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xfffffbff, 0xfffffbff, 8, x1, 164, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffff7ff, -2, x1, 168, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffefff;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xffffefff, 0xffffefff, 1023, x1, 172, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffdfff, -1366, x1, 176, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffbfff, -4, x1, 180, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffff7ff, -5, x1, 184, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xfffeffff, 0xfffeffff, 8, x1, 188, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffdffff, -1025, x1, 192, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffbffff, -129, x1, 196, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0x08000000;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0x80007ff, 0x08000000, 2047, x1, 200, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0x00000010;  immval:7
TEST_IMM_OP( ori, x11, x10, 0x17, 0x00000010, 7, x1, 204, x7)

# opcode: ori ; op1:x10; dest:x11; op1val:0x00002000;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xfffffffe, 0x00002000, -2, x1, 208, x7)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x5_1:
    .fill 24*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 53*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
