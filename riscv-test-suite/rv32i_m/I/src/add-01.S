
#This assembly file tests the add instruction of the RISC-V I extension for the add covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",add)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs1 == rs2 != rd, rs1==x0, rs2==x0, rd==x17, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val, rs2_val == 1431655765
# opcode: add ; op1:x0; op2:x0; dest:x17; op1val:0x80000000;  op2val:0x55555555
TEST_RR_OP(add, x17, x0, x0, 0xd5555555, 0x80000000, 0x55555555, x3, 0, x12)

# rs2 == rd != rs1, rs1==x15, rs2==x2, rd==x2, rs1_val == 0, 
# opcode: add ; op1:x15; op2:x2; dest:x2; op1val:0x00000000;  op2val:0x00000006
TEST_RR_OP(add, x2, x15, x2, 0x6, 0x00000000, 0x00000006, x3, 4, x12)

# rs1 == rd != rs2, rs1==x27, rs2==x7, rd==x27, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 268435456, rs1_val == 2147483647
# opcode: add ; op1:x27; op2:x7; dest:x27; op1val:0x7fffffff;  op2val:0x10000000
TEST_RR_OP(add, x27, x27, x7, 0x8fffffff, 0x7fffffff, 0x10000000, x3, 8, x12)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x21, rs2==x15, rd==x6, rs1_val == 1, rs1_val > 0 and rs2_val < 0, rs2_val == -17
# opcode: add ; op1:x21; op2:x15; dest:x6; op1val:0x00000001;  op2val:0xffffffef
TEST_RR_OP(add, x6, x21, x15, 0xfffffff0, 0x00000001, 0xffffffef, x3, 12, x12)

# rs1 == rs2 == rd, rs1==x24, rs2==x24, rd==x24, rs2_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs2_val == -2147483648
# opcode: add ; op1:x24; op2:x24; dest:x24; op1val:0xfffffff8;  op2val:0x80000000
TEST_RR_OP(add, x24, x24, x24, 0x7ffffff8, 0xfffffff8, 0x80000000, x3, 16, x12)

# rs1==x2, rs2==x30, rd==x9, rs2_val == 0, 
# opcode: add ; op1:x2; op2:x30; dest:x9; op1val:0x00000007;  op2val:0x00000000
TEST_RR_OP(add, x9, x2, x30, 0x7, 0x00000007, 0x00000000, x3, 20, x12)

# rs1==x8, rs2==x14, rd==x25, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647, rs1_val == 2
# opcode: add ; op1:x8; op2:x14; dest:x25; op1val:0x00000002;  op2val:0x7fffffff
TEST_RR_OP(add, x25, x8, x14, 0x80000001, 0x00000002, 0x7fffffff, x3, 24, x12)

# rs1==x14, rs2==x1, rd==x21, rs2_val == 1, rs1_val == -33
# opcode: add ; op1:x14; op2:x1; dest:x21; op1val:0xffffffdf;  op2val:0x00000001
TEST_RR_OP(add, x21, x14, x1, 0xffffffe0, 0xffffffdf, 0x00000001, x3, 28, x12)

# rs1==x26, rs2==x25, rd==x16, rs1_val == rs2_val, rs1_val == -32769, rs2_val == -32769
# opcode: add ; op1:x26; op2:x25; dest:x16; op1val:0xffff7fff;  op2val:0xffff7fff
TEST_RR_OP(add, x16, x26, x25, 0xfffefffe, 0xffff7fff, 0xffff7fff, x3, 32, x12)

# rs1==x13, rs2==x28, rd==x30, rs1_val == 4, rs2_val == 2
# opcode: add ; op1:x13; op2:x28; dest:x30; op1val:0x00000004;  op2val:0x00000002
TEST_RR_OP(add, x30, x13, x28, 0x6, 0x00000004, 0x00000002, x3, 36, x12)

# rs1==x20, rs2==x26, rd==x28, rs1_val == 8, rs2_val == 1073741824
# opcode: add ; op1:x20; op2:x26; dest:x28; op1val:0x00000008;  op2val:0x40000000
TEST_RR_OP(add, x28, x20, x26, 0x40000008, 0x00000008, 0x40000000, x3, 40, x12)

# rs1==x1, rs2==x19, rd==x31, rs1_val == 16, 
# opcode: add ; op1:x1; op2:x19; dest:x31; op1val:0x00000010;  op2val:0x00000002
TEST_RR_OP(add, x31, x1, x19, 0x12, 0x00000010, 0x00000002, x3, 44, x12)

# rs1==x11, rs2==x13, rd==x5, rs1_val == 32, rs2_val == 4194304
# opcode: add ; op1:x11; op2:x13; dest:x5; op1val:0x00000020;  op2val:0x00400000
TEST_RR_OP(add, x5, x11, x13, 0x400020, 0x00000020, 0x00400000, x3, 48, x12)

# rs1==x16, rs2==x6, rd==x15, rs1_val == 64, rs2_val == -4097
# opcode: add ; op1:x16; op2:x6; dest:x15; op1val:0x00000040;  op2val:0xffffefff
TEST_RR_OP(add, x15, x16, x6, 0xfffff03f, 0x00000040, 0xffffefff, x3, 52, x12)

# rs1==x19, rs2==x16, rd==x18, rs1_val == 128, rs2_val == 1048576
# opcode: add ; op1:x19; op2:x16; dest:x18; op1val:0x00000080;  op2val:0x00100000
TEST_RR_OP(add, x18, x19, x16, 0x100080, 0x00000080, 0x00100000, x3, 56, x12)

# rs1==x4, rs2==x5, rd==x10, rs1_val == 256, rs2_val == 2048
# opcode: add ; op1:x4; op2:x5; dest:x10; op1val:0x00000100;  op2val:0x00000800
TEST_RR_OP(add, x10, x4, x5, 0x900, 0x00000100, 0x00000800, x3, 60, x12)

# rs1==x7, rs2==x8, rd==x22, rs1_val == 512, rs2_val == 33554432
# opcode: add ; op1:x7; op2:x8; dest:x22; op1val:0x00000200;  op2val:0x02000000
TEST_RR_OP(add, x22, x7, x8, 0x2000200, 0x00000200, 0x02000000, x3, 64, x12)

# rs1==x31, rs2==x17, rd==x29, rs1_val == 1024, rs2_val == 2097152
# opcode: add ; op1:x31; op2:x17; dest:x29; op1val:0x00000400;  op2val:0x00200000
TEST_RR_OP(add, x29, x31, x17, 0x200400, 0x00000400, 0x00200000, x3, 68, x15)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x23, rs2==x21, rd==x11, rs1_val == 2048, rs2_val == 32
# opcode: add ; op1:x23; op2:x21; dest:x11; op1val:0x00000800;  op2val:0x00000020
TEST_RR_OP(add, x11, x23, x21, 0x820, 0x00000800, 0x00000020, x2, 0, x15)

# rs1==x5, rs2==x4, rd==x23, rs1_val == 4096, rs2_val == -67108865
# opcode: add ; op1:x5; op2:x4; dest:x23; op1val:0x00001000;  op2val:0xfbffffff
TEST_RR_OP(add, x23, x5, x4, 0xfc000fff, 0x00001000, 0xfbffffff, x2, 4, x15)

# rs1==x6, rs2==x31, rd==x3, rs1_val == 8192, 
# opcode: add ; op1:x6; op2:x31; dest:x3; op1val:0x00002000;  op2val:0xfffffffa
TEST_RR_OP(add, x3, x6, x31, 0x1ffa, 0x00002000, 0xfffffffa, x2, 8, x15)

# rs1==x22, rs2==x12, rd==x26, rs1_val == 16384, rs2_val == -257
# opcode: add ; op1:x22; op2:x12; dest:x26; op1val:0x00004000;  op2val:0xfffffeff
TEST_RR_OP(add, x26, x22, x12, 0x3eff, 0x00004000, 0xfffffeff, x2, 12, x15)

# rs1==x12, rs2==x10, rd==x7, rs1_val == 32768, rs2_val == 64
# opcode: add ; op1:x12; op2:x10; dest:x7; op1val:0x00008000;  op2val:0x00000040
TEST_RR_OP(add, x7, x12, x10, 0x8040, 0x00008000, 0x00000040, x2, 16, x15)

# rs1==x30, rs2==x23, rd==x13, rs1_val == 65536, rs2_val == 32768
# opcode: add ; op1:x30; op2:x23; dest:x13; op1val:0x00010000;  op2val:0x00008000
TEST_RR_OP(add, x13, x30, x23, 0x18000, 0x00010000, 0x00008000, x2, 20, x15)

# rs1==x9, rs2==x27, rd==x19, rs1_val == 131072, 
# opcode: add ; op1:x9; op2:x27; dest:x19; op1val:0x00020000;  op2val:0x00200000
TEST_RR_OP(add, x19, x9, x27, 0x220000, 0x00020000, 0x00200000, x2, 24, x15)

# rs1==x10, rs2==x20, rd==x1, rs1_val == 262144, 
# opcode: add ; op1:x10; op2:x20; dest:x1; op1val:0x00040000;  op2val:0xfffffeff
TEST_RR_OP(add, x1, x10, x20, 0x3feff, 0x00040000, 0xfffffeff, x2, 28, x15)

# rs1==x28, rs2==x29, rd==x4, rs1_val == 524288, rs2_val == 8388608
# opcode: add ; op1:x28; op2:x29; dest:x4; op1val:0x00080000;  op2val:0x00800000
TEST_RR_OP(add, x4, x28, x29, 0x880000, 0x00080000, 0x00800000, x2, 32, x15)

# rs1==x18, rs2==x3, rd==x14, rs1_val == 1048576, rs2_val == 536870912
# opcode: add ; op1:x18; op2:x3; dest:x14; op1val:0x00100000;  op2val:0x20000000
TEST_RR_OP(add, x14, x18, x3, 0x20100000, 0x00100000, 0x20000000, x2, 36, x15)

# rs1==x3, rs2==x9, rd==x12, rs1_val == 2097152, 
# opcode: add ; op1:x3; op2:x9; dest:x12; op1val:0x00200000;  op2val:0x3fffffff
TEST_RR_OP(add, x12, x3, x9, 0x401fffff, 0x00200000, 0x3fffffff, x2, 40, x15)

# rs1==x17, rs2==x22, rd==x0, rs1_val == 4194304, rs2_val == 4096
# opcode: add ; op1:x17; op2:x22; dest:x0; op1val:0x00400000;  op2val:0x00001000
TEST_RR_OP(add, x0, x17, x22, 0x401000, 0x00400000, 0x00001000, x2, 44, x15)

# rs1==x29, rs2==x18, rd==x20, rs1_val == 8388608, 
# opcode: add ; op1:x29; op2:x18; dest:x20; op1val:0x00800000;  op2val:0x00000003
TEST_RR_OP(add, x20, x29, x18, 0x800003, 0x00800000, 0x00000003, x2, 48, x15)

# rs1==x25, rs2==x11, rd==x8, rs1_val == 16777216, rs2_val == 4
# opcode: add ; op1:x25; op2:x11; dest:x8; op1val:0x01000000;  op2val:0x00000004
TEST_RR_OP(add, x8, x25, x11, 0x1000004, 0x01000000, 0x00000004, x2, 52, x15)

# rs1_val == 33554432, rs2_val == 262144
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00040000
TEST_RR_OP(add, x12, x10, x11, 0x2040000, 0x02000000, 0x00040000, x2, 56, x1)

# rs1_val == 67108864, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000040
TEST_RR_OP(add, x12, x10, x11, 0x4000040, 0x04000000, 0x00000040, x2, 60, x1)

# rs1_val == 134217728, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x20000000
TEST_RR_OP(add, x12, x10, x11, 0x28000000, 0x08000000, 0x20000000, x2, 64, x1)

# rs1_val == 268435456, rs2_val == 8
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000008
TEST_RR_OP(add, x12, x10, x11, 0x10000008, 0x10000000, 0x00000008, x2, 68, x1)

# rs1_val == 536870912, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x3fffffff
TEST_RR_OP(add, x12, x10, x11, 0x5fffffff, 0x20000000, 0x3fffffff, x2, 72, x1)

# rs1_val == 1073741824, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xffff7fff
TEST_RR_OP(add, x12, x10, x11, 0x3fff7fff, 0x40000000, 0xffff7fff, x2, 76, x1)

# rs1_val == -2, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x20000000
TEST_RR_OP(add, x12, x10, x11, 0x1ffffffe, 0xfffffffe, 0x20000000, x2, 80, x1)

# rs1_val == -3, rs2_val == 524288
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00080000
TEST_RR_OP(add, x12, x10, x11, 0x7fffd, 0xfffffffd, 0x00080000, x2, 84, x1)

# rs1_val == -5, rs2_val == -268435457
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xefffffff
TEST_RR_OP(add, x12, x10, x11, 0xeffffffa, 0xfffffffb, 0xefffffff, x2, 88, x1)

# rs1_val == -9, rs2_val == 128
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000080
TEST_RR_OP(add, x12, x10, x11, 0x77, 0xfffffff7, 0x00000080, x2, 92, x1)

# rs1_val == -17, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xffff7fff
TEST_RR_OP(add, x12, x10, x11, 0xffff7fee, 0xffffffef, 0xffff7fff, x2, 96, x1)

# rs2_val == -262145, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xfffbffff
TEST_RR_OP(add, x12, x10, x11, 0x1ffbffff, 0x20000000, 0xfffbffff, x2, 100, x1)

# rs2_val == -524289, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0xfff7ffff
TEST_RR_OP(add, x12, x10, x11, 0xfff80006, 0x00000007, 0xfff7ffff, x2, 104, x1)

# rs2_val == -1048577, rs1_val == -1048577
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xffefffff
TEST_RR_OP(add, x12, x10, x11, 0xffdffffe, 0xffefffff, 0xffefffff, x2, 108, x1)

# rs2_val == -2097153, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0xffdfffff
TEST_RR_OP(add, x12, x10, x11, 0xffe0ffff, 0x00010000, 0xffdfffff, x2, 112, x1)

# rs2_val == -4194305, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0xffbfffff
TEST_RR_OP(add, x12, x10, x11, 0xffc00006, 0x00000007, 0xffbfffff, x2, 116, x1)

# rs2_val == -8388609, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xff7fffff
TEST_RR_OP(add, x12, x10, x11, 0xff7fffde, 0xffffffdf, 0xff7fffff, x2, 120, x1)

# rs2_val == -16777217, rs1_val == -257
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfeffffff
TEST_RR_OP(add, x12, x10, x11, 0xfefffefe, 0xfffffeff, 0xfeffffff, x2, 124, x1)

# rs2_val == -33554433, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xfdffffff
TEST_RR_OP(add, x12, x10, x11, 0x7dffffff, 0x80000000, 0xfdffffff, x2, 128, x1)

# rs2_val == -134217729, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xf7ffffff
TEST_RR_OP(add, x12, x10, x11, 0xf7fffffa, 0xfffffffb, 0xf7ffffff, x2, 132, x1)

# rs2_val == -536870913, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0xdfffffff
TEST_RR_OP(add, x12, x10, x11, 0xdffffff8, 0xfffffff9, 0xdfffffff, x2, 136, x1)

# rs2_val == -1073741825, rs1_val == -1025
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xbfffffff
TEST_RR_OP(add, x12, x10, x11, 0xbffffbfe, 0xfffffbff, 0xbfffffff, x2, 140, x1)

# rs2_val == -1431655766, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xaaaaaaaa
TEST_RR_OP(add, x12, x10, x11, 0xabaaaaaa, 0x01000000, 0xaaaaaaaa, x2, 144, x1)

# rs1_val == -65, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000080
TEST_RR_OP(add, x12, x10, x11, 0x3f, 0xffffffbf, 0x00000080, x2, 148, x1)

# rs1_val == -129, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xff7fffff
TEST_RR_OP(add, x12, x10, x11, 0xff7fff7e, 0xffffff7f, 0xff7fffff, x2, 152, x1)

# rs1_val == -513, rs2_val == -65
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xffffffbf
TEST_RR_OP(add, x12, x10, x11, 0xfffffdbe, 0xfffffdff, 0xffffffbf, x2, 156, x1)

# rs1_val == -2049, rs2_val == -33
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xffffffdf
TEST_RR_OP(add, x12, x10, x11, 0xfffff7de, 0xfffff7ff, 0xffffffdf, x2, 160, x1)

# rs1_val == -4097, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfbffffff
TEST_RR_OP(add, x12, x10, x11, 0xfbffeffe, 0xffffefff, 0xfbffffff, x2, 164, x1)

# rs1_val == -8193, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xff7fffff
TEST_RR_OP(add, x12, x10, x11, 0xff7fdffe, 0xffffdfff, 0xff7fffff, x2, 168, x1)

# rs1_val == -16385, rs2_val == -5
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfffffffb
TEST_RR_OP(add, x12, x10, x11, 0xffffbffa, 0xffffbfff, 0xfffffffb, x2, 172, x1)

# rs1_val == -65537, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000040
TEST_RR_OP(add, x12, x10, x11, 0xffff003f, 0xfffeffff, 0x00000040, x2, 176, x1)

# rs1_val == -131073, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xfeffffff
TEST_RR_OP(add, x12, x10, x11, 0xfefdfffe, 0xfffdffff, 0xfeffffff, x2, 180, x1)

# rs1_val == -262145, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xfffffffa
TEST_RR_OP(add, x12, x10, x11, 0xfffbfff9, 0xfffbffff, 0xfffffffa, x2, 184, x1)

# rs1_val == -524289, rs2_val == 8192
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00002000
TEST_RR_OP(add, x12, x10, x11, 0xfff81fff, 0xfff7ffff, 0x00002000, x2, 188, x1)

# rs1_val == -2097153, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfbffffff
TEST_RR_OP(add, x12, x10, x11, 0xfbdffffe, 0xffdfffff, 0xfbffffff, x2, 192, x1)

# rs1_val == -4194305, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000800
TEST_RR_OP(add, x12, x10, x11, 0xffc007ff, 0xffbfffff, 0x00000800, x2, 196, x1)

# rs1_val == -8388609, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x10000000
TEST_RR_OP(add, x12, x10, x11, 0xf7fffff, 0xff7fffff, 0x10000000, x2, 200, x1)

# rs1_val == -16777217, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000020
TEST_RR_OP(add, x12, x10, x11, 0xff00001f, 0xfeffffff, 0x00000020, x2, 204, x1)

# rs1_val == -33554433, rs2_val == -65537
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfffeffff
TEST_RR_OP(add, x12, x10, x11, 0xfdfefffe, 0xfdffffff, 0xfffeffff, x2, 208, x1)

# rs1_val == -67108865, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfdffffff
TEST_RR_OP(add, x12, x10, x11, 0xf9fffffe, 0xfbffffff, 0xfdffffff, x2, 212, x1)

# rs1_val == -134217729, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000008
TEST_RR_OP(add, x12, x10, x11, 0xf8000007, 0xf7ffffff, 0x00000008, x2, 216, x1)

# rs1_val == -268435457, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xf7ffffff
TEST_RR_OP(add, x12, x10, x11, 0xe7fffffe, 0xefffffff, 0xf7ffffff, x2, 220, x1)

# rs1_val == -536870913, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xfeffffff
TEST_RR_OP(add, x12, x10, x11, 0xdefffffe, 0xdfffffff, 0xfeffffff, x2, 224, x1)

# rs1_val == -1073741825, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfbffffff
TEST_RR_OP(add, x12, x10, x11, 0xbbfffffe, 0xbfffffff, 0xfbffffff, x2, 228, x1)

# rs1_val == 1431655765, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xffefffff
TEST_RR_OP(add, x12, x10, x11, 0x55455554, 0x55555555, 0xffefffff, x2, 232, x1)

# rs1_val == -1431655766, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xfffbffff
TEST_RR_OP(add, x12, x10, x11, 0xaaa6aaa9, 0xaaaaaaaa, 0xfffbffff, x2, 236, x1)

# rs2_val == 16, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000010
TEST_RR_OP(add, x12, x10, x11, 0xffc0000f, 0xffbfffff, 0x00000010, x2, 240, x1)

# rs2_val == 256, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000100
TEST_RR_OP(add, x12, x10, x11, 0xfe, 0xfffffffe, 0x00000100, x2, 244, x1)

# rs2_val == 512, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0x00000200
TEST_RR_OP(add, x12, x10, x11, 0x1f9, 0xfffffff9, 0x00000200, x2, 248, x1)

# rs2_val == 1024, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x00000400
TEST_RR_OP(add, x12, x10, x11, 0x10400, 0x00010000, 0x00000400, x2, 252, x1)

# rs2_val == 16384, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00004000
TEST_RR_OP(add, x12, x10, x11, 0xffff3fff, 0xfffeffff, 0x00004000, x2, 256, x1)

# rs2_val == 16777216, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x01000000
TEST_RR_OP(add, x12, x10, x11, 0x1200000, 0x00200000, 0x01000000, x2, 260, x1)

# rs2_val == 67108864, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x04000000
TEST_RR_OP(add, x12, x10, x11, 0x3fffffe, 0xfffffffe, 0x04000000, x2, 264, x1)

# rs2_val == 134217728, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x08000000
TEST_RR_OP(add, x12, x10, x11, 0x7dfffff, 0xffdfffff, 0x08000000, x2, 268, x1)

# rs2_val == -2, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xfffffffe
TEST_RR_OP(add, x12, x10, x11, 0x3, 0x00000005, 0xfffffffe, x2, 272, x1)

# rs2_val == -131073, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfffdffff
TEST_RR_OP(add, x12, x10, x11, 0xfffdfffc, 0xfffffffd, 0xfffdffff, x2, 276, x1)

# rs2_val == -3, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0xfffffffd
TEST_RR_OP(add, x12, x10, x11, 0xffffd, 0x00100000, 0xfffffffd, x2, 280, x1)

# rs2_val == -9, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xfffffff7
TEST_RR_OP(add, x12, x10, x11, 0xf7fffff6, 0xf7ffffff, 0xfffffff7, x2, 284, x1)

# rs2_val == -129, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xffffff7f
TEST_RR_OP(add, x12, x10, x11, 0xffffff7f, 0x00000000, 0xffffff7f, x2, 288, x1)

# rs2_val == -513, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xfffffdff
TEST_RR_OP(add, x12, x10, x11, 0xf7fffdfe, 0xf7ffffff, 0xfffffdff, x2, 292, x1)

# rs2_val == -1025, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffffbff
TEST_RR_OP(add, x12, x10, x11, 0xffdffbfe, 0xffdfffff, 0xfffffbff, x2, 296, x1)

# rs2_val == -2049, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffff7ff
TEST_RR_OP(add, x12, x10, x11, 0xffffe7fe, 0xffffefff, 0xfffff7ff, x2, 300, x1)

# rs2_val == -8193, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xffffdfff
TEST_RR_OP(add, x12, x10, x11, 0x7fffdffe, 0x7fffffff, 0xffffdfff, x2, 304, x1)

# rs2_val == -16385, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xffffbfff
TEST_RR_OP(add, x12, x10, x11, 0xffff3ffe, 0xffff7fff, 0xffffbfff, x2, 308, x1)

# rs2_val == 65536, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x00010000
TEST_RR_OP(add, x12, x10, x11, 0x110000, 0x00100000, 0x00010000, x2, 312, x1)

# rs2_val == 131072, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x00020000
TEST_RR_OP(add, x12, x10, x11, 0x20400, 0x00000400, 0x00020000, x2, 316, x1)

# rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val, rs2_val == 1431655765
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x55555555
TEST_RR_OP(add, x12, x10, x11, 0xd5555555, 0x80000000, 0x55555555, x2, 320, x1)

# rs2_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs2_val == -2147483648
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0x80000000
TEST_RR_OP(add, x12, x10, x11, 0x7ffffff8, 0xfffffff8, 0x80000000, x2, 324, x1)

# rs1_val == 4194304, rs2_val == 4096
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00001000
TEST_RR_OP(add, x12, x10, x11, 0x401000, 0x00400000, 0x00001000, x2, 328, x1)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 83*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
