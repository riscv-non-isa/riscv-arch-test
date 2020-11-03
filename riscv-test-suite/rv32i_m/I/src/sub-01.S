
#This assembly file tests the sub instruction of the RISC-V I extension for the sub covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sub)

RVTEST_SIGBASE( x8,signature_x8_1)

# rs1 == rs2 != rd, rs1==x1, rs2==x1, rd==x5, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val, rs2_val == 64
# opcode: sub ; op1:x1; op2:x1; dest:x5; op1val:0x80000000;  op2val:0x00000040
TEST_RR_OP(sub, x5, x1, x1, 0x7fffffc0, 0x80000000, 0x00000040, x8, 0, x15)

# rs2 == rd != rs1, rs1==x21, rs2==x31, rd==x31, rs1_val == 0, rs2_val == -2049
# opcode: sub ; op1:x21; op2:x31; dest:x31; op1val:0x00000000;  op2val:0xfffff7ff
TEST_RR_OP(sub, x31, x21, x31, 0x801, 0x00000000, 0xfffff7ff, x8, 4, x15)

# rs1 == rd != rs2, rs1==x26, rs2==x5, rd==x26, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 2097152, rs1_val == 2147483647
# opcode: sub ; op1:x26; op2:x5; dest:x26; op1val:0x7fffffff;  op2val:0x00200000
TEST_RR_OP(sub, x26, x26, x5, 0x7fdfffff, 0x7fffffff, 0x00200000, x8, 8, x15)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x6, rs2==x27, rd==x3, rs1_val == 1, rs1_val > 0 and rs2_val < 0, rs2_val == -4194305
# opcode: sub ; op1:x6; op2:x27; dest:x3; op1val:0x00000001;  op2val:0xffbfffff
TEST_RR_OP(sub, x3, x6, x27, 0x400002, 0x00000001, 0xffbfffff, x8, 12, x15)

# rs1 == rs2 == rd, rs1==x16, rs2==x16, rd==x16, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode: sub ; op1:x16; op2:x16; dest:x16; op1val:0x7fffffff;  op2val:0x80000000
TEST_RR_OP(sub, x16, x16, x16, 0xffffffff, 0x7fffffff, 0x80000000, x8, 16, x15)

# rs1==x17, rs2==x4, rd==x27, rs2_val == 0, 
# opcode: sub ; op1:x17; op2:x4; dest:x27; op1val:0x3fffffff;  op2val:0x00000000
TEST_RR_OP(sub, x27, x17, x4, 0x3fffffff, 0x3fffffff, 0x00000000, x8, 20, x15)

# rs1==x28, rs2==x14, rd==x10, rs2_val == (2**(xlen-1)-1), rs1_val == -257, rs2_val == 2147483647
# opcode: sub ; op1:x28; op2:x14; dest:x10; op1val:0xfffffeff;  op2val:0x7fffffff
TEST_RR_OP(sub, x10, x28, x14, 0x7fffff00, 0xfffffeff, 0x7fffffff, x8, 24, x15)

# rs1==x0, rs2==x21, rd==x14, rs2_val == 1, rs1_val == -67108865
# opcode: sub ; op1:x0; op2:x21; dest:x14; op1val:0xfbffffff;  op2val:0x00000001
TEST_RR_OP(sub, x14, x0, x21, 0xfbfffffe, 0xfbffffff, 0x00000001, x8, 28, x15)

# rs1==x5, rs2==x26, rd==x1, rs1_val < 0 and rs2_val < 0, rs2_val == -5, rs1_val == -33
# opcode: sub ; op1:x5; op2:x26; dest:x1; op1val:0xffffffdf;  op2val:0xfffffffb
TEST_RR_OP(sub, x1, x5, x26, 0xffffffe4, 0xffffffdf, 0xfffffffb, x8, 32, x15)

# rs1==x3, rs2==x11, rd==x22, rs1_val == rs2_val, rs1_val == 268435456, rs2_val == 268435456
# opcode: sub ; op1:x3; op2:x11; dest:x22; op1val:0x10000000;  op2val:0x10000000
TEST_RR_OP(sub, x22, x3, x11, 0x0, 0x10000000, 0x10000000, x8, 36, x15)

# rs1==x19, rs2==x2, rd==x30, rs1_val == 2, 
# opcode: sub ; op1:x19; op2:x2; dest:x30; op1val:0x00000002;  op2val:0x00000005
TEST_RR_OP(sub, x30, x19, x2, 0xfffffffd, 0x00000002, 0x00000005, x8, 40, x15)

# rs1==x13, rs2==x22, rd==x0, rs1_val == 4, 
# opcode: sub ; op1:x13; op2:x22; dest:x0; op1val:0x00000004;  op2val:0xffffffff
TEST_RR_OP(sub, x0, x13, x22, 0x5, 0x00000004, 0xffffffff, x8, 44, x15)

# rs1==x7, rs2==x13, rd==x2, rs1_val == 8, 
# opcode: sub ; op1:x7; op2:x13; dest:x2; op1val:0x00000008;  op2val:0x7fffffff
TEST_RR_OP(sub, x2, x7, x13, 0x80000009, 0x00000008, 0x7fffffff, x8, 48, x15)

# rs1==x11, rs2==x17, rd==x19, rs1_val == 16, 
# opcode: sub ; op1:x11; op2:x17; dest:x19; op1val:0x00000010;  op2val:0x7fffffff
TEST_RR_OP(sub, x19, x11, x17, 0x80000011, 0x00000010, 0x7fffffff, x8, 52, x15)

# rs1==x24, rs2==x0, rd==x20, rs1_val == 32, 
# opcode: sub ; op1:x24; op2:x0; dest:x20; op1val:0x00000020;  op2val:0xc0000000
TEST_RR_OP(sub, x20, x24, x0, 0x40000020, 0x00000020, 0xc0000000, x8, 56, x15)

# rs1==x9, rs2==x29, rd==x24, rs1_val == 64, rs2_val == 8
# opcode: sub ; op1:x9; op2:x29; dest:x24; op1val:0x00000040;  op2val:0x00000008
TEST_RR_OP(sub, x24, x9, x29, 0x38, 0x00000040, 0x00000008, x8, 60, x15)

# rs1==x4, rs2==x19, rd==x6, rs1_val == 128, rs2_val == -536870913
# opcode: sub ; op1:x4; op2:x19; dest:x6; op1val:0x00000080;  op2val:0xdfffffff
TEST_RR_OP(sub, x6, x4, x19, 0x20000081, 0x00000080, 0xdfffffff, x8, 64, x15)

# rs1==x27, rs2==x28, rd==x9, rs1_val == 256, rs2_val == -131073
# opcode: sub ; op1:x27; op2:x28; dest:x9; op1val:0x00000100;  op2val:0xfffdffff
TEST_RR_OP(sub, x9, x27, x28, 0x20101, 0x00000100, 0xfffdffff, x8, 68, x15)

# rs1==x31, rs2==x9, rd==x28, rs1_val == 512, rs2_val == 2048
# opcode: sub ; op1:x31; op2:x9; dest:x28; op1val:0x00000200;  op2val:0x00000800
TEST_RR_OP(sub, x28, x31, x9, 0xfffffa00, 0x00000200, 0x00000800, x8, 72, x15)

# rs1==x23, rs2==x12, rd==x7, rs1_val == 1024, rs2_val == -33554433
# opcode: sub ; op1:x23; op2:x12; dest:x7; op1val:0x00000400;  op2val:0xfdffffff
TEST_RR_OP(sub, x7, x23, x12, 0x2000401, 0x00000400, 0xfdffffff, x8, 76, x15)

# rs1==x18, rs2==x20, rd==x23, rs1_val == 2048, rs2_val == 32768
# opcode: sub ; op1:x18; op2:x20; dest:x23; op1val:0x00000800;  op2val:0x00008000
TEST_RR_OP(sub, x23, x18, x20, 0xffff8800, 0x00000800, 0x00008000, x8, 80, x5)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x15, rs2==x7, rd==x11, rs1_val == 4096, 
# opcode: sub ; op1:x15; op2:x7; dest:x11; op1val:0x00001000;  op2val:0x10000000
TEST_RR_OP(sub, x11, x15, x7, 0xf0001000, 0x00001000, 0x10000000, x1, 0, x5)

# rs1==x25, rs2==x30, rd==x8, rs1_val == 8192, rs2_val == -1025
# opcode: sub ; op1:x25; op2:x30; dest:x8; op1val:0x00002000;  op2val:0xfffffbff
TEST_RR_OP(sub, x8, x25, x30, 0x2401, 0x00002000, 0xfffffbff, x1, 4, x5)

# rs1==x10, rs2==x24, rd==x21, rs1_val == 16384, rs2_val == -67108865
# opcode: sub ; op1:x10; op2:x24; dest:x21; op1val:0x00004000;  op2val:0xfbffffff
TEST_RR_OP(sub, x21, x10, x24, 0x4004001, 0x00004000, 0xfbffffff, x1, 8, x5)

# rs1==x12, rs2==x8, rd==x17, rs1_val == 32768, rs2_val == 33554432
# opcode: sub ; op1:x12; op2:x8; dest:x17; op1val:0x00008000;  op2val:0x02000000
TEST_RR_OP(sub, x17, x12, x8, 0xfe008000, 0x00008000, 0x02000000, x1, 12, x5)

# rs1==x14, rs2==x3, rd==x13, rs1_val == 65536, rs2_val == 16
# opcode: sub ; op1:x14; op2:x3; dest:x13; op1val:0x00010000;  op2val:0x00000010
TEST_RR_OP(sub, x13, x14, x3, 0xfff0, 0x00010000, 0x00000010, x1, 16, x5)

# rs1==x2, rs2==x6, rd==x29, rs1_val == 131072, 
# opcode: sub ; op1:x2; op2:x6; dest:x29; op1val:0x00020000;  op2val:0x00000007
TEST_RR_OP(sub, x29, x2, x6, 0x1fff9, 0x00020000, 0x00000007, x1, 20, x5)

# rs1==x8, rs2==x25, rd==x12, rs1_val == 262144, rs2_val == 134217728
# opcode: sub ; op1:x8; op2:x25; dest:x12; op1val:0x00040000;  op2val:0x08000000
TEST_RR_OP(sub, x12, x8, x25, 0xf8040000, 0x00040000, 0x08000000, x1, 24, x5)

# rs1==x29, rs2==x23, rd==x25, rs1_val == 524288, rs2_val == -1431655766
# opcode: sub ; op1:x29; op2:x23; dest:x25; op1val:0x00080000;  op2val:0xaaaaaaaa
TEST_RR_OP(sub, x25, x29, x23, 0x555d5556, 0x00080000, 0xaaaaaaaa, x1, 28, x5)

# rs1==x20, rs2==x10, rd==x15, rs1_val == 1048576, 
# opcode: sub ; op1:x20; op2:x10; dest:x15; op1val:0x00100000;  op2val:0x00000009
TEST_RR_OP(sub, x15, x20, x10, 0xffff7, 0x00100000, 0x00000009, x1, 32, x5)

# rs1==x30, rs2==x15, rd==x18, rs1_val == 2097152, rs2_val == 1073741824
# opcode: sub ; op1:x30; op2:x15; dest:x18; op1val:0x00200000;  op2val:0x40000000
TEST_RR_OP(sub, x18, x30, x15, 0xc0200000, 0x00200000, 0x40000000, x1, 36, x5)

# rs1==x22, rs2==x18, rd==x4, rs1_val == 4194304, rs2_val == -1048577
# opcode: sub ; op1:x22; op2:x18; dest:x4; op1val:0x00400000;  op2val:0xffefffff
TEST_RR_OP(sub, x4, x22, x18, 0x500001, 0x00400000, 0xffefffff, x1, 40, x5)

# rs1_val == 8388608, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000800
TEST_RR_OP(sub, x12, x10, x11, 0x7ff800, 0x00800000, 0x00000800, x1, 44, x5)

# rs1_val == 16777216, rs2_val == 262144
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00040000
TEST_RR_OP(sub, x12, x10, x11, 0xfc0000, 0x01000000, 0x00040000, x1, 48, x5)

# rs1_val == 33554432, rs2_val == 1048576
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00100000
TEST_RR_OP(sub, x12, x10, x11, 0x1f00000, 0x02000000, 0x00100000, x1, 52, x5)

# rs1_val == 67108864, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x80000000
TEST_RR_OP(sub, x12, x10, x11, 0x84000000, 0x04000000, 0x80000000, x1, 56, x5)

# rs1_val == 134217728, rs2_val == 128
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000080
TEST_RR_OP(sub, x12, x10, x11, 0x7ffff80, 0x08000000, 0x00000080, x1, 60, x5)

# rs1_val == 536870912, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x80000000
TEST_RR_OP(sub, x12, x10, x11, 0xa0000000, 0x20000000, 0x80000000, x1, 64, x5)

# rs1_val == 1073741824, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x7fffffff
TEST_RR_OP(sub, x12, x10, x11, 0xc0000001, 0x40000000, 0x7fffffff, x1, 68, x5)

# rs1_val == -2, rs2_val == -8193
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xffffdfff
TEST_RR_OP(sub, x12, x10, x11, 0x1fff, 0xfffffffe, 0xffffdfff, x1, 72, x5)

# rs1_val == -3, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfffff7ff
TEST_RR_OP(sub, x12, x10, x11, 0x7fe, 0xfffffffd, 0xfffff7ff, x1, 76, x5)

# rs1_val == -5, rs2_val == 65536
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00010000
TEST_RR_OP(sub, x12, x10, x11, 0xfffefffb, 0xfffffffb, 0x00010000, x1, 80, x5)

# rs1_val == -9, rs2_val == 2
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000002
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff5, 0xfffffff7, 0x00000002, x1, 84, x5)

# rs1_val == -17, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xfffffff6
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff9, 0xffffffef, 0xfffffff6, x1, 88, x5)

# rs2_val == -262145, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0xfffbffff
TEST_RR_OP(sub, x12, x10, x11, 0x40007, 0x00000006, 0xfffbffff, x1, 92, x5)

# rs2_val == -524289, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0xfff7ffff
TEST_RR_OP(sub, x12, x10, x11, 0x82001, 0x00002000, 0xfff7ffff, x1, 96, x5)

# rs2_val == -2097153, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0xffdfffff
TEST_RR_OP(sub, x12, x10, x11, 0x300001, 0x00100000, 0xffdfffff, x1, 100, x5)

# rs2_val == -8388609, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0xff7fffff
TEST_RR_OP(sub, x12, x10, x11, 0x800201, 0x00000200, 0xff7fffff, x1, 104, x5)

# rs2_val == -16777217, rs1_val == -1048577
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfeffffff
TEST_RR_OP(sub, x12, x10, x11, 0xf00000, 0xffefffff, 0xfeffffff, x1, 108, x5)

# rs2_val == -134217729, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xf7ffffff
TEST_RR_OP(sub, x12, x10, x11, 0x48000001, 0x40000000, 0xf7ffffff, x1, 112, x5)

# rs2_val == -268435457, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0xefffffff
TEST_RR_OP(sub, x12, x10, x11, 0x10000004, 0x00000003, 0xefffffff, x1, 116, x5)

# rs2_val == -1073741825, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xbfffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffc, 0xfffffffb, 0xbfffffff, x1, 120, x5)

# rs2_val == 1431655765, rs1_val == -536870913
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x55555555
TEST_RR_OP(sub, x12, x10, x11, 0x8aaaaaaa, 0xdfffffff, 0x55555555, x1, 124, x5)

# rs1_val == -65, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xf7ffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffc0, 0xffffffbf, 0xf7ffffff, x1, 128, x5)

# rs1_val == -129, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x3fffffff
TEST_RR_OP(sub, x12, x10, x11, 0xbfffff80, 0xffffff7f, 0x3fffffff, x1, 132, x5)

# rs1_val == -513, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xfffffffa
TEST_RR_OP(sub, x12, x10, x11, 0xfffffe05, 0xfffffdff, 0xfffffffa, x1, 136, x5)

# rs1_val == -1025, rs2_val == -9
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xfffffff7
TEST_RR_OP(sub, x12, x10, x11, 0xfffffc08, 0xfffffbff, 0xfffffff7, x1, 140, x5)

# rs1_val == -2049, rs2_val == -257
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfffffeff
TEST_RR_OP(sub, x12, x10, x11, 0xfffff900, 0xfffff7ff, 0xfffffeff, x1, 144, x5)

# rs1_val == -4097, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfdffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fff000, 0xffffefff, 0xfdffffff, x1, 148, x5)

# rs1_val == -8193, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xdfffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffe000, 0xffffdfff, 0xdfffffff, x1, 152, x5)

# rs1_val == -16385, rs2_val == -17
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xffffffef
TEST_RR_OP(sub, x12, x10, x11, 0xffffc010, 0xffffbfff, 0xffffffef, x1, 156, x5)

# rs1_val == -32769, rs2_val == 16384
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00004000
TEST_RR_OP(sub, x12, x10, x11, 0xffff3fff, 0xffff7fff, 0x00004000, x1, 160, x5)

# rs1_val == -65537, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xdfffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fff0000, 0xfffeffff, 0xdfffffff, x1, 164, x5)

# rs1_val == -131073, rs2_val == 512
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000200
TEST_RR_OP(sub, x12, x10, x11, 0xfffdfdff, 0xfffdffff, 0x00000200, x1, 168, x5)

# rs1_val == -262145, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x08000000
TEST_RR_OP(sub, x12, x10, x11, 0xf7fbffff, 0xfffbffff, 0x08000000, x1, 172, x5)

# rs1_val == -524289, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfffffeff
TEST_RR_OP(sub, x12, x10, x11, 0xfff80100, 0xfff7ffff, 0xfffffeff, x1, 176, x5)

# rs1_val == -2097153, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x3fffffff
TEST_RR_OP(sub, x12, x10, x11, 0xbfe00000, 0xffdfffff, 0x3fffffff, x1, 180, x5)

# rs1_val == -4194305, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xefffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfc00000, 0xffbfffff, 0xefffffff, x1, 184, x5)

# rs1_val == -8388609, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xfffffbff
TEST_RR_OP(sub, x12, x10, x11, 0xff800400, 0xff7fffff, 0xfffffbff, x1, 188, x5)

# rs1_val == -16777217, rs2_val == 256
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000100
TEST_RR_OP(sub, x12, x10, x11, 0xfefffeff, 0xfeffffff, 0x00000100, x1, 192, x5)

# rs1_val == -33554433, rs2_val == -4097
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xffffefff
TEST_RR_OP(sub, x12, x10, x11, 0xfe001000, 0xfdffffff, 0xffffefff, x1, 196, x5)

# rs1_val == -134217729, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xfffff7ff
TEST_RR_OP(sub, x12, x10, x11, 0xf8000800, 0xf7ffffff, 0xfffff7ff, x1, 200, x5)

# rs1_val == -268435457, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xfffbffff
TEST_RR_OP(sub, x12, x10, x11, 0xf0040000, 0xefffffff, 0xfffbffff, x1, 204, x5)

# rs1_val == -1073741825, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000007
TEST_RR_OP(sub, x12, x10, x11, 0xbffffff8, 0xbfffffff, 0x00000007, x1, 208, x5)

# rs1_val == 1431655765, rs2_val == -16385
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xffffbfff
TEST_RR_OP(sub, x12, x10, x11, 0x55559556, 0x55555555, 0xffffbfff, x1, 212, x5)

# rs1_val == -1431655766, rs2_val == -129
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xffffff7f
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaab2b, 0xaaaaaaaa, 0xffffff7f, x1, 216, x5)

# rs2_val == 4, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0x00000004
TEST_RR_OP(sub, x12, x10, x11, 0xbffffffc, 0xc0000000, 0x00000004, x1, 220, x5)

# rs2_val == 32, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000020
TEST_RR_OP(sub, x12, x10, x11, 0x3fffe0, 0x00400000, 0x00000020, x1, 224, x5)

# rs2_val == 1024, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00000400
TEST_RR_OP(sub, x12, x10, x11, 0xfffffc08, 0x00000008, 0x00000400, x1, 228, x5)

# rs2_val == 4096, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0x00001000
TEST_RR_OP(sub, x12, x10, x11, 0x7000, 0x00008000, 0x00001000, x1, 232, x5)

# rs2_val == 524288, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00080000
TEST_RR_OP(sub, x12, x10, x11, 0xfff7fdff, 0xfffffdff, 0x00080000, x1, 236, x5)

# rs2_val == 4194304, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0x00400000
TEST_RR_OP(sub, x12, x10, x11, 0xffbffff9, 0xfffffff9, 0x00400000, x1, 240, x5)

# rs2_val == 8388608, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00800000
TEST_RR_OP(sub, x12, x10, x11, 0x7800000, 0x08000000, 0x00800000, x1, 244, x5)

# rs2_val == 16777216, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x01000000
TEST_RR_OP(sub, x12, x10, x11, 0x7effffff, 0x7fffffff, 0x01000000, x1, 248, x5)

# rs2_val == 67108864, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0x04000000
TEST_RR_OP(sub, x12, x10, x11, 0xfc000020, 0x00000020, 0x04000000, x1, 252, x5)

# rs2_val == 536870912, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0x20000000
TEST_RR_OP(sub, x12, x10, x11, 0xdffffffc, 0xfffffffc, 0x20000000, x1, 256, x5)

# rs2_val == -2, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xfffffffe
TEST_RR_OP(sub, x12, x10, x11, 0x8002, 0x00008000, 0xfffffffe, x1, 260, x5)

# rs2_val == -3, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xfffffffd
TEST_RR_OP(sub, x12, x10, x11, 0x8, 0x00000005, 0xfffffffd, x1, 264, x5)

# rs2_val == -33, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xffffffdf
TEST_RR_OP(sub, x12, x10, x11, 0xfe000020, 0xfdffffff, 0xffffffdf, x1, 268, x5)

# rs2_val == -65, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xffffffbf
TEST_RR_OP(sub, x12, x10, x11, 0xfff80040, 0xfff7ffff, 0xffffffbf, x1, 272, x5)

# rs2_val == -513, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0xfffffdff
TEST_RR_OP(sub, x12, x10, x11, 0x211, 0x00000010, 0xfffffdff, x1, 276, x5)

# rs2_val == 8192, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0x00002000
TEST_RR_OP(sub, x12, x10, x11, 0x0, 0x00002000, 0x00002000, x1, 280, x5)

# rs2_val == -32769, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xffff7fff
TEST_RR_OP(sub, x12, x10, x11, 0x7800, 0xfffff7ff, 0xffff7fff, x1, 284, x5)

# rs2_val == -65537, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0xfffeffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffb, 0xfffffffa, 0xfffeffff, x1, 288, x5)

# rs2_val == 131072, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00020000
TEST_RR_OP(sub, x12, x10, x11, 0xfffdffbf, 0xffffffbf, 0x00020000, x1, 292, x5)

# rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val, rs2_val == 64
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000040
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffc0, 0x80000000, 0x00000040, x1, 296, x5)

# rs2_val == 1, rs1_val == -67108865
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000001
TEST_RR_OP(sub, x12, x10, x11, 0xfbfffffe, 0xfbffffff, 0x00000001, x1, 300, x5)

# rs1_val == 4, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0xffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x5, 0x00000004, 0xffffffff, x1, 304, x5)
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

signature_x8_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x8_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 77*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
