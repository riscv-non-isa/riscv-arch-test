
#This assembly file tests the slt instruction of the RISC-V I extension for the slt covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slt)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 == rs2 == rd, rs1==x25, rs2==x25, rd==x25, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: slt ; op1:x25; op2:x25; dest:x25; op1val:0x8000000000000000;  op2val:0x0000000000000005
TEST_RR_OP(slt, x25, x25, x25, 0x1, 0x8000000000000000, 0x0000000000000005, x1, 0, x7)

# rs1 == rd != rs2, rs1==x30, rs2==x20, rd==x30, rs1_val == 0, rs2_val == 8388608
# opcode: slt ; op1:x30; op2:x20; dest:x30; op1val:0x0000000000000000;  op2val:0x0000000000800000
TEST_RR_OP(slt, x30, x30, x20, 0x1, 0x0000000000000000, 0x0000000000800000, x1, 8, x7)

# rs2 == rd != rs1, rs1==x4, rs2==x5, rd==x5, rs1_val == (2**(xlen-1)-1), rs2_val == -262145, rs1_val > 0 and rs2_val < 0, rs1_val == 9223372036854775807
# opcode: slt ; op1:x4; op2:x5; dest:x5; op1val:0x7fffffffffffffff;  op2val:0xfffffffffffbffff
TEST_RR_OP(slt, x5, x4, x5, 0x0, 0x7fffffffffffffff, 0xfffffffffffbffff, x1, 16, x7)

# rs1 == rs2 != rd, rs1==x12, rs2==x12, rd==x18, rs1_val == 1, rs1_val > 0 and rs2_val > 0, rs2_val == 9007199254740992
# opcode: slt ; op1:x12; op2:x12; dest:x18; op1val:0x0000000000000001;  op2val:0x0020000000000000
TEST_RR_OP(slt, x18, x12, x12, 0x1, 0x0000000000000001, 0x0020000000000000, x1, 24, x7)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x5, rs2==x13, rd==x24, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808, rs1_val < 0 and rs2_val < 0, rs1_val == -1099511627777
# opcode: slt ; op1:x5; op2:x13; dest:x24; op1val:0xfffffeffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(slt, x24, x5, x13, 0x0, 0xfffffeffffffffff, 0x8000000000000000, x1, 32, x7)

# rs1==x29, rs2==x28, rd==x21, rs2_val == 0, rs1_val == 2147483648
# opcode: slt ; op1:x29; op2:x28; dest:x21; op1val:0x0000000080000000;  op2val:0x0000000000000000
TEST_RR_OP(slt, x21, x29, x28, 0x0, 0x0000000080000000, 0x0000000000000000, x1, 40, x7)

# rs1==x26, rs2==x10, rd==x6, rs2_val == (2**(xlen-1)-1), rs1_val == 2097152, rs2_val == 9223372036854775807
# opcode: slt ; op1:x26; op2:x10; dest:x6; op1val:0x0000000000200000;  op2val:0x7fffffffffffffff
TEST_RR_OP(slt, x6, x26, x10, 0x1, 0x0000000000200000, 0x7fffffffffffffff, x1, 48, x7)

# rs1==x20, rs2==x3, rd==x22, rs2_val == 1, rs1_val == -281474976710657
# opcode: slt ; op1:x20; op2:x3; dest:x22; op1val:0xfffeffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(slt, x22, x20, x3, 0x1, 0xfffeffffffffffff, 0x0000000000000001, x1, 56, x7)

# rs1==x11, rs2==x24, rd==x2, rs1_val == rs2_val, rs1_val == 524288, rs2_val == 524288
# opcode: slt ; op1:x11; op2:x24; dest:x2; op1val:0x0000000000080000;  op2val:0x0000000000080000
TEST_RR_OP(slt, x2, x11, x24, 0x0, 0x0000000000080000, 0x0000000000080000, x1, 64, x7)

# rs1==x15, rs2==x2, rd==x17, rs1_val == 2, rs2_val == -70368744177665
# opcode: slt ; op1:x15; op2:x2; dest:x17; op1val:0x0000000000000002;  op2val:0xffffbfffffffffff
TEST_RR_OP(slt, x17, x15, x2, 0x0, 0x0000000000000002, 0xffffbfffffffffff, x1, 72, x7)

# rs1==x21, rs2==x23, rd==x29, rs1_val == 4, rs2_val == -257
# opcode: slt ; op1:x21; op2:x23; dest:x29; op1val:0x0000000000000004;  op2val:0xfffffffffffffeff
TEST_RR_OP(slt, x29, x21, x23, 0x0, 0x0000000000000004, 0xfffffffffffffeff, x1, 80, x7)

# rs1==x18, rs2==x17, rd==x9, rs1_val == 8, rs2_val == 268435456
# opcode: slt ; op1:x18; op2:x17; dest:x9; op1val:0x0000000000000008;  op2val:0x0000000010000000
TEST_RR_OP(slt, x9, x18, x17, 0x1, 0x0000000000000008, 0x0000000010000000, x1, 88, x7)

# rs1==x22, rs2==x30, rd==x11, rs1_val == 16, rs2_val == 1125899906842624
# opcode: slt ; op1:x22; op2:x30; dest:x11; op1val:0x0000000000000010;  op2val:0x0004000000000000
TEST_RR_OP(slt, x11, x22, x30, 0x1, 0x0000000000000010, 0x0004000000000000, x1, 96, x7)

# rs1==x17, rs2==x26, rd==x27, rs1_val == 32, rs2_val == -268435457
# opcode: slt ; op1:x17; op2:x26; dest:x27; op1val:0x0000000000000020;  op2val:0xffffffffefffffff
TEST_RR_OP(slt, x27, x17, x26, 0x0, 0x0000000000000020, 0xffffffffefffffff, x1, 104, x7)

# rs1==x31, rs2==x8, rd==x12, rs1_val == 64, rs2_val == -16385
# opcode: slt ; op1:x31; op2:x8; dest:x12; op1val:0x0000000000000040;  op2val:0xffffffffffffbfff
TEST_RR_OP(slt, x12, x31, x8, 0x0, 0x0000000000000040, 0xffffffffffffbfff, x1, 112, x7)

# rs1==x28, rs2==x21, rd==x26, rs1_val == 128, rs2_val == 16
# opcode: slt ; op1:x28; op2:x21; dest:x26; op1val:0x0000000000000080;  op2val:0x0000000000000010
TEST_RR_OP(slt, x26, x28, x21, 0x0, 0x0000000000000080, 0x0000000000000010, x1, 120, x7)

# rs1==x3, rs2==x22, rd==x23, rs1_val == 256, rs2_val == -1099511627777
# opcode: slt ; op1:x3; op2:x22; dest:x23; op1val:0x0000000000000100;  op2val:0xfffffeffffffffff
TEST_RR_OP(slt, x23, x3, x22, 0x0, 0x0000000000000100, 0xfffffeffffffffff, x1, 128, x7)

# rs1==x14, rs2==x6, rd==x13, rs1_val == 512, rs2_val == -17179869185
# opcode: slt ; op1:x14; op2:x6; dest:x13; op1val:0x0000000000000200;  op2val:0xfffffffbffffffff
TEST_RR_OP(slt, x13, x14, x6, 0x0, 0x0000000000000200, 0xfffffffbffffffff, x1, 136, x7)

# rs1==x16, rs2==x15, rd==x4, rs1_val == 1024, rs2_val == 2048
# opcode: slt ; op1:x16; op2:x15; dest:x4; op1val:0x0000000000000400;  op2val:0x0000000000000800
TEST_RR_OP(slt, x4, x16, x15, 0x1, 0x0000000000000400, 0x0000000000000800, x1, 144, x17)
RVTEST_SIGBASE( x5,signature_x5_0)

# rs1==x0, rs2==x7, rd==x31, rs1_val == 2048, 
# opcode: slt ; op1:x0; op2:x7; dest:x31; op1val:0x0000000000000800;  op2val:0xffffffffffffbfff
TEST_RR_OP(slt, x31, x0, x7, 0x0, 0x0000000000000800, 0xffffffffffffbfff, x5, 0, x17)

# rs1==x24, rs2==x29, rd==x16, rs1_val == 4096, rs2_val == 65536
# opcode: slt ; op1:x24; op2:x29; dest:x16; op1val:0x0000000000001000;  op2val:0x0000000000010000
TEST_RR_OP(slt, x16, x24, x29, 0x1, 0x0000000000001000, 0x0000000000010000, x5, 8, x17)

# rs1==x9, rs2==x27, rd==x20, rs1_val == 8192, rs2_val == 144115188075855872
# opcode: slt ; op1:x9; op2:x27; dest:x20; op1val:0x0000000000002000;  op2val:0x0200000000000000
TEST_RR_OP(slt, x20, x9, x27, 0x1, 0x0000000000002000, 0x0200000000000000, x5, 16, x17)

# rs1==x27, rs2==x9, rd==x19, rs1_val == 16384, rs2_val == 1099511627776
# opcode: slt ; op1:x27; op2:x9; dest:x19; op1val:0x0000000000004000;  op2val:0x0000010000000000
TEST_RR_OP(slt, x19, x27, x9, 0x1, 0x0000000000004000, 0x0000010000000000, x5, 24, x17)

# rs1==x10, rs2==x16, rd==x3, rs1_val == 32768, rs2_val == 134217728
# opcode: slt ; op1:x10; op2:x16; dest:x3; op1val:0x0000000000008000;  op2val:0x0000000008000000
TEST_RR_OP(slt, x3, x10, x16, 0x1, 0x0000000000008000, 0x0000000008000000, x5, 32, x17)

# rs1==x13, rs2==x18, rd==x1, rs1_val == 65536, rs2_val == 2147483648
# opcode: slt ; op1:x13; op2:x18; dest:x1; op1val:0x0000000000010000;  op2val:0x0000000080000000
TEST_RR_OP(slt, x1, x13, x18, 0x1, 0x0000000000010000, 0x0000000080000000, x5, 40, x17)

# rs1==x2, rs2==x4, rd==x7, rs1_val == 131072, rs2_val == -562949953421313
# opcode: slt ; op1:x2; op2:x4; dest:x7; op1val:0x0000000000020000;  op2val:0xfffdffffffffffff
TEST_RR_OP(slt, x7, x2, x4, 0x0, 0x0000000000020000, 0xfffdffffffffffff, x5, 48, x17)

# rs1==x19, rs2==x14, rd==x0, rs1_val == 262144, rs2_val == 70368744177664
# opcode: slt ; op1:x19; op2:x14; dest:x0; op1val:0x0000000000040000;  op2val:0x0000400000000000
TEST_RR_OP(slt, x0, x19, x14, 0x1, 0x0000000000040000, 0x0000400000000000, x5, 56, x17)

# rs1==x7, rs2==x19, rd==x8, rs1_val == 1048576, rs2_val == 32768
# opcode: slt ; op1:x7; op2:x19; dest:x8; op1val:0x0000000000100000;  op2val:0x0000000000008000
TEST_RR_OP(slt, x8, x7, x19, 0x0, 0x0000000000100000, 0x0000000000008000, x5, 64, x17)

# rs1==x1, rs2==x31, rd==x15, rs1_val == 4194304, 
# opcode: slt ; op1:x1; op2:x31; dest:x15; op1val:0x0000000000400000;  op2val:0x0000000000010000
TEST_RR_OP(slt, x15, x1, x31, 0x0, 0x0000000000400000, 0x0000000000010000, x5, 72, x17)

# rs1==x23, rs2==x0, rd==x28, rs1_val == 8388608, rs2_val == 549755813888
# opcode: slt ; op1:x23; op2:x0; dest:x28; op1val:0x0000000000800000;  op2val:0x0000008000000000
TEST_RR_OP(slt, x28, x23, x0, 0x1, 0x0000000000800000, 0x0000008000000000, x5, 80, x17)

# rs1==x6, rs2==x1, rd==x14, rs1_val == 16777216, rs2_val == 562949953421312
# opcode: slt ; op1:x6; op2:x1; dest:x14; op1val:0x0000000001000000;  op2val:0x0002000000000000
TEST_RR_OP(slt, x14, x6, x1, 0x1, 0x0000000001000000, 0x0002000000000000, x5, 88, x17)

# rs1==x8, rs2==x11, rd==x10, rs1_val == 33554432, rs2_val == -524289
# opcode: slt ; op1:x8; op2:x11; dest:x10; op1val:0x0000000002000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(slt, x10, x8, x11, 0x0, 0x0000000002000000, 0xfffffffffff7ffff, x5, 96, x17)

# rs1_val == 67108864, rs2_val == 274877906944
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000004000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000004000000, 0x0000004000000000, x5, 104, x17)

# rs1_val == 134217728, rs2_val == 288230376151711744
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0400000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000008000000, 0x0400000000000000, x5, 112, x17)

# rs1_val == 268435456, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000004000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000010000000, 0x0000004000000000, x5, 120, x17)

# rs1_val == 536870912, rs2_val == 68719476736
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000001000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000020000000, 0x0000001000000000, x5, 128, x17)

# rs1_val == 1073741824, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x8000000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000040000000, 0x8000000000000000, x5, 136, x17)

# rs1_val == 4294967296, rs2_val == 1048576
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000100000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000000000100000, x5, 144, x17)

# rs1_val == 8589934592, rs2_val == 512
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000200
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000200000000, 0x0000000000000200, x5, 152, x17)

# rs1_val == 17179869184, rs2_val == 4611686018427387904
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x4000000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000400000000, 0x4000000000000000, x5, 160, x17)

# rs1_val == 34359738368, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000006
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000800000000, 0x0000000000000006, x5, 168, x17)

# rs1_val == 68719476736, rs2_val == -6148914691236517206
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000001000000000, 0xaaaaaaaaaaaaaaaa, x5, 176, x17)

# rs1_val == 137438953472, rs2_val == -72057594037927937
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000002000000000, 0xfeffffffffffffff, x5, 184, x17)

# rs1_val == 274877906944, rs2_val == -144115188075855873
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000004000000000, 0xfdffffffffffffff, x5, 192, x17)

# rs1_val == 549755813888, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffffffffff9
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000008000000000, 0xfffffffffffffff9, x5, 200, x17)

# rs1_val == 1099511627776, rs2_val == 4
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000004
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000010000000000, 0x0000000000000004, x5, 208, x17)

# rs1_val == 2199023255552, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfffffffffffffff8
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000020000000000, 0xfffffffffffffff8, x5, 216, x17)

# rs1_val == 4398046511104, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000040000000000, 0x7fffffffffffffff, x5, 224, x17)

# rs1_val == 8796093022208, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0002000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000080000000000, 0x0002000000000000, x5, 232, x17)

# rs1_val == 17592186044416, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000007
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000100000000000, 0x0000000000000007, x5, 240, x17)

# rs1_val == 35184372088832, rs2_val == 35184372088832
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000200000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000200000000000, x5, 248, x17)

# rs1_val == 70368744177664, rs2_val == 1152921504606846976
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x1000000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000400000000000, 0x1000000000000000, x5, 256, x17)

# rs1_val == 140737488355328, rs2_val == 262144
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000040000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000800000000000, 0x0000000000040000, x5, 264, x17)

# rs1_val == 281474976710656, rs2_val == -17592186044417
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0001000000000000, 0xffffefffffffffff, x5, 272, x17)

# rs1_val == 562949953421312, rs2_val == 34359738368
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000800000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0002000000000000, 0x0000000800000000, x5, 280, x17)

# rs1_val == 1125899906842624, rs2_val == -2
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffffffffffffffe
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0004000000000000, 0xfffffffffffffffe, x5, 288, x17)

# rs1_val == 2251799813685248, rs2_val == -1048577
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0008000000000000, 0xffffffffffefffff, x5, 296, x17)

# rs1_val == 4503599627370496, rs2_val == 2
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000002
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0010000000000000, 0x0000000000000002, x5, 304, x17)

# rs1_val == 9007199254740992, rs2_val == 8589934592
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000200000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0020000000000000, 0x0000000200000000, x5, 312, x17)

# rs1_val == 18014398509481984, rs2_val == -35184372088833
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0040000000000000, 0xffffdfffffffffff, x5, 320, x17)

# rs1_val == 36028797018963968, rs2_val == 256
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000100
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000100, x5, 328, x17)

# rs1_val == 72057594037927936, rs2_val == -2251799813685249
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0100000000000000, 0xfff7ffffffffffff, x5, 336, x17)

# rs1_val == 144115188075855872, rs2_val == -2147483649
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0200000000000000, 0xffffffff7fffffff, x5, 344, x17)

# rs1_val == 288230376151711744, rs2_val == -1152921504606846977
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xefffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0400000000000000, 0xefffffffffffffff, x5, 352, x17)

# rs1_val == 576460752303423488, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000001000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000001000000000, x5, 360, x17)

# rs1_val == 1152921504606846976, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0200000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x1000000000000000, 0x0200000000000000, x5, 368, x17)

# rs1_val == 2305843009213693952, rs2_val == -17
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffffffffffef
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x2000000000000000, 0xffffffffffffffef, x5, 376, x17)

# rs1_val == 4611686018427387904, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x4000000000000000, 0xfffffffffffffffc, x5, 384, x17)

# rs1_val == -2, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffffffe, 0xaaaaaaaaaaaaaaaa, x5, 392, x17)

# rs1_val == -3, rs2_val == 128
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000080
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffffffffd, 0x0000000000000080, x5, 400, x17)

# rs1_val == -5, rs2_val == -36028797018963969
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xff7fffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffffffb, 0xff7fffffffffffff, x5, 408, x17)

# rs1_val == -9, rs2_val == -5
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xfffffffffffffffb
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffffffff7, 0xfffffffffffffffb, x5, 416, x17)

# rs1_val == -17, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xfffdffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffffef, 0xfffdffffffffffff, x5, 424, x17)

# rs1_val == -33, rs2_val == -34359738369
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfffffff7ffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffffdf, 0xfffffff7ffffffff, x5, 432, x17)

# rs1_val == -65, rs2_val == -4194305
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xffffffffffbfffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffffbf, 0xffffffffffbfffff, x5, 440, x17)

# rs1_val == -129, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000003
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffffff7f, 0x0000000000000003, x5, 448, x17)

# rs2_val == -1125899906842625, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfffbffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0010000000000000, 0xfffbffffffffffff, x5, 456, x17)

# rs2_val == -4503599627370497, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0xffefffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000005, 0xffefffffffffffff, x5, 464, x17)

# rs2_val == -9007199254740993, rs1_val == -8193
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xffdfffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffdfff, 0xffdfffffffffffff, x5, 472, x17)

# rs2_val == -18014398509481985, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0xffbfffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000100, 0xffbfffffffffffff, x5, 480, x17)

# rs2_val == -288230376151711745, rs1_val == -4294967297
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffeffffffff, 0xfbffffffffffffff, x5, 488, x17)

# rs2_val == -576460752303423489, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0xf7ffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffffff6, 0xf7ffffffffffffff, x5, 496, x17)

# rs2_val == -2305843009213693953, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0xdfffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000200000, 0xdfffffffffffffff, x5, 504, x17)

# rs2_val == -4611686018427387905, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xbfffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000080, 0xbfffffffffffffff, x5, 512, x17)

# rs2_val == 6148914691236517205, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x5555555555555555
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000008000000, 0x5555555555555555, x5, 520, x17)

# rs1_val == -257, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xffffdfffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffffeff, 0xffffdfffffffffff, x5, 528, x17)

# rs1_val == -513, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xbfffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffffdff, 0xbfffffffffffffff, x5, 536, x17)

# rs1_val == -1025, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xffffffffffefffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffffbff, 0xffffffffffefffff, x5, 544, x17)

# rs1_val == -2049, rs2_val == -4097
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xffffffffffffefff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffff7ff, 0xffffffffffffefff, x5, 552, x17)

# rs1_val == -4097, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfeffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffefff, 0xfeffffffffffffff, x5, 560, x17)

# rs1_val == -16385, rs2_val == 64
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000040
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffffbfff, 0x0000000000000040, x5, 568, x17)

# rs1_val == -32769, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000004000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffff7fff, 0x0000004000000000, x5, 576, x17)

# rs1_val == -65537, rs2_val == -67108865
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffeffff, 0xfffffffffbffffff, x5, 584, x17)

# rs1_val == -131073, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffdffff, 0xffffdfffffffffff, x5, 592, x17)

# rs1_val == -262145, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xffffffffefffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffbffff, 0xffffffffefffffff, x5, 600, x17)

# rs1_val == -524289, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffff7ffff, 0xfeffffffffffffff, x5, 608, x17)

# rs1_val == -1048577, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffefffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffefffff, 0xffffefffffffffff, x5, 616, x17)

# rs1_val == -2097153, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffdfffff, 0x7fffffffffffffff, x5, 624, x17)

# rs1_val == -4194305, rs2_val == 33554432
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000002000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffbfffff, 0x0000000002000000, x5, 632, x17)

# rs1_val == -8388609, rs2_val == -2049
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffff7fffff, 0xfffffffffffff7ff, x5, 640, x17)

# rs1_val == -16777217, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffeffffff, 0xfffffff7ffffffff, x5, 648, x17)

# rs1_val == -33554433, rs2_val == 67108864
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000004000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffdffffff, 0x0000000004000000, x5, 656, x17)

# rs1_val == -67108865, rs2_val == -2097153
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffbffffff, 0xffffffffffdfffff, x5, 664, x17)

# rs1_val == -134217729, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffff7ffffff, 0xffefffffffffffff, x5, 672, x17)

# rs1_val == -268435457, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000040
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffefffffff, 0x0000000000000040, x5, 680, x17)

# rs1_val == -536870913, rs2_val == 131072
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000020000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffdfffffff, 0x0000000000020000, x5, 688, x17)

# rs1_val == -1073741825, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000020000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffbfffffff, 0x0000000000020000, x5, 696, x17)

# rs1_val == -2147483649, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000000080
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffff7fffffff, 0x0000000000000080, x5, 704, x17)

# rs1_val == -8589934593, rs2_val == -9
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xfffffffffffffff7
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffdffffffff, 0xfffffffffffffff7, x5, 712, x17)

# rs1_val == -17179869185, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000800000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffbffffffff, 0x0000000000800000, x5, 720, x17)

# rs1_val == -34359738369, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffff7ffffffff, 0xfffdffffffffffff, x5, 728, x17)

# rs1_val == -68719476737, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000008000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffefffffffff, 0x0000000008000000, x5, 736, x17)

# rs1_val == -137438953473, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfffffffffffffffb
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffdfffffffff, 0xfffffffffffffffb, x5, 744, x17)

# rs1_val == -274877906945, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000004000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffbfffffffff, 0x0000004000000000, x5, 752, x17)

# rs1_val == -549755813889, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000080
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffff7fffffffff, 0x0000000000000080, x5, 760, x17)

# rs1_val == -2199023255553, rs2_val == -274877906945
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffdffffffffff, 0xffffffbfffffffff, x5, 768, x17)

# rs1_val == -4398046511105, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000008000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffbffffffffff, 0x0000000000008000, x5, 776, x17)

# rs1_val == -8796093022209, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffff7ffffffffff, 0x0000010000000000, x5, 784, x17)

# rs1_val == -17592186044417, rs2_val == 536870912
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000020000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffefffffffffff, 0x0000000020000000, x5, 792, x17)

# rs1_val == -35184372088833, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000200000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffdfffffffffff, 0x0000000200000000, x5, 800, x17)

# rs1_val == -70368744177665, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffbfffffffffff, 0xffffffff7fffffff, x5, 808, x17)

# rs1_val == -140737488355329, rs2_val == 18014398509481984
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0040000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffff7fffffffffff, 0x0040000000000000, x5, 816, x17)

# rs1_val == -562949953421313, rs2_val == 8
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffdffffffffffff, 0x0000000000000008, x5, 824, x17)

# rs1_val == -1125899906842625, rs2_val == 72057594037927936
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0100000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffbffffffffffff, 0x0100000000000000, x5, 832, x17)

# rs1_val == -2251799813685249, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfffffffffffffffc
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfff7ffffffffffff, 0xfffffffffffffffc, x5, 840, x17)

# rs1_val == -4503599627370497, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000040000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffefffffffffffff, 0x0000000000040000, x5, 848, x17)

# rs1_val == -9007199254740993, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000200000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffdfffffffffffff, 0x0000000200000000, x5, 856, x17)

# rs1_val == -18014398509481985, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffbfffffffffffff, 0xfeffffffffffffff, x5, 864, x17)

# rs1_val == -36028797018963969, rs2_val == -8388609
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xff7fffffffffffff, 0xffffffffff7fffff, x5, 872, x17)

# rs1_val == -72057594037927937, rs2_val == 17179869184
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000400000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfeffffffffffffff, 0x0000000400000000, x5, 880, x17)

# rs1_val == -144115188075855873, rs2_val == -33
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfdffffffffffffff, 0xffffffffffffffdf, x5, 888, x17)

# rs1_val == -288230376151711745, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfbffffffffffffff, 0xffffffffffffefff, x5, 896, x17)

# rs1_val == -576460752303423489, rs2_val == 137438953472
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000002000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xf7ffffffffffffff, 0x0000002000000000, x5, 904, x17)

# rs1_val == -1152921504606846977, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xfffffffffffffffb
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xefffffffffffffff, 0xfffffffffffffffb, x5, 912, x17)

# rs1_val == -2305843009213693953, rs2_val == -134217729
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xdfffffffffffffff, 0xfffffffff7ffffff, x5, 920, x17)

# rs1_val == -4611686018427387905, rs2_val == 4194304
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000400000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xbfffffffffffffff, 0x0000000000400000, x5, 928, x17)

# rs1_val == 6148914691236517205, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xdfffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x5555555555555555, 0xdfffffffffffffff, x5, 936, x17)

# rs1_val == -6148914691236517206, rs2_val == -281474976710657
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xfffeffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xaaaaaaaaaaaaaaaa, 0xfffeffffffffffff, x5, 944, x17)

# rs2_val == 32, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0x0000000000000020
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000000009, 0x0000000000000020, x5, 952, x17)

# rs2_val == 1024, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000400
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffffffbf, 0x0000000000000400, x5, 960, x17)

# rs2_val == 4096, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0x0000000000001000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000000007, 0x0000000000001000, x5, 968, x17)

# rs2_val == 8192, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0x0000000000002000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000000800, 0x0000000000002000, x5, 976, x17)

# rs2_val == 16384, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0x0000000000004000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xc000000000000000, 0x0000000000004000, x5, 984, x17)

# rs2_val == 2097152, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000200000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000002000000000, 0x0000000000200000, x5, 992, x17)

# rs2_val == 16777216, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000001000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffff7ffffff, 0x0000000001000000, x5, 1000, x17)

# rs2_val == 1073741824, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000040000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffffffbf, 0x0000000040000000, x5, 1008, x17)

# rs2_val == 4294967296, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000100000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffefffffff, 0x0000000100000000, x5, 1016, x17)

# rs2_val == 2199023255552, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000020000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000400000000, 0x0000020000000000, x5, 1024, x17)

# rs2_val == 4398046511104, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000040000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffffff7ff, 0x0000040000000000, x5, 1032, x17)

# rs2_val == 2251799813685248, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0008000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffffdffff, 0x0008000000000000, x5, 1040, x17)

# rs2_val == 4503599627370496, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0010000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffbfffffffffff, 0x0010000000000000, x5, 1048, x17)

# rs2_val == 36028797018963968, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0080000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffbffffffff, 0x0080000000000000, x5, 1056, x17)

# rs2_val == 576460752303423488, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0800000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000800000, 0x0800000000000000, x5, 1064, x17)

# rs2_val == 2305843009213693952, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x2000000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000002000000000, 0x2000000000000000, x5, 1072, x17)

# rs2_val == -3, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfbffffffffffffff, 0xfffffffffffffffd, x5, 1080, x17)

# rs2_val == -65, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0xffffffffffffffbf
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000040, 0xffffffffffffffbf, x5, 1088, x17)

# rs2_val == 140737488355328, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0x0000800000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000004000, 0x0000800000000000, x5, 1096, x17)

# rs2_val == -129, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfdffffffffffffff, 0xffffffffffffff7f, x5, 1104, x17)

# rs2_val == -513, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xfffffffffffffdff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffffbfff, 0xfffffffffffffdff, x5, 1112, x17)

# rs2_val == -1025, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000040000000000, 0xfffffffffffffbff, x5, 1120, x17)

# rs2_val == -8193, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000400000000000, 0xffffffffffffdfff, x5, 1128, x17)

# rs2_val == -32769, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000004000000, 0xffffffffffff7fff, x5, 1136, x17)

# rs2_val == -65537, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0xfffffffffffeffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000006, 0xfffffffffffeffff, x5, 1144, x17)

# rs2_val == -131073, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffff7fffffffff, 0xfffffffffffdffff, x5, 1152, x17)

# rs2_val == 8796093022208, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000080000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000020000000000, 0x0000080000000000, x5, 1160, x17)

# rs2_val == -16777217, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000080000000000, 0xfffffffffeffffff, x5, 1168, x17)

# rs2_val == -33554433, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xfffffffffdffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000080, 0xfffffffffdffffff, x5, 1176, x17)

# rs2_val == -536870913, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfdffffffffffffff, 0xffffffffdfffffff, x5, 1184, x17)

# rs2_val == -1073741825, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000002000000000, 0xffffffffbfffffff, x5, 1192, x17)

# rs2_val == -4294967297, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xfffffffeffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffbfff, 0xfffffffeffffffff, x5, 1200, x17)

# rs2_val == -8589934593, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xfffffffdffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffff7ff, 0xfffffffdffffffff, x5, 1208, x17)

# rs2_val == -68719476737, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0xffffffefffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000020000, 0xffffffefffffffff, x5, 1216, x17)

# rs2_val == -137438953473, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000001000000, 0xffffffdfffffffff, x5, 1224, x17)

# rs2_val == -549755813889, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffbffffffff, 0xffffff7fffffffff, x5, 1232, x17)

# rs2_val == -2199023255553, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfffffdffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffefff, 0xfffffdffffffffff, x5, 1240, x17)

# rs2_val == -4398046511105, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xfffffbffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000800000, 0xfffffbffffffffff, x5, 1248, x17)

# rs2_val == -8796093022209, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffdfffffffff, 0xfffff7ffffffffff, x5, 1256, x17)

# rs2_val == 17592186044416, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000100000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000040000000, 0x0000100000000000, x5, 1264, x17)

# rs2_val == -140737488355329, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xdfffffffffffffff, 0xffff7fffffffffff, x5, 1272, x17)

# rs2_val == 281474976710656, 
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0001000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffdfffffff, 0x0001000000000000, x5, 1280, x17)

# rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000000000005
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x8000000000000000, 0x0000000000000005, x5, 1288, x17)

# rs1_val == 1, rs1_val > 0 and rs2_val > 0, rs2_val == 9007199254740992
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0020000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000000001, 0x0020000000000000, x5, 1296, x17)

# rs1_val == 262144, rs2_val == 70368744177664
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000400000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000040000, 0x0000400000000000, x5, 1304, x17)

# rs1_val == 8388608, rs2_val == 549755813888
# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000008000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000800000, 0x0000008000000000, x5, 1312, x17)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 19*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 165*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
