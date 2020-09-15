
#This assembly file tests the sltiu instruction of the RISC-V I extension for the sltiu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltiu)

la x2,signature_x2_1

# opcode: sltiu ; op1:x30; dest:x30; op1val:0x000000000000000c;  immval:12
TEST_IMM_OP( sltiu, x30, x30, 0x0, 0x000000000000000c, 12, x2, 0, x7)

# opcode: sltiu ; op1:x31; dest:x14; op1val:0x0000000000000200;  immval:4031
TEST_IMM_OP( sltiu, x14, x31, 0x1, 0x0000000000000200, 4031, x2, 8, x7)

# opcode: sltiu ; op1:x20; dest:x24; op1val:0x0000000000000000;  immval:4063
TEST_IMM_OP( sltiu, x24, x20, 0x1, 0x0000000000000000, 4063, x2, 16, x7)

# opcode: sltiu ; op1:x27; dest:x18; op1val:0xffffffffffffffff;  immval:6
TEST_IMM_OP( sltiu, x18, x27, 0x0, 0xffffffffffffffff, 6, x2, 24, x7)

# opcode: sltiu ; op1:x12; dest:x22; op1val:0x0000000000000001;  immval:16
TEST_IMM_OP( sltiu, x22, x12, 0x1, 0x0000000000000001, 16, x2, 32, x7)

# opcode: sltiu ; op1:x1; dest:x15; op1val:0xbfffffffffffffff;  immval:0
TEST_IMM_OP( sltiu, x15, x1, 0x0, 0xbfffffffffffffff, 0, x2, 40, x7)

# opcode: sltiu ; op1:x25; dest:x21; op1val:0x0000000080000000;  immval:4095
TEST_IMM_OP( sltiu, x21, x25, 0x0, 0x0000000080000000, 4095, x2, 48, x7)

# opcode: sltiu ; op1:x15; dest:x25; op1val:0x0000040000000000;  immval:1
TEST_IMM_OP( sltiu, x25, x15, 0x0, 0x0000040000000000, 1, x2, 56, x7)

# opcode: sltiu ; op1:x18; dest:x0; op1val:0x0000000000000002;  immval:4079
TEST_IMM_OP( sltiu, x0, x18, 0x1, 0x0000000000000002, 4079, x2, 64, x7)

# opcode: sltiu ; op1:x17; dest:x26; op1val:0x0000000000000004;  immval:15
TEST_IMM_OP( sltiu, x26, x17, 0x1, 0x0000000000000004, 15, x2, 72, x7)

# opcode: sltiu ; op1:x21; dest:x8; op1val:0x0000000000000008;  immval:4031
TEST_IMM_OP( sltiu, x8, x21, 0x1, 0x0000000000000008, 4031, x2, 80, x7)

# opcode: sltiu ; op1:x19; dest:x13; op1val:0x0000000000000010;  immval:1
TEST_IMM_OP( sltiu, x13, x19, 0x0, 0x0000000000000010, 1, x2, 88, x7)

# opcode: sltiu ; op1:x6; dest:x4; op1val:0x0000000000000020;  immval:11
TEST_IMM_OP( sltiu, x4, x6, 0x0, 0x0000000000000020, 11, x2, 96, x7)

# opcode: sltiu ; op1:x3; dest:x5; op1val:0x0000000000000040;  immval:256
TEST_IMM_OP( sltiu, x5, x3, 0x1, 0x0000000000000040, 256, x2, 104, x7)

# opcode: sltiu ; op1:x11; dest:x27; op1val:0x0000000000000080;  immval:2047
TEST_IMM_OP( sltiu, x27, x11, 0x1, 0x0000000000000080, 2047, x2, 112, x7)

# opcode: sltiu ; op1:x23; dest:x10; op1val:0x0000000000000100;  immval:4093
TEST_IMM_OP( sltiu, x10, x23, 0x1, 0x0000000000000100, 4093, x2, 120, x7)

# opcode: sltiu ; op1:x24; dest:x19; op1val:0x0000000000000400;  immval:2730
TEST_IMM_OP( sltiu, x19, x24, 0x1, 0x0000000000000400, 2730, x2, 128, x7)

# opcode: sltiu ; op1:x8; dest:x6; op1val:0x0000000000000800;  immval:2730
TEST_IMM_OP( sltiu, x6, x8, 0x1, 0x0000000000000800, 2730, x2, 136, x7)

# opcode: sltiu ; op1:x5; dest:x29; op1val:0x0000000000001000;  immval:4094
TEST_IMM_OP( sltiu, x29, x5, 0x0, 0x0000000000001000, 4094, x2, 144, x7)

# opcode: sltiu ; op1:x26; dest:x1; op1val:0x0000000000002000;  immval:2
TEST_IMM_OP( sltiu, x1, x26, 0x0, 0x0000000000002000, 2, x2, 152, x7)

# opcode: sltiu ; op1:x22; dest:x17; op1val:0x0000000000004000;  immval:17
TEST_IMM_OP( sltiu, x17, x22, 0x0, 0x0000000000004000, 17, x2, 160, x7)

# opcode: sltiu ; op1:x14; dest:x9; op1val:0x0000000000008000;  immval:4063
TEST_IMM_OP( sltiu, x9, x14, 0x0, 0x0000000000008000, 4063, x2, 168, x7)

# opcode: sltiu ; op1:x28; dest:x31; op1val:0x0000000000010000;  immval:3839
TEST_IMM_OP( sltiu, x31, x28, 0x0, 0x0000000000010000, 3839, x2, 176, x5)
la x1,signature_x1_0

# opcode: sltiu ; op1:x7; dest:x2; op1val:0x0000000000020000;  immval:4079
TEST_IMM_OP( sltiu, x2, x7, 0x0, 0x0000000000020000, 4079, x1, 0, x5)

# opcode: sltiu ; op1:x29; dest:x23; op1val:0x0000000000040000;  immval:128
TEST_IMM_OP( sltiu, x23, x29, 0x0, 0x0000000000040000, 128, x1, 8, x5)

# opcode: sltiu ; op1:x9; dest:x11; op1val:0x0000000000080000;  immval:12
TEST_IMM_OP( sltiu, x11, x9, 0x0, 0x0000000000080000, 12, x1, 16, x5)

# opcode: sltiu ; op1:x2; dest:x12; op1val:0x0000000000100000;  immval:3967
TEST_IMM_OP( sltiu, x12, x2, 0x0, 0x0000000000100000, 3967, x1, 24, x5)

# opcode: sltiu ; op1:x13; dest:x7; op1val:0x0000000000200000;  immval:14
TEST_IMM_OP( sltiu, x7, x13, 0x0, 0x0000000000200000, 14, x1, 32, x5)

# opcode: sltiu ; op1:x0; dest:x16; op1val:0x0000000000400000;  immval:2730
TEST_IMM_OP( sltiu, x16, x0, 0x0, 0x0000000000400000, 2730, x1, 40, x5)

# opcode: sltiu ; op1:x4; dest:x28; op1val:0x0000000000800000;  immval:17
TEST_IMM_OP( sltiu, x28, x4, 0x0, 0x0000000000800000, 17, x1, 48, x5)

# opcode: sltiu ; op1:x16; dest:x20; op1val:0x0000000001000000;  immval:7
TEST_IMM_OP( sltiu, x20, x16, 0x0, 0x0000000001000000, 7, x1, 56, x5)

# opcode: sltiu ; op1:x10; dest:x3; op1val:0x0000000002000000;  immval:11
TEST_IMM_OP( sltiu, x3, x10, 0x0, 0x0000000002000000, 11, x1, 64, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000004000000, 18, x1, 72, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000008000000, 16, x1, 80, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000010000000, 3, x1, 88, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000020000000, 13, x1, 96, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000040000000, 3071, x1, 104, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000100000000, 2730, x1, 112, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000200000000, 4094, x1, 120, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000400000000, 2047, x1, 128, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000800000000, 2730, x1, 136, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000001000000000, 7, x1, 144, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000002000000000, 14, x1, 152, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:8
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000004000000000, 8, x1, 160, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000008000000000, 3967, x1, 168, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:15
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000010000000000, 15, x1, 176, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000020000000000, 3071, x1, 184, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000080000000000, 1365, x1, 192, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000100000000000, 9, x1, 200, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000200000000000, 4079, x1, 208, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000400000000000, 16, x1, 216, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000800000000000, 3839, x1, 224, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0001000000000000, 32, x1, 232, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:8
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0002000000000000, 8, x1, 240, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:1024
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0004000000000000, 1024, x1, 248, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0008000000000000, 3583, x1, 256, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:12
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0010000000000000, 12, x1, 264, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:12
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0020000000000000, 12, x1, 272, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0040000000000000, 3967, x1, 280, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0080000000000000, 256, x1, 288, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0100000000000000, 4031, x1, 296, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0200000000000000, 4079, x1, 304, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0400000000000000, 6, x1, 312, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0800000000000000, 4063, x1, 320, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x1000000000000000, 6, x1, 328, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x2000000000000000, 4087, x1, 336, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x4000000000000000, 7, x1, 344, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x8000000000000000;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x8000000000000000, 4063, x1, 352, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffffe, 512, x1, 360, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:128
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffffd, 128, x1, 368, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffffb, 13, x1, 376, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffff7, 0, x1, 384, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffef, 32, x1, 392, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffdf, 5, x1, 400, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfdffffffffffffff, 2730, x1, 408, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfbffffffffffffff, 32, x1, 416, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xf7ffffffffffffff, 6, x1, 424, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xefffffffffffffff, 2047, x1, 432, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:1
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xdfffffffffffffff, 1, x1, 440, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x7fffffffffffffff;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x7fffffffffffffff, 4091, x1, 448, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x5555555555555555, 4094, x1, 456, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xaaaaaaaaaaaaaaaa, 4094, x1, 464, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffeffffffffff, 4, x1, 472, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfbffffffffffffff, 64, x1, 480, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000020000000, 2048, x1, 488, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffbf, 2, x1, 496, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffff7f, 4063, x1, 504, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffeff, 2730, x1, 512, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffdff, 1365, x1, 520, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffbff, 2, x1, 528, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffff7ff, 3071, x1, 536, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffefff, 256, x1, 544, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffdfff, 4063, x1, 552, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffbfff, 4079, x1, 560, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffff7fff, 64, x1, 568, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffeffff, 18, x1, 576, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:15
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffdffff, 15, x1, 584, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffbffff, 3839, x1, 592, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffff7ffff, 4063, x1, 600, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffefffff, 4095, x1, 608, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffdfffff, 512, x1, 616, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffbfffff, 13, x1, 624, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffff7fffff, 3583, x1, 632, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffeffffff, 3839, x1, 640, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffdffffff, 2047, x1, 648, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffbffffff, 9, x1, 656, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:1024
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffff7ffffff, 1024, x1, 664, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffefffffff, 4091, x1, 672, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffdfffffff, 5, x1, 680, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffbfffffff, 13, x1, 688, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffff7fffffff, 17, x1, 696, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffeffffffff, 5, x1, 704, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffdffffffff, 32, x1, 712, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffbffffffff, 64, x1, 720, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffff7ffffffff, 3839, x1, 728, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffefffffffff, 3583, x1, 736, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffdfffffffff, 18, x1, 744, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffbfffffffff, 17, x1, 752, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffff7fffffffff, 17, x1, 760, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffdffffffffff, 64, x1, 768, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffbffffffffff, 2047, x1, 776, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:15
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffff7ffffffffff, 15, x1, 784, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffefffffffffff, 4063, x1, 792, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffdfffffffffff, 4094, x1, 800, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffbfffffffffff, 256, x1, 808, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffff7fffffffffff, 14, x1, 816, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffeffffffffffff, 13, x1, 824, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffdffffffffffff, 4093, x1, 832, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffbffffffffffff, 4091, x1, 840, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfff7ffffffffffff, 4094, x1, 848, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffefffffffffffff, 3071, x1, 856, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffdfffffffffffff, 10, x1, 864, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffbfffffffffffff, 2048, x1, 872, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xff7fffffffffffff, 18, x1, 880, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfeffffffffffffff, 5, x1, 888, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x000000000000000c;  immval:12
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x000000000000000c, 12, x1, 896, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000000000002;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x0000000000000002, 4079, x1, 904, x5)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000000400000, 2730, x1, 912, x5)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x2_1:
    .fill 23*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 115*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
