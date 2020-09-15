
#This assembly file tests the srai instruction of the RISC-V I extension for the srai covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srai)

la x22,signature_x22_1

# opcode: srai ; op1:x16; dest:x26; op1val:0xfffffffb;  immval:19
TEST_IMM_OP( srai, x26, x16, 0x1fff, 0xfffffffb, 19, x22, 0, x20)

# opcode: srai ; op1:x15; dest:x15; op1val:0x00000100;  immval:23
TEST_IMM_OP( srai, x15, x15, 0x0, 0x00000100, 23, x22, 4, x20)

# opcode: srai ; op1:x21; dest:x2; op1val:0xfffffffc;  immval:0
TEST_IMM_OP( srai, x2, x21, 0xfffffffc, 0xfffffffc, 0, x22, 8, x20)

# opcode: srai ; op1:x6; dest:x8; op1val:0x00001000;  immval:0
TEST_IMM_OP( srai, x8, x6, 0x1000, 0x00001000, 0, x22, 12, x20)

# opcode: srai ; op1:x30; dest:x31; op1val:0xfffffdff;  immval:31
TEST_IMM_OP( srai, x31, x30, 0x1, 0xfffffdff, 31, x22, 16, x20)

# opcode: srai ; op1:x2; dest:x14; op1val:0x00040000;  immval:31
TEST_IMM_OP( srai, x14, x2, 0x0, 0x00040000, 31, x22, 20, x20)

# opcode: srai ; op1:x0; dest:x9; op1val:0x00000010;  immval:16
TEST_IMM_OP( srai, x9, x0, 0x0, 0x00000010, 16, x22, 24, x20)

# opcode: srai ; op1:x1; dest:x5; op1val:0x80000000;  immval:31
TEST_IMM_OP( srai, x5, x1, 0x1, 0x80000000, 31, x22, 28, x20)

# opcode: srai ; op1:x3; dest:x1; op1val:0x00000000;  immval:11
TEST_IMM_OP( srai, x1, x3, 0x0, 0x00000000, 11, x22, 32, x20)

# opcode: srai ; op1:x5; dest:x3; op1val:0x7fffffff;  immval:15
TEST_IMM_OP( srai, x3, x5, 0xffff, 0x7fffffff, 15, x22, 36, x20)

# opcode: srai ; op1:x26; dest:x7; op1val:0x00000001;  immval:23
TEST_IMM_OP( srai, x7, x26, 0x0, 0x00000001, 23, x22, 40, x20)

# opcode: srai ; op1:x9; dest:x4; op1val:0x00010000;  immval:1
TEST_IMM_OP( srai, x4, x9, 0x8000, 0x00010000, 1, x22, 44, x20)

# opcode: srai ; op1:x23; dest:x10; op1val:0x08000000;  immval:2
TEST_IMM_OP( srai, x10, x23, 0x2000000, 0x08000000, 2, x22, 48, x20)

# opcode: srai ; op1:x29; dest:x0; op1val:0x00080000;  immval:4
TEST_IMM_OP( srai, x0, x29, 0x8000, 0x00080000, 4, x22, 52, x20)

# opcode: srai ; op1:x13; dest:x6; op1val:0xfffeffff;  immval:8
TEST_IMM_OP( srai, x6, x13, 0xfffeff, 0xfffeffff, 8, x22, 56, x20)

# opcode: srai ; op1:x17; dest:x16; op1val:0x00000200;  immval:30
TEST_IMM_OP( srai, x16, x17, 0x0, 0x00000200, 30, x22, 60, x20)

# opcode: srai ; op1:x25; dest:x30; op1val:0x00010000;  immval:29
TEST_IMM_OP( srai, x30, x25, 0x0, 0x00010000, 29, x22, 64, x20)

# opcode: srai ; op1:x28; dest:x12; op1val:0xff7fffff;  immval:27
TEST_IMM_OP( srai, x12, x28, 0x1f, 0xff7fffff, 27, x22, 68, x20)

# opcode: srai ; op1:x18; dest:x19; op1val:0x00001000;  immval:21
TEST_IMM_OP( srai, x19, x18, 0x0, 0x00001000, 21, x22, 72, x20)

# opcode: srai ; op1:x4; dest:x11; op1val:0xffdfffff;  immval:10
TEST_IMM_OP( srai, x11, x4, 0x3ff7ff, 0xffdfffff, 10, x22, 76, x20)

# opcode: srai ; op1:x20; dest:x18; op1val:0x00000002;  immval:7
TEST_IMM_OP( srai, x18, x20, 0x0, 0x00000002, 7, x22, 80, x2)
la x1,signature_x1_0

# opcode: srai ; op1:x22; dest:x29; op1val:0x00000004;  immval:15
TEST_IMM_OP( srai, x29, x22, 0x0, 0x00000004, 15, x1, 0, x2)

# opcode: srai ; op1:x12; dest:x24; op1val:0x00000008;  immval:16
TEST_IMM_OP( srai, x24, x12, 0x0, 0x00000008, 16, x1, 4, x2)

# opcode: srai ; op1:x31; dest:x20; op1val:0x00000020;  immval:9
TEST_IMM_OP( srai, x20, x31, 0x0, 0x00000020, 9, x1, 8, x2)

# opcode: srai ; op1:x27; dest:x17; op1val:0x00000040;  immval:8
TEST_IMM_OP( srai, x17, x27, 0x0, 0x00000040, 8, x1, 12, x2)

# opcode: srai ; op1:x24; dest:x22; op1val:0x00000080;  immval:15
TEST_IMM_OP( srai, x22, x24, 0x0, 0x00000080, 15, x1, 16, x2)

# opcode: srai ; op1:x10; dest:x23; op1val:0x00000400;  immval:15
TEST_IMM_OP( srai, x23, x10, 0x0, 0x00000400, 15, x1, 20, x2)

# opcode: srai ; op1:x19; dest:x21; op1val:0x00000800;  immval:10
TEST_IMM_OP( srai, x21, x19, 0x2, 0x00000800, 10, x1, 24, x2)

# opcode: srai ; op1:x7; dest:x13; op1val:0x00002000;  immval:6
TEST_IMM_OP( srai, x13, x7, 0x80, 0x00002000, 6, x1, 28, x2)

# opcode: srai ; op1:x8; dest:x25; op1val:0x00004000;  immval:17
TEST_IMM_OP( srai, x25, x8, 0x0, 0x00004000, 17, x1, 32, x2)

# opcode: srai ; op1:x11; dest:x27; op1val:0x00008000;  immval:17
TEST_IMM_OP( srai, x27, x11, 0x0, 0x00008000, 17, x1, 36, x2)

# opcode: srai ; op1:x14; dest:x28; op1val:0x00020000;  immval:12
TEST_IMM_OP( srai, x28, x14, 0x20, 0x00020000, 12, x1, 40, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00100000;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x4000, 0x00100000, 6, x1, 44, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00200000;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x1000, 0x00200000, 9, x1, 48, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00400000;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x80000, 0x00400000, 3, x1, 52, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00800000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00800000, 31, x1, 56, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x01000000;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x1000000, 0x01000000, 0, x1, 60, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x02000000;  immval:29
TEST_IMM_OP( srai, x11, x10, 0x0, 0x02000000, 29, x1, 64, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x04000000;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x8000, 0x04000000, 11, x1, 68, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffff, 0xfffffbff, 14, x1, 72, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1ffffe, 0xfffff7ff, 11, x1, 76, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffefff;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3ffffbf, 0xffffefff, 6, x1, 80, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fff, 0xffffdfff, 19, x1, 84, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xffffb, 0xffffbfff, 12, x1, 88, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xffff7fff, 0xffff7fff, 0, x1, 92, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffdfff, 0xfffdffff, 4, x1, 96, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffef, 0xfffbffff, 14, x1, 100, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7ffbffff, 0xfff7ffff, 1, x1, 104, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffefffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xffeffff, 0xffefffff, 4, x1, 108, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:29
TEST_IMM_OP( srai, x11, x10, 0x7, 0xffbfffff, 29, x1, 112, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7f7ff, 0xfeffffff, 13, x1, 116, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:16
TEST_IMM_OP( srai, x11, x10, 0xfdff, 0xfdffffff, 16, x1, 120, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1f7ffff, 0xfbffffff, 7, x1, 124, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:23
TEST_IMM_OP( srai, x11, x10, 0x1ef, 0xf7ffffff, 23, x1, 128, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xefffffff;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1dfffff, 0xefffffff, 7, x1, 132, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7ffff, 0xfffffffd, 13, x1, 136, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffef;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1ffffff, 0xffffffef, 7, x1, 140, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x10000000;  immval:16
TEST_IMM_OP( srai, x11, x10, 0x1000, 0x10000000, 16, x1, 144, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x37ffffff, 0xdfffffff, 2, x1, 148, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x20000000;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x800, 0x20000000, 18, x1, 152, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:30
TEST_IMM_OP( srai, x11, x10, 0x2, 0xbfffffff, 30, x1, 156, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x40000000;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x40000000, 0x40000000, 0, x1, 160, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x55555555;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x55555555, 0x55555555, 0, x1, 164, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x7fffff, 0xfffffffe, 9, x1, 168, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x155555, 0xaaaaaaaa, 11, x1, 172, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xfffffff7, 0xfffffff7, 0, x1, 176, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xffffffdf, 10, x1, 180, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xffffff, 0xffffffbf, 8, x1, 184, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xffffff7, 0xffffff7f, 4, x1, 188, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fff, 0xfffffeff, 19, x1, 192, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00000100;  immval:23
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00000100, 23, x1, 196, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00000010;  immval:16
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00000010, 16, x1, 200, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00080000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x8000, 0x00080000, 4, x1, 204, x2)
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

signature_x22_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x22_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 52*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
