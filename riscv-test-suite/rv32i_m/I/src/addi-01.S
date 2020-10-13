
#This assembly file tests the addi instruction of the RISC-V I extension for the addi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",addi)

RVTEST_SIGBASE( x15,signature_x15_1)

# rs1 != rd, rs1==x8, rd==x13, rs1_val == imm_val, imm_val == -65, rs1_val == -65, rs1_val < 0 and imm_val < 0
# opcode: addi ; op1:x8; dest:x13; op1val:0xffffffbf;  immval:-65
TEST_IMM_OP( addi, x13, x8, 0xffffff7e, 0xffffffbf, -65, x15, 0, x5)

# rs1 == rd, rs1==x17, rd==x17, rs1_val != imm_val, rs1_val == 134217728, rs1_val > 0 and imm_val > 0, imm_val == 512
# opcode: addi ; op1:x17; dest:x17; op1val:0x08000000;  immval:512
TEST_IMM_OP( addi, x17, x17, 0x8000200, 0x08000000, 512, x15, 4, x5)

# rs1==x21, rd==x27, rs1_val > 0 and imm_val < 0, imm_val == -1025, rs1_val == 2
# opcode: addi ; op1:x21; dest:x27; op1val:0x00000002;  immval:-1025
TEST_IMM_OP( addi, x27, x21, 0xfffffc01, 0x00000002, -1025, x15, 8, x5)

# rs1==x27, rd==x30, rs1_val < 0 and imm_val > 0, rs1_val == -2
# opcode: addi ; op1:x27; dest:x30; op1val:0xfffffffe;  immval:512
TEST_IMM_OP( addi, x30, x27, 0x1fe, 0xfffffffe, 512, x15, 12, x5)

# rs1==x24, rd==x4, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648, imm_val == 2
# opcode: addi ; op1:x24; dest:x4; op1val:0x80000000;  immval:2
TEST_IMM_OP( addi, x4, x24, 0x80000002, 0x80000000, 2, x15, 16, x5)

# rs1==x23, rd==x11, rs1_val == 0, 
# opcode: addi ; op1:x23; dest:x11; op1val:0x00000000;  immval:2
TEST_IMM_OP( addi, x11, x23, 0x2, 0x00000000, 2, x15, 20, x5)

# rs1==x29, rd==x21, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647, imm_val == 64
# opcode: addi ; op1:x29; dest:x21; op1val:0x7fffffff;  immval:64
TEST_IMM_OP( addi, x21, x29, 0x8000003f, 0x7fffffff, 64, x15, 24, x5)

# rs1==x1, rd==x10, rs1_val == 1, 
# opcode: addi ; op1:x1; dest:x10; op1val:0x00000001;  immval:-1024
TEST_IMM_OP( addi, x10, x1, 0xfffffc01, 0x00000001, -1024, x15, 28, x5)

# rs1==x11, rd==x14, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == -1073741825
# opcode: addi ; op1:x11; dest:x14; op1val:0xbfffffff;  immval:-2048
TEST_IMM_OP( addi, x14, x11, 0xbffff7ff, 0xbfffffff, -2048, x15, 32, x5)

# rs1==x26, rd==x29, imm_val == 0, 
# opcode: addi ; op1:x26; dest:x29; op1val:0x7fffffff;  immval:0
TEST_IMM_OP( addi, x29, x26, 0x7fffffff, 0x7fffffff, 0, x15, 36, x5)

# rs1==x25, rd==x6, imm_val == (2**(12-1)-1), imm_val == 2047
# opcode: addi ; op1:x25; dest:x6; op1val:0x00000000;  immval:2047
TEST_IMM_OP( addi, x6, x25, 0x7ff, 0x00000000, 2047, x15, 40, x5)

# rs1==x0, rd==x26, imm_val == 1, rs1_val == 1048576
# opcode: addi ; op1:x0; dest:x26; op1val:0x00100000;  immval:1
TEST_IMM_OP( addi, x26, x0, 0x100001, 0x00100000, 1, x15, 44, x5)

# rs1==x2, rd==x12, rs1_val == 4, 
# opcode: addi ; op1:x2; dest:x12; op1val:0x00000004;  immval:512
TEST_IMM_OP( addi, x12, x2, 0x204, 0x00000004, 512, x15, 48, x5)

# rs1==x6, rd==x3, rs1_val == 8, imm_val == 1365
# opcode: addi ; op1:x6; dest:x3; op1val:0x00000008;  immval:1365
TEST_IMM_OP( addi, x3, x6, 0x55d, 0x00000008, 1365, x15, 52, x5)

# rs1==x12, rd==x19, rs1_val == 16, 
# opcode: addi ; op1:x12; dest:x19; op1val:0x00000010;  immval:1023
TEST_IMM_OP( addi, x19, x12, 0x40f, 0x00000010, 1023, x15, 56, x5)

# rs1==x19, rd==x23, rs1_val == 32, 
# opcode: addi ; op1:x19; dest:x23; op1val:0x00000020;  immval:1023
TEST_IMM_OP( addi, x23, x19, 0x41f, 0x00000020, 1023, x15, 60, x5)

# rs1==x31, rd==x16, rs1_val == 64, imm_val == 32
# opcode: addi ; op1:x31; dest:x16; op1val:0x00000040;  immval:32
TEST_IMM_OP( addi, x16, x31, 0x60, 0x00000040, 32, x15, 64, x5)

# rs1==x28, rd==x1, rs1_val == 128, 
# opcode: addi ; op1:x28; dest:x1; op1val:0x00000080;  immval:2047
TEST_IMM_OP( addi, x1, x28, 0x87f, 0x00000080, 2047, x15, 68, x5)

# rs1==x13, rd==x18, rs1_val == 256, 
# opcode: addi ; op1:x13; dest:x18; op1val:0x00000100;  immval:2047
TEST_IMM_OP( addi, x18, x13, 0x8ff, 0x00000100, 2047, x15, 72, x5)

# rs1==x14, rd==x9, rs1_val == 512, 
# opcode: addi ; op1:x14; dest:x9; op1val:0x00000200;  immval:2047
TEST_IMM_OP( addi, x9, x14, 0x9ff, 0x00000200, 2047, x15, 76, x5)

# rs1==x9, rd==x8, rs1_val == 1024, 
# opcode: addi ; op1:x9; dest:x8; op1val:0x00000400;  immval:6
TEST_IMM_OP( addi, x8, x9, 0x406, 0x00000400, 6, x15, 80, x5)

# rs1==x10, rd==x24, rs1_val == 2048, 
# opcode: addi ; op1:x10; dest:x24; op1val:0x00000800;  immval:0
TEST_IMM_OP( addi, x24, x10, 0x800, 0x00000800, 0, x15, 84, x5)

# rs1==x30, rd==x7, rs1_val == 4096, imm_val == 256
# opcode: addi ; op1:x30; dest:x7; op1val:0x00001000;  immval:256
TEST_IMM_OP( addi, x7, x30, 0x1100, 0x00001000, 256, x15, 88, x5)

# rs1==x22, rd==x5, rs1_val == 8192, 
# opcode: addi ; op1:x22; dest:x5; op1val:0x00002000;  immval:-4
TEST_IMM_OP( addi, x5, x22, 0x1ffc, 0x00002000, -4, x15, 92, x6)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x4, rd==x0, rs1_val == 16384, imm_val == -2
# opcode: addi ; op1:x4; dest:x0; op1val:0x00004000;  immval:-2
TEST_IMM_OP( addi, x0, x4, 0x3ffe, 0x00004000, -2, x1, 0, x6)

# rs1==x20, rd==x31, rs1_val == 32768, 
# opcode: addi ; op1:x20; dest:x31; op1val:0x00008000;  immval:-2
TEST_IMM_OP( addi, x31, x20, 0x7ffe, 0x00008000, -2, x1, 4, x6)

# rs1==x3, rd==x2, rs1_val == 65536, 
# opcode: addi ; op1:x3; dest:x2; op1val:0x00010000;  immval:9
TEST_IMM_OP( addi, x2, x3, 0x10009, 0x00010000, 9, x1, 8, x6)

# rs1==x16, rd==x28, rs1_val == 131072, 
# opcode: addi ; op1:x16; dest:x28; op1val:0x00020000;  immval:-2
TEST_IMM_OP( addi, x28, x16, 0x1fffe, 0x00020000, -2, x1, 12, x6)

# rs1==x18, rd==x22, rs1_val == 262144, 
# opcode: addi ; op1:x18; dest:x22; op1val:0x00040000;  immval:1
TEST_IMM_OP( addi, x22, x18, 0x40001, 0x00040000, 1, x1, 16, x6)

# rs1==x15, rd==x25, rs1_val == 524288, 
# opcode: addi ; op1:x15; dest:x25; op1val:0x00080000;  immval:-4
TEST_IMM_OP( addi, x25, x15, 0x7fffc, 0x00080000, -4, x1, 20, x6)

# rs1==x5, rd==x20, rs1_val == 2097152, imm_val == -9
# opcode: addi ; op1:x5; dest:x20; op1val:0x00200000;  immval:-9
TEST_IMM_OP( addi, x20, x5, 0x1ffff7, 0x00200000, -9, x1, 24, x6)

# rs1==x7, rd==x15, rs1_val == 4194304, imm_val == 8
# opcode: addi ; op1:x7; dest:x15; op1val:0x00400000;  immval:8
TEST_IMM_OP( addi, x15, x7, 0x400008, 0x00400000, 8, x1, 28, x6)

# rs1_val == 8388608, imm_val == -17
# opcode: addi ; op1:x10; dest:x11; op1val:0x00800000;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0x7fffef, 0x00800000, -17, x1, 32, x6)

# rs1_val == 16777216, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x01000000;  immval:1
TEST_IMM_OP( addi, x11, x10, 0x1000001, 0x01000000, 1, x1, 36, x6)

# rs1_val == 33554432, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x02000000;  immval:1
TEST_IMM_OP( addi, x11, x10, 0x2000001, 0x02000000, 1, x1, 40, x6)

# rs1_val == 67108864, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x04000000;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0x3fffff9, 0x04000000, -7, x1, 44, x6)

# rs1_val == 268435456, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x10000000;  immval:256
TEST_IMM_OP( addi, x11, x10, 0x10000100, 0x10000000, 256, x1, 48, x6)

# rs1_val == 536870912, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x20000000;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0x1ffffffa, 0x20000000, -6, x1, 52, x6)

# rs1_val == 1073741824, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x40000000;  immval:7
TEST_IMM_OP( addi, x11, x10, 0x40000007, 0x40000000, 7, x1, 56, x6)

# rs1_val == -3, imm_val == -129
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xffffff7c, 0xfffffffd, -129, x1, 60, x6)

# rs1_val == -5, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:5
TEST_IMM_OP( addi, x11, x10, 0x0, 0xfffffffb, 5, x1, 64, x6)

# rs1_val == -9, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:1
TEST_IMM_OP( addi, x11, x10, 0xfffffff8, 0xfffffff7, 1, x1, 68, x6)

# rs1_val == -17, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffef;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xef, 0xffffffef, 256, x1, 72, x6)

# rs1_val == -33, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xdf, 0xffffffdf, 256, x1, 76, x6)

# rs1_val == -129, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xffffff6e, 0xffffff7f, -17, x1, 80, x6)

# rs1_val == -257, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:3
TEST_IMM_OP( addi, x11, x10, 0xffffff02, 0xfffffeff, 3, x1, 84, x6)

# rs1_val == -513, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:9
TEST_IMM_OP( addi, x11, x10, 0xfffffe08, 0xfffffdff, 9, x1, 88, x6)

# rs1_val == -1025, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xfffffbf5, 0xfffffbff, -10, x1, 92, x6)

# rs1_val == -524289, imm_val == 4
# opcode: addi ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xfff80003, 0xfff7ffff, 4, x1, 96, x6)

# rs1_val == -1048577, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffefffff;  immval:5
TEST_IMM_OP( addi, x11, x10, 0xfff00004, 0xffefffff, 5, x1, 100, x6)

# rs1_val == -2097153, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:512
TEST_IMM_OP( addi, x11, x10, 0xffe001ff, 0xffdfffff, 512, x1, 104, x6)

# rs1_val == -4194305, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0xffc007fe, 0xffbfffff, 2047, x1, 108, x6)

# rs1_val == -8388609, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:5
TEST_IMM_OP( addi, x11, x10, 0xff800004, 0xff7fffff, 5, x1, 112, x6)

# rs1_val == -16777217, imm_val == 16
# opcode: addi ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xff00000f, 0xfeffffff, 16, x1, 116, x6)

# rs1_val == -33554433, imm_val == 128
# opcode: addi ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:128
TEST_IMM_OP( addi, x11, x10, 0xfe00007f, 0xfdffffff, 128, x1, 120, x6)

# rs1_val == -67108865, imm_val == -33
# opcode: addi ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xfbffffde, 0xfbffffff, -33, x1, 124, x6)

# rs1_val == -134217729, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xf800003f, 0xf7ffffff, 64, x1, 128, x6)

# rs1_val == -268435457, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xefffffff;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xeffffff5, 0xefffffff, -10, x1, 132, x6)

# rs1_val == -536870913, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xe000000f, 0xdfffffff, 16, x1, 136, x6)

# rs1_val == 1431655765, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x55555555;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0x5555554d, 0x55555555, -8, x1, 140, x6)

# imm_val == -257, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xbffffefe, 0xbfffffff, -257, x1, 144, x6)

# imm_val == -513, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x00002000;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0x1dff, 0x00002000, -513, x1, 148, x6)

# imm_val == -1366, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0xffbffaa9, 0xffbfffff, -1366, x1, 152, x6)

# rs1_val == -8193, imm_val == 1024
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0xffffe3ff, 0xffffdfff, 1024, x1, 156, x6)

# rs1_val == -16385, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xffffbfde, 0xffffbfff, -33, x1, 160, x6)

# rs1_val == -1431655766, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xaaaaa8a9, 0xaaaaaaaa, -513, x1, 164, x6)

# rs1_val == -32769, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xffff7ff5, 0xffff7fff, -10, x1, 168, x6)

# rs1_val == -2049, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:5
TEST_IMM_OP( addi, x11, x10, 0xfffff804, 0xfffff7ff, 5, x1, 172, x6)

# rs1_val == -4097, imm_val == -3
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffefff;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xffffeffc, 0xffffefff, -3, x1, 176, x6)

# imm_val == -5, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x10000000;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xffffffb, 0x10000000, -5, x1, 180, x6)

# rs1_val == -65537, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xffff0007, 0xfffeffff, 8, x1, 184, x6)

# rs1_val == -131073, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0xfffdfff7, 0xfffdffff, -8, x1, 188, x6)

# rs1_val == -262145, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xfffbfffa, 0xfffbffff, -5, x1, 192, x6)

# rs1_val != imm_val, rs1_val == 134217728, rs1_val > 0 and imm_val > 0, imm_val == 512
# opcode: addi ; op1:x10; dest:x11; op1val:0x08000000;  immval:512
TEST_IMM_OP( addi, x11, x10, 0x8000200, 0x08000000, 512, x1, 196, x6)

# imm_val == 1, rs1_val == 1048576
# opcode: addi ; op1:x10; dest:x11; op1val:0x00100000;  immval:1
TEST_IMM_OP( addi, x11, x10, 0x100001, 0x00100000, 1, x1, 200, x6)

# rs1_val == 16384, imm_val == -2
# opcode: addi ; op1:x10; dest:x11; op1val:0x00004000;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0x3ffe, 0x00004000, -2, x1, 204, x6)
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
    .fill 24*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
