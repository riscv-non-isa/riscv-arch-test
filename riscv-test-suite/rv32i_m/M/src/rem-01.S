
#This assembly file tests the rem instruction of the RISC-V M extension for the rem covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",rem)

RVTEST_SIGBASE( x6,signature_x6_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x13, rs2==x10, rd==x18, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val, rs2_val == 16777216
# opcode: rem ; op1:x13; op2:x10; dest:x18; op1val:0x80000000;  op2val:0x01000000
TEST_RR_OP(rem, x18, x13, x10, 0x00000000, 0x80000000, 0x01000000, x6, 0, x9)

# rs1 == rd != rs2, rs1==x31, rs2==x18, rd==x31, rs1_val == 0, rs2_val == 8
# opcode: rem ; op1:x31; op2:x18; dest:x31; op1val:0x00000000;  op2val:0x00000008
TEST_RR_OP(rem, x31, x31, x18, 0x00000000, 0x00000000, 0x00000008, x6, 4, x9)

# rs1 == rs2 == rd, rs1==x15, rs2==x15, rd==x15, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs1_val == 2147483647, rs2_val == -2049
# opcode: rem ; op1:x15; op2:x15; dest:x15; op1val:0x7fffffff;  op2val:0xfffff7ff
TEST_RR_OP(rem, x15, x15, x15, 0x00000000, 0x7fffffff, 0xfffff7ff, x6, 8, x9)

# rs1 == rs2 != rd, rs1==x4, rs2==x4, rd==x26, rs1_val == 1, rs2_val == -131073
# opcode: rem ; op1:x4; op2:x4; dest:x26; op1val:0x00000001;  op2val:0xfffdffff
TEST_RR_OP(rem, x26, x4, x4, 0x00000000, 0x00000001, 0xfffdffff, x6, 12, x9)

# rs2 == rd != rs1, rs1==x27, rs2==x23, rd==x23, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648, rs1_val == 2
# opcode: rem ; op1:x27; op2:x23; dest:x23; op1val:0x00000002;  op2val:0x80000000
TEST_RR_OP(rem, x23, x27, x23, 0x00000000, 0x00000002, 0x80000000, x6, 16, x9)

# rs1==x26, rs2==x20, rd==x4, rs2_val == 0, rs1_val == -33
# opcode: rem ; op1:x26; op2:x20; dest:x4; op1val:0xffffffdf;  op2val:0x00000000
TEST_RR_OP(rem, x4, x26, x20, 0x00000000, 0xffffffdf, 0x00000000, x6, 20, x9)

# rs1==x28, rs2==x19, rd==x16, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647, rs1_val == -5
# opcode: rem ; op1:x28; op2:x19; dest:x16; op1val:0xfffffffb;  op2val:0x7fffffff
TEST_RR_OP(rem, x16, x28, x19, 0x00000000, 0xfffffffb, 0x7fffffff, x6, 24, x9)

# rs1==x11, rs2==x29, rd==x5, rs2_val == 1, rs1_val > 0 and rs2_val > 0, rs1_val == 64
# opcode: rem ; op1:x11; op2:x29; dest:x5; op1val:0x00000040;  op2val:0x00000001
TEST_RR_OP(rem, x5, x11, x29, 0x00000000, 0x00000040, 0x00000001, x6, 28, x9)

# rs1==x24, rs2==x27, rd==x30, rs1_val < 0 and rs2_val < 0, rs1_val == -129, rs2_val == -33554433
# opcode: rem ; op1:x24; op2:x27; dest:x30; op1val:0xffffff7f;  op2val:0xfdffffff
TEST_RR_OP(rem, x30, x24, x27, 0x00000000, 0xffffff7f, 0xfdffffff, x6, 32, x9)

# rs1==x16, rs2==x22, rd==x8, rs1_val == rs2_val, rs1_val == -9, rs2_val == -9
# opcode: rem ; op1:x16; op2:x22; dest:x8; op1val:0xfffffff7;  op2val:0xfffffff7
TEST_RR_OP(rem, x8, x16, x22, 0x00000000, 0xfffffff7, 0xfffffff7, x6, 36, x9)

# rs1==x2, rs2==x26, rd==x10, rs1_val == 4, rs2_val == 524288
# opcode: rem ; op1:x2; op2:x26; dest:x10; op1val:0x00000004;  op2val:0x00080000
TEST_RR_OP(rem, x10, x2, x26, 0x00000000, 0x00000004, 0x00080000, x6, 40, x9)

# rs1==x8, rs2==x24, rd==x25, rs1_val == 8, 
# opcode: rem ; op1:x8; op2:x24; dest:x25; op1val:0x00000008;  op2val:0x00000008
TEST_RR_OP(rem, x25, x8, x24, 0x00000000, 0x00000008, 0x00000008, x6, 44, x9)

# rs1==x3, rs2==x7, rd==x1, rs1_val == 16, rs2_val == 65536
# opcode: rem ; op1:x3; op2:x7; dest:x1; op1val:0x00000010;  op2val:0x00010000
TEST_RR_OP(rem, x1, x3, x7, 0x00000000, 0x00000010, 0x00010000, x6, 48, x9)

# rs1==x0, rs2==x17, rd==x28, rs1_val == 32, 
# opcode: rem ; op1:x0; op2:x17; dest:x28; op1val:0x00000020;  op2val:0xfffffff9
TEST_RR_OP(rem, x28, x0, x17, 0x00000000, 0x00000020, 0xfffffff9, x6, 52, x9)

# rs1==x21, rs2==x5, rd==x14, rs1_val == 128, 
# opcode: rem ; op1:x21; op2:x5; dest:x14; op1val:0x00000080;  op2val:0x00000001
TEST_RR_OP(rem, x14, x21, x5, 0x00000000, 0x00000080, 0x00000001, x6, 56, x9)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x5, rs2==x1, rd==x19, rs1_val == 256, rs2_val == -513
# opcode: rem ; op1:x5; op2:x1; dest:x19; op1val:0x00000100;  op2val:0xfffffdff
TEST_RR_OP(rem, x19, x5, x1, 0x00000000, 0x00000100, 0xfffffdff, x4, 0, x9)

# rs1==x17, rs2==x12, rd==x11, rs1_val == 512, 
# opcode: rem ; op1:x17; op2:x12; dest:x11; op1val:0x00000200;  op2val:0xfffffffc
TEST_RR_OP(rem, x11, x17, x12, 0x00000000, 0x00000200, 0xfffffffc, x4, 4, x9)

# rs1==x23, rs2==x16, rd==x6, rs1_val == 1024, rs2_val == 16384
# opcode: rem ; op1:x23; op2:x16; dest:x6; op1val:0x00000400;  op2val:0x00004000
TEST_RR_OP(rem, x6, x23, x16, 0x00000000, 0x00000400, 0x00004000, x4, 8, x9)

# rs1==x18, rs2==x21, rd==x2, rs1_val == 2048, rs2_val == 8388608
# opcode: rem ; op1:x18; op2:x21; dest:x2; op1val:0x00000800;  op2val:0x00800000
TEST_RR_OP(rem, x2, x18, x21, 0x00000000, 0x00000800, 0x00800000, x4, 12, x9)

# rs1==x20, rs2==x28, rd==x17, rs1_val == 4096, rs2_val == -67108865
# opcode: rem ; op1:x20; op2:x28; dest:x17; op1val:0x00001000;  op2val:0xfbffffff
TEST_RR_OP(rem, x17, x20, x28, 0x00000000, 0x00001000, 0xfbffffff, x4, 16, x9)

# rs1==x29, rs2==x3, rd==x12, rs1_val == 8192, rs2_val == -262145
# opcode: rem ; op1:x29; op2:x3; dest:x12; op1val:0x00002000;  op2val:0xfffbffff
TEST_RR_OP(rem, x12, x29, x3, 0x00000000, 0x00002000, 0xfffbffff, x4, 20, x9)

# rs1==x14, rs2==x13, rd==x29, rs1_val == 16384, rs2_val == 4
# opcode: rem ; op1:x14; op2:x13; dest:x29; op1val:0x00004000;  op2val:0x00000004
TEST_RR_OP(rem, x29, x14, x13, 0x00000000, 0x00004000, 0x00000004, x4, 24, x9)

# rs1==x10, rs2==x30, rd==x21, rs1_val == 32768, 
# opcode: rem ; op1:x10; op2:x30; dest:x21; op1val:0x00008000;  op2val:0xfffffff6
TEST_RR_OP(rem, x21, x10, x30, 0x00000000, 0x00008000, 0xfffffff6, x4, 28, x9)

# rs1==x19, rs2==x0, rd==x27, rs1_val == 65536, rs2_val == -4097
# opcode: rem ; op1:x19; op2:x0; dest:x27; op1val:0x00010000;  op2val:0xffffefff
TEST_RR_OP(rem, x27, x19, x0, 0x00000000, 0x00010000, 0xffffefff, x4, 32, x9)

# rs1==x1, rs2==x11, rd==x24, rs1_val == 131072, rs2_val == 128
# opcode: rem ; op1:x1; op2:x11; dest:x24; op1val:0x00020000;  op2val:0x00000080
TEST_RR_OP(rem, x24, x1, x11, 0x00000000, 0x00020000, 0x00000080, x4, 36, x9)

# rs1==x7, rs2==x14, rd==x3, rs1_val == 262144, 
# opcode: rem ; op1:x7; op2:x14; dest:x3; op1val:0x00040000;  op2val:0xfffff7ff
TEST_RR_OP(rem, x3, x7, x14, 0x00000000, 0x00040000, 0xfffff7ff, x4, 40, x9)

# rs1==x6, rs2==x25, rd==x20, rs1_val == 524288, rs2_val == 134217728
# opcode: rem ; op1:x6; op2:x25; dest:x20; op1val:0x00080000;  op2val:0x08000000
TEST_RR_OP(rem, x20, x6, x25, 0x00000000, 0x00080000, 0x08000000, x4, 44, x9)

# rs1==x22, rs2==x8, rd==x13, rs1_val == 1048576, rs2_val == 1048576
# opcode: rem ; op1:x22; op2:x8; dest:x13; op1val:0x00100000;  op2val:0x00100000
TEST_RR_OP(rem, x13, x22, x8, 0x00000000, 0x00100000, 0x00100000, x4, 48, x9)

# rs1==x25, rs2==x31, rd==x22, rs1_val == 2097152, rs2_val == -1025
# opcode: rem ; op1:x25; op2:x31; dest:x22; op1val:0x00200000;  op2val:0xfffffbff
TEST_RR_OP(rem, x22, x25, x31, 0x00000000, 0x00200000, 0xfffffbff, x4, 52, x9)

# rs1==x12, rs2==x2, rd==x9, rs1_val == 4194304, rs2_val == 4194304
# opcode: rem ; op1:x12; op2:x2; dest:x9; op1val:0x00400000;  op2val:0x00400000
TEST_RR_OP(rem, x9, x12, x2, 0x00000000, 0x00400000, 0x00400000, x4, 56, x3)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x30, rs2==x6, rd==x0, rs1_val == 8388608, 
# opcode: rem ; op1:x30; op2:x6; dest:x0; op1val:0x00800000;  op2val:0x00000004
TEST_RR_OP(rem, x0, x30, x6, 0x00000000, 0x00800000, 0x00000004, x2, 0, x3)

# rs1==x9, rs1_val == 16777216, rs2_val == 1073741824
# opcode: rem ; op1:x9; op2:x4; dest:x20; op1val:0x01000000;  op2val:0x40000000
TEST_RR_OP(rem, x20, x9, x4, 0x00000000, 0x01000000, 0x40000000, x2, 4, x3)

# rs2==x9, rs1_val == 33554432, 
# opcode: rem ; op1:x17; op2:x9; dest:x0; op1val:0x02000000;  op2val:0x00000080
TEST_RR_OP(rem, x0, x17, x9, 0x00000000, 0x02000000, 0x00000080, x2, 8, x3)

# rd==x7, rs1_val == 67108864, rs2_val == -3
# opcode: rem ; op1:x1; op2:x16; dest:x7; op1val:0x04000000;  op2val:0xfffffffd
TEST_RR_OP(rem, x7, x1, x16, 0x00000000, 0x04000000, 0xfffffffd, x2, 12, x3)

# rs1_val == 134217728, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffffffd
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x08000000, 0xfffffffd, x2, 16, x3)

# rs1_val == 268435456, rs2_val == 16
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000010
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x10000000, 0x00000010, x2, 20, x3)

# rs1_val == 536870912, rs2_val == 64
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000040
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x20000000, 0x00000040, x2, 24, x3)

# rs1_val == 1073741824, rs2_val == -257
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xfffffeff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x40000000, 0xfffffeff, x2, 28, x3)

# rs1_val == -2, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffff9
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffffe, 0xfffffff9, x2, 32, x3)

# rs1_val == -3, rs2_val == -33
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xffffffdf
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffffd, 0xffffffdf, x2, 36, x3)

# rs1_val == -17, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xfffffff8
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffffef, 0xfffffff8, x2, 40, x3)

# rs2_val == -524289, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xfff7ffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffffc, 0xfff7ffff, x2, 44, x3)

# rs2_val == -1048577, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xffefffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffffc, 0xffefffff, x2, 48, x3)

# rs2_val == -2097153, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xffdfffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffffdf, 0xffdfffff, x2, 52, x3)

# rs2_val == -4194305, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xffbfffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000020, 0xffbfffff, x2, 56, x3)

# rs2_val == -8388609, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0xff7fffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00020000, 0xff7fffff, x2, 60, x3)

# rs2_val == -16777217, rs1_val == -33554433
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfeffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfdffffff, 0xfeffffff, x2, 64, x3)

# rs2_val == -134217729, rs1_val == -1025
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xf7ffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffbff, 0xf7ffffff, x2, 68, x3)

# rs2_val == -268435457, rs1_val == -524289
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xefffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfff7ffff, 0xefffffff, x2, 72, x3)

# rs2_val == -536870913, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0xdfffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000007, 0xdfffffff, x2, 76, x3)

# rs2_val == -1073741825, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xbfffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x02000000, 0xbfffffff, x2, 80, x3)

# rs2_val == 1431655765, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x55555555
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000200, 0x55555555, x2, 84, x3)

# rs2_val == -1431655766, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xaaaaaaaa
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000020, 0xaaaaaaaa, x2, 88, x3)

# rs1_val == -65, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffffdff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffffbf, 0xfffffdff, x2, 92, x3)

# rs1_val == -257, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfffff7ff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffeff, 0xfffff7ff, x2, 96, x3)

# rs1_val == -513, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xbfffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffdff, 0xbfffffff, x2, 100, x3)

# rs1_val == -2049, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xf7ffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffff7ff, 0xf7ffffff, x2, 104, x3)

# rs1_val == -4097, rs2_val == -129
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xffffff7f
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffefff, 0xffffff7f, x2, 108, x3)

# rs1_val == -8193, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffffff6
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffdfff, 0xfffffff6, x2, 112, x3)

# rs1_val == -16385, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000006
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffbfff, 0x00000006, x2, 116, x3)

# rs1_val == -32769, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00100000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffff7fff, 0x00100000, x2, 120, x3)

# rs1_val == -65537, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xffbfffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffeffff, 0xffbfffff, x2, 124, x3)

# rs1_val == -131073, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xefffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffdffff, 0xefffffff, x2, 128, x3)

# rs1_val == -262145, rs2_val == -65537
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xfffeffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffbffff, 0xfffeffff, x2, 132, x3)

# rs1_val == -1048577, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xffffffdf
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffefffff, 0xffffffdf, x2, 136, x3)

# rs1_val == -2097153, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xffbfffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffdfffff, 0xffbfffff, x2, 140, x3)

# rs1_val == -4194305, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00800000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffbfffff, 0x00800000, x2, 144, x3)

# rs1_val == -8388609, rs2_val == -5
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xfffffffb
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xff7fffff, 0xfffffffb, x2, 148, x3)

# rs1_val == -16777217, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x08000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfeffffff, 0x08000000, x2, 152, x3)

# rs1_val == -67108865, rs2_val == 2097152
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00200000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfbffffff, 0x00200000, x2, 156, x3)

# rs1_val == -134217729, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xffefffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xf7ffffff, 0xffefffff, x2, 160, x3)

# rs1_val == -268435457, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000010
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xefffffff, 0x00000010, x2, 164, x3)

# rs1_val == -536870913, rs2_val == -16385
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xffffbfff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xdfffffff, 0xffffbfff, x2, 168, x3)

# rs1_val == -1073741825, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfffffdff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xbfffffff, 0xfffffdff, x2, 172, x3)

# rs1_val == 1431655765, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xfbffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x55555555, 0xfbffffff, x2, 176, x3)

# rs1_val == -1431655766, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xfffffffb
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0xfffffffb, x2, 180, x3)

# rs2_val == 2, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000002
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfff7ffff, 0x00000002, x2, 184, x3)

# rs2_val == 32, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00000020
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000001, 0x00000020, x2, 188, x3)

# rs2_val == 256, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000100
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffeffff, 0x00000100, x2, 192, x3)

# rs2_val == 512, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000200
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffff7, 0x00000200, x2, 196, x3)

# rs2_val == 1024, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00000400
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000000, 0x00000400, x2, 200, x3)

# rs2_val == 262144, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00040000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffff7f, 0x00040000, x2, 204, x3)

# rs2_val == 33554432, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x02000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x40000000, 0x02000000, x2, 208, x3)

# rs2_val == 67108864, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0x04000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000010, 0x04000000, x2, 212, x3)

# rs2_val == 268435456, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x10000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffdfffff, 0x10000000, x2, 216, x3)

# rs2_val == 536870912, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x20000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00001000, 0x20000000, x2, 220, x3)

# rs2_val == 8192, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00002000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00400000, 0x00002000, x2, 224, x3)

# rs2_val == -2, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xfffffffe
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffbffff, 0xfffffffe, x2, 228, x3)

# rs2_val == -17, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xffffffef
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000000, 0xffffffef, x2, 232, x3)

# rs2_val == -65, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xffffffbf
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x02000000, 0xffffffbf, x2, 236, x3)

# rs2_val == 32768, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00008000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x02000000, 0x00008000, x2, 240, x3)

# rs2_val == 2048, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0x00000800
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffff9, 0x00000800, x2, 244, x3)

# rs2_val == 4096, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00001000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffff7f, 0x00001000, x2, 248, x3)

# rs2_val == -8193, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0xffffdfff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xc0000000, 0xffffdfff, x2, 252, x3)

# rs2_val == -32769, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0xffff7fff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00002000, 0xffff7fff, x2, 256, x3)

# rs2_val == 131072, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0x00020000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000009, 0x00020000, x2, 260, x3)

# rs1_val == 0, rs2_val == 8
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00000008
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000000, 0x00000008, x2, 264, x3)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs1_val == 2147483647, rs2_val == -2049
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xfffff7ff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x7fffffff, 0xfffff7ff, x2, 268, x3)

# rs1_val == 1, rs2_val == -131073
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xfffdffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000001, 0xfffdffff, x2, 272, x3)

# rs2_val == (-2**(xlen-1)), rs2_val == -2147483648, rs1_val == 2
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x80000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000002, 0x80000000, x2, 276, x3)

# rs1_val == 32, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xfffffff9
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000020, 0xfffffff9, x2, 280, x3)

# rs1_val == 65536, rs2_val == -4097
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0xffffefff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00010000, 0xffffefff, x2, 284, x3)

# rs1_val == 8388608, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000004
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00800000, 0x00000004, x2, 288, x3)

# rs1_val == 33554432, 
# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00000080
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x02000000, 0x00000080, x2, 292, x3)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x6_1:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 74*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
