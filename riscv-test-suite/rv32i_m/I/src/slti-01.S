
#This assembly file tests the slti instruction of the RISC-V I extension for the slti covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slti)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 != rd, rs1==x21, rd==x6, rs1_val == imm_val, imm_val == 4, rs1_val > 0 and imm_val > 0, rs1_val == 4
# opcode: slti ; op1:x21; dest:x6; op1val:0x00000004;  immval:4
TEST_IMM_OP( slti, x6, x21, 0x0, 0x00000004, 4, x7, 0, x11)

# rs1 == rd, rs1==x8, rd==x8, rs1_val != imm_val, rs1_val == 524288, rs1_val > 0 and imm_val < 0, imm_val == -65
# opcode: slti ; op1:x8; dest:x8; op1val:0x00080000;  immval:-65
TEST_IMM_OP( slti, x8, x8, 0x0, 0x00080000, -65, x7, 4, x11)

# rs1==x4, rd==x9, rs1_val < 0 and imm_val > 0, imm_val == (2**(12-1)-1), imm_val == 2047, rs1_val == -513
# opcode: slti ; op1:x4; dest:x9; op1val:0xfffffdff;  immval:2047
TEST_IMM_OP( slti, x9, x4, 0x1, 0xfffffdff, 2047, x7, 8, x11)

# rs1==x15, rd==x21, rs1_val < 0 and imm_val < 0, imm_val == -5
# opcode: slti ; op1:x15; dest:x21; op1val:0xfffffdff;  immval:-5
TEST_IMM_OP( slti, x21, x15, 0x1, 0xfffffdff, -5, x7, 12, x11)

# rs1==x22, rd==x17, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648, imm_val == 2
# opcode: slti ; op1:x22; dest:x17; op1val:0x80000000;  immval:2
TEST_IMM_OP( slti, x17, x22, 0x1, 0x80000000, 2, x7, 16, x11)

# rs1==x6, rd==x16, rs1_val == 0, imm_val == 512
# opcode: slti ; op1:x6; dest:x16; op1val:0x00000000;  immval:512
TEST_IMM_OP( slti, x16, x6, 0x1, 0x00000000, 512, x7, 20, x11)

# rs1==x13, rd==x29, rs1_val == (2**(xlen-1)-1), imm_val == -2048, imm_val == (-2**(12-1)), rs1_val == 2147483647
# opcode: slti ; op1:x13; dest:x29; op1val:0x7fffffff;  immval:-2048
TEST_IMM_OP( slti, x29, x13, 0x0, 0x7fffffff, -2048, x7, 24, x11)

# rs1==x1, rd==x13, rs1_val == 1, imm_val == -17
# opcode: slti ; op1:x1; dest:x13; op1val:0x00000001;  immval:-17
TEST_IMM_OP( slti, x13, x1, 0x0, 0x00000001, -17, x7, 28, x11)

# rs1==x27, rd==x3, imm_val == 0, 
# opcode: slti ; op1:x27; dest:x3; op1val:0xfffffff8;  immval:0
TEST_IMM_OP( slti, x3, x27, 0x1, 0xfffffff8, 0, x7, 32, x11)

# rs1==x30, rd==x26, imm_val == 1, rs1_val == 134217728
# opcode: slti ; op1:x30; dest:x26; op1val:0x08000000;  immval:1
TEST_IMM_OP( slti, x26, x30, 0x0, 0x08000000, 1, x7, 36, x11)

# rs1==x28, rd==x10, rs1_val == 2, 
# opcode: slti ; op1:x28; dest:x10; op1val:0x00000002;  immval:-8
TEST_IMM_OP( slti, x10, x28, 0x0, 0x00000002, -8, x7, 40, x11)

# rs1==x18, rd==x23, rs1_val == 8, imm_val == -2
# opcode: slti ; op1:x18; dest:x23; op1val:0x00000008;  immval:-2
TEST_IMM_OP( slti, x23, x18, 0x0, 0x00000008, -2, x7, 44, x11)

# rs1==x16, rd==x22, rs1_val == 16, 
# opcode: slti ; op1:x16; dest:x22; op1val:0x00000010;  immval:-8
TEST_IMM_OP( slti, x22, x16, 0x0, 0x00000010, -8, x7, 48, x11)

# rs1==x17, rd==x12, rs1_val == 32, 
# opcode: slti ; op1:x17; dest:x12; op1val:0x00000020;  immval:0
TEST_IMM_OP( slti, x12, x17, 0x0, 0x00000020, 0, x7, 52, x11)

# rs1==x20, rd==x15, rs1_val == 64, 
# opcode: slti ; op1:x20; dest:x15; op1val:0x00000040;  immval:-1024
TEST_IMM_OP( slti, x15, x20, 0x0, 0x00000040, -1024, x7, 56, x11)

# rs1==x10, rd==x27, rs1_val == 128, 
# opcode: slti ; op1:x10; dest:x27; op1val:0x00000080;  immval:-6
TEST_IMM_OP( slti, x27, x10, 0x0, 0x00000080, -6, x7, 60, x11)

# rs1==x26, rd==x0, rs1_val == 256, 
# opcode: slti ; op1:x26; dest:x0; op1val:0x00000100;  immval:-65
TEST_IMM_OP( slti, x0, x26, 0x0, 0x00000100, -65, x7, 64, x11)

# rs1==x9, rd==x20, rs1_val == 512, imm_val == 128
# opcode: slti ; op1:x9; dest:x20; op1val:0x00000200;  immval:128
TEST_IMM_OP( slti, x20, x9, 0x0, 0x00000200, 128, x7, 68, x11)

# rs1==x19, rd==x5, rs1_val == 1024, 
# opcode: slti ; op1:x19; dest:x5; op1val:0x00000400;  immval:-17
TEST_IMM_OP( slti, x5, x19, 0x0, 0x00000400, -17, x7, 72, x11)

# rs1==x5, rd==x18, rs1_val == 2048, imm_val == 256
# opcode: slti ; op1:x5; dest:x18; op1val:0x00000800;  immval:256
TEST_IMM_OP( slti, x18, x5, 0x0, 0x00000800, 256, x7, 76, x11)

# rs1==x12, rd==x24, rs1_val == 4096, imm_val == -9
# opcode: slti ; op1:x12; dest:x24; op1val:0x00001000;  immval:-9
TEST_IMM_OP( slti, x24, x12, 0x0, 0x00001000, -9, x7, 80, x11)

# rs1==x2, rd==x31, rs1_val == 8192, imm_val == 1365
# opcode: slti ; op1:x2; dest:x31; op1val:0x00002000;  immval:1365
TEST_IMM_OP( slti, x31, x2, 0x0, 0x00002000, 1365, x7, 84, x11)

# rs1==x31, rd==x1, rs1_val == 16384, 
# opcode: slti ; op1:x31; dest:x1; op1val:0x00004000;  immval:-7
TEST_IMM_OP( slti, x1, x31, 0x0, 0x00004000, -7, x7, 88, x5)

# rs1==x0, rd==x2, rs1_val == 32768, 
# opcode: slti ; op1:x0; dest:x2; op1val:0x00008000;  immval:4
TEST_IMM_OP( slti, x2, x0, 0x0, 0x00008000, 4, x7, 92, x5)

# rs1==x24, rd==x25, rs1_val == 65536, imm_val == -33
# opcode: slti ; op1:x24; dest:x25; op1val:0x00010000;  immval:-33
TEST_IMM_OP( slti, x25, x24, 0x0, 0x00010000, -33, x7, 96, x5)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x25, rd==x7, rs1_val == 131072, imm_val == 64
# opcode: slti ; op1:x25; dest:x7; op1val:0x00020000;  immval:64
TEST_IMM_OP( slti, x7, x25, 0x0, 0x00020000, 64, x1, 0, x5)

# rs1==x29, rd==x14, rs1_val == 262144, imm_val == -129
# opcode: slti ; op1:x29; dest:x14; op1val:0x00040000;  immval:-129
TEST_IMM_OP( slti, x14, x29, 0x0, 0x00040000, -129, x1, 4, x5)

# rs1==x23, rd==x30, rs1_val == 1048576, imm_val == -1025
# opcode: slti ; op1:x23; dest:x30; op1val:0x00100000;  immval:-1025
TEST_IMM_OP( slti, x30, x23, 0x0, 0x00100000, -1025, x1, 8, x5)

# rs1==x14, rd==x28, rs1_val == 2097152, imm_val == 1024
# opcode: slti ; op1:x14; dest:x28; op1val:0x00200000;  immval:1024
TEST_IMM_OP( slti, x28, x14, 0x0, 0x00200000, 1024, x1, 12, x5)

# rs1==x7, rd==x11, rs1_val == 4194304, 
# opcode: slti ; op1:x7; dest:x11; op1val:0x00400000;  immval:1
TEST_IMM_OP( slti, x11, x7, 0x0, 0x00400000, 1, x1, 16, x5)

# rs1==x3, rd==x19, rs1_val == 8388608, 
# opcode: slti ; op1:x3; dest:x19; op1val:0x00800000;  immval:-10
TEST_IMM_OP( slti, x19, x3, 0x0, 0x00800000, -10, x1, 20, x5)

# rs1==x11, rd==x4, rs1_val == 16777216, 
# opcode: slti ; op1:x11; dest:x4; op1val:0x01000000;  immval:128
TEST_IMM_OP( slti, x4, x11, 0x0, 0x01000000, 128, x1, 24, x5)

# rs1_val == 33554432, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x02000000;  immval:9
TEST_IMM_OP( slti, x11, x10, 0x0, 0x02000000, 9, x1, 28, x5)

# rs1_val == 67108864, imm_val == -1366
# opcode: slti ; op1:x10; dest:x11; op1val:0x04000000;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x0, 0x04000000, -1366, x1, 32, x5)

# rs1_val == 268435456, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x10000000;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x0, 0x10000000, -10, x1, 36, x5)

# rs1_val == 536870912, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x20000000;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x20000000, 7, x1, 40, x5)

# rs1_val == 1073741824, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x40000000;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x0, 0x40000000, -65, x1, 44, x5)

# rs1_val == -2, imm_val == 16
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:16
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffe, 16, x1, 48, x5)

# rs1_val == -3, imm_val == 32
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffd, 32, x1, 52, x5)

# rs1_val == -5, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffb, -7, x1, 56, x5)

# rs1_val == -9, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:16
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffff7, 16, x1, 60, x5)

# rs1_val == -17, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffef;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffef, 512, x1, 64, x5)

# rs1_val == -524289, imm_val == -257
# opcode: slti ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfff7ffff, -257, x1, 68, x5)

# rs1_val == -1048577, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffefffff, -2, x1, 72, x5)

# rs1_val == -2097153, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffdfffff, -65, x1, 76, x5)

# rs1_val == -4194305, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffbfffff, 7, x1, 80, x5)

# rs1_val == -8388609, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:16
TEST_IMM_OP( slti, x11, x10, 0x1, 0xff7fffff, 16, x1, 84, x5)

# rs1_val == -16777217, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfeffffff, 6, x1, 88, x5)

# rs1_val == -33554433, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfdffffff, -1366, x1, 92, x5)

# rs1_val == -67108865, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfbffffff, -129, x1, 96, x5)

# rs1_val == -134217729, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x1, 0xf7ffffff, -1025, x1, 100, x5)

# rs1_val == -268435457, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xefffffff;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x1, 0xefffffff, 1365, x1, 104, x5)

# rs1_val == -536870913, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xdfffffff, -8, x1, 108, x5)

# rs1_val == -1073741825, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xbfffffff, 128, x1, 112, x5)

# rs1_val == 1431655765, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x55555555;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x0, 0x55555555, -5, x1, 116, x5)

# rs1_val == -1431655766, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xaaaaaaaa, 2, x1, 120, x5)

# imm_val == 8, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x00800000;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00800000, 8, x1, 124, x5)

# imm_val == -513, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffe, -513, x1, 128, x5)

# imm_val == -3, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffe, -3, x1, 132, x5)

# rs1_val == -33, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffdf, -5, x1, 136, x5)

# rs1_val == -65, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffbf, -5, x1, 140, x5)

# rs1_val == -129, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffff7f, 1024, x1, 144, x5)

# rs1_val == -257, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffeff, -33, x1, 148, x5)

# rs1_val == -1025, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffbff, 7, x1, 152, x5)

# rs1_val == -2049, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffff7ff, -8, x1, 156, x5)

# rs1_val == -4097, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffefff;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffefff, -5, x1, 160, x5)

# rs1_val == -8193, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffdfff, 8, x1, 164, x5)

# rs1_val == -16385, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffbfff, -1024, x1, 168, x5)

# rs1_val == -32769, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffff7fff, -5, x1, 172, x5)

# rs1_val == -65537, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffeffff, 1024, x1, 176, x5)

# rs1_val == -131073, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:0
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffdffff, 0, x1, 180, x5)

# rs1_val == -262145, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffbffff, 1365, x1, 184, x5)

# rs1_val != imm_val, rs1_val == 524288, rs1_val > 0 and imm_val < 0, imm_val == -65
# opcode: slti ; op1:x10; dest:x11; op1val:0x00080000;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00080000, -65, x1, 188, x5)

# rs1_val == 256, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x00000100;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00000100, -65, x1, 192, x5)

# rs1_val == 32768, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x00008000;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00008000, 4, x1, 196, x5)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x7_1:
    .fill 25*(XLEN/32),4,0xdeadbeef


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
