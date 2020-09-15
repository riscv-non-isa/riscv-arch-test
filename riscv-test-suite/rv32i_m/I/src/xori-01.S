
#This assembly file tests the xori instruction of the RISC-V I extension for the xori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xori)

la x18,signature_x18_1

# opcode: xori ; op1:x12; dest:x10; op1val:0x00000100;  immval:256
TEST_IMM_OP( xori, x10, x12, 0x0, 0x00000100, 256, x18, 0, x19)

# opcode: xori ; op1:x25; dest:x25; op1val:0x00000009;  immval:3
TEST_IMM_OP( xori, x25, x25, 0xa, 0x00000009, 3, x18, 4, x19)

# opcode: xori ; op1:x10; dest:x13; op1val:0x00020000;  immval:-4
TEST_IMM_OP( xori, x13, x10, 0xfffdfffc, 0x00020000, -4, x18, 8, x19)

# opcode: xori ; op1:x14; dest:x12; op1val:0xc0000000;  immval:2047
TEST_IMM_OP( xori, x12, x14, 0xc00007ff, 0xc0000000, 2047, x18, 12, x19)

# opcode: xori ; op1:x23; dest:x16; op1val:0xfffffbff;  immval:-5
TEST_IMM_OP( xori, x16, x23, 0x404, 0xfffffbff, -5, x18, 16, x19)

# opcode: xori ; op1:x26; dest:x22; op1val:0x80000000;  immval:-10
TEST_IMM_OP( xori, x22, x26, 0x7ffffff6, 0x80000000, -10, x18, 20, x19)

# opcode: xori ; op1:x5; dest:x23; op1val:0x00000000;  immval:-7
TEST_IMM_OP( xori, x23, x5, 0xfffffff9, 0x00000000, -7, x18, 24, x19)

# opcode: xori ; op1:x31; dest:x11; op1val:0x7fffffff;  immval:-2
TEST_IMM_OP( xori, x11, x31, 0x80000001, 0x7fffffff, -2, x18, 28, x19)

# opcode: xori ; op1:x2; dest:x21; op1val:0x00000001;  immval:6
TEST_IMM_OP( xori, x21, x2, 0x7, 0x00000001, 6, x18, 32, x19)

# opcode: xori ; op1:x16; dest:x8; op1val:0xffffffbf;  immval:-2048
TEST_IMM_OP( xori, x8, x16, 0x7bf, 0xffffffbf, -2048, x18, 36, x19)

# opcode: xori ; op1:x29; dest:x4; op1val:0x01000000;  immval:0
TEST_IMM_OP( xori, x4, x29, 0x1000000, 0x01000000, 0, x18, 40, x19)

# opcode: xori ; op1:x7; dest:x17; op1val:0xffffff7f;  immval:1
TEST_IMM_OP( xori, x17, x7, 0xffffff7e, 0xffffff7f, 1, x18, 44, x19)

# opcode: xori ; op1:x20; dest:x15; op1val:0x00000002;  immval:8
TEST_IMM_OP( xori, x15, x20, 0xa, 0x00000002, 8, x18, 48, x19)

# opcode: xori ; op1:x11; dest:x14; op1val:0x00000004;  immval:-1366
TEST_IMM_OP( xori, x14, x11, 0xfffffaae, 0x00000004, -1366, x18, 52, x19)

# opcode: xori ; op1:x28; dest:x5; op1val:0x00000008;  immval:-17
TEST_IMM_OP( xori, x5, x28, 0xffffffe7, 0x00000008, -17, x18, 56, x19)

# opcode: xori ; op1:x9; dest:x6; op1val:0x00000010;  immval:-1366
TEST_IMM_OP( xori, x6, x9, 0xfffffaba, 0x00000010, -1366, x18, 60, x19)

# opcode: xori ; op1:x24; dest:x26; op1val:0x00000020;  immval:1
TEST_IMM_OP( xori, x26, x24, 0x21, 0x00000020, 1, x18, 64, x19)

# opcode: xori ; op1:x15; dest:x28; op1val:0x00000040;  immval:512
TEST_IMM_OP( xori, x28, x15, 0x240, 0x00000040, 512, x18, 68, x19)

# opcode: xori ; op1:x17; dest:x7; op1val:0x00000080;  immval:-513
TEST_IMM_OP( xori, x7, x17, 0xfffffd7f, 0x00000080, -513, x18, 72, x19)

# opcode: xori ; op1:x21; dest:x29; op1val:0x00000200;  immval:-513
TEST_IMM_OP( xori, x29, x21, 0xffffffff, 0x00000200, -513, x18, 76, x19)

# opcode: xori ; op1:x27; dest:x20; op1val:0x00000400;  immval:8
TEST_IMM_OP( xori, x20, x27, 0x408, 0x00000400, 8, x18, 80, x19)

# opcode: xori ; op1:x0; dest:x9; op1val:0x00000800;  immval:-1025
TEST_IMM_OP( xori, x9, x0, 0xfffff3ff, 0x00000800, -1025, x18, 84, x19)

# opcode: xori ; op1:x3; dest:x1; op1val:0x00001000;  immval:512
TEST_IMM_OP( xori, x1, x3, 0x1200, 0x00001000, 512, x18, 88, x19)
la x5,signature_x5_0

# opcode: xori ; op1:x13; dest:x27; op1val:0x00002000;  immval:-6
TEST_IMM_OP( xori, x27, x13, 0xffffdffa, 0x00002000, -6, x5, 0, x7)

# opcode: xori ; op1:x18; dest:x31; op1val:0x00004000;  immval:-8
TEST_IMM_OP( xori, x31, x18, 0xffffbff8, 0x00004000, -8, x5, 4, x7)

# opcode: xori ; op1:x8; dest:x18; op1val:0x00008000;  immval:6
TEST_IMM_OP( xori, x18, x8, 0x8006, 0x00008000, 6, x5, 8, x7)

# opcode: xori ; op1:x30; dest:x2; op1val:0x00010000;  immval:0
TEST_IMM_OP( xori, x2, x30, 0x10000, 0x00010000, 0, x5, 12, x7)

# opcode: xori ; op1:x1; dest:x30; op1val:0x00040000;  immval:9
TEST_IMM_OP( xori, x30, x1, 0x40009, 0x00040000, 9, x5, 16, x7)

# opcode: xori ; op1:x19; dest:x0; op1val:0x00080000;  immval:-65
TEST_IMM_OP( xori, x0, x19, 0xfff7ffbf, 0x00080000, -65, x5, 20, x7)

# opcode: xori ; op1:x4; dest:x19; op1val:0x00100000;  immval:5
TEST_IMM_OP( xori, x19, x4, 0x100005, 0x00100000, 5, x5, 24, x7)

# opcode: xori ; op1:x6; dest:x3; op1val:0x00200000;  immval:-1024
TEST_IMM_OP( xori, x3, x6, 0xffdffc00, 0x00200000, -1024, x5, 28, x7)

# opcode: xori ; op1:x22; dest:x24; op1val:0x00400000;  immval:256
TEST_IMM_OP( xori, x24, x22, 0x400100, 0x00400000, 256, x5, 32, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00800000;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0x8007ff, 0x00800000, 2047, x5, 36, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x02000000;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0xfdfffff7, 0x02000000, -9, x5, 40, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x04000000;  immval:9
TEST_IMM_OP( xori, x11, x10, 0x4000009, 0x04000000, 9, x5, 44, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x08000000;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0xf7fffff8, 0x08000000, -8, x5, 48, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x10000000;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0x100003ff, 0x10000000, 1023, x5, 52, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x20000000;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0xdffffbff, 0x20000000, -1025, x5, 56, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x40000000;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0xbffffff6, 0x40000000, -10, x5, 60, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:6
TEST_IMM_OP( xori, x11, x10, 0xfffffff8, 0xfffffffe, 6, x5, 64, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:256
TEST_IMM_OP( xori, x11, x10, 0xfffffefd, 0xfffffffd, 256, x5, 68, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0x14, 0xfffffffb, -17, x5, 72, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0xc, 0xfffffff7, -5, x5, 76, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffef;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0xfffffbef, 0xffffffef, 1024, x5, 80, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xffffffd7, 0xffffffdf, 8, x5, 84, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xfffffef6, 0xfffffeff, 9, x5, 88, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:2
TEST_IMM_OP( xori, x11, x10, 0xfffffdfd, 0xfffffdff, 2, x5, 92, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0xa00, 0xfffff7ff, -513, x5, 96, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x80002, 0xfff7ffff, -3, x5, 100, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0x100008, 0xffefffff, -9, x5, 104, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:7
TEST_IMM_OP( xori, x11, x10, 0xffdffff8, 0xffdfffff, 7, x5, 108, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x400200, 0xffbfffff, -513, x5, 112, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xff7ffffb, 0xff7fffff, 4, x5, 116, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:6
TEST_IMM_OP( xori, x11, x10, 0xfefffff9, 0xfeffffff, 6, x5, 120, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0x2000400, 0xfdffffff, -1025, x5, 124, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:16
TEST_IMM_OP( xori, x11, x10, 0xfbffffef, 0xfbffffff, 16, x5, 128, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:32
TEST_IMM_OP( xori, x11, x10, 0xf7ffffdf, 0xf7ffffff, 32, x5, 132, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xefffffff;  immval:512
TEST_IMM_OP( xori, x11, x10, 0xeffffdff, 0xefffffff, 512, x5, 136, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xdfffffff, 0xdfffffff, 0, x5, 140, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0x40000004, 0xbfffffff, -5, x5, 144, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00000009;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0xffffff76, 0x00000009, -129, x5, 148, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00010000;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0xfffefeff, 0x00010000, -257, x5, 152, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00000200;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0x755, 0x00000200, 1365, x5, 156, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x55555555;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0xaaaaaaab, 0x55555555, -2, x5, 160, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xaaaaaaa2, 0xaaaaaaaa, 8, x5, 164, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffc;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xffffffbc, 0xfffffffc, 64, x5, 168, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xfffbfff7, 0xfffbffff, 8, x5, 172, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00000000;  immval:128
TEST_IMM_OP( xori, x11, x10, 0x80, 0x00000000, 128, x5, 176, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffefff;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0x1005, 0xffffefff, -6, x5, 180, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0x2100, 0xffffdfff, -257, x5, 184, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0x4080, 0xffffbfff, -129, x5, 188, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0x8555, 0xffff7fff, -1366, x5, 192, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xfffefc00, 0xfffeffff, 1023, x5, 196, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0x20400, 0xfffdffff, -1025, x5, 200, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00000003;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0xffffffdc, 0x00000003, -33, x5, 204, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00000009;  immval:3
TEST_IMM_OP( xori, x11, x10, 0xa, 0x00000009, 3, x5, 208, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00000800;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0xfffff3ff, 0x00000800, -1025, x5, 212, x7)

# opcode: xori ; op1:x10; dest:x11; op1val:0x00080000;  immval:-65
TEST_IMM_OP( xori, x11, x10, 0xfff7ffbf, 0x00080000, -65, x5, 216, x7)
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
    .fill 23*(XLEN/32),4,0xafacadee


signature_x5_0:
    .fill 55*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
