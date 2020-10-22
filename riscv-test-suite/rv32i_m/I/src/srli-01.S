
#This assembly file tests the srli instruction of the RISC-V I extension for the srli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srli)

RVTEST_SIGBASE( x10,signature_x10_1)

# rs1 != rd, rs1==x25, rd==x3, rs1_val < 0 and imm_val > 0 and imm_val < xlen, imm_val == 27, rs1_val == -4097
# opcode: srli ; op1:x25; dest:x3; op1val:0xffffefff;  immval:27
TEST_IMM_OP( srli, x3, x25, 0x1f, 0xffffefff, 27, x10, 0, x13)

# rs1 == rd, rs1==x16, rd==x16, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 131072
# opcode: srli ; op1:x16; dest:x16; op1val:0x00020000;  immval:11
TEST_IMM_OP( srli, x16, x16, 0x40, 0x00020000, 11, x10, 4, x13)

# rs1==x21, rd==x12, rs1_val < 0 and imm_val == 0, rs1_val == -65
# opcode: srli ; op1:x21; dest:x12; op1val:0xffffffbf;  immval:0
TEST_IMM_OP( srli, x12, x21, 0xffffffbf, 0xffffffbf, 0, x10, 8, x13)

# rs1==x0, rd==x20, rs1_val > 0 and imm_val == 0, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 2147483647
# opcode: srli ; op1:x0; dest:x20; op1val:0x7fffffff;  immval:0
TEST_IMM_OP( srli, x20, x0, 0x7fffffff, 0x7fffffff, 0, x10, 12, x13)

# rs1==x20, rd==x11, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -2049
# opcode: srli ; op1:x20; dest:x11; op1val:0xfffff7ff;  immval:31
TEST_IMM_OP( srli, x11, x20, 0x1, 0xfffff7ff, 31, x10, 16, x13)

# rs1==x11, rd==x28, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 1024
# opcode: srli ; op1:x11; dest:x28; op1val:0x00000400;  immval:31
TEST_IMM_OP( srli, x28, x11, 0x0, 0x00000400, 31, x10, 20, x13)

# rs1==x5, rd==x7, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, 
# opcode: srli ; op1:x5; dest:x7; op1val:0x00000005;  immval:5
TEST_IMM_OP( srli, x7, x5, 0x0, 0x00000005, 5, x10, 24, x13)

# rs1==x31, rd==x26, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -2147483648, imm_val == 10
# opcode: srli ; op1:x31; dest:x26; op1val:0x80000000;  immval:10
TEST_IMM_OP( srli, x26, x31, 0x200000, 0x80000000, 10, x10, 28, x13)

# rs1==x9, rd==x0, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: srli ; op1:x9; dest:x0; op1val:0x00000000;  immval:9
TEST_IMM_OP( srli, x0, x9, 0x0, 0x00000000, 9, x10, 32, x13)

# rs1==x17, rd==x14, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, imm_val == 21, rs1_val == 1
# opcode: srli ; op1:x17; dest:x14; op1val:0x00000001;  immval:21
TEST_IMM_OP( srli, x14, x17, 0x0, 0x00000001, 21, x10, 36, x13)

# rs1==x27, rd==x5, imm_val == 1, rs1_val == 536870912
# opcode: srli ; op1:x27; dest:x5; op1val:0x20000000;  immval:1
TEST_IMM_OP( srli, x5, x27, 0x10000000, 0x20000000, 1, x10, 40, x13)

# rs1==x23, rd==x19, imm_val == 2, rs1_val == 524288
# opcode: srli ; op1:x23; dest:x19; op1val:0x00080000;  immval:2
TEST_IMM_OP( srli, x19, x23, 0x20000, 0x00080000, 2, x10, 44, x13)

# rs1==x29, rd==x18, imm_val == 4, 
# opcode: srli ; op1:x29; dest:x18; op1val:0x00080000;  immval:4
TEST_IMM_OP( srli, x18, x29, 0x8000, 0x00080000, 4, x10, 48, x13)

# rs1==x28, rd==x1, imm_val == 8, rs1_val == -1073741825
# opcode: srli ; op1:x28; dest:x1; op1val:0xbfffffff;  immval:8
TEST_IMM_OP( srli, x1, x28, 0xbfffff, 0xbfffffff, 8, x10, 52, x13)

# rs1==x4, rd==x9, imm_val == 16, rs1_val == -32769
# opcode: srli ; op1:x4; dest:x9; op1val:0xffff7fff;  immval:16
TEST_IMM_OP( srli, x9, x4, 0xffff, 0xffff7fff, 16, x10, 56, x13)

# rs1==x19, rd==x2, imm_val == 30, rs1_val == -262145
# opcode: srli ; op1:x19; dest:x2; op1val:0xfffbffff;  immval:30
TEST_IMM_OP( srli, x2, x19, 0x3, 0xfffbffff, 30, x10, 60, x13)

# rs1==x18, rd==x15, imm_val == 29, 
# opcode: srli ; op1:x18; dest:x15; op1val:0xfffffff8;  immval:29
TEST_IMM_OP( srli, x15, x18, 0x7, 0xfffffff8, 29, x10, 64, x13)

# rs1==x6, rd==x22, imm_val == 23, rs1_val == 8
# opcode: srli ; op1:x6; dest:x22; op1val:0x00000008;  immval:23
TEST_IMM_OP( srli, x22, x6, 0x0, 0x00000008, 23, x10, 68, x13)

# rs1==x3, rd==x4, imm_val == 15, 
# opcode: srli ; op1:x3; dest:x4; op1val:0x00000008;  immval:15
TEST_IMM_OP( srli, x4, x3, 0x0, 0x00000008, 15, x10, 72, x13)

# rs1==x14, rd==x8, rs1_val == 2, 
# opcode: srli ; op1:x14; dest:x8; op1val:0x00000002;  immval:17
TEST_IMM_OP( srli, x8, x14, 0x0, 0x00000002, 17, x10, 76, x13)

# rs1==x24, rd==x6, rs1_val == 4, 
# opcode: srli ; op1:x24; dest:x6; op1val:0x00000004;  immval:3
TEST_IMM_OP( srli, x6, x24, 0x0, 0x00000004, 3, x10, 80, x4)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x22, rd==x30, rs1_val == 16, 
# opcode: srli ; op1:x22; dest:x30; op1val:0x00000010;  immval:3
TEST_IMM_OP( srli, x30, x22, 0x2, 0x00000010, 3, x3, 0, x4)

# rs1==x8, rd==x27, rs1_val == 32, 
# opcode: srli ; op1:x8; dest:x27; op1val:0x00000020;  immval:0
TEST_IMM_OP( srli, x27, x8, 0x20, 0x00000020, 0, x3, 4, x4)

# rs1==x12, rd==x31, rs1_val == 64, 
# opcode: srli ; op1:x12; dest:x31; op1val:0x00000040;  immval:8
TEST_IMM_OP( srli, x31, x12, 0x0, 0x00000040, 8, x3, 8, x4)

# rs1==x26, rd==x24, rs1_val == 128, 
# opcode: srli ; op1:x26; dest:x24; op1val:0x00000080;  immval:3
TEST_IMM_OP( srli, x24, x26, 0x10, 0x00000080, 3, x3, 12, x4)

# rs1==x7, rd==x10, rs1_val == 256, 
# opcode: srli ; op1:x7; dest:x10; op1val:0x00000100;  immval:30
TEST_IMM_OP( srli, x10, x7, 0x0, 0x00000100, 30, x3, 16, x4)

# rs1==x15, rd==x13, rs1_val == 512, 
# opcode: srli ; op1:x15; dest:x13; op1val:0x00000200;  immval:8
TEST_IMM_OP( srli, x13, x15, 0x2, 0x00000200, 8, x3, 20, x4)

# rs1==x1, rd==x17, rs1_val == 2048, 
# opcode: srli ; op1:x1; dest:x17; op1val:0x00000800;  immval:2
TEST_IMM_OP( srli, x17, x1, 0x200, 0x00000800, 2, x3, 24, x4)

# rs1==x30, rd==x29, rs1_val == 4096, 
# opcode: srli ; op1:x30; dest:x29; op1val:0x00001000;  immval:23
TEST_IMM_OP( srli, x29, x30, 0x0, 0x00001000, 23, x3, 28, x4)

# rs1==x2, rd==x25, rs1_val == 8192, 
# opcode: srli ; op1:x2; dest:x25; op1val:0x00002000;  immval:2
TEST_IMM_OP( srli, x25, x2, 0x800, 0x00002000, 2, x3, 32, x4)

# rs1==x10, rd==x23, rs1_val == 16384, 
# opcode: srli ; op1:x10; dest:x23; op1val:0x00004000;  immval:0
TEST_IMM_OP( srli, x23, x10, 0x4000, 0x00004000, 0, x3, 36, x4)

# rs1==x13, rd==x21, rs1_val == 32768, 
# opcode: srli ; op1:x13; dest:x21; op1val:0x00008000;  immval:2
TEST_IMM_OP( srli, x21, x13, 0x2000, 0x00008000, 2, x3, 40, x4)

# rs1_val == 65536, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00010000;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x200, 0x00010000, 7, x3, 44, x4)

# rs1_val == 262144, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00040000;  immval:29
TEST_IMM_OP( srli, x11, x10, 0x0, 0x00040000, 29, x3, 48, x4)

# rs1_val == 1048576, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00100000;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x200, 0x00100000, 11, x3, 52, x4)

# rs1_val == 2097152, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00200000;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x400, 0x00200000, 11, x3, 56, x4)

# rs1_val == 4194304, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00400000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x10, 0x00400000, 18, x3, 60, x4)

# rs1_val == 8388608, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00800000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x20, 0x00800000, 18, x3, 64, x4)

# rs1_val == 16777216, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x01000000;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x2000, 0x01000000, 11, x3, 68, x4)

# rs1_val == 33554432, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x02000000;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x40, 0x02000000, 19, x3, 72, x4)

# rs1_val == -513, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1fffffb, 0xfffffdff, 7, x3, 76, x4)

# rs1_val == -1025, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffbf, 0xfffffbff, 4, x3, 80, x4)

# rs1_val == -8193, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x1ffffbff, 0xffffdfff, 3, x3, 84, x4)

# rs1_val == -16385, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xffffb, 0xffffbfff, 12, x3, 88, x4)

# rs1_val == -65537, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:30
TEST_IMM_OP( srli, x11, x10, 0x3, 0xfffeffff, 30, x3, 92, x4)

# rs1_val == -131073, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffdfff, 0xfffdffff, 4, x3, 96, x4)

# rs1_val == -524289, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1ffe, 0xfff7ffff, 19, x3, 100, x4)

# rs1_val == -1048577, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffefffff;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xffefff, 0xffefffff, 8, x3, 104, x4)

# rs1_val == -2097153, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fef, 0xffdfffff, 17, x3, 108, x4)

# rs1_val == -4194305, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fdf, 0xffbfffff, 17, x3, 112, x4)

# rs1_val == -8388609, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xff7f, 0xff7fffff, 16, x3, 116, x4)

# rs1_val == -16777217, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x3fbf, 0xfeffffff, 18, x3, 120, x4)

# rs1_val == -33554433, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xfdffffff, 31, x3, 124, x4)

# rs1_val == -67108865, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x3effff, 0xfbffffff, 10, x3, 128, x4)

# rs1_val == -134217729, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x7bfff, 0xf7ffffff, 13, x3, 132, x4)

# rs1_val == -268435457, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xefffffff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3bfff, 0xefffffff, 14, x3, 136, x4)

# rs1_val == -9, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xffffff, 0xfffffff7, 8, x3, 140, x4)

# rs1_val == 67108864, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x04000000;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x1000000, 0x04000000, 2, x3, 144, x4)

# rs1_val == 134217728, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x08000000;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x400000, 0x08000000, 5, x3, 148, x4)

# rs1_val == 268435456, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x10000000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x400, 0x10000000, 18, x3, 152, x4)

# rs1_val == -536870913, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xdffffff, 0xdfffffff, 4, x3, 156, x4)

# rs1_val == 1073741824, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x40000000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x1000, 0x40000000, 18, x3, 160, x4)

# rs1_val == -2, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:29
TEST_IMM_OP( srli, x11, x10, 0x7, 0xfffffffe, 29, x3, 164, x4)

# rs1_val == 1431655765, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x55555555;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x15555555, 0x55555555, 2, x3, 168, x4)

# rs1_val == -1431655766, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x2aaaaa, 0xaaaaaaaa, 10, x3, 172, x4)

# rs1_val == -3, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7ff, 0xfffffffd, 21, x3, 176, x4)

# rs1_val == -5, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:27
TEST_IMM_OP( srli, x11, x10, 0x1f, 0xfffffffb, 27, x3, 180, x4)

# rs1_val == -17, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffef;  immval:27
TEST_IMM_OP( srli, x11, x10, 0x1f, 0xffffffef, 27, x3, 184, x4)

# rs1_val == -33, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x3ffffff7, 0xffffffdf, 2, x3, 188, x4)

# rs1_val == -129, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xffffff7f, 17, x3, 192, x4)

# rs1_val == -257, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xfffffeff, 17, x3, 196, x4)

# rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 131072
# opcode: srli ; op1:x10; dest:x11; op1val:0x00020000;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x40, 0x00020000, 11, x3, 200, x4)

# rs1_val > 0 and imm_val == 0, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 2147483647
# opcode: srli ; op1:x10; dest:x11; op1val:0x7fffffff;  immval:0
TEST_IMM_OP( srli, x11, x10, 0x7fffffff, 0x7fffffff, 0, x3, 204, x4)

# rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00000000;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x0, 0x00000000, 9, x3, 208, x4)
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x10_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 53*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
