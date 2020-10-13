
#This assembly file tests the c.srai instruction of the RISC-V C extension for the csrai covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",csrai)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1==x8, rs1_val < 0 and imm_val < xlen, rs1_val == -1073741825, imm_val == 27
# opcode:c.srai; op1:x8; dest:x8 op1val:0xbfffffff; immval:27
TEST_CI_OP( c.srai, x8, 0x00000000, 0xbfffffff, 27, x1, 0, x2)

# rs1==x12, rs1_val > 0 and imm_val < xlen, rs1_val == 32768
# opcode:c.srai; op1:x12; dest:x12 op1val:0x00008000; immval:13
TEST_CI_OP( c.srai, x12, 0x00000000, 0x00008000, 13, x1, 4, x2)

# rs1==x14, rs1_val == imm_val and imm_val != 0  and imm_val < xlen, imm_val == 2, rs1_val == 2
# opcode:c.srai; op1:x14; dest:x14 op1val:0x00000002; immval:2
TEST_CI_OP( c.srai, x14, 0x00000000, 0x00000002, 2, x1, 8, x2)

# rs1==x15, rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen, rs1_val == -2147483648
# opcode:c.srai; op1:x15; dest:x15 op1val:0x80000000; immval:5
TEST_CI_OP( c.srai, x15, 0x00000000, 0x80000000, 5, x1, 12, x2)

# rs1==x11, rs1_val == 0 and imm_val != 0 and imm_val < xlen, 
# opcode:c.srai; op1:x11; dest:x11 op1val:0x00000000; immval:18
TEST_CI_OP( c.srai, x11, 0x00000000, 0x00000000, 18, x1, 16, x2)

# rs1==x13, rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen, rs1_val == 2147483647
# opcode:c.srai; op1:x13; dest:x13 op1val:0x7fffffff; immval:13
TEST_CI_OP( c.srai, x13, 0x00000000, 0x7fffffff, 13, x1, 20, x2)

# rs1==x9, rs1_val == 1 and imm_val != 0 and imm_val < xlen, rs1_val == 1
# opcode:c.srai; op1:x9; dest:x9 op1val:0x00000001; immval:14
TEST_CI_OP( c.srai, x9, 0x00000000, 0x00000001, 14, x1, 24, x2)

# rs1==x10, imm_val == 1, rs1_val == -513
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfffffdff; immval:1
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfffffdff, 1, x1, 28, x2)

# imm_val == 4, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000002; immval:4
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000002, 4, x1, 32, x2)

# imm_val == 8, rs1_val == 32
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000020; immval:8
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000020, 8, x1, 36, x2)

# imm_val == 16, rs1_val == -2
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfffffffe; immval:16
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfffffffe, 16, x1, 40, x2)

# imm_val == 30, rs1_val == -134217729
# opcode:c.srai; op1:x10; dest:x10 op1val:0xf7ffffff; immval:30
TEST_CI_OP( c.srai, x10, 0x00000000, 0xf7ffffff, 30, x1, 44, x2)

# imm_val == 29, rs1_val == -257
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfffffeff; immval:29
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfffffeff, 29, x1, 48, x2)

# imm_val == 23, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000001; immval:23
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000001, 23, x1, 52, x2)

# imm_val == 15, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000006; immval:15
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000006, 15, x1, 56, x2)

# imm_val == 21, rs1_val == 64
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000040; immval:21
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000040, 21, x1, 60, x2)

# imm_val == 10, rs1_val == 16
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000010; immval:10
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000010, 10, x1, 64, x2)

# rs1_val == 4, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000004; immval:27
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000004, 27, x1, 68, x2)

# rs1_val == 8, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000008; immval:23
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000008, 23, x1, 72, x2)

# rs1_val == 128, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000080; immval:3
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000080, 3, x1, 76, x2)

# rs1_val == 256, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000100; immval:2
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000100, 2, x1, 80, x2)

# rs1_val == 512, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000200; immval:8
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000200, 8, x1, 84, x2)

# rs1_val == 1024, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000400; immval:12
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000400, 12, x1, 88, x2)

# rs1_val == 2048, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00000800; immval:1
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00000800, 1, x1, 92, x2)

# rs1_val == 4096, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00001000; immval:27
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00001000, 27, x1, 96, x2)

# rs1_val == 8192, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00002000; immval:13
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00002000, 13, x1, 100, x2)

# rs1_val == 16384, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00004000; immval:18
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00004000, 18, x1, 104, x2)

# rs1_val == 65536, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00010000; immval:27
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00010000, 27, x1, 108, x2)

# rs1_val == 131072, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00020000; immval:9
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00020000, 9, x1, 112, x2)

# rs1_val == 262144, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00040000; immval:10
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00040000, 10, x1, 116, x2)

# rs1_val == 524288, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00080000; immval:30
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00080000, 30, x1, 120, x2)

# rs1_val == 1048576, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00100000; immval:17
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00100000, 17, x1, 124, x2)

# rs1_val == 2097152, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00200000; immval:7
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00200000, 7, x1, 128, x2)

# rs1_val == 4194304, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00400000; immval:29
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00400000, 29, x1, 132, x2)

# rs1_val == 8388608, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x00800000; immval:10
TEST_CI_OP( c.srai, x10, 0x00000000, 0x00800000, 10, x1, 136, x2)

# rs1_val == 16777216, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x01000000; immval:23
TEST_CI_OP( c.srai, x10, 0x00000000, 0x01000000, 23, x1, 140, x2)

# rs1_val == 33554432, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x02000000; immval:19
TEST_CI_OP( c.srai, x10, 0x00000000, 0x02000000, 19, x1, 144, x2)

# rs1_val == 67108864, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x04000000; immval:1
TEST_CI_OP( c.srai, x10, 0x00000000, 0x04000000, 1, x1, 148, x2)

# rs1_val == 134217728, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x08000000; immval:29
TEST_CI_OP( c.srai, x10, 0x00000000, 0x08000000, 29, x1, 152, x2)

# rs1_val == -8193, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xffffdfff; immval:27
TEST_CI_OP( c.srai, x10, 0x00000000, 0xffffdfff, 27, x1, 156, x2)

# rs1_val == -16385, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xffffbfff; immval:29
TEST_CI_OP( c.srai, x10, 0x00000000, 0xffffbfff, 29, x1, 160, x2)

# rs1_val == -32769, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xffff7fff; immval:11
TEST_CI_OP( c.srai, x10, 0x00000000, 0xffff7fff, 11, x1, 164, x2)

# rs1_val == -65537, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfffeffff; immval:17
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfffeffff, 17, x1, 168, x2)

# rs1_val == -131073, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfffdffff; immval:18
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfffdffff, 18, x1, 172, x2)

# rs1_val == -262145, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfffbffff; immval:14
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfffbffff, 14, x1, 176, x2)

# rs1_val == -524289, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfff7ffff; immval:10
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfff7ffff, 10, x1, 180, x2)

# rs1_val == -1048577, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xffefffff; immval:27
TEST_CI_OP( c.srai, x10, 0x00000000, 0xffefffff, 27, x1, 184, x2)

# rs1_val == -2097153, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xffdfffff; immval:16
TEST_CI_OP( c.srai, x10, 0x00000000, 0xffdfffff, 16, x1, 188, x2)

# rs1_val == -4194305, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xffbfffff; immval:19
TEST_CI_OP( c.srai, x10, 0x00000000, 0xffbfffff, 19, x1, 192, x2)

# rs1_val == -8388609, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xff7fffff; immval:21
TEST_CI_OP( c.srai, x10, 0x00000000, 0xff7fffff, 21, x1, 196, x2)

# rs1_val == -16777217, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfeffffff; immval:5
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfeffffff, 5, x1, 200, x2)

# rs1_val == -33554433, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfdffffff; immval:15
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfdffffff, 15, x1, 204, x2)

# rs1_val == -67108865, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfbffffff; immval:3
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfbffffff, 3, x1, 208, x2)

# rs1_val == -268435457, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xefffffff; immval:7
TEST_CI_OP( c.srai, x10, 0x00000000, 0xefffffff, 7, x1, 212, x2)

# rs1_val == -536870913, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xdfffffff; immval:10
TEST_CI_OP( c.srai, x10, 0x00000000, 0xdfffffff, 10, x1, 216, x2)

# rs1_val == -129, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xffffff7f; immval:15
TEST_CI_OP( c.srai, x10, 0x00000000, 0xffffff7f, 15, x1, 220, x2)

# rs1_val == 268435456, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x10000000; immval:8
TEST_CI_OP( c.srai, x10, 0x00000000, 0x10000000, 8, x1, 224, x2)

# rs1_val == 536870912, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x20000000; immval:16
TEST_CI_OP( c.srai, x10, 0x00000000, 0x20000000, 16, x1, 228, x2)

# rs1_val == 1073741824, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x40000000; immval:1
TEST_CI_OP( c.srai, x10, 0x00000000, 0x40000000, 1, x1, 232, x2)

# rs1_val == 1431655765, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0x55555555; immval:15
TEST_CI_OP( c.srai, x10, 0x00000000, 0x55555555, 15, x1, 236, x2)

# rs1_val == -1431655766, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xaaaaaaaa; immval:8
TEST_CI_OP( c.srai, x10, 0x00000000, 0xaaaaaaaa, 8, x1, 240, x2)

# rs1_val == -3, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfffffffd; immval:27
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfffffffd, 27, x1, 244, x2)

# rs1_val == -5, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfffffffb; immval:12
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfffffffb, 12, x1, 248, x2)

# rs1_val == -9, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfffffff7; immval:19
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfffffff7, 19, x1, 252, x2)

# rs1_val == -17, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xffffffef; immval:29
TEST_CI_OP( c.srai, x10, 0x00000000, 0xffffffef, 29, x1, 256, x2)

# rs1_val == -33, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xffffffdf; immval:5
TEST_CI_OP( c.srai, x10, 0x00000000, 0xffffffdf, 5, x1, 260, x2)

# rs1_val == -65, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xffffffbf; immval:10
TEST_CI_OP( c.srai, x10, 0x00000000, 0xffffffbf, 10, x1, 264, x2)

# rs1_val == -1025, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfffffbff; immval:6
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfffffbff, 6, x1, 268, x2)

# rs1_val == -2049, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xfffff7ff; immval:10
TEST_CI_OP( c.srai, x10, 0x00000000, 0xfffff7ff, 10, x1, 272, x2)

# rs1_val == -4097, 
# opcode:c.srai; op1:x10; dest:x10 op1val:0xffffefff; immval:14
TEST_CI_OP( c.srai, x10, 0x00000000, 0xffffefff, 14, x1, 276, x2)
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
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 70*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
