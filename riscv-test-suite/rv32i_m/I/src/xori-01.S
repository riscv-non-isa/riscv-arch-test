
#This assembly file tests the xori instruction of the RISC-V I extension for the xori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xori)

la x16,signature_x16_1

# opcode: xori ; op1:x0; dest:x17; op1val:0x00000400;  immval:1024
TEST_IMM_OP( xori, x17, x0, 0x0, 0x00000400, 1024, x16, 0, x5)

# opcode: xori ; op1:x1; dest:x1; op1val:0x00800000;  immval:-3
TEST_IMM_OP( xori, x1, x1, 0xff7ffffd, 0x00800000, -3, x16, 4, x5)

# opcode: xori ; op1:x13; dest:x4; op1val:0xdfffffff;  immval:4
TEST_IMM_OP( xori, x4, x13, 0xdffffffb, 0xdfffffff, 4, x16, 8, x5)

# opcode: xori ; op1:x2; dest:x20; op1val:0xc0000000;  immval:-1024
TEST_IMM_OP( xori, x20, x2, 0x3ffffc00, 0xc0000000, -1024, x16, 12, x5)

# opcode: xori ; op1:x12; dest:x26; op1val:0x80000000;  immval:-1024
TEST_IMM_OP( xori, x26, x12, 0x7ffffc00, 0x80000000, -1024, x16, 16, x5)

# opcode: xori ; op1:x21; dest:x12; op1val:0x00000000;  immval:3
TEST_IMM_OP( xori, x12, x21, 0x3, 0x00000000, 3, x16, 20, x5)

# opcode: xori ; op1:x14; dest:x19; op1val:0x7fffffff;  immval:-1366
TEST_IMM_OP( xori, x19, x14, 0x80000555, 0x7fffffff, -1366, x16, 24, x5)

# opcode: xori ; op1:x17; dest:x31; op1val:0x00000001;  immval:6
TEST_IMM_OP( xori, x31, x17, 0x7, 0x00000001, 6, x16, 28, x5)

# opcode: xori ; op1:x6; dest:x27; op1val:0x55555555;  immval:-2048
TEST_IMM_OP( xori, x27, x6, 0xaaaaad55, 0x55555555, -2048, x16, 32, x5)

# opcode: xori ; op1:x24; dest:x28; op1val:0xff7fffff;  immval:0
TEST_IMM_OP( xori, x28, x24, 0xff7fffff, 0xff7fffff, 0, x16, 36, x5)

# opcode: xori ; op1:x27; dest:x13; op1val:0xdfffffff;  immval:2047
TEST_IMM_OP( xori, x13, x27, 0xdffff800, 0xdfffffff, 2047, x16, 40, x5)

# opcode: xori ; op1:x22; dest:x18; op1val:0x00002000;  immval:1
TEST_IMM_OP( xori, x18, x22, 0x2001, 0x00002000, 1, x16, 44, x5)

# opcode: xori ; op1:x23; dest:x8; op1val:0x00000002;  immval:2
TEST_IMM_OP( xori, x8, x23, 0x0, 0x00000002, 2, x16, 48, x5)

# opcode: xori ; op1:x20; dest:x0; op1val:0x00000004;  immval:4
TEST_IMM_OP( xori, x0, x20, 0x0, 0x00000004, 4, x16, 52, x5)

# opcode: xori ; op1:x7; dest:x9; op1val:0x00000008;  immval:512
TEST_IMM_OP( xori, x9, x7, 0x208, 0x00000008, 512, x16, 56, x5)

# opcode: xori ; op1:x10; dest:x14; op1val:0x00000010;  immval:-6
TEST_IMM_OP( xori, x14, x10, 0xffffffea, 0x00000010, -6, x16, 60, x5)

# opcode: xori ; op1:x15; dest:x3; op1val:0x00000020;  immval:1365
TEST_IMM_OP( xori, x3, x15, 0x575, 0x00000020, 1365, x16, 64, x5)

# opcode: xori ; op1:x8; dest:x11; op1val:0x00000040;  immval:-4
TEST_IMM_OP( xori, x11, x8, 0xffffffbc, 0x00000040, -4, x16, 68, x5)

# opcode: xori ; op1:x29; dest:x6; op1val:0x00000080;  immval:-33
TEST_IMM_OP( xori, x6, x29, 0xffffff5f, 0x00000080, -33, x16, 72, x5)

# opcode: xori ; op1:x3; dest:x5; op1val:0x00000100;  immval:-7
TEST_IMM_OP( xori, x5, x3, 0xfffffef9, 0x00000100, -7, x16, 76, x6)
la x1,signature_x1_0

# opcode: xori ; op1:x30; dest:x29; op1val:0x00000200;  immval:-2048
TEST_IMM_OP( xori, x29, x30, 0xfffffa00, 0x00000200, -2048, x1, 0, x6)

# opcode: xori ; op1:x5; dest:x15; op1val:0x00000800;  immval:256
TEST_IMM_OP( xori, x15, x5, 0x900, 0x00000800, 256, x1, 4, x6)

# opcode: xori ; op1:x9; dest:x30; op1val:0x00001000;  immval:-6
TEST_IMM_OP( xori, x30, x9, 0xffffeffa, 0x00001000, -6, x1, 8, x6)

# opcode: xori ; op1:x11; dest:x7; op1val:0x00004000;  immval:9
TEST_IMM_OP( xori, x7, x11, 0x4009, 0x00004000, 9, x1, 12, x6)

# opcode: xori ; op1:x16; dest:x25; op1val:0x00008000;  immval:-7
TEST_IMM_OP( xori, x25, x16, 0xffff7ff9, 0x00008000, -7, x1, 16, x6)

# opcode: xori ; op1:x25; dest:x2; op1val:0x00010000;  immval:-4
TEST_IMM_OP( xori, x2, x25, 0xfffefffc, 0x00010000, -4, x1, 20, x6)

# opcode: xori ; op1:x19; dest:x16; op1val:0x00020000;  immval:-8
TEST_IMM_OP( xori, x16, x19, 0xfffdfff8, 0x00020000, -8, x1, 24, x6)

# opcode: xori ; op1:x4; dest:x10; op1val:0x00040000;  immval:1
TEST_IMM_OP( xori, x10, x4, 0x40001, 0x00040000, 1, x1, 28, x6)

# opcode: xori ; op1:x26; dest:x23; op1val:0x00080000;  immval:-129
TEST_IMM_OP( xori, x23, x26, 0xfff7ff7f, 0x00080000, -129, x1, 32, x6)

# opcode: xori ; op1:x31; dest:x22; op1val:0x00100000;  immval:-17
TEST_IMM_OP( xori, x22, x31, 0xffefffef, 0x00100000, -17, x1, 36, x6)

# opcode: xori ; op1:x18; dest:x21; op1val:0x00200000;  immval:-65
TEST_IMM_OP( xori, x21, x18, 0xffdfffbf, 0x00200000, -65, x1, 40, x6)

# opcode: xori ; op1:x28; dest:x24; op1val:0x00400000;  immval:-17
TEST_IMM_OP( xori, x24, x28, 0xffbfffef, 0x00400000, -17, x1, 44, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x01000000;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0xfefffff8, 0x01000000, -8, x1, 48, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x02000000;  immval:128
TEST_IMM_OP( xori, x11, x10, 0x2000080, 0x02000000, 128, x1, 52, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x04000000;  immval:3
TEST_IMM_OP( xori, x11, x10, 0x4000003, 0x04000000, 3, x1, 56, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x08000000;  immval:5
TEST_IMM_OP( xori, x11, x10, 0x8000005, 0x08000000, 5, x1, 60, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x10000000;  immval:256
TEST_IMM_OP( xori, x11, x10, 0x10000100, 0x10000000, 256, x1, 64, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x20000000;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0xdffffff9, 0x20000000, -7, x1, 68, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x40000000;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0x40000400, 0x40000000, 1024, x1, 72, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xfffffaab, 0xfffffffe, 1365, x1, 76, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:5
TEST_IMM_OP( xori, x11, x10, 0xfffffff8, 0xfffffffd, 5, x1, 80, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xfffffc04, 0xfffffffb, 1023, x1, 84, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0x1, 0xfffffff7, -10, x1, 88, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffef;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xffffffef, 0xffffffef, 0, x1, 92, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0x575, 0xffffffdf, -1366, x1, 96, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xfffffaea, 0xffffffbf, 1365, x1, 100, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0x89, 0xffffff7f, -10, x1, 104, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xfffffefb, 0xfffffeff, 4, x1, 108, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0x80006, 0xfff7ffff, -7, x1, 112, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:256
TEST_IMM_OP( xori, x11, x10, 0xffeffeff, 0xffefffff, 256, x1, 116, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0x200007, 0xffdfffff, -8, x1, 120, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:6
TEST_IMM_OP( xori, x11, x10, 0xffbffff9, 0xffbfffff, 6, x1, 124, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0xfefffbff, 0xfeffffff, 1024, x1, 128, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0x2000100, 0xfdffffff, -257, x1, 132, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:5
TEST_IMM_OP( xori, x11, x10, 0xfbfffffa, 0xfbffffff, 5, x1, 136, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0x8000100, 0xf7ffffff, -257, x1, 140, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xefffffff;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xeffff800, 0xefffffff, 2047, x1, 144, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0x40000005, 0xbfffffff, -6, x1, 148, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xaaaaaaea, 0xaaaaaaaa, 64, x1, 152, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00010000;  immval:8
TEST_IMM_OP( xori, x11, x10, 0x10008, 0x00010000, 8, x1, 156, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:16
TEST_IMM_OP( xori, x11, x10, 0xfffffbef, 0xfffffbff, 16, x1, 160, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:32
TEST_IMM_OP( xori, x11, x10, 0xbfffffdf, 0xbfffffff, 32, x1, 164, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x202, 0xfffffffd, -513, x1, 168, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0x20400, 0xfffdffff, -1025, x1, 172, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0x2005, 0xffffdfff, -6, x1, 176, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00100000;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0xffeffffb, 0x00100000, -5, x1, 180, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:256
TEST_IMM_OP( xori, x11, x10, 0xfffefeff, 0xfffeffff, 256, x1, 184, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0x1ff, 0xfffffdff, -1024, x1, 188, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:512
TEST_IMM_OP( xori, x11, x10, 0xfffff5ff, 0xfffff7ff, 512, x1, 192, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffefff;  immval:-2048
TEST_IMM_OP( xori, x11, x10, 0x17ff, 0xffffefff, -2048, x1, 196, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00000100;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0xfffffefe, 0x00000100, -2, x1, 200, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0x4003, 0xffffbfff, -4, x1, 204, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xffff7ff7, 0xffff7fff, 8, x1, 208, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0x108, 0xfffffeff, -9, x1, 212, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0x403ff, 0xfffbffff, -1024, x1, 216, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00000400;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0x0, 0x00000400, 1024, x1, 220, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00800000;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0xff7ffffd, 0x00800000, -3, x1, 224, x6)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00000004;  immval:4
TEST_IMM_OP( xori, x11, x10, 0x0, 0x00000004, 4, x1, 228, x6)
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

signature_x16_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x16_1:
    .fill 20*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 58*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
