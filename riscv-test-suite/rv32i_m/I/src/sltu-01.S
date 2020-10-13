
#This assembly file tests the sltu instruction of the RISC-V I extension for the sltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltu)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x18, rs2==x24, rd==x13, rs1_val == 0, rs2_val == 2147483648
# opcode: sltu ; op1:x18; op2:x24; dest:x13; op1val:0x00000000;  op2val:0x80000000
TEST_RR_OP(sltu, x13, x18, x24, 0x1, 0x00000000, 0x80000000, x7, 0, x29)

# rs1 == rs2 != rd, rs1==x6, rs2==x6, rd==x16, rs1_val == (2**(xlen)-1), rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0, rs1_val > 0 and rs2_val > 0
# opcode: sltu ; op1:x6; op2:x6; dest:x16; op1val:0xffffffff;  op2val:0x0000000f
TEST_RR_OP(sltu, x16, x6, x6, 0x0, 0xffffffff, 0x0000000f, x7, 4, x29)

# rs1 == rd != rs2, rs1==x28, rs2==x26, rd==x28, rs1_val == 1, rs2_val == 8388608
# opcode: sltu ; op1:x28; op2:x26; dest:x28; op1val:0x00000001;  op2val:0x00800000
TEST_RR_OP(sltu, x28, x28, x26, 0x1, 0x00000001, 0x00800000, x7, 8, x29)

# rs2 == rd != rs1, rs1==x10, rs2==x1, rd==x1, rs2_val == 0, rs1_val == 1048576
# opcode: sltu ; op1:x10; op2:x1; dest:x1; op1val:0x00100000;  op2val:0x00000000
TEST_RR_OP(sltu, x1, x10, x1, 0x0, 0x00100000, 0x00000000, x7, 12, x29)

# rs1 == rs2 == rd, rs1==x22, rs2==x22, rd==x22, rs2_val == (2**(xlen)-1), rs1_val == 2
# opcode: sltu ; op1:x22; op2:x22; dest:x22; op1val:0x00000002;  op2val:0xffffffff
TEST_RR_OP(sltu, x22, x22, x22, 0x1, 0x00000002, 0xffffffff, x7, 16, x29)

# rs1==x26, rs2==x8, rd==x19, rs2_val == 1, rs1_val == 2147483648
# opcode: sltu ; op1:x26; op2:x8; dest:x19; op1val:0x80000000;  op2val:0x00000001
TEST_RR_OP(sltu, x19, x26, x8, 0x0, 0x80000000, 0x00000001, x7, 20, x29)

# rs1==x0, rs2==x9, rd==x14, rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0, rs1_val == 8, rs2_val == 8
# opcode: sltu ; op1:x0; op2:x9; dest:x14; op1val:0x00000008;  op2val:0x00000008
TEST_RR_OP(sltu, x14, x0, x9, 0x0, 0x00000008, 0x00000008, x7, 24, x29)

# rs1==x2, rs2==x17, rd==x10, rs1_val == 4, 
# opcode: sltu ; op1:x2; op2:x17; dest:x10; op1val:0x00000004;  op2val:0x0000000f
TEST_RR_OP(sltu, x10, x2, x17, 0x1, 0x00000004, 0x0000000f, x7, 28, x29)

# rs1==x20, rs2==x18, rd==x15, rs1_val == 16, 
# opcode: sltu ; op1:x20; op2:x18; dest:x15; op1val:0x00000010;  op2val:0x00800000
TEST_RR_OP(sltu, x15, x20, x18, 0x1, 0x00000010, 0x00800000, x7, 32, x29)

# rs1==x16, rs2==x23, rd==x17, rs1_val == 32, rs2_val == 4294965247
# opcode: sltu ; op1:x16; op2:x23; dest:x17; op1val:0x00000020;  op2val:0xfffff7ff
TEST_RR_OP(sltu, x17, x16, x23, 0x1, 0x00000020, 0xfffff7ff, x7, 36, x29)

# rs1==x11, rs2==x16, rd==x0, rs1_val == 64, rs2_val == 64
# opcode: sltu ; op1:x11; op2:x16; dest:x0; op1val:0x00000040;  op2val:0x00000040
TEST_RR_OP(sltu, x0, x11, x16, 0x0, 0x00000040, 0x00000040, x7, 40, x29)

# rs1==x17, rs2==x27, rd==x24, rs1_val == 128, 
# opcode: sltu ; op1:x17; op2:x27; dest:x24; op1val:0x00000080;  op2val:0xfffff7ff
TEST_RR_OP(sltu, x24, x17, x27, 0x1, 0x00000080, 0xfffff7ff, x7, 44, x29)

# rs1==x21, rs2==x11, rd==x2, rs1_val == 256, 
# opcode: sltu ; op1:x21; op2:x11; dest:x2; op1val:0x00000100;  op2val:0x0000000e
TEST_RR_OP(sltu, x2, x21, x11, 0x0, 0x00000100, 0x0000000e, x7, 48, x29)

# rs1==x4, rs2==x3, rd==x23, rs1_val == 512, rs2_val == 262144
# opcode: sltu ; op1:x4; op2:x3; dest:x23; op1val:0x00000200;  op2val:0x00040000
TEST_RR_OP(sltu, x23, x4, x3, 0x1, 0x00000200, 0x00040000, x7, 52, x29)

# rs1==x9, rs2==x5, rd==x4, rs1_val == 1024, rs2_val == 4160749567
# opcode: sltu ; op1:x9; op2:x5; dest:x4; op1val:0x00000400;  op2val:0xf7ffffff
TEST_RR_OP(sltu, x4, x9, x5, 0x1, 0x00000400, 0xf7ffffff, x7, 56, x29)

# rs1==x25, rs2==x28, rd==x12, rs1_val == 2048, 
# opcode: sltu ; op1:x25; op2:x28; dest:x12; op1val:0x00000800;  op2val:0x0000000e
TEST_RR_OP(sltu, x12, x25, x28, 0x0, 0x00000800, 0x0000000e, x7, 60, x29)

# rs1==x1, rs2==x14, rd==x21, rs1_val == 4096, rs2_val == 4096
# opcode: sltu ; op1:x1; op2:x14; dest:x21; op1val:0x00001000;  op2val:0x00001000
TEST_RR_OP(sltu, x21, x1, x14, 0x0, 0x00001000, 0x00001000, x7, 64, x16)

# rs1==x24, rs2==x19, rd==x20, rs1_val == 8192, rs2_val == 4294934527
# opcode: sltu ; op1:x24; op2:x19; dest:x20; op1val:0x00002000;  op2val:0xffff7fff
TEST_RR_OP(sltu, x20, x24, x19, 0x1, 0x00002000, 0xffff7fff, x7, 68, x16)

# rs1==x5, rs2==x21, rd==x31, rs1_val == 16384, rs2_val == 4294836223
# opcode: sltu ; op1:x5; op2:x21; dest:x31; op1val:0x00004000;  op2val:0xfffdffff
TEST_RR_OP(sltu, x31, x5, x21, 0x1, 0x00004000, 0xfffdffff, x7, 72, x16)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x13, rs2==x31, rd==x27, rs1_val == 32768, rs2_val == 1048576
# opcode: sltu ; op1:x13; op2:x31; dest:x27; op1val:0x00008000;  op2val:0x00100000
TEST_RR_OP(sltu, x27, x13, x31, 0x1, 0x00008000, 0x00100000, x1, 0, x16)

# rs1==x30, rs2==x29, rd==x7, rs1_val == 65536, rs2_val == 134217728
# opcode: sltu ; op1:x30; op2:x29; dest:x7; op1val:0x00010000;  op2val:0x08000000
TEST_RR_OP(sltu, x7, x30, x29, 0x1, 0x00010000, 0x08000000, x1, 4, x16)

# rs1==x19, rs2==x4, rd==x29, rs1_val == 131072, rs2_val == 4293918719
# opcode: sltu ; op1:x19; op2:x4; dest:x29; op1val:0x00020000;  op2val:0xffefffff
TEST_RR_OP(sltu, x29, x19, x4, 0x1, 0x00020000, 0xffefffff, x1, 8, x16)

# rs1==x7, rs2==x12, rd==x5, rs1_val == 262144, rs2_val == 4294967167
# opcode: sltu ; op1:x7; op2:x12; dest:x5; op1val:0x00040000;  op2val:0xffffff7f
TEST_RR_OP(sltu, x5, x7, x12, 0x1, 0x00040000, 0xffffff7f, x1, 12, x16)

# rs1==x23, rs2==x0, rd==x30, rs1_val == 524288, 
# opcode: sltu ; op1:x23; op2:x0; dest:x30; op1val:0x00080000;  op2val:0x0000000b
TEST_RR_OP(sltu, x30, x23, x0, 0x0, 0x00080000, 0x0000000b, x1, 16, x16)

# rs1==x31, rs2==x7, rd==x25, rs1_val == 2097152, rs2_val == 4294966271
# opcode: sltu ; op1:x31; op2:x7; dest:x25; op1val:0x00200000;  op2val:0xfffffbff
TEST_RR_OP(sltu, x25, x31, x7, 0x1, 0x00200000, 0xfffffbff, x1, 20, x16)

# rs1==x29, rs2==x30, rd==x6, rs1_val == 4194304, 
# opcode: sltu ; op1:x29; op2:x30; dest:x6; op1val:0x00400000;  op2val:0x00000001
TEST_RR_OP(sltu, x6, x29, x30, 0x0, 0x00400000, 0x00000001, x1, 24, x16)

# rs1==x15, rs2==x25, rd==x11, rs1_val == 8388608, rs2_val == 524288
# opcode: sltu ; op1:x15; op2:x25; dest:x11; op1val:0x00800000;  op2val:0x00080000
TEST_RR_OP(sltu, x11, x15, x25, 0x0, 0x00800000, 0x00080000, x1, 28, x16)

# rs1==x3, rs2==x20, rd==x18, rs1_val == 16777216, rs2_val == 536870912
# opcode: sltu ; op1:x3; op2:x20; dest:x18; op1val:0x01000000;  op2val:0x20000000
TEST_RR_OP(sltu, x18, x3, x20, 0x1, 0x01000000, 0x20000000, x1, 32, x16)

# rs1==x14, rs2==x15, rd==x8, rs1_val == 33554432, 
# opcode: sltu ; op1:x14; op2:x15; dest:x8; op1val:0x02000000;  op2val:0xffffff7f
TEST_RR_OP(sltu, x8, x14, x15, 0x1, 0x02000000, 0xffffff7f, x1, 36, x16)

# rs1==x12, rs2==x13, rd==x9, rs1_val == 67108864, rs2_val == 131072
# opcode: sltu ; op1:x12; op2:x13; dest:x9; op1val:0x04000000;  op2val:0x00020000
TEST_RR_OP(sltu, x9, x12, x13, 0x0, 0x04000000, 0x00020000, x1, 40, x16)

# rs1==x8, rs2==x10, rd==x3, rs1_val == 134217728, 
# opcode: sltu ; op1:x8; op2:x10; dest:x3; op1val:0x08000000;  op2val:0x20000000
TEST_RR_OP(sltu, x3, x8, x10, 0x1, 0x08000000, 0x20000000, x1, 44, x16)

# rs1==x27, rs2==x2, rd==x26, rs1_val == 268435456, 
# opcode: sltu ; op1:x27; op2:x2; dest:x26; op1val:0x10000000;  op2val:0x00000005
TEST_RR_OP(sltu, x26, x27, x2, 0x0, 0x10000000, 0x00000005, x1, 48, x16)

# rs1_val == 536870912, rs2_val == 4261412863
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xfdffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x20000000, 0xfdffffff, x1, 52, x16)

# rs1_val == 1073741824, rs2_val == 4194304
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00400000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x40000000, 0x00400000, x1, 56, x16)

# rs1_val == 4294967294, rs2_val == 256
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000100
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffe, 0x00000100, x1, 60, x16)

# rs1_val == 4294967293, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000100
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffd, 0x00000100, x1, 64, x16)

# rs1_val == 4294967291, rs2_val == 65536
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00010000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffb, 0x00010000, x1, 68, x16)

# rs1_val == 4294967287, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xffffff7f
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffff7, 0xffffff7f, x1, 72, x16)

# rs1_val == 4294967279, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xf7ffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffef, 0xf7ffffff, x1, 76, x16)

# rs1_val == 4294967263, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000040
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffdf, 0x00000040, x1, 80, x16)

# rs1_val == 4294967231, rs2_val == 4294705151
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffbffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffbf, 0xfffbffff, x1, 84, x16)

# rs1_val == 4294967167, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xffefffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffff7f, 0xffefffff, x1, 88, x16)

# rs1_val == 4294967039, rs2_val == 4290772991
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xffbfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffeff, 0xffbfffff, x1, 92, x16)

# rs1_val == 4294966783, rs2_val == 4294950911
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xffffbfff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffdff, 0xffffbfff, x1, 96, x16)

# rs1_val == 4294966271, rs2_val == 67108864
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x04000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffbff, 0x04000000, x1, 100, x16)

# rs2_val == 4286578687, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000b;  op2val:0xff7fffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000b, 0xff7fffff, x1, 104, x16)

# rs2_val == 4278190079, rs1_val == 4294901759
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xfeffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffeffff, 0xfeffffff, x1, 108, x16)

# rs2_val == 4227858431, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0xfbffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000003, 0xfbffffff, x1, 112, x16)

# rs2_val == 4026531839, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000013;  op2val:0xefffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000013, 0xefffffff, x1, 116, x16)

# rs2_val == 3758096383, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0xdfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000009, 0xdfffffff, x1, 120, x16)

# rs2_val == 3221225471, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0xbfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00002000, 0xbfffffff, x1, 124, x16)

# rs2_val == 2147483647, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0x7fffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000800, 0x7fffffff, x1, 128, x16)

# rs2_val == 1431655765, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x55555555
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00200000, 0x55555555, x1, 132, x16)

# rs2_val == 2863311530, rs1_val == 4026531839
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xaaaaaaaa
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xefffffff, 0xaaaaaaaa, x1, 136, x16)

# rs1_val == 4294965247, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00080000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffff7ff, 0x00080000, x1, 140, x16)

# rs1_val == 4294963199, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffefff, 0x00000000, x1, 144, x16)

# rs1_val == 4294959103, rs2_val == 4294967287
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffffff7
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffdfff, 0xfffffff7, x1, 148, x16)

# rs1_val == 4294950911, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xf7ffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffbfff, 0xf7ffffff, x1, 152, x16)

# rs1_val == 4294934527, rs2_val == 16777216
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x01000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffff7fff, 0x01000000, x1, 156, x16)

# rs1_val == 4294836223, rs2_val == 33554432
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x02000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffdffff, 0x02000000, x1, 160, x16)

# rs1_val == 4294705151, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00010000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffbffff, 0x00010000, x1, 164, x16)

# rs1_val == 4294443007, rs2_val == 4
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000004
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfff7ffff, 0x00000004, x1, 168, x16)

# rs1_val == 4293918719, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfffffff7
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffefffff, 0xfffffff7, x1, 172, x16)

# rs1_val == 4292870143, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x0000000b
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffdfffff, 0x0000000b, x1, 176, x16)

# rs1_val == 4290772991, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000001
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffbfffff, 0x00000001, x1, 180, x16)

# rs1_val == 4286578687, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x08000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xff7fffff, 0x08000000, x1, 184, x16)

# rs1_val == 4278190079, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xffff7fff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfeffffff, 0xffff7fff, x1, 188, x16)

# rs1_val == 4261412863, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x0000000e
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfdffffff, 0x0000000e, x1, 192, x16)

# rs1_val == 4227858431, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00010000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfbffffff, 0x00010000, x1, 196, x16)

# rs1_val == 4160749567, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x0000000c
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xf7ffffff, 0x0000000c, x1, 200, x16)

# rs1_val == 3758096383, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xffefffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xdfffffff, 0xffefffff, x1, 204, x16)

# rs1_val == 3221225471, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfeffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xbfffffff, 0xfeffffff, x1, 208, x16)

# rs1_val == 2147483647, rs2_val == 2
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000002
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x7fffffff, 0x00000002, x1, 212, x16)

# rs1_val == 1431655765, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x01000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x55555555, 0x01000000, x1, 216, x16)

# rs1_val == 2863311530, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xaaaaaaaa, 0x00000000, x1, 220, x16)

# rs2_val == 16, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x00000010
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00200000, 0x00000010, x1, 224, x16)

# rs2_val == 32, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000020
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffbffff, 0x00000020, x1, 228, x16)

# rs2_val == 128, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00000080
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000003, 0x00000080, x1, 232, x16)

# rs2_val == 512, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00000200
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000003, 0x00000200, x1, 236, x16)

# rs2_val == 1024, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000400
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffbffff, 0x00000400, x1, 240, x16)

# rs2_val == 2048, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000800
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x10000000, 0x00000800, x1, 244, x16)

# rs2_val == 8192, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000a;  op2val:0x00002000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000a, 0x00002000, x1, 248, x16)

# rs2_val == 16384, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00004000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffff7ff, 0x00004000, x1, 252, x16)

# rs2_val == 32768, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00008000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xefffffff, 0x00008000, x1, 256, x16)

# rs2_val == 2097152, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00200000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000003, 0x00200000, x1, 260, x16)

# rs2_val == 268435456, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x10000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffbff, 0x10000000, x1, 264, x16)

# rs2_val == 1073741824, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x40000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfeffffff, 0x40000000, x1, 268, x16)

# rs2_val == 4294967294, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0xfffffffe
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00040000, 0xfffffffe, x1, 272, x16)

# rs2_val == 4294967293, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xfffffffd
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000400, 0xfffffffd, x1, 276, x16)

# rs2_val == 4294967291, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0xfffffffb
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00004000, 0xfffffffb, x1, 280, x16)

# rs2_val == 4294967279, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000013;  op2val:0xffffffef
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000013, 0xffffffef, x1, 284, x16)

# rs2_val == 4294967263, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xffffffdf
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfdffffff, 0xffffffdf, x1, 288, x16)

# rs2_val == 4294967231, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0xffffffbf
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00002000, 0xffffffbf, x1, 292, x16)

# rs2_val == 4294967039, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xfffffeff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000020, 0xfffffeff, x1, 296, x16)

# rs2_val == 4294966783, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xfffffdff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x02000000, 0xfffffdff, x1, 300, x16)

# rs2_val == 4294963199, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xffffefff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00008000, 0xffffefff, x1, 304, x16)

# rs2_val == 4294901759, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfffeffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfbffffff, 0xfffeffff, x1, 308, x16)

# rs2_val == 4294959103, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xffffdfff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xdfffffff, 0xffffdfff, x1, 312, x16)

# rs2_val == 4294443007, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xfff7ffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000020, 0xfff7ffff, x1, 316, x16)

# rs2_val == 4292870143, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xffdfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffbff, 0xffdfffff, x1, 320, x16)

# rs1_val == (2**(xlen)-1), rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0, rs1_val > 0 and rs2_val > 0
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x0000000f
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffff, 0x0000000f, x1, 324, x16)

# rs1_val == 1, rs2_val == 8388608
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00800000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000001, 0x00800000, x1, 328, x16)

# rs2_val == 0, rs1_val == 1048576
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x00000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00100000, 0x00000000, x1, 332, x16)

# rs2_val == (2**(xlen)-1), rs1_val == 2
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0xffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000002, 0xffffffff, x1, 336, x16)

# rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0, rs1_val == 8, rs2_val == 8
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00000008
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00000008, 0x00000008, x1, 340, x16)

# rs1_val == 64, rs2_val == 64
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0x00000040
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00000040, 0x00000040, x1, 344, x16)

# rs1_val == 524288, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x0000000b
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00080000, 0x0000000b, x1, 348, x16)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x7_1:
    .fill 19*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 88*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
