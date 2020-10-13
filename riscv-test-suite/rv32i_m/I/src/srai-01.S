
#This assembly file tests the srai instruction of the RISC-V I extension for the srai covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srai)

RVTEST_SIGBASE( x5,signature_x5_1)

# rs1 != rd, rs1==x21, rd==x23, rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -33554433
# opcode: srai ; op1:x21; dest:x23; op1val:0xfdffffff;  immval:3
TEST_IMM_OP( srai, x23, x21, 0x1fbfffff, 0xfdffffff, 3, x5, 0, x7)

# rs1 == rd, rs1==x9, rd==x9, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 512, imm_val == 29
# opcode: srai ; op1:x9; dest:x9; op1val:0x00000200;  immval:29
TEST_IMM_OP( srai, x9, x9, 0x0, 0x00000200, 29, x5, 4, x7)

# rs1==x25, rd==x3, rs1_val < 0 and imm_val == 0, rs1_val == -1073741825
# opcode: srai ; op1:x25; dest:x3; op1val:0xbfffffff;  immval:0
TEST_IMM_OP( srai, x3, x25, 0xbfffffff, 0xbfffffff, 0, x5, 8, x7)

# rs1==x6, rd==x12, rs1_val > 0 and imm_val == 0, rs1_val == 8192
# opcode: srai ; op1:x6; dest:x12; op1val:0x00002000;  immval:0
TEST_IMM_OP( srai, x12, x6, 0x2000, 0x00002000, 0, x5, 12, x7)

# rs1==x13, rd==x25, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -8193
# opcode: srai ; op1:x13; dest:x25; op1val:0xffffdfff;  immval:31
TEST_IMM_OP( srai, x25, x13, 0x1, 0xffffdfff, 31, x5, 16, x7)

# rs1==x4, rd==x13, rs1_val > 0 and imm_val == (xlen-1), rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 2147483647
# opcode: srai ; op1:x4; dest:x13; op1val:0x7fffffff;  immval:31
TEST_IMM_OP( srai, x13, x4, 0x0, 0x7fffffff, 31, x5, 20, x7)

# rs1==x26, rd==x2, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, imm_val == 1, rs1_val == 1
# opcode: srai ; op1:x26; dest:x2; op1val:0x00000001;  immval:1
TEST_IMM_OP( srai, x2, x26, 0x0, 0x00000001, 1, x5, 24, x7)

# rs1==x19, rd==x26, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -2147483648
# opcode: srai ; op1:x19; dest:x26; op1val:0x80000000;  immval:0
TEST_IMM_OP( srai, x26, x19, 0x80000000, 0x80000000, 0, x5, 28, x7)

# rs1==x11, rd==x8, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, imm_val == 10
# opcode: srai ; op1:x11; dest:x8; op1val:0x00000000;  immval:10
TEST_IMM_OP( srai, x8, x11, 0x0, 0x00000000, 10, x5, 32, x7)

# rs1==x3, rd==x6, imm_val == 2, rs1_val == -131073
# opcode: srai ; op1:x3; dest:x6; op1val:0xfffdffff;  immval:2
TEST_IMM_OP( srai, x6, x3, 0x3fff7fff, 0xfffdffff, 2, x5, 36, x7)

# rs1==x0, rd==x28, imm_val == 4, rs1_val == 16777216
# opcode: srai ; op1:x0; dest:x28; op1val:0x01000000;  immval:4
TEST_IMM_OP( srai, x28, x0, 0x100000, 0x01000000, 4, x5, 40, x7)

# rs1==x10, rd==x24, imm_val == 8, rs1_val == -268435457
# opcode: srai ; op1:x10; dest:x24; op1val:0xefffffff;  immval:8
TEST_IMM_OP( srai, x24, x10, 0xefffff, 0xefffffff, 8, x5, 44, x7)

# rs1==x23, rd==x30, imm_val == 16, rs1_val == -536870913
# opcode: srai ; op1:x23; dest:x30; op1val:0xdfffffff;  immval:16
TEST_IMM_OP( srai, x30, x23, 0xdfff, 0xdfffffff, 16, x5, 48, x7)

# rs1==x17, rd==x15, imm_val == 30, rs1_val == 4
# opcode: srai ; op1:x17; dest:x15; op1val:0x00000004;  immval:30
TEST_IMM_OP( srai, x15, x17, 0x0, 0x00000004, 30, x5, 52, x7)

# rs1==x30, rd==x20, imm_val == 27, 
# opcode: srai ; op1:x30; dest:x20; op1val:0x00000001;  immval:27
TEST_IMM_OP( srai, x20, x30, 0x0, 0x00000001, 27, x5, 56, x7)

# rs1==x28, rd==x29, imm_val == 23, rs1_val == -4194305
# opcode: srai ; op1:x28; dest:x29; op1val:0xffbfffff;  immval:23
TEST_IMM_OP( srai, x29, x28, 0x1ff, 0xffbfffff, 23, x5, 60, x7)

# rs1==x12, rd==x1, imm_val == 15, rs1_val == 16
# opcode: srai ; op1:x12; dest:x1; op1val:0x00000010;  immval:15
TEST_IMM_OP( srai, x1, x12, 0x0, 0x00000010, 15, x5, 64, x7)

# rs1==x24, rd==x19, imm_val == 21, rs1_val == 2
# opcode: srai ; op1:x24; dest:x19; op1val:0x00000002;  immval:21
TEST_IMM_OP( srai, x19, x24, 0x0, 0x00000002, 21, x5, 68, x7)

# rs1==x8, rd==x31, rs1_val == 8, 
# opcode: srai ; op1:x8; dest:x31; op1val:0x00000008;  immval:3
TEST_IMM_OP( srai, x31, x8, 0x1, 0x00000008, 3, x5, 72, x7)

# rs1==x27, rd==x11, rs1_val == 32, 
# opcode: srai ; op1:x27; dest:x11; op1val:0x00000020;  immval:5
TEST_IMM_OP( srai, x11, x27, 0x1, 0x00000020, 5, x5, 76, x7)

# rs1==x15, rd==x17, rs1_val == 64, 
# opcode: srai ; op1:x15; dest:x17; op1val:0x00000040;  immval:16
TEST_IMM_OP( srai, x17, x15, 0x0, 0x00000040, 16, x5, 80, x7)

# rs1==x29, rd==x4, rs1_val == 128, 
# opcode: srai ; op1:x29; dest:x4; op1val:0x00000080;  immval:23
TEST_IMM_OP( srai, x4, x29, 0x0, 0x00000080, 23, x5, 84, x7)

# rs1==x31, rd==x22, rs1_val == 256, 
# opcode: srai ; op1:x31; dest:x22; op1val:0x00000100;  immval:9
TEST_IMM_OP( srai, x22, x31, 0x0, 0x00000100, 9, x5, 88, x7)

# rs1==x2, rd==x16, rs1_val == 1024, 
# opcode: srai ; op1:x2; dest:x16; op1val:0x00000400;  immval:1
TEST_IMM_OP( srai, x16, x2, 0x200, 0x00000400, 1, x5, 92, x7)

# rs1==x22, rd==x14, rs1_val == 2048, 
# opcode: srai ; op1:x22; dest:x14; op1val:0x00000800;  immval:21
TEST_IMM_OP( srai, x14, x22, 0x0, 0x00000800, 21, x5, 96, x3)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x18, rd==x5, rs1_val == 4096, 
# opcode: srai ; op1:x18; dest:x5; op1val:0x00001000;  immval:12
TEST_IMM_OP( srai, x5, x18, 0x1, 0x00001000, 12, x2, 0, x3)

# rs1==x7, rd==x27, rs1_val == 16384, 
# opcode: srai ; op1:x7; dest:x27; op1val:0x00004000;  immval:1
TEST_IMM_OP( srai, x27, x7, 0x2000, 0x00004000, 1, x2, 4, x3)

# rs1==x20, rd==x21, rs1_val == 32768, 
# opcode: srai ; op1:x20; dest:x21; op1val:0x00008000;  immval:23
TEST_IMM_OP( srai, x21, x20, 0x0, 0x00008000, 23, x2, 8, x3)

# rs1==x1, rd==x18, rs1_val == 65536, 
# opcode: srai ; op1:x1; dest:x18; op1val:0x00010000;  immval:7
TEST_IMM_OP( srai, x18, x1, 0x200, 0x00010000, 7, x2, 12, x3)

# rs1==x5, rd==x0, rs1_val == 131072, 
# opcode: srai ; op1:x5; dest:x0; op1val:0x00020000;  immval:14
TEST_IMM_OP( srai, x0, x5, 0x8, 0x00020000, 14, x2, 16, x3)

# rs1==x16, rd==x10, rs1_val == 262144, 
# opcode: srai ; op1:x16; dest:x10; op1val:0x00040000;  immval:4
TEST_IMM_OP( srai, x10, x16, 0x4000, 0x00040000, 4, x2, 20, x3)

# rs1==x14, rd==x7, rs1_val == 524288, 
# opcode: srai ; op1:x14; dest:x7; op1val:0x00080000;  immval:0
TEST_IMM_OP( srai, x7, x14, 0x80000, 0x00080000, 0, x2, 24, x3)

# rs1_val == 1048576, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00100000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x10000, 0x00100000, 4, x2, 28, x3)

# rs1_val == 2097152, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00200000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x10, 0x00200000, 17, x2, 32, x3)

# rs1_val == 4194304, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00400000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x20, 0x00400000, 17, x2, 36, x3)

# rs1_val == 8388608, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00800000;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x10000, 0x00800000, 7, x2, 40, x3)

# rs1_val == 33554432, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x02000000;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x8000, 0x02000000, 10, x2, 44, x3)

# rs1_val == -513, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xfffffdff, 0xfffffdff, 0, x2, 48, x3)

# rs1_val == -1025, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7ffff, 0xfffffbff, 13, x2, 52, x3)

# rs1_val == -2049, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1ffffeff, 0xfffff7ff, 3, x2, 56, x3)

# rs1_val == -4097, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffefff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1ffffd, 0xffffefff, 11, x2, 60, x3)

# rs1_val == -16385, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3fffefff, 0xffffbfff, 2, x2, 64, x3)

# rs1_val == -32769, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:23
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xffff7fff, 23, x2, 68, x3)

# rs1_val == -65537, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffef, 0xfffeffff, 12, x2, 72, x3)

# rs1_val == -262145, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3ffeffff, 0xfffbffff, 2, x2, 76, x3)

# rs1_val == -524289, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfff7fff, 0xfff7ffff, 4, x2, 80, x3)

# rs1_val == -1048577, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffefffff;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x7ff7ff, 0xffefffff, 9, x2, 84, x3)

# rs1_val == -2097153, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffbf, 0xffdfffff, 15, x2, 88, x3)

# rs1_val == -8388609, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7fbfffff, 0xff7fffff, 1, x2, 92, x3)

# rs1_val == -16777217, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:29
TEST_IMM_OP( srai, x11, x10, 0x7, 0xfeffffff, 29, x2, 96, x3)

# rs1_val == -67108865, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xfbffff, 0xfbffffff, 8, x2, 100, x3)

# rs1_val == -134217729, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1effff, 0xf7ffffff, 11, x2, 104, x3)

# rs1_val == 1431655765, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x55555555;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x55555555, 0x55555555, 0, x2, 108, x3)

# rs1_val == -9, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xfffffff7, 10, x2, 112, x3)

# rs1_val == 67108864, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x04000000;  immval:12
TEST_IMM_OP( srai, x11, x10, 0x4000, 0x04000000, 12, x2, 116, x3)

# rs1_val == 134217728, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x08000000;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x100, 0x08000000, 19, x2, 120, x3)

# rs1_val == 268435456, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x10000000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x8000, 0x10000000, 13, x2, 124, x3)

# rs1_val == 536870912, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x20000000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x1000, 0x20000000, 17, x2, 128, x3)

# rs1_val == 1073741824, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x40000000;  immval:8
TEST_IMM_OP( srai, x11, x10, 0x400000, 0x40000000, 8, x2, 132, x3)

# rs1_val == -2, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1fffffff, 0xfffffffe, 3, x2, 136, x3)

# rs1_val == -1431655766, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x155555, 0xaaaaaaaa, 11, x2, 140, x3)

# rs1_val == -3, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xfffffffd, 0xfffffffd, 0, x2, 144, x3)

# rs1_val == -5, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1fffffff, 0xfffffffb, 3, x2, 148, x3)

# rs1_val == -17, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffef;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffff, 0xffffffef, 12, x2, 152, x3)

# rs1_val == -33, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3fff, 0xffffffdf, 18, x2, 156, x3)

# rs1_val == -65, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:30
TEST_IMM_OP( srai, x11, x10, 0x3, 0xffffffbf, 30, x2, 160, x3)

# rs1_val == -129, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3fff, 0xffffff7f, 18, x2, 164, x3)

# rs1_val == -257, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3fffffb, 0xfffffeff, 6, x2, 168, x3)

# rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 512, imm_val == 29
# opcode: srai ; op1:x10; dest:x11; op1val:0x00000200;  immval:29
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00000200, 29, x2, 172, x3)

# imm_val == 4, rs1_val == 16777216
# opcode: srai ; op1:x10; dest:x11; op1val:0x01000000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x100000, 0x01000000, 4, x2, 176, x3)

# rs1_val == 131072, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00020000;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x8, 0x00020000, 14, x2, 180, x3)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 25*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 46*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
