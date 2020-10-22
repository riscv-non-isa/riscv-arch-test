
#This assembly file tests the xor instruction of the RISC-V I extension for the xor covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xor)

RVTEST_SIGBASE( x16,signature_x16_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x27, rs2==x21, rd==x25, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -2147483648, rs1_val != rs2_val, rs2_val == -513
# opcode: xor ; op1:x27; op2:x21; dest:x25; op1val:0x80000000;  op2val:0xfffffdff
TEST_RR_OP(xor, x25, x27, x21, 0x7ffffdff, 0x80000000, 0xfffffdff, x16, 0, x24)

# rs1 == rd != rs2, rs1==x1, rs2==x8, rd==x1, rs1_val == 0, rs2_val == -9
# opcode: xor ; op1:x1; op2:x8; dest:x1; op1val:0x00000000;  op2val:0xfffffff7
TEST_RR_OP(xor, x1, x1, x8, 0xfffffff7, 0x00000000, 0xfffffff7, x16, 4, x24)

# rs1 == rs2 != rd, rs1==x2, rs2==x2, rd==x23, rs1_val == (2**(xlen-1)-1), rs2_val == -262145, rs1_val > 0 and rs2_val < 0, rs1_val == 2147483647
# opcode: xor ; op1:x2; op2:x2; dest:x23; op1val:0x7fffffff;  op2val:0xfffbffff
TEST_RR_OP(xor, x23, x2, x2, 0x80040000, 0x7fffffff, 0xfffbffff, x16, 8, x24)

# rs2 == rd != rs1, rs1==x6, rs2==x10, rd==x10, rs1_val == 1, rs2_val == -65537
# opcode: xor ; op1:x6; op2:x10; dest:x10; op1val:0x00000001;  op2val:0xfffeffff
TEST_RR_OP(xor, x10, x6, x10, 0xfffefffe, 0x00000001, 0xfffeffff, x16, 12, x24)

# rs1 == rs2 == rd, rs1==x4, rs2==x4, rd==x4, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode: xor ; op1:x4; op2:x4; dest:x4; op1val:0x00000000;  op2val:0x80000000
TEST_RR_OP(xor, x4, x4, x4, 0x80000000, 0x00000000, 0x80000000, x16, 16, x24)

# rs1==x0, rs2==x19, rd==x7, rs2_val == 0, rs1_val == -131073
# opcode: xor ; op1:x0; op2:x19; dest:x7; op1val:0xfffdffff;  op2val:0x00000000
TEST_RR_OP(xor, x7, x0, x19, 0xfffdffff, 0xfffdffff, 0x00000000, x16, 20, x24)

# rs1==x23, rs2==x28, rd==x2, rs2_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 2147483647
# opcode: xor ; op1:x23; op2:x28; dest:x2; op1val:0x00000005;  op2val:0x7fffffff
TEST_RR_OP(xor, x2, x23, x28, 0x7ffffffa, 0x00000005, 0x7fffffff, x16, 24, x24)

# rs1==x26, rs2==x13, rd==x22, rs2_val == 1, rs1_val == 32768
# opcode: xor ; op1:x26; op2:x13; dest:x22; op1val:0x00008000;  op2val:0x00000001
TEST_RR_OP(xor, x22, x26, x13, 0x8001, 0x00008000, 0x00000001, x16, 28, x24)

# rs1==x11, rs2==x31, rd==x6, rs1_val < 0 and rs2_val > 0, rs1_val == -268435457, rs2_val == 536870912
# opcode: xor ; op1:x11; op2:x31; dest:x6; op1val:0xefffffff;  op2val:0x20000000
TEST_RR_OP(xor, x6, x11, x31, 0xcfffffff, 0xefffffff, 0x20000000, x16, 32, x24)

# rs1==x5, rs2==x17, rd==x15, rs1_val == rs2_val, rs2_val == -268435457
# opcode: xor ; op1:x5; op2:x17; dest:x15; op1val:0xefffffff;  op2val:0xefffffff
TEST_RR_OP(xor, x15, x5, x17, 0x0, 0xefffffff, 0xefffffff, x16, 36, x24)

# rs1==x21, rs2==x9, rd==x18, rs1_val == 2, rs2_val == -524289
# opcode: xor ; op1:x21; op2:x9; dest:x18; op1val:0x00000002;  op2val:0xfff7ffff
TEST_RR_OP(xor, x18, x21, x9, 0xfff7fffd, 0x00000002, 0xfff7ffff, x16, 40, x24)

# rs1==x22, rs2==x29, rd==x19, rs1_val == 4, rs2_val == 128
# opcode: xor ; op1:x22; op2:x29; dest:x19; op1val:0x00000004;  op2val:0x00000080
TEST_RR_OP(xor, x19, x22, x29, 0x84, 0x00000004, 0x00000080, x16, 44, x24)

# rs1==x19, rs2==x26, rd==x31, rs1_val == 8, rs2_val == -33554433
# opcode: xor ; op1:x19; op2:x26; dest:x31; op1val:0x00000008;  op2val:0xfdffffff
TEST_RR_OP(xor, x31, x19, x26, 0xfdfffff7, 0x00000008, 0xfdffffff, x16, 48, x24)

# rs1==x25, rs2==x14, rd==x13, rs1_val == 16, 
# opcode: xor ; op1:x25; op2:x14; dest:x13; op1val:0x00000010;  op2val:0x00000003
TEST_RR_OP(xor, x13, x25, x14, 0x13, 0x00000010, 0x00000003, x16, 52, x24)

# rs1==x8, rs2==x27, rd==x20, rs1_val == 32, 
# opcode: xor ; op1:x8; op2:x27; dest:x20; op1val:0x00000020;  op2val:0xfff7ffff
TEST_RR_OP(xor, x20, x8, x27, 0xfff7ffdf, 0x00000020, 0xfff7ffff, x16, 56, x24)

# rs1==x17, rs2==x3, rd==x12, rs1_val == 64, rs2_val == 4
# opcode: xor ; op1:x17; op2:x3; dest:x12; op1val:0x00000040;  op2val:0x00000004
TEST_RR_OP(xor, x12, x17, x3, 0x44, 0x00000040, 0x00000004, x16, 60, x24)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x12, rs2==x6, rd==x11, rs1_val == 128, rs2_val == 1048576
# opcode: xor ; op1:x12; op2:x6; dest:x11; op1val:0x00000080;  op2val:0x00100000
TEST_RR_OP(xor, x11, x12, x6, 0x100080, 0x00000080, 0x00100000, x2, 0, x4)

# rs1==x30, rs2==x18, rd==x24, rs1_val == 256, rs2_val == 2048
# opcode: xor ; op1:x30; op2:x18; dest:x24; op1val:0x00000100;  op2val:0x00000800
TEST_RR_OP(xor, x24, x30, x18, 0x900, 0x00000100, 0x00000800, x2, 4, x4)

# rs1==x13, rs2==x30, rd==x27, rs1_val == 512, 
# opcode: xor ; op1:x13; op2:x30; dest:x27; op1val:0x00000200;  op2val:0x00000007
TEST_RR_OP(xor, x27, x13, x30, 0x207, 0x00000200, 0x00000007, x2, 8, x4)

# rs1==x7, rs2==x20, rd==x0, rs1_val == 1024, rs2_val == -131073
# opcode: xor ; op1:x7; op2:x20; dest:x0; op1val:0x00000400;  op2val:0xfffdffff
TEST_RR_OP(xor, x0, x7, x20, 0xfffdfbff, 0x00000400, 0xfffdffff, x2, 12, x4)

# rs1==x31, rs2==x1, rd==x8, rs1_val == 2048, 
# opcode: xor ; op1:x31; op2:x1; dest:x8; op1val:0x00000800;  op2val:0xfffffffc
TEST_RR_OP(xor, x8, x31, x1, 0xfffff7fc, 0x00000800, 0xfffffffc, x2, 16, x4)

# rs1==x29, rs2==x5, rd==x3, rs1_val == 4096, rs2_val == 8
# opcode: xor ; op1:x29; op2:x5; dest:x3; op1val:0x00001000;  op2val:0x00000008
TEST_RR_OP(xor, x3, x29, x5, 0x1008, 0x00001000, 0x00000008, x2, 20, x4)

# rs1==x3, rs2==x16, rd==x29, rs1_val == 8192, 
# opcode: xor ; op1:x3; op2:x16; dest:x29; op1val:0x00002000;  op2val:0xfffffff9
TEST_RR_OP(xor, x29, x3, x16, 0xffffdff9, 0x00002000, 0xfffffff9, x2, 24, x4)

# rs1==x28, rs2==x11, rd==x21, rs1_val == 16384, 
# opcode: xor ; op1:x28; op2:x11; dest:x21; op1val:0x00004000;  op2val:0x00000080
TEST_RR_OP(xor, x21, x28, x11, 0x4080, 0x00004000, 0x00000080, x2, 28, x4)

# rs1==x14, rs2==x23, rd==x30, rs1_val == 65536, 
# opcode: xor ; op1:x14; op2:x23; dest:x30; op1val:0x00010000;  op2val:0x3fffffff
TEST_RR_OP(xor, x30, x14, x23, 0x3ffeffff, 0x00010000, 0x3fffffff, x2, 32, x4)

# rs1==x9, rs2==x22, rd==x17, rs1_val == 131072, rs2_val == 33554432
# opcode: xor ; op1:x9; op2:x22; dest:x17; op1val:0x00020000;  op2val:0x02000000
TEST_RR_OP(xor, x17, x9, x22, 0x2020000, 0x00020000, 0x02000000, x2, 36, x4)

# rs1==x20, rs2==x7, rd==x26, rs1_val == 262144, 
# opcode: xor ; op1:x20; op2:x7; dest:x26; op1val:0x00040000;  op2val:0xfff7ffff
TEST_RR_OP(xor, x26, x20, x7, 0xfff3ffff, 0x00040000, 0xfff7ffff, x2, 40, x4)

# rs1==x16, rs2==x0, rd==x28, rs1_val == 524288, rs2_val == -33
# opcode: xor ; op1:x16; op2:x0; dest:x28; op1val:0x00080000;  op2val:0xffffffdf
TEST_RR_OP(xor, x28, x16, x0, 0xfff7ffdf, 0x00080000, 0xffffffdf, x2, 44, x4)

# rs1==x18, rs2==x25, rd==x16, rs1_val == 1048576, 
# opcode: xor ; op1:x18; op2:x25; dest:x16; op1val:0x00100000;  op2val:0xfffffffc
TEST_RR_OP(xor, x16, x18, x25, 0xffeffffc, 0x00100000, 0xfffffffc, x2, 48, x4)

# rs1==x24, rs2==x12, rd==x9, rs1_val == 2097152, rs2_val == 16777216
# opcode: xor ; op1:x24; op2:x12; dest:x9; op1val:0x00200000;  op2val:0x01000000
TEST_RR_OP(xor, x9, x24, x12, 0x1200000, 0x00200000, 0x01000000, x2, 52, x4)

# rs1==x10, rs2==x15, rd==x5, rs1_val == 4194304, rs2_val == -2097153
# opcode: xor ; op1:x10; op2:x15; dest:x5; op1val:0x00400000;  op2val:0xffdfffff
TEST_RR_OP(xor, x5, x10, x15, 0xff9fffff, 0x00400000, 0xffdfffff, x2, 56, x4)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x15, rs2==x24, rd==x14, rs1_val == 8388608, 
# opcode: xor ; op1:x15; op2:x24; dest:x14; op1val:0x00800000;  op2val:0xfff7ffff
TEST_RR_OP(xor, x14, x15, x24, 0xff77ffff, 0x00800000, 0xfff7ffff, x1, 0, x2)

# rs1_val == 16777216, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x3fffffff
TEST_RR_OP(xor, x12, x10, x11, 0x3effffff, 0x01000000, 0x3fffffff, x1, 4, x2)

# rs1_val == 33554432, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xfffdffff
TEST_RR_OP(xor, x12, x10, x11, 0xfdfdffff, 0x02000000, 0xfffdffff, x1, 8, x2)

# rs1_val == 67108864, rs2_val == -536870913
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xdfffffff
TEST_RR_OP(xor, x12, x10, x11, 0xdbffffff, 0x04000000, 0xdfffffff, x1, 12, x2)

# rs1_val == 134217728, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffbffff
TEST_RR_OP(xor, x12, x10, x11, 0xf7fbffff, 0x08000000, 0xfffbffff, x1, 16, x2)

# rs1_val == 268435456, rs2_val == 1431655765
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x55555555
TEST_RR_OP(xor, x12, x10, x11, 0x45555555, 0x10000000, 0x55555555, x1, 20, x2)

# rs1_val == 536870912, rs2_val == -17
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xffffffef
TEST_RR_OP(xor, x12, x10, x11, 0xdfffffef, 0x20000000, 0xffffffef, x1, 24, x2)

# rs1_val == 1073741824, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00100000
TEST_RR_OP(xor, x12, x10, x11, 0x40100000, 0x40000000, 0x00100000, x1, 28, x2)

# rs1_val == -2, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffff7
TEST_RR_OP(xor, x12, x10, x11, 0x9, 0xfffffffe, 0xfffffff7, x1, 32, x2)

# rs1_val == -3, rs2_val == 256
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000100
TEST_RR_OP(xor, x12, x10, x11, 0xfffffefd, 0xfffffffd, 0x00000100, x1, 36, x2)

# rs1_val == -5, rs2_val == 65536
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00010000
TEST_RR_OP(xor, x12, x10, x11, 0xfffefffb, 0xfffffffb, 0x00010000, x1, 40, x2)

# rs1_val == -9, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfff7ffff
TEST_RR_OP(xor, x12, x10, x11, 0x80008, 0xfffffff7, 0xfff7ffff, x1, 44, x2)

# rs1_val == -17, rs2_val == -4097
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xffffefff
TEST_RR_OP(xor, x12, x10, x11, 0x1010, 0xffffffef, 0xffffefff, x1, 48, x2)

# rs1_val == -33, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x55555555
TEST_RR_OP(xor, x12, x10, x11, 0xaaaaaa8a, 0xffffffdf, 0x55555555, x1, 52, x2)

# rs1_val == -65, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffffdff
TEST_RR_OP(xor, x12, x10, x11, 0x240, 0xffffffbf, 0xfffffdff, x1, 56, x2)

# rs2_val == -1048577, rs1_val == -8388609
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xffefffff
TEST_RR_OP(xor, x12, x10, x11, 0x900000, 0xff7fffff, 0xffefffff, x1, 60, x2)

# rs2_val == -4194305, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xffbfffff
TEST_RR_OP(xor, x12, x10, x11, 0xffbff7ff, 0x00000800, 0xffbfffff, x1, 64, x2)

# rs2_val == -8388609, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xff7fffff
TEST_RR_OP(xor, x12, x10, x11, 0xdf7fffff, 0x20000000, 0xff7fffff, x1, 68, x2)

# rs2_val == -16777217, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0xfeffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfefdffff, 0x00020000, 0xfeffffff, x1, 72, x2)

# rs2_val == -67108865, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0xfbffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfbfffffc, 0x00000003, 0xfbffffff, x1, 76, x2)

# rs2_val == -134217729, rs1_val == -33554433
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xf7ffffff
TEST_RR_OP(xor, x12, x10, x11, 0xa000000, 0xfdffffff, 0xf7ffffff, x1, 80, x2)

# rs2_val == -1073741825, rs1_val == -1025
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xbfffffff
TEST_RR_OP(xor, x12, x10, x11, 0x40000400, 0xfffffbff, 0xbfffffff, x1, 84, x2)

# rs2_val == -1431655766, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xaaaaaaaa
TEST_RR_OP(xor, x12, x10, x11, 0x55555556, 0xfffffffc, 0xaaaaaaaa, x1, 88, x2)

# rs1_val == -129, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xfbffffff
TEST_RR_OP(xor, x12, x10, x11, 0x4000080, 0xffffff7f, 0xfbffffff, x1, 92, x2)

# rs1_val == -257, rs2_val == 268435456
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x10000000
TEST_RR_OP(xor, x12, x10, x11, 0xeffffeff, 0xfffffeff, 0x10000000, x1, 96, x2)

# rs1_val == -513, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000007
TEST_RR_OP(xor, x12, x10, x11, 0xfffffdf8, 0xfffffdff, 0x00000007, x1, 100, x2)

# rs1_val == -2049, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffff7ff, 0xfffff7ff, 0x00000000, x1, 104, x2)

# rs1_val == -4097, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffffffc
TEST_RR_OP(xor, x12, x10, x11, 0x1003, 0xffffefff, 0xfffffffc, x1, 108, x2)

# rs1_val == -8193, rs2_val == -2049
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffff7ff
TEST_RR_OP(xor, x12, x10, x11, 0x2800, 0xffffdfff, 0xfffff7ff, x1, 112, x2)

# rs1_val == -16385, rs2_val == 8388608
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00800000
TEST_RR_OP(xor, x12, x10, x11, 0xff7fbfff, 0xffffbfff, 0x00800000, x1, 116, x2)

# rs1_val == -32769, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000004
TEST_RR_OP(xor, x12, x10, x11, 0xffff7ffb, 0xffff7fff, 0x00000004, x1, 120, x2)

# rs1_val == -65537, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000100
TEST_RR_OP(xor, x12, x10, x11, 0xfffefeff, 0xfffeffff, 0x00000100, x1, 124, x2)

# rs1_val == -262145, rs2_val == 524288
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00080000
TEST_RR_OP(xor, x12, x10, x11, 0xfff3ffff, 0xfffbffff, 0x00080000, x1, 128, x2)

# rs1_val == -524289, rs2_val == -2
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfffffffe
TEST_RR_OP(xor, x12, x10, x11, 0x80001, 0xfff7ffff, 0xfffffffe, x1, 132, x2)

# rs1_val == -1048577, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfbffffff
TEST_RR_OP(xor, x12, x10, x11, 0x4100000, 0xffefffff, 0xfbffffff, x1, 136, x2)

# rs1_val == -2097153, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffff7ff
TEST_RR_OP(xor, x12, x10, x11, 0x200800, 0xffdfffff, 0xfffff7ff, x1, 140, x2)

# rs1_val == -4194305, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00100000
TEST_RR_OP(xor, x12, x10, x11, 0xffafffff, 0xffbfffff, 0x00100000, x1, 144, x2)

# rs1_val == -16777217, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xfffffffa
TEST_RR_OP(xor, x12, x10, x11, 0x1000005, 0xfeffffff, 0xfffffffa, x1, 148, x2)

# rs1_val == -67108865, rs2_val == -1025
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfffffbff
TEST_RR_OP(xor, x12, x10, x11, 0x4000400, 0xfbffffff, 0xfffffbff, x1, 152, x2)

# rs1_val == -134217729, rs2_val == 2
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000002
TEST_RR_OP(xor, x12, x10, x11, 0xf7fffffd, 0xf7ffffff, 0x00000002, x1, 156, x2)

# rs1_val == -536870913, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x7fffffff
TEST_RR_OP(xor, x12, x10, x11, 0xa0000000, 0xdfffffff, 0x7fffffff, x1, 160, x2)

# rs1_val == -1073741825, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x55555555
TEST_RR_OP(xor, x12, x10, x11, 0xeaaaaaaa, 0xbfffffff, 0x55555555, x1, 164, x2)

# rs1_val == 1431655765, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xfeffffff
TEST_RR_OP(xor, x12, x10, x11, 0xabaaaaaa, 0x55555555, 0xfeffffff, x1, 168, x2)

# rs1_val == -1431655766, rs2_val == 67108864
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x04000000
TEST_RR_OP(xor, x12, x10, x11, 0xaeaaaaaa, 0xaaaaaaaa, 0x04000000, x1, 172, x2)

# rs2_val == 16, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0x00000010
TEST_RR_OP(xor, x12, x10, x11, 0x16, 0x00000006, 0x00000010, x1, 176, x2)

# rs2_val == 32, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000020
TEST_RR_OP(xor, x12, x10, x11, 0xfdffffdf, 0xfdffffff, 0x00000020, x1, 180, x2)

# rs2_val == 64, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0x00000040
TEST_RR_OP(xor, x12, x10, x11, 0xffffffb8, 0xfffffff8, 0x00000040, x1, 184, x2)

# rs2_val == 512, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000200
TEST_RR_OP(xor, x12, x10, x11, 0xfffff5ff, 0xfffff7ff, 0x00000200, x1, 188, x2)

# rs2_val == 1024, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff6;  op2val:0x00000400
TEST_RR_OP(xor, x12, x10, x11, 0xfffffbf6, 0xfffffff6, 0x00000400, x1, 192, x2)

# rs2_val == 4096, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00001000
TEST_RR_OP(xor, x12, x10, x11, 0xffffef7f, 0xffffff7f, 0x00001000, x1, 196, x2)

# rs2_val == 8192, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00002000
TEST_RR_OP(xor, x12, x10, x11, 0xfffbdfff, 0xfffbffff, 0x00002000, x1, 200, x2)

# rs2_val == 16384, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x00004000
TEST_RR_OP(xor, x12, x10, x11, 0x4400, 0x00000400, 0x00004000, x1, 204, x2)

# rs2_val == 262144, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0x00040000
TEST_RR_OP(xor, x12, x10, x11, 0xfffbfff9, 0xfffffff9, 0x00040000, x1, 208, x2)

# rs2_val == 2097152, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00200000
TEST_RR_OP(xor, x12, x10, x11, 0xbfdfffff, 0xbfffffff, 0x00200000, x1, 212, x2)

# rs2_val == 4194304, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00400000
TEST_RR_OP(xor, x12, x10, x11, 0xaaeaaaaa, 0xaaaaaaaa, 0x00400000, x1, 216, x2)

# rs2_val == 134217728, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x3fffffff;  op2val:0x08000000
TEST_RR_OP(xor, x12, x10, x11, 0x37ffffff, 0x3fffffff, 0x08000000, x1, 220, x2)

# rs2_val == 1073741824, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x40000000
TEST_RR_OP(xor, x12, x10, x11, 0xb7ffffff, 0xf7ffffff, 0x40000000, x1, 224, x2)

# rs2_val == -3, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0xfffffffd
TEST_RR_OP(xor, x12, x10, x11, 0x3ffffffd, 0xc0000000, 0xfffffffd, x1, 228, x2)

# rs2_val == -5, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xfffffffb
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffe, 0x00000005, 0xfffffffb, x1, 232, x2)

# rs2_val == -65, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xffffffbf
TEST_RR_OP(xor, x12, x10, x11, 0xfeffffbf, 0x01000000, 0xffffffbf, x1, 236, x2)

# rs2_val == -129, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0xffffff7f
TEST_RR_OP(xor, x12, x10, x11, 0xffffff78, 0x00000007, 0xffffff7f, x1, 240, x2)

# rs2_val == 32768, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x00008000
TEST_RR_OP(xor, x12, x10, x11, 0x108000, 0x00100000, 0x00008000, x1, 244, x2)

# rs2_val == -257, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xfffffeff
TEST_RR_OP(xor, x12, x10, x11, 0x103, 0xfffffffc, 0xfffffeff, x1, 248, x2)

# rs2_val == -8193, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xffffdfff
TEST_RR_OP(xor, x12, x10, x11, 0x2020, 0xffffffdf, 0xffffdfff, x1, 252, x2)

# rs2_val == -16385, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xffffbfff
TEST_RR_OP(xor, x12, x10, x11, 0xffff3fff, 0x00008000, 0xffffbfff, x1, 256, x2)

# rs2_val == -32769, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xffff7fff
TEST_RR_OP(xor, x12, x10, x11, 0x8002, 0xfffffffd, 0xffff7fff, x1, 260, x2)

# rs2_val == 131072, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00020000
TEST_RR_OP(xor, x12, x10, x11, 0xaaa8aaaa, 0xaaaaaaaa, 0x00020000, x1, 264, x2)

# rs1_val == 0, rs2_val == -9
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffffff7
TEST_RR_OP(xor, x12, x10, x11, 0xfffffff7, 0x00000000, 0xfffffff7, x1, 268, x2)

# rs1_val == (2**(xlen-1)-1), rs2_val == -262145, rs1_val > 0 and rs2_val < 0, rs1_val == 2147483647
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xfffbffff
TEST_RR_OP(xor, x12, x10, x11, 0x80040000, 0x7fffffff, 0xfffbffff, x1, 272, x2)

# rs1_val == 1, rs2_val == -65537
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xfffeffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffefffe, 0x00000001, 0xfffeffff, x1, 276, x2)

# rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x80000000
TEST_RR_OP(xor, x12, x10, x11, 0x80000000, 0x00000000, 0x80000000, x1, 280, x2)

# rs2_val == 0, rs1_val == -131073
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffdffff, 0xfffdffff, 0x00000000, x1, 284, x2)

# rs1_val == 1024, rs2_val == -131073
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xfffdffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffdfbff, 0x00000400, 0xfffdffff, x1, 288, x2)

# rs1_val == 524288, rs2_val == -33
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0xffffffdf
TEST_RR_OP(xor, x12, x10, x11, 0xfff7ffdf, 0x00080000, 0xffffffdf, x1, 292, x2)
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

signature_x16_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x16_1:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
