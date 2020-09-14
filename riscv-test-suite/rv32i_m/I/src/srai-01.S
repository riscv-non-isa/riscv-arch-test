
#This assembly file tests the srai instruction of the RISC-V I extension for the srai covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srai)

la x15,signature_x15_1

# opcode: srai ; op1:x7; dest:x28; op1val:0xfeffffff;  immval:31
TEST_IMM_OP( srai, x28, x7, 0x1, 0xfeffffff, 31, x15, 0, x22)

# opcode: srai ; op1:x5; dest:x5; op1val:0x00000009;  immval:12
TEST_IMM_OP( srai, x5, x5, 0x0, 0x00000009, 12, x15, 4, x22)

# opcode: srai ; op1:x10; dest:x2; op1val:0xffefffff;  immval:0
TEST_IMM_OP( srai, x2, x10, 0xffefffff, 0xffefffff, 0, x15, 8, x22)

# opcode: srai ; op1:x31; dest:x4; op1val:0x00000400;  immval:0
TEST_IMM_OP( srai, x4, x31, 0x400, 0x00000400, 0, x15, 12, x22)

# opcode: srai ; op1:x14; dest:x23; op1val:0x40000000;  immval:31
TEST_IMM_OP( srai, x23, x14, 0x0, 0x40000000, 31, x15, 16, x22)

# opcode: srai ; op1:x8; dest:x1; op1val:0x00000003;  immval:3
TEST_IMM_OP( srai, x1, x8, 0x0, 0x00000003, 3, x15, 20, x22)

# opcode: srai ; op1:x24; dest:x31; op1val:0x80000000;  immval:2
TEST_IMM_OP( srai, x31, x24, 0x20000000, 0x80000000, 2, x15, 24, x22)

# opcode: srai ; op1:x17; dest:x3; op1val:0x00000000;  immval:2
TEST_IMM_OP( srai, x3, x17, 0x0, 0x00000000, 2, x15, 28, x22)

# opcode: srai ; op1:x20; dest:x11; op1val:0x7fffffff;  immval:2
TEST_IMM_OP( srai, x11, x20, 0x1fffffff, 0x7fffffff, 2, x15, 32, x22)

# opcode: srai ; op1:x26; dest:x19; op1val:0x00000001;  immval:4
TEST_IMM_OP( srai, x19, x26, 0x0, 0x00000001, 4, x15, 36, x22)

# opcode: srai ; op1:x2; dest:x10; op1val:0xffefffff;  immval:1
TEST_IMM_OP( srai, x10, x2, 0x7ff7ffff, 0xffefffff, 1, x15, 40, x22)

# opcode: srai ; op1:x28; dest:x21; op1val:0xffffefff;  immval:8
TEST_IMM_OP( srai, x21, x28, 0xffffef, 0xffffefff, 8, x15, 44, x22)

# opcode: srai ; op1:x19; dest:x30; op1val:0x00000100;  immval:16
TEST_IMM_OP( srai, x30, x19, 0x0, 0x00000100, 16, x15, 48, x22)

# opcode: srai ; op1:x13; dest:x14; op1val:0x00010000;  immval:30
TEST_IMM_OP( srai, x14, x13, 0x0, 0x00010000, 30, x15, 52, x22)

# opcode: srai ; op1:x29; dest:x26; op1val:0xffffffff;  immval:29
TEST_IMM_OP( srai, x26, x29, 0x7, 0xffffffff, 29, x15, 56, x22)

# opcode: srai ; op1:x4; dest:x12; op1val:0x40000000;  immval:27
TEST_IMM_OP( srai, x12, x4, 0x8, 0x40000000, 27, x15, 60, x22)

# opcode: srai ; op1:x25; dest:x20; op1val:0xfffffffe;  immval:23
TEST_IMM_OP( srai, x20, x25, 0x1ff, 0xfffffffe, 23, x15, 64, x22)

# opcode: srai ; op1:x21; dest:x29; op1val:0x00000200;  immval:15
TEST_IMM_OP( srai, x29, x21, 0x0, 0x00000200, 15, x15, 68, x22)

# opcode: srai ; op1:x1; dest:x24; op1val:0x00000006;  immval:21
TEST_IMM_OP( srai, x24, x1, 0x0, 0x00000006, 21, x15, 72, x22)

# opcode: srai ; op1:x12; dest:x9; op1val:0x00080000;  immval:10
TEST_IMM_OP( srai, x9, x12, 0x200, 0x00080000, 10, x15, 76, x22)

# opcode: srai ; op1:x11; dest:x25; op1val:0x00000002;  immval:12
TEST_IMM_OP( srai, x25, x11, 0x0, 0x00000002, 12, x15, 80, x22)

# opcode: srai ; op1:x3; dest:x6; op1val:0x00000004;  immval:9
TEST_IMM_OP( srai, x6, x3, 0x0, 0x00000004, 9, x15, 84, x22)

# opcode: srai ; op1:x18; dest:x16; op1val:0x00000008;  immval:18
TEST_IMM_OP( srai, x16, x18, 0x0, 0x00000008, 18, x15, 88, x22)
la x1,signature_x1_0

# opcode: srai ; op1:x16; dest:x8; op1val:0x00000010;  immval:30
TEST_IMM_OP( srai, x8, x16, 0x0, 0x00000010, 30, x1, 0, x2)

# opcode: srai ; op1:x30; dest:x22; op1val:0x00000020;  immval:17
TEST_IMM_OP( srai, x22, x30, 0x0, 0x00000020, 17, x1, 4, x2)

# opcode: srai ; op1:x9; dest:x7; op1val:0x00000040;  immval:12
TEST_IMM_OP( srai, x7, x9, 0x0, 0x00000040, 12, x1, 8, x2)

# opcode: srai ; op1:x15; dest:x0; op1val:0x00000080;  immval:9
TEST_IMM_OP( srai, x0, x15, 0x0, 0x00000080, 9, x1, 12, x2)

# opcode: srai ; op1:x27; dest:x15; op1val:0x00000800;  immval:17
TEST_IMM_OP( srai, x15, x27, 0x0, 0x00000800, 17, x1, 16, x2)

# opcode: srai ; op1:x22; dest:x18; op1val:0x00001000;  immval:2
TEST_IMM_OP( srai, x18, x22, 0x400, 0x00001000, 2, x1, 20, x2)

# opcode: srai ; op1:x0; dest:x13; op1val:0x00002000;  immval:5
TEST_IMM_OP( srai, x13, x0, 0x100, 0x00002000, 5, x1, 24, x2)

# opcode: srai ; op1:x6; dest:x17; op1val:0x00004000;  immval:2
TEST_IMM_OP( srai, x17, x6, 0x1000, 0x00004000, 2, x1, 28, x2)

# opcode: srai ; op1:x23; dest:x27; op1val:0x00008000;  immval:29
TEST_IMM_OP( srai, x27, x23, 0x0, 0x00008000, 29, x1, 32, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00020000;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x100, 0x00020000, 9, x1, 36, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00040000;  immval:27
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00040000, 27, x1, 40, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00100000;  immval:27
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00100000, 27, x1, 44, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00200000;  immval:23
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00200000, 23, x1, 48, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00400000;  immval:29
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00400000, 29, x1, 52, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00800000;  immval:30
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00800000, 30, x1, 56, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x01000000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x800, 0x01000000, 13, x1, 60, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x02000000;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x80, 0x02000000, 18, x1, 64, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x04000000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x2000, 0x04000000, 13, x1, 68, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x08000000;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x2000, 0x08000000, 14, x1, 72, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3fffff7f, 0xfffffdff, 2, x1, 76, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3ffffef, 0xfffffbff, 6, x1, 80, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1ffffeff, 0xfffff7ff, 3, x1, 84, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3fff, 0xffffdfff, 18, x1, 88, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fff, 0xffffbfff, 19, x1, 92, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3fffd, 0xffff7fff, 14, x1, 96, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:23
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xfffeffff, 23, x1, 100, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1fffb, 0xfffdffff, 15, x1, 104, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1fff7, 0xfffbffff, 15, x1, 108, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffef, 0xfff7ffff, 15, x1, 112, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7feff, 0xffdfffff, 13, x1, 116, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:30
TEST_IMM_OP( srai, x11, x10, 0x3, 0xffbfffff, 30, x1, 120, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:16
TEST_IMM_OP( srai, x11, x10, 0xff7f, 0xff7fffff, 16, x1, 124, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x1, 0xfdffffff, 31, x1, 128, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xfbffffff, 0xfbffffff, 0, x1, 132, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1eff, 0xf7ffffff, 19, x1, 136, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:27
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xfffffff7, 27, x1, 140, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x7fff, 0xfffffffb, 17, x1, 144, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xefffffff;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3bfffff, 0xefffffff, 6, x1, 148, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x10000000;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x400, 0x10000000, 18, x1, 152, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xdfffff, 0xdfffffff, 8, x1, 156, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x20000000;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x100, 0x20000000, 21, x1, 160, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x2ffffff, 0xbfffffff, 6, x1, 164, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x55555555;  immval:16
TEST_IMM_OP( srai, x11, x10, 0x5555, 0x55555555, 16, x1, 168, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x1, 0xaaaaaaaa, 31, x1, 172, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1ffffff, 0xfffffffd, 7, x1, 176, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffef;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x7fffff, 0xffffffef, 9, x1, 180, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffff, 0xffffffdf, 12, x1, 184, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1ffffff7, 0xffffffbf, 3, x1, 188, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xffffff7f, 15, x1, 192, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffff, 0xfffffeff, 12, x1, 196, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00000009;  immval:12
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00000009, 12, x1, 200, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00000080;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00000080, 9, x1, 204, x2)

# opcode: srai ; op1:x10; dest:x11; op1val:0x00002000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x100, 0x00002000, 5, x1, 208, x2)
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

signature_x15_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x15_1:
    .fill 23*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 53*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
