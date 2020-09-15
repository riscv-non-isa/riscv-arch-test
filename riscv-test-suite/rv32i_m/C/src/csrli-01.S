
#This assembly file tests the c.srli instruction of the RISC-V C extension for the csrli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",csrli)

la x1,signature_x1_1

#opcode:c.srli; op1:x8; dest:x8 op1val:0xffffffef; immval:4
TEST_CI_OP( c.srli, x8, 0x00000000, 0xffffffef, 4, x1, 0, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00400000; immval:10
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00400000, 10, x1, 4, x2)

#opcode:c.srli; op1:x14; dest:x14 op1val:0x00000006; immval:6
TEST_CI_OP( c.srli, x14, 0x00000000, 0x00000006, 6, x1, 8, x2)

#opcode:c.srli; op1:x12; dest:x12 op1val:0x80000000; immval:2
TEST_CI_OP( c.srli, x12, 0x00000000, 0x80000000, 2, x1, 12, x2)

#opcode:c.srli; op1:x9; dest:x9 op1val:0x00000000; immval:16
TEST_CI_OP( c.srli, x9, 0x00000000, 0x00000000, 16, x1, 16, x2)

#opcode:c.srli; op1:x15; dest:x15 op1val:0x7fffffff; immval:12
TEST_CI_OP( c.srli, x15, 0x00000000, 0x7fffffff, 12, x1, 20, x2)

#opcode:c.srli; op1:x11; dest:x11 op1val:0x00000001; immval:16
TEST_CI_OP( c.srli, x11, 0x00000000, 0x00000001, 16, x1, 24, x2)

#opcode:c.srli; op1:x13; dest:x13 op1val:0xfffffff7; immval:1
TEST_CI_OP( c.srli, x13, 0x00000000, 0xfffffff7, 1, x1, 28, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffeff; immval:8
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffeff, 8, x1, 32, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfdffffff; immval:30
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfdffffff, 30, x1, 36, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfff7ffff; immval:29
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfff7ffff, 29, x1, 40, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00000002; immval:27
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000002, 27, x1, 44, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00000003; immval:23
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000003, 23, x1, 48, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfbffffff; immval:15
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfbffffff, 15, x1, 52, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffffc; immval:21
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffffc, 21, x1, 56, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00000004; immval:6
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000004, 6, x1, 60, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00000008; immval:4
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000008, 4, x1, 64, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00000010; immval:16
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000010, 16, x1, 68, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00000020; immval:31
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000020, 31, x1, 72, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00000040; immval:19
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000040, 19, x1, 76, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00000080; immval:31
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000080, 31, x1, 80, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00000100; immval:18
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000100, 18, x1, 84, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00000200; immval:30
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000200, 30, x1, 88, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00000400; immval:16
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000400, 16, x1, 92, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00000800; immval:4
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000800, 4, x1, 96, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00001000; immval:31
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00001000, 31, x1, 100, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00002000; immval:6
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00002000, 6, x1, 104, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00004000; immval:17
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00004000, 17, x1, 108, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00008000; immval:6
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00008000, 6, x1, 112, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00010000; immval:4
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00010000, 4, x1, 116, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00020000; immval:23
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00020000, 23, x1, 120, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00040000; immval:4
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00040000, 4, x1, 124, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00080000; immval:1
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00080000, 1, x1, 128, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00100000; immval:12
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00100000, 12, x1, 132, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00200000; immval:19
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00200000, 19, x1, 136, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x00800000; immval:1
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00800000, 1, x1, 140, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x01000000; immval:16
TEST_CI_OP( c.srli, x10, 0x00000000, 0x01000000, 16, x1, 144, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x02000000; immval:8
TEST_CI_OP( c.srli, x10, 0x00000000, 0x02000000, 8, x1, 148, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x04000000; immval:7
TEST_CI_OP( c.srli, x10, 0x00000000, 0x04000000, 7, x1, 152, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xffffdfff; immval:18
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffdfff, 18, x1, 156, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xffffbfff; immval:7
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffbfff, 7, x1, 160, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xffff7fff; immval:21
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffff7fff, 21, x1, 164, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfffeffff; immval:8
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffeffff, 8, x1, 168, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfffdffff; immval:10
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffdffff, 10, x1, 172, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfffbffff; immval:31
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffbffff, 31, x1, 176, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xffefffff; immval:12
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffefffff, 12, x1, 180, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xffdfffff; immval:11
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffdfffff, 11, x1, 184, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xffbfffff; immval:2
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffbfffff, 2, x1, 188, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xff7fffff; immval:8
TEST_CI_OP( c.srli, x10, 0x00000000, 0xff7fffff, 8, x1, 192, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfeffffff; immval:18
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfeffffff, 18, x1, 196, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xf7ffffff; immval:5
TEST_CI_OP( c.srli, x10, 0x00000000, 0xf7ffffff, 5, x1, 200, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xefffffff; immval:4
TEST_CI_OP( c.srli, x10, 0x00000000, 0xefffffff, 4, x1, 204, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xdfffffff; immval:17
TEST_CI_OP( c.srli, x10, 0x00000000, 0xdfffffff, 17, x1, 208, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xbfffffff; immval:8
TEST_CI_OP( c.srli, x10, 0x00000000, 0xbfffffff, 8, x1, 212, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x55555555; immval:9
TEST_CI_OP( c.srli, x10, 0x00000000, 0x55555555, 9, x1, 216, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x08000000; immval:15
TEST_CI_OP( c.srli, x10, 0x00000000, 0x08000000, 15, x1, 220, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x10000000; immval:17
TEST_CI_OP( c.srli, x10, 0x00000000, 0x10000000, 17, x1, 224, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x20000000; immval:23
TEST_CI_OP( c.srli, x10, 0x00000000, 0x20000000, 23, x1, 228, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0x40000000; immval:9
TEST_CI_OP( c.srli, x10, 0x00000000, 0x40000000, 9, x1, 232, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffffe; immval:4
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffffe, 4, x1, 236, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xaaaaaaaa; immval:16
TEST_CI_OP( c.srli, x10, 0x00000000, 0xaaaaaaaa, 16, x1, 240, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffffd; immval:5
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffffd, 5, x1, 244, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffffb; immval:2
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffffb, 2, x1, 248, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xffffffdf; immval:16
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffffdf, 16, x1, 252, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xffffffbf; immval:17
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffffbf, 17, x1, 256, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xffffff7f; immval:21
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffff7f, 21, x1, 260, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffdff; immval:27
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffdff, 27, x1, 264, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffbff; immval:27
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffbff, 27, x1, 268, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xfffff7ff; immval:3
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffff7ff, 3, x1, 272, x2)

#opcode:c.srli; op1:x10; dest:x10 op1val:0xffffefff; immval:2
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffefff, 2, x1, 276, x2)
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
