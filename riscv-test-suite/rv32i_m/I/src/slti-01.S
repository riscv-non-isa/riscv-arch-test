
#This assembly file tests the slti instruction of the RISC-V I extension for the slti covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slti)

RVTEST_SIGBASE( x19,signature_x19_1)

# rs1 != rd, rs1==x11, rd==x2, rs1_val == imm_val, rs1_val == 16, rs1_val > 0 and imm_val > 0, imm_val == 16
# opcode: slti ; op1:x11; dest:x2; op1val:0x00000010;  immval:16
TEST_IMM_OP( slti, x2, x11, 0x0, 0x00000010, 16, x19, 0, x6)

# rs1 == rd, rs1==x25, rd==x25, rs1_val != imm_val, rs1_val == 2048, rs1_val > 0 and imm_val < 0
# opcode: slti ; op1:x25; dest:x25; op1val:0x00000800;  immval:-7
TEST_IMM_OP( slti, x25, x25, 0x0, 0x00000800, -7, x19, 4, x6)

# rs1==x9, rd==x15, rs1_val < 0 and imm_val > 0, imm_val == 32, rs1_val == -257
# opcode: slti ; op1:x9; dest:x15; op1val:0xfffffeff;  immval:32
TEST_IMM_OP( slti, x15, x9, 0x1, 0xfffffeff, 32, x19, 8, x6)

# rs1==x13, rd==x14, rs1_val < 0 and imm_val < 0, rs1_val == -33
# opcode: slti ; op1:x13; dest:x14; op1val:0xffffffdf;  immval:-4
TEST_IMM_OP( slti, x14, x13, 0x1, 0xffffffdf, -4, x19, 12, x6)

# rs1==x17, rd==x1, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648
# opcode: slti ; op1:x17; dest:x1; op1val:0x80000000;  immval:-7
TEST_IMM_OP( slti, x1, x17, 0x1, 0x80000000, -7, x19, 16, x6)

# rs1==x10, rd==x3, rs1_val == 0, imm_val == 4
# opcode: slti ; op1:x10; dest:x3; op1val:0x00000000;  immval:4
TEST_IMM_OP( slti, x3, x10, 0x1, 0x00000000, 4, x19, 20, x6)

# rs1==x4, rd==x13, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647
# opcode: slti ; op1:x4; dest:x13; op1val:0x7fffffff;  immval:5
TEST_IMM_OP( slti, x13, x4, 0x0, 0x7fffffff, 5, x19, 24, x6)

# rs1==x18, rd==x29, rs1_val == 1, imm_val == -2048, imm_val == (-2**(12-1))
# opcode: slti ; op1:x18; dest:x29; op1val:0x00000001;  immval:-2048
TEST_IMM_OP( slti, x29, x18, 0x0, 0x00000001, -2048, x19, 28, x6)

# rs1==x12, rd==x11, imm_val == 0, rs1_val == 67108864
# opcode: slti ; op1:x12; dest:x11; op1val:0x04000000;  immval:0
TEST_IMM_OP( slti, x11, x12, 0x0, 0x04000000, 0, x19, 32, x6)

# rs1==x20, rd==x28, imm_val == (2**(12-1)-1), rs1_val == -2049, imm_val == 2047
# opcode: slti ; op1:x20; dest:x28; op1val:0xfffff7ff;  immval:2047
TEST_IMM_OP( slti, x28, x20, 0x1, 0xfffff7ff, 2047, x19, 36, x6)

# rs1==x23, rd==x26, imm_val == 1, rs1_val == 1048576
# opcode: slti ; op1:x23; dest:x26; op1val:0x00100000;  immval:1
TEST_IMM_OP( slti, x26, x23, 0x0, 0x00100000, 1, x19, 40, x6)

# rs1==x29, rd==x31, rs1_val == 2, imm_val == -2
# opcode: slti ; op1:x29; dest:x31; op1val:0x00000002;  immval:-2
TEST_IMM_OP( slti, x31, x29, 0x0, 0x00000002, -2, x19, 44, x6)

# rs1==x16, rd==x18, rs1_val == 4, imm_val == 8
# opcode: slti ; op1:x16; dest:x18; op1val:0x00000004;  immval:8
TEST_IMM_OP( slti, x18, x16, 0x1, 0x00000004, 8, x19, 48, x6)

# rs1==x30, rd==x9, rs1_val == 8, 
# opcode: slti ; op1:x30; dest:x9; op1val:0x00000008;  immval:1023
TEST_IMM_OP( slti, x9, x30, 0x1, 0x00000008, 1023, x19, 52, x6)

# rs1==x0, rd==x12, rs1_val == 32, imm_val == -257
# opcode: slti ; op1:x0; dest:x12; op1val:0x00000020;  immval:-257
TEST_IMM_OP( slti, x12, x0, 0x0, 0x00000020, -257, x19, 56, x6)

# rs1==x8, rd==x20, rs1_val == 64, 
# opcode: slti ; op1:x8; dest:x20; op1val:0x00000040;  immval:8
TEST_IMM_OP( slti, x20, x8, 0x0, 0x00000040, 8, x19, 60, x6)

# rs1==x24, rd==x0, rs1_val == 128, imm_val == 1024
# opcode: slti ; op1:x24; dest:x0; op1val:0x00000080;  immval:1024
TEST_IMM_OP( slti, x0, x24, 0x1, 0x00000080, 1024, x19, 64, x6)

# rs1==x14, rd==x30, rs1_val == 256, 
# opcode: slti ; op1:x14; dest:x30; op1val:0x00000100;  immval:6
TEST_IMM_OP( slti, x30, x14, 0x0, 0x00000100, 6, x19, 68, x6)

# rs1==x7, rd==x22, rs1_val == 512, 
# opcode: slti ; op1:x7; dest:x22; op1val:0x00000200;  immval:-1024
TEST_IMM_OP( slti, x22, x7, 0x0, 0x00000200, -1024, x19, 72, x6)

# rs1==x1, rd==x5, rs1_val == 1024, imm_val == 64
# opcode: slti ; op1:x1; dest:x5; op1val:0x00000400;  immval:64
TEST_IMM_OP( slti, x5, x1, 0x0, 0x00000400, 64, x19, 76, x6)

# rs1==x5, rd==x16, rs1_val == 4096, imm_val == -17
# opcode: slti ; op1:x5; dest:x16; op1val:0x00001000;  immval:-17
TEST_IMM_OP( slti, x16, x5, 0x0, 0x00001000, -17, x19, 80, x9)

# rs1==x6, rd==x27, rs1_val == 8192, 
# opcode: slti ; op1:x6; dest:x27; op1val:0x00002000;  immval:5
TEST_IMM_OP( slti, x27, x6, 0x0, 0x00002000, 5, x19, 84, x9)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x31, rd==x4, rs1_val == 16384, 
# opcode: slti ; op1:x31; dest:x4; op1val:0x00004000;  immval:0
TEST_IMM_OP( slti, x4, x31, 0x0, 0x00004000, 0, x1, 0, x9)

# rs1==x21, rd==x19, rs1_val == 32768, imm_val == 512
# opcode: slti ; op1:x21; dest:x19; op1val:0x00008000;  immval:512
TEST_IMM_OP( slti, x19, x21, 0x0, 0x00008000, 512, x1, 4, x9)

# rs1==x27, rd==x8, rs1_val == 65536, 
# opcode: slti ; op1:x27; dest:x8; op1val:0x00010000;  immval:64
TEST_IMM_OP( slti, x8, x27, 0x0, 0x00010000, 64, x1, 8, x9)

# rs1==x19, rd==x21, rs1_val == 131072, imm_val == -33
# opcode: slti ; op1:x19; dest:x21; op1val:0x00020000;  immval:-33
TEST_IMM_OP( slti, x21, x19, 0x0, 0x00020000, -33, x1, 12, x9)

# rs1==x28, rd==x7, rs1_val == 262144, 
# opcode: slti ; op1:x28; dest:x7; op1val:0x00040000;  immval:6
TEST_IMM_OP( slti, x7, x28, 0x0, 0x00040000, 6, x1, 16, x9)

# rs1==x2, rd==x6, rs1_val == 524288, imm_val == 256
# opcode: slti ; op1:x2; dest:x6; op1val:0x00080000;  immval:256
TEST_IMM_OP( slti, x6, x2, 0x0, 0x00080000, 256, x1, 20, x9)

# rs1==x22, rd==x10, rs1_val == 2097152, 
# opcode: slti ; op1:x22; dest:x10; op1val:0x00200000;  immval:-10
TEST_IMM_OP( slti, x10, x22, 0x0, 0x00200000, -10, x1, 24, x9)

# rs1==x3, rd==x23, rs1_val == 4194304, 
# opcode: slti ; op1:x3; dest:x23; op1val:0x00400000;  immval:-33
TEST_IMM_OP( slti, x23, x3, 0x0, 0x00400000, -33, x1, 28, x9)

# rs1==x26, rd==x24, rs1_val == 8388608, 
# opcode: slti ; op1:x26; dest:x24; op1val:0x00800000;  immval:1024
TEST_IMM_OP( slti, x24, x26, 0x0, 0x00800000, 1024, x1, 32, x9)

# rs1==x15, rd==x17, rs1_val == 16777216, 
# opcode: slti ; op1:x15; dest:x17; op1val:0x01000000;  immval:64
TEST_IMM_OP( slti, x17, x15, 0x0, 0x01000000, 64, x1, 36, x9)

# rs1_val == 33554432, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x02000000;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x0, 0x02000000, -10, x1, 40, x9)

# rs1_val == 134217728, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x08000000;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x0, 0x08000000, -1, x1, 44, x9)

# rs1_val == 268435456, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x10000000;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x0, 0x10000000, 1024, x1, 48, x9)

# rs1_val == 536870912, imm_val == -9
# opcode: slti ; op1:x10; dest:x11; op1val:0x20000000;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x0, 0x20000000, -9, x1, 52, x9)

# rs1_val == 1073741824, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x40000000;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x0, 0x40000000, 8, x1, 56, x9)

# rs1_val == -2, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffe, 9, x1, 60, x9)

# rs1_val == -3, imm_val == -5
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffd, -5, x1, 64, x9)

# rs1_val == -5, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffb, 1024, x1, 68, x9)

# rs1_val == -9, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffff7, 512, x1, 72, x9)

# rs1_val == -17, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffef;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffef, 4, x1, 76, x9)

# rs1_val == -65, imm_val == 1365
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffbf, 1365, x1, 80, x9)

# rs1_val == -129, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffff7f, 6, x1, 84, x9)

# rs1_val == -524289, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfff7ffff, 1, x1, 88, x9)

# rs1_val == -1048577, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffefffff;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffefffff, 7, x1, 92, x9)

# rs1_val == -2097153, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffdfffff, -257, x1, 96, x9)

# rs1_val == -4194305, imm_val == -65
# opcode: slti ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffbfffff, -65, x1, 100, x9)

# rs1_val == -8388609, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xff7fffff, 32, x1, 104, x9)

# rs1_val == -16777217, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfeffffff, -2, x1, 108, x9)

# rs1_val == -33554433, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfdffffff, -17, x1, 112, x9)

# rs1_val == -67108865, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfbffffff, 3, x1, 116, x9)

# rs1_val == -134217729, imm_val == -1025
# opcode: slti ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x1, 0xf7ffffff, -1025, x1, 120, x9)

# rs1_val == -268435457, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xefffffff;  immval:1023
TEST_IMM_OP( slti, x11, x10, 0x1, 0xefffffff, 1023, x1, 124, x9)

# rs1_val == -536870913, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xdfffffff, 9, x1, 128, x9)

# rs1_val == -1073741825, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xbfffffff, -6, x1, 132, x9)

# rs1_val == 1431655765, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x55555555;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x0, 0x55555555, 8, x1, 136, x9)

# rs1_val == -1431655766, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xaaaaaaaa, 1024, x1, 140, x9)

# imm_val == -129, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x00000400;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00000400, -129, x1, 144, x9)

# imm_val == -513, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x10000000;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x0, 0x10000000, -513, x1, 148, x9)

# imm_val == -1366, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x3fffffff;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x0, 0x3fffffff, -1366, x1, 152, x9)

# imm_val == -3, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x00000001;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00000001, -3, x1, 156, x9)

# imm_val == 2, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x00000006;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00000006, 2, x1, 160, x9)

# imm_val == 128, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x00000100;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00000100, 128, x1, 164, x9)

# rs1_val == -513, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffdff, -33, x1, 168, x9)

# rs1_val == -1025, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:16
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffbff, 16, x1, 172, x9)

# rs1_val == -4097, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffefff;  immval:0
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffefff, 0, x1, 176, x9)

# rs1_val == -8193, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffdfff, 4, x1, 180, x9)

# rs1_val == -16385, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:0
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffbfff, 0, x1, 184, x9)

# rs1_val == -32769, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffff7fff, -6, x1, 188, x9)

# rs1_val == -65537, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:16
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffeffff, 16, x1, 192, x9)

# rs1_val == -131073, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffdffff, -33, x1, 196, x9)

# rs1_val == -262145, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffbffff, 6, x1, 200, x9)

# rs1_val == 32, imm_val == -257
# opcode: slti ; op1:x10; dest:x11; op1val:0x00000020;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x0, 0x00000020, -257, x1, 204, x9)

# rs1_val == 128, imm_val == 1024
# opcode: slti ; op1:x10; dest:x11; op1val:0x00000080;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0x00000080, 1024, x1, 208, x9)
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

signature_x19_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x19_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
