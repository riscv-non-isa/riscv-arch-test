
#This assembly file tests the addi instruction of the RISC-V I extension for the addi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",addi)

la x9,signature_x9_1

# opcode: addi ; op1:x2; dest:x22; op1val:0x00000200;  immval:512
TEST_IMM_OP( addi, x22, x2, 0x400, 0x00000200, 512, x9, 0, x11)

# opcode: addi ; op1:x31; dest:x31; op1val:0xfffffffc;  immval:-7
TEST_IMM_OP( addi, x31, x31, 0xfffffff5, 0xfffffffc, -7, x9, 4, x11)

# opcode: addi ; op1:x30; dest:x15; op1val:0x00000008;  immval:-17
TEST_IMM_OP( addi, x15, x30, 0xfffffff7, 0x00000008, -17, x9, 8, x11)

# opcode: addi ; op1:x26; dest:x13; op1val:0xfdffffff;  immval:5
TEST_IMM_OP( addi, x13, x26, 0xfe000004, 0xfdffffff, 5, x9, 12, x11)

# opcode: addi ; op1:x23; dest:x7; op1val:0x80000000;  immval:4
TEST_IMM_OP( addi, x7, x23, 0x80000004, 0x80000000, 4, x9, 16, x11)

# opcode: addi ; op1:x17; dest:x19; op1val:0x00000000;  immval:1023
TEST_IMM_OP( addi, x19, x17, 0x3ff, 0x00000000, 1023, x9, 20, x11)

# opcode: addi ; op1:x22; dest:x12; op1val:0x7fffffff;  immval:-2048
TEST_IMM_OP( addi, x12, x22, 0x7ffff7ff, 0x7fffffff, -2048, x9, 24, x11)

# opcode: addi ; op1:x16; dest:x21; op1val:0x00000001;  immval:1
TEST_IMM_OP( addi, x21, x16, 0x2, 0x00000001, 1, x9, 28, x11)

# opcode: addi ; op1:x29; dest:x30; op1val:0x55555555;  immval:0
TEST_IMM_OP( addi, x30, x29, 0x55555555, 0x55555555, 0, x9, 32, x11)

# opcode: addi ; op1:x6; dest:x28; op1val:0xaaaaaaaa;  immval:2047
TEST_IMM_OP( addi, x28, x6, 0xaaaab2a9, 0xaaaaaaaa, 2047, x9, 36, x11)

# opcode: addi ; op1:x5; dest:x14; op1val:0x00000002;  immval:512
TEST_IMM_OP( addi, x14, x5, 0x202, 0x00000002, 512, x9, 40, x11)

# opcode: addi ; op1:x3; dest:x8; op1val:0x00000004;  immval:-1025
TEST_IMM_OP( addi, x8, x3, 0xfffffc03, 0x00000004, -1025, x9, 44, x11)

# opcode: addi ; op1:x0; dest:x23; op1val:0x00000010;  immval:1023
TEST_IMM_OP( addi, x23, x0, 0x40f, 0x00000010, 1023, x9, 48, x11)

# opcode: addi ; op1:x21; dest:x18; op1val:0x00000020;  immval:512
TEST_IMM_OP( addi, x18, x21, 0x220, 0x00000020, 512, x9, 52, x11)

# opcode: addi ; op1:x10; dest:x17; op1val:0x00000040;  immval:-10
TEST_IMM_OP( addi, x17, x10, 0x36, 0x00000040, -10, x9, 56, x11)

# opcode: addi ; op1:x13; dest:x25; op1val:0x00000080;  immval:5
TEST_IMM_OP( addi, x25, x13, 0x85, 0x00000080, 5, x9, 60, x11)

# opcode: addi ; op1:x4; dest:x5; op1val:0x00000100;  immval:64
TEST_IMM_OP( addi, x5, x4, 0x140, 0x00000100, 64, x9, 64, x11)

# opcode: addi ; op1:x25; dest:x6; op1val:0x00000400;  immval:16
TEST_IMM_OP( addi, x6, x25, 0x410, 0x00000400, 16, x9, 68, x11)

# opcode: addi ; op1:x1; dest:x2; op1val:0x00000800;  immval:-7
TEST_IMM_OP( addi, x2, x1, 0x7f9, 0x00000800, -7, x9, 72, x11)

# opcode: addi ; op1:x12; dest:x4; op1val:0x00001000;  immval:2047
TEST_IMM_OP( addi, x4, x12, 0x17ff, 0x00001000, 2047, x9, 76, x11)

# opcode: addi ; op1:x20; dest:x1; op1val:0x00002000;  immval:5
TEST_IMM_OP( addi, x1, x20, 0x2005, 0x00002000, 5, x9, 80, x11)

# opcode: addi ; op1:x8; dest:x10; op1val:0x00004000;  immval:3
TEST_IMM_OP( addi, x10, x8, 0x4003, 0x00004000, 3, x9, 84, x2)

# opcode: addi ; op1:x24; dest:x26; op1val:0x00008000;  immval:-17
TEST_IMM_OP( addi, x26, x24, 0x7fef, 0x00008000, -17, x9, 88, x2)
la x1,signature_x1_0

# opcode: addi ; op1:x9; dest:x11; op1val:0x00010000;  immval:128
TEST_IMM_OP( addi, x11, x9, 0x10080, 0x00010000, 128, x1, 0, x2)

# opcode: addi ; op1:x15; dest:x27; op1val:0x00020000;  immval:-1024
TEST_IMM_OP( addi, x27, x15, 0x1fc00, 0x00020000, -1024, x1, 4, x2)

# opcode: addi ; op1:x28; dest:x16; op1val:0x00040000;  immval:-65
TEST_IMM_OP( addi, x16, x28, 0x3ffbf, 0x00040000, -65, x1, 8, x2)

# opcode: addi ; op1:x19; dest:x9; op1val:0x00080000;  immval:0
TEST_IMM_OP( addi, x9, x19, 0x80000, 0x00080000, 0, x1, 12, x2)

# opcode: addi ; op1:x14; dest:x20; op1val:0x00100000;  immval:2047
TEST_IMM_OP( addi, x20, x14, 0x1007ff, 0x00100000, 2047, x1, 16, x2)

# opcode: addi ; op1:x18; dest:x24; op1val:0x00200000;  immval:512
TEST_IMM_OP( addi, x24, x18, 0x200200, 0x00200000, 512, x1, 20, x2)

# opcode: addi ; op1:x27; dest:x0; op1val:0x00400000;  immval:-9
TEST_IMM_OP( addi, x0, x27, 0x3ffff7, 0x00400000, -9, x1, 24, x2)

# opcode: addi ; op1:x7; dest:x3; op1val:0x00800000;  immval:-2048
TEST_IMM_OP( addi, x3, x7, 0x7ff800, 0x00800000, -2048, x1, 28, x2)

# opcode: addi ; op1:x11; dest:x29; op1val:0x01000000;  immval:0
TEST_IMM_OP( addi, x29, x11, 0x1000000, 0x01000000, 0, x1, 32, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x02000000;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0x1fff800, 0x02000000, -2048, x1, 36, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x04000000;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0x3fffbff, 0x04000000, -1025, x1, 40, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x08000000;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0x7fffaaa, 0x08000000, -1366, x1, 44, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x10000000;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xffffff9, 0x10000000, -7, x1, 48, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x20000000;  immval:0
TEST_IMM_OP( addi, x11, x10, 0x20000000, 0x20000000, 0, x1, 52, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x40000000;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0x3ffffff8, 0x40000000, -8, x1, 56, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0x7fd, 0xfffffffe, 2047, x1, 60, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xfffffff9, 0xfffffffd, -4, x1, 64, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:1
TEST_IMM_OP( addi, x11, x10, 0xfffffffc, 0xfffffffb, 1, x1, 68, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xfffffbf7, 0xfffffff7, -1024, x1, 72, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffef;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0x3ef, 0xffffffef, 1024, x1, 76, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xffffffdb, 0xffffffdf, -4, x1, 80, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0xffffffb7, 0xffffffbf, -8, x1, 84, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xffffff7b, 0xffffff7f, -4, x1, 88, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0x6fe, 0xfffffeff, 2047, x1, 92, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xfffffeff, 0xfffffdff, 256, x1, 96, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xfffffbf6, 0xfffffbff, -9, x1, 100, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0xfff807fe, 0xfff7ffff, 2047, x1, 104, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xffeffbfe, 0xffefffff, -1025, x1, 108, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xffdffdfe, 0xffdfffff, -513, x1, 112, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xffbffffb, 0xffbfffff, -4, x1, 116, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xff7ffffb, 0xff7fffff, -4, x1, 120, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xff00003f, 0xfeffffff, 64, x1, 124, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xfc000007, 0xfbffffff, 8, x1, 128, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xf7fff7ff, 0xf7ffffff, -2048, x1, 132, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xefffffff;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xeffffbfe, 0xefffffff, -1025, x1, 136, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0xe00003ff, 0xdfffffff, 1024, x1, 140, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xbfffff7e, 0xbfffffff, -129, x1, 144, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x20000000;  immval:2
TEST_IMM_OP( addi, x11, x10, 0x20000002, 0x20000000, 2, x1, 148, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x00020000;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0x1feff, 0x00020000, -257, x1, 152, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x00000009;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0x7, 0x00000009, -2, x1, 156, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x00800000;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0x800555, 0x00800000, 1365, x1, 160, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfff7fffc, 0xfff7ffff, -3, x1, 164, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xffff7efe, 0xffff7fff, -257, x1, 168, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x00000800;  immval:32
TEST_IMM_OP( addi, x11, x10, 0x820, 0x00000800, 32, x1, 172, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xfffc0005, 0xfffbffff, 6, x1, 176, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:9
TEST_IMM_OP( addi, x11, x10, 0xfffff808, 0xfffff7ff, 9, x1, 180, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffefff;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xffffeffd, 0xffffefff, -2, x1, 184, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0xffffdff7, 0xffffdfff, -8, x1, 188, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xffffc03f, 0xffffbfff, 64, x1, 192, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x00000020;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0x1b, 0x00000020, -5, x1, 196, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xfffeffbe, 0xfffeffff, -65, x1, 200, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xfffdffee, 0xfffdffff, -17, x1, 204, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x00001000;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xfdf, 0x00001000, -33, x1, 208, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffc;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xfffffff5, 0xfffffffc, -7, x1, 212, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x00000010;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0x40f, 0x00000010, 1023, x1, 216, x2)

# opcode: addi ; op1:x10; dest:x11; op1val:0x00400000;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0x3ffff7, 0x00400000, -9, x1, 220, x2)
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

signature_x9_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x9_1:
    .fill 23*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 56*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
