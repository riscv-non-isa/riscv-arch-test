
#This assembly file tests the slli instruction of the RISC-V I extension for the slli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slli)

RVTEST_SIGBASE( x9,signature_x9_1)

# rs1 != rd, rs1==x18, rd==x10, rs1_val < 0 and imm_val > 0 and imm_val < xlen, 
# opcode: slli ; op1:x18; dest:x10; op1val:0xfffffff8;  immval:19
TEST_IMM_OP( slli, x10, x18, 0xffc00000, 0xfffffff8, 19, x9, 0, x25)

# rs1 == rd, rs1==x26, rd==x26, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 8388608
# opcode: slli ; op1:x26; dest:x26; op1val:0x00800000;  immval:11
TEST_IMM_OP( slli, x26, x26, 0x0, 0x00800000, 11, x9, 4, x25)

# rs1==x12, rd==x6, rs1_val < 0 and imm_val == 0, rs1_val == -2097153
# opcode: slli ; op1:x12; dest:x6; op1val:0xffdfffff;  immval:0
TEST_IMM_OP( slli, x6, x12, 0xffdfffff, 0xffdfffff, 0, x9, 8, x25)

# rs1==x1, rd==x11, rs1_val > 0 and imm_val == 0, rs1_val == 268435456
# opcode: slli ; op1:x1; dest:x11; op1val:0x10000000;  immval:0
TEST_IMM_OP( slli, x11, x1, 0x10000000, 0x10000000, 0, x9, 12, x25)

# rs1==x19, rd==x29, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -131073
# opcode: slli ; op1:x19; dest:x29; op1val:0xfffdffff;  immval:31
TEST_IMM_OP( slli, x29, x19, 0x80000000, 0xfffdffff, 31, x9, 16, x25)

# rs1==x28, rd==x23, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 524288
# opcode: slli ; op1:x28; dest:x23; op1val:0x00080000;  immval:31
TEST_IMM_OP( slli, x23, x28, 0x0, 0x00080000, 31, x9, 20, x25)

# rs1==x20, rd==x17, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, rs1_val == 4, imm_val == 4
# opcode: slli ; op1:x20; dest:x17; op1val:0x00000004;  immval:4
TEST_IMM_OP( slli, x17, x20, 0x40, 0x00000004, 4, x9, 24, x25)

# rs1==x16, rd==x3, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, imm_val == 23, rs1_val == -2147483648
# opcode: slli ; op1:x16; dest:x3; op1val:0x80000000;  immval:23
TEST_IMM_OP( slli, x3, x16, 0x0, 0x80000000, 23, x9, 28, x25)

# rs1==x13, rd==x28, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: slli ; op1:x13; dest:x28; op1val:0x00000000;  immval:13
TEST_IMM_OP( slli, x28, x13, 0x0, 0x00000000, 13, x9, 32, x25)

# rs1==x23, rd==x1, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 2147483647
# opcode: slli ; op1:x23; dest:x1; op1val:0x7fffffff;  immval:3
TEST_IMM_OP( slli, x1, x23, 0xfffffff8, 0x7fffffff, 3, x9, 36, x25)

# rs1==x4, rd==x15, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, rs1_val == 1
# opcode: slli ; op1:x4; dest:x15; op1val:0x00000001;  immval:17
TEST_IMM_OP( slli, x15, x4, 0x20000, 0x00000001, 17, x9, 40, x25)

# rs1==x22, rd==x2, imm_val == 1, 
# opcode: slli ; op1:x22; dest:x2; op1val:0x00800000;  immval:1
TEST_IMM_OP( slli, x2, x22, 0x1000000, 0x00800000, 1, x9, 44, x25)

# rs1==x11, rd==x20, imm_val == 2, rs1_val == -65537
# opcode: slli ; op1:x11; dest:x20; op1val:0xfffeffff;  immval:2
TEST_IMM_OP( slli, x20, x11, 0xfffbfffc, 0xfffeffff, 2, x9, 48, x25)

# rs1==x10, rd==x7, imm_val == 8, rs1_val == -4194305
# opcode: slli ; op1:x10; dest:x7; op1val:0xffbfffff;  immval:8
TEST_IMM_OP( slli, x7, x10, 0xbfffff00, 0xffbfffff, 8, x9, 52, x25)

# rs1==x8, rd==x12, imm_val == 16, rs1_val == 67108864
# opcode: slli ; op1:x8; dest:x12; op1val:0x04000000;  immval:16
TEST_IMM_OP( slli, x12, x8, 0x0, 0x04000000, 16, x9, 56, x25)

# rs1==x29, rd==x22, imm_val == 30, rs1_val == -134217729
# opcode: slli ; op1:x29; dest:x22; op1val:0xf7ffffff;  immval:30
TEST_IMM_OP( slli, x22, x29, 0xc0000000, 0xf7ffffff, 30, x9, 60, x25)

# rs1==x15, rd==x18, imm_val == 29, rs1_val == -8193
# opcode: slli ; op1:x15; dest:x18; op1val:0xffffdfff;  immval:29
TEST_IMM_OP( slli, x18, x15, 0xe0000000, 0xffffdfff, 29, x9, 64, x25)

# rs1==x7, rd==x5, imm_val == 27, 
# opcode: slli ; op1:x7; dest:x5; op1val:0xfffffff8;  immval:27
TEST_IMM_OP( slli, x5, x7, 0xc0000000, 0xfffffff8, 27, x9, 68, x25)

# rs1==x3, rd==x24, imm_val == 15, rs1_val == -129
# opcode: slli ; op1:x3; dest:x24; op1val:0xffffff7f;  immval:15
TEST_IMM_OP( slli, x24, x3, 0xffbf8000, 0xffffff7f, 15, x9, 72, x25)

# rs1==x6, rd==x14, imm_val == 21, 
# opcode: slli ; op1:x6; dest:x14; op1val:0x00000009;  immval:21
TEST_IMM_OP( slli, x14, x6, 0x1200000, 0x00000009, 21, x9, 76, x25)

# rs1==x5, rd==x19, imm_val == 10, 
# opcode: slli ; op1:x5; dest:x19; op1val:0xfffffff9;  immval:10
TEST_IMM_OP( slli, x19, x5, 0xffffe400, 0xfffffff9, 10, x9, 80, x25)

# rs1==x14, rd==x16, rs1_val == 2, 
# opcode: slli ; op1:x14; dest:x16; op1val:0x00000002;  immval:30
TEST_IMM_OP( slli, x16, x14, 0x80000000, 0x00000002, 30, x9, 84, x25)

# rs1==x0, rd==x27, rs1_val == 8, 
# opcode: slli ; op1:x0; dest:x27; op1val:0x00000008;  immval:11
TEST_IMM_OP( slli, x27, x0, 0x4000, 0x00000008, 11, x9, 88, x25)

# rs1==x31, rd==x21, rs1_val == 16, 
# opcode: slli ; op1:x31; dest:x21; op1val:0x00000010;  immval:18
TEST_IMM_OP( slli, x21, x31, 0x400000, 0x00000010, 18, x9, 92, x25)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x9, rd==x8, rs1_val == 32, 
# opcode: slli ; op1:x9; dest:x8; op1val:0x00000020;  immval:17
TEST_IMM_OP( slli, x8, x9, 0x400000, 0x00000020, 17, x1, 0, x3)

# rs1==x17, rd==x25, rs1_val == 64, 
# opcode: slli ; op1:x17; dest:x25; op1val:0x00000040;  immval:27
TEST_IMM_OP( slli, x25, x17, 0x0, 0x00000040, 27, x1, 4, x3)

# rs1==x24, rd==x0, rs1_val == 128, 
# opcode: slli ; op1:x24; dest:x0; op1val:0x00000080;  immval:10
TEST_IMM_OP( slli, x0, x24, 0x20000, 0x00000080, 10, x1, 8, x3)

# rs1==x25, rd==x31, rs1_val == 256, 
# opcode: slli ; op1:x25; dest:x31; op1val:0x00000100;  immval:12
TEST_IMM_OP( slli, x31, x25, 0x100000, 0x00000100, 12, x1, 12, x3)

# rs1==x2, rd==x30, rs1_val == 512, 
# opcode: slli ; op1:x2; dest:x30; op1val:0x00000200;  immval:19
TEST_IMM_OP( slli, x30, x2, 0x10000000, 0x00000200, 19, x1, 16, x3)

# rs1==x27, rd==x13, rs1_val == 1024, 
# opcode: slli ; op1:x27; dest:x13; op1val:0x00000400;  immval:0
TEST_IMM_OP( slli, x13, x27, 0x400, 0x00000400, 0, x1, 20, x3)

# rs1==x30, rd==x9, rs1_val == 2048, 
# opcode: slli ; op1:x30; dest:x9; op1val:0x00000800;  immval:16
TEST_IMM_OP( slli, x9, x30, 0x8000000, 0x00000800, 16, x1, 24, x3)

# rs1==x21, rd==x4, rs1_val == 4096, 
# opcode: slli ; op1:x21; dest:x4; op1val:0x00001000;  immval:2
TEST_IMM_OP( slli, x4, x21, 0x4000, 0x00001000, 2, x1, 28, x3)

# rs1_val == 8192, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00002000;  immval:23
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00002000, 23, x1, 32, x3)

# rs1_val == 16384, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00004000;  immval:23
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00004000, 23, x1, 36, x3)

# rs1_val == 32768, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00008000;  immval:6
TEST_IMM_OP( slli, x11, x10, 0x200000, 0x00008000, 6, x1, 40, x3)

# rs1_val == 65536, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00010000;  immval:11
TEST_IMM_OP( slli, x11, x10, 0x8000000, 0x00010000, 11, x1, 44, x3)

# rs1_val == 131072, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00020000;  immval:10
TEST_IMM_OP( slli, x11, x10, 0x8000000, 0x00020000, 10, x1, 48, x3)

# rs1_val == 262144, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00040000;  immval:17
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00040000, 17, x1, 52, x3)

# rs1_val == 1048576, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00100000;  immval:17
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00100000, 17, x1, 56, x3)

# rs1_val == 2097152, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00200000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00200000, 31, x1, 60, x3)

# rs1_val == 4194304, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00400000;  immval:17
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00400000, 17, x1, 64, x3)

# rs1_val == -513, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xfffdff00, 0xfffffdff, 8, x1, 68, x3)

# rs1_val == -1025, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xfffbff00, 0xfffffbff, 8, x1, 72, x3)

# rs1_val == -2049, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:0
TEST_IMM_OP( slli, x11, x10, 0xfffff7ff, 0xfffff7ff, 0, x1, 76, x3)

# rs1_val == -4097, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffefff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0xffffefff, 31, x1, 80, x3)

# rs1_val == -16385, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xffdfff80, 0xffffbfff, 7, x1, 84, x3)

# rs1_val == -32769, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xfffbfff8, 0xffff7fff, 3, x1, 88, x3)

# rs1_val == -262145, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xff800000, 0xfffbffff, 23, x1, 92, x3)

# rs1_val == -524289, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xff7ffff0, 0xfff7ffff, 4, x1, 96, x3)

# rs1_val == -1048577, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffefffff;  immval:29
TEST_IMM_OP( slli, x11, x10, 0xe0000000, 0xffefffff, 29, x1, 100, x3)

# rs1_val == -8388609, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:29
TEST_IMM_OP( slli, x11, x10, 0xe0000000, 0xff7fffff, 29, x1, 104, x3)

# rs1_val == -16777217, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xff800000, 0xfeffffff, 23, x1, 108, x3)

# rs1_val == -33554433, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xffffff80, 0xfdffffff, 7, x1, 112, x3)

# rs1_val == -67108865, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0xfbffffff, 31, x1, 116, x3)

# rs1_val == -268435457, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xefffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xfffe0000, 0xefffffff, 17, x1, 120, x3)

# rs1_val == -536870913, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xfffc0000, 0xdfffffff, 18, x1, 124, x3)

# rs1_val == -1073741825, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xfffffff0, 0xbfffffff, 4, x1, 128, x3)

# rs1_val == -9, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:5
TEST_IMM_OP( slli, x11, x10, 0xfffffee0, 0xfffffff7, 5, x1, 132, x3)

# rs1_val == 16777216, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x01000000;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0x01000000, 7, x1, 136, x3)

# rs1_val == 33554432, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x02000000;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x0, 0x02000000, 7, x1, 140, x3)

# rs1_val == 134217728, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x08000000;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x20000000, 0x08000000, 2, x1, 144, x3)

# rs1_val == 536870912, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x20000000;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0x20000000, 2, x1, 148, x3)

# rs1_val == 1073741824, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x40000000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x0, 0x40000000, 4, x1, 152, x3)

# rs1_val == -2, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:30
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0xfffffffe, 30, x1, 156, x3)

# rs1_val == 1431655765, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x55555555;  immval:16
TEST_IMM_OP( slli, x11, x10, 0x55550000, 0x55555555, 16, x1, 160, x3)

# rs1_val == -1431655766, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:11
TEST_IMM_OP( slli, x11, x10, 0x55555000, 0xaaaaaaaa, 11, x1, 164, x3)

# rs1_val == -3, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xfffa0000, 0xfffffffd, 17, x1, 168, x3)

# rs1_val == -5, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xffffffd8, 0xfffffffb, 3, x1, 172, x3)

# rs1_val == -17, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffef;  immval:29
TEST_IMM_OP( slli, x11, x10, 0xe0000000, 0xffffffef, 29, x1, 176, x3)

# rs1_val == -33, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xffffffbe, 0xffffffdf, 1, x1, 180, x3)

# rs1_val == -65, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xffffbf00, 0xffffffbf, 8, x1, 184, x3)

# rs1_val == -257, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xffff7f80, 0xfffffeff, 7, x1, 188, x3)

# rs1_val == 8, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00000008;  immval:11
TEST_IMM_OP( slli, x11, x10, 0x4000, 0x00000008, 11, x1, 192, x3)

# rs1_val == 128, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00000080;  immval:10
TEST_IMM_OP( slli, x11, x10, 0x20000, 0x00000080, 10, x1, 196, x3)
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

signature_x9_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x9_1:
    .fill 24*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 50*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
