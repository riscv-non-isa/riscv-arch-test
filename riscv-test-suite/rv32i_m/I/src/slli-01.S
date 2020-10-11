
#This assembly file tests the slli instruction of the RISC-V I extension for the slli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slli)

la x8,signature_x8_1

# rs1 == rd, rs1==x19, rd==x19, rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -131073, imm_val == 21
# opcode: slli ; op1:x19; dest:x19; op1val:0xfffdffff;  immval:21
TEST_IMM_OP( slli, x19, x19, 0xffe00000, 0xfffdffff, 21, x8, 0, x10)

# rs1 != rd, rs1==x31, rd==x15, rs1_val > 0 and imm_val > 0 and imm_val < xlen, imm_val == 15
# opcode: slli ; op1:x31; dest:x15; op1val:0x00000009;  immval:15
TEST_IMM_OP( slli, x15, x31, 0x48000, 0x00000009, 15, x8, 4, x10)

# rs1==x24, rd==x22, rs1_val < 0 and imm_val == 0, rs1_val == -16777217
# opcode: slli ; op1:x24; dest:x22; op1val:0xfeffffff;  immval:0
TEST_IMM_OP( slli, x22, x24, 0xfeffffff, 0xfeffffff, 0, x8, 8, x10)

# rs1==x15, rd==x16, rs1_val > 0 and imm_val == 0, rs1_val == 1073741824
# opcode: slli ; op1:x15; dest:x16; op1val:0x40000000;  immval:0
TEST_IMM_OP( slli, x16, x15, 0x40000000, 0x40000000, 0, x8, 12, x10)

# rs1==x16, rd==x27, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -1431655766
# opcode: slli ; op1:x16; dest:x27; op1val:0xaaaaaaaa;  immval:31
TEST_IMM_OP( slli, x27, x16, 0x0, 0xaaaaaaaa, 31, x8, 16, x10)

# rs1==x30, rd==x29, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 64
# opcode: slli ; op1:x30; dest:x29; op1val:0x00000040;  immval:31
TEST_IMM_OP( slli, x29, x30, 0x0, 0x00000040, 31, x8, 20, x10)

# rs1==x26, rd==x2, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, rs1_val == 16, imm_val == 16
# opcode: slli ; op1:x26; dest:x2; op1val:0x00000010;  immval:16
TEST_IMM_OP( slli, x2, x26, 0x100000, 0x00000010, 16, x8, 24, x10)

# rs1==x25, rd==x12, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -2147483648
# opcode: slli ; op1:x25; dest:x12; op1val:0x80000000;  immval:3
TEST_IMM_OP( slli, x12, x25, 0x0, 0x80000000, 3, x8, 28, x10)

# rs1==x2, rd==x11, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: slli ; op1:x2; dest:x11; op1val:0x00000000;  immval:9
TEST_IMM_OP( slli, x11, x2, 0x0, 0x00000000, 9, x8, 32, x10)

# rs1==x12, rd==x18, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 2147483647
# opcode: slli ; op1:x12; dest:x18; op1val:0x7fffffff;  immval:18
TEST_IMM_OP( slli, x18, x12, 0xfffc0000, 0x7fffffff, 18, x8, 36, x10)

# rs1==x22, rd==x17, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, imm_val == 4, rs1_val == 1
# opcode: slli ; op1:x22; dest:x17; op1val:0x00000001;  immval:4
TEST_IMM_OP( slli, x17, x22, 0x10, 0x00000001, 4, x8, 40, x10)

# rs1==x4, rd==x13, imm_val == 1, 
# opcode: slli ; op1:x4; dest:x13; op1val:0x00000001;  immval:1
TEST_IMM_OP( slli, x13, x4, 0x2, 0x00000001, 1, x8, 44, x10)

# rs1==x21, rd==x7, imm_val == 2, 
# opcode: slli ; op1:x21; dest:x7; op1val:0x3fffffff;  immval:2
TEST_IMM_OP( slli, x7, x21, 0xfffffffc, 0x3fffffff, 2, x8, 48, x10)

# rs1==x28, rd==x25, imm_val == 8, rs1_val == 8192
# opcode: slli ; op1:x28; dest:x25; op1val:0x00002000;  immval:8
TEST_IMM_OP( slli, x25, x28, 0x200000, 0x00002000, 8, x8, 52, x10)

# rs1==x0, rd==x5, imm_val == 30, rs1_val == 134217728
# opcode: slli ; op1:x0; dest:x5; op1val:0x08000000;  immval:30
TEST_IMM_OP( slli, x5, x0, 0x0, 0x08000000, 30, x8, 56, x10)

# rs1==x29, rd==x1, imm_val == 29, rs1_val == -129
# opcode: slli ; op1:x29; dest:x1; op1val:0xffffff7f;  immval:29
TEST_IMM_OP( slli, x1, x29, 0xe0000000, 0xffffff7f, 29, x8, 60, x10)

# rs1==x20, rd==x0, imm_val == 27, rs1_val == 536870912
# opcode: slli ; op1:x20; dest:x0; op1val:0x20000000;  immval:27
TEST_IMM_OP( slli, x0, x20, 0x0, 0x20000000, 27, x8, 64, x10)

# rs1==x11, rd==x9, imm_val == 23, rs1_val == -32769
# opcode: slli ; op1:x11; dest:x9; op1val:0xffff7fff;  immval:23
TEST_IMM_OP( slli, x9, x11, 0xff800000, 0xffff7fff, 23, x8, 68, x10)

# rs1==x3, rd==x4, imm_val == 10, rs1_val == -262145
# opcode: slli ; op1:x3; dest:x4; op1val:0xfffbffff;  immval:10
TEST_IMM_OP( slli, x4, x3, 0xeffffc00, 0xfffbffff, 10, x8, 72, x10)

# rs1==x6, rd==x23, rs1_val == 2, 
# opcode: slli ; op1:x6; dest:x23; op1val:0x00000002;  immval:3
TEST_IMM_OP( slli, x23, x6, 0x10, 0x00000002, 3, x8, 76, x10)
la x2,signature_x2_0

# rs1==x17, rd==x3, rs1_val == 4, 
# opcode: slli ; op1:x17; dest:x3; op1val:0x00000004;  immval:19
TEST_IMM_OP( slli, x3, x17, 0x200000, 0x00000004, 19, x2, 0, x4)

# rs1==x27, rd==x6, rs1_val == 8, 
# opcode: slli ; op1:x27; dest:x6; op1val:0x00000008;  immval:30
TEST_IMM_OP( slli, x6, x27, 0x0, 0x00000008, 30, x2, 4, x4)

# rs1==x7, rd==x8, rs1_val == 32, 
# opcode: slli ; op1:x7; dest:x8; op1val:0x00000020;  immval:18
TEST_IMM_OP( slli, x8, x7, 0x800000, 0x00000020, 18, x2, 8, x4)

# rs1==x5, rd==x10, rs1_val == 128, 
# opcode: slli ; op1:x5; dest:x10; op1val:0x00000080;  immval:11
TEST_IMM_OP( slli, x10, x5, 0x40000, 0x00000080, 11, x2, 12, x4)

# rs1==x23, rd==x26, rs1_val == 256, 
# opcode: slli ; op1:x23; dest:x26; op1val:0x00000100;  immval:31
TEST_IMM_OP( slli, x26, x23, 0x0, 0x00000100, 31, x2, 16, x4)

# rs1==x14, rd==x21, rs1_val == 512, 
# opcode: slli ; op1:x14; dest:x21; op1val:0x00000200;  immval:2
TEST_IMM_OP( slli, x21, x14, 0x800, 0x00000200, 2, x2, 20, x4)

# rs1==x8, rd==x24, rs1_val == 1024, 
# opcode: slli ; op1:x8; dest:x24; op1val:0x00000400;  immval:1
TEST_IMM_OP( slli, x24, x8, 0x800, 0x00000400, 1, x2, 24, x4)

# rs1==x13, rd==x20, rs1_val == 2048, 
# opcode: slli ; op1:x13; dest:x20; op1val:0x00000800;  immval:0
TEST_IMM_OP( slli, x20, x13, 0x800, 0x00000800, 0, x2, 28, x4)

# rs1==x1, rd==x30, rs1_val == 4096, 
# opcode: slli ; op1:x1; dest:x30; op1val:0x00001000;  immval:31
TEST_IMM_OP( slli, x30, x1, 0x0, 0x00001000, 31, x2, 32, x4)

# rs1==x18, rd==x31, rs1_val == 16384, 
# opcode: slli ; op1:x18; dest:x31; op1val:0x00004000;  immval:31
TEST_IMM_OP( slli, x31, x18, 0x0, 0x00004000, 31, x2, 36, x4)

# rs1==x9, rd==x14, rs1_val == 32768, 
# opcode: slli ; op1:x9; dest:x14; op1val:0x00008000;  immval:10
TEST_IMM_OP( slli, x14, x9, 0x2000000, 0x00008000, 10, x2, 40, x4)

# rs1==x10, rd==x28, rs1_val == 65536, 
# opcode: slli ; op1:x10; dest:x28; op1val:0x00010000;  immval:4
TEST_IMM_OP( slli, x28, x10, 0x100000, 0x00010000, 4, x2, 44, x4)

# rs1_val == 131072, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00020000;  immval:6
TEST_IMM_OP( slli, x11, x10, 0x800000, 0x00020000, 6, x2, 48, x4)

# rs1_val == 262144, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00040000;  immval:29
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00040000, 29, x2, 52, x4)

# rs1_val == 524288, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00080000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x400000, 0x00080000, 3, x2, 56, x4)

# rs1_val == 1048576, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00100000;  immval:16
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00100000, 16, x2, 60, x4)

# rs1_val == 2097152, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00200000;  immval:30
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00200000, 30, x2, 64, x4)

# rs1_val == 4194304, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00400000;  immval:23
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00400000, 23, x2, 68, x4)

# rs1_val == 8388608, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x00800000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x8000000, 0x00800000, 4, x2, 72, x4)

# rs1_val == -513, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:27
TEST_IMM_OP( slli, x11, x10, 0xf8000000, 0xfffffdff, 27, x2, 76, x4)

# rs1_val == -1025, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:13
TEST_IMM_OP( slli, x11, x10, 0xff7fe000, 0xfffffbff, 13, x2, 80, x4)

# rs1_val == -2049, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:14
TEST_IMM_OP( slli, x11, x10, 0xfdffc000, 0xfffff7ff, 14, x2, 84, x4)

# rs1_val == -4097, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffefff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xffefff00, 0xffffefff, 8, x2, 88, x4)

# rs1_val == -8193, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xefff8000, 0xffffdfff, 15, x2, 92, x4)

# rs1_val == -16385, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xfffefffc, 0xffffbfff, 2, x2, 96, x4)

# rs1_val == -65537, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xfff7fff8, 0xfffeffff, 3, x2, 100, x4)

# rs1_val == -524289, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xff800000, 0xfff7ffff, 23, x2, 104, x4)

# rs1_val == -1048577, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffefffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xffff0000, 0xffefffff, 16, x2, 108, x4)

# rs1_val == -2097153, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:11
TEST_IMM_OP( slli, x11, x10, 0xfffff800, 0xffdfffff, 11, x2, 112, x4)

# rs1_val == -4194305, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:27
TEST_IMM_OP( slli, x11, x10, 0xf8000000, 0xffbfffff, 27, x2, 116, x4)

# rs1_val == -8388609, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:5
TEST_IMM_OP( slli, x11, x10, 0xefffffe0, 0xff7fffff, 5, x2, 120, x4)

# rs1_val == -33554433, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xfffffc00, 0xfdffffff, 10, x2, 124, x4)

# rs1_val == -67108865, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xfffc0000, 0xfbffffff, 18, x2, 128, x4)

# rs1_val == -134217729, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xffffff00, 0xf7ffffff, 8, x2, 132, x4)

# rs1_val == -268435457, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xefffffff;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xff800000, 0xefffffff, 23, x2, 136, x4)

# rs1_val == 16777216, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x01000000;  immval:23
TEST_IMM_OP( slli, x11, x10, 0x0, 0x01000000, 23, x2, 140, x4)

# rs1_val == 33554432, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x02000000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x20000000, 0x02000000, 4, x2, 144, x4)

# rs1_val == 67108864, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x04000000;  immval:1
TEST_IMM_OP( slli, x11, x10, 0x8000000, 0x04000000, 1, x2, 148, x4)

# rs1_val == 268435456, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x10000000;  immval:6
TEST_IMM_OP( slli, x11, x10, 0x0, 0x10000000, 6, x2, 152, x4)

# rs1_val == -536870913, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xff800000, 0xdfffffff, 23, x2, 156, x4)

# rs1_val == -1073741825, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xfffffffc, 0xbfffffff, 2, x2, 160, x4)

# rs1_val == -2, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xfffffffc, 0xfffffffe, 1, x2, 164, x4)

# rs1_val == 1431655765, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x55555555;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xaa800000, 0x55555555, 23, x2, 168, x4)

# rs1_val == -3, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xffffd000, 0xfffffffd, 12, x2, 172, x4)

# rs1_val == -5, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:21
TEST_IMM_OP( slli, x11, x10, 0xff600000, 0xfffffffb, 21, x2, 176, x4)

# rs1_val == -9, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:9
TEST_IMM_OP( slli, x11, x10, 0xffffee00, 0xfffffff7, 9, x2, 180, x4)

# rs1_val == -17, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffef;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0xffffffef, 31, x2, 184, x4)

# rs1_val == -33, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xffff7c00, 0xffffffdf, 10, x2, 188, x4)

# rs1_val == -65, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:5
TEST_IMM_OP( slli, x11, x10, 0xfffff7e0, 0xffffffbf, 5, x2, 192, x4)

# rs1_val == -257, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:30
TEST_IMM_OP( slli, x11, x10, 0xc0000000, 0xfffffeff, 30, x2, 196, x4)

# rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -131073, imm_val == 21
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:21
TEST_IMM_OP( slli, x11, x10, 0xffe00000, 0xfffdffff, 21, x2, 200, x4)

# imm_val == 30, rs1_val == 134217728
# opcode: slli ; op1:x10; dest:x11; op1val:0x08000000;  immval:30
TEST_IMM_OP( slli, x11, x10, 0x0, 0x08000000, 30, x2, 204, x4)

# imm_val == 27, rs1_val == 536870912
# opcode: slli ; op1:x10; dest:x11; op1val:0x20000000;  immval:27
TEST_IMM_OP( slli, x11, x10, 0x0, 0x20000000, 27, x2, 208, x4)
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

signature_x8_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x8_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x2_0:
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
