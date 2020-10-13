
#This assembly file tests the divu instruction of the RISC-V M extension for the divu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",divu)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x0, rs2==x17, rd==x25, rs1_val == (-2**(xlen-1)), rs2_val == 4194304, rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: divu ; op1:x0; op2:x17; dest:x25; op1val:0x80000000;  op2val:0x00400000
TEST_RR_OP(divu, x25, x0, x17, 0x00000000, 0x80000000, 0x00400000, x3, 0, x23)

# rs1 == rd != rs2, rs1==x1, rs2==x14, rd==x1, rs1_val == 0, rs2_val == -536870913
# opcode: divu ; op1:x1; op2:x14; dest:x1; op1val:0x00000000;  op2val:0xdfffffff
TEST_RR_OP(divu, x1, x1, x14, 0x00000000, 0x00000000, 0xdfffffff, x3, 4, x23)

# rs1 == rs2 == rd, rs1==x8, rs2==x8, rd==x8, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 524288, rs1_val == 2147483647
# opcode: divu ; op1:x8; op2:x8; dest:x8; op1val:0x7fffffff;  op2val:0x00080000
TEST_RR_OP(divu, x8, x8, x8, 0x00000000, 0x7fffffff, 0x00080000, x3, 8, x23)

# rs1 == rs2 != rd, rs1==x25, rs2==x25, rd==x5, rs1_val == 1, rs2_val == 131072
# opcode: divu ; op1:x25; op2:x25; dest:x5; op1val:0x00000001;  op2val:0x00020000
TEST_RR_OP(divu, x5, x25, x25, 0x00000000, 0x00000001, 0x00020000, x3, 12, x23)

# rs2 == rd != rs1, rs1==x16, rs2==x7, rd==x7, rs2_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs2_val == -2147483648, rs1_val == -65537
# opcode: divu ; op1:x16; op2:x7; dest:x7; op1val:0xfffeffff;  op2val:0x80000000
TEST_RR_OP(divu, x7, x16, x7, 0x00000000, 0xfffeffff, 0x80000000, x3, 16, x23)

# rs1==x10, rs2==x27, rd==x20, rs2_val == 0, rs1_val == -268435457
# opcode: divu ; op1:x10; op2:x27; dest:x20; op1val:0xefffffff;  op2val:0x00000000
TEST_RR_OP(divu, x20, x10, x27, 0x00000000, 0xefffffff, 0x00000000, x3, 20, x23)

# rs1==x18, rs2==x20, rd==x21, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647
# opcode: divu ; op1:x18; op2:x20; dest:x21; op1val:0xffffffff;  op2val:0x7fffffff
TEST_RR_OP(divu, x21, x18, x20, 0x00000000, 0xffffffff, 0x7fffffff, x3, 24, x23)

# rs1==x13, rs2==x2, rd==x10, rs2_val == 1, rs1_val == -5
# opcode: divu ; op1:x13; op2:x2; dest:x10; op1val:0xfffffffb;  op2val:0x00000001
TEST_RR_OP(divu, x10, x13, x2, 0x00000000, 0xfffffffb, 0x00000001, x3, 28, x23)

# rs1==x2, rs2==x19, rd==x29, rs1_val > 0 and rs2_val < 0, rs2_val == -33, rs1_val == 4
# opcode: divu ; op1:x2; op2:x19; dest:x29; op1val:0x00000004;  op2val:0xffffffdf
TEST_RR_OP(divu, x29, x2, x19, 0x00000000, 0x00000004, 0xffffffdf, x3, 32, x23)

# rs1==x22, rs2==x28, rd==x18, rs1_val == rs2_val, rs1_val == 536870912, rs2_val == 536870912
# opcode: divu ; op1:x22; op2:x28; dest:x18; op1val:0x20000000;  op2val:0x20000000
TEST_RR_OP(divu, x18, x22, x28, 0x00000000, 0x20000000, 0x20000000, x3, 36, x23)

# rs1==x27, rs2==x24, rd==x11, rs1_val == 2, 
# opcode: divu ; op1:x27; op2:x24; dest:x11; op1val:0x00000002;  op2val:0x7fffffff
TEST_RR_OP(divu, x11, x27, x24, 0x00000000, 0x00000002, 0x7fffffff, x3, 40, x23)

# rs1==x29, rs2==x9, rd==x12, rs1_val == 8, rs2_val == -1431655766
# opcode: divu ; op1:x29; op2:x9; dest:x12; op1val:0x00000008;  op2val:0xaaaaaaaa
TEST_RR_OP(divu, x12, x29, x9, 0x00000000, 0x00000008, 0xaaaaaaaa, x3, 44, x23)

# rs1==x6, rs2==x18, rd==x9, rs1_val == 16, rs2_val == 67108864
# opcode: divu ; op1:x6; op2:x18; dest:x9; op1val:0x00000010;  op2val:0x04000000
TEST_RR_OP(divu, x9, x6, x18, 0x00000000, 0x00000010, 0x04000000, x3, 48, x23)

# rs1==x15, rs2==x11, rd==x6, rs1_val == 32, rs2_val == 1073741824
# opcode: divu ; op1:x15; op2:x11; dest:x6; op1val:0x00000020;  op2val:0x40000000
TEST_RR_OP(divu, x6, x15, x11, 0x00000000, 0x00000020, 0x40000000, x3, 52, x23)

# rs1==x11, rs2==x5, rd==x4, rs1_val == 64, rs2_val == -8388609
# opcode: divu ; op1:x11; op2:x5; dest:x4; op1val:0x00000040;  op2val:0xff7fffff
TEST_RR_OP(divu, x4, x11, x5, 0x00000000, 0x00000040, 0xff7fffff, x3, 56, x23)

# rs1==x28, rs2==x30, rd==x0, rs1_val == 128, rs2_val == 8
# opcode: divu ; op1:x28; op2:x30; dest:x0; op1val:0x00000080;  op2val:0x00000008
TEST_RR_OP(divu, x0, x28, x30, 0x00000000, 0x00000080, 0x00000008, x3, 60, x23)

# rs1==x26, rs2==x22, rd==x28, rs1_val == 256, rs2_val == -1025
# opcode: divu ; op1:x26; op2:x22; dest:x28; op1val:0x00000100;  op2val:0xfffffbff
TEST_RR_OP(divu, x28, x26, x22, 0x00000000, 0x00000100, 0xfffffbff, x3, 64, x11)
RVTEST_SIGBASE( x8,signature_x8_0)

# rs1==x4, rs2==x10, rd==x26, rs1_val == 512, rs2_val == -257
# opcode: divu ; op1:x4; op2:x10; dest:x26; op1val:0x00000200;  op2val:0xfffffeff
TEST_RR_OP(divu, x26, x4, x10, 0x00000000, 0x00000200, 0xfffffeff, x8, 0, x11)

# rs1==x3, rs2==x15, rd==x17, rs1_val == 1024, 
# opcode: divu ; op1:x3; op2:x15; dest:x17; op1val:0x00000400;  op2val:0x00020000
TEST_RR_OP(divu, x17, x3, x15, 0x00000000, 0x00000400, 0x00020000, x8, 4, x11)

# rs1==x20, rs2==x23, rd==x24, rs1_val == 2048, rs2_val == -134217729
# opcode: divu ; op1:x20; op2:x23; dest:x24; op1val:0x00000800;  op2val:0xf7ffffff
TEST_RR_OP(divu, x24, x20, x23, 0x00000000, 0x00000800, 0xf7ffffff, x8, 8, x11)

# rs1==x7, rs2==x6, rd==x15, rs1_val == 4096, rs2_val == -3
# opcode: divu ; op1:x7; op2:x6; dest:x15; op1val:0x00001000;  op2val:0xfffffffd
TEST_RR_OP(divu, x15, x7, x6, 0x00000000, 0x00001000, 0xfffffffd, x8, 12, x11)

# rs1==x17, rs2==x12, rd==x13, rs1_val == 8192, rs2_val == -17
# opcode: divu ; op1:x17; op2:x12; dest:x13; op1val:0x00002000;  op2val:0xffffffef
TEST_RR_OP(divu, x13, x17, x12, 0x00000000, 0x00002000, 0xffffffef, x8, 16, x11)

# rs1==x24, rs2==x1, rd==x14, rs1_val == 16384, rs2_val == 16384
# opcode: divu ; op1:x24; op2:x1; dest:x14; op1val:0x00004000;  op2val:0x00004000
TEST_RR_OP(divu, x14, x24, x1, 0x00000000, 0x00004000, 0x00004000, x8, 20, x11)

# rs1==x12, rs2==x3, rd==x22, rs1_val == 32768, rs2_val == 4
# opcode: divu ; op1:x12; op2:x3; dest:x22; op1val:0x00008000;  op2val:0x00000004
TEST_RR_OP(divu, x22, x12, x3, 0x00000000, 0x00008000, 0x00000004, x8, 24, x11)

# rs1==x19, rs2==x31, rd==x30, rs1_val == 65536, 
# opcode: divu ; op1:x19; op2:x31; dest:x30; op1val:0x00010000;  op2val:0x00000008
TEST_RR_OP(divu, x30, x19, x31, 0x00000000, 0x00010000, 0x00000008, x8, 28, x11)

# rs1==x21, rs2==x29, rd==x23, rs1_val == 131072, rs2_val == -131073
# opcode: divu ; op1:x21; op2:x29; dest:x23; op1val:0x00020000;  op2val:0xfffdffff
TEST_RR_OP(divu, x23, x21, x29, 0x00000000, 0x00020000, 0xfffdffff, x8, 32, x11)

# rs1==x30, rs2==x26, rd==x27, rs1_val == 262144, rs2_val == -2
# opcode: divu ; op1:x30; op2:x26; dest:x27; op1val:0x00040000;  op2val:0xfffffffe
TEST_RR_OP(divu, x27, x30, x26, 0x00000000, 0x00040000, 0xfffffffe, x8, 36, x11)

# rs1==x23, rs2==x13, rd==x19, rs1_val == 524288, rs2_val == -16777217
# opcode: divu ; op1:x23; op2:x13; dest:x19; op1val:0x00080000;  op2val:0xfeffffff
TEST_RR_OP(divu, x19, x23, x13, 0x00000000, 0x00080000, 0xfeffffff, x8, 40, x11)

# rs1==x31, rs2==x4, rd==x2, rs1_val == 1048576, rs2_val == 4096
# opcode: divu ; op1:x31; op2:x4; dest:x2; op1val:0x00100000;  op2val:0x00001000
TEST_RR_OP(divu, x2, x31, x4, 0x00000000, 0x00100000, 0x00001000, x8, 44, x11)

# rs1==x14, rs2==x16, rd==x31, rs1_val == 2097152, rs2_val == -33554433
# opcode: divu ; op1:x14; op2:x16; dest:x31; op1val:0x00200000;  op2val:0xfdffffff
TEST_RR_OP(divu, x31, x14, x16, 0x00000000, 0x00200000, 0xfdffffff, x8, 48, x11)

# rs1==x5, rs2==x0, rd==x16, rs1_val == 4194304, 
# opcode: divu ; op1:x5; op2:x0; dest:x16; op1val:0x00400000;  op2val:0x00000009
TEST_RR_OP(divu, x16, x5, x0, 0x00000000, 0x00400000, 0x00000009, x8, 52, x11)

# rs1==x9, rs2==x21, rd==x3, rs1_val == 8388608, 
# opcode: divu ; op1:x9; op2:x21; dest:x3; op1val:0x00800000;  op2val:0x00000005
TEST_RR_OP(divu, x3, x9, x21, 0x00000000, 0x00800000, 0x00000005, x8, 56, x11)

# rs1_val == 16777216, rs2_val == 256
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000100
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x01000000, 0x00000100, x8, 60, x1)

# rs1_val == 33554432, rs2_val == 64
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00000040
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x02000000, 0x00000040, x8, 64, x1)

# rs1_val == 67108864, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x40000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x04000000, 0x40000000, x8, 68, x1)

# rs1_val == 134217728, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000005
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x08000000, 0x00000005, x8, 72, x1)

# rs1_val == 268435456, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x20000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x10000000, 0x20000000, x8, 76, x1)

# rs1_val == 1073741824, rs2_val == 32768
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00008000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x40000000, 0x00008000, x8, 80, x1)

# rs1_val == -2, rs2_val == 1024
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000400
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffe, 0x00000400, x8, 84, x1)

# rs1_val == -3, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000005
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffd, 0x00000005, x8, 88, x1)

# rs1_val == -9, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00008000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffff7, 0x00008000, x8, 92, x1)

# rs2_val == -262145, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfffbffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffd, 0xfffbffff, x8, 96, x1)

# rs2_val == -524289, rs1_val == -67108865
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfff7ffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfbffffff, 0xfff7ffff, x8, 100, x1)

# rs2_val == -1048577, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xffefffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000000, 0xffefffff, x8, 104, x1)

# rs2_val == -2097153, rs1_val == -16385
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xffdfffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffbfff, 0xffdfffff, x8, 108, x1)

# rs2_val == -4194305, rs1_val == -262145
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xffbfffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffbffff, 0xffbfffff, x8, 112, x1)

# rs2_val == -67108865, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0xfbffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000010, 0xfbffffff, x8, 116, x1)

# rs2_val == -268435457, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xefffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x20000000, 0xefffffff, x8, 120, x1)

# rs2_val == -1073741825, rs1_val == -8388609
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xbfffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xff7fffff, 0xbfffffff, x8, 124, x1)

# rs2_val == 1431655765, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0x55555555
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffc, 0x55555555, x8, 128, x1)

# rs1_val == -17, rs2_val == 128
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000080
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffef, 0x00000080, x8, 132, x1)

# rs1_val == -33, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xefffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffdf, 0xefffffff, x8, 136, x1)

# rs1_val == -65, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x3fffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffbf, 0x3fffffff, x8, 140, x1)

# rs1_val == -129, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xfffffff6
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffff7f, 0xfffffff6, x8, 144, x1)

# rs1_val == -257, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x40000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffeff, 0x40000000, x8, 148, x1)

# rs1_val == -513, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00020000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffdff, 0x00020000, x8, 152, x1)

# rs1_val == -1025, rs2_val == 32
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000020
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffbff, 0x00000020, x8, 156, x1)

# rs1_val == -2049, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfffffff6
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffff7ff, 0xfffffff6, x8, 160, x1)

# rs1_val == -4097, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x3fffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffefff, 0x3fffffff, x8, 164, x1)

# rs1_val == -8193, rs2_val == 8388608
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00800000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffdfff, 0x00800000, x8, 168, x1)

# rs1_val == -32769, rs2_val == -32769
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xffff7fff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffff7fff, 0xffff7fff, x8, 172, x1)

# rs1_val == -131073, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000009
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffdffff, 0x00000009, x8, 176, x1)

# rs1_val == -524289, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfff7ffff, 0x00000000, x8, 180, x1)

# rs1_val == -1048577, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000008
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffefffff, 0x00000008, x8, 184, x1)

# rs1_val == -2097153, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffffff9
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffdfffff, 0xfffffff9, x8, 188, x1)

# rs1_val == -4194305, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xf7ffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffbfffff, 0xf7ffffff, x8, 192, x1)

# rs1_val == -16777217, rs2_val == 134217728
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x08000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfeffffff, 0x08000000, x8, 196, x1)

# rs1_val == -33554433, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xffbfffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfdffffff, 0xffbfffff, x8, 200, x1)

# rs1_val == -134217729, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xf7ffffff, 0xffffffff, x8, 204, x1)

# rs1_val == -536870913, rs2_val == 65536
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00010000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xdfffffff, 0x00010000, x8, 208, x1)

# rs1_val == -1073741825, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x7fffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xbfffffff, 0x7fffffff, x8, 212, x1)

# rs1_val == 1431655765, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xfdffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x55555555, 0xfdffffff, x8, 216, x1)

# rs1_val == -1431655766, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x55555555
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0x55555555, x8, 220, x1)

# rs2_val == 2, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000002
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffdfff, 0x00000002, x8, 224, x1)

# rs2_val == 16, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000010
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfff7ffff, 0x00000010, x8, 228, x1)

# rs2_val == 512, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x00000200
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00100000, 0x00000200, x8, 232, x1)

# rs2_val == 2048, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0x00000800
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00008000, 0x00000800, x8, 236, x1)

# rs2_val == 8192, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0x00002000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00008000, 0x00002000, x8, 240, x1)

# rs2_val == 262144, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00040000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffbffff, 0x00040000, x8, 244, x1)

# rs2_val == 1048576, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00100000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffeffff, 0x00100000, x8, 248, x1)

# rs2_val == 2097152, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x00200000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffff, 0x00200000, x8, 252, x1)

# rs2_val == 16777216, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x01000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xbfffffff, 0x01000000, x8, 256, x1)

# rs2_val == 33554432, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0x02000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffff9, 0x02000000, x8, 260, x1)

# rs2_val == 268435456, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x10000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x10000000, 0x10000000, x8, 264, x1)

# rs2_val == -5, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffffffb
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffbf, 0xfffffffb, x8, 268, x1)

# rs2_val == -9, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffffff7
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x08000000, 0xfffffff7, x8, 272, x1)

# rs2_val == -65, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0xffffffbf
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00002000, 0xffffffbf, x8, 276, x1)

# rs2_val == -129, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0xffffff7f
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00010000, 0xffffff7f, x8, 280, x1)

# rs2_val == -513, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfffffdff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfff7ffff, 0xfffffdff, x8, 284, x1)

# rs2_val == -2049, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xfffff7ff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000020, 0xfffff7ff, x8, 288, x1)

# rs2_val == -4097, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xffffefff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000400, 0xffffefff, x8, 292, x1)

# rs2_val == -8193, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xffffdfff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000020, 0xffffdfff, x8, 296, x1)

# rs2_val == -16385, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0xffffbfff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00001000, 0xffffbfff, x8, 300, x1)

# rs2_val == -65537, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xfffeffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000020, 0xfffeffff, x8, 304, x1)

# rs1_val == (-2**(xlen-1)), rs2_val == 4194304, rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00400000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x80000000, 0x00400000, x8, 308, x1)

# rs1_val == 0, rs2_val == -536870913
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xdfffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000000, 0xdfffffff, x8, 312, x1)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 524288, rs1_val == 2147483647
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00080000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x7fffffff, 0x00080000, x8, 316, x1)

# rs1_val == 1, rs2_val == 131072
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00020000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000001, 0x00020000, x8, 320, x1)

# rs2_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs2_val == -2147483648, rs1_val == -65537
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x80000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffeffff, 0x80000000, x8, 324, x1)

# rs1_val == 128, rs2_val == 8
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0x00000008
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000080, 0x00000008, x8, 328, x1)

# rs1_val == 4194304, 
# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000009
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00400000, 0x00000009, x8, 332, x1)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x8_0:
    .fill 84*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
