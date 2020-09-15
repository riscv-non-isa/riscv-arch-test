
#This assembly file tests the c.bnez instruction of the RISC-V C extension for the cbnez covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cbnez)

la x1,signature_x1_1

#opcode: c.bnez; op1:x13; op1val:0x0000000000040000; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x13, 0x0000000000040000, 10, 3f, x1, 0)

#opcode: c.bnez; op1:x8; op1val:0xfffffffffffffbff; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x8, 0xfffffffffffffbff, 8, 3f, x1, 8)

#opcode: c.bnez; op1:x12; op1val:0x0000000000000000; immval: 32
TEST_CBRANCH_OP(c.bnez, x2, x12, 0x0000000000000000, 32, 3f, x1, 16)

#opcode: c.bnez; op1:x9; op1val:0x0000000000000400; immval: 20
TEST_CBRANCH_OP(c.bnez, x2, x9, 0x0000000000000400, 20, 1b, x1, 24)

#opcode: c.bnez; op1:x14; op1val:0xffffdfffffffffff; immval: 20
TEST_CBRANCH_OP(c.bnez, x2, x14, 0xffffdfffffffffff, 20, 1b, x1, 32)

#opcode: c.bnez; op1:x15; op1val:0x0000000000000000; immval: 6
TEST_CBRANCH_OP(c.bnez, x2, x15, 0x0000000000000000, 6, 1b, x1, 40)

#opcode: c.bnez; op1:x10; op1val:0x8000000000000000; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x8000000000000000, 12, 3f, x1, 48)

#opcode: c.bnez; op1:x11; op1val:0x7fffffffffffffff; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x11, 0x7fffffffffffffff, 170, 3f, x1, 56)

#opcode: c.bnez; op1:x10; op1val:0x0000000000000001; immval: 130
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000000001, 130, 1b, x1, 64)

#opcode: c.bnez; op1:x10; op1val:0x0000000000000002; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000000002, 18, 3f, x1, 72)

#opcode: c.bnez; op1:x10; op1val:0x0000000000000004; immval: 126
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000000004, 126, 3f, x1, 80)

#opcode: c.bnez; op1:x10; op1val:0x0000000000000008; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000000008, 170, 3f, x1, 88)

#opcode: c.bnez; op1:x10; op1val:0x0000000000000010; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000000010, 12, 3f, x1, 96)

#opcode: c.bnez; op1:x10; op1val:0x0000000000000020; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000000020, 10, 3f, x1, 104)

#opcode: c.bnez; op1:x10; op1val:0x0000000000000040; immval: 34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000000040, 34, 1b, x1, 112)

#opcode: c.bnez; op1:x10; op1val:0x0000000000000080; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000000080, 14, 1b, x1, 120)

#opcode: c.bnez; op1:x10; op1val:0x0000000000000100; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000000100, 14, 1b, x1, 128)

#opcode: c.bnez; op1:x10; op1val:0x0000000000000200; immval: 20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000000200, 20, 1b, x1, 136)

#opcode: c.bnez; op1:x10; op1val:0x0000000000000800; immval: 20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000000800, 20, 1b, x1, 144)

#opcode: c.bnez; op1:x10; op1val:0x0000000000001000; immval: 16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000001000, 16, 3f, x1, 152)

#opcode: c.bnez; op1:x10; op1val:0x0000000000002000; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000002000, 12, 3f, x1, 160)

#opcode: c.bnez; op1:x10; op1val:0x0000000000004000; immval: 126
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000004000, 126, 3f, x1, 168)

#opcode: c.bnez; op1:x10; op1val:0x0000000000008000; immval: 6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000008000, 6, 3f, x1, 176)

#opcode: c.bnez; op1:x10; op1val:0x0000000000010000; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000010000, 14, 1b, x1, 184)

#opcode: c.bnez; op1:x10; op1val:0x0000000000020000; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000020000, 8, 3f, x1, 192)

#opcode: c.bnez; op1:x10; op1val:0x0000000000080000; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000080000, 10, 3f, x1, 200)

#opcode: c.bnez; op1:x10; op1val:0x0000000000100000; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000100000, 10, 1b, x1, 208)

#opcode: c.bnez; op1:x10; op1val:0x0000000000200000; immval: 20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000200000, 20, 1b, x1, 216)

#opcode: c.bnez; op1:x10; op1val:0x0000000000400000; immval: 20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000400000, 20, 1b, x1, 224)

#opcode: c.bnez; op1:x10; op1val:0x0000000000800000; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000000800000, 10, 3f, x1, 232)

#opcode: c.bnez; op1:x10; op1val:0x0000000001000000; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000001000000, 170, 3f, x1, 240)

#opcode: c.bnez; op1:x10; op1val:0x0000000002000000; immval: 34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000002000000, 34, 1b, x1, 248)

#opcode: c.bnez; op1:x10; op1val:0x0000000004000000; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000004000000, 170, 3f, x1, 256)

#opcode: c.bnez; op1:x10; op1val:0x0000000008000000; immval: 16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000008000000, 16, 3f, x1, 264)

#opcode: c.bnez; op1:x10; op1val:0x0000000010000000; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000010000000, 4, 3f, x1, 272)

#opcode: c.bnez; op1:x10; op1val:0x0000000020000000; immval: 32
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000020000000, 32, 3f, x1, 280)

#opcode: c.bnez; op1:x10; op1val:0x0000000040000000; immval: 34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000040000000, 34, 1b, x1, 288)

#opcode: c.bnez; op1:x10; op1val:0x0000000080000000; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000080000000, 8, 3f, x1, 296)

#opcode: c.bnez; op1:x10; op1val:0x0000000100000000; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000100000000, 14, 1b, x1, 304)

#opcode: c.bnez; op1:x10; op1val:0x0000000200000000; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000200000000, 8, 3f, x1, 312)

#opcode: c.bnez; op1:x10; op1val:0x0000000400000000; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000400000000, 4, 1b, x1, 320)

#opcode: c.bnez; op1:x10; op1val:0x0000000800000000; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000000800000000, 14, 1b, x1, 328)

#opcode: c.bnez; op1:x10; op1val:0x0000001000000000; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000001000000000, 8, 3f, x1, 336)

#opcode: c.bnez; op1:x10; op1val:0x0000002000000000; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000002000000000, 18, 1b, x1, 344)

#opcode: c.bnez; op1:x10; op1val:0x0000004000000000; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000004000000000, 12, 1b, x1, 352)

#opcode: c.bnez; op1:x10; op1val:0x0000008000000000; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000008000000000, 10, 1b, x1, 360)

#opcode: c.bnez; op1:x10; op1val:0x0000010000000000; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000010000000000, 14, 3f, x1, 368)

#opcode: c.bnez; op1:x10; op1val:0x0000020000000000; immval: 34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000020000000000, 34, 1b, x1, 376)

#opcode: c.bnez; op1:x10; op1val:0x0000040000000000; immval: 16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000040000000000, 16, 1b, x1, 384)

#opcode: c.bnez; op1:x10; op1val:0x0000080000000000; immval: 126
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000080000000000, 126, 3f, x1, 392)

#opcode: c.bnez; op1:x10; op1val:0x0000100000000000; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000100000000000, 14, 3f, x1, 400)

#opcode: c.bnez; op1:x10; op1val:0x0000200000000000; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000200000000000, 170, 3f, x1, 408)

#opcode: c.bnez; op1:x10; op1val:0x0000400000000000; immval: 126
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000400000000000, 126, 3f, x1, 416)

#opcode: c.bnez; op1:x10; op1val:0x0000800000000000; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0000800000000000, 4, 1b, x1, 424)

#opcode: c.bnez; op1:x10; op1val:0x0001000000000000; immval: 34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0001000000000000, 34, 1b, x1, 432)

#opcode: c.bnez; op1:x10; op1val:0x0002000000000000; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0002000000000000, 128, 3f, x1, 440)

#opcode: c.bnez; op1:x10; op1val:0x0004000000000000; immval: 126
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0004000000000000, 126, 3f, x1, 448)

#opcode: c.bnez; op1:x10; op1val:0x0008000000000000; immval: 172
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0008000000000000, 172, 1b, x1, 456)

#opcode: c.bnez; op1:x10; op1val:0x0010000000000000; immval: 66
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0010000000000000, 66, 1b, x1, 464)

#opcode: c.bnez; op1:x10; op1val:0x0020000000000000; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0020000000000000, 8, 1b, x1, 472)

#opcode: c.bnez; op1:x10; op1val:0x0040000000000000; immval: 130
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0040000000000000, 130, 1b, x1, 480)

#opcode: c.bnez; op1:x10; op1val:0x0080000000000000; immval: 126
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0080000000000000, 126, 3f, x1, 488)

#opcode: c.bnez; op1:x10; op1val:0x0100000000000000; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0100000000000000, 4, 3f, x1, 496)

#opcode: c.bnez; op1:x10; op1val:0x0200000000000000; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0200000000000000, 10, 1b, x1, 504)

#opcode: c.bnez; op1:x10; op1val:0x0400000000000000; immval: 16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0400000000000000, 16, 3f, x1, 512)

#opcode: c.bnez; op1:x10; op1val:0x0800000000000000; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x0800000000000000, 128, 1b, x1, 520)

#opcode: c.bnez; op1:x10; op1val:0x1000000000000000; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x1000000000000000, 12, 1b, x1, 528)

#opcode: c.bnez; op1:x10; op1val:0x2000000000000000; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x2000000000000000, 12, 1b, x1, 536)

#opcode: c.bnez; op1:x10; op1val:0x4000000000000000; immval: 16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x4000000000000000, 16, 3f, x1, 544)

#opcode: c.bnez; op1:x10; op1val:0xff7fffffffffffff; immval: 16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xff7fffffffffffff, 16, 1b, x1, 552)

#opcode: c.bnez; op1:x10; op1val:0xfeffffffffffffff; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfeffffffffffffff, 12, 3f, x1, 560)

#opcode: c.bnez; op1:x10; op1val:0xfdffffffffffffff; immval: 6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfdffffffffffffff, 6, 3f, x1, 568)

#opcode: c.bnez; op1:x10; op1val:0xfbffffffffffffff; immval: 32
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfbffffffffffffff, 32, 3f, x1, 576)

#opcode: c.bnez; op1:x10; op1val:0xf7ffffffffffffff; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xf7ffffffffffffff, 8, 1b, x1, 584)

#opcode: c.bnez; op1:x10; op1val:0xefffffffffffffff; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xefffffffffffffff, 128, 1b, x1, 592)

#opcode: c.bnez; op1:x10; op1val:0xdfffffffffffffff; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xdfffffffffffffff, 10, 3f, x1, 600)

#opcode: c.bnez; op1:x10; op1val:0xbfffffffffffffff; immval: 6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xbfffffffffffffff, 6, 3f, x1, 608)

#opcode: c.bnez; op1:x10; op1val:0x5555555555555555; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x5555555555555555, 18, 1b, x1, 616)

#opcode: c.bnez; op1:x10; op1val:0xaaaaaaaaaaaaaaaa; immval: 20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xaaaaaaaaaaaaaaaa, 20, 1b, x1, 624)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffffffffe; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffffffffe, 170, 3f, x1, 632)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffffffffd; immval: 172
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffffffffd, 172, 1b, x1, 640)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffffffffb; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffffffffb, 18, 1b, x1, 648)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffffffff7; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffffffff7, 18, 1b, x1, 656)

#opcode: c.bnez; op1:x10; op1val:0xffffffffffffffef; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffffffffef, 12, 3f, x1, 664)

#opcode: c.bnez; op1:x10; op1val:0xffffffffffffffdf; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffffffffdf, 8, 3f, x1, 672)

#opcode: c.bnez; op1:x10; op1val:0xffffffffffffffbf; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffffffffbf, 12, 1b, x1, 680)

#opcode: c.bnez; op1:x10; op1val:0xffffffffffffff7f; immval: 126
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffffffff7f, 126, 3f, x1, 688)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffffffeff; immval: 126
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffffffeff, 126, 3f, x1, 696)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffffffdff; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffffffdff, 18, 1b, x1, 704)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffffff7ff; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffffff7ff, 14, 3f, x1, 712)

#opcode: c.bnez; op1:x10; op1val:0xffffffffffffefff; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffffffefff, 128, 1b, x1, 720)

#opcode: c.bnez; op1:x10; op1val:0xffffffffffffdfff; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffffffdfff, 12, 3f, x1, 728)

#opcode: c.bnez; op1:x10; op1val:0xffffffffffffbfff; immval: 20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffffffbfff, 20, 1b, x1, 736)

#opcode: c.bnez; op1:x10; op1val:0xffffffffffff7fff; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffffff7fff, 18, 3f, x1, 744)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffffeffff; immval: 32
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffffeffff, 32, 3f, x1, 752)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffffdffff; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffffdffff, 128, 1b, x1, 760)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffffbffff; immval: 126
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffffbffff, 126, 3f, x1, 768)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffff7ffff; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffff7ffff, 10, 1b, x1, 776)

#opcode: c.bnez; op1:x10; op1val:0xffffffffffefffff; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffffefffff, 14, 1b, x1, 784)

#opcode: c.bnez; op1:x10; op1val:0xffffffffffdfffff; immval: 32
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffffdfffff, 32, 3f, x1, 792)

#opcode: c.bnez; op1:x10; op1val:0xffffffffffbfffff; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffffbfffff, 10, 1b, x1, 800)

#opcode: c.bnez; op1:x10; op1val:0xffffffffff7fffff; immval: 66
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffff7fffff, 66, 1b, x1, 808)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffeffffff; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffeffffff, 128, 1b, x1, 816)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffdffffff; immval: 172
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffdffffff, 172, 1b, x1, 824)

#opcode: c.bnez; op1:x10; op1val:0xfffffffffbffffff; immval: 34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffffbffffff, 34, 1b, x1, 832)

#opcode: c.bnez; op1:x10; op1val:0xfffffffff7ffffff; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffff7ffffff, 12, 3f, x1, 840)

#opcode: c.bnez; op1:x10; op1val:0xffffffffefffffff; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffefffffff, 170, 3f, x1, 848)

#opcode: c.bnez; op1:x10; op1val:0xffffffffdfffffff; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffdfffffff, 128, 3f, x1, 856)

#opcode: c.bnez; op1:x10; op1val:0xffffffffbfffffff; immval: 6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffffbfffffff, 6, 1b, x1, 864)

#opcode: c.bnez; op1:x10; op1val:0xffffffff7fffffff; immval: 64
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffff7fffffff, 64, 3f, x1, 872)

#opcode: c.bnez; op1:x10; op1val:0xfffffffeffffffff; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffeffffffff, 4, 3f, x1, 880)

#opcode: c.bnez; op1:x10; op1val:0xfffffffdffffffff; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffdffffffff, 8, 1b, x1, 888)

#opcode: c.bnez; op1:x10; op1val:0xfffffffbffffffff; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffbffffffff, 12, 1b, x1, 896)

#opcode: c.bnez; op1:x10; op1val:0xfffffff7ffffffff; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffff7ffffffff, 10, 3f, x1, 904)

#opcode: c.bnez; op1:x10; op1val:0xffffffefffffffff; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffefffffffff, 8, 3f, x1, 912)

#opcode: c.bnez; op1:x10; op1val:0xffffffdfffffffff; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffdfffffffff, 14, 1b, x1, 920)

#opcode: c.bnez; op1:x10; op1val:0xffffffbfffffffff; immval: 16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffbfffffffff, 16, 1b, x1, 928)

#opcode: c.bnez; op1:x10; op1val:0xffffff7fffffffff; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffff7fffffffff, 4, 1b, x1, 936)

#opcode: c.bnez; op1:x10; op1val:0xfffffeffffffffff; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffeffffffffff, 12, 1b, x1, 944)

#opcode: c.bnez; op1:x10; op1val:0xfffffdffffffffff; immval: 34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffdffffffffff, 34, 1b, x1, 952)

#opcode: c.bnez; op1:x10; op1val:0xfffffbffffffffff; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffbffffffffff, 8, 3f, x1, 960)

#opcode: c.bnez; op1:x10; op1val:0xfffff7ffffffffff; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffff7ffffffffff, 8, 3f, x1, 968)

#opcode: c.bnez; op1:x10; op1val:0xffffefffffffffff; immval: 34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffefffffffffff, 34, 1b, x1, 976)

#opcode: c.bnez; op1:x10; op1val:0xffffbfffffffffff; immval: 34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffbfffffffffff, 34, 1b, x1, 984)

#opcode: c.bnez; op1:x10; op1val:0xffff7fffffffffff; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffff7fffffffffff, 10, 1b, x1, 992)

#opcode: c.bnez; op1:x10; op1val:0xfffeffffffffffff; immval: 16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffeffffffffffff, 16, 3f, x1, 1000)

#opcode: c.bnez; op1:x10; op1val:0xfffdffffffffffff; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffdffffffffffff, 8, 3f, x1, 1008)

#opcode: c.bnez; op1:x10; op1val:0xfffbffffffffffff; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffbffffffffffff, 18, 1b, x1, 1016)

#opcode: c.bnez; op1:x10; op1val:0xfff7ffffffffffff; immval: 130
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfff7ffffffffffff, 130, 1b, x1, 1024)

#opcode: c.bnez; op1:x10; op1val:0xffefffffffffffff; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffefffffffffffff, 12, 1b, x1, 1032)

#opcode: c.bnez; op1:x10; op1val:0xffdfffffffffffff; immval: 64
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffdfffffffffffff, 64, 3f, x1, 1040)

#opcode: c.bnez; op1:x10; op1val:0xffbfffffffffffff; immval: 6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffbfffffffffffff, 6, 1b, x1, 1048)
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
    .fill 132*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
