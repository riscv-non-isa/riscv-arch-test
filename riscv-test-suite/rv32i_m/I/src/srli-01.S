
#This assembly file tests the srli instruction of the RISC-V I extension for the srli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srli)

RVTEST_SIGBASE( x12,signature_x12_1)

# rs1 != rd, rs1==x3, rd==x30, rs1_val < 0 and imm_val > 0 and imm_val < xlen, imm_val == 4, rs1_val == -129
# opcode: srli ; op1:x3; dest:x30; op1val:0xffffff7f;  immval:4
TEST_IMM_OP( srli, x30, x3, 0xffffff7, 0xffffff7f, 4, x12, 0, x13)

# rs1 == rd, rs1==x22, rd==x22, rs1_val > 0 and imm_val > 0 and imm_val < xlen, imm_val == 15, rs1_val == 16384
# opcode: srli ; op1:x22; dest:x22; op1val:0x00004000;  immval:15
TEST_IMM_OP( srli, x22, x22, 0x0, 0x00004000, 15, x12, 4, x13)

# rs1==x9, rd==x24, rs1_val < 0 and imm_val == 0, rs1_val == -4194305
# opcode: srli ; op1:x9; dest:x24; op1val:0xffbfffff;  immval:0
TEST_IMM_OP( srli, x24, x9, 0xffbfffff, 0xffbfffff, 0, x12, 8, x13)

# rs1==x26, rd==x17, rs1_val > 0 and imm_val == 0, rs1_val == 2097152
# opcode: srli ; op1:x26; dest:x17; op1val:0x00200000;  immval:0
TEST_IMM_OP( srli, x17, x26, 0x200000, 0x00200000, 0, x12, 12, x13)

# rs1==x18, rd==x1, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -1025
# opcode: srli ; op1:x18; dest:x1; op1val:0xfffffbff;  immval:31
TEST_IMM_OP( srli, x1, x18, 0x1, 0xfffffbff, 31, x12, 16, x13)

# rs1==x8, rd==x15, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 67108864
# opcode: srli ; op1:x8; dest:x15; op1val:0x04000000;  immval:31
TEST_IMM_OP( srli, x15, x8, 0x0, 0x04000000, 31, x12, 20, x13)

# rs1==x16, rd==x9, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, rs1_val == 4
# opcode: srli ; op1:x16; dest:x9; op1val:0x00000004;  immval:4
TEST_IMM_OP( srli, x9, x16, 0x0, 0x00000004, 4, x12, 24, x13)

# rs1==x6, rd==x18, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -2147483648
# opcode: srli ; op1:x6; dest:x18; op1val:0x80000000;  immval:13
TEST_IMM_OP( srli, x18, x6, 0x40000, 0x80000000, 13, x12, 28, x13)

# rs1==x4, rd==x6, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: srli ; op1:x4; dest:x6; op1val:0x00000000;  immval:7
TEST_IMM_OP( srli, x6, x4, 0x0, 0x00000000, 7, x12, 32, x13)

# rs1==x17, rd==x28, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 2147483647
# opcode: srli ; op1:x17; dest:x28; op1val:0x7fffffff;  immval:4
TEST_IMM_OP( srli, x28, x17, 0x7ffffff, 0x7fffffff, 4, x12, 36, x13)

# rs1==x2, rd==x11, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, rs1_val == 1
# opcode: srli ; op1:x2; dest:x11; op1val:0x00000001;  immval:3
TEST_IMM_OP( srli, x11, x2, 0x0, 0x00000001, 3, x12, 40, x13)

# rs1==x7, rd==x31, imm_val == 1, rs1_val == -17
# opcode: srli ; op1:x7; dest:x31; op1val:0xffffffef;  immval:1
TEST_IMM_OP( srli, x31, x7, 0x7ffffff7, 0xffffffef, 1, x12, 44, x13)

# rs1==x10, rd==x27, imm_val == 2, rs1_val == 8
# opcode: srli ; op1:x10; dest:x27; op1val:0x00000008;  immval:2
TEST_IMM_OP( srli, x27, x10, 0x2, 0x00000008, 2, x12, 48, x13)

# rs1==x28, rd==x5, imm_val == 8, rs1_val == -2
# opcode: srli ; op1:x28; dest:x5; op1val:0xfffffffe;  immval:8
TEST_IMM_OP( srli, x5, x28, 0xffffff, 0xfffffffe, 8, x12, 52, x13)

# rs1==x23, rd==x10, imm_val == 16, rs1_val == -1048577
# opcode: srli ; op1:x23; dest:x10; op1val:0xffefffff;  immval:16
TEST_IMM_OP( srli, x10, x23, 0xffef, 0xffefffff, 16, x12, 56, x13)

# rs1==x24, rd==x25, imm_val == 30, rs1_val == 1073741824
# opcode: srli ; op1:x24; dest:x25; op1val:0x40000000;  immval:30
TEST_IMM_OP( srli, x25, x24, 0x1, 0x40000000, 30, x12, 60, x13)

# rs1==x30, rd==x16, imm_val == 29, rs1_val == 268435456
# opcode: srli ; op1:x30; dest:x16; op1val:0x10000000;  immval:29
TEST_IMM_OP( srli, x16, x30, 0x0, 0x10000000, 29, x12, 64, x13)

# rs1==x25, rd==x0, imm_val == 27, 
# opcode: srli ; op1:x25; dest:x0; op1val:0xfffffff6;  immval:27
TEST_IMM_OP( srli, x0, x25, 0x1f, 0xfffffff6, 27, x12, 68, x13)

# rs1==x11, rd==x26, imm_val == 23, rs1_val == 134217728
# opcode: srli ; op1:x11; dest:x26; op1val:0x08000000;  immval:23
TEST_IMM_OP( srli, x26, x11, 0x10, 0x08000000, 23, x12, 72, x13)

# rs1==x15, rd==x19, imm_val == 21, rs1_val == -131073
# opcode: srli ; op1:x15; dest:x19; op1val:0xfffdffff;  immval:21
TEST_IMM_OP( srli, x19, x15, 0x7ff, 0xfffdffff, 21, x12, 76, x13)

# rs1==x0, rd==x3, imm_val == 10, 
# opcode: srli ; op1:x0; dest:x3; op1val:0xffbfffff;  immval:10
TEST_IMM_OP( srli, x3, x0, 0x3fefff, 0xffbfffff, 10, x12, 80, x13)

# rs1==x19, rd==x2, rs1_val == 2, 
# opcode: srli ; op1:x19; dest:x2; op1val:0x00000002;  immval:14
TEST_IMM_OP( srli, x2, x19, 0x0, 0x00000002, 14, x12, 84, x13)

# rs1==x31, rd==x14, rs1_val == 16, 
# opcode: srli ; op1:x31; dest:x14; op1val:0x00000010;  immval:8
TEST_IMM_OP( srli, x14, x31, 0x0, 0x00000010, 8, x12, 88, x13)

# rs1==x27, rd==x4, rs1_val == 32, 
# opcode: srli ; op1:x27; dest:x4; op1val:0x00000020;  immval:4
TEST_IMM_OP( srli, x4, x27, 0x2, 0x00000020, 4, x12, 92, x13)

# rs1==x21, rd==x20, rs1_val == 64, 
# opcode: srli ; op1:x21; dest:x20; op1val:0x00000040;  immval:5
TEST_IMM_OP( srli, x20, x21, 0x2, 0x00000040, 5, x12, 96, x13)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x13, rd==x21, rs1_val == 128, 
# opcode: srli ; op1:x13; dest:x21; op1val:0x00000080;  immval:14
TEST_IMM_OP( srli, x21, x13, 0x0, 0x00000080, 14, x2, 0, x3)

# rs1==x1, rd==x13, rs1_val == 256, 
# opcode: srli ; op1:x1; dest:x13; op1val:0x00000100;  immval:11
TEST_IMM_OP( srli, x13, x1, 0x0, 0x00000100, 11, x2, 4, x3)

# rs1==x12, rd==x29, rs1_val == 512, 
# opcode: srli ; op1:x12; dest:x29; op1val:0x00000200;  immval:7
TEST_IMM_OP( srli, x29, x12, 0x4, 0x00000200, 7, x2, 8, x3)

# rs1==x5, rd==x7, rs1_val == 1024, 
# opcode: srli ; op1:x5; dest:x7; op1val:0x00000400;  immval:4
TEST_IMM_OP( srli, x7, x5, 0x40, 0x00000400, 4, x2, 12, x3)

# rs1==x29, rd==x12, rs1_val == 2048, 
# opcode: srli ; op1:x29; dest:x12; op1val:0x00000800;  immval:16
TEST_IMM_OP( srli, x12, x29, 0x0, 0x00000800, 16, x2, 16, x3)

# rs1==x20, rd==x23, rs1_val == 4096, 
# opcode: srli ; op1:x20; dest:x23; op1val:0x00001000;  immval:12
TEST_IMM_OP( srli, x23, x20, 0x1, 0x00001000, 12, x2, 20, x3)

# rs1==x14, rd==x8, rs1_val == 8192, 
# opcode: srli ; op1:x14; dest:x8; op1val:0x00002000;  immval:10
TEST_IMM_OP( srli, x8, x14, 0x8, 0x00002000, 10, x2, 24, x3)

# rs1_val == 32768, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00008000;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x0, 0x00008000, 19, x2, 28, x3)

# rs1_val == 65536, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00010000;  immval:8
TEST_IMM_OP( srli, x11, x10, 0x100, 0x00010000, 8, x2, 32, x3)

# rs1_val == 131072, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00020000;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x80, 0x00020000, 10, x2, 36, x3)

# rs1_val == 262144, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00040000;  immval:23
TEST_IMM_OP( srli, x11, x10, 0x0, 0x00040000, 23, x2, 40, x3)

# rs1_val == 524288, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00080000;  immval:16
TEST_IMM_OP( srli, x11, x10, 0x8, 0x00080000, 16, x2, 44, x3)

# rs1_val == 1048576, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00100000;  immval:23
TEST_IMM_OP( srli, x11, x10, 0x0, 0x00100000, 23, x2, 48, x3)

# rs1_val == -513, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x3fffff, 0xfffffdff, 10, x2, 52, x3)

# rs1_val == -2049, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:0
TEST_IMM_OP( srli, x11, x10, 0xfffff7ff, 0xfffff7ff, 0, x2, 56, x3)

# rs1_val == -4097, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffefff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xffff, 0xffffefff, 16, x2, 60, x3)

# rs1_val == -8193, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xffffdfff, 31, x2, 64, x3)

# rs1_val == -16385, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7ff, 0xffffbfff, 21, x2, 68, x3)

# rs1_val == -32769, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:27
TEST_IMM_OP( srli, x11, x10, 0x1f, 0xffff7fff, 27, x2, 72, x3)

# rs1_val == -65537, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1fffd, 0xfffeffff, 15, x2, 76, x3)

# rs1_val == -262145, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:30
TEST_IMM_OP( srli, x11, x10, 0x3, 0xfffbffff, 30, x2, 80, x3)

# rs1_val == -524289, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7ffb, 0xfff7ffff, 17, x2, 84, x3)

# rs1_val == -2097153, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xffdfff, 0xffdfffff, 8, x2, 88, x3)

# rs1_val == -8388609, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xff7fff, 0xff7fffff, 8, x2, 92, x3)

# rs1_val == -16777217, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fdfff, 0xfeffffff, 11, x2, 96, x3)

# rs1_val == -33554433, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7ef, 0xfdffffff, 21, x2, 100, x3)

# rs1_val == -67108865, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1f7ffff, 0xfbffffff, 7, x2, 104, x3)

# rs1_val == -134217729, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xf7ff, 0xf7ffffff, 16, x2, 108, x3)

# rs1_val == -268435457, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xefffffff;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x77fff, 0xefffffff, 13, x2, 112, x3)

# rs1_val == -9, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1ffffff, 0xfffffff7, 7, x2, 116, x3)

# rs1_val == 4194304, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00400000;  immval:16
TEST_IMM_OP( srli, x11, x10, 0x40, 0x00400000, 16, x2, 120, x3)

# rs1_val == 8388608, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x00800000;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x10000, 0x00800000, 7, x2, 124, x3)

# rs1_val == 16777216, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x01000000;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x800000, 0x01000000, 1, x2, 128, x3)

# rs1_val == 33554432, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x02000000;  immval:16
TEST_IMM_OP( srli, x11, x10, 0x200, 0x02000000, 16, x2, 132, x3)

# rs1_val == -536870913, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xdffff, 0xdfffffff, 12, x2, 136, x3)

# rs1_val == 536870912, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x20000000;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x1000000, 0x20000000, 5, x2, 140, x3)

# rs1_val == -1073741825, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xbfff, 0xbfffffff, 16, x2, 144, x3)

# rs1_val == 1431655765, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x55555555;  immval:16
TEST_IMM_OP( srli, x11, x10, 0x5555, 0x55555555, 16, x2, 148, x3)

# rs1_val == -1431655766, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x555555, 0xaaaaaaaa, 9, x2, 152, x3)

# rs1_val == -3, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xffff, 0xfffffffd, 16, x2, 156, x3)

# rs1_val == -5, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:30
TEST_IMM_OP( srli, x11, x10, 0x3, 0xfffffffb, 30, x2, 160, x3)

# rs1_val == -33, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x7fffff, 0xffffffdf, 9, x2, 164, x3)

# rs1_val == -65, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xffffff, 0xffffffbf, 8, x2, 168, x3)

# rs1_val == -257, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xfffffeff, 19, x2, 172, x3)

# rs1_val > 0 and imm_val > 0 and imm_val < xlen, imm_val == 15, rs1_val == 16384
# opcode: srli ; op1:x10; dest:x11; op1val:0x00004000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x0, 0x00004000, 15, x2, 176, x3)

# imm_val == 27, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffff6;  immval:27
TEST_IMM_OP( srli, x11, x10, 0x1f, 0xfffffff6, 27, x2, 180, x3)

# imm_val == 10, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x3fefff, 0xffbfffff, 10, x2, 184, x3)
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

signature_x12_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x12_1:
    .fill 25*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 47*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
