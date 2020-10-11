
#This assembly file tests the addi instruction of the RISC-V I extension for the addi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",addi)

la x9,signature_x9_1

# rs1 == rd, rs1==x23, rd==x23, rs1_val == imm_val, imm_val == -2, rs1_val == -2, rs1_val < 0 and imm_val < 0
# opcode: addi ; op1:x23; dest:x23; op1val:0xfffffffe;  immval:-2
TEST_IMM_OP( addi, x23, x23, 0xfffffffc, 0xfffffffe, -2, x9, 0, x18)

# rs1 != rd, rs1==x15, rd==x7, rs1_val != imm_val, rs1_val > 0 and imm_val < 0, rs1_val == 4
# opcode: addi ; op1:x15; dest:x7; op1val:0x00000004;  immval:-7
TEST_IMM_OP( addi, x7, x15, 0xfffffffd, 0x00000004, -7, x9, 4, x18)

# rs1==x6, rd==x29, rs1_val > 0 and imm_val > 0, rs1_val == 4194304
# opcode: addi ; op1:x6; dest:x29; op1val:0x00400000;  immval:9
TEST_IMM_OP( addi, x29, x6, 0x400009, 0x00400000, 9, x9, 8, x18)

# rs1==x26, rd==x14, rs1_val < 0 and imm_val > 0, imm_val == 1365
# opcode: addi ; op1:x26; dest:x14; op1val:0xfffffffc;  immval:1365
TEST_IMM_OP( addi, x14, x26, 0x551, 0xfffffffc, 1365, x9, 12, x18)

# rs1==x17, rd==x31, rs1_val == (-2**(xlen-1)), imm_val == 1024, rs1_val == -2147483648
# opcode: addi ; op1:x17; dest:x31; op1val:0x80000000;  immval:1024
TEST_IMM_OP( addi, x31, x17, 0x80000400, 0x80000000, 1024, x9, 16, x18)

# rs1==x4, rd==x21, rs1_val == 0, 
# opcode: addi ; op1:x4; dest:x21; op1val:0x00000000;  immval:5
TEST_IMM_OP( addi, x21, x4, 0x5, 0x00000000, 5, x9, 20, x18)

# rs1==x24, rd==x4, rs1_val == (2**(xlen-1)-1), imm_val == -257, rs1_val == 2147483647
# opcode: addi ; op1:x24; dest:x4; op1val:0x7fffffff;  immval:-257
TEST_IMM_OP( addi, x4, x24, 0x7ffffefe, 0x7fffffff, -257, x9, 24, x18)

# rs1==x1, rd==x3, rs1_val == 1, 
# opcode: addi ; op1:x1; dest:x3; op1val:0x00000001;  immval:-2
TEST_IMM_OP( addi, x3, x1, 0xffffffff, 0x00000001, -2, x9, 28, x18)

# rs1==x16, rd==x13, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == -129
# opcode: addi ; op1:x16; dest:x13; op1val:0xffffff7f;  immval:-2048
TEST_IMM_OP( addi, x13, x16, 0xfffff77f, 0xffffff7f, -2048, x9, 32, x18)

# rs1==x27, rd==x10, imm_val == 0, rs1_val == -17
# opcode: addi ; op1:x27; dest:x10; op1val:0xffffffef;  immval:0
TEST_IMM_OP( addi, x10, x27, 0xffffffef, 0xffffffef, 0, x9, 36, x18)

# rs1==x19, rd==x1, imm_val == (2**(12-1)-1), rs1_val == -4097, imm_val == 2047
# opcode: addi ; op1:x19; dest:x1; op1val:0xffffefff;  immval:2047
TEST_IMM_OP( addi, x1, x19, 0xfffff7fe, 0xffffefff, 2047, x9, 40, x18)

# rs1==x21, rd==x2, imm_val == 1, 
# opcode: addi ; op1:x21; dest:x2; op1val:0xfffffff6;  immval:1
TEST_IMM_OP( addi, x2, x21, 0xfffffff7, 0xfffffff6, 1, x9, 44, x18)

# rs1==x29, rd==x12, rs1_val == 2, imm_val == 512
# opcode: addi ; op1:x29; dest:x12; op1val:0x00000002;  immval:512
TEST_IMM_OP( addi, x12, x29, 0x202, 0x00000002, 512, x9, 48, x18)

# rs1==x31, rd==x27, rs1_val == 8, imm_val == 4
# opcode: addi ; op1:x31; dest:x27; op1val:0x00000008;  immval:4
TEST_IMM_OP( addi, x27, x31, 0xc, 0x00000008, 4, x9, 52, x18)

# rs1==x28, rd==x24, rs1_val == 16, imm_val == 64
# opcode: addi ; op1:x28; dest:x24; op1val:0x00000010;  immval:64
TEST_IMM_OP( addi, x24, x28, 0x50, 0x00000010, 64, x9, 56, x18)

# rs1==x3, rd==x5, rs1_val == 32, 
# opcode: addi ; op1:x3; dest:x5; op1val:0x00000020;  immval:-257
TEST_IMM_OP( addi, x5, x3, 0xffffff1f, 0x00000020, -257, x9, 60, x18)

# rs1==x8, rd==x16, rs1_val == 64, 
# opcode: addi ; op1:x8; dest:x16; op1val:0x00000040;  immval:-2
TEST_IMM_OP( addi, x16, x8, 0x3e, 0x00000040, -2, x9, 64, x18)

# rs1==x0, rd==x25, rs1_val == 128, 
# opcode: addi ; op1:x0; dest:x25; op1val:0x00000080;  immval:-2048
TEST_IMM_OP( addi, x25, x0, 0xfffff880, 0x00000080, -2048, x9, 68, x18)

# rs1==x12, rd==x19, rs1_val == 256, 
# opcode: addi ; op1:x12; dest:x19; op1val:0x00000100;  immval:-257
TEST_IMM_OP( addi, x19, x12, 0xffffffff, 0x00000100, -257, x9, 72, x18)

# rs1==x7, rd==x11, rs1_val == 512, 
# opcode: addi ; op1:x7; dest:x11; op1val:0x00000200;  immval:-1024
TEST_IMM_OP( addi, x11, x7, 0xfffffe00, 0x00000200, -1024, x9, 76, x18)

# rs1==x14, rd==x6, rs1_val == 1024, 
# opcode: addi ; op1:x14; dest:x6; op1val:0x00000400;  immval:2047
TEST_IMM_OP( addi, x6, x14, 0xbff, 0x00000400, 2047, x9, 80, x18)

# rs1==x20, rd==x17, rs1_val == 2048, 
# opcode: addi ; op1:x20; dest:x17; op1val:0x00000800;  immval:7
TEST_IMM_OP( addi, x17, x20, 0x807, 0x00000800, 7, x9, 84, x18)

# rs1==x2, rd==x22, rs1_val == 4096, 
# opcode: addi ; op1:x2; dest:x22; op1val:0x00001000;  immval:-1024
TEST_IMM_OP( addi, x22, x2, 0xc00, 0x00001000, -1024, x9, 88, x3)
la x1,signature_x1_0

# rs1==x10, rd==x28, rs1_val == 8192, 
# opcode: addi ; op1:x10; dest:x28; op1val:0x00002000;  immval:-4
TEST_IMM_OP( addi, x28, x10, 0x1ffc, 0x00002000, -4, x1, 0, x3)

# rs1==x18, rd==x26, rs1_val == 16384, imm_val == 2
# opcode: addi ; op1:x18; dest:x26; op1val:0x00004000;  immval:2
TEST_IMM_OP( addi, x26, x18, 0x4002, 0x00004000, 2, x1, 4, x3)

# rs1==x13, rd==x0, rs1_val == 32768, 
# opcode: addi ; op1:x13; dest:x0; op1val:0x00008000;  immval:-257
TEST_IMM_OP( addi, x0, x13, 0x7eff, 0x00008000, -257, x1, 8, x3)

# rs1==x25, rd==x8, rs1_val == 65536, 
# opcode: addi ; op1:x25; dest:x8; op1val:0x00010000;  immval:2047
TEST_IMM_OP( addi, x8, x25, 0x107ff, 0x00010000, 2047, x1, 12, x3)

# rs1==x9, rd==x18, rs1_val == 131072, 
# opcode: addi ; op1:x9; dest:x18; op1val:0x00020000;  immval:-10
TEST_IMM_OP( addi, x18, x9, 0x1fff6, 0x00020000, -10, x1, 16, x3)

# rs1==x11, rd==x15, rs1_val == 262144, imm_val == -513
# opcode: addi ; op1:x11; dest:x15; op1val:0x00040000;  immval:-513
TEST_IMM_OP( addi, x15, x11, 0x3fdff, 0x00040000, -513, x1, 20, x3)

# rs1==x30, rd==x20, rs1_val == 524288, imm_val == -65
# opcode: addi ; op1:x30; dest:x20; op1val:0x00080000;  immval:-65
TEST_IMM_OP( addi, x20, x30, 0x7ffbf, 0x00080000, -65, x1, 24, x3)

# rs1==x5, rd==x9, rs1_val == 1048576, 
# opcode: addi ; op1:x5; dest:x9; op1val:0x00100000;  immval:-8
TEST_IMM_OP( addi, x9, x5, 0xffff8, 0x00100000, -8, x1, 28, x3)

# rs1==x22, rd==x30, rs1_val == 2097152, 
# opcode: addi ; op1:x22; dest:x30; op1val:0x00200000;  immval:1
TEST_IMM_OP( addi, x30, x22, 0x200001, 0x00200000, 1, x1, 32, x3)

# rs1_val == 8388608, imm_val == 256
# opcode: addi ; op1:x10; dest:x11; op1val:0x00800000;  immval:256
TEST_IMM_OP( addi, x11, x10, 0x800100, 0x00800000, 256, x1, 36, x3)

# rs1_val == 16777216, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x01000000;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xfffdff, 0x01000000, -513, x1, 40, x3)

# rs1_val == 33554432, imm_val == -1366
# opcode: addi ; op1:x10; dest:x11; op1val:0x02000000;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0x1fffaaa, 0x02000000, -1366, x1, 44, x3)

# rs1_val == 67108864, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x04000000;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0x3fffeff, 0x04000000, -257, x1, 48, x3)

# rs1_val == 134217728, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x08000000;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0x80003ff, 0x08000000, 1023, x1, 52, x3)

# rs1_val == 268435456, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x10000000;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0x10000400, 0x10000000, 1024, x1, 56, x3)

# rs1_val == 536870912, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x20000000;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x20000006, 0x20000000, 6, x1, 60, x3)

# rs1_val == 1073741824, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x40000000;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0x3ffffff6, 0x40000000, -10, x1, 64, x3)

# rs1_val == -3, imm_val == 16
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xd, 0xfffffffd, 16, x1, 68, x3)

# rs1_val == -5, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xfffffff9, 0xfffffffb, -2, x1, 72, x3)

# rs1_val == -9, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xfffffff0, 0xfffffff7, -7, x1, 76, x3)

# rs1_val == -33, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0x3de, 0xffffffdf, 1023, x1, 80, x3)

# rs1_val == -65, imm_val == 32
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:32
TEST_IMM_OP( addi, x11, x10, 0xffffffdf, 0xffffffbf, 32, x1, 84, x3)

# rs1_val == -257, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:3
TEST_IMM_OP( addi, x11, x10, 0xffffff02, 0xfffffeff, 3, x1, 88, x3)

# rs1_val == -513, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xfffffdf5, 0xfffffdff, -10, x1, 92, x3)

# rs1_val == -524289, imm_val == -5
# opcode: addi ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xfff7fffa, 0xfff7ffff, -5, x1, 96, x3)

# rs1_val == -1048577, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffefffff;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0xfff007fe, 0xffefffff, 2047, x1, 100, x3)

# rs1_val == -2097153, imm_val == 128
# opcode: addi ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:128
TEST_IMM_OP( addi, x11, x10, 0xffe0007f, 0xffdfffff, 128, x1, 104, x3)

# rs1_val == -4194305, imm_val == -9
# opcode: addi ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xffbffff6, 0xffbfffff, -9, x1, 108, x3)

# rs1_val == -8388609, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xff800005, 0xff7fffff, 6, x1, 112, x3)

# rs1_val == -16777217, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0xff0003fe, 0xfeffffff, 1023, x1, 116, x3)

# rs1_val == -33554433, imm_val == -1025
# opcode: addi ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xfdfffbfe, 0xfdffffff, -1025, x1, 120, x3)

# rs1_val == -67108865, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xfbfffbff, 0xfbffffff, -1024, x1, 124, x3)

# rs1_val == -134217729, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xf800003f, 0xf7ffffff, 64, x1, 128, x3)

# rs1_val == -268435457, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xefffffff;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0xf0000554, 0xefffffff, 1365, x1, 132, x3)

# rs1_val == -536870913, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:0
TEST_IMM_OP( addi, x11, x10, 0xdfffffff, 0xdfffffff, 0, x1, 136, x3)

# rs1_val == -1073741825, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xc000000f, 0xbfffffff, 16, x1, 140, x3)

# imm_val == -129, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x00800000;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0x7fff7f, 0x00800000, -129, x1, 144, x3)

# imm_val == -3, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfffffffa, 0xfffffffd, -3, x1, 148, x3)

# rs1_val == 1431655765, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x55555555;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0x55555155, 0x55555555, -1024, x1, 152, x3)

# rs1_val == -1431655766, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:0
TEST_IMM_OP( addi, x11, x10, 0xaaaaaaaa, 0xaaaaaaaa, 0, x1, 156, x3)

# imm_val == 8, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xaaaaaab2, 0xaaaaaaaa, 8, x1, 160, x3)

# imm_val == -33, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xffffffdc, 0xfffffffd, -33, x1, 164, x3)

# rs1_val == -1025, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xfffffbde, 0xfffffbff, -33, x1, 168, x3)

# rs1_val == -2049, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xfffff6fe, 0xfffff7ff, -257, x1, 172, x3)

# rs1_val == -131073, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xfffe00ff, 0xfffdffff, 256, x1, 176, x3)

# rs1_val == -8193, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xffffe00f, 0xffffdfff, 16, x1, 180, x3)

# rs1_val == -16385, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xffffbff9, 0xffffbfff, -6, x1, 184, x3)

# rs1_val == -32769, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xffff7dfe, 0xffff7fff, -513, x1, 188, x3)

# rs1_val == -65537, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xffff0007, 0xfffeffff, 8, x1, 192, x3)

# imm_val == -17, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xffffffce, 0xffffffdf, -17, x1, 196, x3)

# rs1_val == -262145, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xfffbfff5, 0xfffbffff, -10, x1, 200, x3)

# rs1_val == imm_val, imm_val == -2, rs1_val == -2, rs1_val < 0 and imm_val < 0
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xfffffffc, 0xfffffffe, -2, x1, 204, x3)

# rs1_val == 128, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x00000080;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xfffff880, 0x00000080, -2048, x1, 208, x3)

# rs1_val == 32768, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x00008000;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0x7eff, 0x00008000, -257, x1, 212, x3)
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

signature_x9_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x9_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
