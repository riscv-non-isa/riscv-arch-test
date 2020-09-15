
#This assembly file tests the c.bnez instruction of the RISC-V C extension for the cbnez covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cbnez)

la x1,signature_x1_1

#opcode: c.bnez; op1:x8; op1val:0x00000009; immval: 32
TEST_CBRANCH_OP(c.bnez, x2, x8, 0x00000009, 32, 3f, x1, 0)

#opcode: c.bnez; op1:x13; op1val:0xffefffff; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x13, 0xffefffff, 18, 3f, x1, 4)

#opcode: c.bnez; op1:x15; op1val:0x00000000; immval: 32
TEST_CBRANCH_OP(c.bnez, x2, x15, 0x00000000, 32, 3f, x1, 8)

#opcode: c.bnez; op1:x12; op1val:0x00000007; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x12, 0x00000007, 4, 1b, x1, 12)

#opcode: c.bnez; op1:x9; op1val:0xff7fffff; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x9, 0xff7fffff, 14, 1b, x1, 16)

#opcode: c.bnez; op1:x14; op1val:0x00000000; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x14, 0x00000000, 14, 1b, x1, 20)

#opcode: c.bnez; op1:x10; op1val:0x80000000; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x80000000, 170, 3f, x1, 24)

#opcode: c.bnez; op1:x11; op1val:0x7fffffff; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x11, 0x7fffffff, 18, 3f, x1, 28)

#opcode: c.bnez; op1:x10; op1val:0x00000001; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000001, 128, 1b, x1, 32)

#opcode: c.bnez; op1:x10; op1val:0x00000002; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000002, 128, 1b, x1, 36)

#opcode: c.bnez; op1:x10; op1val:0x00000004; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000004, 8, 3f, x1, 40)

#opcode: c.bnez; op1:x10; op1val:0x00000008; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000008, 14, 3f, x1, 44)

#opcode: c.bnez; op1:x10; op1val:0x00000010; immval: 126
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000010, 126, 3f, x1, 48)

#opcode: c.bnez; op1:x10; op1val:0x00000020; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000020, 170, 3f, x1, 52)

#opcode: c.bnez; op1:x10; op1val:0x00000040; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000040, 18, 3f, x1, 56)

#opcode: c.bnez; op1:x10; op1val:0x00000080; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000080, 12, 3f, x1, 60)

#opcode: c.bnez; op1:x10; op1val:0x00000100; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000100, 18, 1b, x1, 64)

#opcode: c.bnez; op1:x10; op1val:0x00000200; immval: 16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000200, 16, 1b, x1, 68)

#opcode: c.bnez; op1:x10; op1val:0x00000400; immval: 172
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000400, 172, 1b, x1, 72)

#opcode: c.bnez; op1:x10; op1val:0x00000800; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000800, 10, 3f, x1, 76)

#opcode: c.bnez; op1:x10; op1val:0x00001000; immval: 34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00001000, 34, 1b, x1, 80)

#opcode: c.bnez; op1:x10; op1val:0x00002000; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00002000, 170, 3f, x1, 84)

#opcode: c.bnez; op1:x10; op1val:0x00004000; immval: 20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00004000, 20, 1b, x1, 88)

#opcode: c.bnez; op1:x10; op1val:0x00008000; immval: 130
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00008000, 130, 1b, x1, 92)

#opcode: c.bnez; op1:x10; op1val:0x00010000; immval: 12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00010000, 12, 1b, x1, 96)

#opcode: c.bnez; op1:x10; op1val:0x00020000; immval: 66
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00020000, 66, 1b, x1, 100)

#opcode: c.bnez; op1:x10; op1val:0x00040000; immval: 126
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00040000, 126, 3f, x1, 104)

#opcode: c.bnez; op1:x10; op1val:0x00080000; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00080000, 128, 3f, x1, 108)

#opcode: c.bnez; op1:x10; op1val:0x00100000; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00100000, 8, 3f, x1, 112)

#opcode: c.bnez; op1:x10; op1val:0x00200000; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00200000, 8, 3f, x1, 116)

#opcode: c.bnez; op1:x10; op1val:0x00400000; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00400000, 8, 1b, x1, 120)

#opcode: c.bnez; op1:x10; op1val:0x00800000; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00800000, 170, 3f, x1, 124)

#opcode: c.bnez; op1:x10; op1val:0x01000000; immval: 130
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x01000000, 130, 1b, x1, 128)

#opcode: c.bnez; op1:x10; op1val:0x02000000; immval: 20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x02000000, 20, 1b, x1, 132)

#opcode: c.bnez; op1:x10; op1val:0x04000000; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x04000000, 18, 1b, x1, 136)

#opcode: c.bnez; op1:x10; op1val:0x08000000; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x08000000, 18, 1b, x1, 140)

#opcode: c.bnez; op1:x10; op1val:0x10000000; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x10000000, 10, 3f, x1, 144)

#opcode: c.bnez; op1:x10; op1val:0x20000000; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x20000000, 8, 3f, x1, 148)

#opcode: c.bnez; op1:x10; op1val:0x40000000; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x40000000, 4, 3f, x1, 152)

#opcode: c.bnez; op1:x10; op1val:0xfeffffff; immval: 10
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfeffffff, 10, 3f, x1, 156)

#opcode: c.bnez; op1:x10; op1val:0xfdffffff; immval: 20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfdffffff, 20, 1b, x1, 160)

#opcode: c.bnez; op1:x10; op1val:0xfbffffff; immval: 130
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfbffffff, 130, 1b, x1, 164)

#opcode: c.bnez; op1:x10; op1val:0xf7ffffff; immval: 66
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xf7ffffff, 66, 1b, x1, 168)

#opcode: c.bnez; op1:x10; op1val:0xefffffff; immval: 6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xefffffff, 6, 3f, x1, 172)

#opcode: c.bnez; op1:x10; op1val:0xdfffffff; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xdfffffff, 4, 1b, x1, 176)

#opcode: c.bnez; op1:x10; op1val:0xbfffffff; immval: 172
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xbfffffff, 172, 1b, x1, 180)

#opcode: c.bnez; op1:x10; op1val:0x55555555; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x55555555, 4, 3f, x1, 184)

#opcode: c.bnez; op1:x10; op1val:0xaaaaaaaa; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xaaaaaaaa, 4, 3f, x1, 188)

#opcode: c.bnez; op1:x10; op1val:0xfffffffe; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffe, 4, 1b, x1, 192)

#opcode: c.bnez; op1:x10; op1val:0xfffffffd; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffd, 8, 3f, x1, 196)

#opcode: c.bnez; op1:x10; op1val:0xfffffffb; immval: 16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffb, 16, 1b, x1, 200)

#opcode: c.bnez; op1:x10; op1val:0xfffffff7; immval: 34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffff7, 34, 1b, x1, 204)

#opcode: c.bnez; op1:x10; op1val:0xffffffef; immval: 16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffef, 16, 1b, x1, 208)

#opcode: c.bnez; op1:x10; op1val:0xffffffdf; immval: 6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffdf, 6, 1b, x1, 212)

#opcode: c.bnez; op1:x10; op1val:0xffffffbf; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffbf, 4, 1b, x1, 216)

#opcode: c.bnez; op1:x10; op1val:0xffffff7f; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffff7f, 14, 3f, x1, 220)

#opcode: c.bnez; op1:x10; op1val:0xfffffeff; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffeff, 128, 1b, x1, 224)

#opcode: c.bnez; op1:x10; op1val:0xfffffdff; immval: 4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffdff, 4, 1b, x1, 228)

#opcode: c.bnez; op1:x10; op1val:0xfffffbff; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffbff, 18, 3f, x1, 232)

#opcode: c.bnez; op1:x10; op1val:0xfffff7ff; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffff7ff, 14, 3f, x1, 236)

#opcode: c.bnez; op1:x10; op1val:0xffffefff; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffefff, 128, 3f, x1, 240)

#opcode: c.bnez; op1:x10; op1val:0xffffdfff; immval: 6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffdfff, 6, 3f, x1, 244)

#opcode: c.bnez; op1:x10; op1val:0xffffbfff; immval: 16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffbfff, 16, 3f, x1, 248)

#opcode: c.bnez; op1:x10; op1val:0xffff7fff; immval: 14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffff7fff, 14, 3f, x1, 252)

#opcode: c.bnez; op1:x10; op1val:0xfffeffff; immval: 128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffeffff, 128, 1b, x1, 256)

#opcode: c.bnez; op1:x10; op1val:0xfffdffff; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffdffff, 18, 1b, x1, 260)

#opcode: c.bnez; op1:x10; op1val:0xfffbffff; immval: 18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffbffff, 18, 3f, x1, 264)

#opcode: c.bnez; op1:x10; op1val:0xfff7ffff; immval: 8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfff7ffff, 8, 3f, x1, 268)

#opcode: c.bnez; op1:x10; op1val:0xffdfffff; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffdfffff, 170, 3f, x1, 272)

#opcode: c.bnez; op1:x10; op1val:0xffbfffff; immval: 170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffbfffff, 170, 3f, x1, 276)
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
    .fill 70*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
