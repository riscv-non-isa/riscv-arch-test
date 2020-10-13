
#This assembly file tests the mul instruction of the RISC-V M extension for the mul covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",mul)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x27, rs2==x1, rd==x8, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -2147483648, rs1_val != rs2_val, rs2_val == -1048577
# opcode: mul ; op1:x27; op2:x1; dest:x8; op1val:0x80000000;  op2val:0xffefffff
TEST_RR_OP(mul, x8, x27, x1, 0x00000000, 0x80000000, 0xffefffff, x3, 0, x17)

# rs1 == rd != rs2, rs1==x24, rs2==x10, rd==x24, rs1_val == 0, rs2_val == 16
# opcode: mul ; op1:x24; op2:x10; dest:x24; op1val:0x00000000;  op2val:0x00000010
TEST_RR_OP(mul, x24, x24, x10, 0x00000000, 0x00000000, 0x00000010, x3, 4, x17)

# rs1 == rs2 == rd, rs1==x12, rs2==x12, rd==x12, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs1_val == 2147483647
# opcode: mul ; op1:x12; op2:x12; dest:x12; op1val:0x7fffffff;  op2val:0x00000005
TEST_RR_OP(mul, x12, x12, x12, 0x00000000, 0x7fffffff, 0x00000005, x3, 8, x17)

# rs1 == rs2 != rd, rs1==x5, rs2==x5, rd==x23, rs1_val == 1, rs2_val == 268435456
# opcode: mul ; op1:x5; op2:x5; dest:x23; op1val:0x00000001;  op2val:0x10000000
TEST_RR_OP(mul, x23, x5, x5, 0x00000000, 0x00000001, 0x10000000, x3, 12, x17)

# rs2 == rd != rs1, rs1==x23, rs2==x29, rd==x29, rs2_val == (-2**(xlen-1)), rs1_val > 0 and rs2_val < 0, rs2_val == -2147483648, rs1_val == 2
# opcode: mul ; op1:x23; op2:x29; dest:x29; op1val:0x00000002;  op2val:0x80000000
TEST_RR_OP(mul, x29, x23, x29, 0x00000000, 0x00000002, 0x80000000, x3, 16, x17)

# rs1==x14, rs2==x11, rd==x0, rs2_val == 0, rs1_val == 1048576
# opcode: mul ; op1:x14; op2:x11; dest:x0; op1val:0x00100000;  op2val:0x00000000
TEST_RR_OP(mul, x0, x14, x11, 0x00000000, 0x00100000, 0x00000000, x3, 20, x17)

# rs1==x1, rs2==x4, rd==x16, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647
# opcode: mul ; op1:x1; op2:x4; dest:x16; op1val:0x00100000;  op2val:0x7fffffff
TEST_RR_OP(mul, x16, x1, x4, 0x00000000, 0x00100000, 0x7fffffff, x3, 24, x17)

# rs1==x31, rs2==x24, rd==x30, rs2_val == 1, rs1_val == -8193, rs1_val < 0 and rs2_val > 0
# opcode: mul ; op1:x31; op2:x24; dest:x30; op1val:0xffffdfff;  op2val:0x00000001
TEST_RR_OP(mul, x30, x31, x24, 0x00000000, 0xffffdfff, 0x00000001, x3, 28, x17)

# rs1==x22, rs2==x16, rd==x2, rs1_val == rs2_val, rs1_val == -524289, rs2_val == -524289
# opcode: mul ; op1:x22; op2:x16; dest:x2; op1val:0xfff7ffff;  op2val:0xfff7ffff
TEST_RR_OP(mul, x2, x22, x16, 0x00000000, 0xfff7ffff, 0xfff7ffff, x3, 32, x17)

# rs1==x15, rs2==x26, rd==x28, rs1_val == 4, rs2_val == -2049
# opcode: mul ; op1:x15; op2:x26; dest:x28; op1val:0x00000004;  op2val:0xfffff7ff
TEST_RR_OP(mul, x28, x15, x26, 0x00000000, 0x00000004, 0xfffff7ff, x3, 36, x17)

# rs1==x16, rs2==x0, rd==x5, rs1_val == 8, rs2_val == -67108865
# opcode: mul ; op1:x16; op2:x0; dest:x5; op1val:0x00000008;  op2val:0xfbffffff
TEST_RR_OP(mul, x5, x16, x0, 0x00000000, 0x00000008, 0xfbffffff, x3, 40, x17)

# rs1==x18, rs2==x20, rd==x27, rs1_val == 16, rs2_val == 256
# opcode: mul ; op1:x18; op2:x20; dest:x27; op1val:0x00000010;  op2val:0x00000100
TEST_RR_OP(mul, x27, x18, x20, 0x00000000, 0x00000010, 0x00000100, x3, 44, x17)

# rs1==x25, rs2==x8, rd==x9, rs1_val == 32, 
# opcode: mul ; op1:x25; op2:x8; dest:x9; op1val:0x00000020;  op2val:0x00000006
TEST_RR_OP(mul, x9, x25, x8, 0x00000000, 0x00000020, 0x00000006, x3, 48, x17)

# rs1==x2, rs2==x22, rd==x13, rs1_val == 64, rs2_val == -33
# opcode: mul ; op1:x2; op2:x22; dest:x13; op1val:0x00000040;  op2val:0xffffffdf
TEST_RR_OP(mul, x13, x2, x22, 0x00000000, 0x00000040, 0xffffffdf, x3, 52, x17)

# rs1==x19, rs2==x6, rd==x7, rs1_val == 128, 
# opcode: mul ; op1:x19; op2:x6; dest:x7; op1val:0x00000080;  op2val:0xfffff7ff
TEST_RR_OP(mul, x7, x19, x6, 0x00000000, 0x00000080, 0xfffff7ff, x3, 56, x17)
RVTEST_SIGBASE( x5,signature_x5_0)

# rs1==x11, rs2==x14, rd==x18, rs1_val == 256, rs2_val == 1431655765
# opcode: mul ; op1:x11; op2:x14; dest:x18; op1val:0x00000100;  op2val:0x55555555
TEST_RR_OP(mul, x18, x11, x14, 0x00000000, 0x00000100, 0x55555555, x5, 0, x12)

# rs1==x7, rs2==x13, rd==x21, rs1_val == 512, rs2_val == 2
# opcode: mul ; op1:x7; op2:x13; dest:x21; op1val:0x00000200;  op2val:0x00000002
TEST_RR_OP(mul, x21, x7, x13, 0x00000000, 0x00000200, 0x00000002, x5, 4, x12)

# rs1==x17, rs2==x28, rd==x11, rs1_val == 1024, rs2_val == 32
# opcode: mul ; op1:x17; op2:x28; dest:x11; op1val:0x00000400;  op2val:0x00000020
TEST_RR_OP(mul, x11, x17, x28, 0x00000000, 0x00000400, 0x00000020, x5, 8, x12)

# rs1==x8, rs2==x15, rd==x20, rs1_val == 2048, rs2_val == -9
# opcode: mul ; op1:x8; op2:x15; dest:x20; op1val:0x00000800;  op2val:0xfffffff7
TEST_RR_OP(mul, x20, x8, x15, 0x00000000, 0x00000800, 0xfffffff7, x5, 12, x12)

# rs1==x9, rs2==x31, rd==x4, rs1_val == 4096, rs2_val == 4194304
# opcode: mul ; op1:x9; op2:x31; dest:x4; op1val:0x00001000;  op2val:0x00400000
TEST_RR_OP(mul, x4, x9, x31, 0x00000000, 0x00001000, 0x00400000, x5, 16, x12)

# rs1==x20, rs2==x18, rd==x17, rs1_val == 8192, 
# opcode: mul ; op1:x20; op2:x18; dest:x17; op1val:0x00002000;  op2val:0x00000009
TEST_RR_OP(mul, x17, x20, x18, 0x00000000, 0x00002000, 0x00000009, x5, 20, x12)

# rs1==x21, rs2==x30, rd==x15, rs1_val == 16384, 
# opcode: mul ; op1:x21; op2:x30; dest:x15; op1val:0x00004000;  op2val:0x3fffffff
TEST_RR_OP(mul, x15, x21, x30, 0x00000000, 0x00004000, 0x3fffffff, x5, 24, x12)

# rs1==x3, rs2==x2, rd==x14, rs1_val == 32768, rs2_val == -33554433
# opcode: mul ; op1:x3; op2:x2; dest:x14; op1val:0x00008000;  op2val:0xfdffffff
TEST_RR_OP(mul, x14, x3, x2, 0x00000000, 0x00008000, 0xfdffffff, x5, 28, x12)

# rs1==x6, rs2==x25, rd==x26, rs1_val == 65536, rs2_val == 64
# opcode: mul ; op1:x6; op2:x25; dest:x26; op1val:0x00010000;  op2val:0x00000040
TEST_RR_OP(mul, x26, x6, x25, 0x00000000, 0x00010000, 0x00000040, x5, 32, x12)

# rs1==x13, rs2==x9, rd==x31, rs1_val == 131072, rs2_val == -513
# opcode: mul ; op1:x13; op2:x9; dest:x31; op1val:0x00020000;  op2val:0xfffffdff
TEST_RR_OP(mul, x31, x13, x9, 0x00000000, 0x00020000, 0xfffffdff, x5, 36, x12)

# rs1==x28, rs2==x21, rd==x6, rs1_val == 262144, 
# opcode: mul ; op1:x28; op2:x21; dest:x6; op1val:0x00040000;  op2val:0xfffffff8
TEST_RR_OP(mul, x6, x28, x21, 0x00000000, 0x00040000, 0xfffffff8, x5, 40, x12)

# rs1==x30, rs2==x23, rd==x3, rs1_val == 524288, 
# opcode: mul ; op1:x30; op2:x23; dest:x3; op1val:0x00080000;  op2val:0x00000020
TEST_RR_OP(mul, x3, x30, x23, 0x00000000, 0x00080000, 0x00000020, x5, 44, x12)

# rs1==x10, rs2==x27, rd==x22, rs1_val == 2097152, 
# opcode: mul ; op1:x10; op2:x27; dest:x22; op1val:0x00200000;  op2val:0x00000005
TEST_RR_OP(mul, x22, x10, x27, 0x00000000, 0x00200000, 0x00000005, x5, 48, x12)

# rs1==x4, rs2==x17, rd==x10, rs1_val == 4194304, rs2_val == 1073741824
# opcode: mul ; op1:x4; op2:x17; dest:x10; op1val:0x00400000;  op2val:0x40000000
TEST_RR_OP(mul, x10, x4, x17, 0x00000000, 0x00400000, 0x40000000, x5, 52, x12)

# rs1==x29, rs2==x3, rd==x25, rs1_val == 8388608, rs2_val == 512
# opcode: mul ; op1:x29; op2:x3; dest:x25; op1val:0x00800000;  op2val:0x00000200
TEST_RR_OP(mul, x25, x29, x3, 0x00000000, 0x00800000, 0x00000200, x5, 56, x12)

# rs1==x26, rs2==x19, rd==x1, rs1_val == 16777216, 
# opcode: mul ; op1:x26; op2:x19; dest:x1; op1val:0x01000000;  op2val:0x00000001
TEST_RR_OP(mul, x1, x26, x19, 0x00000000, 0x01000000, 0x00000001, x5, 60, x12)

# rs1==x0, rs2==x7, rd==x19, rs1_val == 33554432, 
# opcode: mul ; op1:x0; op2:x7; dest:x19; op1val:0x02000000;  op2val:0x00000006
TEST_RR_OP(mul, x19, x0, x7, 0x00000000, 0x02000000, 0x00000006, x5, 64, x2)

# rs1_val == 67108864, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xfffff7ff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x04000000, 0xfffff7ff, x5, 68, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1_val == 134217728, rs2_val == 8388608
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00800000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x08000000, 0x00800000, x1, 0, x2)

# rs1_val == 268435456, rs2_val == 4096
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00001000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x10000000, 0x00001000, x1, 4, x2)

# rs1_val == 536870912, rs2_val == -129
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xffffff7f
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x20000000, 0xffffff7f, x1, 8, x2)

# rs1_val == 1073741824, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x40000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x40000000, 0x40000000, x1, 12, x2)

# rs1_val == -2, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000007
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffe, 0x00000007, x1, 16, x2)

# rs1_val == -3, rs2_val == 262144
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00040000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffd, 0x00040000, x1, 20, x2)

# rs1_val == -5, rs2_val == -5
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xfffffffb
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffb, 0xfffffffb, x1, 24, x2)

# rs1_val == -9, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000006
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffff7, 0x00000006, x1, 28, x2)

# rs1_val == -17, rs2_val == -536870913
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xdfffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffffef, 0xdfffffff, x1, 32, x2)

# rs1_val == -33, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000100
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffffdf, 0x00000100, x1, 36, x2)

# rs1_val == -65, rs2_val == 8192
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00002000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffffbf, 0x00002000, x1, 40, x2)

# rs2_val == -262145, rs1_val == -257
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfffbffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffeff, 0xfffbffff, x1, 44, x2)

# rs2_val == -2097153, rs1_val == -4194305
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xffdfffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffbfffff, 0xffdfffff, x1, 48, x2)

# rs2_val == -4194305, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0xffbfffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000007, 0xffbfffff, x1, 52, x2)

# rs2_val == -8388609, rs1_val == -536870913
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xff7fffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xdfffffff, 0xff7fffff, x1, 56, x2)

# rs2_val == -16777217, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfeffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfff7ffff, 0xfeffffff, x1, 60, x2)

# rs2_val == -134217729, rs1_val == -2097153
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xf7ffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffdfffff, 0xf7ffffff, x1, 64, x2)

# rs2_val == -268435457, rs1_val == -32769
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xefffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffff7fff, 0xefffffff, x1, 68, x2)

# rs2_val == -1073741825, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0xbfffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00004000, 0xbfffffff, x1, 72, x2)

# rs2_val == -1431655766, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0xaaaaaaaa
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffffff, 0xaaaaaaaa, x1, 76, x2)

# rs1_val == -129, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xfffffdff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffff7f, 0xfffffdff, x1, 80, x2)

# rs1_val == -513, rs2_val == 16384
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00004000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffdff, 0x00004000, x1, 84, x2)

# rs1_val == -1025, rs2_val == -1025
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xfffffbff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffbff, 0xfffffbff, x1, 88, x2)

# rs1_val == -2049, rs2_val == 65536
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00010000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffff7ff, 0x00010000, x1, 92, x2)

# rs1_val == -4097, rs2_val == -65
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xffffffbf
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffefff, 0xffffffbf, x1, 96, x2)

# rs1_val == -16385, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x80000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffbfff, 0x80000000, x1, 100, x2)

# rs1_val == -65537, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00040000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffeffff, 0x00040000, x1, 104, x2)

# rs1_val == -131073, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xfffffff6
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffdffff, 0xfffffff6, x1, 108, x2)

# rs1_val == -262145, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000006
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffbffff, 0x00000006, x1, 112, x2)

# rs1_val == -1048577, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfbffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffefffff, 0xfbffffff, x1, 116, x2)

# rs1_val == -8388609, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000010
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xff7fffff, 0x00000010, x1, 120, x2)

# rs1_val == -16777217, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xffdfffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfeffffff, 0xffdfffff, x1, 124, x2)

# rs1_val == -33554433, rs2_val == 16777216
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x01000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfdffffff, 0x01000000, x1, 128, x2)

# rs1_val == -67108865, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffefffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfbffffff, 0xffefffff, x1, 132, x2)

# rs1_val == -134217729, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xfdffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xf7ffffff, 0xfdffffff, x1, 136, x2)

# rs1_val == -268435457, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00400000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xefffffff, 0x00400000, x1, 140, x2)

# rs1_val == -1073741825, rs2_val == 1024
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000400
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xbfffffff, 0x00000400, x1, 144, x2)

# rs1_val == 1431655765, rs2_val == -131073
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xfffdffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x55555555, 0xfffdffff, x1, 148, x2)

# rs1_val == -1431655766, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xfffffffc
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0xfffffffc, x1, 152, x2)

# rs2_val == 4, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000004
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffefffff, 0x00000004, x1, 156, x2)

# rs2_val == 8, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000008
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x08000000, 0x00000008, x1, 160, x2)

# rs2_val == 128, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000080
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffdff, 0x00000080, x1, 164, x2)

# rs2_val == 2048, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000800
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffbffff, 0x00000800, x1, 168, x2)

# rs2_val == 32768, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00008000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffd, 0x00008000, x1, 172, x2)

# rs2_val == 131072, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00020000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffefff, 0x00020000, x1, 176, x2)

# rs2_val == 524288, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0x00080000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffff9, 0x00080000, x1, 180, x2)

# rs2_val == 1048576, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00100000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffdfff, 0x00100000, x1, 184, x2)

# rs2_val == 2097152, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x00200000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00080000, 0x00200000, x1, 188, x2)

# rs2_val == 33554432, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x02000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000002, 0x02000000, x1, 192, x2)

# rs2_val == 67108864, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0x04000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000009, 0x04000000, x1, 196, x2)

# rs2_val == 134217728, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0x08000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000006, 0x08000000, x1, 200, x2)

# rs2_val == 536870912, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x20000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffbfffff, 0x20000000, x1, 204, x2)

# rs2_val == -2, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfffffffe
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffd, 0xfffffffe, x1, 208, x2)

# rs2_val == -3, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfffffffd
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffefffff, 0xfffffffd, x1, 212, x2)

# rs2_val == -17, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xffffffef
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000020, 0xffffffef, x1, 216, x2)

# rs2_val == -257, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffffeff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffff7, 0xfffffeff, x1, 220, x2)

# rs2_val == -4097, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xffffefff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xdfffffff, 0xffffefff, x1, 224, x2)

# rs2_val == -8193, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0xffffdfff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000006, 0xffffdfff, x1, 228, x2)

# rs2_val == -16385, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0xffffbfff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000200, 0xffffbfff, x1, 232, x2)

# rs2_val == -32769, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xffff7fff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xefffffff, 0xffff7fff, x1, 236, x2)

# rs2_val == -65537, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0xfffeffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000006, 0xfffeffff, x1, 240, x2)

# rs1_val == 0, rs2_val == 16
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00000010
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000000, 0x00000010, x1, 244, x2)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs1_val == 2147483647
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000005
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x7fffffff, 0x00000005, x1, 248, x2)

# rs1_val == 1, rs2_val == 268435456
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x10000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000001, 0x10000000, x1, 252, x2)

# rs2_val == (-2**(xlen-1)), rs1_val > 0 and rs2_val < 0, rs2_val == -2147483648, rs1_val == 2
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x80000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000002, 0x80000000, x1, 256, x2)

# rs2_val == 0, rs1_val == 1048576
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x00000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00100000, 0x00000000, x1, 260, x2)

# rs1_val == 8, rs2_val == -67108865
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xfbffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000008, 0xfbffffff, x1, 264, x2)

# rs1_val == 33554432, 
# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00000006
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x02000000, 0x00000006, x1, 268, x2)
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
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 68*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
