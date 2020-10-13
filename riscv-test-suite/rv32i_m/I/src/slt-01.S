
#This assembly file tests the slt instruction of the RISC-V I extension for the slt covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slt)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x24, rs2==x20, rd==x22, rs1_val == (-2**(xlen-1)), rs2_val == -134217729, rs1_val < 0 and rs2_val < 0, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: slt ; op1:x24; op2:x20; dest:x22; op1val:0x80000000;  op2val:0xf7ffffff
TEST_RR_OP(slt, x22, x24, x20, 0x1, 0x80000000, 0xf7ffffff, x7, 0, x8)

# rs1 == rs2 != rd, rs1==x9, rs2==x9, rd==x26, rs1_val == 0, rs2_val == 1024
# opcode: slt ; op1:x9; op2:x9; dest:x26; op1val:0x00000000;  op2val:0x00000400
TEST_RR_OP(slt, x26, x9, x9, 0x1, 0x00000000, 0x00000400, x7, 4, x8)

# rs1 == rd != rs2, rs1==x31, rs2==x3, rd==x31, rs1_val == (2**(xlen-1)-1), rs2_val == -1025, rs1_val > 0 and rs2_val < 0, rs1_val == 2147483647
# opcode: slt ; op1:x31; op2:x3; dest:x31; op1val:0x7fffffff;  op2val:0xfffffbff
TEST_RR_OP(slt, x31, x31, x3, 0x0, 0x7fffffff, 0xfffffbff, x7, 8, x8)

# rs2 == rd != rs1, rs1==x21, rs2==x13, rd==x13, rs1_val == 1, rs2_val == -2097153
# opcode: slt ; op1:x21; op2:x13; dest:x13; op1val:0x00000001;  op2val:0xffdfffff
TEST_RR_OP(slt, x13, x21, x13, 0x0, 0x00000001, 0xffdfffff, x7, 12, x8)

# rs1 == rs2 == rd, rs1==x2, rs2==x2, rd==x2, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode: slt ; op1:x2; op2:x2; dest:x2; op1val:0xffffffff;  op2val:0x80000000
TEST_RR_OP(slt, x2, x2, x2, 0x0, 0xffffffff, 0x80000000, x7, 16, x8)

# rs1==x4, rs2==x0, rd==x23, rs2_val == 0, rs1_val == -8388609
# opcode: slt ; op1:x4; op2:x0; dest:x23; op1val:0xff7fffff;  op2val:0x00000000
TEST_RR_OP(slt, x23, x4, x0, 0x1, 0xff7fffff, 0x00000000, x7, 20, x8)

# rs1==x29, rs2==x24, rd==x21, rs2_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 2147483647
# opcode: slt ; op1:x29; op2:x24; dest:x21; op1val:0x3fffffff;  op2val:0x7fffffff
TEST_RR_OP(slt, x21, x29, x24, 0x1, 0x3fffffff, 0x7fffffff, x7, 24, x8)

# rs1==x12, rs2==x25, rd==x4, rs2_val == 1, rs1_val < 0 and rs2_val > 0, rs1_val == -1431655766
# opcode: slt ; op1:x12; op2:x25; dest:x4; op1val:0xaaaaaaaa;  op2val:0x00000001
TEST_RR_OP(slt, x4, x12, x25, 0x1, 0xaaaaaaaa, 0x00000001, x7, 28, x8)

# rs1==x30, rs2==x5, rd==x1, rs1_val == rs2_val, rs1_val == 16777216, rs2_val == 16777216
# opcode: slt ; op1:x30; op2:x5; dest:x1; op1val:0x01000000;  op2val:0x01000000
TEST_RR_OP(slt, x1, x30, x5, 0x0, 0x01000000, 0x01000000, x7, 32, x8)

# rs1==x27, rs2==x30, rd==x18, rs1_val == 2, rs2_val == -67108865
# opcode: slt ; op1:x27; op2:x30; dest:x18; op1val:0x00000002;  op2val:0xfbffffff
TEST_RR_OP(slt, x18, x27, x30, 0x0, 0x00000002, 0xfbffffff, x7, 36, x8)

# rs1==x20, rs2==x26, rd==x17, rs1_val == 4, 
# opcode: slt ; op1:x20; op2:x26; dest:x17; op1val:0x00000004;  op2val:0x80000000
TEST_RR_OP(slt, x17, x20, x26, 0x0, 0x00000004, 0x80000000, x7, 40, x8)

# rs1==x18, rs2==x16, rd==x5, rs1_val == 8, rs2_val == 1431655765
# opcode: slt ; op1:x18; op2:x16; dest:x5; op1val:0x00000008;  op2val:0x55555555
TEST_RR_OP(slt, x5, x18, x16, 0x1, 0x00000008, 0x55555555, x7, 44, x8)

# rs1==x13, rs2==x1, rd==x27, rs1_val == 16, rs2_val == -257
# opcode: slt ; op1:x13; op2:x1; dest:x27; op1val:0x00000010;  op2val:0xfffffeff
TEST_RR_OP(slt, x27, x13, x1, 0x0, 0x00000010, 0xfffffeff, x7, 48, x8)

# rs1==x15, rs2==x12, rd==x25, rs1_val == 32, 
# opcode: slt ; op1:x15; op2:x12; dest:x25; op1val:0x00000020;  op2val:0xfffffffa
TEST_RR_OP(slt, x25, x15, x12, 0x0, 0x00000020, 0xfffffffa, x7, 52, x8)

# rs1==x0, rs2==x22, rd==x29, rs1_val == 64, rs2_val == 1048576
# opcode: slt ; op1:x0; op2:x22; dest:x29; op1val:0x00000040;  op2val:0x00100000
TEST_RR_OP(slt, x29, x0, x22, 0x1, 0x00000040, 0x00100000, x7, 56, x8)

# rs1==x22, rs2==x23, rd==x24, rs1_val == 128, 
# opcode: slt ; op1:x22; op2:x23; dest:x24; op1val:0x00000080;  op2val:0x00000009
TEST_RR_OP(slt, x24, x22, x23, 0x0, 0x00000080, 0x00000009, x7, 60, x8)

# rs1==x11, rs2==x6, rd==x16, rs1_val == 256, rs2_val == 512
# opcode: slt ; op1:x11; op2:x6; dest:x16; op1val:0x00000100;  op2val:0x00000200
TEST_RR_OP(slt, x16, x11, x6, 0x1, 0x00000100, 0x00000200, x7, 64, x8)

# rs1==x26, rs2==x15, rd==x0, rs1_val == 512, rs2_val == 524288
# opcode: slt ; op1:x26; op2:x15; dest:x0; op1val:0x00000200;  op2val:0x00080000
TEST_RR_OP(slt, x0, x26, x15, 0x1, 0x00000200, 0x00080000, x7, 68, x8)

# rs1==x3, rs2==x28, rd==x11, rs1_val == 1024, 
# opcode: slt ; op1:x3; op2:x28; dest:x11; op1val:0x00000400;  op2val:0xc0000000
TEST_RR_OP(slt, x11, x3, x28, 0x0, 0x00000400, 0xc0000000, x7, 72, x8)

# rs1==x16, rs2==x17, rd==x6, rs1_val == 2048, rs2_val == -4194305
# opcode: slt ; op1:x16; op2:x17; dest:x6; op1val:0x00000800;  op2val:0xffbfffff
TEST_RR_OP(slt, x6, x16, x17, 0x0, 0x00000800, 0xffbfffff, x7, 76, x8)

# rs1==x25, rs2==x19, rd==x20, rs1_val == 4096, 
# opcode: slt ; op1:x25; op2:x19; dest:x20; op1val:0x00001000;  op2val:0xfffffffc
TEST_RR_OP(slt, x20, x25, x19, 0x0, 0x00001000, 0xfffffffc, x7, 80, x8)

# rs1==x28, rs2==x27, rd==x8, rs1_val == 8192, rs2_val == 4
# opcode: slt ; op1:x28; op2:x27; dest:x8; op1val:0x00002000;  op2val:0x00000004
TEST_RR_OP(slt, x8, x28, x27, 0x0, 0x00002000, 0x00000004, x7, 84, x24)
RVTEST_SIGBASE( x22,signature_x22_0)

# rs1==x1, rs2==x29, rd==x28, rs1_val == 16384, 
# opcode: slt ; op1:x1; op2:x29; dest:x28; op1val:0x00004000;  op2val:0x00000400
TEST_RR_OP(slt, x28, x1, x29, 0x0, 0x00004000, 0x00000400, x22, 0, x24)

# rs1==x17, rs2==x10, rd==x15, rs1_val == 32768, 
# opcode: slt ; op1:x17; op2:x10; dest:x15; op1val:0x00008000;  op2val:0xfffffff9
TEST_RR_OP(slt, x15, x17, x10, 0x0, 0x00008000, 0xfffffff9, x22, 4, x24)

# rs1==x19, rs2==x11, rd==x3, rs1_val == 65536, 
# opcode: slt ; op1:x19; op2:x11; dest:x3; op1val:0x00010000;  op2val:0x00000003
TEST_RR_OP(slt, x3, x19, x11, 0x0, 0x00010000, 0x00000003, x22, 8, x24)

# rs1==x14, rs2==x31, rd==x9, rs1_val == 131072, rs2_val == 2097152
# opcode: slt ; op1:x14; op2:x31; dest:x9; op1val:0x00020000;  op2val:0x00200000
TEST_RR_OP(slt, x9, x14, x31, 0x1, 0x00020000, 0x00200000, x22, 12, x24)

# rs1==x6, rs2==x18, rd==x14, rs1_val == 262144, rs2_val == -33
# opcode: slt ; op1:x6; op2:x18; dest:x14; op1val:0x00040000;  op2val:0xffffffdf
TEST_RR_OP(slt, x14, x6, x18, 0x0, 0x00040000, 0xffffffdf, x22, 16, x24)

# rs1==x23, rs2==x8, rd==x12, rs1_val == 524288, rs2_val == -65537
# opcode: slt ; op1:x23; op2:x8; dest:x12; op1val:0x00080000;  op2val:0xfffeffff
TEST_RR_OP(slt, x12, x23, x8, 0x0, 0x00080000, 0xfffeffff, x22, 20, x24)

# rs1==x8, rs2==x4, rd==x19, rs1_val == 1048576, rs2_val == -8388609
# opcode: slt ; op1:x8; op2:x4; dest:x19; op1val:0x00100000;  op2val:0xff7fffff
TEST_RR_OP(slt, x19, x8, x4, 0x0, 0x00100000, 0xff7fffff, x22, 24, x24)

# rs1==x10, rs2==x14, rd==x30, rs1_val == 2097152, rs2_val == -9
# opcode: slt ; op1:x10; op2:x14; dest:x30; op1val:0x00200000;  op2val:0xfffffff7
TEST_RR_OP(slt, x30, x10, x14, 0x0, 0x00200000, 0xfffffff7, x22, 28, x24)

# rs1==x7, rs2==x21, rd==x10, rs1_val == 4194304, rs2_val == 8
# opcode: slt ; op1:x7; op2:x21; dest:x10; op1val:0x00400000;  op2val:0x00000008
TEST_RR_OP(slt, x10, x7, x21, 0x0, 0x00400000, 0x00000008, x22, 32, x24)

# rs1==x5, rs1_val == 8388608, 
# opcode: slt ; op1:x5; op2:x13; dest:x20; op1val:0x00800000;  op2val:0x00080000
TEST_RR_OP(slt, x20, x5, x13, 0x0, 0x00800000, 0x00080000, x22, 36, x24)

# rs2==x7, rs1_val == 33554432, 
# opcode: slt ; op1:x31; op2:x7; dest:x2; op1val:0x02000000;  op2val:0xfbffffff
TEST_RR_OP(slt, x2, x31, x7, 0x0, 0x02000000, 0xfbffffff, x22, 40, x24)

# rd==x7, rs1_val == 67108864, 
# opcode: slt ; op1:x12; op2:x16; dest:x7; op1val:0x04000000;  op2val:0xfffffffa
TEST_RR_OP(slt, x7, x12, x16, 0x0, 0x04000000, 0xfffffffa, x22, 44, x24)

# rs1_val == 134217728, rs2_val == -1073741825
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xbfffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x08000000, 0xbfffffff, x22, 48, x1)

# rs1_val == 268435456, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x80000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x10000000, 0x80000000, x22, 52, x1)

# rs1_val == 536870912, rs2_val == -16385
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xffffbfff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x20000000, 0xffffbfff, x22, 56, x1)

# rs1_val == 1073741824, rs2_val == 32768
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00008000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x40000000, 0x00008000, x22, 60, x1)

# rs1_val == -2, rs2_val == 536870912
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x20000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffe, 0x20000000, x22, 64, x1)

# rs1_val == -3, rs2_val == -5
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfffffffb
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffd, 0xfffffffb, x22, 68, x1)

# rs1_val == -5, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x3fffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffb, 0x3fffffff, x22, 72, x1)

# rs1_val == -9, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000005
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffff7, 0x00000005, x22, 76, x1)

# rs1_val == -17, rs2_val == 65536
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00010000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffef, 0x00010000, x22, 80, x1)

# rs1_val == -33, rs2_val == 67108864
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x04000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffdf, 0x04000000, x22, 84, x1)

# rs2_val == -262145, rs1_val == -32769
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xfffbffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffff7fff, 0xfffbffff, x22, 88, x1)

# rs2_val == -524289, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0xfff7ffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffff9, 0xfff7ffff, x22, 92, x1)

# rs2_val == -1048577, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0xffefffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00004000, 0xffefffff, x22, 96, x1)

# rs2_val == -16777217, rs1_val == -536870913
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xfeffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xdfffffff, 0xfeffffff, x22, 100, x1)

# rs2_val == -33554433, rs1_val == -65
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfdffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffbf, 0xfdffffff, x22, 104, x1)

# rs2_val == -268435457, rs1_val == -4194305
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xefffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffbfffff, 0xefffffff, x22, 108, x1)

# rs2_val == -536870913, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xdfffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00000005, 0xdfffffff, x22, 112, x1)

# rs2_val == -1431655766, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xaaaaaaaa
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x01000000, 0xaaaaaaaa, x22, 116, x1)

# rs1_val == -129, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00010000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffff7f, 0x00010000, x22, 120, x1)

# rs1_val == -257, rs2_val == 64
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000040
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffeff, 0x00000040, x22, 124, x1)

# rs1_val == -513, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000009
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffdff, 0x00000009, x22, 128, x1)

# rs1_val == -1025, rs2_val == 2048
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000800
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffbff, 0x00000800, x22, 132, x1)

# rs1_val == -2049, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xc0000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffff7ff, 0xc0000000, x22, 136, x1)

# rs1_val == -4097, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffffff7
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffefff, 0xfffffff7, x22, 140, x1)

# rs1_val == -8193, rs2_val == -2049
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffff7ff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffdfff, 0xfffff7ff, x22, 144, x1)

# rs1_val == -16385, rs2_val == -3
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfffffffd
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffbfff, 0xfffffffd, x22, 148, x1)

# rs1_val == -65537, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00100000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffeffff, 0x00100000, x22, 152, x1)

# rs1_val == -131073, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffdffff, 0x00000000, x22, 156, x1)

# rs1_val == -262145, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000400
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffbffff, 0x00000400, x22, 160, x1)

# rs1_val == -524289, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfeffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfff7ffff, 0xfeffffff, x22, 164, x1)

# rs1_val == -1048577, rs2_val == 16384
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00004000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffefffff, 0x00004000, x22, 168, x1)

# rs1_val == -2097153, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xaaaaaaaa
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffdfffff, 0xaaaaaaaa, x22, 172, x1)

# rs1_val == -16777217, rs2_val == -8193
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xffffdfff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfeffffff, 0xffffdfff, x22, 176, x1)

# rs1_val == -33554433, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00080000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfdffffff, 0x00080000, x22, 180, x1)

# rs1_val == -67108865, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000004
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfbffffff, 0x00000004, x22, 184, x1)

# rs1_val == -134217729, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x3fffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xf7ffffff, 0x3fffffff, x22, 188, x1)

# rs1_val == -268435457, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000008
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xefffffff, 0x00000008, x22, 192, x1)

# rs1_val == -1073741825, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfffffff7
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xbfffffff, 0xfffffff7, x22, 196, x1)

# rs1_val == 1431655765, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x01000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x55555555, 0x01000000, x22, 200, x1)

# rs2_val == 2, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000002
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffbfff, 0x00000002, x22, 204, x1)

# rs2_val == 16, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x00000010
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00010000, 0x00000010, x22, 208, x1)

# rs2_val == 32, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x00000020
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00000400, 0x00000020, x22, 212, x1)

# rs2_val == 128, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000080
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffff7, 0x00000080, x22, 216, x1)

# rs2_val == 256, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000100
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffbfffff, 0x00000100, x22, 220, x1)

# rs2_val == 4096, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00001000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xf7ffffff, 0x00001000, x22, 224, x1)

# rs2_val == 8192, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00002000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xff7fffff, 0x00002000, x22, 228, x1)

# rs2_val == 131072, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00020000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffff7f, 0x00020000, x22, 232, x1)

# rs2_val == 262144, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00040000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffbf, 0x00040000, x22, 236, x1)

# rs2_val == 4194304, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00400000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x00000003, 0x00400000, x22, 240, x1)

# rs2_val == 8388608, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00800000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xdfffffff, 0x00800000, x22, 244, x1)

# rs2_val == 33554432, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x02000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x00000200, 0x02000000, x22, 248, x1)

# rs2_val == 134217728, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x08000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffff7f, 0x08000000, x22, 252, x1)

# rs2_val == 268435456, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x10000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xff7fffff, 0x10000000, x22, 256, x1)

# rs2_val == 1073741824, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0x40000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x00000010, 0x40000000, x22, 260, x1)

# rs2_val == -2, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xfffffffe
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00008000, 0xfffffffe, x22, 264, x1)

# rs2_val == -17, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff6;  op2val:0xffffffef
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffff6, 0xffffffef, x22, 268, x1)

# rs2_val == -65, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0xffffffbf
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00004000, 0xffffffbf, x22, 272, x1)

# rs2_val == -129, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xffffff7f
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xff7fffff, 0xffffff7f, x22, 276, x1)

# rs2_val == -4097, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xffffefff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x04000000, 0xffffefff, x22, 280, x1)

# rs2_val == -513, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xfffffdff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00200000, 0xfffffdff, x22, 284, x1)

# rs2_val == -32769, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xffff7fff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00000000, 0xffff7fff, x22, 288, x1)

# rs2_val == -131073, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0xfffdffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00004000, 0xfffdffff, x22, 292, x1)

# rs1_val == 0, rs2_val == 1024
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00000400
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x00000000, 0x00000400, x22, 296, x1)

# rs1_val == (2**(xlen-1)-1), rs2_val == -1025, rs1_val > 0 and rs2_val < 0, rs1_val == 2147483647
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xfffffbff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x7fffffff, 0xfffffbff, x22, 300, x1)

# rs1_val == 1, rs2_val == -2097153
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xffdfffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00000001, 0xffdfffff, x22, 304, x1)

# rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x80000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffff, 0x80000000, x22, 308, x1)

# rs2_val == 0, rs1_val == -8388609
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xff7fffff, 0x00000000, x22, 312, x1)

# rs1_val == 64, rs2_val == 1048576
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0x00100000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x00000040, 0x00100000, x22, 316, x1)

# rs1_val == 512, rs2_val == 524288
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x00080000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x00000200, 0x00080000, x22, 320, x1)
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
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x22_0:
    .fill 81*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
