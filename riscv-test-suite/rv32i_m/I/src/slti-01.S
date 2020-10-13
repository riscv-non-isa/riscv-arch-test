
#This assembly file tests the slti instruction of the RISC-V I extension for the slti covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slti)

RVTEST_SIGBASE( x11,signature_x11_1)

# rs1 != rd, rs1==x19, rd==x27, rs1_val == imm_val, imm_val == -3, rs1_val < 0 and imm_val < 0, rs1_val == -3
# opcode: slti ; op1:x19; dest:x27; op1val:0xfffffffd;  immval:-3
TEST_IMM_OP( slti, x27, x19, 0x0, 0xfffffffd, -3, x11, 0, x6)

# rs1 == rd, rs1==x2, rd==x2, rs1_val != imm_val, imm_val == 8, rs1_val > 0 and imm_val > 0, rs1_val == 262144
# opcode: slti ; op1:x2; dest:x2; op1val:0x00040000;  immval:8
TEST_IMM_OP( slti, x2, x2, 0x0, 0x00040000, 8, x11, 4, x6)

# rs1==x9, rd==x31, rs1_val > 0 and imm_val < 0, imm_val == -257
# opcode: slti ; op1:x9; dest:x31; op1val:0x00000003;  immval:-257
TEST_IMM_OP( slti, x31, x9, 0x0, 0x00000003, -257, x11, 8, x6)

# rs1==x14, rd==x22, rs1_val < 0 and imm_val > 0, imm_val == 1024, rs1_val == -65
# opcode: slti ; op1:x14; dest:x22; op1val:0xffffffbf;  immval:1024
TEST_IMM_OP( slti, x22, x14, 0x1, 0xffffffbf, 1024, x11, 12, x6)

# rs1==x25, rd==x3, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648
# opcode: slti ; op1:x25; dest:x3; op1val:0x80000000;  immval:5
TEST_IMM_OP( slti, x3, x25, 0x1, 0x80000000, 5, x11, 16, x6)

# rs1==x3, rd==x13, rs1_val == 0, imm_val == -17
# opcode: slti ; op1:x3; dest:x13; op1val:0x00000000;  immval:-17
TEST_IMM_OP( slti, x13, x3, 0x0, 0x00000000, -17, x11, 20, x6)

# rs1==x20, rd==x28, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647
# opcode: slti ; op1:x20; dest:x28; op1val:0x7fffffff;  immval:1023
TEST_IMM_OP( slti, x28, x20, 0x0, 0x7fffffff, 1023, x11, 24, x6)

# rs1==x30, rd==x26, rs1_val == 1, 
# opcode: slti ; op1:x30; dest:x26; op1val:0x00000001;  immval:1023
TEST_IMM_OP( slti, x26, x30, 0x1, 0x00000001, 1023, x11, 28, x6)

# rs1==x29, rd==x23, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == -8193
# opcode: slti ; op1:x29; dest:x23; op1val:0xffffdfff;  immval:-2048
TEST_IMM_OP( slti, x23, x29, 0x1, 0xffffdfff, -2048, x11, 32, x6)

# rs1==x8, rd==x30, imm_val == 0, 
# opcode: slti ; op1:x8; dest:x30; op1val:0xfffffffc;  immval:0
TEST_IMM_OP( slti, x30, x8, 0x1, 0xfffffffc, 0, x11, 36, x6)

# rs1==x10, rd==x1, imm_val == (2**(12-1)-1), rs1_val == -4097, imm_val == 2047
# opcode: slti ; op1:x10; dest:x1; op1val:0xffffefff;  immval:2047
TEST_IMM_OP( slti, x1, x10, 0x1, 0xffffefff, 2047, x11, 40, x6)

# rs1==x27, rd==x19, imm_val == 1, rs1_val == -131073
# opcode: slti ; op1:x27; dest:x19; op1val:0xfffdffff;  immval:1
TEST_IMM_OP( slti, x19, x27, 0x1, 0xfffdffff, 1, x11, 44, x6)

# rs1==x4, rd==x12, rs1_val == 2, imm_val == 512
# opcode: slti ; op1:x4; dest:x12; op1val:0x00000002;  immval:512
TEST_IMM_OP( slti, x12, x4, 0x1, 0x00000002, 512, x11, 48, x6)

# rs1==x17, rd==x24, rs1_val == 4, 
# opcode: slti ; op1:x17; dest:x24; op1val:0x00000004;  immval:512
TEST_IMM_OP( slti, x24, x17, 0x1, 0x00000004, 512, x11, 52, x6)

# rs1==x7, rd==x18, rs1_val == 8, 
# opcode: slti ; op1:x7; dest:x18; op1val:0x00000008;  immval:-3
TEST_IMM_OP( slti, x18, x7, 0x0, 0x00000008, -3, x11, 56, x6)

# rs1==x21, rd==x0, rs1_val == 16, 
# opcode: slti ; op1:x21; dest:x0; op1val:0x00000010;  immval:-17
TEST_IMM_OP( slti, x0, x21, 0x0, 0x00000010, -17, x11, 60, x6)

# rs1==x22, rd==x5, rs1_val == 32, 
# opcode: slti ; op1:x22; dest:x5; op1val:0x00000020;  immval:-257
TEST_IMM_OP( slti, x5, x22, 0x0, 0x00000020, -257, x11, 64, x6)

# rs1==x15, rd==x6, rs1_val == 64, imm_val == -5
# opcode: slti ; op1:x15; dest:x6; op1val:0x00000040;  immval:-5
TEST_IMM_OP( slti, x6, x15, 0x0, 0x00000040, -5, x11, 68, x3)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x12, rd==x14, rs1_val == 128, imm_val == -513
# opcode: slti ; op1:x12; dest:x14; op1val:0x00000080;  immval:-513
TEST_IMM_OP( slti, x14, x12, 0x0, 0x00000080, -513, x2, 0, x3)

# rs1==x0, rd==x9, rs1_val == 256, 
# opcode: slti ; op1:x0; dest:x9; op1val:0x00000100;  immval:512
TEST_IMM_OP( slti, x9, x0, 0x1, 0x00000100, 512, x2, 4, x3)

# rs1==x23, rd==x16, rs1_val == 512, 
# opcode: slti ; op1:x23; dest:x16; op1val:0x00000200;  immval:9
TEST_IMM_OP( slti, x16, x23, 0x0, 0x00000200, 9, x2, 8, x3)

# rs1==x16, rd==x4, rs1_val == 1024, 
# opcode: slti ; op1:x16; dest:x4; op1val:0x00000400;  immval:-17
TEST_IMM_OP( slti, x4, x16, 0x0, 0x00000400, -17, x2, 12, x3)

# rs1==x28, rd==x10, rs1_val == 2048, 
# opcode: slti ; op1:x28; dest:x10; op1val:0x00000800;  immval:-17
TEST_IMM_OP( slti, x10, x28, 0x0, 0x00000800, -17, x2, 16, x3)

# rs1==x6, rd==x20, rs1_val == 4096, 
# opcode: slti ; op1:x6; dest:x20; op1val:0x00001000;  immval:-5
TEST_IMM_OP( slti, x20, x6, 0x0, 0x00001000, -5, x2, 20, x3)

# rs1==x1, rd==x17, rs1_val == 8192, 
# opcode: slti ; op1:x1; dest:x17; op1val:0x00002000;  immval:-3
TEST_IMM_OP( slti, x17, x1, 0x0, 0x00002000, -3, x2, 24, x3)

# rs1==x11, rd==x25, rs1_val == 16384, 
# opcode: slti ; op1:x11; dest:x25; op1val:0x00004000;  immval:1024
TEST_IMM_OP( slti, x25, x11, 0x0, 0x00004000, 1024, x2, 28, x3)

# rs1==x31, rd==x15, rs1_val == 32768, 
# opcode: slti ; op1:x31; dest:x15; op1val:0x00008000;  immval:2047
TEST_IMM_OP( slti, x15, x31, 0x0, 0x00008000, 2047, x2, 32, x3)

# rs1==x24, rd==x29, rs1_val == 65536, 
# opcode: slti ; op1:x24; dest:x29; op1val:0x00010000;  immval:-10
TEST_IMM_OP( slti, x29, x24, 0x0, 0x00010000, -10, x2, 36, x3)

# rs1==x26, rd==x11, rs1_val == 131072, 
# opcode: slti ; op1:x26; dest:x11; op1val:0x00020000;  immval:-10
TEST_IMM_OP( slti, x11, x26, 0x0, 0x00020000, -10, x2, 40, x3)

# rs1==x18, rd==x7, rs1_val == 524288, imm_val == 128
# opcode: slti ; op1:x18; dest:x7; op1val:0x00080000;  immval:128
TEST_IMM_OP( slti, x7, x18, 0x0, 0x00080000, 128, x2, 44, x3)

# rs1==x5, rd==x8, rs1_val == 1048576, 
# opcode: slti ; op1:x5; dest:x8; op1val:0x00100000;  immval:-7
TEST_IMM_OP( slti, x8, x5, 0x0, 0x00100000, -7, x2, 48, x3)

# rs1==x13, rd==x21, rs1_val == 2097152, 
# opcode: slti ; op1:x13; dest:x21; op1val:0x00200000;  immval:-6
TEST_IMM_OP( slti, x21, x13, 0x0, 0x00200000, -6, x2, 52, x3)

# rs1_val == 4194304, imm_val == 2
# opcode: slti ; op1:x10; dest:x11; op1val:0x00400000;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00400000, 2, x2, 56, x3)

# rs1_val == 8388608, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x00800000;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00800000, 7, x2, 60, x3)

# rs1_val == 16777216, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x01000000;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x0, 0x01000000, -8, x2, 64, x3)

# rs1_val == 33554432, imm_val == 256
# opcode: slti ; op1:x10; dest:x11; op1val:0x02000000;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x0, 0x02000000, 256, x2, 68, x3)

# rs1_val == 67108864, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x04000000;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x04000000, 7, x2, 72, x3)

# rs1_val == 134217728, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x08000000;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x08000000, -7, x2, 76, x3)

# rs1_val == 268435456, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x10000000;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x10000000, -4, x2, 80, x3)

# rs1_val == 536870912, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x20000000;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x0, 0x20000000, 3, x2, 84, x3)

# rs1_val == 1073741824, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x40000000;  immval:0
TEST_IMM_OP( slti, x11, x10, 0x0, 0x40000000, 0, x2, 88, x3)

# rs1_val == -2, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffe, 2047, x2, 92, x3)

# rs1_val == -5, imm_val == -1025
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffb, -1025, x2, 96, x3)

# rs1_val == -9, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffff7, 256, x2, 100, x3)

# rs1_val == -17, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffef;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffef, 7, x2, 104, x3)

# rs1_val == -33, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffdf, -8, x2, 108, x3)

# rs1_val == -129, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffff7f, -7, x2, 112, x3)

# rs1_val == -257, imm_val == 32
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffeff, 32, x2, 116, x3)

# rs1_val == -513, imm_val == 1365
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffdff, 1365, x2, 120, x3)

# rs1_val == -524289, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfff7ffff, 8, x2, 124, x3)

# rs1_val == -1048577, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffefffff;  immval:0
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffefffff, 0, x2, 128, x3)

# rs1_val == -2097153, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:1023
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffdfffff, 1023, x2, 132, x3)

# rs1_val == -4194305, imm_val == -9
# opcode: slti ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffbfffff, -9, x2, 136, x3)

# rs1_val == -8388609, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xff7fffff, -9, x2, 140, x3)

# rs1_val == -16777217, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfeffffff, 2047, x2, 144, x3)

# rs1_val == -33554433, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfdffffff, -6, x2, 148, x3)

# rs1_val == -67108865, imm_val == 16
# opcode: slti ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:16
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfbffffff, 16, x2, 152, x3)

# rs1_val == -134217729, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x1, 0xf7ffffff, -17, x2, 156, x3)

# rs1_val == -268435457, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xefffffff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xefffffff, 32, x2, 160, x3)

# rs1_val == -536870913, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xdfffffff, 6, x2, 164, x3)

# rs1_val == -1073741825, imm_val == -1366
# opcode: slti ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x1, 0xbfffffff, -1366, x2, 168, x3)

# imm_val == -65, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffdfffff, -65, x2, 172, x3)

# imm_val == -129, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfdffffff, -129, x2, 176, x3)

# rs1_val == 1431655765, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x55555555;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x0, 0x55555555, 32, x2, 180, x3)

# rs1_val == -1431655766, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xaaaaaaaa, 32, x2, 184, x3)

# imm_val == 4, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffff9;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffff9, 4, x2, 188, x3)

# imm_val == 64, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffdffff, 64, x2, 192, x3)

# rs1_val == -262145, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffbffff, 256, x2, 196, x3)

# rs1_val == -1025, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffbff, -513, x2, 200, x3)

# rs1_val == -2049, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffff7ff, 2047, x2, 204, x3)

# imm_val == -2, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x3fffffff;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x3fffffff, -2, x2, 208, x3)

# rs1_val == -16385, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffbfff, -4, x2, 212, x3)

# rs1_val == -32769, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffff7fff, -17, x2, 216, x3)

# rs1_val == -65537, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffeffff, -8, x2, 220, x3)

# imm_val == -33, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x00080000;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00080000, -33, x2, 224, x3)

# rs1_val != imm_val, imm_val == 8, rs1_val > 0 and imm_val > 0, rs1_val == 262144
# opcode: slti ; op1:x10; dest:x11; op1val:0x00040000;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00040000, 8, x2, 228, x3)

# rs1_val == 16, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x00000010;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00000010, -17, x2, 232, x3)

# rs1_val == 256, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x00000100;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x1, 0x00000100, 512, x2, 236, x3)
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

signature_x11_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x11_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 60*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
