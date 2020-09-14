
#This assembly file tests the sltiu instruction of the RISC-V I extension for the sltiu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltiu)

la x4,signature_x4_1

# opcode: sltiu ; op1:x17; dest:x8; op1val:0x00000800;  immval:2048
TEST_IMM_OP( sltiu, x8, x17, 0x0, 0x00000800, 2048, x4, 0, x7)

# opcode: sltiu ; op1:x5; dest:x5; op1val:0xfffffffd;  immval:4094
TEST_IMM_OP( sltiu, x5, x5, 0x0, 0xfffffffd, 4094, x4, 4, x7)

# opcode: sltiu ; op1:x29; dest:x1; op1val:0x00000000;  immval:64
TEST_IMM_OP( sltiu, x1, x29, 0x1, 0x00000000, 64, x4, 8, x7)

# opcode: sltiu ; op1:x13; dest:x24; op1val:0xffffffff;  immval:4079
TEST_IMM_OP( sltiu, x24, x13, 0x0, 0xffffffff, 4079, x4, 12, x7)

# opcode: sltiu ; op1:x23; dest:x20; op1val:0x00000001;  immval:4079
TEST_IMM_OP( sltiu, x20, x23, 0x1, 0x00000001, 4079, x4, 16, x7)

# opcode: sltiu ; op1:x0; dest:x25; op1val:0xffdfffff;  immval:0
TEST_IMM_OP( sltiu, x25, x0, 0x0, 0xffdfffff, 0, x4, 20, x7)

# opcode: sltiu ; op1:x11; dest:x28; op1val:0xfffffffd;  immval:4095
TEST_IMM_OP( sltiu, x28, x11, 0x0, 0xfffffffd, 4095, x4, 24, x7)

# opcode: sltiu ; op1:x6; dest:x10; op1val:0x00000000;  immval:1
TEST_IMM_OP( sltiu, x10, x6, 0x1, 0x00000000, 1, x4, 28, x7)

# opcode: sltiu ; op1:x25; dest:x18; op1val:0x00000002;  immval:7
TEST_IMM_OP( sltiu, x18, x25, 0x1, 0x00000002, 7, x4, 32, x7)

# opcode: sltiu ; op1:x27; dest:x11; op1val:0x00000004;  immval:14
TEST_IMM_OP( sltiu, x11, x27, 0x1, 0x00000004, 14, x4, 36, x7)

# opcode: sltiu ; op1:x26; dest:x13; op1val:0x00000008;  immval:64
TEST_IMM_OP( sltiu, x13, x26, 0x1, 0x00000008, 64, x4, 40, x7)

# opcode: sltiu ; op1:x8; dest:x2; op1val:0x00000010;  immval:1
TEST_IMM_OP( sltiu, x2, x8, 0x0, 0x00000010, 1, x4, 44, x7)

# opcode: sltiu ; op1:x15; dest:x16; op1val:0x00000020;  immval:11
TEST_IMM_OP( sltiu, x16, x15, 0x0, 0x00000020, 11, x4, 48, x7)

# opcode: sltiu ; op1:x19; dest:x3; op1val:0x00000040;  immval:14
TEST_IMM_OP( sltiu, x3, x19, 0x0, 0x00000040, 14, x4, 52, x7)

# opcode: sltiu ; op1:x10; dest:x31; op1val:0x00000080;  immval:19
TEST_IMM_OP( sltiu, x31, x10, 0x0, 0x00000080, 19, x4, 56, x7)

# opcode: sltiu ; op1:x3; dest:x12; op1val:0x00000100;  immval:19
TEST_IMM_OP( sltiu, x12, x3, 0x0, 0x00000100, 19, x4, 60, x7)

# opcode: sltiu ; op1:x21; dest:x30; op1val:0x00000200;  immval:3
TEST_IMM_OP( sltiu, x30, x21, 0x0, 0x00000200, 3, x4, 64, x7)

# opcode: sltiu ; op1:x22; dest:x0; op1val:0x00000400;  immval:17
TEST_IMM_OP( sltiu, x0, x22, 0x0, 0x00000400, 17, x4, 68, x7)

# opcode: sltiu ; op1:x2; dest:x17; op1val:0x00001000;  immval:5
TEST_IMM_OP( sltiu, x17, x2, 0x0, 0x00001000, 5, x4, 72, x3)

# opcode: sltiu ; op1:x31; dest:x29; op1val:0x00002000;  immval:2047
TEST_IMM_OP( sltiu, x29, x31, 0x0, 0x00002000, 2047, x4, 76, x3)

# opcode: sltiu ; op1:x24; dest:x21; op1val:0x00004000;  immval:9
TEST_IMM_OP( sltiu, x21, x24, 0x0, 0x00004000, 9, x4, 80, x3)

# opcode: sltiu ; op1:x1; dest:x22; op1val:0x00008000;  immval:9
TEST_IMM_OP( sltiu, x22, x1, 0x0, 0x00008000, 9, x4, 84, x3)

# opcode: sltiu ; op1:x20; dest:x23; op1val:0x00010000;  immval:4091
TEST_IMM_OP( sltiu, x23, x20, 0x0, 0x00010000, 4091, x4, 88, x3)

# opcode: sltiu ; op1:x30; dest:x26; op1val:0x00020000;  immval:13
TEST_IMM_OP( sltiu, x26, x30, 0x0, 0x00020000, 13, x4, 92, x3)

# opcode: sltiu ; op1:x14; dest:x15; op1val:0x00040000;  immval:2048
TEST_IMM_OP( sltiu, x15, x14, 0x0, 0x00040000, 2048, x4, 96, x3)
la x1,signature_x1_0

# opcode: sltiu ; op1:x12; dest:x27; op1val:0x00080000;  immval:3967
TEST_IMM_OP( sltiu, x27, x12, 0x0, 0x00080000, 3967, x1, 0, x3)

# opcode: sltiu ; op1:x7; dest:x9; op1val:0x00100000;  immval:32
TEST_IMM_OP( sltiu, x9, x7, 0x0, 0x00100000, 32, x1, 4, x3)

# opcode: sltiu ; op1:x16; dest:x19; op1val:0x00200000;  immval:4
TEST_IMM_OP( sltiu, x19, x16, 0x0, 0x00200000, 4, x1, 8, x3)

# opcode: sltiu ; op1:x4; dest:x14; op1val:0x00400000;  immval:512
TEST_IMM_OP( sltiu, x14, x4, 0x0, 0x00400000, 512, x1, 12, x3)

# opcode: sltiu ; op1:x9; dest:x4; op1val:0x00800000;  immval:4079
TEST_IMM_OP( sltiu, x4, x9, 0x0, 0x00800000, 4079, x1, 16, x3)

# opcode: sltiu ; op1:x28; dest:x6; op1val:0x01000000;  immval:3967
TEST_IMM_OP( sltiu, x6, x28, 0x0, 0x01000000, 3967, x1, 20, x3)

# opcode: sltiu ; op1:x18; dest:x7; op1val:0x02000000;  immval:14
TEST_IMM_OP( sltiu, x7, x18, 0x0, 0x02000000, 14, x1, 24, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x04000000;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x04000000, 13, x1, 28, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x08000000;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x08000000, 2730, x1, 32, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x10000000;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x10000000, 9, x1, 36, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x20000000;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x20000000, 5, x1, 40, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x40000000;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x40000000, 6, x1, 44, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x80000000;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x80000000, 18, x1, 48, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffe, 4, x1, 52, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffb, 256, x1, 56, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffff7, 4, x1, 60, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffef;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffef, 1365, x1, 64, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:8
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffdf, 8, x1, 68, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:128
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffbf, 128, x1, 72, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffff7f, 10, x1, 76, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffeff, 3839, x1, 80, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffdff, 3, x1, 84, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:15
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffbff, 15, x1, 88, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfdffffff, 4, x1, 92, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfbffffff, 16, x1, 96, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xf7ffffff, 6, x1, 100, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xefffffff;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xefffffff, 3839, x1, 104, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xdfffffff, 4093, x1, 108, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xbfffffff, 1365, x1, 112, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x7fffffff;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x7fffffff, 18, x1, 116, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x55555555;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x55555555, 18, x1, 120, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xaaaaaaaa, 18, x1, 124, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00000008;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00000008, 2, x1, 128, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:1024
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffbffff, 1024, x1, 132, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x55555555;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x55555555, 4087, x1, 136, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x40000000;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x40000000, 4063, x1, 140, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfff7ffff, 7, x1, 144, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffff7ff, 2, x1, 148, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffefff;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffefff, 16, x1, 152, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffdfff, 6, x1, 156, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffbfffff, 64, x1, 160, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffbfff, 4095, x1, 164, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffff7fff, 10, x1, 168, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:11
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffeffff, 11, x1, 172, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffdffff, 3967, x1, 176, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffff7, 3071, x1, 180, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00040000;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00040000, 4031, x1, 184, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffefffff;  immval:19
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffefffff, 19, x1, 188, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x80000000;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x80000000, 3583, x1, 192, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xff7fffff, 2, x1, 196, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:19
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfeffffff, 19, x1, 200, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffd, 4094, x1, 204, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffdfffff, 0, x1, 208, x3)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00000400;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00000400, 17, x1, 212, x3)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x4_1:
    .fill 25*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 54*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
