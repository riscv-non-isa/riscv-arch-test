
#This assembly file tests the sltiu instruction of the RISC-V I extension for the sltiu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltiu)

la x3,signature_x3_1

# opcode: sltiu ; op1:x26; dest:x5; op1val:0x0000000c;  immval:12
TEST_IMM_OP( sltiu, x5, x26, 0x0, 0x0000000c, 12, x3, 0, x9)

# opcode: sltiu ; op1:x2; dest:x2; op1val:0x00001000;  immval:4091
TEST_IMM_OP( sltiu, x2, x2, 0x0, 0x00001000, 4091, x3, 4, x9)

# opcode: sltiu ; op1:x6; dest:x13; op1val:0x00000000;  immval:9
TEST_IMM_OP( sltiu, x13, x6, 0x1, 0x00000000, 9, x3, 8, x9)

# opcode: sltiu ; op1:x19; dest:x27; op1val:0xffffffff;  immval:17
TEST_IMM_OP( sltiu, x27, x19, 0x0, 0xffffffff, 17, x3, 12, x9)

# opcode: sltiu ; op1:x23; dest:x26; op1val:0x00000001;  immval:4087
TEST_IMM_OP( sltiu, x26, x23, 0x1, 0x00000001, 4087, x3, 16, x9)

# opcode: sltiu ; op1:x0; dest:x12; op1val:0x80000000;  immval:0
TEST_IMM_OP( sltiu, x12, x0, 0x0, 0x80000000, 0, x3, 20, x9)

# opcode: sltiu ; op1:x14; dest:x22; op1val:0x55555555;  immval:4095
TEST_IMM_OP( sltiu, x22, x14, 0x0, 0x55555555, 4095, x3, 24, x9)

# opcode: sltiu ; op1:x22; dest:x11; op1val:0xfdffffff;  immval:1
TEST_IMM_OP( sltiu, x11, x22, 0x0, 0xfdffffff, 1, x3, 28, x9)

# opcode: sltiu ; op1:x31; dest:x30; op1val:0x00000002;  immval:13
TEST_IMM_OP( sltiu, x30, x31, 0x1, 0x00000002, 13, x3, 32, x9)

# opcode: sltiu ; op1:x12; dest:x21; op1val:0x00000004;  immval:3
TEST_IMM_OP( sltiu, x21, x12, 0x0, 0x00000004, 3, x3, 36, x9)

# opcode: sltiu ; op1:x7; dest:x6; op1val:0x00000008;  immval:3967
TEST_IMM_OP( sltiu, x6, x7, 0x1, 0x00000008, 3967, x3, 40, x9)

# opcode: sltiu ; op1:x5; dest:x25; op1val:0x00000010;  immval:8
TEST_IMM_OP( sltiu, x25, x5, 0x0, 0x00000010, 8, x3, 44, x9)

# opcode: sltiu ; op1:x21; dest:x20; op1val:0x00000020;  immval:4063
TEST_IMM_OP( sltiu, x20, x21, 0x1, 0x00000020, 4063, x3, 48, x9)

# opcode: sltiu ; op1:x17; dest:x4; op1val:0x00000040;  immval:64
TEST_IMM_OP( sltiu, x4, x17, 0x0, 0x00000040, 64, x3, 52, x9)

# opcode: sltiu ; op1:x28; dest:x29; op1val:0x00000080;  immval:0
TEST_IMM_OP( sltiu, x29, x28, 0x0, 0x00000080, 0, x3, 56, x9)

# opcode: sltiu ; op1:x30; dest:x8; op1val:0x00000100;  immval:3839
TEST_IMM_OP( sltiu, x8, x30, 0x1, 0x00000100, 3839, x3, 60, x9)

# opcode: sltiu ; op1:x16; dest:x15; op1val:0x00000200;  immval:17
TEST_IMM_OP( sltiu, x15, x16, 0x0, 0x00000200, 17, x3, 64, x9)

# opcode: sltiu ; op1:x18; dest:x14; op1val:0x00000400;  immval:4095
TEST_IMM_OP( sltiu, x14, x18, 0x1, 0x00000400, 4095, x3, 68, x9)

# opcode: sltiu ; op1:x1; dest:x23; op1val:0x00000800;  immval:16
TEST_IMM_OP( sltiu, x23, x1, 0x0, 0x00000800, 16, x3, 72, x9)

# opcode: sltiu ; op1:x24; dest:x31; op1val:0x00002000;  immval:128
TEST_IMM_OP( sltiu, x31, x24, 0x0, 0x00002000, 128, x3, 76, x5)
la x2,signature_x2_0

# opcode: sltiu ; op1:x10; dest:x24; op1val:0x00004000;  immval:3071
TEST_IMM_OP( sltiu, x24, x10, 0x0, 0x00004000, 3071, x2, 0, x5)

# opcode: sltiu ; op1:x11; dest:x3; op1val:0x00008000;  immval:32
TEST_IMM_OP( sltiu, x3, x11, 0x0, 0x00008000, 32, x2, 4, x5)

# opcode: sltiu ; op1:x29; dest:x28; op1val:0x00010000;  immval:1
TEST_IMM_OP( sltiu, x28, x29, 0x0, 0x00010000, 1, x2, 8, x5)

# opcode: sltiu ; op1:x3; dest:x1; op1val:0x00020000;  immval:4031
TEST_IMM_OP( sltiu, x1, x3, 0x0, 0x00020000, 4031, x2, 12, x5)

# opcode: sltiu ; op1:x4; dest:x9; op1val:0x00040000;  immval:7
TEST_IMM_OP( sltiu, x9, x4, 0x0, 0x00040000, 7, x2, 16, x5)

# opcode: sltiu ; op1:x9; dest:x0; op1val:0x00080000;  immval:4094
TEST_IMM_OP( sltiu, x0, x9, 0x0, 0x00080000, 4094, x2, 20, x5)

# opcode: sltiu ; op1:x27; dest:x17; op1val:0x00100000;  immval:2047
TEST_IMM_OP( sltiu, x17, x27, 0x0, 0x00100000, 2047, x2, 24, x5)

# opcode: sltiu ; op1:x13; dest:x19; op1val:0x00200000;  immval:3071
TEST_IMM_OP( sltiu, x19, x13, 0x0, 0x00200000, 3071, x2, 28, x5)

# opcode: sltiu ; op1:x20; dest:x16; op1val:0x00400000;  immval:18
TEST_IMM_OP( sltiu, x16, x20, 0x0, 0x00400000, 18, x2, 32, x5)

# opcode: sltiu ; op1:x25; dest:x18; op1val:0x00800000;  immval:2730
TEST_IMM_OP( sltiu, x18, x25, 0x0, 0x00800000, 2730, x2, 36, x5)

# opcode: sltiu ; op1:x15; dest:x7; op1val:0x01000000;  immval:12
TEST_IMM_OP( sltiu, x7, x15, 0x0, 0x01000000, 12, x2, 40, x5)

# opcode: sltiu ; op1:x8; dest:x10; op1val:0x02000000;  immval:4031
TEST_IMM_OP( sltiu, x10, x8, 0x0, 0x02000000, 4031, x2, 44, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x04000000;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x04000000, 4093, x2, 48, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x08000000;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x08000000, 2, x2, 52, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x10000000;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x10000000, 4091, x2, 56, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x20000000;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x20000000, 3839, x2, 60, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x40000000;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x40000000, 512, x2, 64, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffe, 512, x2, 68, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffd, 4087, x2, 72, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffb, 64, x2, 76, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffff7, 0, x2, 80, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffef;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffef, 256, x2, 84, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffdf, 10, x2, 88, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffbf, 0, x2, 92, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfbffffff, 10, x2, 96, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xf7ffffff, 4087, x2, 100, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xefffffff;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xefffffff, 4095, x2, 104, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xdfffffff, 3839, x2, 108, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xbfffffff, 3967, x2, 112, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x7fffffff;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x7fffffff, 4063, x2, 116, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xaaaaaaaa, 4091, x2, 120, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000e;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000e, 4, x2, 124, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00400000;  immval:1024
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00400000, 1024, x2, 128, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000f;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x0000000f, 2048, x2, 132, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000e;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x0000000e, 4079, x2, 136, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x02000000;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x02000000, 3583, x2, 140, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00800000;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00800000, 1365, x2, 144, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffff7f, 4087, x2, 148, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffeff, 4087, x2, 152, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffdff, 9, x2, 156, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffbff, 4, x2, 160, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffff7ff, 13, x2, 164, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffefff;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffefff, 4063, x2, 168, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffdfff, 512, x2, 172, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffbfff, 3, x2, 176, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffff7fff, 18, x2, 180, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffeffff, 32, x2, 184, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffdffff, 4063, x2, 188, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffbffff, 18, x2, 192, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfff7ffff, 14, x2, 196, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffefffff;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffefffff, 4091, x2, 200, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffdfffff, 6, x2, 204, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffbfffff, 4091, x2, 208, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:1
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xff7fffff, 1, x2, 212, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfeffffff, 6, x2, 216, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00001000;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00001000, 4091, x2, 220, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x80000000;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x80000000, 0, x2, 224, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00080000;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00080000, 4094, x2, 228, x5)
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
    .fill 20*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 58*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
