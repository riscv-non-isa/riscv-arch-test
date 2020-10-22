
#This assembly file tests the sub instruction of the RISC-V I extension for the sub covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sub)

RVTEST_SIGBASE( x18,signature_x18_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x15, rs2==x27, rd==x2, rs1_val == (-2**(xlen-1)), rs2_val == 8388608, rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: sub ; op1:x15; op2:x27; dest:x2; op1val:0x80000000;  op2val:0x00800000
TEST_RR_OP(sub, x2, x15, x27, 0x7f800000, 0x80000000, 0x00800000, x18, 0, x5)

# rs1 == rd != rs2, rs1==x12, rs2==x11, rd==x12, rs1_val == 0, rs2_val == -1025
# opcode: sub ; op1:x12; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffffbff
TEST_RR_OP(sub, x12, x12, x11, 0x401, 0x00000000, 0xfffffbff, x18, 4, x5)

# rs1 == rs2 != rd, rs1==x0, rs2==x0, rd==x9, rs1_val == (2**(xlen-1)-1), rs2_val == -262145, rs1_val > 0 and rs2_val < 0, rs1_val == 2147483647
# opcode: sub ; op1:x0; op2:x0; dest:x9; op1val:0x7fffffff;  op2val:0xfffbffff
TEST_RR_OP(sub, x9, x0, x0, 0x80040000, 0x7fffffff, 0xfffbffff, x18, 8, x5)

# rs2 == rd != rs1, rs1==x27, rs2==x22, rd==x22, rs1_val == 1, rs1_val > 0 and rs2_val > 0
# opcode: sub ; op1:x27; op2:x22; dest:x22; op1val:0x00000001;  op2val:0x00800000
TEST_RR_OP(sub, x22, x27, x22, 0xff800001, 0x00000001, 0x00800000, x18, 12, x5)

# rs1 == rs2 == rd, rs1==x13, rs2==x13, rd==x13, rs2_val == (-2**(xlen-1)), rs1_val == 32768, rs2_val == -2147483648
# opcode: sub ; op1:x13; op2:x13; dest:x13; op1val:0x00008000;  op2val:0x80000000
TEST_RR_OP(sub, x13, x13, x13, 0x80008000, 0x00008000, 0x80000000, x18, 16, x5)

# rs1==x31, rs2==x19, rd==x23, rs2_val == 0, rs1_val == 32
# opcode: sub ; op1:x31; op2:x19; dest:x23; op1val:0x00000020;  op2val:0x00000000
TEST_RR_OP(sub, x23, x31, x19, 0x20, 0x00000020, 0x00000000, x18, 20, x5)

# rs1==x17, rs2==x24, rd==x28, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647, rs1_val == -67108865
# opcode: sub ; op1:x17; op2:x24; dest:x28; op1val:0xfbffffff;  op2val:0x7fffffff
TEST_RR_OP(sub, x28, x17, x24, 0x7c000000, 0xfbffffff, 0x7fffffff, x18, 24, x5)

# rs1==x7, rs2==x29, rd==x20, rs2_val == 1, rs1_val == 8192
# opcode: sub ; op1:x7; op2:x29; dest:x20; op1val:0x00002000;  op2val:0x00000001
TEST_RR_OP(sub, x20, x7, x29, 0x1fff, 0x00002000, 0x00000001, x18, 28, x5)

# rs1==x6, rs2==x31, rd==x26, rs1_val < 0 and rs2_val < 0, rs2_val == -4194305, rs1_val == -262145
# opcode: sub ; op1:x6; op2:x31; dest:x26; op1val:0xfffbffff;  op2val:0xffbfffff
TEST_RR_OP(sub, x26, x6, x31, 0x3c0000, 0xfffbffff, 0xffbfffff, x18, 32, x5)

# rs1==x28, rs2==x8, rd==x1, rs1_val == rs2_val, rs1_val == -1431655766, rs2_val == -1431655766
# opcode: sub ; op1:x28; op2:x8; dest:x1; op1val:0xaaaaaaaa;  op2val:0xaaaaaaaa
TEST_RR_OP(sub, x1, x28, x8, 0x0, 0xaaaaaaaa, 0xaaaaaaaa, x18, 36, x5)

# rs1==x23, rs2==x26, rd==x16, rs1_val == 2, rs2_val == -536870913
# opcode: sub ; op1:x23; op2:x26; dest:x16; op1val:0x00000002;  op2val:0xdfffffff
TEST_RR_OP(sub, x16, x23, x26, 0x20000003, 0x00000002, 0xdfffffff, x18, 40, x5)

# rs1==x21, rs2==x2, rd==x4, rs1_val == 4, rs2_val == 131072
# opcode: sub ; op1:x21; op2:x2; dest:x4; op1val:0x00000004;  op2val:0x00020000
TEST_RR_OP(sub, x4, x21, x2, 0xfffe0004, 0x00000004, 0x00020000, x18, 44, x5)

# rs1==x29, rs2==x4, rd==x15, rs1_val == 8, rs2_val == -16777217
# opcode: sub ; op1:x29; op2:x4; dest:x15; op1val:0x00000008;  op2val:0xfeffffff
TEST_RR_OP(sub, x15, x29, x4, 0x1000009, 0x00000008, 0xfeffffff, x18, 48, x5)

# rs1==x3, rs2==x21, rd==x17, rs1_val == 16, rs2_val == 128
# opcode: sub ; op1:x3; op2:x21; dest:x17; op1val:0x00000010;  op2val:0x00000080
TEST_RR_OP(sub, x17, x3, x21, 0xffffff90, 0x00000010, 0x00000080, x18, 52, x5)

# rs1==x24, rs2==x12, rd==x31, rs1_val == 64, rs2_val == -513
# opcode: sub ; op1:x24; op2:x12; dest:x31; op1val:0x00000040;  op2val:0xfffffdff
TEST_RR_OP(sub, x31, x24, x12, 0x241, 0x00000040, 0xfffffdff, x18, 56, x5)

# rs1==x8, rs2==x23, rd==x14, rs1_val == 128, rs2_val == -1048577
# opcode: sub ; op1:x8; op2:x23; dest:x14; op1val:0x00000080;  op2val:0xffefffff
TEST_RR_OP(sub, x14, x8, x23, 0x100081, 0x00000080, 0xffefffff, x18, 60, x5)

# rs1==x14, rs2==x28, rd==x7, rs1_val == 256, 
# opcode: sub ; op1:x14; op2:x28; dest:x7; op1val:0x00000100;  op2val:0xffefffff
TEST_RR_OP(sub, x7, x14, x28, 0x100101, 0x00000100, 0xffefffff, x18, 64, x5)

# rs1==x16, rs2==x30, rd==x0, rs1_val == 512, rs2_val == 8192
# opcode: sub ; op1:x16; op2:x30; dest:x0; op1val:0x00000200;  op2val:0x00002000
TEST_RR_OP(sub, x0, x16, x30, 0xffffe200, 0x00000200, 0x00002000, x18, 68, x5)

# rs1==x9, rs2==x16, rd==x30, rs1_val == 1024, rs2_val == 4096
# opcode: sub ; op1:x9; op2:x16; dest:x30; op1val:0x00000400;  op2val:0x00001000
TEST_RR_OP(sub, x30, x9, x16, 0xfffff400, 0x00000400, 0x00001000, x18, 72, x12)

# rs1==x26, rs2==x3, rd==x21, rs1_val == 2048, rs2_val == -1073741825
# opcode: sub ; op1:x26; op2:x3; dest:x21; op1val:0x00000800;  op2val:0xbfffffff
TEST_RR_OP(sub, x21, x26, x3, 0x40000801, 0x00000800, 0xbfffffff, x18, 76, x12)

# rs1==x20, rs2==x10, rd==x5, rs1_val == 4096, 
# opcode: sub ; op1:x20; op2:x10; dest:x5; op1val:0x00001000;  op2val:0x00000000
TEST_RR_OP(sub, x5, x20, x10, 0x1000, 0x00001000, 0x00000000, x18, 80, x12)
RVTEST_SIGBASE( x13,signature_x13_0)

# rs1==x4, rs2==x14, rd==x10, rs1_val == 16384, rs2_val == -32769
# opcode: sub ; op1:x4; op2:x14; dest:x10; op1val:0x00004000;  op2val:0xffff7fff
TEST_RR_OP(sub, x10, x4, x14, 0xc001, 0x00004000, 0xffff7fff, x13, 0, x12)

# rs1==x5, rs2==x15, rd==x27, rs1_val == 65536, 
# opcode: sub ; op1:x5; op2:x15; dest:x27; op1val:0x00010000;  op2val:0x00000001
TEST_RR_OP(sub, x27, x5, x15, 0xffff, 0x00010000, 0x00000001, x13, 4, x12)

# rs1==x22, rs2==x18, rd==x29, rs1_val == 131072, rs2_val == 65536
# opcode: sub ; op1:x22; op2:x18; dest:x29; op1val:0x00020000;  op2val:0x00010000
TEST_RR_OP(sub, x29, x22, x18, 0x10000, 0x00020000, 0x00010000, x13, 8, x12)

# rs1==x1, rs2==x6, rd==x24, rs1_val == 262144, 
# opcode: sub ; op1:x1; op2:x6; dest:x24; op1val:0x00040000;  op2val:0xffffffff
TEST_RR_OP(sub, x24, x1, x6, 0x40001, 0x00040000, 0xffffffff, x13, 12, x12)

# rs1==x2, rs2==x5, rd==x18, rs1_val == 524288, rs2_val == -8388609
# opcode: sub ; op1:x2; op2:x5; dest:x18; op1val:0x00080000;  op2val:0xff7fffff
TEST_RR_OP(sub, x18, x2, x5, 0x880001, 0x00080000, 0xff7fffff, x13, 16, x12)

# rs1==x30, rs2==x20, rd==x19, rs1_val == 1048576, rs2_val == -4097
# opcode: sub ; op1:x30; op2:x20; dest:x19; op1val:0x00100000;  op2val:0xffffefff
TEST_RR_OP(sub, x19, x30, x20, 0x101001, 0x00100000, 0xffffefff, x13, 20, x12)

# rs1==x10, rs2==x25, rd==x6, rs1_val == 2097152, rs2_val == 16384
# opcode: sub ; op1:x10; op2:x25; dest:x6; op1val:0x00200000;  op2val:0x00004000
TEST_RR_OP(sub, x6, x10, x25, 0x1fc000, 0x00200000, 0x00004000, x13, 24, x12)

# rs1==x25, rs2==x7, rd==x3, rs1_val == 4194304, rs2_val == 33554432
# opcode: sub ; op1:x25; op2:x7; dest:x3; op1val:0x00400000;  op2val:0x02000000
TEST_RR_OP(sub, x3, x25, x7, 0xfe400000, 0x00400000, 0x02000000, x13, 28, x12)

# rs1==x19, rs2==x1, rd==x8, rs1_val == 8388608, rs2_val == 1024
# opcode: sub ; op1:x19; op2:x1; dest:x8; op1val:0x00800000;  op2val:0x00000400
TEST_RR_OP(sub, x8, x19, x1, 0x7ffc00, 0x00800000, 0x00000400, x13, 32, x12)

# rs1==x18, rs2==x9, rd==x25, rs1_val == 16777216, rs2_val == 1073741824
# opcode: sub ; op1:x18; op2:x9; dest:x25; op1val:0x01000000;  op2val:0x40000000
TEST_RR_OP(sub, x25, x18, x9, 0xc1000000, 0x01000000, 0x40000000, x13, 36, x12)

# rs1==x11, rs1_val == 33554432, rs2_val == 16
# opcode: sub ; op1:x11; op2:x25; dest:x22; op1val:0x02000000;  op2val:0x00000010
TEST_RR_OP(sub, x22, x11, x25, 0x1fffff0, 0x02000000, 0x00000010, x13, 40, x12)

# rs2==x17, rs1_val == 67108864, 
# opcode: sub ; op1:x4; op2:x17; dest:x28; op1val:0x04000000;  op2val:0xaaaaaaaa
TEST_RR_OP(sub, x28, x4, x17, 0x59555556, 0x04000000, 0xaaaaaaaa, x13, 44, x12)

# rd==x11, rs1_val == 134217728, 
# opcode: sub ; op1:x21; op2:x30; dest:x11; op1val:0x08000000;  op2val:0xfffffffc
TEST_RR_OP(sub, x11, x21, x30, 0x8000004, 0x08000000, 0xfffffffc, x13, 48, x1)

# rs1_val == 268435456, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000080
TEST_RR_OP(sub, x12, x10, x11, 0xfffff80, 0x10000000, 0x00000080, x13, 52, x1)

# rs1_val == 536870912, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000005
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffffb, 0x20000000, 0x00000005, x13, 56, x1)

# rs1_val == 1073741824, rs2_val == 512
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000200
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffe00, 0x40000000, 0x00000200, x13, 60, x1)

# rs1_val == -2, rs2_val == -129
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xffffff7f
TEST_RR_OP(sub, x12, x10, x11, 0x7f, 0xfffffffe, 0xffffff7f, x13, 64, x1)

# rs1_val == -3, rs2_val == 67108864
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x04000000
TEST_RR_OP(sub, x12, x10, x11, 0xfbfffffd, 0xfffffffd, 0x04000000, x13, 68, x1)

# rs1_val == -5, rs2_val == 256
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000100
TEST_RR_OP(sub, x12, x10, x11, 0xfffffefb, 0xfffffffb, 0x00000100, x13, 72, x1)

# rs1_val == -9, rs2_val == 1048576
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00100000
TEST_RR_OP(sub, x12, x10, x11, 0xffeffff7, 0xfffffff7, 0x00100000, x13, 76, x1)

# rs2_val == -524289, rs1_val == -131073
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xfff7ffff
TEST_RR_OP(sub, x12, x10, x11, 0x60000, 0xfffdffff, 0xfff7ffff, x13, 80, x1)

# rs2_val == -2097153, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xffdfffff
TEST_RR_OP(sub, x12, x10, x11, 0x400001, 0x00200000, 0xffdfffff, x13, 84, x1)

# rs2_val == -33554433, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfdffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffff8, 0xfffffff7, 0xfdffffff, x13, 88, x1)

# rs2_val == -67108865, rs1_val == -8388609
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xfbffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3800000, 0xff7fffff, 0xfbffffff, x13, 92, x1)

# rs2_val == -134217729, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0xf7ffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fffff9, 0xfffffff8, 0xf7ffffff, x13, 96, x1)

# rs2_val == -268435457, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff6;  op2val:0xefffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffff7, 0xfffffff6, 0xefffffff, x13, 100, x1)

# rs2_val == 1431655765, rs1_val == -1025
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x55555555
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaa6aa, 0xfffffbff, 0x55555555, x13, 104, x1)

# rs1_val == -17, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00001000
TEST_RR_OP(sub, x12, x10, x11, 0xffffefef, 0xffffffef, 0x00001000, x13, 108, x1)

# rs1_val == -33, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000080
TEST_RR_OP(sub, x12, x10, x11, 0xffffff5f, 0xffffffdf, 0x00000080, x13, 112, x1)

# rs1_val == -65, rs2_val == 64
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000040
TEST_RR_OP(sub, x12, x10, x11, 0xffffff7f, 0xffffffbf, 0x00000040, x13, 116, x1)

# rs1_val == -129, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xfffbffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ff80, 0xffffff7f, 0xfffbffff, x13, 120, x1)

# rs1_val == -257, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xffbfffff
TEST_RR_OP(sub, x12, x10, x11, 0x3fff00, 0xfffffeff, 0xffbfffff, x13, 124, x1)

# rs1_val == -513, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xfffffffc
TEST_RR_OP(sub, x12, x10, x11, 0xfffffe03, 0xfffffdff, 0xfffffffc, x13, 128, x1)

# rs1_val == -2049, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xff7fffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ff800, 0xfffff7ff, 0xff7fffff, x13, 132, x1)

# rs1_val == -4097, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffbffff
TEST_RR_OP(sub, x12, x10, x11, 0x3f000, 0xffffefff, 0xfffbffff, x13, 136, x1)

# rs1_val == -8193, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xefffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffe000, 0xffffdfff, 0xefffffff, x13, 140, x1)

# rs1_val == -16385, rs2_val == 2048
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000800
TEST_RR_OP(sub, x12, x10, x11, 0xffffb7ff, 0xffffbfff, 0x00000800, x13, 144, x1)

# rs1_val == -32769, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x40000000
TEST_RR_OP(sub, x12, x10, x11, 0xbfff7fff, 0xffff7fff, 0x40000000, x13, 148, x1)

# rs1_val == -65537, rs2_val == -65537
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xfffeffff
TEST_RR_OP(sub, x12, x10, x11, 0x0, 0xfffeffff, 0xfffeffff, x13, 152, x1)

# rs1_val == -524289, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000400
TEST_RR_OP(sub, x12, x10, x11, 0xfff7fbff, 0xfff7ffff, 0x00000400, x13, 156, x1)

# rs1_val == -1048577, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00020000
TEST_RR_OP(sub, x12, x10, x11, 0xffedffff, 0xffefffff, 0x00020000, x13, 160, x1)

# rs1_val == -2097153, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000200
TEST_RR_OP(sub, x12, x10, x11, 0xffdffdff, 0xffdfffff, 0x00000200, x13, 164, x1)

# rs1_val == -4194305, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xfffffbff
TEST_RR_OP(sub, x12, x10, x11, 0xffc00400, 0xffbfffff, 0xfffffbff, x13, 168, x1)

# rs1_val == -16777217, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x7fffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7f000000, 0xfeffffff, 0x7fffffff, x13, 172, x1)

# rs1_val == -33554433, rs2_val == -17
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xffffffef
TEST_RR_OP(sub, x12, x10, x11, 0xfe000010, 0xfdffffff, 0xffffffef, x13, 176, x1)

# rs1_val == -134217729, rs2_val == 134217728
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x08000000
TEST_RR_OP(sub, x12, x10, x11, 0xefffffff, 0xf7ffffff, 0x08000000, x13, 180, x1)

# rs1_val == -268435457, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x3fffffff
TEST_RR_OP(sub, x12, x10, x11, 0xb0000000, 0xefffffff, 0x3fffffff, x13, 184, x1)

# rs1_val == -536870913, rs2_val == -3
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xfffffffd
TEST_RR_OP(sub, x12, x10, x11, 0xe0000002, 0xdfffffff, 0xfffffffd, x13, 188, x1)

# rs1_val == -1073741825, rs2_val == 536870912
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x20000000
TEST_RR_OP(sub, x12, x10, x11, 0x9fffffff, 0xbfffffff, 0x20000000, x13, 192, x1)

# rs1_val == 1431655765, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000001
TEST_RR_OP(sub, x12, x10, x11, 0x55555554, 0x55555555, 0x00000001, x13, 196, x1)

# rs2_val == 2, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000002
TEST_RR_OP(sub, x12, x10, x11, 0xfffbfffd, 0xfffbffff, 0x00000002, x13, 200, x1)

# rs2_val == 4, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00000004
TEST_RR_OP(sub, x12, x10, x11, 0xffffffff, 0x00000003, 0x00000004, x13, 204, x1)

# rs2_val == 8, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000008
TEST_RR_OP(sub, x12, x10, x11, 0x7ffff8, 0x00800000, 0x00000008, x13, 208, x1)

# rs2_val == 32, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00000020
TEST_RR_OP(sub, x12, x10, x11, 0xffffffe3, 0x00000003, 0x00000020, x13, 212, x1)

# rs2_val == 32768, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00008000
TEST_RR_OP(sub, x12, x10, x11, 0xffdf7fff, 0xffdfffff, 0x00008000, x13, 216, x1)

# rs2_val == 262144, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00040000
TEST_RR_OP(sub, x12, x10, x11, 0xfffbfffe, 0xfffffffe, 0x00040000, x13, 220, x1)

# rs2_val == 524288, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x00080000
TEST_RR_OP(sub, x12, x10, x11, 0xfff81000, 0x00001000, 0x00080000, x13, 224, x1)

# rs2_val == 2097152, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00200000
TEST_RR_OP(sub, x12, x10, x11, 0x7e00000, 0x08000000, 0x00200000, x13, 228, x1)

# rs2_val == 4194304, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00400000
TEST_RR_OP(sub, x12, x10, x11, 0xffbbffff, 0xfffbffff, 0x00400000, x13, 232, x1)

# rs2_val == 16777216, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x01000000
TEST_RR_OP(sub, x12, x10, x11, 0xf000000, 0x10000000, 0x01000000, x13, 236, x1)

# rs2_val == 268435456, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x10000000
TEST_RR_OP(sub, x12, x10, x11, 0xe7ffffff, 0xf7ffffff, 0x10000000, x13, 240, x1)

# rs2_val == -2, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xfffffffe
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffe, 0xfffffffc, 0xfffffffe, x13, 244, x1)

# rs2_val == -5, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xfffffffb
TEST_RR_OP(sub, x12, x10, x11, 0xd, 0x00000008, 0xfffffffb, x13, 248, x1)

# rs2_val == -9, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0xfffffff7
TEST_RR_OP(sub, x12, x10, x11, 0x100009, 0x00100000, 0xfffffff7, x13, 252, x1)

# rs2_val == -33, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0xffffffdf
TEST_RR_OP(sub, x12, x10, x11, 0x20, 0xffffffff, 0xffffffdf, x13, 256, x1)

# rs2_val == -65, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xffffffbf
TEST_RR_OP(sub, x12, x10, x11, 0x4000041, 0x04000000, 0xffffffbf, x13, 260, x1)

# rs2_val == -257, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xfffffeff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffd00, 0xfffffbff, 0xfffffeff, x13, 264, x1)

# rs2_val == -2049, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xfffff7ff
TEST_RR_OP(sub, x12, x10, x11, 0x1000801, 0x01000000, 0xfffff7ff, x13, 268, x1)

# rs2_val == -8193, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0xffffdfff
TEST_RR_OP(sub, x12, x10, x11, 0x2003, 0x00000002, 0xffffdfff, x13, 272, x1)

# rs2_val == -16385, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xffffbfff
TEST_RR_OP(sub, x12, x10, x11, 0xffffc000, 0xffff7fff, 0xffffbfff, x13, 276, x1)

# rs2_val == -131073, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffdffff
TEST_RR_OP(sub, x12, x10, x11, 0xffe20000, 0xffdfffff, 0xfffdffff, x13, 280, x1)

# rs1_val == 0, rs2_val == -1025
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffffbff
TEST_RR_OP(sub, x12, x10, x11, 0x401, 0x00000000, 0xfffffbff, x13, 284, x1)

# rs1_val == (2**(xlen-1)-1), rs2_val == -262145, rs1_val > 0 and rs2_val < 0, rs1_val == 2147483647
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xfffbffff
TEST_RR_OP(sub, x12, x10, x11, 0x80040000, 0x7fffffff, 0xfffbffff, x13, 288, x1)

# rs1_val == 1, rs1_val > 0 and rs2_val > 0
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00800000
TEST_RR_OP(sub, x12, x10, x11, 0xff800001, 0x00000001, 0x00800000, x13, 292, x1)

# rs2_val == (-2**(xlen-1)), rs1_val == 32768, rs2_val == -2147483648
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0x80000000
TEST_RR_OP(sub, x12, x10, x11, 0x80008000, 0x00008000, 0x80000000, x13, 296, x1)

# rs1_val == 512, rs2_val == 8192
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x00002000
TEST_RR_OP(sub, x12, x10, x11, 0xffffe200, 0x00000200, 0x00002000, x13, 300, x1)
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

signature_x18_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x18_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x13_0:
    .fill 76*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
