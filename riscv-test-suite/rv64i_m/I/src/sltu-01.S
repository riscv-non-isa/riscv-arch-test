
#This assembly file tests the sltu instruction of the RISC-V I extension for the sltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltu)

RVTEST_SIGBASE( x10,signature_x10_1)

# rs1 == rs2 == rd, rs1==x25, rs2==x25, rd==x25, rs1_val == 0, rs2_val == 17870283321406128127
# opcode: sltu ; op1:x25; op2:x25; dest:x25; op1val:0x0000000000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sltu, x25, x25, x25, 0x1, 0x0000000000000000, 0xf7ffffffffffffff, x10, 0, x18)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x19, rs2==x29, rd==x3, rs1_val == (2**(xlen)-1), rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0, rs1_val > 0 and rs2_val > 0, rs2_val == 16140901064495857663
# opcode: sltu ; op1:x19; op2:x29; dest:x3; op1val:0xffffffffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(sltu, x3, x19, x29, 0x0, 0xffffffffffffffff, 0xdfffffffffffffff, x10, 8, x18)

# rs1 == rs2 != rd, rs1==x17, rs2==x17, rd==x9, rs1_val == 1, rs2_val == 512
# opcode: sltu ; op1:x17; op2:x17; dest:x9; op1val:0x0000000000000001;  op2val:0x0000000000000200
TEST_RR_OP(sltu, x9, x17, x17, 0x1, 0x0000000000000001, 0x0000000000000200, x10, 16, x18)

# rs2 == rd != rs1, rs1==x16, rs2==x13, rd==x13, rs2_val == 0, rs1_val == 18446744069414584319
# opcode: sltu ; op1:x16; op2:x13; dest:x13; op1val:0xfffffffeffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sltu, x13, x16, x13, 0x0, 0xfffffffeffffffff, 0x0000000000000000, x10, 24, x18)

# rs1 == rd != rs2, rs1==x8, rs2==x5, rd==x8, rs2_val == (2**(xlen)-1), rs1_val == 18410715276690587647
# opcode: sltu ; op1:x8; op2:x5; dest:x8; op1val:0xff7fffffffffffff;  op2val:0xffffffffffffffff
TEST_RR_OP(sltu, x8, x8, x5, 0x1, 0xff7fffffffffffff, 0xffffffffffffffff, x10, 32, x18)

# rs1==x24, rs2==x4, rd==x7, rs2_val == 1, 
# opcode: sltu ; op1:x24; op2:x4; dest:x7; op1val:0x0000000000000000;  op2val:0x0000000000000001
TEST_RR_OP(sltu, x7, x24, x4, 0x1, 0x0000000000000000, 0x0000000000000001, x10, 40, x18)

# rs1==x13, rs2==x16, rd==x12, rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0, rs1_val == 65536, rs2_val == 65536
# opcode: sltu ; op1:x13; op2:x16; dest:x12; op1val:0x0000000000010000;  op2val:0x0000000000010000
TEST_RR_OP(sltu, x12, x13, x16, 0x0, 0x0000000000010000, 0x0000000000010000, x10, 48, x18)

# rs1==x31, rs2==x23, rd==x20, rs1_val == 2, rs2_val == 17293822569102704639
# opcode: sltu ; op1:x31; op2:x23; dest:x20; op1val:0x0000000000000002;  op2val:0xefffffffffffffff
TEST_RR_OP(sltu, x20, x31, x23, 0x1, 0x0000000000000002, 0xefffffffffffffff, x10, 56, x18)

# rs1==x15, rs2==x6, rd==x19, rs1_val == 4, rs2_val == 18446739675663040511
# opcode: sltu ; op1:x15; op2:x6; dest:x19; op1val:0x0000000000000004;  op2val:0xfffffbffffffffff
TEST_RR_OP(sltu, x19, x15, x6, 0x1, 0x0000000000000004, 0xfffffbffffffffff, x10, 64, x18)

# rs1==x7, rs2==x14, rd==x23, rs1_val == 8, rs2_val == 4294967296
# opcode: sltu ; op1:x7; op2:x14; dest:x23; op1val:0x0000000000000008;  op2val:0x0000000100000000
TEST_RR_OP(sltu, x23, x7, x14, 0x1, 0x0000000000000008, 0x0000000100000000, x10, 72, x18)

# rs1==x12, rs2==x30, rd==x24, rs1_val == 16, 
# opcode: sltu ; op1:x12; op2:x30; dest:x24; op1val:0x0000000000000010;  op2val:0x0000000000000006
TEST_RR_OP(sltu, x24, x12, x30, 0x0, 0x0000000000000010, 0x0000000000000006, x10, 80, x18)

# rs1==x14, rs2==x11, rd==x0, rs1_val == 32, rs2_val == 144115188075855872
# opcode: sltu ; op1:x14; op2:x11; dest:x0; op1val:0x0000000000000020;  op2val:0x0200000000000000
TEST_RR_OP(sltu, x0, x14, x11, 0x1, 0x0000000000000020, 0x0200000000000000, x10, 88, x18)

# rs1==x11, rs2==x7, rd==x2, rs1_val == 64, 
# opcode: sltu ; op1:x11; op2:x7; dest:x2; op1val:0x0000000000000040;  op2val:0x0000000000000009
TEST_RR_OP(sltu, x2, x11, x7, 0x0, 0x0000000000000040, 0x0000000000000009, x10, 96, x18)

# rs1==x29, rs2==x28, rd==x22, rs1_val == 128, rs2_val == 18446744073709518847
# opcode: sltu ; op1:x29; op2:x28; dest:x22; op1val:0x0000000000000080;  op2val:0xffffffffffff7fff
TEST_RR_OP(sltu, x22, x29, x28, 0x1, 0x0000000000000080, 0xffffffffffff7fff, x10, 104, x18)

# rs1==x27, rs2==x2, rd==x1, rs1_val == 256, rs2_val == 18445618173802708991
# opcode: sltu ; op1:x27; op2:x2; dest:x1; op1val:0x0000000000000100;  op2val:0xfffbffffffffffff
TEST_RR_OP(sltu, x1, x27, x2, 0x1, 0x0000000000000100, 0xfffbffffffffffff, x10, 112, x18)

# rs1==x20, rs2==x22, rd==x28, rs1_val == 512, rs2_val == 18446744039349813247
# opcode: sltu ; op1:x20; op2:x22; dest:x28; op1val:0x0000000000000200;  op2val:0xfffffff7ffffffff
TEST_RR_OP(sltu, x28, x20, x22, 0x1, 0x0000000000000200, 0xfffffff7ffffffff, x10, 120, x11)

# rs1==x18, rs2==x20, rd==x6, rs1_val == 1024, rs2_val == 34359738368
# opcode: sltu ; op1:x18; op2:x20; dest:x6; op1val:0x0000000000000400;  op2val:0x0000000800000000
TEST_RR_OP(sltu, x6, x18, x20, 0x1, 0x0000000000000400, 0x0000000800000000, x10, 128, x11)
RVTEST_SIGBASE( x7,signature_x7_0)

# rs1==x10, rs2==x3, rd==x14, rs1_val == 2048, rs2_val == 18446744073709486079
# opcode: sltu ; op1:x10; op2:x3; dest:x14; op1val:0x0000000000000800;  op2val:0xfffffffffffeffff
TEST_RR_OP(sltu, x14, x10, x3, 0x1, 0x0000000000000800, 0xfffffffffffeffff, x7, 0, x11)

# rs1==x3, rs2==x10, rd==x29, rs1_val == 4096, rs2_val == 1125899906842624
# opcode: sltu ; op1:x3; op2:x10; dest:x29; op1val:0x0000000000001000;  op2val:0x0004000000000000
TEST_RR_OP(sltu, x29, x3, x10, 0x1, 0x0000000000001000, 0x0004000000000000, x7, 8, x11)

# rs1==x21, rs2==x8, rd==x17, rs1_val == 8192, rs2_val == 8
# opcode: sltu ; op1:x21; op2:x8; dest:x17; op1val:0x0000000000002000;  op2val:0x0000000000000008
TEST_RR_OP(sltu, x17, x21, x8, 0x0, 0x0000000000002000, 0x0000000000000008, x7, 16, x11)

# rs1==x30, rs2==x12, rd==x18, rs1_val == 16384, rs2_val == 13835058055282163711
# opcode: sltu ; op1:x30; op2:x12; dest:x18; op1val:0x0000000000004000;  op2val:0xbfffffffffffffff
TEST_RR_OP(sltu, x18, x30, x12, 0x1, 0x0000000000004000, 0xbfffffffffffffff, x7, 24, x11)

# rs1==x4, rs2==x27, rd==x26, rs1_val == 32768, rs2_val == 8388608
# opcode: sltu ; op1:x4; op2:x27; dest:x26; op1val:0x0000000000008000;  op2val:0x0000000000800000
TEST_RR_OP(sltu, x26, x4, x27, 0x1, 0x0000000000008000, 0x0000000000800000, x7, 32, x11)

# rs1==x2, rs2==x15, rd==x5, rs1_val == 131072, rs2_val == 33554432
# opcode: sltu ; op1:x2; op2:x15; dest:x5; op1val:0x0000000000020000;  op2val:0x0000000002000000
TEST_RR_OP(sltu, x5, x2, x15, 0x1, 0x0000000000020000, 0x0000000002000000, x7, 40, x11)

# rs1==x0, rs2==x24, rd==x21, rs1_val == 262144, rs2_val == 68719476736
# opcode: sltu ; op1:x0; op2:x24; dest:x21; op1val:0x0000000000040000;  op2val:0x0000001000000000
TEST_RR_OP(sltu, x21, x0, x24, 0x1, 0x0000000000040000, 0x0000001000000000, x7, 48, x11)

# rs1==x5, rs2==x19, rd==x31, rs1_val == 524288, rs2_val == 2048
# opcode: sltu ; op1:x5; op2:x19; dest:x31; op1val:0x0000000000080000;  op2val:0x0000000000000800
TEST_RR_OP(sltu, x31, x5, x19, 0x0, 0x0000000000080000, 0x0000000000000800, x7, 56, x11)

# rs1==x22, rs2==x9, rd==x27, rs1_val == 1048576, rs2_val == 6148914691236517205
# opcode: sltu ; op1:x22; op2:x9; dest:x27; op1val:0x0000000000100000;  op2val:0x5555555555555555
TEST_RR_OP(sltu, x27, x22, x9, 0x1, 0x0000000000100000, 0x5555555555555555, x7, 64, x11)

# rs1==x23, rs2==x26, rd==x4, rs1_val == 2097152, rs2_val == 18444492273895866367
# opcode: sltu ; op1:x23; op2:x26; dest:x4; op1val:0x0000000000200000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sltu, x4, x23, x26, 0x1, 0x0000000000200000, 0xfff7ffffffffffff, x7, 72, x11)

# rs1==x1, rs2==x0, rd==x30, rs1_val == 4194304, 
# opcode: sltu ; op1:x1; op2:x0; dest:x30; op1val:0x0000000000400000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sltu, x30, x1, x0, 0x1, 0x0000000000400000, 0xf7ffffffffffffff, x7, 80, x11)

# rs1==x6, rs2==x21, rd==x16, rs1_val == 8388608, rs2_val == 18446744004990074879
# opcode: sltu ; op1:x6; op2:x21; dest:x16; op1val:0x0000000000800000;  op2val:0xffffffefffffffff
TEST_RR_OP(sltu, x16, x6, x21, 0x1, 0x0000000000800000, 0xffffffefffffffff, x7, 88, x11)

# rs1==x9, rs2==x1, rd==x10, rs1_val == 16777216, 
# opcode: sltu ; op1:x9; op2:x1; dest:x10; op1val:0x0000000001000000;  op2val:0x0000000000000006
TEST_RR_OP(sltu, x10, x9, x1, 0x0, 0x0000000001000000, 0x0000000000000006, x7, 96, x2)

# rs1==x28, rs2==x18, rd==x15, rs1_val == 33554432, rs2_val == 18446744073709551103
# opcode: sltu ; op1:x28; op2:x18; dest:x15; op1val:0x0000000002000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(sltu, x15, x28, x18, 0x1, 0x0000000002000000, 0xfffffffffffffdff, x7, 104, x2)

# rs1==x26, rs2==x31, rd==x11, rs1_val == 67108864, rs2_val == 18446744073709535231
# opcode: sltu ; op1:x26; op2:x31; dest:x11; op1val:0x0000000004000000;  op2val:0xffffffffffffbfff
TEST_RR_OP(sltu, x11, x26, x31, 0x1, 0x0000000004000000, 0xffffffffffffbfff, x7, 112, x2)

# rs1_val == 134217728, rs2_val == 18446744073709420543
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000008000000, 0xfffffffffffdffff, x7, 120, x2)

# rs1_val == 268435456, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x000000000000000e
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000010000000, 0x000000000000000e, x7, 128, x2)

# rs1_val == 536870912, rs2_val == 18158513697557839871
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000020000000, 0xfbffffffffffffff, x7, 136, x2)

# rs1_val == 1073741824, rs2_val == 137438953472
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000002000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000040000000, 0x0000002000000000, x7, 144, x2)

# rs1_val == 2147483648, rs2_val == 1073741824
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000040000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000080000000, 0x0000000040000000, x7, 152, x2)

# rs1_val == 4294967296, rs2_val == 18428729675200069631
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000100000000, 0xffbfffffffffffff, x7, 160, x2)

# rs1_val == 8589934592, rs2_val == 18446735277616529407
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000200000000, 0xfffff7ffffffffff, x7, 168, x2)

# rs1_val == 17179869184, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x000000000000000f
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000400000000, 0x000000000000000f, x7, 176, x2)

# rs1_val == 34359738368, rs2_val == 18446744073709543423
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000800000000, 0xffffffffffffdfff, x7, 184, x2)

# rs1_val == 68719476736, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000007
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000000000000007, x7, 192, x2)

# rs1_val == 137438953472, rs2_val == 281474976710656
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0001000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000002000000000, 0x0001000000000000, x7, 200, x2)

# rs1_val == 274877906944, rs2_val == 18446744073575333887
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000004000000000, 0xfffffffff7ffffff, x7, 208, x2)

# rs1_val == 549755813888, rs2_val == 1024
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000400
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000008000000000, 0x0000000000000400, x7, 216, x2)

# rs1_val == 1099511627776, rs2_val == 18410715276690587647
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000010000000000, 0xff7fffffffffffff, x7, 224, x2)

# rs1_val == 2199023255552, rs2_val == 2305843009213693952
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x2000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000020000000000, 0x2000000000000000, x7, 232, x2)

# rs1_val == 4398046511104, rs2_val == 1152921504606846976
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x1000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000040000000000, 0x1000000000000000, x7, 240, x2)

# rs1_val == 8796093022208, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000080000000000, 0xfff7ffffffffffff, x7, 248, x2)

# rs1_val == 17592186044416, rs2_val == 18446744073709551599
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffffffffffef
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000100000000000, 0xffffffffffffffef, x7, 256, x2)

# rs1_val == 35184372088832, rs2_val == 8589934592
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000200000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000000200000000, x7, 264, x2)

# rs1_val == 70368744177664, rs2_val == 18446744073708503039
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000400000000000, 0xffffffffffefffff, x7, 272, x2)

# rs1_val == 140737488355328, rs2_val == 70368744177664
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000400000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000800000000000, 0x0000400000000000, x7, 280, x2)

# rs1_val == 281474976710656, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000010000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0001000000000000, 0x0000000000010000, x7, 288, x2)

# rs1_val == 562949953421312, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0002000000000000, 0x0000000000000013, x7, 296, x2)

# rs1_val == 1125899906842624, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000040000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000000040000000, x7, 304, x2)

# rs1_val == 2251799813685248, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000000200
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0008000000000000, 0x0000000000000200, x7, 312, x2)

# rs1_val == 4503599627370496, rs2_val == 140737488355328
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000800000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0010000000000000, 0x0000800000000000, x7, 320, x2)

# rs1_val == 9007199254740992, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffffffefffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0020000000000000, 0xffffffefffffffff, x7, 328, x2)

# rs1_val == 18014398509481984, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000010000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0040000000000000, 0x0000000000010000, x7, 336, x2)

# rs1_val == 36028797018963968, rs2_val == 18446744073701163007
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xffffffffff7fffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0080000000000000, 0xffffffffff7fffff, x7, 344, x2)

# rs1_val == 72057594037927936, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x000000000000000f
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0100000000000000, 0x000000000000000f, x7, 352, x2)

# rs1_val == 144115188075855872, rs2_val == 18446744073707454463
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0200000000000000, 0xffffffffffdfffff, x7, 360, x2)

# rs1_val == 288230376151711744, rs2_val == 549755813888
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000008000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000008000000000, x7, 368, x2)

# rs1_val == 576460752303423488, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0800000000000000, 0xffffffffffffdfff, x7, 376, x2)

# rs1_val == 1152921504606846976, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x1000000000000000, 0x0000000000000013, x7, 384, x2)

# rs1_val == 2305843009213693952, rs2_val == 562949953421312
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0002000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x2000000000000000, 0x0002000000000000, x7, 392, x2)

# rs1_val == 4611686018427387904, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x4000000000000000, 0xfff7ffffffffffff, x7, 400, x2)

# rs1_val == 9223372036854775808, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x8000000000000000, 0xfffffffffffdffff, x7, 408, x2)

# rs1_val == 18446744073709551614, rs2_val == 1048576
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000100000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffffe, 0x0000000000100000, x7, 416, x2)

# rs1_val == 18446744073709551613, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000400000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffffd, 0x0000400000000000, x7, 424, x2)

# rs1_val == 18446744073709551611, rs2_val == 536870912
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000020000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffffb, 0x0000000020000000, x7, 432, x2)

# rs1_val == 18446744073709551607, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xffffffffffdfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffff7, 0xffffffffffdfffff, x7, 440, x2)

# rs1_val == 18446744073709551599, rs2_val == 4503599627370496
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0010000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffef, 0x0010000000000000, x7, 448, x2)

# rs1_val == 18446744073709551583, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfffffffffffffdff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffdf, 0xfffffffffffffdff, x7, 456, x2)

# rs1_val == 18446744073709551551, rs2_val == 18446742974197923839
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xfffffeffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffbf, 0xfffffeffffffffff, x7, 464, x2)

# rs1_val == 18446744073709551487, rs2_val == 18446744073642442751
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffffffffbffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffff7f, 0xfffffffffbffffff, x7, 472, x2)

# rs1_val == 18446744073709551359, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xfbffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffeff, 0xfbffffffffffffff, x7, 480, x2)

# rs1_val == 18446744073709551103, rs2_val == 18014398509481984
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0040000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffdff, 0x0040000000000000, x7, 488, x2)

# rs1_val == 18446744073709550591, rs2_val == 18446744069414584319
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffffffeffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffbff, 0xfffffffeffffffff, x7, 496, x2)

# rs1_val == 18446744073709549567, rs2_val == 18442240474082181119
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xffefffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffff7ff, 0xffefffffffffffff, x7, 504, x2)

# rs2_val == 18374686479671623679, rs1_val == 18446739675663040511
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffbffffffffff, 0xfeffffffffffffff, x7, 512, x2)

# rs2_val == 18302628885633695743, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0xfdffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000007, 0xfdffffffffffffff, x7, 520, x2)

# rs2_val == 9223372036854775807, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x7fffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000010, 0x7fffffffffffffff, x7, 528, x2)

# rs2_val == 12297829382473034410, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000080000000, 0xaaaaaaaaaaaaaaaa, x7, 536, x2)

# rs1_val == 18446744073709547519, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffffffdfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffefff, 0xffffffffffdfffff, x7, 544, x2)

# rs1_val == 18446744073709543423, rs2_val == 18446744065119617023
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xfffffffdffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffdfff, 0xfffffffdffffffff, x7, 552, x2)

# rs1_val == 18446744073709535231, rs2_val == 18446744073709289471
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xfffffffffffbffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffbfff, 0xfffffffffffbffff, x7, 560, x2)

# rs1_val == 18446744073709518847, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xfbffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffff7fff, 0xfbffffffffffffff, x7, 568, x2)

# rs1_val == 18446744073709486079, rs2_val == 576460752303423488
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0800000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffeffff, 0x0800000000000000, x7, 576, x2)

# rs1_val == 18446744073709420543, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffdffff, 0xfffffeffffffffff, x7, 584, x2)

# rs1_val == 18446744073709289471, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x000000000000000e
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffbffff, 0x000000000000000e, x7, 592, x2)

# rs1_val == 18446744073709027327, rs2_val == 4
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000004
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffff7ffff, 0x0000000000000004, x7, 600, x2)

# rs1_val == 18446744073708503039, rs2_val == 4194304
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000400000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffefffff, 0x0000000000400000, x7, 608, x2)

# rs1_val == 18446744073707454463, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000000001
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffdfffff, 0x0000000000000001, x7, 616, x2)

# rs1_val == 18446744073705357311, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000400000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffbfffff, 0x0000400000000000, x7, 624, x2)

# rs1_val == 18446744073701163007, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000040000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffff7fffff, 0x0000000040000000, x7, 632, x2)

# rs1_val == 18446744073692774399, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000100000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffeffffff, 0x0000000000100000, x7, 640, x2)

# rs1_val == 18446744073675997183, rs2_val == 524288
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000080000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffdffffff, 0x0000000000080000, x7, 648, x2)

# rs1_val == 18446744073642442751, rs2_val == 262144
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000040000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffbffffff, 0x0000000000040000, x7, 656, x2)

# rs1_val == 18446744073575333887, rs2_val == 268435456
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000010000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffff7ffffff, 0x0000000010000000, x7, 664, x2)

# rs1_val == 18446744073441116159, rs2_val == 18437736874454810623
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffefffffff, 0xffdfffffffffffff, x7, 672, x2)

# rs1_val == 18446744073172680703, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000020000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffdfffffff, 0x0000000020000000, x7, 680, x2)

# rs1_val == 18446744072635809791, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x000000000000000b
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffbfffffff, 0x000000000000000b, x7, 688, x2)

# rs1_val == 18446744071562067967, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000080000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffff7fffffff, 0x0000000000080000, x7, 696, x2)

# rs1_val == 18446744065119617023, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000400000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffdffffffff, 0x0000000000400000, x7, 704, x2)

# rs1_val == 18446744056529682431, rs2_val == 18446744073709551551
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffffbffffffff, 0xffffffffffffffbf, x7, 712, x2)

# rs1_val == 18446744039349813247, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000002000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffff7ffffffff, 0x0000000002000000, x7, 720, x2)

# rs1_val == 18446744004990074879, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffefffffffff, 0x000000000000000a, x7, 728, x2)

# rs1_val == 18446743936270598143, rs2_val == 18446744073709547519
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffdfffffffff, 0xffffffffffffefff, x7, 736, x2)

# rs1_val == 18446743798831644671, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffbfffffffff, 0xffffffffffdfffff, x7, 744, x2)

# rs1_val == 18446743523953737727, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffff7fffffffff, 0x0000000000000005, x7, 752, x2)

# rs1_val == 18446742974197923839, rs2_val == 1099511627776
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffeffffffffff, 0x0000010000000000, x7, 760, x2)

# rs1_val == 18446741874686296063, rs2_val == 18446744073675997183
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffdffffffffff, 0xfffffffffdffffff, x7, 768, x2)

# rs1_val == 18446735277616529407, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffff7ffffffffff, 0x0000000000000008, x7, 776, x2)

# rs1_val == 18446726481523507199, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffefffffffffff, 0xffffffffffffefff, x7, 784, x2)

# rs1_val == 18446708889337462783, rs2_val == 32
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffdfffffffffff, 0x0000000000000020, x7, 792, x2)

# rs1_val == 18446673704965373951, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000800000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffbfffffffffff, 0x0000000000800000, x7, 800, x2)

# rs1_val == 18446603336221196287, rs2_val == 134217728
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000008000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffff7fffffffffff, 0x0000000008000000, x7, 808, x2)

# rs1_val == 18446462598732840959, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xffffffefffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffeffffffffffff, 0xffffffefffffffff, x7, 816, x2)

# rs1_val == 18446181123756130303, rs2_val == 16
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffdffffffffffff, 0x0000000000000010, x7, 824, x2)

# rs1_val == 18445618173802708991, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffbffffffffffff, 0x0000000000000007, x7, 832, x2)

# rs1_val == 18444492273895866367, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xffffffffffffffef
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfff7ffffffffffff, 0xffffffffffffffef, x7, 840, x2)

# rs1_val == 18442240474082181119, rs2_val == 36028797018963968
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0080000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffefffffffffffff, 0x0080000000000000, x7, 848, x2)

# rs1_val == 18437736874454810623, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x1000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffdfffffffffffff, 0x1000000000000000, x7, 856, x2)

# rs1_val == 18428729675200069631, rs2_val == 274877906944
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000004000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffbfffffffffffff, 0x0000004000000000, x7, 864, x2)

# rs1_val == 18374686479671623679, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfeffffffffffffff, 0x0000010000000000, x7, 872, x2)

# rs1_val == 18302628885633695743, rs2_val == 2251799813685248
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0008000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfdffffffffffffff, 0x0008000000000000, x7, 880, x2)

# rs1_val == 18158513697557839871, rs2_val == 18446744071562067967
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfbffffffffffffff, 0xffffffff7fffffff, x7, 888, x2)

# rs1_val == 17870283321406128127, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xf7ffffffffffffff, 0x0000000000000004, x7, 896, x2)

# rs1_val == 17293822569102704639, rs2_val == 9223372036854775808
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xefffffffffffffff, 0x8000000000000000, x7, 904, x2)

# rs1_val == 16140901064495857663, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000800000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xdfffffffffffffff, 0x0000000000800000, x7, 912, x2)

# rs1_val == 13835058055282163711, rs2_val == 64
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000040
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xbfffffffffffffff, 0x0000000000000040, x7, 920, x2)

# rs1_val == 9223372036854775807, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x7fffffffffffffff, 0xff7fffffffffffff, x7, 928, x2)

# rs1_val == 6148914691236517205, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000040000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x5555555555555555, 0x0000000000040000, x7, 936, x2)

# rs1_val == 12297829382473034410, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xaaaaaaaaaaaaaaaa, 0x0000000000000000, x7, 944, x2)

# rs2_val == 2, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000002
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffbfffffffff, 0x0000000000000002, x7, 952, x2)

# rs2_val == 128, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000080
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffffb, 0x0000000000000080, x7, 960, x2)

# rs2_val == 256, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000100
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffbffffffff, 0x0000000000000100, x7, 968, x2)

# rs2_val == 4096, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000001000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffff7fffffffff, 0x0000000000001000, x7, 976, x2)

# rs2_val == 8192, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000002000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000200000000, 0x0000000000002000, x7, 984, x2)

# rs2_val == 16384, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x0000000000004000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000000400000, 0x0000000000004000, x7, 992, x2)

# rs2_val == 32768, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000008000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000080000000000, 0x0000000000008000, x7, 1000, x2)

# rs2_val == 131072, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000020000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffefffffffffff, 0x0000000000020000, x7, 1008, x2)

# rs2_val == 2097152, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000200000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfbffffffffffffff, 0x0000000000200000, x7, 1016, x2)

# rs2_val == 16777216, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000011;  op2val:0x0000000001000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000011, 0x0000000001000000, x7, 1024, x2)

# rs2_val == 67108864, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0x0000000004000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffff, 0x0000000004000000, x7, 1032, x2)

# rs2_val == 2147483648, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x0000000080000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000010000, 0x0000000080000000, x7, 1040, x2)

# rs2_val == 17179869184, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000400000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000020000000, 0x0000000400000000, x7, 1048, x2)

# rs2_val == 2199023255552, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000020000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffdffff, 0x0000020000000000, x7, 1056, x2)

# rs2_val == 4398046511104, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000040000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000040000000000, x7, 1064, x2)

# rs2_val == 8796093022208, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000080000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xdfffffffffffffff, 0x0000080000000000, x7, 1072, x2)

# rs2_val == 17592186044416, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000100000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffbf, 0x0000100000000000, x7, 1080, x2)

# rs2_val == 72057594037927936, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000013;  op2val:0x0100000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000013, 0x0100000000000000, x7, 1088, x2)

# rs2_val == 288230376151711744, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0x0400000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000007, 0x0400000000000000, x7, 1096, x2)

# rs2_val == 4611686018427387904, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x000000000000000f;  op2val:0x4000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x000000000000000f, 0x4000000000000000, x7, 1104, x2)

# rs2_val == 18446744073709551614, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0xfffffffffffffffe
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000003, 0xfffffffffffffffe, x7, 1112, x2)

# rs2_val == 18446744073709551613, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffffefffffff, 0xfffffffffffffffd, x7, 1120, x2)

# rs2_val == 18446744073709551611, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000000, 0xfffffffffffffffb, x7, 1128, x2)

# rs2_val == 18446744073709551607, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffffffff7
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffefffffffff, 0xfffffffffffffff7, x7, 1136, x2)

# rs2_val == 18446744073709551583, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xffffffffffffffdf
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x4000000000000000, 0xffffffffffffffdf, x7, 1144, x2)

# rs2_val == 18446744073709551487, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000200000000000, 0xffffffffffffff7f, x7, 1152, x2)

# rs2_val == 18446744073709551359, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000100000000, 0xfffffffffffffeff, x7, 1160, x2)

# rs2_val == 18446744073709550591, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0800000000000000, 0xfffffffffffffbff, x7, 1168, x2)

# rs2_val == 18446744073709549567, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffffffbffffff, 0xfffffffffffff7ff, x7, 1176, x2)

# rs2_val == 18446744073709027327, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000040000, 0xfffffffffff7ffff, x7, 1184, x2)

# rs2_val == 18446744073705357311, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0xffffffffffbfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000040000, 0xffffffffffbfffff, x7, 1192, x2)

# rs2_val == 18446744073692774399, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0008000000000000, 0xfffffffffeffffff, x7, 1200, x2)

# rs2_val == 18446744073441116159, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xffffffffefffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffff7fff, 0xffffffffefffffff, x7, 1208, x2)

# rs2_val == 18446744073172680703, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffbffffffffffff, 0xffffffffdfffffff, x7, 1216, x2)

# rs2_val == 18446744072635809791, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x000000000000000e;  op2val:0xffffffffbfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x000000000000000e, 0xffffffffbfffffff, x7, 1224, x2)

# rs2_val == 18446744056529682431, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffbfffffffffff, 0xfffffffbffffffff, x7, 1232, x2)

# rs2_val == 18446743936270598143, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffbffff, 0xffffffdfffffffff, x7, 1240, x2)

# rs2_val == 18446743798831644671, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0xffffffbfffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000400000, 0xffffffbfffffffff, x7, 1248, x2)

# rs2_val == 18446743523953737727, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xffffff7fffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x5555555555555555, 0xffffff7fffffffff, x7, 1256, x2)

# rs2_val == 18446741874686296063, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0xfffffdffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000008, 0xfffffdffffffffff, x7, 1264, x2)

# rs2_val == 18446726481523507199, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xffffefffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000200000000, 0xffffefffffffffff, x7, 1272, x2)

# rs2_val == 35184372088832, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000200000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000000, 0x0000200000000000, x7, 1280, x2)

# rs2_val == 18446708889337462783, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffbffffffff, 0xffffdfffffffffff, x7, 1288, x2)

# rs2_val == 18446673704965373951, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffefffffffff, 0xffffbfffffffffff, x7, 1296, x2)

# rs2_val == 18446603336221196287, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xffff7fffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0002000000000000, 0xffff7fffffffffff, x7, 1304, x2)

# rs2_val == 18446462598732840959, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xefffffffffffffff, 0xfffeffffffffffff, x7, 1312, x2)

# rs2_val == 18446181123756130303, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xfffdffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0040000000000000, 0xfffdffffffffffff, x7, 1320, x2)

# rs2_val == 9007199254740992, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0x0020000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000007, 0x0020000000000000, x7, 1328, x2)

# rs1_val == 0, rs2_val == 17870283321406128127
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000000, 0xf7ffffffffffffff, x7, 1336, x2)

# rs1_val == 1, rs2_val == 512
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000000000200
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000001, 0x0000000000000200, x7, 1344, x2)

# rs2_val == 0, rs1_val == 18446744069414584319
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffeffffffff, 0x0000000000000000, x7, 1352, x2)

# rs2_val == (2**(xlen)-1), rs1_val == 18410715276690587647
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xffffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xff7fffffffffffff, 0xffffffffffffffff, x7, 1360, x2)

# rs1_val == 32, rs2_val == 144115188075855872
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0200000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000020, 0x0200000000000000, x7, 1368, x2)

# rs1_val == 262144, rs2_val == 68719476736
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000001000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000040000, 0x0000001000000000, x7, 1376, x2)

# rs1_val == 4194304, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000400000, 0xf7ffffffffffffff, x7, 1384, x2)
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x10_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x7_0:
    .fill 174*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
