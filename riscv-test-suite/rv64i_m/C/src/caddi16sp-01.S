
#This assembly file tests the c.addi16sp instruction of the RISC-V C extension for the caddi16sp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi16sp)

la x1,signature_x1_1

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000100; immval:-512
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000100, -512, x1, 0, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x7fffffffffffffff; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x7fffffffffffffff, 496, x1, 8, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x8000000000000000; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x8000000000000000, -272, x1, 16, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000000; immval:80
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000000, 80, x1, 24, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000001; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000001, 496, x1, 32, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000040; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000040, 64, x1, 40, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffff7ffff; immval:144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffff7ffff, 144, x1, 48, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000400000000000; immval:16
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000400000000000, 16, x1, 56, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000000; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000000, 32, x1, 64, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000007; immval:128
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000007, 128, x1, 72, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffffbfffff; immval:256
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffffbfffff, 256, x1, 80, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000020; immval:-32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000020, -32, x1, 88, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xaaaaaaaaaaaaaaaa; immval:-48
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, -48, x1, 96, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffff7ffff; immval:-80
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffff7ffff, -80, x1, 104, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0800000000000000; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0800000000000000, -144, x1, 112, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffdfffffffffff; immval:336
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffdfffffffffff, 336, x1, 120, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000100000; immval:-352
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000100000, -352, x1, 128, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000002; immval:-256
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000002, -256, x1, 136, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000004; immval:-16
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000004, -16, x1, 144, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000008; immval:96
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000008, 96, x1, 152, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000010; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000010, 64, x1, 160, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000080; immval:-64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000080, -64, x1, 168, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000200; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000200, -272, x1, 176, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000400; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000400, 32, x1, 184, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000000800; immval:112
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000000800, 112, x1, 192, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000001000; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000001000, 32, x1, 200, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000002000; immval:336
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000002000, 336, x1, 208, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000004000; immval:80
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000004000, 80, x1, 216, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000008000; immval:336
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000008000, 336, x1, 224, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000010000; immval:-128
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000010000, -128, x1, 232, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000020000; immval:336
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000020000, 336, x1, 240, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000040000; immval:144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000040000, 144, x1, 248, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000080000; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000080000, 32, x1, 256, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000200000; immval:-48
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000200000, -48, x1, 264, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000400000; immval:336
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000400000, 336, x1, 272, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000000800000; immval:-112
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000000800000, -112, x1, 280, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000001000000; immval:-128
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000001000000, -128, x1, 288, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000002000000; immval:336
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000002000000, 336, x1, 296, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000004000000; immval:80
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000004000000, 80, x1, 304, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000008000000; immval:80
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000008000000, 80, x1, 312, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000010000000; immval:256
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000010000000, 256, x1, 320, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000020000000; immval:-64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000020000000, -64, x1, 328, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000040000000; immval:-64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000040000000, -64, x1, 336, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000080000000; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000080000000, -272, x1, 344, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000100000000; immval:-80
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000100000000, -80, x1, 352, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000200000000; immval:144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000200000000, 144, x1, 360, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000400000000; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000400000000, 64, x1, 368, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000000800000000; immval:-512
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000000800000000, -512, x1, 376, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000001000000000; immval:80
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000001000000000, 80, x1, 384, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000002000000000; immval:128
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000002000000000, 128, x1, 392, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000004000000000; immval:256
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000004000000000, 256, x1, 400, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000008000000000; immval:240
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000008000000000, 240, x1, 408, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000010000000000; immval:112
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000010000000000, 112, x1, 416, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000020000000000; immval:48
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000020000000000, 48, x1, 424, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000040000000000; immval:-512
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000040000000000, -512, x1, 432, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000080000000000; immval:-32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000080000000000, -32, x1, 440, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000100000000000; immval:-160
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000100000000000, -160, x1, 448, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000200000000000; immval:112
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000200000000000, 112, x1, 456, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0000800000000000; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0000800000000000, 32, x1, 464, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0001000000000000; immval:-352
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0001000000000000, -352, x1, 472, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0002000000000000; immval:144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0002000000000000, 144, x1, 480, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0004000000000000; immval:-32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0004000000000000, -32, x1, 488, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0008000000000000; immval:-64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0008000000000000, -64, x1, 496, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0010000000000000; immval:-160
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0010000000000000, -160, x1, 504, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0020000000000000; immval:144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0020000000000000, 144, x1, 512, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0040000000000000; immval:-32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0040000000000000, -32, x1, 520, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0080000000000000; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0080000000000000, 32, x1, 528, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0100000000000000; immval:-64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0100000000000000, -64, x1, 536, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0200000000000000; immval:-80
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0200000000000000, -80, x1, 544, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x0400000000000000; immval:144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x0400000000000000, 144, x1, 552, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x1000000000000000; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x1000000000000000, 64, x1, 560, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffdffffffffff; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffdffffffffff, -144, x1, 568, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffbffffffffff; immval:-112
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffbffffffffff, -112, x1, 576, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffff7ffffffffff; immval:256
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffff7ffffffffff, 256, x1, 584, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffefffffffffff; immval:-512
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffefffffffffff, -512, x1, 592, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffbfffffffffff; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffbfffffffffff, -144, x1, 600, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffff7fffffffffff; immval:16
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffff7fffffffffff, 16, x1, 608, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffeffffffffffff; immval:256
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffeffffffffffff, 256, x1, 616, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffdffffffffffff; immval:112
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffdffffffffffff, 112, x1, 624, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffbffffffffffff; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffbffffffffffff, 496, x1, 632, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfff7ffffffffffff; immval:48
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfff7ffffffffffff, 48, x1, 640, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffefffffffffffff; immval:48
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffefffffffffffff, 48, x1, 648, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffdfffffffffffff; immval:-352
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffdfffffffffffff, -352, x1, 656, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffbfffffffffffff; immval:-48
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffbfffffffffffff, -48, x1, 664, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xff7fffffffffffff; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xff7fffffffffffff, -272, x1, 672, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfeffffffffffffff; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfeffffffffffffff, 496, x1, 680, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfdffffffffffffff; immval:-48
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfdffffffffffffff, -48, x1, 688, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfbffffffffffffff; immval:-32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfbffffffffffffff, -32, x1, 696, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xf7ffffffffffffff; immval:-512
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xf7ffffffffffffff, -512, x1, 704, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xefffffffffffffff; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xefffffffffffffff, -272, x1, 712, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xdfffffffffffffff; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xdfffffffffffffff, -144, x1, 720, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xbfffffffffffffff; immval:-256
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xbfffffffffffffff, -256, x1, 728, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x5555555555555555; immval:48
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x5555555555555555, 48, x1, 736, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x2000000000000000; immval:240
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x2000000000000000, 240, x1, 744, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x4000000000000000; immval:16
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0x4000000000000000, 16, x1, 752, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffffffffe; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffffffffe, -272, x1, 760, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffffffffd; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffffffffd, 496, x1, 768, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffffffffb; immval:144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffffffffb, 144, x1, 776, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffffffff7; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffffffff7, 32, x1, 784, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffffffffef; immval:-352
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffffffffef, -352, x1, 792, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffffffffdf; immval:80
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffffffffdf, 80, x1, 800, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffffffffbf; immval:48
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffffffffbf, 48, x1, 808, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffffffff7f; immval:240
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffffffff7f, 240, x1, 816, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffffffeff; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffffffeff, -272, x1, 824, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffffffdff; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffffffdff, -144, x1, 832, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffffffbff; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffffffbff, -272, x1, 840, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffffff7ff; immval:-48
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffffff7ff, -48, x1, 848, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffffffefff; immval:336
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffffffefff, 336, x1, 856, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffffffdfff; immval:-64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffffffdfff, -64, x1, 864, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffffffbfff; immval:112
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffffffbfff, 112, x1, 872, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffffff7fff; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffffff7fff, 496, x1, 880, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffffeffff; immval:336
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffffeffff, 336, x1, 888, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffffdffff; immval:-64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffffdffff, -64, x1, 896, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffffbffff; immval:256
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffffbffff, 256, x1, 904, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffffefffff; immval:-352
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffffefffff, -352, x1, 912, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffffdfffff; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffffdfffff, -272, x1, 920, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffff7fffff; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffff7fffff, -144, x1, 928, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffeffffff; immval:-80
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffeffffff, -80, x1, 936, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffdffffff; immval:96
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffdffffff, 96, x1, 944, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffffbffffff; immval:256
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffffbffffff, 256, x1, 952, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffff7ffffff; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffff7ffffff, -144, x1, 960, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffefffffff; immval:-16
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffefffffff, -16, x1, 968, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffdfffffff; immval:-96
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffdfffffff, -96, x1, 976, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffffbfffffff; immval:48
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffffbfffffff, 48, x1, 984, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffff7fffffff; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffff7fffffff, 64, x1, 992, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffeffffffff; immval:-16
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffeffffffff, -16, x1, 1000, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffdffffffff; immval:-160
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffdffffffff, -160, x1, 1008, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffbffffffff; immval:-352
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffffbffffffff, -352, x1, 1016, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffff7ffffffff; immval:-80
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffff7ffffffff, -80, x1, 1024, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffefffffffff; immval:240
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffefffffffff, 240, x1, 1032, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffdfffffffff; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffdfffffffff, 64, x1, 1040, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffbfffffffff; immval:-16
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffffbfffffffff, -16, x1, 1048, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffff7fffffffff; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xffffff7fffffffff, 32, x1, 1056, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffeffffffffff; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x0000000000000000, 0xfffffeffffffffff, -144, x1, 1064, x3)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x1_1:
    .fill 134*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
