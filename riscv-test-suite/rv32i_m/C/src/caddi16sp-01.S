
#This assembly file tests the c.addi16sp instruction of the RISC-V C extension for the caddi16sp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi16sp)

la x1,signature_x1_1

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000020; immval:-512
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000020, -512, x1, 0, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffefff; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffefff, 496, x1, 4, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x80000000; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x80000000, 496, x1, 8, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000000; immval:-48
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000000, -48, x1, 12, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x7fffffff; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x7fffffff, 64, x1, 16, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000001; immval:336
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000001, 336, x1, 20, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000010; immval:16
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000010, 16, x1, 24, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffbfffff; immval:-160
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffbfffff, -160, x1, 28, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00200000; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00200000, 32, x1, 32, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000010; immval:128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000010, 128, x1, 36, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000003; immval:256
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000003, 256, x1, 40, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x40000000; immval:-32
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x40000000, -32, x1, 44, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x55555555; immval:-80
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x55555555, -80, x1, 48, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffff; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffffff, -144, x1, 52, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffbffff; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffbffff, -272, x1, 56, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffef; immval:-352
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffffef, -352, x1, 60, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000002; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000002, 496, x1, 64, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000004; immval:80
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000004, 80, x1, 68, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000008; immval:-112
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000008, -112, x1, 72, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000040; immval:-128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000040, -128, x1, 76, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000080; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000080, -272, x1, 80, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000100; immval:48
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000100, 48, x1, 84, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000200; immval:-128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000200, -128, x1, 88, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000400; immval:-112
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000400, -112, x1, 92, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000800; immval:-160
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000800, -160, x1, 96, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00001000; immval:128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00001000, 128, x1, 100, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00002000; immval:240
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00002000, 240, x1, 104, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00004000; immval:-64
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00004000, -64, x1, 108, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00008000; immval:-80
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00008000, -80, x1, 112, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00010000; immval:16
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00010000, 16, x1, 116, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00020000; immval:128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00020000, 128, x1, 120, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00040000; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00040000, 496, x1, 124, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00080000; immval:96
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00080000, 96, x1, 128, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00100000; immval:-80
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00100000, -80, x1, 132, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00400000; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00400000, 64, x1, 136, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00800000; immval:-96
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00800000, -96, x1, 140, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x01000000; immval:-160
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x01000000, -160, x1, 144, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x02000000; immval:112
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x02000000, 112, x1, 148, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x04000000; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x04000000, -144, x1, 152, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffdff; immval:-112
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffdff, -112, x1, 156, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffbff; immval:-80
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffbff, -80, x1, 160, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffff7ff; immval:128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffff7ff, 128, x1, 164, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffdfff; immval:-352
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffdfff, -352, x1, 168, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffbfff; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffbfff, 64, x1, 172, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffff7fff; immval:-256
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffff7fff, -256, x1, 176, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffeffff; immval:-128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffeffff, -128, x1, 180, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffdffff; immval:240
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffdffff, 240, x1, 184, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfff7ffff; immval:-128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfff7ffff, -128, x1, 188, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffefffff; immval:80
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffefffff, 80, x1, 192, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffdfffff; immval:-48
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffdfffff, -48, x1, 196, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xff7fffff; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xff7fffff, 496, x1, 200, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfeffffff; immval:-48
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfeffffff, -48, x1, 204, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfdffffff; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfdffffff, 496, x1, 208, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfbffffff; immval:-80
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfbffffff, -80, x1, 212, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xf7ffffff; immval:-256
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xf7ffffff, -256, x1, 216, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffff7; immval:240
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffff7, 240, x1, 220, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffb; immval:-64
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffffb, -64, x1, 224, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x08000000; immval:112
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x08000000, 112, x1, 228, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xefffffff; immval:-352
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xefffffff, -352, x1, 232, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x10000000; immval:128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x10000000, 128, x1, 236, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xdfffffff; immval:-256
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xdfffffff, -256, x1, 240, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x20000000; immval:-352
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x20000000, -352, x1, 244, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xbfffffff; immval:48
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xbfffffff, 48, x1, 248, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffe; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffffe, 32, x1, 252, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xaaaaaaaa; immval:-16
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xaaaaaaaa, -16, x1, 256, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffd; immval:-128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffffd, -128, x1, 260, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffdf; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffffdf, 496, x1, 264, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffbf; immval:-512
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffffbf, -512, x1, 268, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffff7f; immval:-16
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffff7f, -16, x1, 272, x3)

#opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffeff; immval:48
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffeff, 48, x1, 276, x3)
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
