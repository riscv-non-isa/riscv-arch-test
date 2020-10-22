
#This assembly file tests the slli instruction of the RISC-V I extension for the slli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slli)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs1 != rd, rs1==x22, rd==x12, rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -65
# opcode: slli ; op1:x22; dest:x12; op1val:0xffffffbf;  immval:7
TEST_IMM_OP( slli, x12, x22, 0xffffdf80, 0xffffffbf, 7, x2, 0, x10)

# rs1 == rd, rs1==x14, rd==x14, rs1_val > 0 and imm_val > 0 and imm_val < xlen, imm_val == 21, rs1_val == 65536
# opcode: slli ; op1:x14; dest:x14; op1val:0x00010000;  immval:21
TEST_IMM_OP( slli, x14, x14, 0x0, 0x00010000, 21, x2, 4, x10)

# rs1==x11, rd==x23, rs1_val < 0 and imm_val == 0, rs1_val == -32769
# opcode: slli ; op1:x11; dest:x23; op1val:0xffff7fff;  immval:0
TEST_IMM_OP( slli, x23, x11, 0xffff7fff, 0xffff7fff, 0, x2, 8, x10)

# rs1==x20, rd==x4, rs1_val > 0 and imm_val == 0, rs1_val == 256
# opcode: slli ; op1:x20; dest:x4; op1val:0x00000100;  immval:0
TEST_IMM_OP( slli, x4, x20, 0x100, 0x00000100, 0, x2, 12, x10)

# rs1==x18, rd==x24, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -536870913
# opcode: slli ; op1:x18; dest:x24; op1val:0xdfffffff;  immval:31
TEST_IMM_OP( slli, x24, x18, 0x80000000, 0xdfffffff, 31, x2, 16, x10)

# rs1==x25, rd==x18, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 16384
# opcode: slli ; op1:x25; dest:x18; op1val:0x00004000;  immval:31
TEST_IMM_OP( slli, x18, x25, 0x0, 0x00004000, 31, x2, 20, x10)

# rs1==x24, rd==x31, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, rs1_val == 16, imm_val == 16
# opcode: slli ; op1:x24; dest:x31; op1val:0x00000010;  immval:16
TEST_IMM_OP( slli, x31, x24, 0x100000, 0x00000010, 16, x2, 24, x10)

# rs1==x0, rd==x29, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, imm_val == 2, rs1_val == -2147483648
# opcode: slli ; op1:x0; dest:x29; op1val:0x80000000;  immval:2
TEST_IMM_OP( slli, x29, x0, 0x0, 0x80000000, 2, x2, 28, x10)

# rs1==x19, rd==x15, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, imm_val == 1
# opcode: slli ; op1:x19; dest:x15; op1val:0x00000000;  immval:1
TEST_IMM_OP( slli, x15, x19, 0x0, 0x00000000, 1, x2, 32, x10)

# rs1==x21, rd==x11, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 2147483647, imm_val == 8
# opcode: slli ; op1:x21; dest:x11; op1val:0x7fffffff;  immval:8
TEST_IMM_OP( slli, x11, x21, 0xffffff00, 0x7fffffff, 8, x2, 36, x10)

# rs1==x28, rd==x26, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, rs1_val == 1
# opcode: slli ; op1:x28; dest:x26; op1val:0x00000001;  immval:3
TEST_IMM_OP( slli, x26, x28, 0x8, 0x00000001, 3, x2, 40, x10)

# rs1==x3, rd==x7, imm_val == 4, rs1_val == -2097153
# opcode: slli ; op1:x3; dest:x7; op1val:0xffdfffff;  immval:4
TEST_IMM_OP( slli, x7, x3, 0xfdfffff0, 0xffdfffff, 4, x2, 44, x10)

# rs1==x27, rd==x17, imm_val == 30, rs1_val == -1025
# opcode: slli ; op1:x27; dest:x17; op1val:0xfffffbff;  immval:30
TEST_IMM_OP( slli, x17, x27, 0xc0000000, 0xfffffbff, 30, x2, 48, x10)

# rs1==x6, rd==x3, imm_val == 29, 
# opcode: slli ; op1:x6; dest:x3; op1val:0xfffffff9;  immval:29
TEST_IMM_OP( slli, x3, x6, 0x20000000, 0xfffffff9, 29, x2, 52, x10)

# rs1==x17, rd==x20, imm_val == 27, 
# opcode: slli ; op1:x17; dest:x20; op1val:0xfffffff9;  immval:27
TEST_IMM_OP( slli, x20, x17, 0xc8000000, 0xfffffff9, 27, x2, 56, x10)

# rs1==x8, rd==x0, imm_val == 23, rs1_val == 2
# opcode: slli ; op1:x8; dest:x0; op1val:0x00000002;  immval:23
TEST_IMM_OP( slli, x0, x8, 0x1000000, 0x00000002, 23, x2, 60, x10)

# rs1==x5, rd==x22, imm_val == 15, rs1_val == -513
# opcode: slli ; op1:x5; dest:x22; op1val:0xfffffdff;  immval:15
TEST_IMM_OP( slli, x22, x5, 0xfeff8000, 0xfffffdff, 15, x2, 64, x10)

# rs1==x4, rd==x1, imm_val == 10, rs1_val == -257
# opcode: slli ; op1:x4; dest:x1; op1val:0xfffffeff;  immval:10
TEST_IMM_OP( slli, x1, x4, 0xfffbfc00, 0xfffffeff, 10, x2, 68, x10)

# rs1==x9, rd==x30, rs1_val == 4, 
# opcode: slli ; op1:x9; dest:x30; op1val:0x00000004;  immval:10
TEST_IMM_OP( slli, x30, x9, 0x1000, 0x00000004, 10, x2, 72, x10)

# rs1==x10, rd==x6, rs1_val == 8, 
# opcode: slli ; op1:x10; dest:x6; op1val:0x00000008;  immval:11
TEST_IMM_OP( slli, x6, x10, 0x4000, 0x00000008, 11, x2, 76, x4)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x16, rd==x19, rs1_val == 32, 
# opcode: slli ; op1:x16; dest:x19; op1val:0x00000020;  immval:9
TEST_IMM_OP( slli, x19, x16, 0x4000, 0x00000020, 9, x3, 0, x4)

# rs1==x29, rd==x25, rs1_val == 64, 
# opcode: slli ; op1:x29; dest:x25; op1val:0x00000040;  immval:4
TEST_IMM_OP( slli, x25, x29, 0x400, 0x00000040, 4, x3, 4, x4)

# rs1==x13, rd==x21, rs1_val == 128, 
# opcode: slli ; op1:x13; dest:x21; op1val:0x00000080;  immval:23
TEST_IMM_OP( slli, x21, x13, 0x40000000, 0x00000080, 23, x3, 8, x4)

# rs1==x7, rd==x9, rs1_val == 512, 
# opcode: slli ; op1:x7; dest:x9; op1val:0x00000200;  immval:9
TEST_IMM_OP( slli, x9, x7, 0x40000, 0x00000200, 9, x3, 12, x4)

# rs1==x23, rd==x13, rs1_val == 1024, 
# opcode: slli ; op1:x23; dest:x13; op1val:0x00000400;  immval:21
TEST_IMM_OP( slli, x13, x23, 0x80000000, 0x00000400, 21, x3, 16, x4)

# rs1==x1, rd==x5, rs1_val == 2048, 
# opcode: slli ; op1:x1; dest:x5; op1val:0x00000800;  immval:0
TEST_IMM_OP( slli, x5, x1, 0x800, 0x00000800, 0, x3, 20, x4)

# rs1==x30, rd==x27, rs1_val == 4096, 
# opcode: slli ; op1:x30; dest:x27; op1val:0x00001000;  immval:4
TEST_IMM_OP( slli, x27, x30, 0x10000, 0x00001000, 4, x3, 24, x4)

# rs1==x26, rd==x28, rs1_val == 8192, 
# opcode: slli ; op1:x26; dest:x28; op1val:0x00002000;  immval:27
TEST_IMM_OP( slli, x28, x26, 0x0, 0x00002000, 27, x3, 28, x4)

# rs1==x31, rd==x16, rs1_val == 32768, 
# opcode: slli ; op1:x31; dest:x16; op1val:0x00008000;  immval:29
TEST_IMM_OP( slli, x16, x31, 0x0, 0x00008000, 29, x3, 32, x4)

# rs1==x15, rd==x10, rs1_val == 131072, 
# opcode: slli ; op1:x15; dest:x10; op1val:0x00020000;  immval:11
TEST_IMM_OP( slli, x10, x15, 0x10000000, 0x00020000, 11, x3, 36, x4)

# rs1==x12, rd==x2, rs1_val == 262144, 
# opcode: slli ; op1:x12; dest:x2; op1val:0x00040000;  immval:13
TEST_IMM_OP( slli, x2, x12, 0x80000000, 0x00040000, 13, x3, 40, x4)

# rs1==x2, rd==x8, rs1_val == 524288, 
# opcode: slli ; op1:x2; dest:x8; op1val:0x00080000;  immval:10
TEST_IMM_OP( slli, x8, x2, 0x20000000, 0x00080000, 10, x3, 44, x4)

# rs1_val == 1048576, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00100000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00100000, 21, x3, 48, x4)

# rs1_val == 2097152, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00200000;  immval:27
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00200000, 27, x3, 52, x4)

# rs1_val == 4194304, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00400000;  immval:30
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00400000, 30, x3, 56, x4)

# rs1_val == 8388608, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00800000;  immval:29
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00800000, 29, x3, 60, x4)

# rs1_val == 16777216, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x01000000;  immval:13
TEST_IMM_OP( slli, x11, x10, 0x0, 0x01000000, 13, x3, 64, x4)

# rs1_val == 33554432, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x02000000;  immval:23
TEST_IMM_OP( slli, x11, x10, 0x0, 0x02000000, 23, x3, 68, x4)

# rs1_val == -2049, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:0
TEST_IMM_OP( slli, x11, x10, 0xfffff7ff, 0xfffff7ff, 0, x3, 72, x4)

# rs1_val == -4097, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffefff;  immval:21
TEST_IMM_OP( slli, x11, x10, 0xffe00000, 0xffffefff, 21, x3, 76, x4)

# rs1_val == -8193, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:9
TEST_IMM_OP( slli, x11, x10, 0xffbffe00, 0xffffdfff, 9, x3, 80, x4)

# rs1_val == -16385, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0x7ffe0000, 0xffffbfff, 17, x3, 84, x4)

# rs1_val == -65537, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xfeffff00, 0xfffeffff, 8, x3, 88, x4)

# rs1_val == -131073, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:11
TEST_IMM_OP( slli, x11, x10, 0xeffff800, 0xfffdffff, 11, x3, 92, x4)

# rs1_val == -262145, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xfdffff80, 0xfffbffff, 7, x3, 96, x4)

# rs1_val == -524289, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xff7ffff0, 0xfff7ffff, 4, x3, 100, x4)

# rs1_val == -1048577, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffefffff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xffff8000, 0xffefffff, 15, x3, 104, x4)

# rs1_val == -4194305, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xff800000, 0xffbfffff, 23, x3, 108, x4)

# rs1_val == -8388609, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xf7fffff0, 0xff7fffff, 4, x3, 112, x4)

# rs1_val == -16777217, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xfffe0000, 0xfeffffff, 17, x3, 116, x4)

# rs1_val == -33554433, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:5
TEST_IMM_OP( slli, x11, x10, 0xbfffffe0, 0xfdffffff, 5, x3, 120, x4)

# rs1_val == -67108865, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xfffff000, 0xfbffffff, 12, x3, 124, x4)

# rs1_val == -134217729, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xffff8000, 0xf7ffffff, 15, x3, 128, x4)

# rs1_val == -268435457, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xefffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xfffffff0, 0xefffffff, 4, x3, 132, x4)

# rs1_val == -9, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:5
TEST_IMM_OP( slli, x11, x10, 0xfffffee0, 0xfffffff7, 5, x3, 136, x4)

# rs1_val == 67108864, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x04000000;  immval:12
TEST_IMM_OP( slli, x11, x10, 0x0, 0x04000000, 12, x3, 140, x4)

# rs1_val == 134217728, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x08000000;  immval:1
TEST_IMM_OP( slli, x11, x10, 0x10000000, 0x08000000, 1, x3, 144, x4)

# rs1_val == 268435456, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x10000000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0x10000000, 3, x3, 148, x4)

# rs1_val == 536870912, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x20000000;  immval:14
TEST_IMM_OP( slli, x11, x10, 0x0, 0x20000000, 14, x3, 152, x4)

# rs1_val == -1073741825, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xfffe0000, 0xbfffffff, 17, x3, 156, x4)

# rs1_val == 1073741824, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x40000000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x0, 0x40000000, 4, x3, 160, x4)

# rs1_val == 1431655765, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x55555555;  immval:30
TEST_IMM_OP( slli, x11, x10, 0x40000000, 0x55555555, 30, x3, 164, x4)

# rs1_val == -2, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xfff80000, 0xfffffffe, 18, x3, 168, x4)

# rs1_val == -1431655766, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xaaaaaaa0, 0xaaaaaaaa, 4, x3, 172, x4)

# rs1_val == -3, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xffffffe8, 0xfffffffd, 3, x3, 176, x4)

# rs1_val == -5, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xffffb000, 0xfffffffb, 12, x3, 180, x4)

# rs1_val == -17, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffef;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xffffff78, 0xffffffef, 3, x3, 184, x4)

# rs1_val == -33, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xffffef80, 0xffffffdf, 7, x3, 188, x4)

# rs1_val == -129, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xfffffefe, 0xffffff7f, 1, x3, 192, x4)

# rs1_val > 0 and imm_val > 0 and imm_val < xlen, imm_val == 21, rs1_val == 65536
# opcode: slli ; op1:x10; dest:x11; op1val:0x00010000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00010000, 21, x3, 196, x4)

# rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, imm_val == 2, rs1_val == -2147483648
# opcode: slli ; op1:x10; dest:x11; op1val:0x80000000;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x0, 0x80000000, 2, x3, 200, x4)

# imm_val == 23, rs1_val == 2
# opcode: slli ; op1:x10; dest:x11; op1val:0x00000002;  immval:23
TEST_IMM_OP( slli, x11, x10, 0x1000000, 0x00000002, 23, x3, 204, x4)
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
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 52*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
