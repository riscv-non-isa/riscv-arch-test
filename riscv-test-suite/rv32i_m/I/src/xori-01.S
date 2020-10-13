
#This assembly file tests the xori instruction of the RISC-V I extension for the xori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xori)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs1 != rd, rs1==x5, rd==x26, rs1_val == imm_val, imm_val == 4, rs1_val > 0 and imm_val > 0, rs1_val == 4
# opcode: xori ; op1:x5; dest:x26; op1val:0x00000004;  immval:4
TEST_IMM_OP( xori, x26, x5, 0x0, 0x00000004, 4, x2, 0, x12)

# rs1 == rd, rs1==x23, rd==x23, rs1_val != imm_val, imm_val == -513, rs1_val > 0 and imm_val < 0, rs1_val == 8388608
# opcode: xori ; op1:x23; dest:x23; op1val:0x00800000;  immval:-513
TEST_IMM_OP( xori, x23, x23, 0xff7ffdff, 0x00800000, -513, x2, 4, x12)

# rs1==x20, rd==x16, rs1_val < 0 and imm_val > 0, imm_val == 512
# opcode: xori ; op1:x20; dest:x16; op1val:0xfffffffc;  immval:512
TEST_IMM_OP( xori, x16, x20, 0xfffffdfc, 0xfffffffc, 512, x2, 8, x12)

# rs1==x24, rd==x14, rs1_val < 0 and imm_val < 0, imm_val == -2, rs1_val == -131073
# opcode: xori ; op1:x24; dest:x14; op1val:0xfffdffff;  immval:-2
TEST_IMM_OP( xori, x14, x24, 0x20001, 0xfffdffff, -2, x2, 12, x12)

# rs1==x3, rd==x15, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648, imm_val == 2
# opcode: xori ; op1:x3; dest:x15; op1val:0x80000000;  immval:2
TEST_IMM_OP( xori, x15, x3, 0x80000002, 0x80000000, 2, x2, 16, x12)

# rs1==x10, rd==x4, rs1_val == 0, 
# opcode: xori ; op1:x10; dest:x4; op1val:0x00000000;  immval:-1
TEST_IMM_OP( xori, x4, x10, 0xffffffff, 0x00000000, -1, x2, 20, x12)

# rs1==x14, rd==x30, rs1_val == (2**(xlen-1)-1), imm_val == -2048, imm_val == (-2**(12-1)), rs1_val == 2147483647
# opcode: xori ; op1:x14; dest:x30; op1val:0x7fffffff;  immval:-2048
TEST_IMM_OP( xori, x30, x14, 0x800007ff, 0x7fffffff, -2048, x2, 24, x12)

# rs1==x29, rd==x20, rs1_val == 1, imm_val == 32
# opcode: xori ; op1:x29; dest:x20; op1val:0x00000001;  immval:32
TEST_IMM_OP( xori, x20, x29, 0x21, 0x00000001, 32, x2, 28, x12)

# rs1==x18, rd==x9, imm_val == 0, rs1_val == 4096
# opcode: xori ; op1:x18; dest:x9; op1val:0x00001000;  immval:0
TEST_IMM_OP( xori, x9, x18, 0x1000, 0x00001000, 0, x2, 32, x12)

# rs1==x22, rd==x24, imm_val == (2**(12-1)-1), rs1_val == 32768, imm_val == 2047
# opcode: xori ; op1:x22; dest:x24; op1val:0x00008000;  immval:2047
TEST_IMM_OP( xori, x24, x22, 0x87ff, 0x00008000, 2047, x2, 36, x12)

# rs1==x0, rd==x19, imm_val == 1, rs1_val == 512
# opcode: xori ; op1:x0; dest:x19; op1val:0x00000200;  immval:1
TEST_IMM_OP( xori, x19, x0, 0x201, 0x00000200, 1, x2, 40, x12)

# rs1==x8, rd==x1, rs1_val == 2, imm_val == 128
# opcode: xori ; op1:x8; dest:x1; op1val:0x00000002;  immval:128
TEST_IMM_OP( xori, x1, x8, 0x82, 0x00000002, 128, x2, 44, x12)

# rs1==x9, rd==x6, rs1_val == 8, imm_val == -33
# opcode: xori ; op1:x9; dest:x6; op1val:0x00000008;  immval:-33
TEST_IMM_OP( xori, x6, x9, 0xffffffd7, 0x00000008, -33, x2, 48, x12)

# rs1==x4, rd==x11, rs1_val == 16, 
# opcode: xori ; op1:x4; dest:x11; op1val:0x00000010;  immval:-1024
TEST_IMM_OP( xori, x11, x4, 0xfffffc10, 0x00000010, -1024, x2, 52, x12)

# rs1==x21, rd==x29, rs1_val == 32, imm_val == -9
# opcode: xori ; op1:x21; dest:x29; op1val:0x00000020;  immval:-9
TEST_IMM_OP( xori, x29, x21, 0xffffffd7, 0x00000020, -9, x2, 56, x12)

# rs1==x17, rd==x0, rs1_val == 64, 
# opcode: xori ; op1:x17; dest:x0; op1val:0x00000040;  immval:-513
TEST_IMM_OP( xori, x0, x17, 0xfffffdbf, 0x00000040, -513, x2, 60, x12)

# rs1==x16, rd==x13, rs1_val == 128, 
# opcode: xori ; op1:x16; dest:x13; op1val:0x00000080;  immval:-6
TEST_IMM_OP( xori, x13, x16, 0xffffff7a, 0x00000080, -6, x2, 64, x12)

# rs1==x19, rd==x27, rs1_val == 256, 
# opcode: xori ; op1:x19; dest:x27; op1val:0x00000100;  immval:6
TEST_IMM_OP( xori, x27, x19, 0x106, 0x00000100, 6, x2, 68, x12)

# rs1==x1, rd==x7, rs1_val == 1024, imm_val == -65
# opcode: xori ; op1:x1; dest:x7; op1val:0x00000400;  immval:-65
TEST_IMM_OP( xori, x7, x1, 0xfffffbbf, 0x00000400, -65, x2, 72, x12)

# rs1==x27, rd==x22, rs1_val == 2048, 
# opcode: xori ; op1:x27; dest:x22; op1val:0x00000800;  immval:-65
TEST_IMM_OP( xori, x22, x27, 0xfffff7bf, 0x00000800, -65, x2, 76, x12)

# rs1==x15, rd==x18, rs1_val == 8192, 
# opcode: xori ; op1:x15; dest:x18; op1val:0x00002000;  immval:3
TEST_IMM_OP( xori, x18, x15, 0x2003, 0x00002000, 3, x2, 80, x12)

# rs1==x25, rd==x17, rs1_val == 16384, imm_val == 16
# opcode: xori ; op1:x25; dest:x17; op1val:0x00004000;  immval:16
TEST_IMM_OP( xori, x17, x25, 0x4010, 0x00004000, 16, x2, 84, x12)

# rs1==x11, rd==x12, rs1_val == 65536, 
# opcode: xori ; op1:x11; dest:x12; op1val:0x00010000;  immval:9
TEST_IMM_OP( xori, x12, x11, 0x10009, 0x00010000, 9, x2, 88, x4)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x30, rd==x2, rs1_val == 131072, 
# opcode: xori ; op1:x30; dest:x2; op1val:0x00020000;  immval:1023
TEST_IMM_OP( xori, x2, x30, 0x203ff, 0x00020000, 1023, x1, 0, x4)

# rs1==x26, rd==x25, rs1_val == 262144, 
# opcode: xori ; op1:x26; dest:x25; op1val:0x00040000;  immval:1
TEST_IMM_OP( xori, x25, x26, 0x40001, 0x00040000, 1, x1, 4, x4)

# rs1==x13, rd==x8, rs1_val == 524288, 
# opcode: xori ; op1:x13; dest:x8; op1val:0x00080000;  immval:128
TEST_IMM_OP( xori, x8, x13, 0x80080, 0x00080000, 128, x1, 8, x4)

# rs1==x2, rd==x21, rs1_val == 1048576, 
# opcode: xori ; op1:x2; dest:x21; op1val:0x00100000;  immval:-9
TEST_IMM_OP( xori, x21, x2, 0xffeffff7, 0x00100000, -9, x1, 12, x4)

# rs1==x28, rd==x5, rs1_val == 2097152, 
# opcode: xori ; op1:x28; dest:x5; op1val:0x00200000;  immval:-6
TEST_IMM_OP( xori, x5, x28, 0xffdffffa, 0x00200000, -6, x1, 16, x4)

# rs1==x12, rd==x31, rs1_val == 4194304, 
# opcode: xori ; op1:x12; dest:x31; op1val:0x00400000;  immval:1
TEST_IMM_OP( xori, x31, x12, 0x400001, 0x00400000, 1, x1, 20, x4)

# rs1==x31, rd==x10, rs1_val == 16777216, imm_val == -129
# opcode: xori ; op1:x31; dest:x10; op1val:0x01000000;  immval:-129
TEST_IMM_OP( xori, x10, x31, 0xfeffff7f, 0x01000000, -129, x1, 24, x4)

# rs1==x6, rd==x28, rs1_val == 33554432, 
# opcode: xori ; op1:x6; dest:x28; op1val:0x02000000;  immval:-33
TEST_IMM_OP( xori, x28, x6, 0xfdffffdf, 0x02000000, -33, x1, 28, x4)

# rs1==x7, rd==x3, rs1_val == 67108864, 
# opcode: xori ; op1:x7; dest:x3; op1val:0x04000000;  immval:-1
TEST_IMM_OP( xori, x3, x7, 0xfbffffff, 0x04000000, -1, x1, 32, x4)

# rs1_val == 134217728, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x08000000;  immval:-65
TEST_IMM_OP( xori, x11, x10, 0xf7ffffbf, 0x08000000, -65, x1, 36, x4)

# rs1_val == 268435456, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x10000000;  immval:7
TEST_IMM_OP( xori, x11, x10, 0x10000007, 0x10000000, 7, x1, 40, x4)

# rs1_val == 536870912, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x20000000;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0xdffffff7, 0x20000000, -9, x1, 44, x4)

# rs1_val == 1073741824, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x40000000;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0xbffffff7, 0x40000000, -9, x1, 48, x4)

# rs1_val == -2, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:128
TEST_IMM_OP( xori, x11, x10, 0xffffff7e, 0xfffffffe, 128, x1, 52, x4)

# rs1_val == -3, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:128
TEST_IMM_OP( xori, x11, x10, 0xffffff7d, 0xfffffffd, 128, x1, 56, x4)

# rs1_val == -5, imm_val == 256
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:256
TEST_IMM_OP( xori, x11, x10, 0xfffffefb, 0xfffffffb, 256, x1, 60, x4)

# rs1_val == -9, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0x8, 0xfffffff7, -1, x1, 64, x4)

# rs1_val == -17, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffef;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xfffffc10, 0xffffffef, 1023, x1, 68, x4)

# rs1_val == -33, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:7
TEST_IMM_OP( xori, x11, x10, 0xffffffd8, 0xffffffdf, 7, x1, 72, x4)

# rs1_val == -65, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:256
TEST_IMM_OP( xori, x11, x10, 0xfffffebf, 0xffffffbf, 256, x1, 76, x4)

# rs1_val == -129, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0x83, 0xffffff7f, -4, x1, 80, x4)

# rs1_val == -257, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0x101, 0xfffffeff, -2, x1, 84, x4)

# rs1_val == -513, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:2
TEST_IMM_OP( xori, x11, x10, 0xfffffdfd, 0xfffffdff, 2, x1, 88, x4)

# rs1_val == -1025, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:32
TEST_IMM_OP( xori, x11, x10, 0xfffffbdf, 0xfffffbff, 32, x1, 92, x4)

# rs1_val == -524289, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0x80001, 0xfff7ffff, -2, x1, 96, x4)

# rs1_val == -1048577, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-65
TEST_IMM_OP( xori, x11, x10, 0x100040, 0xffefffff, -65, x1, 100, x4)

# rs1_val == -2097153, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0x200020, 0xffdfffff, -33, x1, 104, x4)

# rs1_val == -4194305, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0x4003ff, 0xffbfffff, -1024, x1, 108, x4)

# rs1_val == -8388609, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0x800006, 0xff7fffff, -7, x1, 112, x4)

# rs1_val == -16777217, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xfefffffb, 0xfeffffff, 4, x1, 116, x4)

# rs1_val == -33554433, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xfdfff800, 0xfdffffff, 2047, x1, 120, x4)

# rs1_val == -67108865, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:5
TEST_IMM_OP( xori, x11, x10, 0xfbfffffa, 0xfbffffff, 5, x1, 124, x4)

# rs1_val == -134217729, imm_val == -1025
# opcode: xori ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0x8000400, 0xf7ffffff, -1025, x1, 128, x4)

# rs1_val == -268435457, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xefffffff;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0x10000000, 0xefffffff, -1, x1, 132, x4)

# rs1_val == -536870913, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:7
TEST_IMM_OP( xori, x11, x10, 0xdffffff8, 0xdfffffff, 7, x1, 136, x4)

# rs1_val == -1073741825, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0x40000009, 0xbfffffff, -10, x1, 140, x4)

# rs1_val == 1431655765, imm_val == 1024
# opcode: xori ; op1:x10; dest:x11; op1val:0x55555555;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0x55555155, 0x55555555, 1024, x1, 144, x4)

# rs1_val == -1431655766, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0x55555575, 0xaaaaaaaa, -33, x1, 148, x4)

# imm_val == -257, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x00080000;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0xfff7feff, 0x00080000, -257, x1, 152, x4)

# imm_val == 1365, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x00000006;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0x553, 0x00000006, 1365, x1, 156, x4)

# imm_val == -1366, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0x1000555, 0xfeffffff, -1366, x1, 160, x4)

# imm_val == -3, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffff8;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x5, 0xfffffff8, -3, x1, 164, x4)

# rs1_val == -32769, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:32
TEST_IMM_OP( xori, x11, x10, 0xffff7fdf, 0xffff7fff, 32, x1, 168, x4)

# imm_val == 8, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x00000200;  immval:8
TEST_IMM_OP( xori, x11, x10, 0x208, 0x00000200, 8, x1, 172, x4)

# imm_val == 64, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x10000000;  immval:64
TEST_IMM_OP( xori, x11, x10, 0x10000040, 0x10000000, 64, x1, 176, x4)

# rs1_val == -2049, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xfffff7f7, 0xfffff7ff, 8, x1, 180, x4)

# rs1_val == -4097, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffefff;  immval:1
TEST_IMM_OP( xori, x11, x10, 0xffffeffe, 0xffffefff, 1, x1, 184, x4)

# rs1_val == -8193, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:7
TEST_IMM_OP( xori, x11, x10, 0xffffdff8, 0xffffdfff, 7, x1, 188, x4)

# rs1_val == -16385, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0x4080, 0xffffbfff, -129, x1, 192, x4)

# imm_val == -5, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0x4004, 0xffffbfff, -5, x1, 196, x4)

# rs1_val == -65537, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0x10100, 0xfffeffff, -257, x1, 200, x4)

# imm_val == -17, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffc;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0x13, 0xfffffffc, -17, x1, 204, x4)

# rs1_val == -262145, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0x40010, 0xfffbffff, -17, x1, 208, x4)

# rs1_val != imm_val, imm_val == -513, rs1_val > 0 and imm_val < 0, rs1_val == 8388608
# opcode: xori ; op1:x10; dest:x11; op1val:0x00800000;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0xff7ffdff, 0x00800000, -513, x1, 212, x4)

# imm_val == 1, rs1_val == 512
# opcode: xori ; op1:x10; dest:x11; op1val:0x00000200;  immval:1
TEST_IMM_OP( xori, x11, x10, 0x201, 0x00000200, 1, x1, 216, x4)

# rs1_val == 64, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x00000040;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0xfffffdbf, 0x00000040, -513, x1, 220, x4)
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
    .fill 23*(XLEN/32),4,0xdeadbeef


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
