
#This assembly file tests the sltiu instruction of the RISC-V I extension for the sltiu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltiu)

la x14,signature_x14_1

# opcode: sltiu ; op1:x3; dest:x3; op1val:0x0000000000000013;  immval:19
TEST_IMM_OP( sltiu, x3, x3, 0x0, 0x0000000000000013, 19, x14, 0, x20)

# opcode: sltiu ; op1:x17; dest:x7; op1val:0x2000000000000000;  immval:9
TEST_IMM_OP( sltiu, x7, x17, 0x0, 0x2000000000000000, 9, x14, 8, x20)

# opcode: sltiu ; op1:x21; dest:x16; op1val:0x0000000000000000;  immval:3071
TEST_IMM_OP( sltiu, x16, x21, 0x1, 0x0000000000000000, 3071, x14, 16, x20)

# opcode: sltiu ; op1:x28; dest:x19; op1val:0xffffffffffffffff;  immval:64
TEST_IMM_OP( sltiu, x19, x28, 0x0, 0xffffffffffffffff, 64, x14, 24, x20)

# opcode: sltiu ; op1:x18; dest:x12; op1val:0x0000000000000001;  immval:2
TEST_IMM_OP( sltiu, x12, x18, 0x1, 0x0000000000000001, 2, x14, 32, x20)

# opcode: sltiu ; op1:x11; dest:x9; op1val:0xffffffffffffdfff;  immval:0
TEST_IMM_OP( sltiu, x9, x11, 0x0, 0xffffffffffffdfff, 0, x14, 40, x20)

# opcode: sltiu ; op1:x8; dest:x1; op1val:0xffffffff7fffffff;  immval:4095
TEST_IMM_OP( sltiu, x1, x8, 0x0, 0xffffffff7fffffff, 4095, x14, 48, x20)

# opcode: sltiu ; op1:x31; dest:x30; op1val:0x0000000000000800;  immval:1
TEST_IMM_OP( sltiu, x30, x31, 0x0, 0x0000000000000800, 1, x14, 56, x20)

# opcode: sltiu ; op1:x12; dest:x8; op1val:0x0000000000000002;  immval:4094
TEST_IMM_OP( sltiu, x8, x12, 0x1, 0x0000000000000002, 4094, x14, 64, x20)

# opcode: sltiu ; op1:x13; dest:x28; op1val:0x0000000000000004;  immval:4095
TEST_IMM_OP( sltiu, x28, x13, 0x1, 0x0000000000000004, 4095, x14, 72, x20)

# opcode: sltiu ; op1:x30; dest:x17; op1val:0x0000000000000008;  immval:2
TEST_IMM_OP( sltiu, x17, x30, 0x0, 0x0000000000000008, 2, x14, 80, x20)

# opcode: sltiu ; op1:x29; dest:x24; op1val:0x0000000000000010;  immval:15
TEST_IMM_OP( sltiu, x24, x29, 0x0, 0x0000000000000010, 15, x14, 88, x20)

# opcode: sltiu ; op1:x22; dest:x10; op1val:0x0000000000000020;  immval:17
TEST_IMM_OP( sltiu, x10, x22, 0x0, 0x0000000000000020, 17, x14, 96, x20)

# opcode: sltiu ; op1:x7; dest:x26; op1val:0x0000000000000040;  immval:10
TEST_IMM_OP( sltiu, x26, x7, 0x0, 0x0000000000000040, 10, x14, 104, x20)

# opcode: sltiu ; op1:x16; dest:x11; op1val:0x0000000000000080;  immval:4063
TEST_IMM_OP( sltiu, x11, x16, 0x1, 0x0000000000000080, 4063, x14, 112, x20)

# opcode: sltiu ; op1:x6; dest:x22; op1val:0x0000000000000100;  immval:9
TEST_IMM_OP( sltiu, x22, x6, 0x0, 0x0000000000000100, 9, x14, 120, x20)

# opcode: sltiu ; op1:x5; dest:x0; op1val:0x0000000000000200;  immval:1365
TEST_IMM_OP( sltiu, x0, x5, 0x1, 0x0000000000000200, 1365, x14, 128, x20)

# opcode: sltiu ; op1:x2; dest:x29; op1val:0x0000000000000400;  immval:17
TEST_IMM_OP( sltiu, x29, x2, 0x0, 0x0000000000000400, 17, x14, 136, x20)

# opcode: sltiu ; op1:x26; dest:x31; op1val:0x0000000000001000;  immval:7
TEST_IMM_OP( sltiu, x31, x26, 0x0, 0x0000000000001000, 7, x14, 144, x20)

# opcode: sltiu ; op1:x10; dest:x2; op1val:0x0000000000002000;  immval:13
TEST_IMM_OP( sltiu, x2, x10, 0x0, 0x0000000000002000, 13, x14, 152, x20)

# opcode: sltiu ; op1:x1; dest:x21; op1val:0x0000000000004000;  immval:1
TEST_IMM_OP( sltiu, x21, x1, 0x0, 0x0000000000004000, 1, x14, 160, x20)

# opcode: sltiu ; op1:x15; dest:x4; op1val:0x0000000000008000;  immval:3839
TEST_IMM_OP( sltiu, x4, x15, 0x0, 0x0000000000008000, 3839, x14, 168, x20)

# opcode: sltiu ; op1:x25; dest:x18; op1val:0x0000000000010000;  immval:4087
TEST_IMM_OP( sltiu, x18, x25, 0x0, 0x0000000000010000, 4087, x14, 176, x20)

# opcode: sltiu ; op1:x0; dest:x27; op1val:0x0000000000020000;  immval:4091
TEST_IMM_OP( sltiu, x27, x0, 0x0, 0x0000000000020000, 4091, x14, 184, x2)
la x1,signature_x1_0

# opcode: sltiu ; op1:x4; dest:x25; op1val:0x0000000000040000;  immval:1365
TEST_IMM_OP( sltiu, x25, x4, 0x0, 0x0000000000040000, 1365, x1, 0, x2)

# opcode: sltiu ; op1:x14; dest:x5; op1val:0x0000000000080000;  immval:3839
TEST_IMM_OP( sltiu, x5, x14, 0x0, 0x0000000000080000, 3839, x1, 8, x2)

# opcode: sltiu ; op1:x27; dest:x14; op1val:0x0000000000100000;  immval:256
TEST_IMM_OP( sltiu, x14, x27, 0x0, 0x0000000000100000, 256, x1, 16, x2)

# opcode: sltiu ; op1:x20; dest:x6; op1val:0x0000000000200000;  immval:2048
TEST_IMM_OP( sltiu, x6, x20, 0x0, 0x0000000000200000, 2048, x1, 24, x2)

# opcode: sltiu ; op1:x24; dest:x15; op1val:0x0000000000400000;  immval:13
TEST_IMM_OP( sltiu, x15, x24, 0x0, 0x0000000000400000, 13, x1, 32, x2)

# opcode: sltiu ; op1:x19; dest:x20; op1val:0x0000000000800000;  immval:3071
TEST_IMM_OP( sltiu, x20, x19, 0x0, 0x0000000000800000, 3071, x1, 40, x2)

# opcode: sltiu ; op1:x9; dest:x23; op1val:0x0000000001000000;  immval:8
TEST_IMM_OP( sltiu, x23, x9, 0x0, 0x0000000001000000, 8, x1, 48, x2)

# opcode: sltiu ; op1:x23; dest:x13; op1val:0x0000000002000000;  immval:64
TEST_IMM_OP( sltiu, x13, x23, 0x0, 0x0000000002000000, 64, x1, 56, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000004000000, 4095, x1, 64, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:1024
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000008000000, 1024, x1, 72, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000010000000, 1365, x1, 80, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:128
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000020000000, 128, x1, 88, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000040000000, 3071, x1, 96, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000080000000, 4, x1, 104, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000100000000, 512, x1, 112, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000200000000, 2, x1, 120, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000400000000, 3, x1, 128, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000800000000, 256, x1, 136, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000001000000000, 10, x1, 144, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000002000000000, 13, x1, 152, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000004000000000, 3967, x1, 160, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000008000000000, 1365, x1, 168, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000010000000000, 18, x1, 176, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000020000000000, 4, x1, 184, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000040000000000, 4087, x1, 192, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000080000000000, 512, x1, 200, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000100000000000, 64, x1, 208, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000200000000000, 9, x1, 216, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000400000000000, 3839, x1, 224, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000800000000000, 13, x1, 232, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0001000000000000, 18, x1, 240, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0002000000000000, 4095, x1, 248, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0004000000000000, 4094, x1, 256, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0008000000000000, 3, x1, 264, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0010000000000000, 2048, x1, 272, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:1
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0020000000000000, 1, x1, 280, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0040000000000000, 2048, x1, 288, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0080000000000000, 4079, x1, 296, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:11
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0100000000000000, 11, x1, 304, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:12
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0200000000000000, 12, x1, 312, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0400000000000000, 1365, x1, 320, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0800000000000000, 5, x1, 328, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x1000000000000000, 4031, x1, 336, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x4000000000000000, 4063, x1, 344, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x8000000000000000;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x8000000000000000, 4094, x1, 352, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffffe, 1365, x1, 360, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffffd, 9, x1, 368, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffffb, 3839, x1, 376, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffff7, 2730, x1, 384, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffef, 4, x1, 392, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffdf, 18, x1, 400, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfdffffffffffffff, 4031, x1, 408, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfbffffffffffffff, 64, x1, 416, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xf7ffffffffffffff, 3967, x1, 424, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xefffffffffffffff, 9, x1, 432, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xdfffffffffffffff, 7, x1, 440, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:12
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xbfffffffffffffff, 12, x1, 448, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x7fffffffffffffff;  immval:8
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x7fffffffffffffff, 8, x1, 456, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x5555555555555555, 4087, x1, 464, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xaaaaaaaaaaaaaaaa, 9, x1, 472, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffefffffffffff, 16, x1, 480, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0001000000000000, 32, x1, 488, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffefffffffffff, 4093, x1, 496, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000000000002;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x0000000000000002, 3583, x1, 504, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000000008000, 2047, x1, 512, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffbf, 3, x1, 520, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffff7f, 4095, x1, 528, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffeff, 2048, x1, 536, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:15
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffdff, 15, x1, 544, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffbff, 6, x1, 552, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffff7ff, 10, x1, 560, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffefff, 3583, x1, 568, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffbfff, 4031, x1, 576, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffff7fff, 0, x1, 584, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffeffff, 32, x1, 592, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffdffff, 512, x1, 600, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffbffff, 256, x1, 608, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffff7ffff, 6, x1, 616, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffefffff, 14, x1, 624, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffdfffff, 0, x1, 632, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffbfffff, 3967, x1, 640, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffff7fffff, 4093, x1, 648, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffeffffff, 2, x1, 656, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffdffffff, 13, x1, 664, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:1024
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffbffffff, 1024, x1, 672, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffff7ffffff, 2047, x1, 680, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffefffffff, 4087, x1, 688, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffdfffffff, 18, x1, 696, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffbfffffff, 4, x1, 704, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:11
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffeffffffff, 11, x1, 712, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffdffffffff, 64, x1, 720, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:11
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffbffffffff, 11, x1, 728, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffff7ffffffff, 4087, x1, 736, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffefffffffff, 2, x1, 744, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffdfffffffff, 3, x1, 752, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffbfffffffff, 10, x1, 760, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffff7fffffffff, 1365, x1, 768, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:11
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffeffffffffff, 11, x1, 776, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffdffffffffff, 3967, x1, 784, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:11
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffbffffffffff, 11, x1, 792, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffff7ffffffffff, 4063, x1, 800, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffdfffffffffff, 2048, x1, 808, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffbfffffffffff, 64, x1, 816, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffff7fffffffffff, 3, x1, 824, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffeffffffffffff, 3583, x1, 832, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffdffffffffffff, 0, x1, 840, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffbffffffffffff, 2, x1, 848, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfff7ffffffffffff, 14, x1, 856, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffefffffffffffff, 0, x1, 864, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:11
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffdfffffffffffff, 11, x1, 872, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffbfffffffffffff, 3071, x1, 880, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xff7fffffffffffff, 3839, x1, 888, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfeffffffffffffff, 14, x1, 896, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000000000013;  immval:19
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000000000013, 19, x1, 904, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000000000200;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x0000000000000200, 1365, x1, 912, x2)

# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000000020000, 4091, x1, 920, x2)
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

signature_x14_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x14_1:
    .fill 24*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 116*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
