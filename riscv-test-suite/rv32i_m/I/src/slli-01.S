
#This assembly file tests the slli instruction of the RISC-V I extension for the slli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slli)

la x8,signature_x8_1

# opcode: slli ; op1:x24; dest:x28; op1val:0xfffffff9;  immval:9
TEST_IMM_OP( slli, x28, x24, 0xfffff200, 0xfffffff9, 9, x8, 0, x1)

# opcode: slli ; op1:x21; dest:x21; op1val:0x00000020;  immval:4
TEST_IMM_OP( slli, x21, x21, 0x200, 0x00000020, 4, x8, 4, x1)

# opcode: slli ; op1:x2; dest:x6; op1val:0xaaaaaaaa;  immval:0
TEST_IMM_OP( slli, x6, x2, 0xaaaaaaaa, 0xaaaaaaaa, 0, x8, 8, x1)

# opcode: slli ; op1:x30; dest:x29; op1val:0x00000001;  immval:0
TEST_IMM_OP( slli, x29, x30, 0x1, 0x00000001, 0, x8, 12, x1)

# opcode: slli ; op1:x28; dest:x11; op1val:0xffefffff;  immval:31
TEST_IMM_OP( slli, x11, x28, 0x80000000, 0xffefffff, 31, x8, 16, x1)

# opcode: slli ; op1:x5; dest:x16; op1val:0x20000000;  immval:31
TEST_IMM_OP( slli, x16, x5, 0x0, 0x20000000, 31, x8, 20, x1)

# opcode: slli ; op1:x16; dest:x14; op1val:0x00000010;  immval:16
TEST_IMM_OP( slli, x14, x16, 0x100000, 0x00000010, 16, x8, 24, x1)

# opcode: slli ; op1:x4; dest:x18; op1val:0x80000000;  immval:2
TEST_IMM_OP( slli, x18, x4, 0x0, 0x80000000, 2, x8, 28, x1)

# opcode: slli ; op1:x10; dest:x23; op1val:0x00000000;  immval:9
TEST_IMM_OP( slli, x23, x10, 0x0, 0x00000000, 9, x8, 32, x1)

# opcode: slli ; op1:x31; dest:x7; op1val:0x7fffffff;  immval:14
TEST_IMM_OP( slli, x7, x31, 0xffffc000, 0x7fffffff, 14, x8, 36, x1)

# opcode: slli ; op1:x18; dest:x22; op1val:0x00000006;  immval:1
TEST_IMM_OP( slli, x22, x18, 0xc, 0x00000006, 1, x8, 40, x1)

# opcode: slli ; op1:x22; dest:x27; op1val:0xfffffeff;  immval:8
TEST_IMM_OP( slli, x27, x22, 0xfffeff00, 0xfffffeff, 8, x8, 44, x1)

# opcode: slli ; op1:x3; dest:x25; op1val:0x00000006;  immval:30
TEST_IMM_OP( slli, x25, x3, 0x80000000, 0x00000006, 30, x8, 48, x1)

# opcode: slli ; op1:x27; dest:x13; op1val:0x00000008;  immval:29
TEST_IMM_OP( slli, x13, x27, 0x0, 0x00000008, 29, x8, 52, x1)

# opcode: slli ; op1:x14; dest:x19; op1val:0xfffbffff;  immval:27
TEST_IMM_OP( slli, x19, x14, 0xf8000000, 0xfffbffff, 27, x8, 56, x1)

# opcode: slli ; op1:x9; dest:x5; op1val:0x00000400;  immval:23
TEST_IMM_OP( slli, x5, x9, 0x0, 0x00000400, 23, x8, 60, x1)

# opcode: slli ; op1:x26; dest:x9; op1val:0xbfffffff;  immval:15
TEST_IMM_OP( slli, x9, x26, 0xffff8000, 0xbfffffff, 15, x8, 64, x1)

# opcode: slli ; op1:x11; dest:x20; op1val:0xffffffbf;  immval:21
TEST_IMM_OP( slli, x20, x11, 0xf7e00000, 0xffffffbf, 21, x8, 68, x1)

# opcode: slli ; op1:x7; dest:x17; op1val:0xffffefff;  immval:10
TEST_IMM_OP( slli, x17, x7, 0xffbffc00, 0xffffefff, 10, x8, 72, x1)

# opcode: slli ; op1:x17; dest:x10; op1val:0x00000002;  immval:9
TEST_IMM_OP( slli, x10, x17, 0x400, 0x00000002, 9, x8, 76, x7)

# opcode: slli ; op1:x19; dest:x1; op1val:0x00000004;  immval:17
TEST_IMM_OP( slli, x1, x19, 0x80000, 0x00000004, 17, x8, 80, x7)
la x5,signature_x5_0

# opcode: slli ; op1:x6; dest:x3; op1val:0x00000040;  immval:30
TEST_IMM_OP( slli, x3, x6, 0x0, 0x00000040, 30, x5, 0, x7)

# opcode: slli ; op1:x0; dest:x15; op1val:0x00000080;  immval:21
TEST_IMM_OP( slli, x15, x0, 0x10000000, 0x00000080, 21, x5, 4, x7)

# opcode: slli ; op1:x13; dest:x12; op1val:0x00000100;  immval:21
TEST_IMM_OP( slli, x12, x13, 0x20000000, 0x00000100, 21, x5, 8, x7)

# opcode: slli ; op1:x23; dest:x2; op1val:0x00000200;  immval:9
TEST_IMM_OP( slli, x2, x23, 0x40000, 0x00000200, 9, x5, 12, x7)

# opcode: slli ; op1:x15; dest:x24; op1val:0x00000800;  immval:15
TEST_IMM_OP( slli, x24, x15, 0x4000000, 0x00000800, 15, x5, 16, x7)

# opcode: slli ; op1:x25; dest:x8; op1val:0x00001000;  immval:13
TEST_IMM_OP( slli, x8, x25, 0x2000000, 0x00001000, 13, x5, 20, x7)

# opcode: slli ; op1:x20; dest:x4; op1val:0x00002000;  immval:15
TEST_IMM_OP( slli, x4, x20, 0x10000000, 0x00002000, 15, x5, 24, x7)

# opcode: slli ; op1:x29; dest:x26; op1val:0x00004000;  immval:3
TEST_IMM_OP( slli, x26, x29, 0x20000, 0x00004000, 3, x5, 28, x7)

# opcode: slli ; op1:x8; dest:x30; op1val:0x00008000;  immval:0
TEST_IMM_OP( slli, x30, x8, 0x8000, 0x00008000, 0, x5, 32, x7)

# opcode: slli ; op1:x1; dest:x31; op1val:0x00010000;  immval:0
TEST_IMM_OP( slli, x31, x1, 0x10000, 0x00010000, 0, x5, 36, x7)

# opcode: slli ; op1:x12; dest:x0; op1val:0x00020000;  immval:27
TEST_IMM_OP( slli, x0, x12, 0x0, 0x00020000, 27, x5, 40, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00040000;  immval:29
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00040000, 29, x5, 44, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00080000;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x200000, 0x00080000, 2, x5, 48, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00100000;  immval:10
TEST_IMM_OP( slli, x11, x10, 0x40000000, 0x00100000, 10, x5, 52, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00200000;  immval:13
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00200000, 13, x5, 56, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00400000;  immval:15
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00400000, 15, x5, 60, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00800000;  immval:6
TEST_IMM_OP( slli, x11, x10, 0x20000000, 0x00800000, 6, x5, 64, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x01000000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x0, 0x01000000, 21, x5, 68, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:29
TEST_IMM_OP( slli, x11, x10, 0xe0000000, 0xfffffdff, 29, x5, 72, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xfffff7fe, 0xfffffbff, 1, x5, 76, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xffdffc00, 0xfffff7ff, 10, x5, 80, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:13
TEST_IMM_OP( slli, x11, x10, 0xfbffe000, 0xffffdfff, 13, x5, 84, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xfefffc00, 0xffffbfff, 10, x5, 88, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xfff7fff0, 0xffff7fff, 4, x5, 92, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xffeffff0, 0xfffeffff, 4, x5, 96, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xfffc0000, 0xfffdffff, 18, x5, 100, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:5
TEST_IMM_OP( slli, x11, x10, 0xfeffffe0, 0xfff7ffff, 5, x5, 104, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:6
TEST_IMM_OP( slli, x11, x10, 0xf7ffffc0, 0xffdfffff, 6, x5, 108, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xffff0000, 0xffbfffff, 16, x5, 112, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:9
TEST_IMM_OP( slli, x11, x10, 0xfffffe00, 0xff7fffff, 9, x5, 116, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:6
TEST_IMM_OP( slli, x11, x10, 0xbfffffc0, 0xfeffffff, 6, x5, 120, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:30
TEST_IMM_OP( slli, x11, x10, 0xc0000000, 0xfdffffff, 30, x5, 124, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:13
TEST_IMM_OP( slli, x11, x10, 0xffffe000, 0xfbffffff, 13, x5, 128, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0xf7ffffff, 31, x5, 132, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:21
TEST_IMM_OP( slli, x11, x10, 0xfee00000, 0xfffffff7, 21, x5, 136, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x02000000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x2000000, 0x02000000, 0, x5, 140, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x04000000;  immval:19
TEST_IMM_OP( slli, x11, x10, 0x0, 0x04000000, 19, x5, 144, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x08000000;  immval:23
TEST_IMM_OP( slli, x11, x10, 0x0, 0x08000000, 23, x5, 148, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xefffffff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0xefffffff, 31, x5, 152, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x10000000;  immval:23
TEST_IMM_OP( slli, x11, x10, 0x0, 0x10000000, 23, x5, 156, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xfffe0000, 0xdfffffff, 17, x5, 160, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x40000000;  immval:9
TEST_IMM_OP( slli, x11, x10, 0x0, 0x40000000, 9, x5, 164, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x55555555;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xaaa80000, 0x55555555, 19, x5, 168, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:29
TEST_IMM_OP( slli, x11, x10, 0xc0000000, 0xfffffffe, 29, x5, 172, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:6
TEST_IMM_OP( slli, x11, x10, 0xffffff40, 0xfffffffd, 6, x5, 176, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffffffec, 0xfffffffb, 2, x5, 180, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffef;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xfffff780, 0xffffffef, 7, x5, 184, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xef800000, 0xffffffdf, 23, x5, 188, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xfefe0000, 0xffffff7f, 17, x5, 192, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00000020;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x200, 0x00000020, 4, x5, 196, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00000080;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x10000000, 0x00000080, 21, x5, 200, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00020000;  immval:27
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00020000, 27, x5, 204, x7)
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

signature_x8_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x8_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x5_0:
    .fill 52*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
