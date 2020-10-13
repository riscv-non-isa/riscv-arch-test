
#This assembly file tests the slli instruction of the RISC-V I extension for the slli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slli)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs1 != rd, rs1==x21, rd==x8, rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -1073741825
# opcode: slli ; op1:x21; dest:x8; op1val:0xbfffffff;  immval:5
TEST_IMM_OP( slli, x8, x21, 0xffffffe0, 0xbfffffff, 5, x2, 0, x6)

# rs1 == rd, rs1==x1, rd==x1, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 1024, imm_val == 15
# opcode: slli ; op1:x1; dest:x1; op1val:0x00000400;  immval:15
TEST_IMM_OP( slli, x1, x1, 0x2000000, 0x00000400, 15, x2, 4, x6)

# rs1==x7, rd==x4, rs1_val < 0 and imm_val == 0, rs1_val == -9
# opcode: slli ; op1:x7; dest:x4; op1val:0xfffffff7;  immval:0
TEST_IMM_OP( slli, x4, x7, 0xfffffff7, 0xfffffff7, 0, x2, 8, x6)

# rs1==x22, rd==x23, rs1_val > 0 and imm_val == 0, rs1_val == 67108864
# opcode: slli ; op1:x22; dest:x23; op1val:0x04000000;  immval:0
TEST_IMM_OP( slli, x23, x22, 0x4000000, 0x04000000, 0, x2, 12, x6)

# rs1==x19, rd==x14, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -524289
# opcode: slli ; op1:x19; dest:x14; op1val:0xfff7ffff;  immval:31
TEST_IMM_OP( slli, x14, x19, 0x80000000, 0xfff7ffff, 31, x2, 16, x6)

# rs1==x9, rd==x19, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 524288
# opcode: slli ; op1:x9; dest:x19; op1val:0x00080000;  immval:31
TEST_IMM_OP( slli, x19, x9, 0x0, 0x00080000, 31, x2, 20, x6)

# rs1==x12, rd==x11, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, 
# opcode: slli ; op1:x12; dest:x11; op1val:0x00000003;  immval:3
TEST_IMM_OP( slli, x11, x12, 0x18, 0x00000003, 3, x2, 24, x6)

# rs1==x31, rd==x9, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, imm_val == 23, rs1_val == -2147483648
# opcode: slli ; op1:x31; dest:x9; op1val:0x80000000;  immval:23
TEST_IMM_OP( slli, x9, x31, 0x0, 0x80000000, 23, x2, 28, x6)

# rs1==x13, rd==x7, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: slli ; op1:x13; dest:x7; op1val:0x00000000;  immval:17
TEST_IMM_OP( slli, x7, x13, 0x0, 0x00000000, 17, x2, 32, x6)

# rs1==x15, rd==x16, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 2147483647
# opcode: slli ; op1:x15; dest:x16; op1val:0x7fffffff;  immval:12
TEST_IMM_OP( slli, x16, x15, 0xfffff000, 0x7fffffff, 12, x2, 36, x6)

# rs1==x25, rd==x15, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, rs1_val == 1
# opcode: slli ; op1:x25; dest:x15; op1val:0x00000001;  immval:12
TEST_IMM_OP( slli, x15, x25, 0x1000, 0x00000001, 12, x2, 40, x6)

# rs1==x17, rd==x3, imm_val == 1, rs1_val == 256
# opcode: slli ; op1:x17; dest:x3; op1val:0x00000100;  immval:1
TEST_IMM_OP( slli, x3, x17, 0x200, 0x00000100, 1, x2, 44, x6)

# rs1==x8, rd==x22, imm_val == 2, rs1_val == 16777216
# opcode: slli ; op1:x8; dest:x22; op1val:0x01000000;  immval:2
TEST_IMM_OP( slli, x22, x8, 0x4000000, 0x01000000, 2, x2, 48, x6)

# rs1==x18, rd==x20, imm_val == 4, 
# opcode: slli ; op1:x18; dest:x20; op1val:0xfffffffa;  immval:4
TEST_IMM_OP( slli, x20, x18, 0xffffffa0, 0xfffffffa, 4, x2, 52, x6)

# rs1==x4, rd==x28, imm_val == 8, rs1_val == 268435456
# opcode: slli ; op1:x4; dest:x28; op1val:0x10000000;  immval:8
TEST_IMM_OP( slli, x28, x4, 0x0, 0x10000000, 8, x2, 56, x6)

# rs1==x28, rd==x17, imm_val == 16, rs1_val == -3
# opcode: slli ; op1:x28; dest:x17; op1val:0xfffffffd;  immval:16
TEST_IMM_OP( slli, x17, x28, 0xfffd0000, 0xfffffffd, 16, x2, 60, x6)

# rs1==x10, rd==x27, imm_val == 30, rs1_val == 2097152
# opcode: slli ; op1:x10; dest:x27; op1val:0x00200000;  immval:30
TEST_IMM_OP( slli, x27, x10, 0x0, 0x00200000, 30, x2, 64, x6)

# rs1==x26, rd==x0, imm_val == 29, rs1_val == 512
# opcode: slli ; op1:x26; dest:x0; op1val:0x00000200;  immval:29
TEST_IMM_OP( slli, x0, x26, 0x0, 0x00000200, 29, x2, 68, x6)

# rs1==x5, rd==x10, imm_val == 27, rs1_val == 1073741824
# opcode: slli ; op1:x5; dest:x10; op1val:0x40000000;  immval:27
TEST_IMM_OP( slli, x10, x5, 0x0, 0x40000000, 27, x2, 72, x6)

# rs1==x3, rd==x24, imm_val == 21, rs1_val == -2
# opcode: slli ; op1:x3; dest:x24; op1val:0xfffffffe;  immval:21
TEST_IMM_OP( slli, x24, x3, 0xffc00000, 0xfffffffe, 21, x2, 76, x6)

# rs1==x23, rd==x12, imm_val == 10, rs1_val == -16777217
# opcode: slli ; op1:x23; dest:x12; op1val:0xfeffffff;  immval:10
TEST_IMM_OP( slli, x12, x23, 0xfffffc00, 0xfeffffff, 10, x2, 80, x3)

# rs1==x30, rd==x5, rs1_val == 2, 
# opcode: slli ; op1:x30; dest:x5; op1val:0x00000002;  immval:3
TEST_IMM_OP( slli, x5, x30, 0x10, 0x00000002, 3, x2, 84, x3)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x20, rd==x25, rs1_val == 4, 
# opcode: slli ; op1:x20; dest:x25; op1val:0x00000004;  immval:23
TEST_IMM_OP( slli, x25, x20, 0x2000000, 0x00000004, 23, x1, 0, x3)

# rs1==x27, rd==x6, rs1_val == 8, 
# opcode: slli ; op1:x27; dest:x6; op1val:0x00000008;  immval:1
TEST_IMM_OP( slli, x6, x27, 0x10, 0x00000008, 1, x1, 4, x3)

# rs1==x14, rd==x29, rs1_val == 16, 
# opcode: slli ; op1:x14; dest:x29; op1val:0x00000010;  immval:21
TEST_IMM_OP( slli, x29, x14, 0x2000000, 0x00000010, 21, x1, 8, x3)

# rs1==x0, rd==x26, rs1_val == 32, 
# opcode: slli ; op1:x0; dest:x26; op1val:0x00000020;  immval:13
TEST_IMM_OP( slli, x26, x0, 0x40000, 0x00000020, 13, x1, 12, x3)

# rs1==x24, rd==x18, rs1_val == 64, 
# opcode: slli ; op1:x24; dest:x18; op1val:0x00000040;  immval:19
TEST_IMM_OP( slli, x18, x24, 0x2000000, 0x00000040, 19, x1, 16, x3)

# rs1==x2, rd==x21, rs1_val == 128, 
# opcode: slli ; op1:x2; dest:x21; op1val:0x00000080;  immval:2
TEST_IMM_OP( slli, x21, x2, 0x200, 0x00000080, 2, x1, 20, x3)

# rs1==x16, rd==x13, rs1_val == 2048, 
# opcode: slli ; op1:x16; dest:x13; op1val:0x00000800;  immval:6
TEST_IMM_OP( slli, x13, x16, 0x20000, 0x00000800, 6, x1, 24, x3)

# rs1==x6, rd==x2, rs1_val == 4096, 
# opcode: slli ; op1:x6; dest:x2; op1val:0x00001000;  immval:27
TEST_IMM_OP( slli, x2, x6, 0x0, 0x00001000, 27, x1, 28, x3)

# rs1==x29, rd==x31, rs1_val == 8192, 
# opcode: slli ; op1:x29; dest:x31; op1val:0x00002000;  immval:21
TEST_IMM_OP( slli, x31, x29, 0x0, 0x00002000, 21, x1, 32, x3)

# rs1==x11, rd==x30, rs1_val == 16384, 
# opcode: slli ; op1:x11; dest:x30; op1val:0x00004000;  immval:18
TEST_IMM_OP( slli, x30, x11, 0x0, 0x00004000, 18, x1, 36, x3)

# rs1_val == 32768, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00008000;  immval:11
TEST_IMM_OP( slli, x11, x10, 0x4000000, 0x00008000, 11, x1, 40, x3)

# rs1_val == 65536, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00010000;  immval:8
TEST_IMM_OP( slli, x11, x10, 0x1000000, 0x00010000, 8, x1, 44, x3)

# rs1_val == 131072, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00020000;  immval:11
TEST_IMM_OP( slli, x11, x10, 0x10000000, 0x00020000, 11, x1, 48, x3)

# rs1_val == 262144, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00040000;  immval:11
TEST_IMM_OP( slli, x11, x10, 0x20000000, 0x00040000, 11, x1, 52, x3)

# rs1_val == 1048576, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00100000;  immval:19
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00100000, 19, x1, 56, x3)

# rs1_val == 4194304, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00400000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00400000, 21, x1, 60, x3)

# rs1_val == -513, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xff800000, 0xfffffdff, 23, x1, 64, x3)

# rs1_val == -1025, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xffffdff8, 0xfffffbff, 3, x1, 68, x3)

# rs1_val == -2049, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xffffeffe, 0xfffff7ff, 1, x1, 72, x3)

# rs1_val == -4097, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffefff;  immval:13
TEST_IMM_OP( slli, x11, x10, 0xfdffe000, 0xffffefff, 13, x1, 76, x3)

# rs1_val == -8193, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:30
TEST_IMM_OP( slli, x11, x10, 0xc0000000, 0xffffdfff, 30, x1, 80, x3)

# rs1_val == -16385, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xffff7ffe, 0xffffbfff, 1, x1, 84, x3)

# rs1_val == -32769, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfff80000, 0xffff7fff, 19, x1, 88, x3)

# rs1_val == -65537, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xffff0000, 0xfffeffff, 16, x1, 92, x3)

# rs1_val == -131073, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xdffff000, 0xfffdffff, 12, x1, 96, x3)

# rs1_val == -262145, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:13
TEST_IMM_OP( slli, x11, x10, 0x7fffe000, 0xfffbffff, 13, x1, 100, x3)

# rs1_val == -1048577, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffefffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xff7ffff8, 0xffefffff, 3, x1, 104, x3)

# rs1_val == -2097153, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:21
TEST_IMM_OP( slli, x11, x10, 0xffe00000, 0xffdfffff, 21, x1, 108, x3)

# rs1_val == -4194305, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:14
TEST_IMM_OP( slli, x11, x10, 0xffffc000, 0xffbfffff, 14, x1, 112, x3)

# rs1_val == -8388609, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:0
TEST_IMM_OP( slli, x11, x10, 0xff7fffff, 0xff7fffff, 0, x1, 116, x3)

# rs1_val == -33554433, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfff80000, 0xfdffffff, 19, x1, 120, x3)

# rs1_val == -67108865, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xfffff000, 0xfbffffff, 12, x1, 124, x3)

# rs1_val == 8388608, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00800000;  immval:15
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00800000, 15, x1, 128, x3)

# rs1_val == 33554432, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x02000000;  immval:13
TEST_IMM_OP( slli, x11, x10, 0x0, 0x02000000, 13, x1, 132, x3)

# rs1_val == -134217729, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfff80000, 0xf7ffffff, 19, x1, 136, x3)

# rs1_val == 134217728, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x08000000;  immval:5
TEST_IMM_OP( slli, x11, x10, 0x0, 0x08000000, 5, x1, 140, x3)

# rs1_val == -268435457, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xefffffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x7ffffff8, 0xefffffff, 3, x1, 144, x3)

# rs1_val == -536870913, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xffff0000, 0xdfffffff, 16, x1, 148, x3)

# rs1_val == 536870912, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x20000000;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x0, 0x20000000, 7, x1, 152, x3)

# rs1_val == 1431655765, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x55555555;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x55555550, 0x55555555, 4, x1, 156, x3)

# rs1_val == -1431655766, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:9
TEST_IMM_OP( slli, x11, x10, 0x55555400, 0xaaaaaaaa, 9, x1, 160, x3)

# rs1_val == -5, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffffffec, 0xfffffffb, 2, x1, 164, x3)

# rs1_val == -17, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffef;  immval:29
TEST_IMM_OP( slli, x11, x10, 0xe0000000, 0xffffffef, 29, x1, 168, x3)

# rs1_val == -33, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:29
TEST_IMM_OP( slli, x11, x10, 0xe0000000, 0xffffffdf, 29, x1, 172, x3)

# rs1_val == -65, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xfffffbf0, 0xffffffbf, 4, x1, 176, x3)

# rs1_val == -129, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xff7f0000, 0xffffff7f, 16, x1, 180, x3)

# rs1_val == -257, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0xfffffeff, 31, x1, 184, x3)

# rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 1024, imm_val == 15
# opcode: slli ; op1:x10; dest:x11; op1val:0x00000400;  immval:15
TEST_IMM_OP( slli, x11, x10, 0x2000000, 0x00000400, 15, x1, 188, x3)

# imm_val == 29, rs1_val == 512
# opcode: slli ; op1:x10; dest:x11; op1val:0x00000200;  immval:29
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00000200, 29, x1, 192, x3)

# rs1_val == 32, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00000020;  immval:13
TEST_IMM_OP( slli, x11, x10, 0x40000, 0x00000020, 13, x1, 196, x3)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x2_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


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
