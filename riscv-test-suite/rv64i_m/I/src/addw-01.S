
#This assembly file tests the addw instruction of the RISC-V I extension for the addw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",addw)

RVTEST_SIGBASE( x23,signature_x23_1)

# rs1 == rd != rs2, rs1==x14, rs2==x4, rd==x14, rs1_val == (-2**(xlen-1)), rs2_val == -129, rs1_val < 0 and rs2_val < 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: addw ; op1:x14; op2:x4; dest:x14; op1val:0x8000000000000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(addw, x14, x14, x4, 0xffffff7f, 0x8000000000000000, 0xffffffffffffff7f, x23, 0, x16)

# rs1 == rs2 != rd, rs1==x10, rs2==x10, rd==x27, rs1_val == 0, rs2_val == 4503599627370496
# opcode: addw ; op1:x10; op2:x10; dest:x27; op1val:0x0000000000000000;  op2val:0x0010000000000000
TEST_RR_OP(addw, x27, x10, x10, 0x0, 0x0000000000000000, 0x0010000000000000, x23, 8, x16)

# rs2 == rd != rs1, rs1==x2, rs2==x6, rd==x6, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 268435456, rs1_val == 9223372036854775807
# opcode: addw ; op1:x2; op2:x6; dest:x6; op1val:0x7fffffffffffffff;  op2val:0x0000000010000000
TEST_RR_OP(addw, x6, x2, x6, 0x10fffffff, 0x7fffffffffffffff, 0x0000000010000000, x23, 16, x16)

# rs1 == rs2 == rd, rs1==x15, rs2==x15, rd==x15, rs1_val == 1, rs2_val == 4
# opcode: addw ; op1:x15; op2:x15; dest:x15; op1val:0x0000000000000001;  op2val:0x0000000000000004
TEST_RR_OP(addw, x15, x15, x15, 0x5, 0x0000000000000001, 0x0000000000000004, x23, 24, x16)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x11, rs2==x22, rd==x9, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808, rs1_val == -5
# opcode: addw ; op1:x11; op2:x22; dest:x9; op1val:0xfffffffffffffffb;  op2val:0x8000000000000000
TEST_RR_OP(addw, x9, x11, x22, 0xfffffffb, 0xfffffffffffffffb, 0x8000000000000000, x23, 32, x16)

# rs1==x13, rs2==x29, rd==x19, rs2_val == 0, rs1_val == 128
# opcode: addw ; op1:x13; op2:x29; dest:x19; op1val:0x0000000000000080;  op2val:0x0000000000000000
TEST_RR_OP(addw, x19, x13, x29, 0x80, 0x0000000000000080, 0x0000000000000000, x23, 40, x16)

# rs1==x7, rs2==x17, rd==x20, rs2_val == (2**(xlen-1)-1), rs1_val == -2251799813685249, rs1_val < 0 and rs2_val > 0, rs2_val == 9223372036854775807
# opcode: addw ; op1:x7; op2:x17; dest:x20; op1val:0xfff7ffffffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(addw, x20, x7, x17, 0x1fffffffe, 0xfff7ffffffffffff, 0x7fffffffffffffff, x23, 48, x16)

# rs1==x19, rs2==x1, rd==x3, rs2_val == 1, rs1_val == 35184372088832
# opcode: addw ; op1:x19; op2:x1; dest:x3; op1val:0x0000200000000000;  op2val:0x0000000000000001
TEST_RR_OP(addw, x3, x19, x1, 0x1, 0x0000200000000000, 0x0000000000000001, x23, 56, x16)

# rs1==x27, rs2==x14, rd==x10, rs1_val > 0 and rs2_val < 0, rs1_val == 70368744177664, rs2_val == -70368744177665
# opcode: addw ; op1:x27; op2:x14; dest:x10; op1val:0x0000400000000000;  op2val:0xffffbfffffffffff
TEST_RR_OP(addw, x10, x27, x14, 0xffffffff, 0x0000400000000000, 0xffffbfffffffffff, x23, 64, x16)

# rs1==x26, rs2==x28, rd==x17, rs1_val == rs2_val, rs1_val == -9007199254740993, rs2_val == -9007199254740993
# opcode: addw ; op1:x26; op2:x28; dest:x17; op1val:0xffdfffffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(addw, x17, x26, x28, 0x1fffffffe, 0xffdfffffffffffff, 0xffdfffffffffffff, x23, 72, x16)

# rs1==x31, rs2==x13, rd==x1, rs1_val == 2, 
# opcode: addw ; op1:x31; op2:x13; dest:x1; op1val:0x0000000000000002;  op2val:0x0000000000000009
TEST_RR_OP(addw, x1, x31, x13, 0xb, 0x0000000000000002, 0x0000000000000009, x23, 80, x16)

# rs1==x17, rs2==x26, rd==x11, rs1_val == 4, 
# opcode: addw ; op1:x17; op2:x26; dest:x11; op1val:0x0000000000000004;  op2val:0x0010000000000000
TEST_RR_OP(addw, x11, x17, x26, 0x4, 0x0000000000000004, 0x0010000000000000, x23, 88, x16)

# rs1==x1, rs2==x24, rd==x28, rs1_val == 8, rs2_val == -8193
# opcode: addw ; op1:x1; op2:x24; dest:x28; op1val:0x0000000000000008;  op2val:0xffffffffffffdfff
TEST_RR_OP(addw, x28, x1, x24, 0xffffe007, 0x0000000000000008, 0xffffffffffffdfff, x23, 96, x16)

# rs1==x18, rs2==x21, rd==x13, rs1_val == 16, rs2_val == -4194305
# opcode: addw ; op1:x18; op2:x21; dest:x13; op1val:0x0000000000000010;  op2val:0xffffffffffbfffff
TEST_RR_OP(addw, x13, x18, x21, 0xffc0000f, 0x0000000000000010, 0xffffffffffbfffff, x23, 104, x16)

# rs1==x4, rs2==x5, rd==x31, rs1_val == 32, rs2_val == -32769
# opcode: addw ; op1:x4; op2:x5; dest:x31; op1val:0x0000000000000020;  op2val:0xffffffffffff7fff
TEST_RR_OP(addw, x31, x4, x5, 0xffff801f, 0x0000000000000020, 0xffffffffffff7fff, x23, 112, x16)

# rs1==x8, rs2==x11, rd==x22, rs1_val == 64, 
# opcode: addw ; op1:x8; op2:x11; dest:x22; op1val:0x0000000000000040;  op2val:0xfffffffffffffffa
TEST_RR_OP(addw, x22, x8, x11, 0x10000003a, 0x0000000000000040, 0xfffffffffffffffa, x23, 120, x16)

# rs1==x28, rs2==x27, rd==x12, rs1_val == 256, rs2_val == -65
# opcode: addw ; op1:x28; op2:x27; dest:x12; op1val:0x0000000000000100;  op2val:0xffffffffffffffbf
TEST_RR_OP(addw, x12, x28, x27, 0x1000000bf, 0x0000000000000100, 0xffffffffffffffbf, x23, 128, x16)

# rs1==x12, rs2==x16, rd==x29, rs1_val == 512, rs2_val == -1125899906842625
# opcode: addw ; op1:x12; op2:x16; dest:x29; op1val:0x0000000000000200;  op2val:0xfffbffffffffffff
TEST_RR_OP(addw, x29, x12, x16, 0x1000001ff, 0x0000000000000200, 0xfffbffffffffffff, x23, 136, x13)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x30, rs2==x7, rd==x21, rs1_val == 1024, rs2_val == -8388609
# opcode: addw ; op1:x30; op2:x7; dest:x21; op1val:0x0000000000000400;  op2val:0xffffffffff7fffff
TEST_RR_OP(addw, x21, x30, x7, 0xff8003ff, 0x0000000000000400, 0xffffffffff7fffff, x1, 0, x13)

# rs1==x21, rs2==x9, rd==x26, rs1_val == 2048, rs2_val == 4398046511104
# opcode: addw ; op1:x21; op2:x9; dest:x26; op1val:0x0000000000000800;  op2val:0x0000040000000000
TEST_RR_OP(addw, x26, x21, x9, 0x800, 0x0000000000000800, 0x0000040000000000, x1, 8, x13)

# rs1==x6, rs2==x3, rd==x7, rs1_val == 4096, 
# opcode: addw ; op1:x6; op2:x3; dest:x7; op1val:0x0000000000001000;  op2val:0xffffffffff7fffff
TEST_RR_OP(addw, x7, x6, x3, 0xff800fff, 0x0000000000001000, 0xffffffffff7fffff, x1, 16, x13)

# rs1==x9, rs2==x18, rd==x2, rs1_val == 8192, rs2_val == 1152921504606846976
# opcode: addw ; op1:x9; op2:x18; dest:x2; op1val:0x0000000000002000;  op2val:0x1000000000000000
TEST_RR_OP(addw, x2, x9, x18, 0x2000, 0x0000000000002000, 0x1000000000000000, x1, 24, x13)

# rs1==x16, rs2==x20, rd==x5, rs1_val == 16384, rs2_val == 1125899906842624
# opcode: addw ; op1:x16; op2:x20; dest:x5; op1val:0x0000000000004000;  op2val:0x0004000000000000
TEST_RR_OP(addw, x5, x16, x20, 0x4000, 0x0000000000004000, 0x0004000000000000, x1, 32, x13)

# rs1==x23, rs2==x31, rd==x25, rs1_val == 32768, 
# opcode: addw ; op1:x23; op2:x31; dest:x25; op1val:0x0000000000008000;  op2val:0xc000000000000000
TEST_RR_OP(addw, x25, x23, x31, 0x8000, 0x0000000000008000, 0xc000000000000000, x1, 40, x13)

# rs1==x3, rs2==x23, rd==x18, rs1_val == 65536, 
# opcode: addw ; op1:x3; op2:x23; dest:x18; op1val:0x0000000000010000;  op2val:0xffffffffffbfffff
TEST_RR_OP(addw, x18, x3, x23, 0xffc0ffff, 0x0000000000010000, 0xffffffffffbfffff, x1, 48, x13)

# rs1==x0, rs2==x25, rd==x24, rs1_val == 131072, rs2_val == -524289
# opcode: addw ; op1:x0; op2:x25; dest:x24; op1val:0x0000000000020000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(addw, x24, x0, x25, 0xfff9ffff, 0x0000000000020000, 0xfffffffffff7ffff, x1, 56, x13)

# rs1==x24, rs2==x12, rd==x8, rs1_val == 262144, rs2_val == 524288
# opcode: addw ; op1:x24; op2:x12; dest:x8; op1val:0x0000000000040000;  op2val:0x0000000000080000
TEST_RR_OP(addw, x8, x24, x12, 0xc0000, 0x0000000000040000, 0x0000000000080000, x1, 64, x13)

# rs1==x25, rs2==x8, rd==x30, rs1_val == 524288, rs2_val == -3
# opcode: addw ; op1:x25; op2:x8; dest:x30; op1val:0x0000000000080000;  op2val:0xfffffffffffffffd
TEST_RR_OP(addw, x30, x25, x8, 0x10007fffd, 0x0000000000080000, 0xfffffffffffffffd, x1, 72, x13)

# rs1==x22, rs2==x2, rd==x4, rs1_val == 1048576, rs2_val == 562949953421312
# opcode: addw ; op1:x22; op2:x2; dest:x4; op1val:0x0000000000100000;  op2val:0x0002000000000000
TEST_RR_OP(addw, x4, x22, x2, 0x100000, 0x0000000000100000, 0x0002000000000000, x1, 80, x13)

# rs1==x20, rs2==x0, rd==x23, rs1_val == 2097152, rs2_val == -2049
# opcode: addw ; op1:x20; op2:x0; dest:x23; op1val:0x0000000000200000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(addw, x23, x20, x0, 0x1001ff7ff, 0x0000000000200000, 0xfffffffffffff7ff, x1, 88, x13)

# rs1==x29, rs2==x19, rd==x0, rs1_val == 4194304, rs2_val == -72057594037927937
# opcode: addw ; op1:x29; op2:x19; dest:x0; op1val:0x0000000000400000;  op2val:0xfeffffffffffffff
TEST_RR_OP(addw, x0, x29, x19, 0x1003fffff, 0x0000000000400000, 0xfeffffffffffffff, x1, 96, x13)

# rs1==x5, rs2==x30, rd==x16, rs1_val == 8388608, rs2_val == 8388608
# opcode: addw ; op1:x5; op2:x30; dest:x16; op1val:0x0000000000800000;  op2val:0x0000000000800000
TEST_RR_OP(addw, x16, x5, x30, 0x1000000, 0x0000000000800000, 0x0000000000800000, x1, 104, x13)

# rs1_val == 16777216, rs2_val == 128
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000080
TEST_RR_OP(addw, x12, x10, x11, 0x1000080, 0x0000000001000000, 0x0000000000000080, x1, 112, x13)

# rs1_val == 33554432, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000003
TEST_RR_OP(addw, x12, x10, x11, 0x2000003, 0x0000000002000000, 0x0000000000000003, x1, 120, x13)

# rs1_val == 67108864, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000000005
TEST_RR_OP(addw, x12, x10, x11, 0x4000005, 0x0000000004000000, 0x0000000000000005, x1, 128, x13)

# rs1_val == 134217728, rs2_val == -67108865
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(addw, x12, x10, x11, 0x103ffffff, 0x0000000008000000, 0xfffffffffbffffff, x1, 136, x13)

# rs1_val == 268435456, rs2_val == 4096
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000001000
TEST_RR_OP(addw, x12, x10, x11, 0x10001000, 0x0000000010000000, 0x0000000000001000, x1, 144, x13)

# rs1_val == 536870912, rs2_val == -274877906945
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x11fffffff, 0x0000000020000000, 0xffffffbfffffffff, x1, 152, x13)

# rs1_val == 1073741824, rs2_val == 536870912
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000020000000
TEST_RR_OP(addw, x12, x10, x11, 0x60000000, 0x0000000040000000, 0x0000000020000000, x1, 160, x13)

# rs1_val == 2147483648, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xfffffffffffffff9
TEST_RR_OP(addw, x12, x10, x11, 0x17ffffff9, 0x0000000080000000, 0xfffffffffffffff9, x1, 168, x13)

# rs1_val == 4294967296, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000040000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000040000000000, x1, 176, x13)

# rs1_val == 8589934592, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xfffbffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000000200000000, 0xfffbffffffffffff, x1, 184, x13)

# rs1_val == 17179869184, rs2_val == -16777217
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(addw, x12, x10, x11, 0xfeffffff, 0x0000000400000000, 0xfffffffffeffffff, x1, 192, x13)

# rs1_val == 34359738368, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000000800000000, 0xffffffbfffffffff, x1, 200, x13)

# rs1_val == 68719476736, rs2_val == -144115188075855873
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000001000000000, 0xfdffffffffffffff, x1, 208, x13)

# rs1_val == 137438953472, rs2_val == -4294967297
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000002000000000, 0xfffffffeffffffff, x1, 216, x13)

# rs1_val == 274877906944, rs2_val == -6148914691236517206
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(addw, x12, x10, x11, 0xaaaaaaaa, 0x0000004000000000, 0xaaaaaaaaaaaaaaaa, x1, 224, x13)

# rs1_val == 549755813888, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000003
TEST_RR_OP(addw, x12, x10, x11, 0x3, 0x0000008000000000, 0x0000000000000003, x1, 232, x13)

# rs1_val == 1099511627776, rs2_val == -262145
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(addw, x12, x10, x11, 0xfffbffff, 0x0000010000000000, 0xfffffffffffbffff, x1, 240, x13)

# rs1_val == 2199023255552, rs2_val == 8
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000008
TEST_RR_OP(addw, x12, x10, x11, 0x8, 0x0000020000000000, 0x0000000000000008, x1, 248, x13)

# rs1_val == 4398046511104, rs2_val == -17179869185
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000040000000000, 0xfffffffbffffffff, x1, 256, x13)

# rs1_val == 8796093022208, rs2_val == 17592186044416
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000100000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000080000000000, 0x0000100000000000, x1, 264, x13)

# rs1_val == 17592186044416, rs2_val == -4503599627370497
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffefffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000100000000000, 0xffefffffffffffff, x1, 272, x13)

# rs1_val == 140737488355328, rs2_val == -4097
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xffffffffffffefff
TEST_RR_OP(addw, x12, x10, x11, 0xffffefff, 0x0000800000000000, 0xffffffffffffefff, x1, 280, x13)

# rs1_val == 281474976710656, rs2_val == -68719476737
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xffffffefffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0001000000000000, 0xffffffefffffffff, x1, 288, x13)

# rs1_val == 562949953421312, rs2_val == 134217728
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000008000000
TEST_RR_OP(addw, x12, x10, x11, 0x8000000, 0x0002000000000000, 0x0000000008000000, x1, 296, x13)

# rs1_val == 1125899906842624, rs2_val == 4611686018427387904
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x4000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0004000000000000, 0x4000000000000000, x1, 304, x13)

# rs1_val == 2251799813685248, rs2_val == 1024
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000000400
TEST_RR_OP(addw, x12, x10, x11, 0x400, 0x0008000000000000, 0x0000000000000400, x1, 312, x13)

# rs1_val == 4503599627370496, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000001
TEST_RR_OP(addw, x12, x10, x11, 0x1, 0x0010000000000000, 0x0000000000000001, x1, 320, x13)

# rs1_val == 9007199254740992, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffefffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0020000000000000, 0xffefffffffffffff, x1, 328, x13)

# rs1_val == 18014398509481984, rs2_val == -134217729
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(addw, x12, x10, x11, 0xf7ffffff, 0x0040000000000000, 0xfffffffff7ffffff, x1, 336, x13)

# rs1_val == 36028797018963968, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(addw, x12, x10, x11, 0xffbfffff, 0x0080000000000000, 0xffffffffffbfffff, x1, 344, x13)

# rs1_val == 72057594037927936, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0100000000000000, 0xfffffffbffffffff, x1, 352, x13)

# rs1_val == 144115188075855872, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0200000000000000, 0xfffffffeffffffff, x1, 360, x13)

# rs1_val == 288230376151711744, rs2_val == 36028797018963968
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0080000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0400000000000000, 0x0080000000000000, x1, 368, x13)

# rs1_val == 576460752303423488, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0800000000000000, 0xffffffbfffffffff, x1, 376, x13)

# rs1_val == 1152921504606846976, rs2_val == -1152921504606846977
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xefffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x1000000000000000, 0xefffffffffffffff, x1, 384, x13)

# rs1_val == 2305843009213693952, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000006
TEST_RR_OP(addw, x12, x10, x11, 0x6, 0x2000000000000000, 0x0000000000000006, x1, 392, x13)

# rs1_val == 4611686018427387904, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x4000000000000000, 0xfeffffffffffffff, x1, 400, x13)

# rs1_val == -2, rs2_val == -36028797018963969
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xff7fffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffd, 0xfffffffffffffffe, 0xff7fffffffffffff, x1, 408, x13)

# rs1_val == -3, rs2_val == 2199023255552
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000020000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffd, 0xfffffffffffffffd, 0x0000020000000000, x1, 416, x13)

# rs1_val == -9, rs2_val == 35184372088832
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000200000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfffffff7, 0xfffffffffffffff7, 0x0000200000000000, x1, 424, x13)

# rs1_val == -17, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffffbfffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffffee, 0xffffffffffffffef, 0xffffffbfffffffff, x1, 432, x13)

# rs1_val == -33, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0080000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffdf, 0xffffffffffffffdf, 0x0080000000000000, x1, 440, x13)

# rs1_val == -65, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x7fffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffffbe, 0xffffffffffffffbf, 0x7fffffffffffffff, x1, 448, x13)

# rs1_val == -129, rs2_val == 17179869184
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000400000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffff7f, 0xffffffffffffff7f, 0x0000000400000000, x1, 456, x13)

# rs1_val == -257, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0080000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfffffeff, 0xfffffffffffffeff, 0x0080000000000000, x1, 464, x13)

# rs1_val == -513, rs2_val == 32768
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000008000
TEST_RR_OP(addw, x12, x10, x11, 0x100007dff, 0xfffffffffffffdff, 0x0000000000008000, x1, 472, x13)

# rs1_val == -1025, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfffffbff, 0xfffffffffffffbff, 0x0000000000000000, x1, 480, x13)

# rs1_val == -2049, rs2_val == -33
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xffffffffffffffdf
TEST_RR_OP(addw, x12, x10, x11, 0x1fffff7de, 0xfffffffffffff7ff, 0xffffffffffffffdf, x1, 488, x13)

# rs1_val == -4097, rs2_val == -288230376151711745
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfbffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffeffe, 0xffffffffffffefff, 0xfbffffffffffffff, x1, 496, x13)

# rs2_val == -2251799813685249, rs1_val == -4294967297
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffffffeffffffff, 0xfff7ffffffffffff, x1, 504, x13)

# rs2_val == -18014398509481985, rs1_val == -2199023255553
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffffdffffffffff, 0xffbfffffffffffff, x1, 512, x13)

# rs2_val == -576460752303423489, rs1_val == -36028797018963969
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xff7fffffffffffff, 0xf7ffffffffffffff, x1, 520, x13)

# rs2_val == -2305843009213693953, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000000800000000, 0xdfffffffffffffff, x1, 528, x13)

# rs2_val == -4611686018427387905, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xc000000000000000, 0xbfffffffffffffff, x1, 536, x13)

# rs2_val == 6148914691236517205, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x5555555555555555
TEST_RR_OP(addw, x12, x10, x11, 0xd5555555, 0x0000000080000000, 0x5555555555555555, x1, 544, x13)

# rs1_val == -8193, rs2_val == 2048
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000800
TEST_RR_OP(addw, x12, x10, x11, 0xffffe7ff, 0xffffffffffffdfff, 0x0000000000000800, x1, 552, x13)

# rs1_val == -16385, rs2_val == -33554433
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xfffffffffdffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fdffbffe, 0xffffffffffffbfff, 0xfffffffffdffffff, x1, 560, x13)

# rs1_val == -32769, rs2_val == -513
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xfffffffffffffdff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffff7dfe, 0xffffffffffff7fff, 0xfffffffffffffdff, x1, 568, x13)

# rs1_val == -65537, rs2_val == -562949953421313
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffefffe, 0xfffffffffffeffff, 0xfffdffffffffffff, x1, 576, x13)

# rs1_val == -131073, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xffffffffffffefff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffdeffe, 0xfffffffffffdffff, 0xffffffffffffefff, x1, 584, x13)

# rs1_val == -262145, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfffffffffffffff9
TEST_RR_OP(addw, x12, x10, x11, 0x1fffbfff8, 0xfffffffffffbffff, 0xfffffffffffffff9, x1, 592, x13)

# rs1_val == -524289, rs2_val == -137438953473
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fff7fffe, 0xfffffffffff7ffff, 0xffffffdfffffffff, x1, 600, x13)

# rs1_val == -1048577, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ff6ffffe, 0xffffffffffefffff, 0xffffffffff7fffff, x1, 608, x13)

# rs1_val == -2097153, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000000005
TEST_RR_OP(addw, x12, x10, x11, 0xffe00004, 0xffffffffffdfffff, 0x0000000000000005, x1, 616, x13)

# rs1_val == -4194305, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffbf7ffe, 0xffffffffffbfffff, 0xffffffffffff7fff, x1, 624, x13)

# rs1_val == -8388609, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fe7ffffe, 0xffffffffff7fffff, 0xfffffffffeffffff, x1, 632, x13)

# rs1_val == -16777217, rs2_val == -4398046511105
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fefffffe, 0xfffffffffeffffff, 0xfffffbffffffffff, x1, 640, x13)

# rs1_val == -33554433, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(addw, x12, x10, x11, 0x1fdffff7e, 0xfffffffffdffffff, 0xffffffffffffff7f, x1, 648, x13)

# rs1_val == -67108865, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000040000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfbffffff, 0xfffffffffbffffff, 0x0000040000000000, x1, 656, x13)

# rs1_val == -134217729, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xffffffefffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1f7fffffe, 0xfffffffff7ffffff, 0xffffffefffffffff, x1, 664, x13)

# rs1_val == -268435457, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000001
TEST_RR_OP(addw, x12, x10, x11, 0xf0000000, 0xffffffffefffffff, 0x0000000000000001, x1, 672, x13)

# rs1_val == -536870913, rs2_val == -8589934593
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1dffffffe, 0xffffffffdfffffff, 0xfffffffdffffffff, x1, 680, x13)

# rs1_val == -1073741825, rs2_val == 8192
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000002000
TEST_RR_OP(addw, x12, x10, x11, 0xc0001fff, 0xffffffffbfffffff, 0x0000000000002000, x1, 688, x13)

# rs1_val == -2147483649, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000800000
TEST_RR_OP(addw, x12, x10, x11, 0x807fffff, 0xffffffff7fffffff, 0x0000000000800000, x1, 696, x13)

# rs1_val == -8589934593, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffc, 0xfffffffdffffffff, 0xfffffffffffffffd, x1, 704, x13)

# rs1_val == -17179869185, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xc000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffffffbffffffff, 0xc000000000000000, x1, 712, x13)

# rs1_val == -34359738369, rs2_val == 4294967296
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000100000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffffff7ffffffff, 0x0000000100000000, x1, 720, x13)

# rs1_val == -68719476737, rs2_val == 2
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000002
TEST_RR_OP(addw, x12, x10, x11, 0x100000001, 0xffffffefffffffff, 0x0000000000000002, x1, 728, x13)

# rs1_val == -137438953473, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000020000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffffffdfffffffff, 0x0000020000000000, x1, 736, x13)

# rs1_val == -274877906945, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xffffffbfffffffff, 0xbfffffffffffffff, x1, 744, x13)

# rs1_val == -549755813889, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000400000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffffff7fffffffff, 0x0000000400000000, x1, 752, x13)

# rs1_val == -1099511627777, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffffeffffffffff, 0xfff7ffffffffffff, x1, 760, x13)

# rs1_val == -4398046511105, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000008000
TEST_RR_OP(addw, x12, x10, x11, 0x100007fff, 0xfffffbffffffffff, 0x0000000000008000, x1, 768, x13)

# rs1_val == -8796093022209, rs2_val == -1073741825
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1bffffffe, 0xfffff7ffffffffff, 0xffffffffbfffffff, x1, 776, x13)

# rs1_val == -17592186044417, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000080000
TEST_RR_OP(addw, x12, x10, x11, 0x10007ffff, 0xffffefffffffffff, 0x0000000000080000, x1, 784, x13)

# rs1_val == -35184372088833, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0080000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffffdfffffffffff, 0x0080000000000000, x1, 792, x13)

# rs1_val == -70368744177665, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fbfffffe, 0xffffbfffffffffff, 0xfffffffffbffffff, x1, 800, x13)

# rs1_val == -140737488355329, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1bffffffe, 0xffff7fffffffffff, 0xffffffffbfffffff, x1, 808, x13)

# rs1_val == -281474976710657, rs2_val == 68719476736
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000001000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffeffffffffffff, 0x0000001000000000, x1, 816, x13)

# rs1_val == -562949953421313, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffdffffffffffff, 0xfbffffffffffffff, x1, 824, x13)

# rs1_val == -1125899906842625, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffbffffffffffff, 0xffefffffffffffff, x1, 832, x13)

# rs1_val == -4503599627370497, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(addw, x12, x10, x11, 0x100000008, 0xffefffffffffffff, 0x0000000000000009, x1, 840, x13)

# rs1_val == -18014398509481985, rs2_val == -65537
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffefffe, 0xffbfffffffffffff, 0xfffffffffffeffff, x1, 848, x13)

# rs1_val == -72057594037927937, rs2_val == -17592186044417
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfeffffffffffffff, 0xffffefffffffffff, x1, 856, x13)

# rs1_val == -144115188075855873, rs2_val == 1048576
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000100000
TEST_RR_OP(addw, x12, x10, x11, 0x1000fffff, 0xfdffffffffffffff, 0x0000000000100000, x1, 864, x13)

# rs1_val == -288230376151711745, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffffbe, 0xfbffffffffffffff, 0xffffffffffffffbf, x1, 872, x13)

# rs1_val == -576460752303423489, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(addw, x12, x10, x11, 0x100000006, 0xf7ffffffffffffff, 0x0000000000000007, x1, 880, x13)

# rs1_val == -1152921504606846977, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1f7fffffe, 0xefffffffffffffff, 0xfffffffff7ffffff, x1, 888, x13)

# rs1_val == -2305843009213693953, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1f7fffffe, 0xdfffffffffffffff, 0xfffffffff7ffffff, x1, 896, x13)

# rs1_val == -4611686018427387905, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(addw, x12, x10, x11, 0x100000006, 0xbfffffffffffffff, 0x0000000000000007, x1, 904, x13)

# rs1_val == 6148914691236517205, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffbffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x155555554, 0x5555555555555555, 0xfffffffbffffffff, x1, 912, x13)

# rs1_val == -6148914691236517206, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffbfffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1aaaaaaa9, 0xaaaaaaaaaaaaaaaa, 0xffbfffffffffffff, x1, 920, x13)

# rs2_val == 16, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000000000010
TEST_RR_OP(addw, x12, x10, x11, 0x11, 0x0000000000000001, 0x0000000000000010, x1, 928, x13)

# rs2_val == 32, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000020
TEST_RR_OP(addw, x12, x10, x11, 0x10000001f, 0xffffffefffffffff, 0x0000000000000020, x1, 936, x13)

# rs2_val == 64, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000000040
TEST_RR_OP(addw, x12, x10, x11, 0x40, 0x0008000000000000, 0x0000000000000040, x1, 944, x13)

# rs2_val == 256, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000100
TEST_RR_OP(addw, x12, x10, x11, 0xff8000ff, 0xffffffffff7fffff, 0x0000000000000100, x1, 952, x13)

# rs2_val == 512, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0x0000000000000200
TEST_RR_OP(addw, x12, x10, x11, 0x1000001ff, 0xffffffffffffffff, 0x0000000000000200, x1, 960, x13)

# rs2_val == 16384, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000004000
TEST_RR_OP(addw, x12, x10, x11, 0x4000, 0x0004000000000000, 0x0000000000004000, x1, 968, x13)

# rs2_val == 65536, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000010000
TEST_RR_OP(addw, x12, x10, x11, 0x10000fffd, 0xfffffffffffffffd, 0x0000000000010000, x1, 976, x13)

# rs2_val == 131072, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000020000
TEST_RR_OP(addw, x12, x10, x11, 0x20000, 0x0400000000000000, 0x0000000000020000, x1, 984, x13)

# rs2_val == 262144, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000040000
TEST_RR_OP(addw, x12, x10, x11, 0x1040000, 0x0000000001000000, 0x0000000000040000, x1, 992, x13)

# rs2_val == 2097152, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000200000
TEST_RR_OP(addw, x12, x10, x11, 0x200000, 0x0000100000000000, 0x0000000000200000, x1, 1000, x13)

# rs2_val == 4194304, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000400000
TEST_RR_OP(addw, x12, x10, x11, 0x400000, 0x0400000000000000, 0x0000000000400000, x1, 1008, x13)

# rs2_val == 16777216, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000001000000
TEST_RR_OP(addw, x12, x10, x11, 0xabaaaaaa, 0xaaaaaaaaaaaaaaaa, 0x0000000001000000, x1, 1016, x13)

# rs2_val == 33554432, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0x0000000002000000
TEST_RR_OP(addw, x12, x10, x11, 0x2000000, 0xc000000000000000, 0x0000000002000000, x1, 1024, x13)

# rs2_val == 67108864, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000004000000
TEST_RR_OP(addw, x12, x10, x11, 0x103ffffff, 0xfff7ffffffffffff, 0x0000000004000000, x1, 1032, x13)

# rs2_val == 1073741824, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000040000000
TEST_RR_OP(addw, x12, x10, x11, 0x40000000, 0x0001000000000000, 0x0000000040000000, x1, 1040, x13)

# rs2_val == 2147483648, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000080000000
TEST_RR_OP(addw, x12, x10, x11, 0x13fffffff, 0xffffffffbfffffff, 0x0000000080000000, x1, 1048, x13)

# rs2_val == 8589934592, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000200000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0040000000000000, 0x0000000200000000, x1, 1056, x13)

# rs2_val == 34359738368, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0x0000000800000000
TEST_RR_OP(addw, x12, x10, x11, 0x400, 0x0000000000000400, 0x0000000800000000, x1, 1064, x13)

# rs2_val == 137438953472, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000002000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffffff7ffffffff, 0x0000002000000000, x1, 1072, x13)

# rs2_val == 274877906944, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000004000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000000800000000, 0x0000004000000000, x1, 1080, x13)

# rs2_val == 549755813888, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000008000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000008000000000, x1, 1088, x13)

# rs2_val == 1099511627776, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000010000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000400000000000, 0x0000010000000000, x1, 1096, x13)

# rs2_val == 8796093022208, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000080000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000080000000000, x1, 1104, x13)

# rs2_val == 70368744177664, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000400000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000400000000000, x1, 1112, x13)

# rs2_val == 2251799813685248, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0x0008000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x200, 0x0000000000000200, 0x0008000000000000, x1, 1120, x13)

# rs2_val == 9007199254740992, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0020000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x55555555, 0x5555555555555555, 0x0020000000000000, x1, 1128, x13)

# rs2_val == 18014398509481984, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0040000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfeffffffffffffff, 0x0040000000000000, x1, 1136, x13)

# rs2_val == 72057594037927936, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0100000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x10000000, 0x0000000010000000, 0x0100000000000000, x1, 1144, x13)

# rs2_val == 144115188075855872, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0200000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0002000000000000, 0x0200000000000000, x1, 1152, x13)

# rs2_val == 288230376151711744, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffc;  op2val:0x0400000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffc, 0xfffffffffffffffc, 0x0400000000000000, x1, 1160, x13)

# rs2_val == 576460752303423488, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0800000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfbffffffffffffff, 0x0800000000000000, x1, 1168, x13)

# rs2_val == 2305843009213693952, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x2000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0200000000000000, 0x2000000000000000, x1, 1176, x13)

# rs2_val == -2, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(addw, x12, x10, x11, 0x1ffbffffd, 0xffffffffffbfffff, 0xfffffffffffffffe, x1, 1184, x13)

# rs2_val == -5, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0xfffffffffffffffb
TEST_RR_OP(addw, x12, x10, x11, 0x100000003, 0x0000000000000008, 0xfffffffffffffffb, x1, 1192, x13)

# rs2_val == -9, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(addw, x12, x10, x11, 0xfffffff7, 0x0000002000000000, 0xfffffffffffffff7, x1, 1200, x13)

# rs2_val == -17, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xffffffffffffffef
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffdfee, 0xffffffffffffdfff, 0xffffffffffffffef, x1, 1208, x13)

# rs2_val == -281474976710657, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0xfffeffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1000001ff, 0x0000000000000200, 0xfffeffffffffffff, x1, 1216, x13)

# rs2_val == 140737488355328, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000800000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffe, 0xfffffffffffffffe, 0x0000800000000000, x1, 1224, x13)

# rs2_val == -257, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(addw, x12, x10, x11, 0xfffffeff, 0x0000080000000000, 0xfffffffffffffeff, x1, 1232, x13)

# rs2_val == -1025, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(addw, x12, x10, x11, 0xfffffbff, 0x0400000000000000, 0xfffffffffffffbff, x1, 1240, x13)

# rs2_val == -1048577, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffeffffe, 0xfffffff7ffffffff, 0xffffffffffefffff, x1, 1248, x13)

# rs2_val == -2097153, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0xffffffffffdfffff
TEST_RR_OP(addw, x12, x10, x11, 0xffe003ff, 0x0000000000000400, 0xffffffffffdfffff, x1, 1256, x13)

# rs2_val == -268435457, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xffffffffefffffff
TEST_RR_OP(addw, x12, x10, x11, 0x16ffffffe, 0xffffffff7fffffff, 0xffffffffefffffff, x1, 1264, x13)

# rs2_val == -536870913, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1dbfffffe, 0xfffffffffbffffff, 0xffffffffdfffffff, x1, 1272, x13)

# rs2_val == -2147483649, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(addw, x12, x10, x11, 0x17ffffffe, 0xfdffffffffffffff, 0xffffffff7fffffff, x1, 1280, x13)

# rs2_val == -34359738369, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1bffffffe, 0xffffffffbfffffff, 0xfffffff7ffffffff, x1, 1288, x13)

# rs2_val == -549755813889, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffffff7fffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000200000000000, 0xffffff7fffffffff, x1, 1296, x13)

# rs2_val == -1099511627777, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffeffffffffffff, 0xfffffeffffffffff, x1, 1304, x13)

# rs2_val == -2199023255553, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffffffbffffffff, 0xfffffdffffffffff, x1, 1312, x13)

# rs2_val == -8796093022209, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffeffe, 0xffffffffffffefff, 0xfffff7ffffffffff, x1, 1320, x13)

# rs2_val == -35184372088833, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000800000000000, 0xffffdfffffffffff, x1, 1328, x13)

# rs2_val == -16385, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffffffffbfff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffaffe, 0xffffffffffffefff, 0xffffffffffffbfff, x1, 1336, x13)

# rs2_val == -140737488355329, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1effffffe, 0xffffffffefffffff, 0xffff7fffffffffff, x1, 1344, x13)

# rs2_val == 281474976710656, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0001000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfdffffff, 0xfffffffffdffffff, 0x0001000000000000, x1, 1352, x13)

# rs2_val == -131073, 
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffdfffe, 0xfffffffeffffffff, 0xfffffffffffdffff, x1, 1360, x13)

# rs1_val == (-2**(xlen-1)), rs2_val == -129, rs1_val < 0 and rs2_val < 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(addw, x12, x10, x11, 0xffffff7f, 0x8000000000000000, 0xffffffffffffff7f, x1, 1368, x13)

# rs1_val == 0, rs2_val == 4503599627370496
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0010000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000000000000000, 0x0010000000000000, x1, 1376, x13)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 268435456, rs1_val == 9223372036854775807
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000010000000
TEST_RR_OP(addw, x12, x10, x11, 0x10fffffff, 0x7fffffffffffffff, 0x0000000010000000, x1, 1384, x13)

# rs1_val == 1, rs2_val == 4
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000000000004
TEST_RR_OP(addw, x12, x10, x11, 0x5, 0x0000000000000001, 0x0000000000000004, x1, 1392, x13)

# rs1_val == 131072, rs2_val == -524289
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(addw, x12, x10, x11, 0xfff9ffff, 0x0000000000020000, 0xfffffffffff7ffff, x1, 1400, x13)

# rs1_val == 2097152, rs2_val == -2049
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(addw, x12, x10, x11, 0x1001ff7ff, 0x0000000000200000, 0xfffffffffffff7ff, x1, 1408, x13)

# rs1_val == 4194304, rs2_val == -72057594037927937
# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0xfeffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1003fffff, 0x0000000000400000, 0xfeffffffffffffff, x1, 1416, x13)
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

signature_x23_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x23_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 178*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
