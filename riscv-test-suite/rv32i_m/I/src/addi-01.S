
#This assembly file tests the addi instruction of the RISC-V I extension for the addi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",addi)

la x3,signature_x3_1

# opcode: addi ; op1:x11; dest:x1; op1val:0xfffffff7;  immval:-9
TEST_IMM_OP( addi, x1, x11, 0xffffffee, 0xfffffff7, -9, x3, 0, x7)

# opcode: addi ; op1:x17; dest:x17; op1val:0x00000800;  immval:2047
TEST_IMM_OP( addi, x17, x17, 0xfff, 0x00000800, 2047, x3, 4, x7)

# opcode: addi ; op1:x31; dest:x11; op1val:0x00000040;  immval:-1024
TEST_IMM_OP( addi, x11, x31, 0xfffffc40, 0x00000040, -1024, x3, 8, x7)

# opcode: addi ; op1:x24; dest:x6; op1val:0xfffffffd;  immval:256
TEST_IMM_OP( addi, x6, x24, 0xfd, 0xfffffffd, 256, x3, 12, x7)

# opcode: addi ; op1:x5; dest:x31; op1val:0x80000000;  immval:64
TEST_IMM_OP( addi, x31, x5, 0x80000040, 0x80000000, 64, x3, 16, x7)

# opcode: addi ; op1:x6; dest:x13; op1val:0x00000000;  immval:-17
TEST_IMM_OP( addi, x13, x6, 0xffffffef, 0x00000000, -17, x3, 20, x7)

# opcode: addi ; op1:x28; dest:x0; op1val:0x7fffffff;  immval:-1024
TEST_IMM_OP( addi, x0, x28, 0x7ffffbff, 0x7fffffff, -1024, x3, 24, x7)

# opcode: addi ; op1:x13; dest:x14; op1val:0x00000001;  immval:1024
TEST_IMM_OP( addi, x14, x13, 0x401, 0x00000001, 1024, x3, 28, x7)

# opcode: addi ; op1:x27; dest:x4; op1val:0x00200000;  immval:-2048
TEST_IMM_OP( addi, x4, x27, 0x1ff800, 0x00200000, -2048, x3, 32, x7)

# opcode: addi ; op1:x16; dest:x28; op1val:0x01000000;  immval:0
TEST_IMM_OP( addi, x28, x16, 0x1000000, 0x01000000, 0, x3, 36, x7)

# opcode: addi ; op1:x18; dest:x26; op1val:0x00000080;  immval:1
TEST_IMM_OP( addi, x26, x18, 0x81, 0x00000080, 1, x3, 40, x7)

# opcode: addi ; op1:x30; dest:x18; op1val:0x00000002;  immval:32
TEST_IMM_OP( addi, x18, x30, 0x22, 0x00000002, 32, x3, 44, x7)

# opcode: addi ; op1:x12; dest:x20; op1val:0x00000004;  immval:3
TEST_IMM_OP( addi, x20, x12, 0x7, 0x00000004, 3, x3, 48, x7)

# opcode: addi ; op1:x29; dest:x25; op1val:0x00000008;  immval:-2048
TEST_IMM_OP( addi, x25, x29, 0xfffff808, 0x00000008, -2048, x3, 52, x7)

# opcode: addi ; op1:x9; dest:x16; op1val:0x00000010;  immval:-1366
TEST_IMM_OP( addi, x16, x9, 0xfffffaba, 0x00000010, -1366, x3, 56, x7)

# opcode: addi ; op1:x19; dest:x27; op1val:0x00000020;  immval:16
TEST_IMM_OP( addi, x27, x19, 0x30, 0x00000020, 16, x3, 60, x7)

# opcode: addi ; op1:x10; dest:x12; op1val:0x00000100;  immval:-9
TEST_IMM_OP( addi, x12, x10, 0xf7, 0x00000100, -9, x3, 64, x7)

# opcode: addi ; op1:x14; dest:x10; op1val:0x00000200;  immval:-8
TEST_IMM_OP( addi, x10, x14, 0x1f8, 0x00000200, -8, x3, 68, x7)

# opcode: addi ; op1:x21; dest:x30; op1val:0x00000400;  immval:-9
TEST_IMM_OP( addi, x30, x21, 0x3f7, 0x00000400, -9, x3, 72, x7)

# opcode: addi ; op1:x1; dest:x29; op1val:0x00001000;  immval:16
TEST_IMM_OP( addi, x29, x1, 0x1010, 0x00001000, 16, x3, 76, x7)

# opcode: addi ; op1:x4; dest:x8; op1val:0x00002000;  immval:-6
TEST_IMM_OP( addi, x8, x4, 0x1ffa, 0x00002000, -6, x3, 80, x7)

# opcode: addi ; op1:x20; dest:x21; op1val:0x00004000;  immval:0
TEST_IMM_OP( addi, x21, x20, 0x4000, 0x00004000, 0, x3, 84, x7)

# opcode: addi ; op1:x2; dest:x22; op1val:0x00008000;  immval:64
TEST_IMM_OP( addi, x22, x2, 0x8040, 0x00008000, 64, x3, 88, x7)

# opcode: addi ; op1:x25; dest:x9; op1val:0x00010000;  immval:-9
TEST_IMM_OP( addi, x9, x25, 0xfff7, 0x00010000, -9, x3, 92, x4)

# opcode: addi ; op1:x15; dest:x24; op1val:0x00020000;  immval:16
TEST_IMM_OP( addi, x24, x15, 0x20010, 0x00020000, 16, x3, 96, x4)
la x1,signature_x1_0

# opcode: addi ; op1:x8; dest:x2; op1val:0x00040000;  immval:9
TEST_IMM_OP( addi, x2, x8, 0x40009, 0x00040000, 9, x1, 0, x4)

# opcode: addi ; op1:x7; dest:x5; op1val:0x00080000;  immval:6
TEST_IMM_OP( addi, x5, x7, 0x80006, 0x00080000, 6, x1, 4, x4)

# opcode: addi ; op1:x23; dest:x3; op1val:0x00100000;  immval:-4
TEST_IMM_OP( addi, x3, x23, 0xffffc, 0x00100000, -4, x1, 8, x4)

# opcode: addi ; op1:x3; dest:x23; op1val:0x00400000;  immval:2047
TEST_IMM_OP( addi, x23, x3, 0x4007ff, 0x00400000, 2047, x1, 12, x4)

# opcode: addi ; op1:x22; dest:x7; op1val:0x00800000;  immval:16
TEST_IMM_OP( addi, x7, x22, 0x800010, 0x00800000, 16, x1, 16, x4)

# opcode: addi ; op1:x0; dest:x15; op1val:0x02000000;  immval:5
TEST_IMM_OP( addi, x15, x0, 0x2000005, 0x02000000, 5, x1, 20, x4)

# opcode: addi ; op1:x26; dest:x19; op1val:0x04000000;  immval:3
TEST_IMM_OP( addi, x19, x26, 0x4000003, 0x04000000, 3, x1, 24, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0x08000000;  immval:2
TEST_IMM_OP( addi, x11, x10, 0x8000002, 0x08000000, 2, x1, 28, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0x10000000;  immval:0
TEST_IMM_OP( addi, x11, x10, 0x10000000, 0x10000000, 0, x1, 32, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0x20000000;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0x1ffffffc, 0x20000000, -4, x1, 36, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0x40000000;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0x3ffff800, 0x40000000, -2048, x1, 40, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xfffffbfe, 0xfffffffe, -1024, x1, 44, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xfffffefa, 0xfffffffb, -257, x1, 48, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffef;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xffffffce, 0xffffffef, -33, x1, 52, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xffffffd9, 0xffffffdf, -6, x1, 56, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xfffffebe, 0xffffffbf, -257, x1, 60, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xffffff8f, 0xffffff7f, 16, x1, 64, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xfffffef9, 0xfffffeff, -6, x1, 68, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:1
TEST_IMM_OP( addi, x11, x10, 0xfffffe00, 0xfffffdff, 1, x1, 72, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xfffff7fe, 0xfffffbff, -1025, x1, 76, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0xfffffbfe, 0xfffff7ff, 1023, x1, 80, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffefff;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xffffebfe, 0xffffefff, -1025, x1, 84, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xfff7f7ff, 0xfff7ffff, -2048, x1, 88, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffefffff;  immval:7
TEST_IMM_OP( addi, x11, x10, 0xfff00006, 0xffefffff, 7, x1, 92, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xffe00007, 0xffdfffff, 8, x1, 96, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:2
TEST_IMM_OP( addi, x11, x10, 0xffc00001, 0xffbfffff, 2, x1, 100, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:32
TEST_IMM_OP( addi, x11, x10, 0xff80001f, 0xff7fffff, 32, x1, 104, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xff00003f, 0xfeffffff, 64, x1, 108, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xfe000005, 0xfdffffff, 6, x1, 112, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:1
TEST_IMM_OP( addi, x11, x10, 0xfc000000, 0xfbffffff, 1, x1, 116, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xf7fffffd, 0xf7ffffff, -2, x1, 120, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xefffffff;  immval:3
TEST_IMM_OP( addi, x11, x10, 0xf0000002, 0xefffffff, 3, x1, 124, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xe0000007, 0xdfffffff, 8, x1, 128, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xbfffff7e, 0xbfffffff, -129, x1, 132, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0x55555555;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0x55555154, 0x55555555, -1025, x1, 136, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0x00001000;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xfbf, 0x00001000, -65, x1, 140, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0x20000000;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0x1ffffdff, 0x20000000, -513, x1, 144, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0x00000020;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0x575, 0x00000020, 1365, x1, 148, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xaaaaaaa7, 0xaaaaaaaa, -3, x1, 152, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xffff7ffa, 0xffff7fff, -5, x1, 156, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xfffffffb, 0xfffffff7, 4, x1, 160, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff8;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x78, 0xfffffff8, 128, x1, 164, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:512
TEST_IMM_OP( addi, x11, x10, 0x1fd, 0xfffffffd, 512, x1, 168, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:2
TEST_IMM_OP( addi, x11, x10, 0xffffe001, 0xffffdfff, 2, x1, 172, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xffffb7ff, 0xffffbfff, -2048, x1, 176, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:512
TEST_IMM_OP( addi, x11, x10, 0xffff01ff, 0xfffeffff, 512, x1, 180, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfffdfffc, 0xfffdffff, -3, x1, 184, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:7
TEST_IMM_OP( addi, x11, x10, 0xfffc0006, 0xfffbffff, 7, x1, 188, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0x00000800;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0xfff, 0x00000800, 2047, x1, 192, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0x7fffffff;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0x7ffffbff, 0x7fffffff, -1024, x1, 196, x4)

# opcode: addi ; op1:x10; dest:x11; op1val:0x02000000;  immval:5
TEST_IMM_OP( addi, x11, x10, 0x2000005, 0x02000000, 5, x1, 200, x4)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x3_1:
    .fill 25*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 51*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
