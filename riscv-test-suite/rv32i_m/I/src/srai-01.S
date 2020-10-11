
#This assembly file tests the srai instruction of the RISC-V I extension for the srai covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srai)

la x5,signature_x5_1

# rs1 == rd, rs1==x2, rd==x2, rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -1025, imm_val == 23
# opcode: srai ; op1:x2; dest:x2; op1val:0xfffffbff;  immval:23
TEST_IMM_OP( srai, x2, x2, 0x1ff, 0xfffffbff, 23, x5, 0, x12)

# rs1 != rd, rs1==x4, rd==x10, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 1048576, imm_val == 4
# opcode: srai ; op1:x4; dest:x10; op1val:0x00100000;  immval:4
TEST_IMM_OP( srai, x10, x4, 0x10000, 0x00100000, 4, x5, 4, x12)

# rs1==x15, rd==x19, rs1_val < 0 and imm_val == 0, rs1_val == -257
# opcode: srai ; op1:x15; dest:x19; op1val:0xfffffeff;  immval:0
TEST_IMM_OP( srai, x19, x15, 0xfffffeff, 0xfffffeff, 0, x5, 8, x12)

# rs1==x18, rd==x17, rs1_val > 0 and imm_val == 0, 
# opcode: srai ; op1:x18; dest:x17; op1val:0x00000009;  immval:0
TEST_IMM_OP( srai, x17, x18, 0x9, 0x00000009, 0, x5, 12, x12)

# rs1==x1, rd==x27, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -9
# opcode: srai ; op1:x1; dest:x27; op1val:0xfffffff7;  immval:31
TEST_IMM_OP( srai, x27, x1, 0x1, 0xfffffff7, 31, x5, 16, x12)

# rs1==x17, rd==x3, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 2097152
# opcode: srai ; op1:x17; dest:x3; op1val:0x00200000;  immval:31
TEST_IMM_OP( srai, x3, x17, 0x0, 0x00200000, 31, x5, 20, x12)

# rs1==x10, rd==x4, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, 
# opcode: srai ; op1:x10; dest:x4; op1val:0x00000003;  immval:3
TEST_IMM_OP( srai, x4, x10, 0x0, 0x00000003, 3, x5, 24, x12)

# rs1==x14, rd==x7, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -2147483648
# opcode: srai ; op1:x14; dest:x7; op1val:0x80000000;  immval:7
TEST_IMM_OP( srai, x7, x14, 0x1000000, 0x80000000, 7, x5, 28, x12)

# rs1==x30, rd==x18, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: srai ; op1:x30; dest:x18; op1val:0x00000000;  immval:31
TEST_IMM_OP( srai, x18, x30, 0x0, 0x00000000, 31, x5, 32, x12)

# rs1==x16, rd==x25, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 2147483647
# opcode: srai ; op1:x16; dest:x25; op1val:0x7fffffff;  immval:0
TEST_IMM_OP( srai, x25, x16, 0x7fffffff, 0x7fffffff, 0, x5, 36, x12)

# rs1==x7, rd==x14, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, imm_val == 1, rs1_val == 1
# opcode: srai ; op1:x7; dest:x14; op1val:0x00000001;  immval:1
TEST_IMM_OP( srai, x14, x7, 0x0, 0x00000001, 1, x5, 40, x12)

# rs1==x21, rd==x9, imm_val == 2, rs1_val == 32768
# opcode: srai ; op1:x21; dest:x9; op1val:0x00008000;  immval:2
TEST_IMM_OP( srai, x9, x21, 0x2000, 0x00008000, 2, x5, 44, x12)

# rs1==x11, rd==x31, imm_val == 8, rs1_val == 1024
# opcode: srai ; op1:x11; dest:x31; op1val:0x00000400;  immval:8
TEST_IMM_OP( srai, x31, x11, 0x4, 0x00000400, 8, x5, 48, x12)

# rs1==x20, rd==x1, imm_val == 16, rs1_val == -32769
# opcode: srai ; op1:x20; dest:x1; op1val:0xffff7fff;  immval:16
TEST_IMM_OP( srai, x1, x20, 0xffff, 0xffff7fff, 16, x5, 52, x12)

# rs1==x24, rd==x13, imm_val == 30, 
# opcode: srai ; op1:x24; dest:x13; op1val:0x00000001;  immval:30
TEST_IMM_OP( srai, x13, x24, 0x0, 0x00000001, 30, x5, 56, x12)

# rs1==x6, rd==x29, imm_val == 29, rs1_val == -5
# opcode: srai ; op1:x6; dest:x29; op1val:0xfffffffb;  immval:29
TEST_IMM_OP( srai, x29, x6, 0x7, 0xfffffffb, 29, x5, 60, x12)

# rs1==x23, rd==x24, imm_val == 27, rs1_val == 16777216
# opcode: srai ; op1:x23; dest:x24; op1val:0x01000000;  immval:27
TEST_IMM_OP( srai, x24, x23, 0x0, 0x01000000, 27, x5, 64, x12)

# rs1==x0, rd==x23, imm_val == 15, rs1_val == 2048
# opcode: srai ; op1:x0; dest:x23; op1val:0x00000800;  immval:15
TEST_IMM_OP( srai, x23, x0, 0x0, 0x00000800, 15, x5, 68, x12)

# rs1==x29, rd==x30, imm_val == 21, rs1_val == 1431655765
# opcode: srai ; op1:x29; dest:x30; op1val:0x55555555;  immval:21
TEST_IMM_OP( srai, x30, x29, 0x2aa, 0x55555555, 21, x5, 72, x12)

# rs1==x22, rd==x16, imm_val == 10, rs1_val == 131072
# opcode: srai ; op1:x22; dest:x16; op1val:0x00020000;  immval:10
TEST_IMM_OP( srai, x16, x22, 0x80, 0x00020000, 10, x5, 76, x12)

# rs1==x8, rd==x22, rs1_val == 2, 
# opcode: srai ; op1:x8; dest:x22; op1val:0x00000002;  immval:10
TEST_IMM_OP( srai, x22, x8, 0x0, 0x00000002, 10, x5, 80, x12)

# rs1==x27, rd==x28, rs1_val == 4, 
# opcode: srai ; op1:x27; dest:x28; op1val:0x00000004;  immval:31
TEST_IMM_OP( srai, x28, x27, 0x0, 0x00000004, 31, x5, 84, x2)
la x1,signature_x1_0

# rs1==x25, rd==x0, rs1_val == 8, 
# opcode: srai ; op1:x25; dest:x0; op1val:0x00000008;  immval:21
TEST_IMM_OP( srai, x0, x25, 0x0, 0x00000008, 21, x1, 0, x2)

# rs1==x26, rd==x5, rs1_val == 16, 
# opcode: srai ; op1:x26; dest:x5; op1val:0x00000010;  immval:10
TEST_IMM_OP( srai, x5, x26, 0x0, 0x00000010, 10, x1, 4, x2)

# rs1==x13, rd==x26, rs1_val == 32, 
# opcode: srai ; op1:x13; dest:x26; op1val:0x00000020;  immval:8
TEST_IMM_OP( srai, x26, x13, 0x0, 0x00000020, 8, x1, 8, x2)

# rs1==x19, rd==x11, rs1_val == 64, 
# opcode: srai ; op1:x19; dest:x11; op1val:0x00000040;  immval:13
TEST_IMM_OP( srai, x11, x19, 0x0, 0x00000040, 13, x1, 12, x2)

# rs1==x3, rd==x8, rs1_val == 128, 
# opcode: srai ; op1:x3; dest:x8; op1val:0x00000080;  immval:15
TEST_IMM_OP( srai, x8, x3, 0x0, 0x00000080, 15, x1, 16, x2)

# rs1==x31, rd==x21, rs1_val == 256, 
# opcode: srai ; op1:x31; dest:x21; op1val:0x00000100;  immval:6
TEST_IMM_OP( srai, x21, x31, 0x4, 0x00000100, 6, x1, 20, x2)

# rs1==x9, rd==x15, rs1_val == 512, 
# opcode: srai ; op1:x9; dest:x15; op1val:0x00000200;  immval:10
TEST_IMM_OP( srai, x15, x9, 0x0, 0x00000200, 10, x1, 24, x2)

# rs1==x28, rd==x12, rs1_val == 4096, 
# opcode: srai ; op1:x28; dest:x12; op1val:0x00001000;  immval:2
TEST_IMM_OP( srai, x12, x28, 0x400, 0x00001000, 2, x1, 28, x2)

# rs1==x12, rd==x6, rs1_val == 8192, 
# opcode: srai ; op1:x12; dest:x6; op1val:0x00002000;  immval:2
TEST_IMM_OP( srai, x6, x12, 0x800, 0x00002000, 2, x1, 32, x2)

# rs1==x5, rd==x20, rs1_val == 16384, 
# opcode: srai ; op1:x5; dest:x20; op1val:0x00004000;  immval:13
TEST_IMM_OP( srai, x20, x5, 0x2, 0x00004000, 13, x1, 36, x2)

# rs1_val == 65536, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00010000;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x200, 0x00010000, 7, x1, 40, x2)

# rs1_val == 262144, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00040000;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x40000, 0x00040000, 0, x1, 44, x2)

# rs1_val == 524288, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00080000;  immval:23
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00080000, 23, x1, 48, x2)

# rs1_val == 4194304, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00400000;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x1000, 0x00400000, 10, x1, 52, x2)

# rs1_val == 8388608, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00800000;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x4000, 0x00800000, 9, x1, 56, x2)

# rs1_val == 33554432, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x02000000;  immval:12
TEST_IMM_OP( srai, x11, x10, 0x2000, 0x02000000, 12, x1, 60, x2)

# rs1_val == 67108864, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x04000000;  immval:30
TEST_IMM_OP( srai, x11, x10, 0x0, 0x04000000, 30, x1, 64, x2)

# rs1_val == -513, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xfffffdff, 10, x1, 68, x2)

# rs1_val == -2049, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xfffff7ff, 0xfffff7ff, 0, x1, 72, x2)

# rs1_val == -4097, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffefff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7ff, 0xffffefff, 21, x1, 76, x2)

# rs1_val == -8193, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3fff, 0xffffdfff, 18, x1, 80, x2)

# rs1_val == -16385, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:23
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xffffbfff, 23, x1, 84, x2)

# rs1_val == -65537, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xfffeff, 0xfffeffff, 8, x1, 88, x2)

# rs1_val == -131073, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x7ffeff, 0xfffdffff, 9, x1, 92, x2)

# rs1_val == -262145, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xfffbff, 0xfffbffff, 8, x1, 96, x2)

# rs1_val == -524289, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x7ffb, 0xfff7ffff, 17, x1, 100, x2)

# rs1_val == -1048577, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffefffff;  immval:23
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xffefffff, 23, x1, 104, x2)

# rs1_val == -2097153, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:27
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xffdfffff, 27, x1, 108, x2)

# rs1_val == -4194305, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7fd, 0xffbfffff, 21, x1, 112, x2)

# rs1_val == -8388609, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xff7fffff, 0xff7fffff, 0, x1, 116, x2)

# rs1_val == -16777217, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfefff, 0xfeffffff, 12, x1, 120, x2)

# rs1_val == -33554433, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1fbff, 0xfdffffff, 15, x1, 124, x2)

# rs1_val == -67108865, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:29
TEST_IMM_OP( srai, x11, x10, 0x7, 0xfbffffff, 29, x1, 128, x2)

# rs1_val == -3, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xffffff, 0xfffffffd, 8, x1, 132, x2)

# rs1_val == -33, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1ffffff, 0xffffffdf, 7, x1, 136, x2)

# rs1_val == -134217729, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x7bffff, 0xf7ffffff, 9, x1, 140, x2)

# rs1_val == 134217728, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x08000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x08000000, 31, x1, 144, x2)

# rs1_val == -268435457, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xefffffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xeffffff, 0xefffffff, 4, x1, 148, x2)

# rs1_val == 268435456, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x10000000;  immval:12
TEST_IMM_OP( srai, x11, x10, 0x10000, 0x10000000, 12, x1, 152, x2)

# rs1_val == -536870913, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x6ffff, 0xdfffffff, 13, x1, 156, x2)

# rs1_val == 536870912, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x20000000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x1000, 0x20000000, 17, x1, 160, x2)

# rs1_val == -1073741825, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:27
TEST_IMM_OP( srai, x11, x10, 0x17, 0xbfffffff, 27, x1, 164, x2)

# rs1_val == 1073741824, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x40000000;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x8000000, 0x40000000, 3, x1, 168, x2)

# rs1_val == -2, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1fffffff, 0xfffffffe, 3, x1, 172, x2)

# rs1_val == -1431655766, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1555555, 0xaaaaaaaa, 7, x1, 176, x2)

# rs1_val == -17, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffef;  immval:23
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xffffffef, 23, x1, 180, x2)

# rs1_val == -65, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7fffffd, 0xffffffbf, 5, x1, 184, x2)

# rs1_val == -129, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fff, 0xffffff7f, 19, x1, 188, x2)

# rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -1025, imm_val == 23
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:23
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xfffffbff, 23, x1, 192, x2)

# imm_val == 15, rs1_val == 2048
# opcode: srai ; op1:x10; dest:x11; op1val:0x00000800;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00000800, 15, x1, 196, x2)

# rs1_val == 8, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00000008;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00000008, 21, x1, 200, x2)
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
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 51*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
