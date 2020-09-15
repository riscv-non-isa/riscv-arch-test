
#This assembly file tests the andi instruction of the RISC-V I extension for the andi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",andi)

la x18,signature_x18_1

# opcode: andi ; op1:x12; dest:x9; op1val:0x00000200;  immval:512
TEST_IMM_OP( andi, x9, x12, 0x200, 0x00000200, 512, x18, 0, x4)

# opcode: andi ; op1:x14; dest:x14; op1val:0xffffffbf;  immval:512
TEST_IMM_OP( andi, x14, x14, 0x200, 0xffffffbf, 512, x18, 4, x4)

# opcode: andi ; op1:x7; dest:x0; op1val:0x00000200;  immval:-8
TEST_IMM_OP( andi, x0, x7, 0x200, 0x00000200, -8, x18, 8, x4)

# opcode: andi ; op1:x10; dest:x6; op1val:0xff7fffff;  immval:-1025
TEST_IMM_OP( andi, x6, x10, 0xff7ffbff, 0xff7fffff, -1025, x18, 12, x4)

# opcode: andi ; op1:x25; dest:x23; op1val:0x80000000;  immval:-1
TEST_IMM_OP( andi, x23, x25, 0x80000000, 0x80000000, -1, x18, 16, x4)

# opcode: andi ; op1:x24; dest:x28; op1val:0x00000000;  immval:7
TEST_IMM_OP( andi, x28, x24, 0x0, 0x00000000, 7, x18, 20, x4)

# opcode: andi ; op1:x29; dest:x15; op1val:0x7fffffff;  immval:-1025
TEST_IMM_OP( andi, x15, x29, 0x7ffffbff, 0x7fffffff, -1025, x18, 24, x4)

# opcode: andi ; op1:x2; dest:x8; op1val:0x00000001;  immval:-7
TEST_IMM_OP( andi, x8, x2, 0x1, 0x00000001, -7, x18, 28, x4)

# opcode: andi ; op1:x13; dest:x10; op1val:0xc0000000;  immval:-2048
TEST_IMM_OP( andi, x10, x13, 0xc0000000, 0xc0000000, -2048, x18, 32, x4)

# opcode: andi ; op1:x9; dest:x5; op1val:0xfffffffe;  immval:0
TEST_IMM_OP( andi, x5, x9, 0x0, 0xfffffffe, 0, x18, 36, x4)

# opcode: andi ; op1:x22; dest:x2; op1val:0x01000000;  immval:2047
TEST_IMM_OP( andi, x2, x22, 0x0, 0x01000000, 2047, x18, 40, x4)

# opcode: andi ; op1:x0; dest:x25; op1val:0x00000400;  immval:1
TEST_IMM_OP( andi, x25, x0, 0x0, 0x00000400, 1, x18, 44, x4)

# opcode: andi ; op1:x16; dest:x29; op1val:0x00000002;  immval:1365
TEST_IMM_OP( andi, x29, x16, 0x0, 0x00000002, 1365, x18, 48, x4)

# opcode: andi ; op1:x21; dest:x11; op1val:0x00000004;  immval:256
TEST_IMM_OP( andi, x11, x21, 0x0, 0x00000004, 256, x18, 52, x4)

# opcode: andi ; op1:x27; dest:x31; op1val:0x00000008;  immval:-8
TEST_IMM_OP( andi, x31, x27, 0x8, 0x00000008, -8, x18, 56, x4)

# opcode: andi ; op1:x17; dest:x20; op1val:0x00000010;  immval:256
TEST_IMM_OP( andi, x20, x17, 0x0, 0x00000010, 256, x18, 60, x4)

# opcode: andi ; op1:x5; dest:x27; op1val:0x00000020;  immval:-33
TEST_IMM_OP( andi, x27, x5, 0x0, 0x00000020, -33, x18, 64, x4)

# opcode: andi ; op1:x3; dest:x12; op1val:0x00000040;  immval:-6
TEST_IMM_OP( andi, x12, x3, 0x40, 0x00000040, -6, x18, 68, x4)

# opcode: andi ; op1:x31; dest:x1; op1val:0x00000080;  immval:1023
TEST_IMM_OP( andi, x1, x31, 0x80, 0x00000080, 1023, x18, 72, x4)

# opcode: andi ; op1:x15; dest:x30; op1val:0x00000100;  immval:-129
TEST_IMM_OP( andi, x30, x15, 0x100, 0x00000100, -129, x18, 76, x4)

# opcode: andi ; op1:x4; dest:x19; op1val:0x00000800;  immval:64
TEST_IMM_OP( andi, x19, x4, 0x0, 0x00000800, 64, x18, 80, x5)
la x2,signature_x2_0

# opcode: andi ; op1:x28; dest:x13; op1val:0x00001000;  immval:1024
TEST_IMM_OP( andi, x13, x28, 0x0, 0x00001000, 1024, x2, 0, x5)

# opcode: andi ; op1:x26; dest:x4; op1val:0x00002000;  immval:256
TEST_IMM_OP( andi, x4, x26, 0x0, 0x00002000, 256, x2, 4, x5)

# opcode: andi ; op1:x8; dest:x26; op1val:0x00004000;  immval:6
TEST_IMM_OP( andi, x26, x8, 0x0, 0x00004000, 6, x2, 8, x5)

# opcode: andi ; op1:x1; dest:x18; op1val:0x00008000;  immval:32
TEST_IMM_OP( andi, x18, x1, 0x0, 0x00008000, 32, x2, 12, x5)

# opcode: andi ; op1:x18; dest:x17; op1val:0x00010000;  immval:-10
TEST_IMM_OP( andi, x17, x18, 0x10000, 0x00010000, -10, x2, 16, x5)

# opcode: andi ; op1:x6; dest:x16; op1val:0x00020000;  immval:-1
TEST_IMM_OP( andi, x16, x6, 0x20000, 0x00020000, -1, x2, 20, x5)

# opcode: andi ; op1:x23; dest:x24; op1val:0x00040000;  immval:-2048
TEST_IMM_OP( andi, x24, x23, 0x40000, 0x00040000, -2048, x2, 24, x5)

# opcode: andi ; op1:x30; dest:x22; op1val:0x00080000;  immval:8
TEST_IMM_OP( andi, x22, x30, 0x0, 0x00080000, 8, x2, 28, x5)

# opcode: andi ; op1:x19; dest:x21; op1val:0x00100000;  immval:1024
TEST_IMM_OP( andi, x21, x19, 0x0, 0x00100000, 1024, x2, 32, x5)

# opcode: andi ; op1:x11; dest:x3; op1val:0x00200000;  immval:1365
TEST_IMM_OP( andi, x3, x11, 0x0, 0x00200000, 1365, x2, 36, x5)

# opcode: andi ; op1:x20; dest:x7; op1val:0x00400000;  immval:-129
TEST_IMM_OP( andi, x7, x20, 0x400000, 0x00400000, -129, x2, 40, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x00800000;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00800000, 1024, x2, 44, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x02000000;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0x02000000, 512, x2, 48, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x04000000;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x0, 0x04000000, 9, x2, 52, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x08000000;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0x8000000, 0x08000000, -5, x2, 56, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x10000000;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x0, 0x10000000, 7, x2, 60, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x20000000;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0x20000000, 0x20000000, -513, x2, 64, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x40000000;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x0, 0x40000000, 6, x2, 68, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0xfffffdfd, 0xfffffffd, -513, x2, 72, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xffffffdb, 0xfffffffb, -33, x2, 76, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xfffffff7, 0xfffffff7, -1, x2, 80, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffef;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0xffffffeb, 0xffffffef, -5, x2, 84, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x7, 0xffffffdf, 7, x2, 88, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0xffffff7f, 0xffffff7f, -129, x2, 92, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x2, 0xfffffeff, 2, x2, 96, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0xfffffcff, 0xfffffdff, -257, x2, 100, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x4, 0xfffffbff, 4, x2, 104, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0xfff7fff9, 0xfff7ffff, -7, x2, 108, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0xffefff7f, 0xffefffff, -129, x2, 112, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:2047
TEST_IMM_OP( andi, x11, x10, 0x7ff, 0xffdfffff, 2047, x2, 116, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0xffbfff7f, 0xffbfffff, -129, x2, 120, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xfeffffff, 64, x2, 124, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x5, 0xfdffffff, 5, x2, 128, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x400, 0xfbffffff, 1024, x2, 132, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0xf7fffdff, 0xf7ffffff, -513, x2, 136, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xefffffff;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xeffffffe, 0xefffffff, -2, x2, 140, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0xdfffff7f, 0xdfffffff, -129, x2, 144, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xbffffff8, 0xbfffffff, -8, x2, 148, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x55555555;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0x55555455, 0x55555555, -257, x2, 152, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x80, 0xaaaaaaaa, 128, x2, 156, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xffffff9f, 0xffffffdf, -65, x2, 160, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x00000080;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0x80, 0x00000080, -1366, x2, 164, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0xffffbff9, 0xffffbfff, -7, x2, 168, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x00080000;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00080000, 16, x2, 172, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x200, 0xfffeffff, 512, x2, 176, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x00000040;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0x40, 0x00000040, -17, x2, 180, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x555, 0xfffff7ff, 1365, x2, 184, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffefff;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0xffffeff9, 0xffffefff, -7, x2, 188, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0xffffdff6, 0xffffdfff, -10, x2, 192, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x10000000;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0x10000000, 0x10000000, -3, x2, 196, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xffff7ff8, 0xffff7fff, -8, x2, 200, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0xfffffef7, 0xfffffeff, -9, x2, 204, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xfffdfff8, 0xfffdffff, -8, x2, 208, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0xfffbffff, 0, x2, 212, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x200, 0xffffffbf, 512, x2, 216, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x00000200;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0x200, 0x00000200, -8, x2, 220, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x00000400;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00000400, 1, x2, 224, x5)
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

signature_x18_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x18_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 57*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
