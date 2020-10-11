
#This assembly file tests the sub instruction of the RISC-V I extension for the sub covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sub)

la x2,signature_x2_1

# rs1 == rs2 != rd, rs1==x25, rs2==x25, rd==x4, rs1_val == (-2**(xlen-1)), rs2_val == 268435456, rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: sub ; op1:x25; op2:x25; dest:x4; op1val:0x80000000;  op2val:0x10000000
TEST_RR_OP(sub, x4, x25, x25, 0x70000000, 0x80000000, 0x10000000, x2, 0, x16)

# rs2 == rd != rs1, rs1==x10, rs2==x18, rd==x18, rs1_val == 0, rs2_val == -1025
# opcode: sub ; op1:x10; op2:x18; dest:x18; op1val:0x00000000;  op2val:0xfffffbff
TEST_RR_OP(sub, x18, x10, x18, 0x401, 0x00000000, 0xfffffbff, x2, 4, x16)

# rs1 == rs2 == rd, rs1==x9, rs2==x9, rd==x9, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 4096, rs1_val == 2147483647
# opcode: sub ; op1:x9; op2:x9; dest:x9; op1val:0x7fffffff;  op2val:0x00001000
TEST_RR_OP(sub, x9, x9, x9, 0x7fffefff, 0x7fffffff, 0x00001000, x2, 8, x16)

# rs1 == rd != rs2, rs1==x17, rs2==x23, rd==x17, rs1_val == 1, rs1_val > 0 and rs2_val < 0, rs2_val == -513
# opcode: sub ; op1:x17; op2:x23; dest:x17; op1val:0x00000001;  op2val:0xfffffdff
TEST_RR_OP(sub, x17, x17, x23, 0x202, 0x00000001, 0xfffffdff, x2, 12, x16)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x7, rs2==x17, rd==x20, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648, rs1_val == 33554432
# opcode: sub ; op1:x7; op2:x17; dest:x20; op1val:0x02000000;  op2val:0x80000000
TEST_RR_OP(sub, x20, x7, x17, 0x82000000, 0x02000000, 0x80000000, x2, 16, x16)

# rs1==x11, rs2==x30, rd==x5, rs2_val == 0, rs1_val == 536870912
# opcode: sub ; op1:x11; op2:x30; dest:x5; op1val:0x20000000;  op2val:0x00000000
TEST_RR_OP(sub, x5, x11, x30, 0x20000000, 0x20000000, 0x00000000, x2, 20, x16)

# rs1==x18, rs2==x1, rd==x15, rs2_val == (2**(xlen-1)-1), rs1_val == -257, rs2_val == 2147483647
# opcode: sub ; op1:x18; op2:x1; dest:x15; op1val:0xfffffeff;  op2val:0x7fffffff
TEST_RR_OP(sub, x15, x18, x1, 0x7fffff00, 0xfffffeff, 0x7fffffff, x2, 24, x16)

# rs1==x5, rs2==x26, rd==x7, rs2_val == 1, rs1_val == 134217728
# opcode: sub ; op1:x5; op2:x26; dest:x7; op1val:0x08000000;  op2val:0x00000001
TEST_RR_OP(sub, x7, x5, x26, 0x7ffffff, 0x08000000, 0x00000001, x2, 28, x16)

# rs1==x6, rs2==x10, rd==x14, rs1_val < 0 and rs2_val < 0, rs2_val == -4097, rs1_val == -67108865
# opcode: sub ; op1:x6; op2:x10; dest:x14; op1val:0xfbffffff;  op2val:0xffffefff
TEST_RR_OP(sub, x14, x6, x10, 0xfc001000, 0xfbffffff, 0xffffefff, x2, 32, x16)

# rs1==x12, rs2==x31, rd==x6, rs1_val == rs2_val, rs1_val == 1073741824, rs2_val == 1073741824
# opcode: sub ; op1:x12; op2:x31; dest:x6; op1val:0x40000000;  op2val:0x40000000
TEST_RR_OP(sub, x6, x12, x31, 0x0, 0x40000000, 0x40000000, x2, 36, x16)

# rs1==x27, rs2==x11, rd==x24, rs1_val == 2, rs2_val == 2
# opcode: sub ; op1:x27; op2:x11; dest:x24; op1val:0x00000002;  op2val:0x00000002
TEST_RR_OP(sub, x24, x27, x11, 0x0, 0x00000002, 0x00000002, x2, 40, x16)

# rs1==x3, rs2==x0, rd==x13, rs1_val == 4, rs2_val == -1431655766
# opcode: sub ; op1:x3; op2:x0; dest:x13; op1val:0x00000004;  op2val:0xaaaaaaaa
TEST_RR_OP(sub, x13, x3, x0, 0x5555555a, 0x00000004, 0xaaaaaaaa, x2, 44, x16)

# rs1==x19, rs2==x5, rd==x12, rs1_val == 8, rs2_val == -1073741825
# opcode: sub ; op1:x19; op2:x5; dest:x12; op1val:0x00000008;  op2val:0xbfffffff
TEST_RR_OP(sub, x12, x19, x5, 0x40000009, 0x00000008, 0xbfffffff, x2, 48, x16)

# rs1==x29, rs2==x4, rd==x23, rs1_val == 16, rs2_val == 16384
# opcode: sub ; op1:x29; op2:x4; dest:x23; op1val:0x00000010;  op2val:0x00004000
TEST_RR_OP(sub, x23, x29, x4, 0xffffc010, 0x00000010, 0x00004000, x2, 52, x16)

# rs1==x0, rs2==x24, rd==x19, rs1_val == 32, 
# opcode: sub ; op1:x0; op2:x24; dest:x19; op1val:0x00000020;  op2val:0xfffffff6
TEST_RR_OP(sub, x19, x0, x24, 0x2a, 0x00000020, 0xfffffff6, x2, 56, x16)

# rs1==x8, rs2==x20, rd==x1, rs1_val == 64, rs2_val == 67108864
# opcode: sub ; op1:x8; op2:x20; dest:x1; op1val:0x00000040;  op2val:0x04000000
TEST_RR_OP(sub, x1, x8, x20, 0xfc000040, 0x00000040, 0x04000000, x2, 60, x16)

# rs1==x13, rs2==x15, rd==x8, rs1_val == 128, rs2_val == 4
# opcode: sub ; op1:x13; op2:x15; dest:x8; op1val:0x00000080;  op2val:0x00000004
TEST_RR_OP(sub, x8, x13, x15, 0x7c, 0x00000080, 0x00000004, x2, 64, x16)

# rs1==x22, rs2==x19, rd==x26, rs1_val == 256, rs2_val == -65
# opcode: sub ; op1:x22; op2:x19; dest:x26; op1val:0x00000100;  op2val:0xffffffbf
TEST_RR_OP(sub, x26, x22, x19, 0x141, 0x00000100, 0xffffffbf, x2, 68, x16)

# rs1==x23, rs2==x28, rd==x21, rs1_val == 512, rs2_val == 64
# opcode: sub ; op1:x23; op2:x28; dest:x21; op1val:0x00000200;  op2val:0x00000040
TEST_RR_OP(sub, x21, x23, x28, 0x1c0, 0x00000200, 0x00000040, x2, 72, x9)
la x5,signature_x5_0

# rs1==x1, rs2==x21, rd==x25, rs1_val == 1024, rs2_val == 32
# opcode: sub ; op1:x1; op2:x21; dest:x25; op1val:0x00000400;  op2val:0x00000020
TEST_RR_OP(sub, x25, x1, x21, 0x3e0, 0x00000400, 0x00000020, x5, 0, x9)

# rs1==x20, rs2==x2, rd==x0, rs1_val == 2048, 
# opcode: sub ; op1:x20; op2:x2; dest:x0; op1val:0x00000800;  op2val:0x00000003
TEST_RR_OP(sub, x0, x20, x2, 0x7fd, 0x00000800, 0x00000003, x5, 4, x9)

# rs1==x21, rs2==x22, rd==x16, rs1_val == 4096, rs2_val == -8193
# opcode: sub ; op1:x21; op2:x22; dest:x16; op1val:0x00001000;  op2val:0xffffdfff
TEST_RR_OP(sub, x16, x21, x22, 0x3001, 0x00001000, 0xffffdfff, x5, 8, x9)

# rs1==x30, rs2==x8, rd==x28, rs1_val == 8192, 
# opcode: sub ; op1:x30; op2:x8; dest:x28; op1val:0x00002000;  op2val:0x04000000
TEST_RR_OP(sub, x28, x30, x8, 0xfc002000, 0x00002000, 0x04000000, x5, 12, x9)

# rs1==x14, rs2==x13, rd==x3, rs1_val == 16384, 
# opcode: sub ; op1:x14; op2:x13; dest:x3; op1val:0x00004000;  op2val:0x00000004
TEST_RR_OP(sub, x3, x14, x13, 0x3ffc, 0x00004000, 0x00000004, x5, 16, x9)

# rs1==x28, rs2==x14, rd==x2, rs1_val == 32768, rs2_val == -262145
# opcode: sub ; op1:x28; op2:x14; dest:x2; op1val:0x00008000;  op2val:0xfffbffff
TEST_RR_OP(sub, x2, x28, x14, 0x48001, 0x00008000, 0xfffbffff, x5, 20, x9)

# rs1==x4, rs2==x3, rd==x27, rs1_val == 65536, rs2_val == 131072
# opcode: sub ; op1:x4; op2:x3; dest:x27; op1val:0x00010000;  op2val:0x00020000
TEST_RR_OP(sub, x27, x4, x3, 0xffff0000, 0x00010000, 0x00020000, x5, 24, x9)

# rs1==x2, rs2==x29, rd==x10, rs1_val == 131072, rs2_val == -131073
# opcode: sub ; op1:x2; op2:x29; dest:x10; op1val:0x00020000;  op2val:0xfffdffff
TEST_RR_OP(sub, x10, x2, x29, 0x40001, 0x00020000, 0xfffdffff, x5, 28, x9)

# rs1==x16, rs2==x6, rd==x29, rs1_val == 262144, rs2_val == 33554432
# opcode: sub ; op1:x16; op2:x6; dest:x29; op1val:0x00040000;  op2val:0x02000000
TEST_RR_OP(sub, x29, x16, x6, 0xfe040000, 0x00040000, 0x02000000, x5, 32, x9)

# rs1==x24, rs2==x16, rd==x31, rs1_val == 524288, rs2_val == -134217729
# opcode: sub ; op1:x24; op2:x16; dest:x31; op1val:0x00080000;  op2val:0xf7ffffff
TEST_RR_OP(sub, x31, x24, x16, 0x8080001, 0x00080000, 0xf7ffffff, x5, 36, x9)

# rs1==x15, rs2==x27, rd==x11, rs1_val == 1048576, 
# opcode: sub ; op1:x15; op2:x27; dest:x11; op1val:0x00100000;  op2val:0xfffffffa
TEST_RR_OP(sub, x11, x15, x27, 0x100006, 0x00100000, 0xfffffffa, x5, 40, x9)

# rs1==x31, rs2==x12, rd==x30, rs1_val == 2097152, rs2_val == -65537
# opcode: sub ; op1:x31; op2:x12; dest:x30; op1val:0x00200000;  op2val:0xfffeffff
TEST_RR_OP(sub, x30, x31, x12, 0x210001, 0x00200000, 0xfffeffff, x5, 44, x9)

# rs1==x26, rs2==x7, rd==x22, rs1_val == 4194304, rs2_val == 16
# opcode: sub ; op1:x26; op2:x7; dest:x22; op1val:0x00400000;  op2val:0x00000010
TEST_RR_OP(sub, x22, x26, x7, 0x3ffff0, 0x00400000, 0x00000010, x5, 48, x9)

# rs1_val == 8388608, rs2_val == 32768
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00008000
TEST_RR_OP(sub, x12, x10, x11, 0x7f8000, 0x00800000, 0x00008000, x5, 52, x9)

# rs1_val == 16777216, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x3fffffff
TEST_RR_OP(sub, x12, x10, x11, 0xc1000001, 0x01000000, 0x3fffffff, x5, 56, x9)

# rs1_val == 67108864, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xfffbffff
TEST_RR_OP(sub, x12, x10, x11, 0x4040001, 0x04000000, 0xfffbffff, x5, 60, x9)

# rs1_val == 268435456, rs2_val == 524288
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00080000
TEST_RR_OP(sub, x12, x10, x11, 0xff80000, 0x10000000, 0x00080000, x5, 64, x9)

# rs1_val == -2, rs2_val == -3
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffffd
TEST_RR_OP(sub, x12, x10, x11, 0x1, 0xfffffffe, 0xfffffffd, x5, 68, x9)

# rs1_val == -3, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000001
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffc, 0xfffffffd, 0x00000001, x5, 72, x9)

# rs1_val == -5, rs2_val == -536870913
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xdfffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffffc, 0xfffffffb, 0xdfffffff, x5, 76, x9)

# rs1_val == -9, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffffdff
TEST_RR_OP(sub, x12, x10, x11, 0x1f8, 0xfffffff7, 0xfffffdff, x5, 80, x9)

# rs2_val == -524289, rs1_val == -536870913
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xfff7ffff
TEST_RR_OP(sub, x12, x10, x11, 0xe0080000, 0xdfffffff, 0xfff7ffff, x5, 84, x9)

# rs2_val == -1048577, rs1_val == -513
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xffefffff
TEST_RR_OP(sub, x12, x10, x11, 0xffe00, 0xfffffdff, 0xffefffff, x5, 88, x9)

# rs2_val == -2097153, rs1_val == -262145
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xffdfffff
TEST_RR_OP(sub, x12, x10, x11, 0x1c0000, 0xfffbffff, 0xffdfffff, x5, 92, x9)

# rs2_val == -4194305, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xffbfffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffe, 0xfffffffd, 0xffbfffff, x5, 96, x9)

# rs2_val == -8388609, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xff7fffff
TEST_RR_OP(sub, x12, x10, x11, 0x40800001, 0x40000000, 0xff7fffff, x5, 100, x9)

# rs2_val == -16777217, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0xfeffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1000201, 0x00000200, 0xfeffffff, x5, 104, x9)

# rs2_val == -33554433, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0xfdffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffff9, 0xfffffff8, 0xfdffffff, x5, 108, x9)

# rs2_val == -67108865, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xfbffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4000021, 0x00000020, 0xfbffffff, x5, 112, x9)

# rs2_val == -268435457, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff6;  op2val:0xefffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffff7, 0xfffffff6, 0xefffffff, x5, 116, x9)

# rs2_val == 1431655765, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0x55555555
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaaab2, 0x00000007, 0x55555555, x5, 120, x9)

# rs1_val == -17, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000040
TEST_RR_OP(sub, x12, x10, x11, 0xffffffaf, 0xffffffef, 0x00000040, x5, 124, x9)

# rs1_val == -33, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xfdffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffe0, 0xffffffdf, 0xfdffffff, x5, 128, x9)

# rs1_val == -65, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000007
TEST_RR_OP(sub, x12, x10, x11, 0xffffffb8, 0xffffffbf, 0x00000007, x5, 132, x9)

# rs1_val == -129, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffff80, 0xffffff7f, 0xffffffff, x5, 136, x9)

# rs1_val == -1025, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xfffdffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fc00, 0xfffffbff, 0xfffdffff, x5, 140, x9)

# rs1_val == -2049, rs2_val == 8192
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00002000
TEST_RR_OP(sub, x12, x10, x11, 0xffffd7ff, 0xfffff7ff, 0x00002000, x5, 144, x9)

# rs1_val == -4097, rs2_val == 16777216
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x01000000
TEST_RR_OP(sub, x12, x10, x11, 0xfeffefff, 0xffffefff, 0x01000000, x5, 148, x9)

# rs1_val == -8193, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000001
TEST_RR_OP(sub, x12, x10, x11, 0xffffdffe, 0xffffdfff, 0x00000001, x5, 152, x9)

# rs1_val == -16385, rs2_val == -257
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfffffeff
TEST_RR_OP(sub, x12, x10, x11, 0xffffc100, 0xffffbfff, 0xfffffeff, x5, 156, x9)

# rs1_val == -32769, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xfffffff6
TEST_RR_OP(sub, x12, x10, x11, 0xffff8009, 0xffff7fff, 0xfffffff6, x5, 160, x9)

# rs1_val == -65537, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x7fffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fff0000, 0xfffeffff, 0x7fffffff, x5, 164, x9)

# rs1_val == -131073, rs2_val == 2097152
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00200000
TEST_RR_OP(sub, x12, x10, x11, 0xffddffff, 0xfffdffff, 0x00200000, x5, 168, x9)

# rs1_val == -524289, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000006
TEST_RR_OP(sub, x12, x10, x11, 0xfff7fff9, 0xfff7ffff, 0x00000006, x5, 172, x9)

# rs1_val == -1048577, rs2_val == 8388608
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00800000
TEST_RR_OP(sub, x12, x10, x11, 0xff6fffff, 0xffefffff, 0x00800000, x5, 176, x9)

# rs1_val == -2097153, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffffdff
TEST_RR_OP(sub, x12, x10, x11, 0xffe00200, 0xffdfffff, 0xfffffdff, x5, 180, x9)

# rs1_val == -4194305, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x10000000
TEST_RR_OP(sub, x12, x10, x11, 0xefbfffff, 0xffbfffff, 0x10000000, x5, 184, x9)

# rs1_val == -8388609, rs2_val == 4194304
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00400000
TEST_RR_OP(sub, x12, x10, x11, 0xff3fffff, 0xff7fffff, 0x00400000, x5, 188, x9)

# rs1_val == -16777217, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xffdfffff
TEST_RR_OP(sub, x12, x10, x11, 0xff200000, 0xfeffffff, 0xffdfffff, x5, 192, x9)

# rs1_val == -33554433, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00800000
TEST_RR_OP(sub, x12, x10, x11, 0xfd7fffff, 0xfdffffff, 0x00800000, x5, 196, x9)

# rs1_val == -134217729, rs2_val == 536870912
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x20000000
TEST_RR_OP(sub, x12, x10, x11, 0xd7ffffff, 0xf7ffffff, 0x20000000, x5, 200, x9)

# rs1_val == -268435457, rs2_val == -17
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xffffffef
TEST_RR_OP(sub, x12, x10, x11, 0xf0000010, 0xefffffff, 0xffffffef, x5, 204, x9)

# rs1_val == -1073741825, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000004
TEST_RR_OP(sub, x12, x10, x11, 0xbffffffb, 0xbfffffff, 0x00000004, x5, 208, x9)

# rs1_val == 1431655765, rs2_val == 1024
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000400
TEST_RR_OP(sub, x12, x10, x11, 0x55555155, 0x55555555, 0x00000400, x5, 212, x9)

# rs1_val == -1431655766, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00002000
TEST_RR_OP(sub, x12, x10, x11, 0xaaaa8aaa, 0xaaaaaaaa, 0x00002000, x5, 216, x9)

# rs2_val == 8, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000008
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff3, 0xfffffffb, 0x00000008, x5, 220, x9)

# rs2_val == 128, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000080
TEST_RR_OP(sub, x12, x10, x11, 0xfffffe7f, 0xfffffeff, 0x00000080, x5, 224, x9)

# rs2_val == 262144, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00040000
TEST_RR_OP(sub, x12, x10, x11, 0xff7bffff, 0xff7fffff, 0x00040000, x5, 228, x9)

# rs2_val == 2048, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x00000800
TEST_RR_OP(sub, x12, x10, x11, 0x800, 0x00001000, 0x00000800, x5, 232, x9)

# rs2_val == 1048576, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00100000
TEST_RR_OP(sub, x12, x10, x11, 0xffefffef, 0xffffffef, 0x00100000, x5, 236, x9)

# rs2_val == 134217728, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x08000000
TEST_RR_OP(sub, x12, x10, x11, 0xf8000001, 0x00000001, 0x08000000, x5, 240, x9)

# rs2_val == -2, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xfffffffe
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaaaac, 0xaaaaaaaa, 0xfffffffe, x5, 244, x9)

# rs2_val == -5, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xfffffffb
TEST_RR_OP(sub, x12, x10, x11, 0x5555555a, 0x55555555, 0xfffffffb, x5, 248, x9)

# rs2_val == -9, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xfffffff7
TEST_RR_OP(sub, x12, x10, x11, 0x1000009, 0x01000000, 0xfffffff7, x5, 252, x9)

# rs2_val == -33, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xffffffdf
TEST_RR_OP(sub, x12, x10, x11, 0xf8000020, 0xf7ffffff, 0xffffffdf, x5, 256, x9)

# rs2_val == -129, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0xffffff7f
TEST_RR_OP(sub, x12, x10, x11, 0xc1, 0x00000040, 0xffffff7f, x5, 260, x9)

# rs2_val == 256, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000100
TEST_RR_OP(sub, x12, x10, x11, 0xfffbfeff, 0xfffbffff, 0x00000100, x5, 264, x9)

# rs2_val == 512, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000200
TEST_RR_OP(sub, x12, x10, x11, 0xffffbdff, 0xffffbfff, 0x00000200, x5, 268, x9)

# rs2_val == -2049, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfffff7ff
TEST_RR_OP(sub, x12, x10, x11, 0xfff00800, 0xffefffff, 0xfffff7ff, x5, 272, x9)

# rs2_val == -16385, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xffffbfff
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaeaab, 0xaaaaaaaa, 0xffffbfff, x5, 276, x9)

# rs2_val == -32769, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xffff7fff
TEST_RR_OP(sub, x12, x10, x11, 0x7ffd, 0xfffffffc, 0xffff7fff, x5, 280, x9)

# rs2_val == 65536, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00010000
TEST_RR_OP(sub, x12, x10, x11, 0xfffefffd, 0xfffffffd, 0x00010000, x5, 284, x9)

# rs1_val == (-2**(xlen-1)), rs2_val == 268435456, rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x10000000
TEST_RR_OP(sub, x12, x10, x11, 0x70000000, 0x80000000, 0x10000000, x5, 288, x9)

# rs1_val == 0, rs2_val == -1025
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffffbff
TEST_RR_OP(sub, x12, x10, x11, 0x401, 0x00000000, 0xfffffbff, x5, 292, x9)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 4096, rs1_val == 2147483647
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00001000
TEST_RR_OP(sub, x12, x10, x11, 0x7fffefff, 0x7fffffff, 0x00001000, x5, 296, x9)

# rs1_val == 1, rs1_val > 0 and rs2_val < 0, rs2_val == -513
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xfffffdff
TEST_RR_OP(sub, x12, x10, x11, 0x202, 0x00000001, 0xfffffdff, x5, 300, x9)

# rs1_val == 4, rs2_val == -1431655766
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0xaaaaaaaa
TEST_RR_OP(sub, x12, x10, x11, 0x5555555a, 0x00000004, 0xaaaaaaaa, x5, 304, x9)

# rs1_val == 32, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xfffffff6
TEST_RR_OP(sub, x12, x10, x11, 0x2a, 0x00000020, 0xfffffff6, x5, 308, x9)

# rs1_val == 2048, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0x00000003
TEST_RR_OP(sub, x12, x10, x11, 0x7fd, 0x00000800, 0x00000003, x5, 312, x9)
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
    .fill 19*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 79*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
