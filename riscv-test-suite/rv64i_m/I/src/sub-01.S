
#This assembly file tests the sub instruction of the RISC-V I extension for the sub covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sub)

RVTEST_SIGBASE( x6,signature_x6_1)

# rs1 == rs2 == rd, rs1==x2, rs2==x2, rd==x2, rs1_val == (-2**(xlen-1)), rs2_val == 32, rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: sub ; op1:x2; op2:x2; dest:x2; op1val:0x8000000000000000;  op2val:0x0000000000000020
TEST_RR_OP(sub, x2, x2, x2, 0x7fffffffffffffe0, 0x8000000000000000, 0x0000000000000020, x6, 0, x15)

# rs1 == rd != rs2, rs1==x8, rs2==x9, rd==x8, rs1_val == 0, rs2_val == 64
# opcode: sub ; op1:x8; op2:x9; dest:x8; op1val:0x0000000000000000;  op2val:0x0000000000000040
TEST_RR_OP(sub, x8, x8, x9, 0xffffffffffffffc0, 0x0000000000000000, 0x0000000000000040, x6, 8, x15)

# rs2 == rd != rs1, rs1==x22, rs2==x21, rd==x21, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs1_val == 9223372036854775807, rs2_val == -16777217
# opcode: sub ; op1:x22; op2:x21; dest:x21; op1val:0x7fffffffffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(sub, x21, x22, x21, 0x8000000001000000, 0x7fffffffffffffff, 0xfffffffffeffffff, x6, 16, x15)

# rs1 == rs2 != rd, rs1==x1, rs2==x1, rd==x17, rs1_val == 1, rs1_val > 0 and rs2_val > 0, rs2_val == 68719476736
# opcode: sub ; op1:x1; op2:x1; dest:x17; op1val:0x0000000000000001;  op2val:0x0000001000000000
TEST_RR_OP(sub, x17, x1, x1, 0xfffffff000000001, 0x0000000000000001, 0x0000001000000000, x6, 24, x15)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x20, rs2==x10, rd==x29, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808, rs1_val == 2199023255552
# opcode: sub ; op1:x20; op2:x10; dest:x29; op1val:0x0000020000000000;  op2val:0x8000000000000000
TEST_RR_OP(sub, x29, x20, x10, 0x8000020000000000, 0x0000020000000000, 0x8000000000000000, x6, 32, x15)

# rs1==x29, rs2==x26, rd==x1, rs2_val == 0, rs1_val == -67108865
# opcode: sub ; op1:x29; op2:x26; dest:x1; op1val:0xfffffffffbffffff;  op2val:0x0000000000000000
TEST_RR_OP(sub, x1, x29, x26, 0xfffffffffbffffff, 0xfffffffffbffffff, 0x0000000000000000, x6, 40, x15)

# rs1==x10, rs2==x20, rd==x27, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807
# opcode: sub ; op1:x10; op2:x20; dest:x27; op1val:0xfffffffffffffffc;  op2val:0x7fffffffffffffff
TEST_RR_OP(sub, x27, x10, x20, 0x7ffffffffffffffd, 0xfffffffffffffffc, 0x7fffffffffffffff, x6, 48, x15)

# rs1==x27, rs2==x14, rd==x5, rs2_val == 1, 
# opcode: sub ; op1:x27; op2:x14; dest:x5; op1val:0xffffffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sub, x5, x27, x14, 0xfffffffffffffffe, 0xffffffffffffffff, 0x0000000000000001, x6, 56, x15)

# rs1==x7, rs2==x28, rd==x4, rs1_val < 0 and rs2_val < 0, rs2_val == -4194305, rs1_val == -72057594037927937
# opcode: sub ; op1:x7; op2:x28; dest:x4; op1val:0xfeffffffffffffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(sub, x4, x7, x28, 0xff00000000400000, 0xfeffffffffffffff, 0xffffffffffbfffff, x6, 64, x15)

# rs1==x13, rs2==x4, rd==x24, rs1_val == rs2_val, rs1_val == -16777217
# opcode: sub ; op1:x13; op2:x4; dest:x24; op1val:0xfffffffffeffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(sub, x24, x13, x4, 0x0, 0xfffffffffeffffff, 0xfffffffffeffffff, x6, 72, x15)

# rs1==x31, rs2==x13, rd==x12, rs1_val == 2, 
# opcode: sub ; op1:x31; op2:x13; dest:x12; op1val:0x0000000000000002;  op2val:0x0000000000000009
TEST_RR_OP(sub, x12, x31, x13, 0xfffffffffffffff9, 0x0000000000000002, 0x0000000000000009, x6, 80, x15)

# rs1==x24, rs2==x23, rd==x14, rs1_val == 4, rs2_val == -2251799813685249
# opcode: sub ; op1:x24; op2:x23; dest:x14; op1val:0x0000000000000004;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sub, x14, x24, x23, 0x8000000000005, 0x0000000000000004, 0xfff7ffffffffffff, x6, 88, x15)

# rs1==x0, rs2==x18, rd==x20, rs1_val == 8, rs2_val == 2097152
# opcode: sub ; op1:x0; op2:x18; dest:x20; op1val:0x0000000000000008;  op2val:0x0000000000200000
TEST_RR_OP(sub, x20, x0, x18, 0xffffffffffe00008, 0x0000000000000008, 0x0000000000200000, x6, 96, x15)

# rs1==x19, rs2==x11, rd==x13, rs1_val == 16, rs2_val == -9007199254740993
# opcode: sub ; op1:x19; op2:x11; dest:x13; op1val:0x0000000000000010;  op2val:0xffdfffffffffffff
TEST_RR_OP(sub, x13, x19, x11, 0x20000000000011, 0x0000000000000010, 0xffdfffffffffffff, x6, 104, x15)

# rs1==x26, rs2==x27, rd==x0, rs1_val == 32, rs2_val == -4097
# opcode: sub ; op1:x26; op2:x27; dest:x0; op1val:0x0000000000000020;  op2val:0xffffffffffffefff
TEST_RR_OP(sub, x0, x26, x27, 0x1021, 0x0000000000000020, 0xffffffffffffefff, x6, 112, x15)

# rs1==x3, rs2==x8, rd==x25, rs1_val == 64, rs2_val == -274877906945
# opcode: sub ; op1:x3; op2:x8; dest:x25; op1val:0x0000000000000040;  op2val:0xffffffbfffffffff
TEST_RR_OP(sub, x25, x3, x8, 0x4000000041, 0x0000000000000040, 0xffffffbfffffffff, x6, 120, x15)

# rs1==x14, rs2==x30, rd==x16, rs1_val == 128, rs2_val == 9007199254740992
# opcode: sub ; op1:x14; op2:x30; dest:x16; op1val:0x0000000000000080;  op2val:0x0020000000000000
TEST_RR_OP(sub, x16, x14, x30, 0xffe0000000000080, 0x0000000000000080, 0x0020000000000000, x6, 128, x8)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x12, rs2==x5, rd==x11, rs1_val == 256, rs2_val == -4611686018427387905
# opcode: sub ; op1:x12; op2:x5; dest:x11; op1val:0x0000000000000100;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x11, x12, x5, 0x4000000000000101, 0x0000000000000100, 0xbfffffffffffffff, x1, 0, x8)

# rs1==x4, rs2==x25, rd==x18, rs1_val == 512, 
# opcode: sub ; op1:x4; op2:x25; dest:x18; op1val:0x0000000000000200;  op2val:0x0000000000000005
TEST_RR_OP(sub, x18, x4, x25, 0x1fb, 0x0000000000000200, 0x0000000000000005, x1, 8, x8)

# rs1==x25, rs2==x0, rd==x26, rs1_val == 1024, 
# opcode: sub ; op1:x25; op2:x0; dest:x26; op1val:0x0000000000000400;  op2val:0xffffffbfffffffff
TEST_RR_OP(sub, x26, x25, x0, 0x4000000401, 0x0000000000000400, 0xffffffbfffffffff, x1, 16, x8)

# rs1==x17, rs2==x24, rd==x28, rs1_val == 2048, rs2_val == 4611686018427387904
# opcode: sub ; op1:x17; op2:x24; dest:x28; op1val:0x0000000000000800;  op2val:0x4000000000000000
TEST_RR_OP(sub, x28, x17, x24, 0xc000000000000800, 0x0000000000000800, 0x4000000000000000, x1, 24, x8)

# rs1==x6, rs2==x16, rd==x23, rs1_val == 4096, rs2_val == -288230376151711745
# opcode: sub ; op1:x6; op2:x16; dest:x23; op1val:0x0000000000001000;  op2val:0xfbffffffffffffff
TEST_RR_OP(sub, x23, x6, x16, 0x400000000001001, 0x0000000000001000, 0xfbffffffffffffff, x1, 32, x8)

# rs1==x9, rs2==x12, rd==x22, rs1_val == 8192, rs2_val == -67108865
# opcode: sub ; op1:x9; op2:x12; dest:x22; op1val:0x0000000000002000;  op2val:0xfffffffffbffffff
TEST_RR_OP(sub, x22, x9, x12, 0x4002001, 0x0000000000002000, 0xfffffffffbffffff, x1, 40, x8)

# rs1==x11, rs2==x3, rd==x31, rs1_val == 16384, 
# opcode: sub ; op1:x11; op2:x3; dest:x31; op1val:0x0000000000004000;  op2val:0x0000000000000009
TEST_RR_OP(sub, x31, x11, x3, 0x3ff7, 0x0000000000004000, 0x0000000000000009, x1, 48, x8)

# rs1==x30, rs2==x31, rd==x19, rs1_val == 32768, rs2_val == 18014398509481984
# opcode: sub ; op1:x30; op2:x31; dest:x19; op1val:0x0000000000008000;  op2val:0x0040000000000000
TEST_RR_OP(sub, x19, x30, x31, 0xffc0000000008000, 0x0000000000008000, 0x0040000000000000, x1, 56, x8)

# rs1==x28, rs2==x22, rd==x3, rs1_val == 65536, rs2_val == -68719476737
# opcode: sub ; op1:x28; op2:x22; dest:x3; op1val:0x0000000000010000;  op2val:0xffffffefffffffff
TEST_RR_OP(sub, x3, x28, x22, 0x1000010001, 0x0000000000010000, 0xffffffefffffffff, x1, 64, x8)

# rs1==x23, rs2==x19, rd==x10, rs1_val == 131072, rs2_val == 2
# opcode: sub ; op1:x23; op2:x19; dest:x10; op1val:0x0000000000020000;  op2val:0x0000000000000002
TEST_RR_OP(sub, x10, x23, x19, 0x1fffe, 0x0000000000020000, 0x0000000000000002, x1, 72, x8)

# rs1==x21, rs2==x29, rd==x9, rs1_val == 262144, rs2_val == 72057594037927936
# opcode: sub ; op1:x21; op2:x29; dest:x9; op1val:0x0000000000040000;  op2val:0x0100000000000000
TEST_RR_OP(sub, x9, x21, x29, 0xff00000000040000, 0x0000000000040000, 0x0100000000000000, x1, 80, x8)

# rs1==x5, rs2==x6, rd==x7, rs1_val == 524288, rs2_val == 1125899906842624
# opcode: sub ; op1:x5; op2:x6; dest:x7; op1val:0x0000000000080000;  op2val:0x0004000000000000
TEST_RR_OP(sub, x7, x5, x6, 0xfffc000000080000, 0x0000000000080000, 0x0004000000000000, x1, 88, x8)

# rs1==x18, rs2==x17, rd==x15, rs1_val == 1048576, rs2_val == 576460752303423488
# opcode: sub ; op1:x18; op2:x17; dest:x15; op1val:0x0000000000100000;  op2val:0x0800000000000000
TEST_RR_OP(sub, x15, x18, x17, 0xf800000000100000, 0x0000000000100000, 0x0800000000000000, x1, 96, x8)

# rs1==x16, rs2==x7, rd==x6, rs1_val == 2097152, rs2_val == 562949953421312
# opcode: sub ; op1:x16; op2:x7; dest:x6; op1val:0x0000000000200000;  op2val:0x0002000000000000
TEST_RR_OP(sub, x6, x16, x7, 0xfffe000000200000, 0x0000000000200000, 0x0002000000000000, x1, 104, x8)

# rs1==x15, rs1_val == 4194304, rs2_val == 2199023255552
# opcode: sub ; op1:x15; op2:x25; dest:x19; op1val:0x0000000000400000;  op2val:0x0000020000000000
TEST_RR_OP(sub, x19, x15, x25, 0xfffffe0000400000, 0x0000000000400000, 0x0000020000000000, x1, 112, x8)

# rs2==x15, rs1_val == 8388608, rs2_val == 1152921504606846976
# opcode: sub ; op1:x4; op2:x15; dest:x10; op1val:0x0000000000800000;  op2val:0x1000000000000000
TEST_RR_OP(sub, x10, x4, x15, 0xf000000000800000, 0x0000000000800000, 0x1000000000000000, x1, 120, x8)

# rd==x30, rs1_val == 16777216, rs2_val == 8388608
# opcode: sub ; op1:x26; op2:x2; dest:x30; op1val:0x0000000001000000;  op2val:0x0000000000800000
TEST_RR_OP(sub, x30, x26, x2, 0x800000, 0x0000000001000000, 0x0000000000800000, x1, 128, x8)

# rs1_val == 33554432, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4000000002000001, 0x0000000002000000, 0xbfffffffffffffff, x1, 136, x8)

# rs1_val == 67108864, rs2_val == -134217729
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(sub, x12, x10, x11, 0xc000001, 0x0000000004000000, 0xfffffffff7ffffff, x1, 144, x8)

# rs1_val == 134217728, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0800000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xf800000008000000, 0x0000000008000000, 0x0800000000000000, x1, 152, x8)

# rs1_val == 268435456, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xfffffffffffffff9
TEST_RR_OP(sub, x12, x10, x11, 0x10000007, 0x0000000010000000, 0xfffffffffffffff9, x1, 160, x8)

# rs1_val == 536870912, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xc000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x4000000020000000, 0x0000000020000000, 0xc000000000000000, x1, 168, x8)

# rs1_val == 1073741824, rs2_val == 1099511627776
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000010000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffff0040000000, 0x0000000040000000, 0x0000010000000000, x1, 176, x8)

# rs1_val == 2147483648, rs2_val == 2251799813685248
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0008000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfff8000080000000, 0x0000000080000000, 0x0008000000000000, x1, 184, x8)

# rs1_val == 4294967296, rs2_val == -1099511627777
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x10100000001, 0x0000000100000000, 0xfffffeffffffffff, x1, 192, x8)

# rs1_val == 8589934592, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000020
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffffe0, 0x0000000200000000, 0x0000000000000020, x1, 200, x8)

# rs1_val == 17179869184, rs2_val == 131072
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000020000
TEST_RR_OP(sub, x12, x10, x11, 0x3fffe0000, 0x0000000400000000, 0x0000000000020000, x1, 208, x8)

# rs1_val == 34359738368, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4000000800000001, 0x0000000800000000, 0xbfffffffffffffff, x1, 216, x8)

# rs1_val == 68719476736, rs2_val == 262144
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000040000
TEST_RR_OP(sub, x12, x10, x11, 0xffffc0000, 0x0000001000000000, 0x0000000000040000, x1, 224, x8)

# rs1_val == 137438953472, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0004000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffc002000000000, 0x0000002000000000, 0x0004000000000000, x1, 232, x8)

# rs1_val == 274877906944, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xffffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4000000001, 0x0000004000000000, 0xffffffffffffffff, x1, 240, x8)

# rs1_val == 549755813888, rs2_val == -6148914691236517206
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sub, x12, x10, x11, 0x555555d555555556, 0x0000008000000000, 0xaaaaaaaaaaaaaaaa, x1, 248, x8)

# rs1_val == 1099511627776, rs2_val == -1125899906842625
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffbffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4010000000001, 0x0000010000000000, 0xfffbffffffffffff, x1, 256, x8)

# rs1_val == 4398046511104, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0008000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfff8040000000000, 0x0000040000000000, 0x0008000000000000, x1, 264, x8)

# rs1_val == 8796093022208, rs2_val == 140737488355328
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000800000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffff880000000000, 0x0000080000000000, 0x0000800000000000, x1, 272, x8)

# rs1_val == 17592186044416, rs2_val == -32769
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(sub, x12, x10, x11, 0x100000008001, 0x0000100000000000, 0xffffffffffff7fff, x1, 280, x8)

# rs1_val == 35184372088832, rs2_val == -17592186044417
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x300000000001, 0x0000200000000000, 0xffffefffffffffff, x1, 288, x8)

# rs1_val == 70368744177664, rs2_val == -33
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xffffffffffffffdf
TEST_RR_OP(sub, x12, x10, x11, 0x400000000021, 0x0000400000000000, 0xffffffffffffffdf, x1, 296, x8)

# rs1_val == 140737488355328, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0004000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffc800000000000, 0x0000800000000000, 0x0004000000000000, x1, 304, x8)

# rs1_val == 281474976710656, rs2_val == 524288
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000080000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff80000, 0x0001000000000000, 0x0000000000080000, x1, 312, x8)

# rs1_val == 562949953421312, rs2_val == -144115188075855873
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x202000000000001, 0x0002000000000000, 0xfdffffffffffffff, x1, 320, x8)

# rs1_val == 1125899906842624, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000200000
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffe00000, 0x0004000000000000, 0x0000000000200000, x1, 328, x8)

# rs1_val == 2251799813685248, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x8010000000001, 0x0008000000000000, 0xfffffeffffffffff, x1, 336, x8)

# rs1_val == 4503599627370496, rs2_val == 512
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000200
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffe00, 0x0010000000000000, 0x0000000000000200, x1, 344, x8)

# rs1_val == 9007199254740992, rs2_val == 137438953472
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000002000000000
TEST_RR_OP(sub, x12, x10, x11, 0x1fffe000000000, 0x0020000000000000, 0x0000002000000000, x1, 352, x8)

# rs1_val == 18014398509481984, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0020000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x20000000000000, 0x0040000000000000, 0x0020000000000000, x1, 360, x8)

# rs1_val == 36028797018963968, rs2_val == -2097153
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(sub, x12, x10, x11, 0x80000000200001, 0x0080000000000000, 0xffffffffffdfffff, x1, 368, x8)

# rs1_val == 72057594037927936, rs2_val == 6148914691236517205
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x5555555555555555
TEST_RR_OP(sub, x12, x10, x11, 0xabaaaaaaaaaaaaab, 0x0100000000000000, 0x5555555555555555, x1, 376, x8)

# rs1_val == 144115188075855872, rs2_val == 1048576
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000100000
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffffff00000, 0x0200000000000000, 0x0000000000100000, x1, 384, x8)

# rs1_val == 288230376151711744, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(sub, x12, x10, x11, 0x400000000000004, 0x0400000000000000, 0xfffffffffffffffc, x1, 392, x8)

# rs1_val == 576460752303423488, rs2_val == 16
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000010
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffffffffff0, 0x0800000000000000, 0x0000000000000010, x1, 400, x8)

# rs1_val == 1152921504606846976, rs2_val == -131073
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(sub, x12, x10, x11, 0x1000000000020001, 0x1000000000000000, 0xfffffffffffdffff, x1, 408, x8)

# rs1_val == 2305843009213693952, rs2_val == 67108864
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000004000000
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffffffc000000, 0x2000000000000000, 0x0000000004000000, x1, 416, x8)

# rs1_val == 4611686018427387904, rs2_val == -268435457
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xffffffffefffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4000000010000001, 0x4000000000000000, 0xffffffffefffffff, x1, 424, x8)

# rs1_val == -2, rs2_val == 4503599627370496
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0010000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffeffffffffffffe, 0xfffffffffffffffe, 0x0010000000000000, x1, 432, x8)

# rs1_val == -3, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xfffffffffffffffa
TEST_RR_OP(sub, x12, x10, x11, 0x3, 0xfffffffffffffffd, 0xfffffffffffffffa, x1, 440, x8)

# rs1_val == -5, rs2_val == -140737488355329
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xffff7fffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffffffffc, 0xfffffffffffffffb, 0xffff7fffffffffff, x1, 448, x8)

# rs1_val == -9, rs2_val == 34359738368
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000800000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff7fffffff7, 0xfffffffffffffff7, 0x0000000800000000, x1, 456, x8)

# rs1_val == -17, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0040000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffbfffffffffffef, 0xffffffffffffffef, 0x0040000000000000, x1, 464, x8)

# rs1_val == -33, rs2_val == -536870913
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xffffffffdfffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffe0, 0xffffffffffffffdf, 0xffffffffdfffffff, x1, 472, x8)

# rs1_val == -65, rs2_val == 536870912
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000020000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffdfffffbf, 0xffffffffffffffbf, 0x0000000020000000, x1, 480, x8)

# rs1_val == -129, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffffffffeffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffff80, 0xffffffffffffff7f, 0xfffffffffeffffff, x1, 488, x8)

# rs1_val == -257, rs2_val == 144115188075855872
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0200000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfdfffffffffffeff, 0xfffffffffffffeff, 0x0200000000000000, x1, 496, x8)

# rs2_val == -4503599627370497, rs1_val == -18014398509481985
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffd0000000000000, 0xffbfffffffffffff, 0xffefffffffffffff, x1, 504, x8)

# rs2_val == -18014398509481985, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x42000000000001, 0x0002000000000000, 0xffbfffffffffffff, x1, 512, x8)

# rs2_val == -36028797018963969, rs1_val == -70368744177665
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fc00000000000, 0xffffbfffffffffff, 0xff7fffffffffffff, x1, 520, x8)

# rs2_val == -72057594037927937, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xfeffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x100000000100001, 0x0000000000100000, 0xfeffffffffffffff, x1, 528, x8)

# rs2_val == -576460752303423489, rs1_val == -1152921504606846977
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xf800000000000000, 0xefffffffffffffff, 0xf7ffffffffffffff, x1, 536, x8)

# rs2_val == -1152921504606846977, rs1_val == -562949953421313
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffe000000000000, 0xfffdffffffffffff, 0xefffffffffffffff, x1, 544, x8)

# rs2_val == -2305843009213693953, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0xdfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2000000000000041, 0x0000000000000040, 0xdfffffffffffffff, x1, 552, x8)

# rs1_val == -513, rs2_val == 4294967296
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000100000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffefffffdff, 0xfffffffffffffdff, 0x0000000100000000, x1, 560, x8)

# rs1_val == -1025, rs2_val == 17592186044416
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000100000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffeffffffffbff, 0xfffffffffffffbff, 0x0000100000000000, x1, 568, x8)

# rs1_val == -2049, rs2_val == -137438953473
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xffffffdfffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffff800, 0xfffffffffffff7ff, 0xffffffdfffffffff, x1, 576, x8)

# rs1_val == -4097, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffffff000, 0xffffffffffffefff, 0xffbfffffffffffff, x1, 584, x8)

# rs1_val == -8193, rs2_val == 4096
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000001000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffcfff, 0xffffffffffffdfff, 0x0000000000001000, x1, 592, x8)

# rs1_val == -16385, rs2_val == -35184372088833
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xffffdfffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffffc000, 0xffffffffffffbfff, 0xffffdfffffffffff, x1, 600, x8)

# rs1_val == -32769, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3fffffffffff8000, 0xffffffffffff7fff, 0xbfffffffffffffff, x1, 608, x8)

# rs1_val == -65537, rs2_val == 36028797018963968
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0080000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xff7ffffffffeffff, 0xfffffffffffeffff, 0x0080000000000000, x1, 616, x8)

# rs1_val == -131073, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000020000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffbffff, 0xfffffffffffdffff, 0x0000000000020000, x1, 624, x8)

# rs1_val == -262145, rs2_val == -281474976710657
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffc0000, 0xfffffffffffbffff, 0xfffeffffffffffff, x1, 632, x8)

# rs1_val == -524289, rs2_val == 128
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000080
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffff7ff7f, 0xfffffffffff7ffff, 0x0000000000000080, x1, 640, x8)

# rs1_val == -1048577, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(sub, x12, x10, x11, 0x300000, 0xffffffffffefffff, 0xffffffffffbfffff, x1, 648, x8)

# rs1_val == -2097153, rs2_val == 70368744177664
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000400000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffbfffffdfffff, 0xffffffffffdfffff, 0x0000400000000000, x1, 656, x8)

# rs1_val == -4194305, rs2_val == 274877906944
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000004000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffbfffbfffff, 0xffffffffffbfffff, 0x0000004000000000, x1, 664, x8)

# rs1_val == -8388609, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000020
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffff7fffdf, 0xffffffffff7fffff, 0x0000000000000020, x1, 672, x8)

# rs1_val == -33554433, rs2_val == -524289
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffe080000, 0xfffffffffdffffff, 0xfffffffffff7ffff, x1, 680, x8)

# rs1_val == -134217729, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffffff8000000, 0xfffffffff7ffffff, 0xdfffffffffffffff, x1, 688, x8)

# rs1_val == -268435457, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0100000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfeffffffefffffff, 0xffffffffefffffff, 0x0100000000000000, x1, 696, x8)

# rs1_val == -536870913, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0010000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffefffffdfffffff, 0xffffffffdfffffff, 0x0010000000000000, x1, 704, x8)

# rs1_val == -1073741825, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xfffffffffffffff9
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffc0000006, 0xffffffffbfffffff, 0xfffffffffffffff9, x1, 712, x8)

# rs1_val == -2147483649, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000000200
TEST_RR_OP(sub, x12, x10, x11, 0xffffffff7ffffdff, 0xffffffff7fffffff, 0x0000000000000200, x1, 720, x8)

# rs1_val == -4294967297, rs2_val == 281474976710656
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0001000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffefffeffffffff, 0xfffffffeffffffff, 0x0001000000000000, x1, 728, x8)

# rs1_val == -8589934593, rs2_val == -16385
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffe00004000, 0xfffffffdffffffff, 0xffffffffffffbfff, x1, 736, x8)

# rs1_val == -17179869185, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000040000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffbfffbffff, 0xfffffffbffffffff, 0x0000000000040000, x1, 744, x8)

# rs1_val == -34359738369, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000001000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffe7ffffffff, 0xfffffff7ffffffff, 0x0000001000000000, x1, 752, x8)

# rs1_val == -68719476737, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0001000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffeffefffffffff, 0xffffffefffffffff, 0x0001000000000000, x1, 760, x8)

# rs1_val == -137438953473, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffe000000000, 0xffffffdfffffffff, 0xfffeffffffffffff, x1, 768, x8)

# rs1_val == -274877906945, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffc004000000, 0xffffffbfffffffff, 0xfffffffffbffffff, x1, 776, x8)

# rs1_val == -549755813889, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffff7fffffffff, 0xffffff7fffffffff, 0x0000000000000000, x1, 784, x8)

# rs1_val == -1099511627777, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xc000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffeffffffffff, 0xfffffeffffffffff, 0xc000000000000000, x1, 792, x8)

# rs1_val == -2199023255553, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffe0000400000, 0xfffffdffffffffff, 0xffffffffffbfffff, x1, 800, x8)

# rs1_val == -4398046511105, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0020000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffdffbffffffffff, 0xfffffbffffffffff, 0x0020000000000000, x1, 808, x8)

# rs1_val == -8796093022209, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000004000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffff7fffbffffff, 0xfffff7ffffffffff, 0x0000000004000000, x1, 816, x8)

# rs1_val == -17592186044417, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000100000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffdfffffffffff, 0xffffefffffffffff, 0x0000100000000000, x1, 824, x8)

# rs1_val == -35184372088833, rs2_val == -8589934593
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffe00200000000, 0xffffdfffffffffff, 0xfffffffdffffffff, x1, 832, x8)

# rs1_val == -140737488355329, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000200
TEST_RR_OP(sub, x12, x10, x11, 0xffff7ffffffffdff, 0xffff7fffffffffff, 0x0000000000000200, x1, 840, x8)

# rs1_val == -281474976710657, rs2_val == 8192
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000002000
TEST_RR_OP(sub, x12, x10, x11, 0xfffeffffffffdfff, 0xfffeffffffffffff, 0x0000000000002000, x1, 848, x8)

# rs1_val == -1125899906842625, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000000040
TEST_RR_OP(sub, x12, x10, x11, 0xfffbffffffffffbf, 0xfffbffffffffffff, 0x0000000000000040, x1, 856, x8)

# rs1_val == -2251799813685249, rs2_val == -2147483649
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfff8000080000000, 0xfff7ffffffffffff, 0xffffffff7fffffff, x1, 864, x8)

# rs1_val == -4503599627370497, rs2_val == -8193
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(sub, x12, x10, x11, 0xfff0000000002000, 0xffefffffffffffff, 0xffffffffffffdfff, x1, 872, x8)

# rs1_val == -9007199254740993, rs2_val == -1025
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffffffffffffbff
TEST_RR_OP(sub, x12, x10, x11, 0xffe0000000000400, 0xffdfffffffffffff, 0xfffffffffffffbff, x1, 880, x8)

# rs1_val == -36028797018963969, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1f80000000000000, 0xff7fffffffffffff, 0xdfffffffffffffff, x1, 888, x8)

# rs1_val == -144115188075855873, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000020000000
TEST_RR_OP(sub, x12, x10, x11, 0xfdffffffdfffffff, 0xfdffffffffffffff, 0x0000000020000000, x1, 896, x8)

# rs1_val == -288230376151711745, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0100000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfaffffffffffffff, 0xfbffffffffffffff, 0x0100000000000000, x1, 904, x8)

# rs1_val == -576460752303423489, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x5555555555555555
TEST_RR_OP(sub, x12, x10, x11, 0xa2aaaaaaaaaaaaaa, 0xf7ffffffffffffff, 0x5555555555555555, x1, 912, x8)

# rs1_val == -2305843009213693953, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2000000000000000, 0xdfffffffffffffff, 0xbfffffffffffffff, x1, 920, x8)

# rs1_val == -4611686018427387905, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x3fffffffffffffff, 0xbfffffffffffffff, 0x8000000000000000, x1, 928, x8)

# rs1_val == 6148914691236517205, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x5555555555555555
TEST_RR_OP(sub, x12, x10, x11, 0x0, 0x5555555555555555, 0x5555555555555555, x1, 936, x8)

# rs1_val == -6148914691236517206, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xaaeaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaaa, 0xffbfffffffffffff, x1, 944, x8)

# rs2_val == 4, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0x0000000000000004
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffffffe, 0x0000000000000002, 0x0000000000000004, x1, 952, x8)

# rs2_val == 8, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffffffffff8, 0x4000000000000000, 0x0000000000000008, x1, 960, x8)

# rs2_val == 256, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000100
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffffffffff00, 0x2000000000000000, 0x0000000000000100, x1, 968, x8)

# rs2_val == 1024, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000400
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffffbdf, 0xffffffffffffffdf, 0x0000000000000400, x1, 976, x8)

# rs2_val == 2048, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000800
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffff7f7ff, 0xfffffffffff7ffff, 0x0000000000000800, x1, 984, x8)

# rs2_val == 16384, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0x0000000000004000
TEST_RR_OP(sub, x12, x10, x11, 0x0, 0x0000000000004000, 0x0000000000004000, x1, 992, x8)

# rs2_val == 32768, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000008000
TEST_RR_OP(sub, x12, x10, x11, 0xffff8000, 0x0000000100000000, 0x0000000000008000, x1, 1000, x8)

# rs2_val == 65536, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000010000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffff7feffff, 0xfffffffff7ffffff, 0x0000000000010000, x1, 1008, x8)

# rs2_val == 4194304, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000400000
TEST_RR_OP(sub, x12, x10, x11, 0xfffeffffffbfffff, 0xfffeffffffffffff, 0x0000000000400000, x1, 1016, x8)

# rs2_val == 16777216, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0x0000000001000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffff000003, 0x0000000000000003, 0x0000000001000000, x1, 1024, x8)

# rs2_val == 33554432, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000002000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffe800000, 0x0000000000800000, 0x0000000002000000, x1, 1032, x8)

# rs2_val == 134217728, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000008000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffc000000, 0x0000000004000000, 0x0000000008000000, x1, 1040, x8)

# rs2_val == 268435456, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000010000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffdffefffffff, 0xfffffdffffffffff, 0x0000000010000000, x1, 1048, x8)

# rs2_val == 1073741824, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000040000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffbfbfffff, 0xffffffffffbfffff, 0x0000000040000000, x1, 1056, x8)

# rs2_val == 2147483648, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000080000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffe7fffffff, 0xfffffffeffffffff, 0x0000000080000000, x1, 1064, x8)

# rs2_val == 8589934592, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000200000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffdffffffbf, 0xffffffffffffffbf, 0x0000000200000000, x1, 1072, x8)

# rs2_val == 17179869184, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000400000000
TEST_RR_OP(sub, x12, x10, x11, 0xdffffffbffffffff, 0xdfffffffffffffff, 0x0000000400000000, x1, 1080, x8)

# rs2_val == 288230376151711744, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0x0400000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfbfffffffffffff8, 0xfffffffffffffff8, 0x0400000000000000, x1, 1088, x8)

# rs2_val == 2305843009213693952, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x2000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xdffffffffffffdff, 0xfffffffffffffdff, 0x2000000000000000, x1, 1096, x8)

# rs2_val == -2, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0xfffffffffffffffe
TEST_RR_OP(sub, x12, x10, x11, 0x7, 0x0000000000000005, 0xfffffffffffffffe, x1, 1104, x8)

# rs2_val == -3, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(sub, x12, x10, x11, 0xfffffc0000000002, 0xfffffbffffffffff, 0xfffffffffffffffd, x1, 1112, x8)

# rs2_val == -5, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0xfffffffffffffffb
TEST_RR_OP(sub, x12, x10, x11, 0x105, 0x0000000000000100, 0xfffffffffffffffb, x1, 1120, x8)

# rs2_val == -9, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(sub, x12, x10, x11, 0x4000000009, 0x0000004000000000, 0xfffffffffffffff7, x1, 1128, x8)

# rs2_val == -17, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xffffffffffffffef
TEST_RR_OP(sub, x12, x10, x11, 0x80000011, 0x0000000080000000, 0xffffffffffffffef, x1, 1136, x8)

# rs2_val == -65, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0xffffffffffffffbf
TEST_RR_OP(sub, x12, x10, x11, 0x10041, 0x0000000000010000, 0xffffffffffffffbf, x1, 1144, x8)

# rs2_val == -129, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffc;  op2val:0xffffffffffffff7f
TEST_RR_OP(sub, x12, x10, x11, 0x7d, 0xfffffffffffffffc, 0xffffffffffffff7f, x1, 1152, x8)

# rs2_val == -257, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(sub, x12, x10, x11, 0xc000000000000100, 0xbfffffffffffffff, 0xfffffffffffffeff, x1, 1160, x8)

# rs2_val == -513, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(sub, x12, x10, x11, 0x1000000000201, 0x0001000000000000, 0xfffffffffffffdff, x1, 1168, x8)

# rs2_val == -2049, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffff000800, 0xfffffffffeffffff, 0xfffffffffffff7ff, x1, 1176, x8)

# rs2_val == -65537, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffffffeffff
TEST_RR_OP(sub, x12, x10, x11, 0x5555555555565556, 0x5555555555555555, 0xfffffffffffeffff, x1, 1184, x8)

# rs2_val == 4398046511104, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000040000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffc0000000000, 0x8000000000000000, 0x0000040000000000, x1, 1192, x8)

# rs2_val == -262145, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(sub, x12, x10, x11, 0x800040001, 0x0000000800000000, 0xfffffffffffbffff, x1, 1200, x8)

# rs2_val == -1048577, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xffffffffffefffff
TEST_RR_OP(sub, x12, x10, x11, 0x80000, 0xfffffffffff7ffff, 0xffffffffffefffff, x1, 1208, x8)

# rs2_val == -8388609, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0xffffffffff7fffff
TEST_RR_OP(sub, x12, x10, x11, 0x800007, 0x0000000000000006, 0xffffffffff7fffff, x1, 1216, x8)

# rs2_val == 8796093022208, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000080000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffff7fffffffffb, 0xfffffffffffffffb, 0x0000080000000000, x1, 1224, x8)

# rs2_val == -33554433, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(sub, x12, x10, x11, 0x0, 0xfffffffffdffffff, 0xfffffffffdffffff, x1, 1232, x8)

# rs2_val == -1073741825, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffc00040000000, 0xffffbfffffffffff, 0xffffffffbfffffff, x1, 1240, x8)

# rs2_val == -4294967297, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff9;  op2val:0xfffffffeffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffa, 0xfffffffffffffff9, 0xfffffffeffffffff, x1, 1248, x8)

# rs2_val == -17179869185, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0xfffffffbffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x400000008, 0x0000000000000007, 0xfffffffbffffffff, x1, 1256, x8)

# rs2_val == -34359738369, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x808000001, 0x0000000008000000, 0xfffffff7ffffffff, x1, 1264, x8)

# rs2_val == 549755813888, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0x0000008000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffff7ffffffff6, 0xfffffffffffffff6, 0x0000008000000000, x1, 1272, x8)

# rs2_val == -549755813889, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xffffff7fffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x555555d555555556, 0x5555555555555555, 0xffffff7fffffffff, x1, 1280, x8)

# rs2_val == -2199023255553, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x21000000001, 0x0000001000000000, 0xfffffdffffffffff, x1, 1288, x8)

# rs2_val == -4398046511105, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xfffffbffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3fffffffff8, 0xfffffffffffffff7, 0xfffffbffffffffff, x1, 1296, x8)

# rs2_val == -8796093022209, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xfffff7ffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x80000000002, 0x0000000000000001, 0xfffff7ffffffffff, x1, 1304, x8)

# rs2_val == 35184372088832, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000200000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffdfffefffffff, 0xffffffffefffffff, 0x0000200000000000, x1, 1312, x8)

# rs2_val == -70368744177665, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ffc00000000, 0xfffffffbffffffff, 0xffffbfffffffffff, x1, 1320, x8)

# rs2_val == -562949953421313, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0xfffdffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2000000200001, 0x0000000000200000, 0xfffdffffffffffff, x1, 1328, x8)

# rs1_val == 8, rs2_val == 2097152
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0000000000200000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffe00008, 0x0000000000000008, 0x0000000000200000, x1, 1336, x8)

# rs1_val == 32, rs2_val == -4097
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0xffffffffffffefff
TEST_RR_OP(sub, x12, x10, x11, 0x1021, 0x0000000000000020, 0xffffffffffffefff, x1, 1344, x8)

# rs1_val == 1024, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0xffffffbfffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4000000401, 0x0000000000000400, 0xffffffbfffffffff, x1, 1352, x8)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x6_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 170*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
