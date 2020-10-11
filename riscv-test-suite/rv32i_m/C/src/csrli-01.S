
#This assembly file tests the c.srli instruction of the RISC-V C extension for the csrli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",csrli)

la x1,signature_x1_1

# rs1==x9, rs1_val < 0 and imm_val < xlen, rs1_val == -16385
# opcode:c.srli; op1:x9; dest:x9 op1val:0xffffbfff; immval:3
TEST_CI_OP( c.srli, x9, 0x00000000, 0xffffbfff, 3, x1, 0, x2)

# rs1==x8, rs1_val > 0 and imm_val < xlen, imm_val == 30, rs1_val == 1024
# opcode:c.srli; op1:x8; dest:x8 op1val:0x00000400; immval:30
TEST_CI_OP( c.srli, x8, 0x00000000, 0x00000400, 30, x1, 4, x2)

# rs1==x10, rs1_val == imm_val and imm_val != 0  and imm_val < xlen, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00000007; immval:7
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000007, 7, x1, 8, x2)

# rs1==x11, rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen, rs1_val == -2147483648
# opcode:c.srli; op1:x11; dest:x11 op1val:0x80000000; immval:13
TEST_CI_OP( c.srli, x11, 0x00000000, 0x80000000, 13, x1, 12, x2)

# rs1==x13, rs1_val == 0 and imm_val != 0 and imm_val < xlen, imm_val == 29
# opcode:c.srli; op1:x13; dest:x13 op1val:0x00000000; immval:29
TEST_CI_OP( c.srli, x13, 0x00000000, 0x00000000, 29, x1, 16, x2)

# rs1==x14, rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen, rs1_val == 2147483647
# opcode:c.srli; op1:x14; dest:x14 op1val:0x7fffffff; immval:30
TEST_CI_OP( c.srli, x14, 0x00000000, 0x7fffffff, 30, x1, 20, x2)

# rs1==x12, rs1_val == 1 and imm_val != 0 and imm_val < xlen, rs1_val == 1
# opcode:c.srli; op1:x12; dest:x12 op1val:0x00000001; immval:11
TEST_CI_OP( c.srli, x12, 0x00000000, 0x00000001, 11, x1, 24, x2)

# rs1==x15, imm_val == 1, rs1_val == -134217729
# opcode:c.srli; op1:x15; dest:x15 op1val:0xf7ffffff; immval:1
TEST_CI_OP( c.srli, x15, 0x00000000, 0xf7ffffff, 1, x1, 28, x2)

# imm_val == 2, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xffffbfff; immval:2
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffbfff, 2, x1, 32, x2)

# imm_val == 4, rs1_val == 32
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00000020; immval:4
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000020, 4, x1, 36, x2)

# imm_val == 8, rs1_val == 33554432
# opcode:c.srli; op1:x10; dest:x10 op1val:0x02000000; immval:8
TEST_CI_OP( c.srli, x10, 0x00000000, 0x02000000, 8, x1, 40, x2)

# imm_val == 16, rs1_val == 268435456
# opcode:c.srli; op1:x10; dest:x10 op1val:0x10000000; immval:16
TEST_CI_OP( c.srli, x10, 0x00000000, 0x10000000, 16, x1, 44, x2)

# imm_val == 27, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffff8; immval:27
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffff8, 27, x1, 48, x2)

# imm_val == 23, rs1_val == 131072
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00020000; immval:23
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00020000, 23, x1, 52, x2)

# imm_val == 15, rs1_val == 1073741824
# opcode:c.srli; op1:x10; dest:x10 op1val:0x40000000; immval:15
TEST_CI_OP( c.srli, x10, 0x00000000, 0x40000000, 15, x1, 56, x2)

# imm_val == 21, rs1_val == -268435457
# opcode:c.srli; op1:x10; dest:x10 op1val:0xefffffff; immval:21
TEST_CI_OP( c.srli, x10, 0x00000000, 0xefffffff, 21, x1, 60, x2)

# imm_val == 10, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00000000; immval:10
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000000, 10, x1, 64, x2)

# rs1_val == 2, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00000002; immval:5
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000002, 5, x1, 68, x2)

# rs1_val == 4, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00000004; immval:10
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000004, 10, x1, 72, x2)

# rs1_val == 8, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00000008; immval:17
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000008, 17, x1, 76, x2)

# rs1_val == 16, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00000010; immval:7
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000010, 7, x1, 80, x2)

# rs1_val == 64, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00000040; immval:10
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000040, 10, x1, 84, x2)

# rs1_val == 128, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00000080; immval:11
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000080, 11, x1, 88, x2)

# rs1_val == 256, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00000100; immval:9
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000100, 9, x1, 92, x2)

# rs1_val == 512, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00000200; immval:27
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000200, 27, x1, 96, x2)

# rs1_val == 2048, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00000800; immval:23
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00000800, 23, x1, 100, x2)

# rs1_val == 4096, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00001000; immval:6
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00001000, 6, x1, 104, x2)

# rs1_val == 8192, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00002000; immval:8
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00002000, 8, x1, 108, x2)

# rs1_val == 16384, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00004000; immval:2
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00004000, 2, x1, 112, x2)

# rs1_val == 32768, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00008000; immval:23
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00008000, 23, x1, 116, x2)

# rs1_val == 65536, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00010000; immval:1
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00010000, 1, x1, 120, x2)

# rs1_val == 262144, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00040000; immval:31
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00040000, 31, x1, 124, x2)

# rs1_val == 524288, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00080000; immval:27
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00080000, 27, x1, 128, x2)

# rs1_val == 1048576, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00100000; immval:13
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00100000, 13, x1, 132, x2)

# rs1_val == 2097152, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00200000; immval:15
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00200000, 15, x1, 136, x2)

# rs1_val == 4194304, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00400000; immval:1
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00400000, 1, x1, 140, x2)

# rs1_val == 8388608, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x00800000; immval:12
TEST_CI_OP( c.srli, x10, 0x00000000, 0x00800000, 12, x1, 144, x2)

# rs1_val == 16777216, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x01000000; immval:18
TEST_CI_OP( c.srli, x10, 0x00000000, 0x01000000, 18, x1, 148, x2)

# rs1_val == 67108864, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x04000000; immval:27
TEST_CI_OP( c.srli, x10, 0x00000000, 0x04000000, 27, x1, 152, x2)

# rs1_val == 134217728, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x08000000; immval:2
TEST_CI_OP( c.srli, x10, 0x00000000, 0x08000000, 2, x1, 156, x2)

# rs1_val == -8193, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xffffdfff; immval:13
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffdfff, 13, x1, 160, x2)

# rs1_val == -32769, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xffff7fff; immval:31
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffff7fff, 31, x1, 164, x2)

# rs1_val == -65537, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfffeffff; immval:4
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffeffff, 4, x1, 168, x2)

# rs1_val == -131073, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfffdffff; immval:6
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffdffff, 6, x1, 172, x2)

# rs1_val == -262145, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfffbffff; immval:30
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffbffff, 30, x1, 176, x2)

# rs1_val == -524289, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfff7ffff; immval:19
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfff7ffff, 19, x1, 180, x2)

# rs1_val == -1048577, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xffefffff; immval:17
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffefffff, 17, x1, 184, x2)

# rs1_val == -2097153, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xffdfffff; immval:10
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffdfffff, 10, x1, 188, x2)

# rs1_val == -4194305, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xffbfffff; immval:17
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffbfffff, 17, x1, 192, x2)

# rs1_val == -8388609, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xff7fffff; immval:8
TEST_CI_OP( c.srli, x10, 0x00000000, 0xff7fffff, 8, x1, 196, x2)

# rs1_val == -16777217, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfeffffff; immval:1
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfeffffff, 1, x1, 200, x2)

# rs1_val == -33554433, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfdffffff; immval:8
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfdffffff, 8, x1, 204, x2)

# rs1_val == -67108865, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfbffffff; immval:3
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfbffffff, 3, x1, 208, x2)

# rs1_val == -536870913, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xdfffffff; immval:12
TEST_CI_OP( c.srli, x10, 0x00000000, 0xdfffffff, 12, x1, 212, x2)

# rs1_val == -1073741825, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xbfffffff; immval:31
TEST_CI_OP( c.srli, x10, 0x00000000, 0xbfffffff, 31, x1, 216, x2)

# rs1_val == 1431655765, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x55555555; immval:12
TEST_CI_OP( c.srli, x10, 0x00000000, 0x55555555, 12, x1, 220, x2)

# rs1_val == -129, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xffffff7f; immval:3
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffff7f, 3, x1, 224, x2)

# rs1_val == 536870912, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0x20000000; immval:8
TEST_CI_OP( c.srli, x10, 0x00000000, 0x20000000, 8, x1, 228, x2)

# rs1_val == -2, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffffe; immval:27
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffffe, 27, x1, 232, x2)

# rs1_val == -1431655766, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xaaaaaaaa; immval:12
TEST_CI_OP( c.srli, x10, 0x00000000, 0xaaaaaaaa, 12, x1, 236, x2)

# rs1_val == -3, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffffd; immval:9
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffffd, 9, x1, 240, x2)

# rs1_val == -5, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffffb; immval:31
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffffb, 31, x1, 244, x2)

# rs1_val == -9, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffff7; immval:7
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffff7, 7, x1, 248, x2)

# rs1_val == -17, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xffffffef; immval:23
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffffef, 23, x1, 252, x2)

# rs1_val == -33, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xffffffdf; immval:29
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffffdf, 29, x1, 256, x2)

# rs1_val == -65, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xffffffbf; immval:31
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffffbf, 31, x1, 260, x2)

# rs1_val == -257, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffeff; immval:18
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffeff, 18, x1, 264, x2)

# rs1_val == -513, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffdff; immval:1
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffdff, 1, x1, 268, x2)

# rs1_val == -1025, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfffffbff; immval:3
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffffbff, 3, x1, 272, x2)

# rs1_val == -2049, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xfffff7ff; immval:10
TEST_CI_OP( c.srli, x10, 0x00000000, 0xfffff7ff, 10, x1, 276, x2)

# rs1_val == -4097, 
# opcode:c.srli; op1:x10; dest:x10 op1val:0xffffefff; immval:29
TEST_CI_OP( c.srli, x10, 0x00000000, 0xffffefff, 29, x1, 280, x2)
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
    .fill 71*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
