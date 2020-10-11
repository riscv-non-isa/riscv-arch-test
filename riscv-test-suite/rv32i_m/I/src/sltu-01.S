
#This assembly file tests the sltu instruction of the RISC-V I extension for the sltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltu)

la x1,signature_x1_1

# rs1 == rs2 != rd, rs1==x11, rs2==x11, rd==x29, rs1_val == 0, rs2_val == 128
# opcode: sltu ; op1:x11; op2:x11; dest:x29; op1val:0x00000000;  op2val:0x00000080
TEST_RR_OP(sltu, x29, x11, x11, 0x1, 0x00000000, 0x00000080, x1, 0, x3)

# rs2 == rd != rs1, rs1==x4, rs2==x22, rd==x22, rs1_val == (2**(xlen)-1), rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0, rs1_val > 0 and rs2_val > 0
# opcode: sltu ; op1:x4; op2:x22; dest:x22; op1val:0xffffffff;  op2val:0x00000005
TEST_RR_OP(sltu, x22, x4, x22, 0x0, 0xffffffff, 0x00000005, x1, 4, x3)

# rs1 == rs2 == rd, rs1==x21, rs2==x21, rd==x21, rs1_val == 1, rs2_val == 536870912
# opcode: sltu ; op1:x21; op2:x21; dest:x21; op1val:0x00000001;  op2val:0x20000000
TEST_RR_OP(sltu, x21, x21, x21, 0x1, 0x00000001, 0x20000000, x1, 8, x3)

# rs1 == rd != rs2, rs1==x6, rs2==x17, rd==x6, rs2_val == 0, rs1_val == 3221225471
# opcode: sltu ; op1:x6; op2:x17; dest:x6; op1val:0xbfffffff;  op2val:0x00000000
TEST_RR_OP(sltu, x6, x6, x17, 0x0, 0xbfffffff, 0x00000000, x1, 12, x3)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x26, rs2==x14, rd==x13, rs2_val == (2**(xlen)-1), rs1_val == 32768
# opcode: sltu ; op1:x26; op2:x14; dest:x13; op1val:0x00008000;  op2val:0xffffffff
TEST_RR_OP(sltu, x13, x26, x14, 0x1, 0x00008000, 0xffffffff, x1, 16, x3)

# rs1==x24, rs2==x5, rd==x25, rs2_val == 1, 
# opcode: sltu ; op1:x24; op2:x5; dest:x25; op1val:0x00000005;  op2val:0x00000001
TEST_RR_OP(sltu, x25, x24, x5, 0x0, 0x00000005, 0x00000001, x1, 20, x3)

# rs1==x16, rs2==x13, rd==x23, rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0, rs2_val == 32768
# opcode: sltu ; op1:x16; op2:x13; dest:x23; op1val:0x00008000;  op2val:0x00008000
TEST_RR_OP(sltu, x23, x16, x13, 0x0, 0x00008000, 0x00008000, x1, 24, x3)

# rs1==x19, rs2==x24, rd==x4, rs1_val == 2, rs2_val == 16
# opcode: sltu ; op1:x19; op2:x24; dest:x4; op1val:0x00000002;  op2val:0x00000010
TEST_RR_OP(sltu, x4, x19, x24, 0x1, 0x00000002, 0x00000010, x1, 28, x3)

# rs1==x5, rs2==x28, rd==x27, rs1_val == 4, 
# opcode: sltu ; op1:x5; op2:x28; dest:x27; op1val:0x00000004;  op2val:0x0000000d
TEST_RR_OP(sltu, x27, x5, x28, 0x1, 0x00000004, 0x0000000d, x1, 32, x3)

# rs1==x10, rs2==x16, rd==x28, rs1_val == 8, rs2_val == 8388608
# opcode: sltu ; op1:x10; op2:x16; dest:x28; op1val:0x00000008;  op2val:0x00800000
TEST_RR_OP(sltu, x28, x10, x16, 0x1, 0x00000008, 0x00800000, x1, 36, x3)

# rs1==x14, rs2==x30, rd==x17, rs1_val == 16, 
# opcode: sltu ; op1:x14; op2:x30; dest:x17; op1val:0x00000010;  op2val:0x00000003
TEST_RR_OP(sltu, x17, x14, x30, 0x0, 0x00000010, 0x00000003, x1, 40, x3)

# rs1==x17, rs2==x10, rd==x12, rs1_val == 32, 
# opcode: sltu ; op1:x17; op2:x10; dest:x12; op1val:0x00000020;  op2val:0x00000006
TEST_RR_OP(sltu, x12, x17, x10, 0x0, 0x00000020, 0x00000006, x1, 44, x3)

# rs1==x23, rs2==x9, rd==x2, rs1_val == 64, rs2_val == 131072
# opcode: sltu ; op1:x23; op2:x9; dest:x2; op1val:0x00000040;  op2val:0x00020000
TEST_RR_OP(sltu, x2, x23, x9, 0x1, 0x00000040, 0x00020000, x1, 48, x3)

# rs1==x13, rs2==x8, rd==x9, rs1_val == 128, 
# opcode: sltu ; op1:x13; op2:x8; dest:x9; op1val:0x00000080;  op2val:0x00000005
TEST_RR_OP(sltu, x9, x13, x8, 0x0, 0x00000080, 0x00000005, x1, 52, x3)

# rs1==x20, rs2==x2, rd==x31, rs1_val == 256, rs2_val == 4
# opcode: sltu ; op1:x20; op2:x2; dest:x31; op1val:0x00000100;  op2val:0x00000004
TEST_RR_OP(sltu, x31, x20, x2, 0x0, 0x00000100, 0x00000004, x1, 56, x3)

# rs1==x22, rs2==x15, rd==x30, rs1_val == 512, rs2_val == 2147483647
# opcode: sltu ; op1:x22; op2:x15; dest:x30; op1val:0x00000200;  op2val:0x7fffffff
TEST_RR_OP(sltu, x30, x22, x15, 0x1, 0x00000200, 0x7fffffff, x1, 60, x3)

# rs1==x28, rs2==x4, rd==x7, rs1_val == 1024, rs2_val == 4292870143
# opcode: sltu ; op1:x28; op2:x4; dest:x7; op1val:0x00000400;  op2val:0xffdfffff
TEST_RR_OP(sltu, x7, x28, x4, 0x1, 0x00000400, 0xffdfffff, x1, 64, x13)
la x4,signature_x4_0

# rs1==x15, rs2==x23, rd==x1, rs1_val == 2048, 
# opcode: sltu ; op1:x15; op2:x23; dest:x1; op1val:0x00000800;  op2val:0x00000011
TEST_RR_OP(sltu, x1, x15, x23, 0x0, 0x00000800, 0x00000011, x4, 0, x13)

# rs1==x27, rs2==x29, rd==x10, rs1_val == 4096, 
# opcode: sltu ; op1:x27; op2:x29; dest:x10; op1val:0x00001000;  op2val:0x0000000e
TEST_RR_OP(sltu, x10, x27, x29, 0x0, 0x00001000, 0x0000000e, x4, 4, x13)

# rs1==x30, rs2==x6, rd==x8, rs1_val == 8192, rs2_val == 4278190079
# opcode: sltu ; op1:x30; op2:x6; dest:x8; op1val:0x00002000;  op2val:0xfeffffff
TEST_RR_OP(sltu, x8, x30, x6, 0x1, 0x00002000, 0xfeffffff, x4, 8, x13)

# rs1==x31, rs2==x3, rd==x19, rs1_val == 16384, 
# opcode: sltu ; op1:x31; op2:x3; dest:x19; op1val:0x00004000;  op2val:0x00000006
TEST_RR_OP(sltu, x19, x31, x3, 0x0, 0x00004000, 0x00000006, x4, 12, x13)

# rs1==x18, rs2==x20, rd==x5, rs1_val == 65536, rs2_val == 4294967231
# opcode: sltu ; op1:x18; op2:x20; dest:x5; op1val:0x00010000;  op2val:0xffffffbf
TEST_RR_OP(sltu, x5, x18, x20, 0x1, 0x00010000, 0xffffffbf, x4, 16, x13)

# rs1==x0, rs2==x12, rd==x3, rs1_val == 131072, 
# opcode: sltu ; op1:x0; op2:x12; dest:x3; op1val:0x00020000;  op2val:0x00000013
TEST_RR_OP(sltu, x3, x0, x12, 0x0, 0x00020000, 0x00000013, x4, 20, x13)

# rs1==x12, rs2==x26, rd==x20, rs1_val == 262144, rs2_val == 2863311530
# opcode: sltu ; op1:x12; op2:x26; dest:x20; op1val:0x00040000;  op2val:0xaaaaaaaa
TEST_RR_OP(sltu, x20, x12, x26, 0x1, 0x00040000, 0xaaaaaaaa, x4, 24, x13)

# rs1==x7, rs2==x27, rd==x26, rs1_val == 524288, rs2_val == 268435456
# opcode: sltu ; op1:x7; op2:x27; dest:x26; op1val:0x00080000;  op2val:0x10000000
TEST_RR_OP(sltu, x26, x7, x27, 0x1, 0x00080000, 0x10000000, x4, 28, x13)

# rs1==x2, rs2==x7, rd==x18, rs1_val == 1048576, 
# opcode: sltu ; op1:x2; op2:x7; dest:x18; op1val:0x00100000;  op2val:0x00000013
TEST_RR_OP(sltu, x18, x2, x7, 0x0, 0x00100000, 0x00000013, x4, 32, x13)

# rs1==x25, rs2==x31, rd==x15, rs1_val == 2097152, 
# opcode: sltu ; op1:x25; op2:x31; dest:x15; op1val:0x00200000;  op2val:0x7fffffff
TEST_RR_OP(sltu, x15, x25, x31, 0x1, 0x00200000, 0x7fffffff, x4, 36, x13)

# rs1==x3, rs2==x0, rd==x11, rs1_val == 4194304, rs2_val == 4294967294
# opcode: sltu ; op1:x3; op2:x0; dest:x11; op1val:0x00400000;  op2val:0xfffffffe
TEST_RR_OP(sltu, x11, x3, x0, 0x1, 0x00400000, 0xfffffffe, x4, 40, x13)

# rs1==x9, rs2==x1, rd==x0, rs1_val == 8388608, 
# opcode: sltu ; op1:x9; op2:x1; dest:x0; op1val:0x00800000;  op2val:0x00000012
TEST_RR_OP(sltu, x0, x9, x1, 0x0, 0x00800000, 0x00000012, x4, 44, x13)

# rs1==x8, rs2==x18, rd==x14, rs1_val == 16777216, rs2_val == 4294934527
# opcode: sltu ; op1:x8; op2:x18; dest:x14; op1val:0x01000000;  op2val:0xffff7fff
TEST_RR_OP(sltu, x14, x8, x18, 0x1, 0x01000000, 0xffff7fff, x4, 48, x13)

# rs1==x1, rs2==x19, rd==x24, rs1_val == 33554432, 
# opcode: sltu ; op1:x1; op2:x19; dest:x24; op1val:0x02000000;  op2val:0x00000001
TEST_RR_OP(sltu, x24, x1, x19, 0x0, 0x02000000, 0x00000001, x4, 52, x13)

# rs1==x29, rs2==x25, rd==x16, rs1_val == 67108864, rs2_val == 16384
# opcode: sltu ; op1:x29; op2:x25; dest:x16; op1val:0x04000000;  op2val:0x00004000
TEST_RR_OP(sltu, x16, x29, x25, 0x0, 0x04000000, 0x00004000, x4, 56, x13)

# rs1_val == 134217728, rs2_val == 512
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000200
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x08000000, 0x00000200, x4, 60, x13)

# rs1_val == 268435456, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000001
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x10000000, 0x00000001, x4, 64, x13)

# rs1_val == 536870912, rs2_val == 4294967293
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xfffffffd
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x20000000, 0xfffffffd, x4, 68, x13)

# rs1_val == 1073741824, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000004
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x40000000, 0x00000004, x4, 72, x13)

# rs1_val == 2147483648, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000013
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x80000000, 0x00000013, x4, 76, x13)

# rs1_val == 4294967294, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000006
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffe, 0x00000006, x4, 80, x13)

# rs1_val == 4294967293, rs2_val == 4294966783
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfffffdff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffd, 0xfffffdff, x4, 84, x13)

# rs1_val == 4294967291, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000005
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffb, 0x00000005, x4, 88, x13)

# rs1_val == 4294967287, rs2_val == 4261412863
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfdffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffff7, 0xfdffffff, x4, 92, x13)

# rs1_val == 4294967279, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x0000000a
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffef, 0x0000000a, x4, 96, x13)

# rs1_val == 4294967263, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x0000000b
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffdf, 0x0000000b, x4, 100, x13)

# rs1_val == 4294967231, rs2_val == 3758096383
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xdfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffbf, 0xdfffffff, x4, 104, x13)

# rs1_val == 4294967167, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x0000000d
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffff7f, 0x0000000d, x4, 108, x13)

# rs1_val == 4294967039, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000005
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffeff, 0x00000005, x4, 112, x13)

# rs1_val == 4294966783, rs2_val == 1024
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000400
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffdff, 0x00000400, x4, 116, x13)

# rs1_val == 4294966271, rs2_val == 4286578687
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xff7fffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffbff, 0xff7fffff, x4, 120, x13)

# rs1_val == 4294965247, rs2_val == 524288
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00080000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffff7ff, 0x00080000, x4, 124, x13)

# rs2_val == 4227858431, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xfbffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x80000000, 0xfbffffff, x4, 128, x13)

# rs2_val == 4160749567, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xf7ffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x10000000, 0xf7ffffff, x4, 132, x13)

# rs2_val == 4026531839, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0xefffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000007, 0xefffffff, x4, 136, x13)

# rs2_val == 3221225471, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xbfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffff7, 0xbfffffff, x4, 140, x13)

# rs2_val == 1431655765, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x55555555
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00001000, 0x55555555, x4, 144, x13)

# rs1_val == 4294963199, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffffdff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffefff, 0xfffffdff, x4, 148, x13)

# rs1_val == 4294959103, rs2_val == 67108864
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x04000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffdfff, 0x04000000, x4, 152, x13)

# rs1_val == 4294950911, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x0000000c
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffbfff, 0x0000000c, x4, 156, x13)

# rs1_val == 4294934527, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x0000000e
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffff7fff, 0x0000000e, x4, 160, x13)

# rs1_val == 4294901759, rs2_val == 4194304
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00400000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffeffff, 0x00400000, x4, 164, x13)

# rs1_val == 4294836223, rs2_val == 16777216
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x01000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffdffff, 0x01000000, x4, 168, x13)

# rs1_val == 4294705151, rs2_val == 8192
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00002000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffbffff, 0x00002000, x4, 172, x13)

# rs1_val == 4294443007, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x0000000b
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfff7ffff, 0x0000000b, x4, 176, x13)

# rs1_val == 4293918719, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffefffff, 0xffffffff, x4, 180, x13)

# rs1_val == 4292870143, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000400
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffdfffff, 0x00000400, x4, 184, x13)

# rs1_val == 4290772991, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xff7fffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffbfffff, 0xff7fffff, x4, 188, x13)

# rs1_val == 4286578687, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000007
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xff7fffff, 0x00000007, x4, 192, x13)

# rs1_val == 4278190079, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000011
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfeffffff, 0x00000011, x4, 196, x13)

# rs1_val == 4261412863, rs2_val == 4294967039
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfffffeff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfdffffff, 0xfffffeff, x4, 200, x13)

# rs1_val == 4227858431, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x0000000c
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfbffffff, 0x0000000c, x4, 204, x13)

# rs1_val == 4160749567, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x7fffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xf7ffffff, 0x7fffffff, x4, 208, x13)

# rs1_val == 4026531839, rs2_val == 1073741824
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x40000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xefffffff, 0x40000000, x4, 212, x13)

# rs1_val == 3758096383, rs2_val == 4294967291
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xfffffffb
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xdfffffff, 0xfffffffb, x4, 216, x13)

# rs1_val == 2147483647, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00020000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x7fffffff, 0x00020000, x4, 220, x13)

# rs1_val == 1431655765, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000001
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x55555555, 0x00000001, x4, 224, x13)

# rs1_val == 2863311530, rs2_val == 4290772991
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xffbfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xaaaaaaaa, 0xffbfffff, x4, 228, x13)

# rs2_val == 2, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000002
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xefffffff, 0x00000002, x4, 232, x13)

# rs2_val == 8, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000012;  op2val:0x00000008
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00000012, 0x00000008, x4, 236, x13)

# rs2_val == 32, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0x00000020
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00000800, 0x00000020, x4, 240, x13)

# rs2_val == 64, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000a;  op2val:0x00000040
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000a, 0x00000040, x4, 244, x13)

# rs2_val == 256, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000100
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00800000, 0x00000100, x4, 248, x13)

# rs2_val == 2048, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000800
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xdfffffff, 0x00000800, x4, 252, x13)

# rs2_val == 4096, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00001000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffbffff, 0x00001000, x4, 256, x13)

# rs2_val == 65536, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x00010000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000200, 0x00010000, x4, 260, x13)

# rs2_val == 262144, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000011;  op2val:0x00040000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000011, 0x00040000, x4, 264, x13)

# rs2_val == 1048576, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00100000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffe, 0x00100000, x4, 268, x13)

# rs2_val == 2097152, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000e;  op2val:0x00200000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000e, 0x00200000, x4, 272, x13)

# rs2_val == 33554432, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0x02000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000010, 0x02000000, x4, 276, x13)

# rs2_val == 134217728, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x08000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffd, 0x08000000, x4, 280, x13)

# rs2_val == 2147483648, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x80000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffdff, 0x80000000, x4, 284, x13)

# rs2_val == 4294967287, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0xfffffff7
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00040000, 0xfffffff7, x4, 288, x13)

# rs2_val == 4294967279, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0xffffffef
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00400000, 0xffffffef, x4, 292, x13)

# rs2_val == 4294967263, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xffffffdf
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffbff, 0xffffffdf, x4, 296, x13)

# rs2_val == 4294967167, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xffffff7f
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000008, 0xffffff7f, x4, 300, x13)

# rs2_val == 4294966271, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000b;  op2val:0xfffffbff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000b, 0xfffffbff, x4, 304, x13)

# rs2_val == 4294965247, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffff7ff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffe, 0xfffff7ff, x4, 308, x13)

# rs2_val == 4294963199, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xffffefff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x7fffffff, 0xffffefff, x4, 312, x13)

# rs2_val == 4294959103, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xffffdfff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffbfff, 0xffffdfff, x4, 316, x13)

# rs2_val == 4294950911, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xffffbfff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfeffffff, 0xffffbfff, x4, 320, x13)

# rs2_val == 4294901759, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffeffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffdfffff, 0xfffeffff, x4, 324, x13)

# rs2_val == 4294836223, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0xfffdffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000006, 0xfffdffff, x4, 328, x13)

# rs2_val == 4294705151, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xfffbffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00200000, 0xfffbffff, x4, 332, x13)

# rs2_val == 4294443007, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000b;  op2val:0xfff7ffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000b, 0xfff7ffff, x4, 336, x13)

# rs2_val == 4293918719, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0xffefffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000040, 0xffefffff, x4, 340, x13)

# rs1_val == 0, rs2_val == 128
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00000080
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000000, 0x00000080, x4, 344, x13)

# rs1_val == (2**(xlen)-1), rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0, rs1_val > 0 and rs2_val > 0
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x00000005
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffff, 0x00000005, x4, 348, x13)

# rs1_val == 1, rs2_val == 536870912
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x20000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000001, 0x20000000, x4, 352, x13)

# rs2_val == 0, rs1_val == 3221225471
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xbfffffff, 0x00000000, x4, 356, x13)

# rs1_val == 131072, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0x00000013
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00020000, 0x00000013, x4, 360, x13)

# rs1_val == 4194304, rs2_val == 4294967294
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0xfffffffe
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00400000, 0xfffffffe, x4, 364, x13)

# rs1_val == 8388608, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000012
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00800000, 0x00000012, x4, 368, x13)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 93*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
