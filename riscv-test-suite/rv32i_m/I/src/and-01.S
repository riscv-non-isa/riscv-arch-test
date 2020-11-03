
#This assembly file tests the and instruction of the RISC-V I extension for the and covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",and)

RVTEST_SIGBASE( x14,signature_x14_1)

# rs1 == rs2 != rd, rs1==x16, rs2==x16, rd==x12, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: and ; op1:x16; op2:x16; dest:x12; op1val:0x80000000;  op2val:0xfffffff8
TEST_RR_OP(and, x12, x16, x16, 0x80000000, 0x80000000, 0xfffffff8, x14, 0, x18)

# rs2 == rd != rs1, rs1==x21, rs2==x3, rd==x3, rs1_val == 0, rs2_val == 2147483647, rs2_val == (2**(xlen-1)-1)
# opcode: and ; op1:x21; op2:x3; dest:x3; op1val:0x00000000;  op2val:0x7fffffff
TEST_RR_OP(and, x3, x21, x3, 0x0, 0x00000000, 0x7fffffff, x14, 4, x18)

# rs1 == rd != rs2, rs1==x15, rs2==x7, rd==x15, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 8, rs1_val == 2147483647
# opcode: and ; op1:x15; op2:x7; dest:x15; op1val:0x7fffffff;  op2val:0x00000008
TEST_RR_OP(and, x15, x15, x7, 0x8, 0x7fffffff, 0x00000008, x14, 8, x18)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x8, rs2==x30, rd==x1, rs1_val == 1, rs2_val == 16384
# opcode: and ; op1:x8; op2:x30; dest:x1; op1val:0x00000001;  op2val:0x00004000
TEST_RR_OP(and, x1, x8, x30, 0x0, 0x00000001, 0x00004000, x14, 12, x18)

# rs1 == rs2 == rd, rs1==x4, rs2==x4, rd==x4, rs2_val == (-2**(xlen-1)), rs1_val > 0 and rs2_val < 0, rs1_val == 4194304, rs2_val == -2147483648
# opcode: and ; op1:x4; op2:x4; dest:x4; op1val:0x00400000;  op2val:0x80000000
TEST_RR_OP(and, x4, x4, x4, 0x0, 0x00400000, 0x80000000, x14, 16, x18)

# rs1==x9, rs2==x17, rd==x24, rs2_val == 0, 
# opcode: and ; op1:x9; op2:x17; dest:x24; op1val:0x00000009;  op2val:0x00000000
TEST_RR_OP(and, x24, x9, x17, 0x0, 0x00000009, 0x00000000, x14, 20, x18)

# rs1==x17, rs2==x6, rd==x22, rs2_val == 1, rs1_val < 0 and rs2_val > 0, rs1_val == -1431655766
# opcode: and ; op1:x17; op2:x6; dest:x22; op1val:0xaaaaaaaa;  op2val:0x00000001
TEST_RR_OP(and, x22, x17, x6, 0x0, 0xaaaaaaaa, 0x00000001, x14, 24, x18)

# rs1==x7, rs2==x11, rd==x17, rs1_val == rs2_val, rs1_val == -129, rs2_val == -129
# opcode: and ; op1:x7; op2:x11; dest:x17; op1val:0xffffff7f;  op2val:0xffffff7f
TEST_RR_OP(and, x17, x7, x11, 0xffffff7f, 0xffffff7f, 0xffffff7f, x14, 28, x18)

# rs1==x20, rs2==x2, rd==x23, rs1_val == 2, rs2_val == -33
# opcode: and ; op1:x20; op2:x2; dest:x23; op1val:0x00000002;  op2val:0xffffffdf
TEST_RR_OP(and, x23, x20, x2, 0x2, 0x00000002, 0xffffffdf, x14, 32, x18)

# rs1==x22, rs2==x0, rd==x7, rs1_val == 4, rs2_val == -5
# opcode: and ; op1:x22; op2:x0; dest:x7; op1val:0x00000004;  op2val:0xfffffffb
TEST_RR_OP(and, x7, x22, x0, 0x0, 0x00000004, 0xfffffffb, x14, 36, x18)

# rs1==x30, rs2==x29, rd==x25, rs1_val == 8, rs2_val == -32769
# opcode: and ; op1:x30; op2:x29; dest:x25; op1val:0x00000008;  op2val:0xffff7fff
TEST_RR_OP(and, x25, x30, x29, 0x8, 0x00000008, 0xffff7fff, x14, 40, x18)

# rs1==x23, rs2==x8, rd==x2, rs1_val == 16, 
# opcode: and ; op1:x23; op2:x8; dest:x2; op1val:0x00000010;  op2val:0x00004000
TEST_RR_OP(and, x2, x23, x8, 0x0, 0x00000010, 0x00004000, x14, 44, x18)

# rs1==x5, rs2==x13, rd==x27, rs1_val == 32, rs2_val == -67108865
# opcode: and ; op1:x5; op2:x13; dest:x27; op1val:0x00000020;  op2val:0xfbffffff
TEST_RR_OP(and, x27, x5, x13, 0x20, 0x00000020, 0xfbffffff, x14, 48, x18)

# rs1==x26, rs2==x25, rd==x19, rs1_val == 64, rs2_val == 2097152
# opcode: and ; op1:x26; op2:x25; dest:x19; op1val:0x00000040;  op2val:0x00200000
TEST_RR_OP(and, x19, x26, x25, 0x0, 0x00000040, 0x00200000, x14, 52, x18)

# rs1==x12, rs2==x10, rd==x0, rs1_val == 128, 
# opcode: and ; op1:x12; op2:x10; dest:x0; op1val:0x00000080;  op2val:0xfffffff8
TEST_RR_OP(and, x0, x12, x10, 0x80, 0x00000080, 0xfffffff8, x14, 56, x18)

# rs1==x2, rs2==x26, rd==x18, rs1_val == 256, rs2_val == -536870913
# opcode: and ; op1:x2; op2:x26; dest:x18; op1val:0x00000100;  op2val:0xdfffffff
TEST_RR_OP(and, x18, x2, x26, 0x100, 0x00000100, 0xdfffffff, x14, 60, x7)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x19, rs2==x9, rd==x11, rs1_val == 512, rs2_val == 2
# opcode: and ; op1:x19; op2:x9; dest:x11; op1val:0x00000200;  op2val:0x00000002
TEST_RR_OP(and, x11, x19, x9, 0x0, 0x00000200, 0x00000002, x4, 0, x7)

# rs1==x28, rs2==x20, rd==x5, rs1_val == 1024, 
# opcode: and ; op1:x28; op2:x20; dest:x5; op1val:0x00000400;  op2val:0xfffffff9
TEST_RR_OP(and, x5, x28, x20, 0x400, 0x00000400, 0xfffffff9, x4, 4, x7)

# rs1==x10, rs2==x22, rd==x14, rs1_val == 2048, rs2_val == -134217729
# opcode: and ; op1:x10; op2:x22; dest:x14; op1val:0x00000800;  op2val:0xf7ffffff
TEST_RR_OP(and, x14, x10, x22, 0x800, 0x00000800, 0xf7ffffff, x4, 8, x7)

# rs1==x1, rs2==x12, rd==x28, rs1_val == 4096, rs2_val == 134217728
# opcode: and ; op1:x1; op2:x12; dest:x28; op1val:0x00001000;  op2val:0x08000000
TEST_RR_OP(and, x28, x1, x12, 0x0, 0x00001000, 0x08000000, x4, 12, x7)

# rs1==x3, rs2==x18, rd==x8, rs1_val == 8192, 
# opcode: and ; op1:x3; op2:x18; dest:x8; op1val:0x00002000;  op2val:0xffffffdf
TEST_RR_OP(and, x8, x3, x18, 0x2000, 0x00002000, 0xffffffdf, x4, 16, x7)

# rs1==x0, rs2==x15, rd==x10, rs1_val == 16384, rs2_val == 32
# opcode: and ; op1:x0; op2:x15; dest:x10; op1val:0x00004000;  op2val:0x00000020
TEST_RR_OP(and, x10, x0, x15, 0x0, 0x00004000, 0x00000020, x4, 20, x7)

# rs1==x24, rs2==x28, rd==x13, rs1_val == 32768, 
# opcode: and ; op1:x24; op2:x28; dest:x13; op1val:0x00008000;  op2val:0x00000002
TEST_RR_OP(and, x13, x24, x28, 0x0, 0x00008000, 0x00000002, x4, 24, x7)

# rs1==x14, rs2==x21, rd==x6, rs1_val == 65536, rs2_val == 131072
# opcode: and ; op1:x14; op2:x21; dest:x6; op1val:0x00010000;  op2val:0x00020000
TEST_RR_OP(and, x6, x14, x21, 0x0, 0x00010000, 0x00020000, x4, 28, x7)

# rs1==x13, rs2==x19, rd==x26, rs1_val == 131072, rs2_val == 4
# opcode: and ; op1:x13; op2:x19; dest:x26; op1val:0x00020000;  op2val:0x00000004
TEST_RR_OP(and, x26, x13, x19, 0x0, 0x00020000, 0x00000004, x4, 32, x7)

# rs1==x6, rs2==x24, rd==x30, rs1_val == 262144, rs2_val == 8388608
# opcode: and ; op1:x6; op2:x24; dest:x30; op1val:0x00040000;  op2val:0x00800000
TEST_RR_OP(and, x30, x6, x24, 0x0, 0x00040000, 0x00800000, x4, 36, x7)

# rs1==x31, rs2==x27, rd==x29, rs1_val == 524288, rs2_val == 16
# opcode: and ; op1:x31; op2:x27; dest:x29; op1val:0x00080000;  op2val:0x00000010
TEST_RR_OP(and, x29, x31, x27, 0x0, 0x00080000, 0x00000010, x4, 40, x7)

# rs1==x27, rs2==x1, rd==x9, rs1_val == 1048576, rs2_val == -17
# opcode: and ; op1:x27; op2:x1; dest:x9; op1val:0x00100000;  op2val:0xffffffef
TEST_RR_OP(and, x9, x27, x1, 0x100000, 0x00100000, 0xffffffef, x4, 44, x7)

# rs1==x11, rs2==x5, rd==x16, rs1_val == 2097152, 
# opcode: and ; op1:x11; op2:x5; dest:x16; op1val:0x00200000;  op2val:0x00800000
TEST_RR_OP(and, x16, x11, x5, 0x0, 0x00200000, 0x00800000, x4, 48, x7)

# rs1==x18, rs2==x14, rd==x21, rs1_val == 8388608, rs2_val == 1431655765
# opcode: and ; op1:x18; op2:x14; dest:x21; op1val:0x00800000;  op2val:0x55555555
TEST_RR_OP(and, x21, x18, x14, 0x0, 0x00800000, 0x55555555, x4, 52, x7)

# rs1==x25, rs2==x23, rd==x20, rs1_val == 16777216, rs2_val == 1024
# opcode: and ; op1:x25; op2:x23; dest:x20; op1val:0x01000000;  op2val:0x00000400
TEST_RR_OP(and, x20, x25, x23, 0x0, 0x01000000, 0x00000400, x4, 56, x7)

# rs1==x29, rs1_val == 33554432, rs2_val == -513
# opcode: and ; op1:x29; op2:x20; dest:x27; op1val:0x02000000;  op2val:0xfffffdff
TEST_RR_OP(and, x27, x29, x20, 0x2000000, 0x02000000, 0xfffffdff, x4, 60, x5)

# rs2==x31, rs1_val == 67108864, rs2_val == 512
# opcode: and ; op1:x2; op2:x31; dest:x0; op1val:0x04000000;  op2val:0x00000200
TEST_RR_OP(and, x0, x2, x31, 0x0, 0x04000000, 0x00000200, x4, 64, x5)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x31, rs1_val == 134217728, 
# opcode: and ; op1:x9; op2:x3; dest:x31; op1val:0x08000000;  op2val:0xc0000000
TEST_RR_OP(and, x31, x9, x3, 0x0, 0x08000000, 0xc0000000, x1, 0, x5)

# rs1_val == 268435456, rs2_val == -2
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xfffffffe
TEST_RR_OP(and, x12, x10, x11, 0x10000000, 0x10000000, 0xfffffffe, x1, 4, x5)

# rs1_val == 536870912, rs2_val == -268435457
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xefffffff
TEST_RR_OP(and, x12, x10, x11, 0x20000000, 0x20000000, 0xefffffff, x1, 8, x5)

# rs1_val == 1073741824, rs2_val == -65
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xffffffbf
TEST_RR_OP(and, x12, x10, x11, 0x40000000, 0x40000000, 0xffffffbf, x1, 12, x5)

# rs1_val == -2, rs2_val == 4194304
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00400000
TEST_RR_OP(and, x12, x10, x11, 0x400000, 0xfffffffe, 0x00400000, x1, 16, x5)

# rs1_val == -3, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00400000
TEST_RR_OP(and, x12, x10, x11, 0x400000, 0xfffffffd, 0x00400000, x1, 20, x5)

# rs1_val == -5, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xffffffef
TEST_RR_OP(and, x12, x10, x11, 0xffffffeb, 0xfffffffb, 0xffffffef, x1, 24, x5)

# rs1_val == -9, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x55555555
TEST_RR_OP(and, x12, x10, x11, 0x55555555, 0xfffffff7, 0x55555555, x1, 28, x5)

# rs1_val == -17, rs2_val == -4097
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xffffefff
TEST_RR_OP(and, x12, x10, x11, 0xffffefef, 0xffffffef, 0xffffefff, x1, 32, x5)

# rs2_val == -262145, rs1_val == -1048577
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfffbffff
TEST_RR_OP(and, x12, x10, x11, 0xffebffff, 0xffefffff, 0xfffbffff, x1, 36, x5)

# rs2_val == -524289, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0xfff7ffff
TEST_RR_OP(and, x12, x10, x11, 0xfff7fff8, 0xfffffff8, 0xfff7ffff, x1, 40, x5)

# rs2_val == -1048577, rs1_val == -262145
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xffefffff
TEST_RR_OP(and, x12, x10, x11, 0xffebffff, 0xfffbffff, 0xffefffff, x1, 44, x5)

# rs2_val == -2097153, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xffdfffff
TEST_RR_OP(and, x12, x10, x11, 0xffdffffb, 0xfffffffb, 0xffdfffff, x1, 48, x5)

# rs2_val == -4194305, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xffbfffff
TEST_RR_OP(and, x12, x10, x11, 0x8, 0x00000008, 0xffbfffff, x1, 52, x5)

# rs2_val == -8388609, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xff7fffff
TEST_RR_OP(and, x12, x10, x11, 0x10000000, 0x10000000, 0xff7fffff, x1, 56, x5)

# rs2_val == -16777217, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0xfeffffff
TEST_RR_OP(and, x12, x10, x11, 0x1000, 0x00001000, 0xfeffffff, x1, 60, x5)

# rs2_val == -33554433, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xfdffffff
TEST_RR_OP(and, x12, x10, x11, 0xfdfffffb, 0xfffffffb, 0xfdffffff, x1, 64, x5)

# rs2_val == -1073741825, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xbfffffff
TEST_RR_OP(and, x12, x10, x11, 0xbffffff7, 0xfffffff7, 0xbfffffff, x1, 68, x5)

# rs2_val == -1431655766, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xaaaaaaaa
TEST_RR_OP(and, x12, x10, x11, 0xaaaaaaa2, 0xfffffff7, 0xaaaaaaaa, x1, 72, x5)

# rs1_val == -33, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000006
TEST_RR_OP(and, x12, x10, x11, 0x6, 0xffffffdf, 0x00000006, x1, 76, x5)

# rs1_val == -65, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffffdff
TEST_RR_OP(and, x12, x10, x11, 0xfffffdbf, 0xffffffbf, 0xfffffdff, x1, 80, x5)

# rs1_val == -257, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xffffffdf
TEST_RR_OP(and, x12, x10, x11, 0xfffffedf, 0xfffffeff, 0xffffffdf, x1, 84, x5)

# rs1_val == -513, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xffff7fff
TEST_RR_OP(and, x12, x10, x11, 0xffff7dff, 0xfffffdff, 0xffff7fff, x1, 88, x5)

# rs1_val == -1025, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000007
TEST_RR_OP(and, x12, x10, x11, 0x7, 0xfffffbff, 0x00000007, x1, 92, x5)

# rs1_val == -2049, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfffffffe
TEST_RR_OP(and, x12, x10, x11, 0xfffff7fe, 0xfffff7ff, 0xfffffffe, x1, 96, x5)

# rs1_val == -4097, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffbffff
TEST_RR_OP(and, x12, x10, x11, 0xfffbefff, 0xffffefff, 0xfffbffff, x1, 100, x5)

# rs1_val == -8193, rs2_val == -257
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffffeff
TEST_RR_OP(and, x12, x10, x11, 0xffffdeff, 0xffffdfff, 0xfffffeff, x1, 104, x5)

# rs1_val == -16385, rs2_val == 33554432
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x02000000
TEST_RR_OP(and, x12, x10, x11, 0x2000000, 0xffffbfff, 0x02000000, x1, 108, x5)

# rs1_val == -32769, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00800000
TEST_RR_OP(and, x12, x10, x11, 0x800000, 0xffff7fff, 0x00800000, x1, 112, x5)

# rs1_val == -65537, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xfbffffff
TEST_RR_OP(and, x12, x10, x11, 0xfbfeffff, 0xfffeffff, 0xfbffffff, x1, 116, x5)

# rs1_val == -131073, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xbfffffff
TEST_RR_OP(and, x12, x10, x11, 0xbffdffff, 0xfffdffff, 0xbfffffff, x1, 120, x5)

# rs1_val == -524289, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfbffffff
TEST_RR_OP(and, x12, x10, x11, 0xfbf7ffff, 0xfff7ffff, 0xfbffffff, x1, 124, x5)

# rs1_val == -2097153, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xffffff7f
TEST_RR_OP(and, x12, x10, x11, 0xffdfff7f, 0xffdfffff, 0xffffff7f, x1, 128, x5)

# rs1_val == -4194305, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000007
TEST_RR_OP(and, x12, x10, x11, 0x7, 0xffbfffff, 0x00000007, x1, 132, x5)

# rs1_val == -8388609, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000200
TEST_RR_OP(and, x12, x10, x11, 0x200, 0xff7fffff, 0x00000200, x1, 136, x5)

# rs1_val == -16777217, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xffffffef
TEST_RR_OP(and, x12, x10, x11, 0xfeffffef, 0xfeffffff, 0xffffffef, x1, 140, x5)

# rs1_val == -33554433, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x3fffffff
TEST_RR_OP(and, x12, x10, x11, 0x3dffffff, 0xfdffffff, 0x3fffffff, x1, 144, x5)

# rs1_val == -67108865, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xbfffffff
TEST_RR_OP(and, x12, x10, x11, 0xbbffffff, 0xfbffffff, 0xbfffffff, x1, 148, x5)

# rs1_val == -134217729, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000007
TEST_RR_OP(and, x12, x10, x11, 0x7, 0xf7ffffff, 0x00000007, x1, 152, x5)

# rs1_val == -268435457, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xffffff7f
TEST_RR_OP(and, x12, x10, x11, 0xefffff7f, 0xefffffff, 0xffffff7f, x1, 156, x5)

# rs1_val == -536870913, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xfff7ffff
TEST_RR_OP(and, x12, x10, x11, 0xdff7ffff, 0xdfffffff, 0xfff7ffff, x1, 160, x5)

# rs1_val == -1073741825, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xffffffbf
TEST_RR_OP(and, x12, x10, x11, 0xbfffffbf, 0xbfffffff, 0xffffffbf, x1, 164, x5)

# rs1_val == 1431655765, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000003
TEST_RR_OP(and, x12, x10, x11, 0x1, 0x55555555, 0x00000003, x1, 168, x5)

# rs2_val == 64, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000040
TEST_RR_OP(and, x12, x10, x11, 0x40, 0xfffdffff, 0x00000040, x1, 172, x5)

# rs2_val == 128, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0x00000080
TEST_RR_OP(and, x12, x10, x11, 0x80, 0x00000080, 0x00000080, x1, 176, x5)

# rs2_val == 256, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000100
TEST_RR_OP(and, x12, x10, x11, 0x100, 0xfffffffb, 0x00000100, x1, 180, x5)

# rs2_val == 2048, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000800
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x08000000, 0x00000800, x1, 184, x5)

# rs2_val == 4096, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00001000
TEST_RR_OP(and, x12, x10, x11, 0x1000, 0xfbffffff, 0x00001000, x1, 188, x5)

# rs2_val == 8192, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00002000
TEST_RR_OP(and, x12, x10, x11, 0x2000, 0xfffff7ff, 0x00002000, x1, 192, x5)

# rs2_val == 32768, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00008000
TEST_RR_OP(and, x12, x10, x11, 0x8000, 0xf7ffffff, 0x00008000, x1, 196, x5)

# rs2_val == 65536, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0x00010000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0xc0000000, 0x00010000, x1, 200, x5)

# rs2_val == 262144, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00040000
TEST_RR_OP(and, x12, x10, x11, 0x40000, 0x55555555, 0x00040000, x1, 204, x5)

# rs2_val == 524288, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x00080000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000200, 0x00080000, x1, 208, x5)

# rs2_val == 1048576, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00100000
TEST_RR_OP(and, x12, x10, x11, 0x100000, 0xefffffff, 0x00100000, x1, 212, x5)

# rs2_val == 16777216, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x01000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x10000000, 0x01000000, x1, 216, x5)

# rs2_val == 67108864, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0x04000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00020000, 0x04000000, x1, 220, x5)

# rs2_val == 268435456, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0x10000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000010, 0x10000000, x1, 224, x5)

# rs2_val == 536870912, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x20000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00010000, 0x20000000, x1, 228, x5)

# rs2_val == 1073741824, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0x40000000
TEST_RR_OP(and, x12, x10, x11, 0x40000000, 0xfffffffc, 0x40000000, x1, 232, x5)

# rs2_val == -3, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0xfffffffd
TEST_RR_OP(and, x12, x10, x11, 0x800000, 0x00800000, 0xfffffffd, x1, 236, x5)

# rs2_val == -9, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0xfffffff7
TEST_RR_OP(and, x12, x10, x11, 0x6, 0x00000006, 0xfffffff7, x1, 240, x5)

# rs2_val == -1025, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xfffffbff
TEST_RR_OP(and, x12, x10, x11, 0x8000, 0x00008000, 0xfffffbff, x1, 244, x5)

# rs2_val == -2049, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xfffff7ff
TEST_RR_OP(and, x12, x10, x11, 0x8000, 0x00008000, 0xfffff7ff, x1, 248, x5)

# rs2_val == -8193, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0xffffdfff
TEST_RR_OP(and, x12, x10, x11, 0x400000, 0x00400000, 0xffffdfff, x1, 252, x5)

# rs2_val == -16385, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0xffffbfff
TEST_RR_OP(and, x12, x10, x11, 0x3, 0x00000003, 0xffffbfff, x1, 256, x5)

# rs2_val == -65537, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfffeffff
TEST_RR_OP(and, x12, x10, x11, 0xffeeffff, 0xffefffff, 0xfffeffff, x1, 260, x5)

# rs2_val == -131073, 
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfffdffff
TEST_RR_OP(and, x12, x10, x11, 0xfffdbfff, 0xffffbfff, 0xfffdffff, x1, 264, x5)

# rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xfffffff8
TEST_RR_OP(and, x12, x10, x11, 0x80000000, 0x80000000, 0xfffffff8, x1, 268, x5)

# rs2_val == (-2**(xlen-1)), rs1_val > 0 and rs2_val < 0, rs1_val == 4194304, rs2_val == -2147483648
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x80000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00400000, 0x80000000, x1, 272, x5)

# rs1_val == 4, rs2_val == -5
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0xfffffffb
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000004, 0xfffffffb, x1, 276, x5)

# rs1_val == 16384, rs2_val == 32
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x00000020
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00004000, 0x00000020, x1, 280, x5)

# rs1_val == 67108864, rs2_val == 512
# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000200
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x04000000, 0x00000200, x1, 284, x5)
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

signature_x14_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x14_1:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 72*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
