
#This assembly file tests the addi instruction of the RISC-V I extension for the addi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",addi)

RVTEST_SIGBASE( x9,signature_x9_1)

# rs1 != rd, rs1==x8, rd==x22, rs1_val == imm_val, rs1_val == 16, rs1_val > 0 and imm_val > 0, imm_val == 16
# opcode: addi ; op1:x8; dest:x22; op1val:0x00000010;  immval:16
TEST_IMM_OP( addi, x22, x8, 0x20, 0x00000010, 16, x9, 0, x21)

# rs1 == rd, rs1==x6, rd==x6, rs1_val != imm_val, rs1_val > 0 and imm_val < 0, imm_val == -1025
# opcode: addi ; op1:x6; dest:x6; op1val:0x3fffffff;  immval:-1025
TEST_IMM_OP( addi, x6, x6, 0x3ffffbfe, 0x3fffffff, -1025, x9, 4, x21)

# rs1==x29, rd==x3, rs1_val < 0 and imm_val > 0, 
# opcode: addi ; op1:x29; dest:x3; op1val:0xfffffff8;  immval:9
TEST_IMM_OP( addi, x3, x29, 0x1, 0xfffffff8, 9, x9, 8, x21)

# rs1==x11, rd==x1, rs1_val < 0 and imm_val < 0, rs1_val == -536870913
# opcode: addi ; op1:x11; dest:x1; op1val:0xdfffffff;  immval:-1025
TEST_IMM_OP( addi, x1, x11, 0xdffffbfe, 0xdfffffff, -1025, x9, 12, x21)

# rs1==x5, rd==x28, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648
# opcode: addi ; op1:x5; dest:x28; op1val:0x80000000;  immval:3
TEST_IMM_OP( addi, x28, x5, 0x80000003, 0x80000000, 3, x9, 16, x21)

# rs1==x20, rd==x18, rs1_val == 0, imm_val == -513
# opcode: addi ; op1:x20; dest:x18; op1val:0x00000000;  immval:-513
TEST_IMM_OP( addi, x18, x20, 0xfffffdff, 0x00000000, -513, x9, 20, x21)

# rs1==x24, rd==x10, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647, imm_val == 128
# opcode: addi ; op1:x24; dest:x10; op1val:0x7fffffff;  immval:128
TEST_IMM_OP( addi, x10, x24, 0x8000007f, 0x7fffffff, 128, x9, 24, x21)

# rs1==x1, rd==x30, rs1_val == 1, 
# opcode: addi ; op1:x1; dest:x30; op1val:0x00000001;  immval:5
TEST_IMM_OP( addi, x30, x1, 0x6, 0x00000001, 5, x9, 28, x21)

# rs1==x13, rd==x14, imm_val == (-2**(12-1)), imm_val == -2048
# opcode: addi ; op1:x13; dest:x14; op1val:0xffffffff;  immval:-2048
TEST_IMM_OP( addi, x14, x13, 0xfffff7ff, 0xffffffff, -2048, x9, 32, x21)

# rs1==x12, rd==x23, imm_val == 0, rs1_val == -4194305
# opcode: addi ; op1:x12; dest:x23; op1val:0xffbfffff;  immval:0
TEST_IMM_OP( addi, x23, x12, 0xffbfffff, 0xffbfffff, 0, x9, 36, x21)

# rs1==x3, rd==x26, imm_val == (2**(12-1)-1), rs1_val == 8192, imm_val == 2047
# opcode: addi ; op1:x3; dest:x26; op1val:0x00002000;  immval:2047
TEST_IMM_OP( addi, x26, x3, 0x27ff, 0x00002000, 2047, x9, 40, x21)

# rs1==x27, rd==x25, imm_val == 1, rs1_val == 65536
# opcode: addi ; op1:x27; dest:x25; op1val:0x00010000;  immval:1
TEST_IMM_OP( addi, x25, x27, 0x10001, 0x00010000, 1, x9, 44, x21)

# rs1==x7, rd==x19, rs1_val == 2, imm_val == 32
# opcode: addi ; op1:x7; dest:x19; op1val:0x00000002;  immval:32
TEST_IMM_OP( addi, x19, x7, 0x22, 0x00000002, 32, x9, 48, x21)

# rs1==x4, rd==x16, rs1_val == 4, 
# opcode: addi ; op1:x4; dest:x16; op1val:0x00000004;  immval:-8
TEST_IMM_OP( addi, x16, x4, 0xfffffffc, 0x00000004, -8, x9, 52, x21)

# rs1==x22, rd==x8, rs1_val == 8, 
# opcode: addi ; op1:x22; dest:x8; op1val:0x00000008;  immval:6
TEST_IMM_OP( addi, x8, x22, 0xe, 0x00000008, 6, x9, 56, x21)

# rs1==x14, rd==x24, rs1_val == 32, imm_val == 1365
# opcode: addi ; op1:x14; dest:x24; op1val:0x00000020;  immval:1365
TEST_IMM_OP( addi, x24, x14, 0x575, 0x00000020, 1365, x9, 60, x21)

# rs1==x2, rd==x27, rs1_val == 64, 
# opcode: addi ; op1:x2; dest:x27; op1val:0x00000040;  immval:0
TEST_IMM_OP( addi, x27, x2, 0x40, 0x00000040, 0, x9, 64, x21)

# rs1==x30, rd==x11, rs1_val == 128, 
# opcode: addi ; op1:x30; dest:x11; op1val:0x00000080;  immval:3
TEST_IMM_OP( addi, x11, x30, 0x83, 0x00000080, 3, x9, 68, x21)

# rs1==x17, rd==x15, rs1_val == 256, 
# opcode: addi ; op1:x17; dest:x15; op1val:0x00000100;  immval:-1
TEST_IMM_OP( addi, x15, x17, 0xff, 0x00000100, -1, x9, 72, x21)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x23, rd==x17, rs1_val == 512, 
# opcode: addi ; op1:x23; dest:x17; op1val:0x00000200;  immval:5
TEST_IMM_OP( addi, x17, x23, 0x205, 0x00000200, 5, x1, 0, x3)

# rs1==x18, rd==x31, rs1_val == 1024, 
# opcode: addi ; op1:x18; dest:x31; op1val:0x00000400;  immval:0
TEST_IMM_OP( addi, x31, x18, 0x400, 0x00000400, 0, x1, 4, x3)

# rs1==x31, rd==x2, rs1_val == 2048, 
# opcode: addi ; op1:x31; dest:x2; op1val:0x00000800;  immval:-10
TEST_IMM_OP( addi, x2, x31, 0x7f6, 0x00000800, -10, x1, 8, x3)

# rs1==x25, rd==x9, rs1_val == 4096, 
# opcode: addi ; op1:x25; dest:x9; op1val:0x00001000;  immval:0
TEST_IMM_OP( addi, x9, x25, 0x1000, 0x00001000, 0, x1, 12, x3)

# rs1==x26, rd==x5, rs1_val == 16384, 
# opcode: addi ; op1:x26; dest:x5; op1val:0x00004000;  immval:-4
TEST_IMM_OP( addi, x5, x26, 0x3ffc, 0x00004000, -4, x1, 16, x3)

# rs1==x21, rd==x12, rs1_val == 32768, imm_val == 512
# opcode: addi ; op1:x21; dest:x12; op1val:0x00008000;  immval:512
TEST_IMM_OP( addi, x12, x21, 0x8200, 0x00008000, 512, x1, 20, x3)

# rs1==x19, rd==x0, rs1_val == 131072, 
# opcode: addi ; op1:x19; dest:x0; op1val:0x00020000;  immval:-2048
TEST_IMM_OP( addi, x0, x19, 0x1f800, 0x00020000, -2048, x1, 24, x3)

# rs1==x0, rd==x20, rs1_val == 262144, imm_val == 8
# opcode: addi ; op1:x0; dest:x20; op1val:0x00040000;  immval:8
TEST_IMM_OP( addi, x20, x0, 0x40008, 0x00040000, 8, x1, 28, x3)

# rs1==x15, rd==x29, rs1_val == 524288, 
# opcode: addi ; op1:x15; dest:x29; op1val:0x00080000;  immval:1
TEST_IMM_OP( addi, x29, x15, 0x80001, 0x00080000, 1, x1, 32, x3)

# rs1==x10, rd==x4, rs1_val == 1048576, imm_val == -3
# opcode: addi ; op1:x10; dest:x4; op1val:0x00100000;  immval:-3
TEST_IMM_OP( addi, x4, x10, 0xffffd, 0x00100000, -3, x1, 36, x3)

# rs1==x28, rd==x13, rs1_val == 2097152, imm_val == -17
# opcode: addi ; op1:x28; dest:x13; op1val:0x00200000;  immval:-17
TEST_IMM_OP( addi, x13, x28, 0x1fffef, 0x00200000, -17, x1, 40, x3)

# rs1==x16, rd==x21, rs1_val == 4194304, 
# opcode: addi ; op1:x16; dest:x21; op1val:0x00400000;  immval:-6
TEST_IMM_OP( addi, x21, x16, 0x3ffffa, 0x00400000, -6, x1, 44, x3)

# rs1==x9, rd==x7, rs1_val == 8388608, imm_val == -1366
# opcode: addi ; op1:x9; dest:x7; op1val:0x00800000;  immval:-1366
TEST_IMM_OP( addi, x7, x9, 0x7ffaaa, 0x00800000, -1366, x1, 48, x3)

# rs1_val == 16777216, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x01000000;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0xfffff8, 0x01000000, -8, x1, 52, x3)

# rs1_val == 33554432, imm_val == 4
# opcode: addi ; op1:x10; dest:x11; op1val:0x02000000;  immval:4
TEST_IMM_OP( addi, x11, x10, 0x2000004, 0x02000000, 4, x1, 56, x3)

# rs1_val == 67108864, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x04000000;  immval:1
TEST_IMM_OP( addi, x11, x10, 0x4000001, 0x04000000, 1, x1, 60, x3)

# rs1_val == 134217728, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x08000000;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0x80003ff, 0x08000000, 1023, x1, 64, x3)

# rs1_val == 268435456, imm_val == -5
# opcode: addi ; op1:x10; dest:x11; op1val:0x10000000;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xffffffb, 0x10000000, -5, x1, 68, x3)

# rs1_val == 536870912, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x20000000;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0x1ffffc00, 0x20000000, -1024, x1, 72, x3)

# rs1_val == 1073741824, imm_val == 64
# opcode: addi ; op1:x10; dest:x11; op1val:0x40000000;  immval:64
TEST_IMM_OP( addi, x11, x10, 0x40000040, 0x40000000, 64, x1, 76, x3)

# rs1_val == -2, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:8
TEST_IMM_OP( addi, x11, x10, 0x6, 0xfffffffe, 8, x1, 80, x3)

# rs1_val == -3, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xfffffff3, 0xfffffffd, -10, x1, 84, x3)

# rs1_val == -5, imm_val == -129
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xffffff7a, 0xfffffffb, -129, x1, 88, x3)

# rs1_val == -9, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xffffffed, 0xfffffff7, -10, x1, 92, x3)

# rs1_val == -17, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffef;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xfffffbee, 0xffffffef, -1025, x1, 96, x3)

# rs1_val == -33, imm_val == -2
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xffffffdd, 0xffffffdf, -2, x1, 100, x3)

# rs1_val == -65, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0x7be, 0xffffffbf, 2047, x1, 104, x3)

# rs1_val == -524289, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:9
TEST_IMM_OP( addi, x11, x10, 0xfff80008, 0xfff7ffff, 9, x1, 108, x3)

# rs1_val == -1048577, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffefffff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xfff00003, 0xffefffff, 4, x1, 112, x3)

# rs1_val == -2097153, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xffdfffee, 0xffdfffff, -17, x1, 116, x3)

# rs1_val == -8388609, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xff7ffffd, 0xff7fffff, -2, x1, 120, x3)

# rs1_val == -16777217, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:0
TEST_IMM_OP( addi, x11, x10, 0xfeffffff, 0xfeffffff, 0, x1, 124, x3)

# rs1_val == -33554433, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:3
TEST_IMM_OP( addi, x11, x10, 0xfe000002, 0xfdffffff, 3, x1, 128, x3)

# rs1_val == -67108865, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0xfbfffaa9, 0xfbffffff, -1366, x1, 132, x3)

# rs1_val == -134217729, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xf7fffffb, 0xf7ffffff, -4, x1, 136, x3)

# rs1_val == -268435457, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xefffffff;  immval:5
TEST_IMM_OP( addi, x11, x10, 0xf0000004, 0xefffffff, 5, x1, 140, x3)

# rs1_val == -1073741825, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xc000000f, 0xbfffffff, 16, x1, 144, x3)

# rs1_val == 1431655765, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x55555555;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0x55555550, 0x55555555, -5, x1, 148, x3)

# rs1_val == -1431655766, imm_val == -33
# opcode: addi ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xaaaaaa89, 0xaaaaaaaa, -33, x1, 152, x3)

# imm_val == 2, rs1_val == -513
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:2
TEST_IMM_OP( addi, x11, x10, 0xfffffe01, 0xfffffdff, 2, x1, 156, x3)

# imm_val == 256, rs1_val == -257
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xffffffff, 0xfffffeff, 256, x1, 160, x3)

# imm_val == -65, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xffffffbc, 0xfffffffd, -65, x1, 164, x3)

# imm_val == -257, rs1_val == -16385
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xffffbefe, 0xffffbfff, -257, x1, 168, x3)

# rs1_val == -65537, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xfffeffbe, 0xfffeffff, -65, x1, 172, x3)

# rs1_val == -129, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xffffff83, 0xffffff7f, 4, x1, 176, x3)

# rs1_val == -1025, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xfffffbfb, 0xfffffbff, -4, x1, 180, x3)

# rs1_val == -2049, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xfffff5fe, 0xfffff7ff, -513, x1, 184, x3)

# imm_val == 1024, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x7fffffff;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0x800003ff, 0x7fffffff, 1024, x1, 188, x3)

# rs1_val == -4097, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffefff;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0xfffff7fe, 0xffffefff, 2047, x1, 192, x3)

# rs1_val == -8193, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xffffe03f, 0xffffdfff, 64, x1, 196, x3)

# rs1_val == -32769, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:2
TEST_IMM_OP( addi, x11, x10, 0xffff8001, 0xffff7fff, 2, x1, 200, x3)

# imm_val == -9, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff8;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xffffffef, 0xfffffff8, -9, x1, 204, x3)

# rs1_val == -131073, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xfffdfffa, 0xfffdffff, -5, x1, 208, x3)

# rs1_val == -262145, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xfffbfff5, 0xfffbffff, -10, x1, 212, x3)

# rs1_val == 131072, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x00020000;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0x1f800, 0x00020000, -2048, x1, 216, x3)

# rs1_val == 262144, imm_val == 8
# opcode: addi ; op1:x10; dest:x11; op1val:0x00040000;  immval:8
TEST_IMM_OP( addi, x11, x10, 0x40008, 0x00040000, 8, x1, 220, x3)
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
    .fill 19*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 56*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
