
#This assembly file tests the c.beqz instruction of the RISC-V C extension for the cbeqz covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cbeqz)

la x1,signature_x1_1

#opcode:c.beqz; op1:x14; op1val:0x0000000000000004; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x14, 0x0000000000000004, 8, 3f, x1, 0)

#opcode:c.beqz; op1:x13; op1val:0xfffbffffffffffff; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x13, 0xfffbffffffffffff, 6, 3f, x1, 8)

#opcode:c.beqz; op1:x8; op1val:0x0000000000000000; immval:64
TEST_CBRANCH_OP(c.beqz, x2, x8, 0x0000000000000000, 64, 3f, x1, 16)

#opcode:c.beqz; op1:x15; op1val:0x0000000000002000; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x15, 0x0000000000002000, 128, 1b, x1, 24)

#opcode:c.beqz; op1:x12; op1val:0xfffdffffffffffff; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x12, 0xfffdffffffffffff, 128, 1b, x1, 32)

#opcode:c.beqz; op1:x11; op1val:0x0000000000000000; immval:34
TEST_CBRANCH_OP(c.beqz, x2, x11, 0x0000000000000000, 34, 1b, x1, 40)

#opcode:c.beqz; op1:x10; op1val:0x8000000000000000; immval:20
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x8000000000000000, 20, 1b, x1, 48)

#opcode:c.beqz; op1:x9; op1val:0x7fffffffffffffff; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x9, 0x7fffffffffffffff, 18, 1b, x1, 56)

#opcode:c.beqz; op1:x10; op1val:0x0000000000000001; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000001, 12, 1b, x1, 64)

#opcode:c.beqz; op1:x10; op1val:0x0000000000000002; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000002, 12, 3f, x1, 72)

#opcode:c.beqz; op1:x10; op1val:0x0000000000000008; immval:64
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000008, 64, 3f, x1, 80)

#opcode:c.beqz; op1:x10; op1val:0x0000000000000010; immval:20
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000010, 20, 1b, x1, 88)

#opcode:c.beqz; op1:x10; op1val:0x0000000000000020; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000020, 12, 1b, x1, 96)

#opcode:c.beqz; op1:x10; op1val:0x0000000000000040; immval:172
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000040, 172, 1b, x1, 104)

#opcode:c.beqz; op1:x10; op1val:0x0000000000000080; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000080, 8, 1b, x1, 112)

#opcode:c.beqz; op1:x10; op1val:0x0000000000000100; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000100, 12, 3f, x1, 120)

#opcode:c.beqz; op1:x10; op1val:0x0000000000000200; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000200, 32, 3f, x1, 128)

#opcode:c.beqz; op1:x10; op1val:0x0000000000000400; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000400, 18, 3f, x1, 136)

#opcode:c.beqz; op1:x10; op1val:0x0000000000000800; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000800, 14, 1b, x1, 144)

#opcode:c.beqz; op1:x10; op1val:0x0000000000001000; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000001000, 16, 3f, x1, 152)

#opcode:c.beqz; op1:x10; op1val:0x0000000000004000; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000004000, 18, 1b, x1, 160)

#opcode:c.beqz; op1:x10; op1val:0x0000000000008000; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000008000, 128, 1b, x1, 168)

#opcode:c.beqz; op1:x10; op1val:0x0000000000010000; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000010000, 66, 1b, x1, 176)

#opcode:c.beqz; op1:x10; op1val:0x0000000000020000; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000020000, 170, 3f, x1, 184)

#opcode:c.beqz; op1:x10; op1val:0x0000000000040000; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000040000, 10, 1b, x1, 192)

#opcode:c.beqz; op1:x10; op1val:0x0000000000080000; immval:64
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000080000, 64, 3f, x1, 200)

#opcode:c.beqz; op1:x10; op1val:0x0000000000100000; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000100000, 14, 1b, x1, 208)

#opcode:c.beqz; op1:x10; op1val:0x0000000000200000; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000200000, 66, 1b, x1, 216)

#opcode:c.beqz; op1:x10; op1val:0x0000000000400000; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000400000, 8, 3f, x1, 224)

#opcode:c.beqz; op1:x10; op1val:0x0000000000800000; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000800000, 18, 1b, x1, 232)

#opcode:c.beqz; op1:x10; op1val:0x0000000001000000; immval:172
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000001000000, 172, 1b, x1, 240)

#opcode:c.beqz; op1:x10; op1val:0x0000000002000000; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000002000000, 14, 1b, x1, 248)

#opcode:c.beqz; op1:x10; op1val:0x0000000004000000; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000004000000, 16, 3f, x1, 256)

#opcode:c.beqz; op1:x10; op1val:0x0000000008000000; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000008000000, 128, 1b, x1, 264)

#opcode:c.beqz; op1:x10; op1val:0x0000000010000000; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000010000000, 128, 3f, x1, 272)

#opcode:c.beqz; op1:x10; op1val:0x0000000020000000; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000020000000, 18, 3f, x1, 280)

#opcode:c.beqz; op1:x10; op1val:0x0000000040000000; immval:130
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000040000000, 130, 1b, x1, 288)

#opcode:c.beqz; op1:x10; op1val:0x0000000080000000; immval:20
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000080000000, 20, 1b, x1, 296)

#opcode:c.beqz; op1:x10; op1val:0x0000000100000000; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000100000000, 8, 1b, x1, 304)

#opcode:c.beqz; op1:x10; op1val:0x0000000200000000; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000200000000, 170, 3f, x1, 312)

#opcode:c.beqz; op1:x10; op1val:0x0000000400000000; immval:172
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000400000000, 172, 1b, x1, 320)

#opcode:c.beqz; op1:x10; op1val:0x0000000800000000; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000800000000, 16, 1b, x1, 328)

#opcode:c.beqz; op1:x10; op1val:0x0000001000000000; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000001000000000, 14, 3f, x1, 336)

#opcode:c.beqz; op1:x10; op1val:0x0000002000000000; immval:130
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000002000000000, 130, 1b, x1, 344)

#opcode:c.beqz; op1:x10; op1val:0x0000004000000000; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000004000000000, 66, 1b, x1, 352)

#opcode:c.beqz; op1:x10; op1val:0x0000008000000000; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000008000000000, 128, 3f, x1, 360)

#opcode:c.beqz; op1:x10; op1val:0x0000010000000000; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000010000000000, 170, 3f, x1, 368)

#opcode:c.beqz; op1:x10; op1val:0x0000020000000000; immval:172
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000020000000000, 172, 1b, x1, 376)

#opcode:c.beqz; op1:x10; op1val:0x0000040000000000; immval:20
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000040000000000, 20, 1b, x1, 384)

#opcode:c.beqz; op1:x10; op1val:0x0000080000000000; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000080000000000, 18, 1b, x1, 392)

#opcode:c.beqz; op1:x10; op1val:0x0000100000000000; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000100000000000, 8, 3f, x1, 400)

#opcode:c.beqz; op1:x10; op1val:0x0000200000000000; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000200000000000, 4, 3f, x1, 408)

#opcode:c.beqz; op1:x10; op1val:0x0000400000000000; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000400000000000, 18, 3f, x1, 416)

#opcode:c.beqz; op1:x10; op1val:0x0000800000000000; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000800000000000, 12, 1b, x1, 424)

#opcode:c.beqz; op1:x10; op1val:0x0001000000000000; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0001000000000000, 4, 1b, x1, 432)

#opcode:c.beqz; op1:x10; op1val:0x0002000000000000; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0002000000000000, 170, 3f, x1, 440)

#opcode:c.beqz; op1:x10; op1val:0x0004000000000000; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0004000000000000, 4, 1b, x1, 448)

#opcode:c.beqz; op1:x10; op1val:0x0008000000000000; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0008000000000000, 32, 3f, x1, 456)

#opcode:c.beqz; op1:x10; op1val:0x0010000000000000; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0010000000000000, 12, 1b, x1, 464)

#opcode:c.beqz; op1:x10; op1val:0x0020000000000000; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0020000000000000, 32, 3f, x1, 472)

#opcode:c.beqz; op1:x10; op1val:0x0040000000000000; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0040000000000000, 6, 1b, x1, 480)

#opcode:c.beqz; op1:x10; op1val:0x0080000000000000; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0080000000000000, 32, 3f, x1, 488)

#opcode:c.beqz; op1:x10; op1val:0x0100000000000000; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0100000000000000, 12, 1b, x1, 496)

#opcode:c.beqz; op1:x10; op1val:0x0200000000000000; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0200000000000000, 12, 1b, x1, 504)

#opcode:c.beqz; op1:x10; op1val:0x0400000000000000; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0400000000000000, 6, 3f, x1, 512)

#opcode:c.beqz; op1:x10; op1val:0x0800000000000000; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0800000000000000, 10, 3f, x1, 520)

#opcode:c.beqz; op1:x10; op1val:0x1000000000000000; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x1000000000000000, 14, 1b, x1, 528)

#opcode:c.beqz; op1:x10; op1val:0x2000000000000000; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x2000000000000000, 12, 3f, x1, 536)

#opcode:c.beqz; op1:x10; op1val:0x4000000000000000; immval:64
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x4000000000000000, 64, 3f, x1, 544)

#opcode:c.beqz; op1:x10; op1val:0xff7fffffffffffff; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xff7fffffffffffff, 12, 3f, x1, 552)

#opcode:c.beqz; op1:x10; op1val:0xfeffffffffffffff; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfeffffffffffffff, 10, 1b, x1, 560)

#opcode:c.beqz; op1:x10; op1val:0xfdffffffffffffff; immval:34
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfdffffffffffffff, 34, 1b, x1, 568)

#opcode:c.beqz; op1:x10; op1val:0xfbffffffffffffff; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfbffffffffffffff, 12, 1b, x1, 576)

#opcode:c.beqz; op1:x10; op1val:0xf7ffffffffffffff; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xf7ffffffffffffff, 18, 1b, x1, 584)

#opcode:c.beqz; op1:x10; op1val:0xefffffffffffffff; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xefffffffffffffff, 128, 1b, x1, 592)

#opcode:c.beqz; op1:x10; op1val:0xdfffffffffffffff; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xdfffffffffffffff, 16, 3f, x1, 600)

#opcode:c.beqz; op1:x10; op1val:0xbfffffffffffffff; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xbfffffffffffffff, 8, 3f, x1, 608)

#opcode:c.beqz; op1:x10; op1val:0x5555555555555555; immval:64
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x5555555555555555, 64, 3f, x1, 616)

#opcode:c.beqz; op1:x10; op1val:0xaaaaaaaaaaaaaaaa; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xaaaaaaaaaaaaaaaa, 170, 3f, x1, 624)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffffffffe; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffffe, 18, 1b, x1, 632)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffffffffd; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffffd, 10, 3f, x1, 640)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffffffffb; immval:20
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffffb, 20, 1b, x1, 648)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffffffff7; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffff7, 12, 1b, x1, 656)

#opcode:c.beqz; op1:x10; op1val:0xffffffffffffffef; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffffef, 6, 3f, x1, 664)

#opcode:c.beqz; op1:x10; op1val:0xffffffffffffffdf; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffffdf, 10, 3f, x1, 672)

#opcode:c.beqz; op1:x10; op1val:0xffffffffffffffbf; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffffbf, 8, 1b, x1, 680)

#opcode:c.beqz; op1:x10; op1val:0xffffffffffffff7f; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffff7f, 32, 3f, x1, 688)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffffffeff; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffeff, 66, 1b, x1, 696)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffffffdff; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffdff, 4, 3f, x1, 704)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffffffbff; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffbff, 6, 3f, x1, 712)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffffff7ff; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffff7ff, 18, 3f, x1, 720)

#opcode:c.beqz; op1:x10; op1val:0xffffffffffffefff; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffefff, 8, 1b, x1, 728)

#opcode:c.beqz; op1:x10; op1val:0xffffffffffffdfff; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffdfff, 18, 1b, x1, 736)

#opcode:c.beqz; op1:x10; op1val:0xffffffffffffbfff; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffbfff, 32, 3f, x1, 744)

#opcode:c.beqz; op1:x10; op1val:0xffffffffffff7fff; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffff7fff, 16, 3f, x1, 752)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffffeffff; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffeffff, 12, 1b, x1, 760)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffffdffff; immval:126
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffdffff, 126, 3f, x1, 768)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffffbffff; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffbffff, 12, 1b, x1, 776)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffff7ffff; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffff7ffff, 8, 1b, x1, 784)

#opcode:c.beqz; op1:x10; op1val:0xffffffffffefffff; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffefffff, 10, 3f, x1, 792)

#opcode:c.beqz; op1:x10; op1val:0xffffffffffdfffff; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffdfffff, 8, 3f, x1, 800)

#opcode:c.beqz; op1:x10; op1val:0xffffffffffbfffff; immval:34
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffbfffff, 34, 1b, x1, 808)

#opcode:c.beqz; op1:x10; op1val:0xffffffffff7fffff; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffff7fffff, 16, 3f, x1, 816)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffeffffff; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffeffffff, 8, 3f, x1, 824)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffdffffff; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffdffffff, 14, 1b, x1, 832)

#opcode:c.beqz; op1:x10; op1val:0xfffffffffbffffff; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffbffffff, 16, 1b, x1, 840)

#opcode:c.beqz; op1:x10; op1val:0xfffffffff7ffffff; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffff7ffffff, 12, 3f, x1, 848)

#opcode:c.beqz; op1:x10; op1val:0xffffffffefffffff; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffefffffff, 18, 1b, x1, 856)

#opcode:c.beqz; op1:x10; op1val:0xffffffffdfffffff; immval:20
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffdfffffff, 20, 1b, x1, 864)

#opcode:c.beqz; op1:x10; op1val:0xffffffffbfffffff; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffbfffffff, 16, 1b, x1, 872)

#opcode:c.beqz; op1:x10; op1val:0xffffffff7fffffff; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffff7fffffff, 12, 3f, x1, 880)

#opcode:c.beqz; op1:x10; op1val:0xfffffffeffffffff; immval:126
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffeffffffff, 126, 3f, x1, 888)

#opcode:c.beqz; op1:x10; op1val:0xfffffffdffffffff; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffdffffffff, 10, 1b, x1, 896)

#opcode:c.beqz; op1:x10; op1val:0xfffffffbffffffff; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffbffffffff, 16, 3f, x1, 904)

#opcode:c.beqz; op1:x10; op1val:0xfffffff7ffffffff; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffff7ffffffff, 10, 3f, x1, 912)

#opcode:c.beqz; op1:x10; op1val:0xffffffefffffffff; immval:130
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffefffffffff, 130, 1b, x1, 920)

#opcode:c.beqz; op1:x10; op1val:0xffffffdfffffffff; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffdfffffffff, 128, 3f, x1, 928)

#opcode:c.beqz; op1:x10; op1val:0xffffffbfffffffff; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffbfffffffff, 12, 3f, x1, 936)

#opcode:c.beqz; op1:x10; op1val:0xffffff7fffffffff; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffff7fffffffff, 4, 3f, x1, 944)

#opcode:c.beqz; op1:x10; op1val:0xfffffeffffffffff; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffeffffffffff, 8, 3f, x1, 952)

#opcode:c.beqz; op1:x10; op1val:0xfffffdffffffffff; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffdffffffffff, 16, 1b, x1, 960)

#opcode:c.beqz; op1:x10; op1val:0xfffffbffffffffff; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffbffffffffff, 4, 3f, x1, 968)

#opcode:c.beqz; op1:x10; op1val:0xfffff7ffffffffff; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffff7ffffffffff, 18, 1b, x1, 976)

#opcode:c.beqz; op1:x10; op1val:0xffffefffffffffff; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffefffffffffff, 4, 3f, x1, 984)

#opcode:c.beqz; op1:x10; op1val:0xffffdfffffffffff; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffdfffffffffff, 170, 3f, x1, 992)

#opcode:c.beqz; op1:x10; op1val:0xffffbfffffffffff; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffbfffffffffff, 18, 3f, x1, 1000)

#opcode:c.beqz; op1:x10; op1val:0xffff7fffffffffff; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffff7fffffffffff, 18, 1b, x1, 1008)

#opcode:c.beqz; op1:x10; op1val:0xfffeffffffffffff; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffeffffffffffff, 14, 3f, x1, 1016)

#opcode:c.beqz; op1:x10; op1val:0xfff7ffffffffffff; immval:34
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfff7ffffffffffff, 34, 1b, x1, 1024)

#opcode:c.beqz; op1:x10; op1val:0xffefffffffffffff; immval:34
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffefffffffffffff, 34, 1b, x1, 1032)

#opcode:c.beqz; op1:x10; op1val:0xffdfffffffffffff; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffdfffffffffffff, 170, 3f, x1, 1040)

#opcode:c.beqz; op1:x10; op1val:0xffbfffffffffffff; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffbfffffffffffff, 66, 1b, x1, 1048)
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
