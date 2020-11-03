
#This assembly file tests the srai instruction of the RISC-V I extension for the srai covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srai)

RVTEST_SIGBASE( x4,signature_x4_1)

# rs1 != rd, rs1==x31, rd==x5, rs1_val < 0 and imm_val > 0 and imm_val < xlen, imm_val == 30, rs1_val == -32769
# opcode: srai ; op1:x31; dest:x5; op1val:0xffff7fff;  immval:30
TEST_IMM_OP( srai, x5, x31, 0x3, 0xffff7fff, 30, x4, 0, x13)

# rs1 == rd, rs1==x29, rd==x29, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 512
# opcode: srai ; op1:x29; dest:x29; op1val:0x00000200;  immval:14
TEST_IMM_OP( srai, x29, x29, 0x0, 0x00000200, 14, x4, 4, x13)

# rs1==x28, rd==x12, rs1_val < 0 and imm_val == 0, rs1_val == -2049
# opcode: srai ; op1:x28; dest:x12; op1val:0xfffff7ff;  immval:0
TEST_IMM_OP( srai, x12, x28, 0xfffff7ff, 0xfffff7ff, 0, x4, 8, x13)

# rs1==x3, rd==x31, rs1_val > 0 and imm_val == 0, 
# opcode: srai ; op1:x3; dest:x31; op1val:0x00000007;  immval:0
TEST_IMM_OP( srai, x31, x3, 0x7, 0x00000007, 0, x4, 12, x13)

# rs1==x7, rd==x24, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -33554433
# opcode: srai ; op1:x7; dest:x24; op1val:0xfdffffff;  immval:31
TEST_IMM_OP( srai, x24, x7, 0x1, 0xfdffffff, 31, x4, 16, x13)

# rs1==x8, rd==x0, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 16384
# opcode: srai ; op1:x8; dest:x0; op1val:0x00004000;  immval:31
TEST_IMM_OP( srai, x0, x8, 0x0, 0x00004000, 31, x4, 20, x13)

# rs1==x24, rd==x27, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, imm_val == 1, rs1_val == 1
# opcode: srai ; op1:x24; dest:x27; op1val:0x00000001;  immval:1
TEST_IMM_OP( srai, x27, x24, 0x0, 0x00000001, 1, x4, 24, x13)

# rs1==x12, rd==x25, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -2147483648
# opcode: srai ; op1:x12; dest:x25; op1val:0x80000000;  immval:18
TEST_IMM_OP( srai, x25, x12, 0x2000, 0x80000000, 18, x4, 28, x13)

# rs1==x2, rd==x26, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: srai ; op1:x2; dest:x26; op1val:0x00000000;  immval:5
TEST_IMM_OP( srai, x26, x2, 0x0, 0x00000000, 5, x4, 32, x13)

# rs1==x23, rd==x15, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 2147483647
# opcode: srai ; op1:x23; dest:x15; op1val:0x7fffffff;  immval:6
TEST_IMM_OP( srai, x15, x23, 0x1ffffff, 0x7fffffff, 6, x4, 36, x13)

# rs1==x10, rd==x6, imm_val == 2, rs1_val == 1431655765
# opcode: srai ; op1:x10; dest:x6; op1val:0x55555555;  immval:2
TEST_IMM_OP( srai, x6, x10, 0x15555555, 0x55555555, 2, x4, 40, x13)

# rs1==x17, rd==x9, imm_val == 4, rs1_val == 16
# opcode: srai ; op1:x17; dest:x9; op1val:0x00000010;  immval:4
TEST_IMM_OP( srai, x9, x17, 0x1, 0x00000010, 4, x4, 44, x13)

# rs1==x20, rd==x30, imm_val == 8, rs1_val == 1073741824
# opcode: srai ; op1:x20; dest:x30; op1val:0x40000000;  immval:8
TEST_IMM_OP( srai, x30, x20, 0x400000, 0x40000000, 8, x4, 48, x13)

# rs1==x22, rd==x21, imm_val == 16, rs1_val == -524289
# opcode: srai ; op1:x22; dest:x21; op1val:0xfff7ffff;  immval:16
TEST_IMM_OP( srai, x21, x22, 0xfff7, 0xfff7ffff, 16, x4, 52, x13)

# rs1==x26, rd==x16, imm_val == 29, rs1_val == -5
# opcode: srai ; op1:x26; dest:x16; op1val:0xfffffffb;  immval:29
TEST_IMM_OP( srai, x16, x26, 0x7, 0xfffffffb, 29, x4, 56, x13)

# rs1==x14, rd==x18, imm_val == 27, rs1_val == 16777216
# opcode: srai ; op1:x14; dest:x18; op1val:0x01000000;  immval:27
TEST_IMM_OP( srai, x18, x14, 0x0, 0x01000000, 27, x4, 60, x13)

# rs1==x0, rd==x17, imm_val == 23, rs1_val == -536870913
# opcode: srai ; op1:x0; dest:x17; op1val:0xdfffffff;  immval:23
TEST_IMM_OP( srai, x17, x0, 0x1bf, 0xdfffffff, 23, x4, 64, x13)

# rs1==x1, rd==x11, imm_val == 15, rs1_val == 4096
# opcode: srai ; op1:x1; dest:x11; op1val:0x00001000;  immval:15
TEST_IMM_OP( srai, x11, x1, 0x0, 0x00001000, 15, x4, 68, x13)
RVTEST_SIGBASE( x12,signature_x12_0)

# rs1==x25, rd==x14, imm_val == 21, rs1_val == 268435456
# opcode: srai ; op1:x25; dest:x14; op1val:0x10000000;  immval:21
TEST_IMM_OP( srai, x14, x25, 0x80, 0x10000000, 21, x12, 0, x17)

# rs1==x13, rd==x20, imm_val == 10, 
# opcode: srai ; op1:x13; dest:x20; op1val:0x00000010;  immval:10
TEST_IMM_OP( srai, x20, x13, 0x0, 0x00000010, 10, x12, 4, x17)

# rs1==x18, rd==x13, rs1_val == 2, 
# opcode: srai ; op1:x18; dest:x13; op1val:0x00000002;  immval:15
TEST_IMM_OP( srai, x13, x18, 0x0, 0x00000002, 15, x12, 8, x17)

# rs1==x6, rd==x2, rs1_val == 4, 
# opcode: srai ; op1:x6; dest:x2; op1val:0x00000004;  immval:17
TEST_IMM_OP( srai, x2, x6, 0x0, 0x00000004, 17, x12, 12, x17)

# rs1==x19, rd==x10, rs1_val == 8, 
# opcode: srai ; op1:x19; dest:x10; op1val:0x00000008;  immval:5
TEST_IMM_OP( srai, x10, x19, 0x0, 0x00000008, 5, x12, 16, x17)

# rs1==x21, rd==x28, rs1_val == 32, 
# opcode: srai ; op1:x21; dest:x28; op1val:0x00000020;  immval:9
TEST_IMM_OP( srai, x28, x21, 0x0, 0x00000020, 9, x12, 20, x17)

# rs1==x27, rd==x3, rs1_val == 64, 
# opcode: srai ; op1:x27; dest:x3; op1val:0x00000040;  immval:23
TEST_IMM_OP( srai, x3, x27, 0x0, 0x00000040, 23, x12, 24, x17)

# rs1==x30, rd==x1, rs1_val == 128, 
# opcode: srai ; op1:x30; dest:x1; op1val:0x00000080;  immval:2
TEST_IMM_OP( srai, x1, x30, 0x20, 0x00000080, 2, x12, 28, x17)

# rs1==x15, rd==x8, rs1_val == 256, 
# opcode: srai ; op1:x15; dest:x8; op1val:0x00000100;  immval:8
TEST_IMM_OP( srai, x8, x15, 0x1, 0x00000100, 8, x12, 32, x17)

# rs1==x4, rd==x19, rs1_val == 1024, 
# opcode: srai ; op1:x4; dest:x19; op1val:0x00000400;  immval:14
TEST_IMM_OP( srai, x19, x4, 0x0, 0x00000400, 14, x12, 36, x17)

# rs1==x16, rd==x4, rs1_val == 2048, 
# opcode: srai ; op1:x16; dest:x4; op1val:0x00000800;  immval:19
TEST_IMM_OP( srai, x4, x16, 0x0, 0x00000800, 19, x12, 40, x17)

# rs1==x9, rd==x7, rs1_val == 8192, 
# opcode: srai ; op1:x9; dest:x7; op1val:0x00002000;  immval:27
TEST_IMM_OP( srai, x7, x9, 0x0, 0x00002000, 27, x12, 44, x17)

# rs1==x5, rd==x22, rs1_val == 32768, 
# opcode: srai ; op1:x5; dest:x22; op1val:0x00008000;  immval:13
TEST_IMM_OP( srai, x22, x5, 0x4, 0x00008000, 13, x12, 48, x17)

# rs1==x11, rd==x23, rs1_val == 65536, 
# opcode: srai ; op1:x11; dest:x23; op1val:0x00010000;  immval:23
TEST_IMM_OP( srai, x23, x11, 0x0, 0x00010000, 23, x12, 52, x17)

# rs1_val == 131072, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00020000;  immval:27
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00020000, 27, x12, 56, x17)

# rs1_val == 262144, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00040000;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00040000, 21, x12, 60, x17)

# rs1_val == 524288, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00080000;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x2, 0x00080000, 18, x12, 64, x17)

# rs1_val == 1048576, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00100000;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x2000, 0x00100000, 7, x12, 68, x17)

# rs1_val == 2097152, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00200000;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x8, 0x00200000, 18, x12, 72, x17)

# rs1_val == 4194304, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00400000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00400000, 31, x12, 76, x17)

# rs1_val == -513, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffff, 0xfffffdff, 12, x12, 80, x17)

# rs1_val == -1025, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7ff, 0xfffffbff, 21, x12, 84, x17)

# rs1_val == -4097, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffefff;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1ffffdf, 0xffffefff, 7, x12, 88, x17)

# rs1_val == -8193, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:30
TEST_IMM_OP( srai, x11, x10, 0x3, 0xffffdfff, 30, x12, 92, x17)

# rs1_val == -16385, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:30
TEST_IMM_OP( srai, x11, x10, 0x3, 0xffffbfff, 30, x12, 96, x17)

# rs1_val == -65537, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:27
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xfffeffff, 27, x12, 100, x17)

# rs1_val == -131073, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffefff, 0xfffdffff, 5, x12, 104, x17)

# rs1_val == -262145, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffbfff, 0xfffbffff, 4, x12, 108, x17)

# rs1_val == -1048577, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffefffff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffbf, 0xffefffff, 14, x12, 112, x17)

# rs1_val == -2097153, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:23
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xffdfffff, 23, x12, 116, x17)

# rs1_val == -4194305, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xffbff, 0xffbfffff, 12, x12, 120, x17)

# rs1_val == -8388609, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:27
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xff7fffff, 27, x12, 124, x17)

# rs1_val == -16777217, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xfeffffff, 0xfeffffff, 0, x12, 128, x17)

# rs1_val == -67108865, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3effffff, 0xfbffffff, 2, x12, 132, x17)

# rs1_val == -134217729, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1effff, 0xf7ffffff, 11, x12, 136, x17)

# rs1_val == -268435457, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xefffffff;  immval:29
TEST_IMM_OP( srai, x11, x10, 0x7, 0xefffffff, 29, x12, 140, x17)

# rs1_val == -9, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x7fff, 0xfffffff7, 17, x12, 144, x17)

# rs1_val == 8388608, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00800000;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x10, 0x00800000, 19, x12, 148, x17)

# rs1_val == 33554432, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x02000000;  immval:29
TEST_IMM_OP( srai, x11, x10, 0x0, 0x02000000, 29, x12, 152, x17)

# rs1_val == 67108864, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x04000000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x2000, 0x04000000, 13, x12, 156, x17)

# rs1_val == 134217728, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x08000000;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x100, 0x08000000, 19, x12, 160, x17)

# rs1_val == 536870912, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x20000000;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x100, 0x20000000, 21, x12, 164, x17)

# rs1_val == -1073741825, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x2ffff, 0xbfffffff, 14, x12, 168, x17)

# rs1_val == -2, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xffffff, 0xfffffffe, 8, x12, 172, x17)

# rs1_val == -1431655766, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x5555555, 0xaaaaaaaa, 5, x12, 176, x17)

# rs1_val == -3, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xffffff, 0xfffffffd, 8, x12, 180, x17)

# rs1_val == -17, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffef;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3ffffff, 0xffffffef, 6, x12, 184, x17)

# rs1_val == -33, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1ffffff, 0xffffffdf, 7, x12, 188, x17)

# rs1_val == -65, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:16
TEST_IMM_OP( srai, x11, x10, 0xffff, 0xffffffbf, 16, x12, 192, x17)

# rs1_val == -129, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffff, 0xffffff7f, 12, x12, 196, x17)

# rs1_val == -257, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7ff, 0xfffffeff, 21, x12, 200, x17)

# rs1_val > 0 and imm_val == (xlen-1), rs1_val == 16384
# opcode: srai ; op1:x10; dest:x11; op1val:0x00004000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00004000, 31, x12, 204, x17)

# imm_val == 23, rs1_val == -536870913
# opcode: srai ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:23
TEST_IMM_OP( srai, x11, x10, 0x1bf, 0xdfffffff, 23, x12, 208, x17)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x12_0:
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
