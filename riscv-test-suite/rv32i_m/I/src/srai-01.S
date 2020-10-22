
#This assembly file tests the srai instruction of the RISC-V I extension for the srai covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srai)

RVTEST_SIGBASE( x15,signature_x15_1)

# rs1 != rd, rs1==x11, rd==x7, rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -33
# opcode: srai ; op1:x11; dest:x7; op1val:0xffffffdf;  immval:14
TEST_IMM_OP( srai, x7, x11, 0x3ffff, 0xffffffdf, 14, x15, 0, x16)

# rs1 == rd, rs1==x30, rd==x30, rs1_val > 0 and imm_val > 0 and imm_val < xlen, imm_val == 30, rs1_val == 256
# opcode: srai ; op1:x30; dest:x30; op1val:0x00000100;  immval:30
TEST_IMM_OP( srai, x30, x30, 0x0, 0x00000100, 30, x15, 4, x16)

# rs1==x13, rd==x23, rs1_val < 0 and imm_val == 0, rs1_val == -2049
# opcode: srai ; op1:x13; dest:x23; op1val:0xfffff7ff;  immval:0
TEST_IMM_OP( srai, x23, x13, 0xfffff7ff, 0xfffff7ff, 0, x15, 8, x16)

# rs1==x31, rd==x12, rs1_val > 0 and imm_val == 0, 
# opcode: srai ; op1:x31; dest:x12; op1val:0x3fffffff;  immval:0
TEST_IMM_OP( srai, x12, x31, 0x3fffffff, 0x3fffffff, 0, x15, 12, x16)

# rs1==x28, rd==x13, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -268435457
# opcode: srai ; op1:x28; dest:x13; op1val:0xefffffff;  immval:31
TEST_IMM_OP( srai, x13, x28, 0x1, 0xefffffff, 31, x15, 16, x16)

# rs1==x21, rd==x29, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 16384
# opcode: srai ; op1:x21; dest:x29; op1val:0x00004000;  immval:31
TEST_IMM_OP( srai, x29, x21, 0x0, 0x00004000, 31, x15, 20, x16)

# rs1==x1, rd==x5, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, rs1_val == 8, imm_val == 8
# opcode: srai ; op1:x1; dest:x5; op1val:0x00000008;  immval:8
TEST_IMM_OP( srai, x5, x1, 0x0, 0x00000008, 8, x15, 24, x16)

# rs1==x17, rd==x8, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -2147483648
# opcode: srai ; op1:x17; dest:x8; op1val:0x80000000;  immval:3
TEST_IMM_OP( srai, x8, x17, 0x10000000, 0x80000000, 3, x15, 28, x16)

# rs1==x2, rd==x28, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: srai ; op1:x2; dest:x28; op1val:0x00000000;  immval:12
TEST_IMM_OP( srai, x28, x2, 0x0, 0x00000000, 12, x15, 32, x16)

# rs1==x10, rd==x3, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 2147483647
# opcode: srai ; op1:x10; dest:x3; op1val:0x7fffffff;  immval:30
TEST_IMM_OP( srai, x3, x10, 0x1, 0x7fffffff, 30, x15, 36, x16)

# rs1==x19, rd==x10, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, imm_val == 10, rs1_val == 1
# opcode: srai ; op1:x19; dest:x10; op1val:0x00000001;  immval:10
TEST_IMM_OP( srai, x10, x19, 0x0, 0x00000001, 10, x15, 40, x16)

# rs1==x0, rd==x26, imm_val == 1, 
# opcode: srai ; op1:x0; dest:x26; op1val:0xfffffffa;  immval:1
TEST_IMM_OP( srai, x26, x0, 0x7ffffffd, 0xfffffffa, 1, x15, 44, x16)

# rs1==x4, rd==x6, imm_val == 2, rs1_val == -4194305
# opcode: srai ; op1:x4; dest:x6; op1val:0xffbfffff;  immval:2
TEST_IMM_OP( srai, x6, x4, 0x3fefffff, 0xffbfffff, 2, x15, 48, x16)

# rs1==x9, rd==x17, imm_val == 4, rs1_val == 65536
# opcode: srai ; op1:x9; dest:x17; op1val:0x00010000;  immval:4
TEST_IMM_OP( srai, x17, x9, 0x1000, 0x00010000, 4, x15, 52, x16)

# rs1==x12, rd==x14, imm_val == 16, rs1_val == 134217728
# opcode: srai ; op1:x12; dest:x14; op1val:0x08000000;  immval:16
TEST_IMM_OP( srai, x14, x12, 0x800, 0x08000000, 16, x15, 56, x16)

# rs1==x27, rd==x19, imm_val == 29, 
# opcode: srai ; op1:x27; dest:x19; op1val:0x00000006;  immval:29
TEST_IMM_OP( srai, x19, x27, 0x0, 0x00000006, 29, x15, 60, x16)

# rs1==x22, rd==x27, imm_val == 27, rs1_val == -524289
# opcode: srai ; op1:x22; dest:x27; op1val:0xfff7ffff;  immval:27
TEST_IMM_OP( srai, x27, x22, 0x1f, 0xfff7ffff, 27, x15, 64, x16)

# rs1==x3, rd==x25, imm_val == 23, rs1_val == -2097153
# opcode: srai ; op1:x3; dest:x25; op1val:0xffdfffff;  immval:23
TEST_IMM_OP( srai, x25, x3, 0x1ff, 0xffdfffff, 23, x15, 68, x16)

# rs1==x24, rd==x4, imm_val == 15, 
# opcode: srai ; op1:x24; dest:x4; op1val:0xffbfffff;  immval:15
TEST_IMM_OP( srai, x4, x24, 0x1ff7f, 0xffbfffff, 15, x15, 72, x16)

# rs1==x7, rd==x18, imm_val == 21, rs1_val == -129
# opcode: srai ; op1:x7; dest:x18; op1val:0xffffff7f;  immval:21
TEST_IMM_OP( srai, x18, x7, 0x7ff, 0xffffff7f, 21, x15, 76, x4)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x26, rd==x11, rs1_val == 2, 
# opcode: srai ; op1:x26; dest:x11; op1val:0x00000002;  immval:1
TEST_IMM_OP( srai, x11, x26, 0x1, 0x00000002, 1, x3, 0, x4)

# rs1==x5, rd==x15, rs1_val == 4, 
# opcode: srai ; op1:x5; dest:x15; op1val:0x00000004;  immval:0
TEST_IMM_OP( srai, x15, x5, 0x4, 0x00000004, 0, x3, 4, x4)

# rs1==x29, rd==x31, rs1_val == 16, 
# opcode: srai ; op1:x29; dest:x31; op1val:0x00000010;  immval:15
TEST_IMM_OP( srai, x31, x29, 0x0, 0x00000010, 15, x3, 8, x4)

# rs1==x15, rd==x0, rs1_val == 32, 
# opcode: srai ; op1:x15; dest:x0; op1val:0x00000020;  immval:1
TEST_IMM_OP( srai, x0, x15, 0x10, 0x00000020, 1, x3, 12, x4)

# rs1==x8, rd==x22, rs1_val == 64, 
# opcode: srai ; op1:x8; dest:x22; op1val:0x00000040;  immval:9
TEST_IMM_OP( srai, x22, x8, 0x0, 0x00000040, 9, x3, 16, x4)

# rs1==x25, rd==x24, rs1_val == 128, 
# opcode: srai ; op1:x25; dest:x24; op1val:0x00000080;  immval:21
TEST_IMM_OP( srai, x24, x25, 0x0, 0x00000080, 21, x3, 20, x4)

# rs1==x18, rd==x21, rs1_val == 512, 
# opcode: srai ; op1:x18; dest:x21; op1val:0x00000200;  immval:27
TEST_IMM_OP( srai, x21, x18, 0x0, 0x00000200, 27, x3, 24, x4)

# rs1==x6, rd==x1, rs1_val == 1024, 
# opcode: srai ; op1:x6; dest:x1; op1val:0x00000400;  immval:13
TEST_IMM_OP( srai, x1, x6, 0x0, 0x00000400, 13, x3, 28, x4)

# rs1==x16, rd==x20, rs1_val == 2048, 
# opcode: srai ; op1:x16; dest:x20; op1val:0x00000800;  immval:27
TEST_IMM_OP( srai, x20, x16, 0x0, 0x00000800, 27, x3, 32, x4)

# rs1==x20, rd==x2, rs1_val == 4096, 
# opcode: srai ; op1:x20; dest:x2; op1val:0x00001000;  immval:18
TEST_IMM_OP( srai, x2, x20, 0x0, 0x00001000, 18, x3, 36, x4)

# rs1==x14, rd==x16, rs1_val == 8192, 
# opcode: srai ; op1:x14; dest:x16; op1val:0x00002000;  immval:11
TEST_IMM_OP( srai, x16, x14, 0x4, 0x00002000, 11, x3, 40, x4)

# rs1==x23, rd==x9, rs1_val == 32768, 
# opcode: srai ; op1:x23; dest:x9; op1val:0x00008000;  immval:15
TEST_IMM_OP( srai, x9, x23, 0x1, 0x00008000, 15, x3, 44, x4)

# rs1_val == 131072, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00020000;  immval:16
TEST_IMM_OP( srai, x11, x10, 0x2, 0x00020000, 16, x3, 48, x4)

# rs1_val == 262144, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00040000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x20000, 0x00040000, 1, x3, 52, x4)

# rs1_val == 524288, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00080000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x4000, 0x00080000, 5, x3, 56, x4)

# rs1_val == 1048576, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00100000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x10000, 0x00100000, 4, x3, 60, x4)

# rs1_val == 2097152, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00200000;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x4, 0x00200000, 19, x3, 64, x4)

# rs1_val == 4194304, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00400000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x20, 0x00400000, 17, x3, 68, x4)

# rs1_val == 8388608, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00800000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x80000, 0x00800000, 4, x3, 72, x4)

# rs1_val == 16777216, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x01000000;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x8000, 0x01000000, 9, x3, 76, x4)

# rs1_val == -513, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xfffffd, 0xfffffdff, 8, x3, 80, x4)

# rs1_val == -1025, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3fff, 0xfffffbff, 18, x3, 84, x4)

# rs1_val == -4097, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffefff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fff, 0xffffefff, 19, x3, 88, x4)

# rs1_val == -8193, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x7fff, 0xffffdfff, 17, x3, 92, x4)

# rs1_val == -16385, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:30
TEST_IMM_OP( srai, x11, x10, 0x3, 0xffffbfff, 30, x3, 96, x4)

# rs1_val == -32769, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3fffd, 0xffff7fff, 14, x3, 100, x4)

# rs1_val == -65537, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:30
TEST_IMM_OP( srai, x11, x10, 0x3, 0xfffeffff, 30, x3, 104, x4)

# rs1_val == -131073, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7ffeffff, 0xfffdffff, 1, x3, 108, x4)

# rs1_val == -262145, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:27
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xfffbffff, 27, x3, 112, x4)

# rs1_val == -1048577, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffefffff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7ff7f, 0xffefffff, 13, x3, 116, x4)

# rs1_val == -8388609, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fef, 0xff7fffff, 19, x3, 120, x4)

# rs1_val == -16777217, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:29
TEST_IMM_OP( srai, x11, x10, 0x7, 0xfeffffff, 29, x3, 124, x4)

# rs1_val == -33554433, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1fbffff, 0xfdffffff, 7, x3, 128, x4)

# rs1_val == -67108865, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1f7ff, 0xfbffffff, 15, x3, 132, x4)

# rs1_val == -134217729, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x7bff, 0xf7ffffff, 17, x3, 136, x4)

# rs1_val == -536870913, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x6fff, 0xdfffffff, 17, x3, 140, x4)

# rs1_val == -9, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffffff, 0xfffffff7, 4, x3, 144, x4)

# rs1_val == 33554432, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x02000000;  immval:27
TEST_IMM_OP( srai, x11, x10, 0x0, 0x02000000, 27, x3, 148, x4)

# rs1_val == 67108864, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x04000000;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x100, 0x04000000, 18, x3, 152, x4)

# rs1_val == 268435456, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x10000000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x8000, 0x10000000, 13, x3, 156, x4)

# rs1_val == -257, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1fffff, 0xfffffeff, 11, x3, 160, x4)

# rs1_val == 536870912, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x20000000;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x4000000, 0x20000000, 3, x3, 164, x4)

# rs1_val == -1073741825, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x17ff, 0xbfffffff, 19, x3, 168, x4)

# rs1_val == 1073741824, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x40000000;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x100000, 0x40000000, 10, x3, 172, x4)

# rs1_val == 1431655765, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x55555555;  immval:29
TEST_IMM_OP( srai, x11, x10, 0x2, 0x55555555, 29, x3, 176, x4)

# rs1_val == -2, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffffff, 0xfffffffe, 5, x3, 180, x4)

# rs1_val == -1431655766, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x55555555, 0xaaaaaaaa, 1, x3, 184, x4)

# rs1_val == -3, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:29
TEST_IMM_OP( srai, x11, x10, 0x7, 0xfffffffd, 29, x3, 188, x4)

# rs1_val == -5, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffffff, 0xfffffffb, 4, x3, 192, x4)

# rs1_val == -17, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffef;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7ffff, 0xffffffef, 13, x3, 196, x4)

# rs1_val == -65, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xffffffbf, 0xffffffbf, 0, x3, 200, x4)

# rs1_val > 0 and imm_val > 0 and imm_val < xlen, imm_val == 30, rs1_val == 256
# opcode: srai ; op1:x10; dest:x11; op1val:0x00000100;  immval:30
TEST_IMM_OP( srai, x11, x10, 0x0, 0x00000100, 30, x3, 204, x4)

# imm_val == 1, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffa;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7ffffffd, 0xfffffffa, 1, x3, 208, x4)

# rs1_val == 32, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x00000020;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x10, 0x00000020, 1, x3, 212, x4)
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

signature_x15_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 54*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
