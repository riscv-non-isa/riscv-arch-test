
#This assembly file tests the mulhu instruction of the RISC-V M extension for the mulhu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",mulhu)

RVTEST_SIGBASE( x25,signature_x25_1)

# rs1 == rs2 != rd, rs1==x9, rs2==x9, rd==x28, rs1_val == (-2**(xlen-1)), rs2_val == 64, rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: mulhu ; op1:x9; op2:x9; dest:x28; op1val:0x8000000000000000;  op2val:0x0000000000000040
TEST_RR_OP(mulhu, x28, x9, x9, 0x0000000000000000, 0x8000000000000000, 0x0000000000000040, x25, 0, x26)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x4, rs2==x24, rd==x10, rs1_val == 0, rs2_val == 18014398509481984
# opcode: mulhu ; op1:x4; op2:x24; dest:x10; op1val:0x0000000000000000;  op2val:0x0040000000000000
TEST_RR_OP(mulhu, x10, x4, x24, 0x0000000000000000, 0x0000000000000000, 0x0040000000000000, x25, 8, x26)

# rs1 == rd != rs2, rs1==x12, rs2==x22, rd==x12, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs1_val == 9223372036854775807
# opcode: mulhu ; op1:x12; op2:x22; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000000000040
TEST_RR_OP(mulhu, x12, x12, x22, 0x0000000000000000, 0x7fffffffffffffff, 0x0000000000000040, x25, 16, x26)

# rs2 == rd != rs1, rs1==x1, rs2==x8, rd==x8, rs1_val == 1, rs2_val == 1125899906842624
# opcode: mulhu ; op1:x1; op2:x8; dest:x8; op1val:0x0000000000000001;  op2val:0x0004000000000000
TEST_RR_OP(mulhu, x8, x1, x8, 0x0000000000000000, 0x0000000000000001, 0x0004000000000000, x25, 24, x26)

# rs1 == rs2 == rd, rs1==x15, rs2==x15, rd==x15, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808, rs1_val < 0 and rs2_val < 0, rs1_val == -4294967297
# opcode: mulhu ; op1:x15; op2:x15; dest:x15; op1val:0xfffffffeffffffff;  op2val:0x8000000000000000
TEST_RR_OP(mulhu, x15, x15, x15, 0x0000000000000000, 0xfffffffeffffffff, 0x8000000000000000, x25, 32, x26)

# rs1==x11, rs2==x17, rd==x29, rs2_val == 0, rs1_val == 32
# opcode: mulhu ; op1:x11; op2:x17; dest:x29; op1val:0x0000000000000020;  op2val:0x0000000000000000
TEST_RR_OP(mulhu, x29, x11, x17, 0x0000000000000000, 0x0000000000000020, 0x0000000000000000, x25, 40, x26)

# rs1==x6, rs2==x29, rd==x1, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807, rs1_val == -33554433
# opcode: mulhu ; op1:x6; op2:x29; dest:x1; op1val:0xfffffffffdffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(mulhu, x1, x6, x29, 0x0000000000000000, 0xfffffffffdffffff, 0x7fffffffffffffff, x25, 48, x26)

# rs1==x10, rs2==x5, rd==x6, rs2_val == 1, rs1_val == -2147483649
# opcode: mulhu ; op1:x10; op2:x5; dest:x6; op1val:0xffffffff7fffffff;  op2val:0x0000000000000001
TEST_RR_OP(mulhu, x6, x10, x5, 0x0000000000000000, 0xffffffff7fffffff, 0x0000000000000001, x25, 56, x26)

# rs1==x27, rs2==x18, rd==x11, rs1_val > 0 and rs2_val < 0, rs1_val == 4503599627370496, rs2_val == -9
# opcode: mulhu ; op1:x27; op2:x18; dest:x11; op1val:0x0010000000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(mulhu, x11, x27, x18, 0x0000000000000000, 0x0010000000000000, 0xfffffffffffffff7, x25, 64, x26)

# rs1==x21, rs2==x13, rd==x4, rs1_val == rs2_val, rs1_val == 16777216, rs2_val == 16777216
# opcode: mulhu ; op1:x21; op2:x13; dest:x4; op1val:0x0000000001000000;  op2val:0x0000000001000000
TEST_RR_OP(mulhu, x4, x21, x13, 0x0000000000000000, 0x0000000001000000, 0x0000000001000000, x25, 72, x26)

# rs1==x16, rs2==x19, rd==x23, rs1_val == 2, rs2_val == -2199023255553
# opcode: mulhu ; op1:x16; op2:x19; dest:x23; op1val:0x0000000000000002;  op2val:0xfffffdffffffffff
TEST_RR_OP(mulhu, x23, x16, x19, 0x0000000000000000, 0x0000000000000002, 0xfffffdffffffffff, x25, 80, x26)

# rs1==x18, rs2==x21, rd==x2, rs1_val == 4, rs2_val == 8589934592
# opcode: mulhu ; op1:x18; op2:x21; dest:x2; op1val:0x0000000000000004;  op2val:0x0000000200000000
TEST_RR_OP(mulhu, x2, x18, x21, 0x0000000000000000, 0x0000000000000004, 0x0000000200000000, x25, 88, x26)

# rs1==x5, rs2==x2, rd==x9, rs1_val == 8, 
# opcode: mulhu ; op1:x5; op2:x2; dest:x9; op1val:0x0000000000000008;  op2val:0x0000000000000006
TEST_RR_OP(mulhu, x9, x5, x2, 0x0000000000000000, 0x0000000000000008, 0x0000000000000006, x25, 96, x26)

# rs1==x24, rs2==x4, rd==x20, rs1_val == 16, rs2_val == -257
# opcode: mulhu ; op1:x24; op2:x4; dest:x20; op1val:0x0000000000000010;  op2val:0xfffffffffffffeff
TEST_RR_OP(mulhu, x20, x24, x4, 0x0000000000000000, 0x0000000000000010, 0xfffffffffffffeff, x25, 104, x26)

# rs1==x31, rs2==x7, rd==x0, rs1_val == 64, rs2_val == -34359738369
# opcode: mulhu ; op1:x31; op2:x7; dest:x0; op1val:0x0000000000000040;  op2val:0xfffffff7ffffffff
TEST_RR_OP(mulhu, x0, x31, x7, 0x0000000000000000, 0x0000000000000040, 0xfffffff7ffffffff, x25, 112, x26)

# rs1==x8, rs2==x0, rd==x18, rs1_val == 128, rs2_val == 1099511627776
# opcode: mulhu ; op1:x8; op2:x0; dest:x18; op1val:0x0000000000000080;  op2val:0x0000010000000000
TEST_RR_OP(mulhu, x18, x8, x0, 0x0000000000000000, 0x0000000000000080, 0x0000010000000000, x25, 120, x26)

# rs1==x28, rs2==x27, rd==x5, rs1_val == 256, rs2_val == 2
# opcode: mulhu ; op1:x28; op2:x27; dest:x5; op1val:0x0000000000000100;  op2val:0x0000000000000002
TEST_RR_OP(mulhu, x5, x28, x27, 0x0000000000000000, 0x0000000000000100, 0x0000000000000002, x25, 128, x26)

# rs1==x17, rs2==x14, rd==x3, rs1_val == 512, rs2_val == -262145
# opcode: mulhu ; op1:x17; op2:x14; dest:x3; op1val:0x0000000000000200;  op2val:0xfffffffffffbffff
TEST_RR_OP(mulhu, x3, x17, x14, 0x0000000000000000, 0x0000000000000200, 0xfffffffffffbffff, x25, 136, x26)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x26, rs2==x23, rd==x21, rs1_val == 1024, 
# opcode: mulhu ; op1:x26; op2:x23; dest:x21; op1val:0x0000000000000400;  op2val:0x0000010000000000
TEST_RR_OP(mulhu, x21, x26, x23, 0x0000000000000000, 0x0000000000000400, 0x0000010000000000, x4, 0, x5)

# rs1==x25, rs2==x10, rd==x24, rs1_val == 2048, rs2_val == 144115188075855872
# opcode: mulhu ; op1:x25; op2:x10; dest:x24; op1val:0x0000000000000800;  op2val:0x0200000000000000
TEST_RR_OP(mulhu, x24, x25, x10, 0x0000000000000000, 0x0000000000000800, 0x0200000000000000, x4, 8, x5)

# rs1==x22, rs2==x28, rd==x13, rs1_val == 4096, rs2_val == -65
# opcode: mulhu ; op1:x22; op2:x28; dest:x13; op1val:0x0000000000001000;  op2val:0xffffffffffffffbf
TEST_RR_OP(mulhu, x13, x22, x28, 0x0000000000000000, 0x0000000000001000, 0xffffffffffffffbf, x4, 16, x5)

# rs1==x13, rs2==x3, rd==x25, rs1_val == 8192, rs2_val == 2199023255552
# opcode: mulhu ; op1:x13; op2:x3; dest:x25; op1val:0x0000000000002000;  op2val:0x0000020000000000
TEST_RR_OP(mulhu, x25, x13, x3, 0x0000000000000000, 0x0000000000002000, 0x0000020000000000, x4, 24, x5)

# rs1==x3, rs2==x6, rd==x30, rs1_val == 16384, 
# opcode: mulhu ; op1:x3; op2:x6; dest:x30; op1val:0x0000000000004000;  op2val:0x0000000001000000
TEST_RR_OP(mulhu, x30, x3, x6, 0x0000000000000000, 0x0000000000004000, 0x0000000001000000, x4, 32, x5)

# rs1==x14, rs2==x20, rd==x27, rs1_val == 32768, rs2_val == -4294967297
# opcode: mulhu ; op1:x14; op2:x20; dest:x27; op1val:0x0000000000008000;  op2val:0xfffffffeffffffff
TEST_RR_OP(mulhu, x27, x14, x20, 0x0000000000000000, 0x0000000000008000, 0xfffffffeffffffff, x4, 40, x5)

# rs1==x30, rs2==x12, rd==x22, rs1_val == 65536, rs2_val == 32768
# opcode: mulhu ; op1:x30; op2:x12; dest:x22; op1val:0x0000000000010000;  op2val:0x0000000000008000
TEST_RR_OP(mulhu, x22, x30, x12, 0x0000000000000000, 0x0000000000010000, 0x0000000000008000, x4, 48, x5)

# rs1==x29, rs2==x31, rd==x19, rs1_val == 131072, rs2_val == 137438953472
# opcode: mulhu ; op1:x29; op2:x31; dest:x19; op1val:0x0000000000020000;  op2val:0x0000002000000000
TEST_RR_OP(mulhu, x19, x29, x31, 0x0000000000000000, 0x0000000000020000, 0x0000002000000000, x4, 56, x5)

# rs1==x7, rs2==x16, rd==x26, rs1_val == 262144, 
# opcode: mulhu ; op1:x7; op2:x16; dest:x26; op1val:0x0000000000040000;  op2val:0xfffffdffffffffff
TEST_RR_OP(mulhu, x26, x7, x16, 0x0000000000000000, 0x0000000000040000, 0xfffffdffffffffff, x4, 64, x5)

# rs1==x23, rs2==x25, rd==x31, rs1_val == 524288, 
# opcode: mulhu ; op1:x23; op2:x25; dest:x31; op1val:0x0000000000080000;  op2val:0x0000000000000040
TEST_RR_OP(mulhu, x31, x23, x25, 0x0000000000000000, 0x0000000000080000, 0x0000000000000040, x4, 72, x5)

# rs1==x20, rs2==x11, rd==x16, rs1_val == 1048576, 
# opcode: mulhu ; op1:x20; op2:x11; dest:x16; op1val:0x0000000000100000;  op2val:0xffffffffffffffbf
TEST_RR_OP(mulhu, x16, x20, x11, 0x0000000000000000, 0x0000000000100000, 0xffffffffffffffbf, x4, 80, x5)

# rs1==x2, rs2==x30, rd==x14, rs1_val == 2097152, rs2_val == 33554432
# opcode: mulhu ; op1:x2; op2:x30; dest:x14; op1val:0x0000000000200000;  op2val:0x0000000002000000
TEST_RR_OP(mulhu, x14, x2, x30, 0x0000000000000000, 0x0000000000200000, 0x0000000002000000, x4, 88, x5)

# rs1==x19, rs2==x26, rd==x17, rs1_val == 4194304, 
# opcode: mulhu ; op1:x19; op2:x26; dest:x17; op1val:0x0000000000400000;  op2val:0xfffffffffffffff6
TEST_RR_OP(mulhu, x17, x19, x26, 0x0000000000000000, 0x0000000000400000, 0xfffffffffffffff6, x4, 96, x5)

# rs1==x0, rs2==x1, rd==x7, rs1_val == 8388608, rs2_val == 16384
# opcode: mulhu ; op1:x0; op2:x1; dest:x7; op1val:0x0000000000800000;  op2val:0x0000000000004000
TEST_RR_OP(mulhu, x7, x0, x1, 0x0000000000000000, 0x0000000000800000, 0x0000000000004000, x4, 104, x5)

# rs1_val == 33554432, rs2_val == -5
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000002000000, 0xfffffffffffffffb, x4, 112, x5)

# rs1_val == 67108864, rs2_val == 536870912
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000020000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0x0000000020000000, x4, 120, x5)

# rs1_val == 134217728, rs2_val == -137438953473
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0xffffffdfffffffff, x4, 128, x5)

# rs1_val == 268435456, rs2_val == -17179869185
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0xfffffffbffffffff, x4, 136, x5)

# rs1_val == 536870912, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffffffffffffff6
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0xfffffffffffffff6, x4, 144, x5)

# rs1_val == 1073741824, rs2_val == 128
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000080
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000040000000, 0x0000000000000080, x4, 152, x5)

# rs1_val == 2147483648, rs2_val == 72057594037927936
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0100000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0x0100000000000000, x4, 160, x5)

# rs1_val == 4294967296, rs2_val == -2305843009213693953
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0xdfffffffffffffff, x4, 168, x5)

# rs1_val == 8589934592, rs2_val == 4398046511104
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000040000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0x0000040000000000, x4, 176, x5)

# rs1_val == 17179869184, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0xfffffdffffffffff, x4, 184, x5)

# rs1_val == 34359738368, rs2_val == 65536
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000010000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0x0000000000010000, x4, 192, x5)

# rs1_val == 68719476736, rs2_val == -17592186044417
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xffffefffffffffff, x4, 200, x5)

# rs1_val == 137438953472, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffffffffffffa
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0xfffffffffffffffa, x4, 208, x5)

# rs1_val == 274877906944, rs2_val == 1073741824
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000040000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000000040000000, x4, 216, x5)

# rs1_val == 549755813888, rs2_val == -18014398509481985
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xffbfffffffffffff, x4, 224, x5)

# rs1_val == 1099511627776, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffffffffffffff8
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0xfffffffffffffff8, x4, 232, x5)

# rs1_val == 2199023255552, rs2_val == 17592186044416
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000100000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0x0000100000000000, x4, 240, x5)

# rs1_val == 4398046511104, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000010000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0x0000000000010000, x4, 248, x5)

# rs1_val == 8796093022208, rs2_val == 9007199254740992
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0020000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x0020000000000000, x4, 256, x5)

# rs1_val == 17592186044416, rs2_val == -6148914691236517206
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xaaaaaaaaaaaaaaaa, x4, 264, x5)

# rs1_val == 35184372088832, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xfffffffffffffffa
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0xfffffffffffffffa, x4, 272, x5)

# rs1_val == 70368744177664, rs2_val == 8192
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000002000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0x0000000000002000, x4, 280, x5)

# rs1_val == 140737488355328, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0xfffffff7ffffffff, x4, 288, x5)

# rs1_val == 281474976710656, rs2_val == 2147483648
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000080000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0x0000000080000000, x4, 296, x5)

# rs1_val == 562949953421312, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000080000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x0000000080000000, x4, 304, x5)

# rs1_val == 1125899906842624, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0xfffffffffffffffb, x4, 312, x5)

# rs1_val == 2251799813685248, rs2_val == 4096
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000001000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0008000000000000, 0x0000000000001000, x4, 320, x5)

# rs1_val == 9007199254740992, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xfffffffffffffff9
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0xfffffffffffffff9, x4, 328, x5)

# rs1_val == 18014398509481984, rs2_val == -2097153
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0xffffffffffdfffff, x4, 336, x5)

# rs1_val == 36028797018963968, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0xfffffffffffbffff, x4, 344, x5)

# rs1_val == 72057594037927936, rs2_val == 36028797018963968
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0080000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0x0080000000000000, x4, 352, x5)

# rs1_val == 144115188075855872, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0xdfffffffffffffff, x4, 360, x5)

# rs1_val == 288230376151711744, rs2_val == 8388608
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000800000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0x0000000000800000, x4, 368, x5)

# rs1_val == 576460752303423488, rs2_val == -1152921504606846977
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xefffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0xefffffffffffffff, x4, 376, x5)

# rs1_val == 1152921504606846976, rs2_val == -1025
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xfffffffffffffbff, x4, 384, x5)

# rs1_val == 2305843009213693952, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0xffffffffffdfffff, x4, 392, x5)

# rs1_val == 4611686018427387904, rs2_val == -1048577
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0xffffffffffefffff, x4, 400, x5)

# rs1_val == -2, rs2_val == -2
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xfffffffffffffffe
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0xfffffffffffffffe, x4, 408, x5)

# rs1_val == -3, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0100000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0x0100000000000000, x4, 416, x5)

# rs1_val == -5, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000009
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0x0000000000000009, x4, 424, x5)

# rs1_val == -9, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000002
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0x0000000000000002, x4, 432, x5)

# rs1_val == -17, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000007
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0x0000000000000007, x4, 440, x5)

# rs1_val == -33, rs2_val == -72057594037927937
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfeffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0xfeffffffffffffff, x4, 448, x5)

# rs1_val == -65, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xfffffffffffffffc
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0xfffffffffffffffc, x4, 456, x5)

# rs1_val == -129, rs2_val == -17
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xffffffffffffffef
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0xffffffffffffffef, x4, 464, x5)

# rs1_val == -257, rs2_val == -4097
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xffffffffffffefff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0xffffffffffffefff, x4, 472, x5)

# rs1_val == -513, rs2_val == 4294967296
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000100000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0x0000000100000000, x4, 480, x5)

# rs1_val == -1025, rs2_val == 2251799813685248
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0008000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0x0008000000000000, x4, 488, x5)

# rs1_val == -2049, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xffbfffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0xffbfffffffffffff, x4, 496, x5)

# rs2_val == -1125899906842625, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffc;  op2val:0xfffbffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffc, 0xfffbffffffffffff, x4, 504, x5)

# rs2_val == -2251799813685249, rs1_val == -1152921504606846977
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0xfff7ffffffffffff, x4, 512, x5)

# rs2_val == -4503599627370497, rs1_val == -4097
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffefffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0xffefffffffffffff, x4, 520, x5)

# rs2_val == -9007199254740993, rs1_val == -18014398509481985
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0xffdfffffffffffff, x4, 528, x5)

# rs2_val == -36028797018963969, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0xff7fffffffffffff, x4, 536, x5)

# rs2_val == -144115188075855873, rs1_val == -72057594037927937
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0xfdffffffffffffff, x4, 544, x5)

# rs2_val == -288230376151711745, rs1_val == -35184372088833
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0xfbffffffffffffff, x4, 552, x5)

# rs2_val == -576460752303423489, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xf7ffffffffffffff, x4, 560, x5)

# rs2_val == -4611686018427387905, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xbfffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0xbfffffffffffffff, x4, 568, x5)

# rs2_val == 6148914691236517205, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x5555555555555555
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0x5555555555555555, x4, 576, x5)

# rs1_val == -8193, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000009
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0x0000000000000009, x4, 584, x5)

# rs1_val == -16385, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xfffffffffffffff9
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0xfffffffffffffff9, x4, 592, x5)

# rs1_val == -32769, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xfffbffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0xfffbffffffffffff, x4, 600, x5)

# rs1_val == -65537, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000001
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0x0000000000000001, x4, 608, x5)

# rs1_val == -131073, rs2_val == -1099511627777
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0xfffffeffffffffff, x4, 616, x5)

# rs1_val == -262145, rs2_val == 1048576
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000100000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0x0000000000100000, x4, 624, x5)

# rs1_val == -524289, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0xfffbffffffffffff, x4, 632, x5)

# rs1_val == -1048577, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xfffffdffffffffff, x4, 640, x5)

# rs1_val == -2097153, rs2_val == 68719476736
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000001000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0x0000001000000000, x4, 648, x5)

# rs1_val == -4194305, rs2_val == 1024
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000400
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0x0000000000000400, x4, 656, x5)

# rs1_val == -8388609, rs2_val == 274877906944
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000004000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0x0000004000000000, x4, 664, x5)

# rs1_val == -16777217, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0100000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0x0100000000000000, x4, 672, x5)

# rs1_val == -67108865, rs2_val == -16385
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0xffffffffffffbfff, x4, 680, x5)

# rs1_val == -134217729, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000006
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0x0000000000000006, x4, 688, x5)

# rs1_val == -268435457, rs2_val == -2049
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xfffffffffffff7ff, x4, 696, x5)

# rs1_val == -536870913, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0080000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0x0080000000000000, x4, 704, x5)

# rs1_val == -1073741825, rs2_val == 8796093022208
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000080000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0x0000080000000000, x4, 712, x5)

# rs1_val == -8589934593, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000003
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0x0000000000000003, x4, 720, x5)

# rs1_val == -17179869185, rs2_val == 35184372088832
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000200000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0x0000200000000000, x4, 728, x5)

# rs1_val == -34359738369, rs2_val == 67108864
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000004000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0x0000000004000000, x4, 736, x5)

# rs1_val == -68719476737, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffffffffb
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0xfffffffffffffffb, x4, 744, x5)

# rs1_val == -137438953473, rs2_val == -3
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0xfffffffffffffffd, x4, 752, x5)

# rs1_val == -274877906945, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0xfffffffeffffffff, x4, 760, x5)

# rs1_val == -549755813889, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0080000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0x0080000000000000, x4, 768, x5)

# rs1_val == -1099511627777, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0xfffffffbffffffff, x4, 776, x5)

# rs1_val == -2199023255553, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000080000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0x0000080000000000, x4, 784, x5)

# rs1_val == -4398046511105, rs2_val == -8796093022209
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0xfffff7ffffffffff, x4, 792, x5)

# rs1_val == -8796093022209, rs2_val == -33554433
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0xfffffffffdffffff, x4, 800, x5)

# rs1_val == -17592186044417, rs2_val == -134217729
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0xfffffffff7ffffff, x4, 808, x5)

# rs1_val == -70368744177665, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0x0000000000000005, x4, 816, x5)

# rs1_val == -140737488355329, rs2_val == 288230376151711744
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0400000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0400000000000000, x4, 824, x5)

# rs1_val == -281474976710657, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0100000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0x0100000000000000, x4, 832, x5)

# rs1_val == -562949953421313, rs2_val == 70368744177664
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000400000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0x0000400000000000, x4, 840, x5)

# rs1_val == -1125899906842625, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfffffffffffffffa
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xfffffffffffffffa, x4, 848, x5)

# rs1_val == -2251799813685249, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000001000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x0000001000000000, x4, 856, x5)

# rs1_val == -4503599627370497, rs2_val == 34359738368
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000800000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0x0000000800000000, x4, 864, x5)

# rs1_val == -9007199254740993, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000002000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0x0000000002000000, x4, 872, x5)

# rs1_val == -36028797018963969, rs2_val == 524288
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000080000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0x0000000000080000, x4, 880, x5)

# rs1_val == -144115188075855873, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0008000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0x0008000000000000, x4, 888, x5)

# rs1_val == -288230376151711745, rs2_val == -513
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0xfffffffffffffdff, x4, 896, x5)

# rs1_val == -576460752303423489, rs2_val == 512
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000200
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0x0000000000000200, x4, 904, x5)

# rs1_val == -2305843009213693953, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffffffffffffff8
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0xfffffffffffffff8, x4, 912, x5)

# rs1_val == -4611686018427387905, rs2_val == 32
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0x0000000000000020, x4, 920, x5)

# rs1_val == 6148914691236517205, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffbffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xfffffffbffffffff, x4, 928, x5)

# rs1_val == -6148914691236517206, rs2_val == 131072
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000020000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0x0000000000020000, x4, 936, x5)

# rs2_val == 4, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000004
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0x0000000000000004, x4, 944, x5)

# rs2_val == 8, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000000008
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0x0000000000000008, x4, 952, x5)

# rs2_val == 16, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0x0000000000000010
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff8, 0x0000000000000010, x4, 960, x5)

# rs2_val == 256, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0000000000000100
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000008, 0x0000000000000100, x4, 968, x5)

# rs2_val == 2048, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000800
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0x0000000000000800, x4, 976, x5)

# rs2_val == 262144, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000040000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0x0000000000040000, x4, 984, x5)

# rs2_val == 2097152, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000200000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0x0000000000200000, x4, 992, x5)

# rs2_val == 4194304, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000400000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x0000000000400000, x4, 1000, x5)

# rs2_val == 134217728, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000008000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0x0000000008000000, x4, 1008, x5)

# rs2_val == 268435456, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000010000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0x0000000010000000, x4, 1016, x5)

# rs2_val == 17179869184, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0x0000000400000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000200, 0x0000000400000000, x4, 1024, x5)

# rs2_val == 549755813888, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000008000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000001000000, 0x0000008000000000, x4, 1032, x5)

# rs2_val == 140737488355328, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000800000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0x0000800000000000, x4, 1040, x5)

# rs2_val == 281474976710656, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0x0001000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffa, 0x0001000000000000, x4, 1048, x5)

# rs2_val == 4503599627370496, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0010000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0x0010000000000000, x4, 1056, x5)

# rs2_val == 562949953421312, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0002000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0x0002000000000000, x4, 1064, x5)

# rs2_val == 576460752303423488, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0800000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000020000, 0x0800000000000000, x4, 1072, x5)

# rs2_val == 1152921504606846976, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x1000000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0x1000000000000000, x4, 1080, x5)

# rs2_val == 2305843009213693952, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x2000000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0x2000000000000000, x4, 1088, x5)

# rs2_val == 4611686018427387904, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x4000000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x4000000000000000, x4, 1096, x5)

# rs2_val == -33, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0xffffffffffffffdf, x4, 1104, x5)

# rs2_val == -129, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0xffffffffffffff7f, x4, 1112, x5)

# rs2_val == -8193, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0xffffffffffffdfff, x4, 1120, x5)

# rs2_val == -32769, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0xffffffffffff7fff, x4, 1128, x5)

# rs2_val == -65537, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0xfffffffffffeffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000020000, 0xfffffffffffeffff, x4, 1136, x5)

# rs2_val == -131073, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0xfffffffffffdffff, x4, 1144, x5)

# rs2_val == -524289, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xfffffffffff7ffff, x4, 1152, x5)

# rs2_val == -4194305, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0xffffffffffbfffff, x4, 1160, x5)

# rs2_val == -8388609, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0xffffffffff7fffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff6, 0xffffffffff7fffff, x4, 1168, x5)

# rs2_val == -16777217, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0xfffffffffeffffff, x4, 1176, x5)

# rs2_val == -67108865, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0xfffffffffbffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000010000, 0xfffffffffbffffff, x4, 1184, x5)

# rs2_val == -268435457, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0xffffffffefffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000008, 0xffffffffefffffff, x4, 1192, x5)

# rs2_val == -536870913, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xffffffffdfffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0xffffffffdfffffff, x4, 1200, x5)

# rs2_val == -1073741825, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0xffffffffbfffffff, x4, 1208, x5)

# rs2_val == -2147483649, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xffffffff7fffffff, x4, 1216, x5)

# rs2_val == -8589934593, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xfffffffdffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000800000, 0xfffffffdffffffff, x4, 1224, x5)

# rs2_val == -68719476737, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffefffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xffffffefffffffff, x4, 1232, x5)

# rs2_val == -274877906945, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xffffffbfffffffff, x4, 1240, x5)

# rs2_val == -549755813889, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0xffffff7fffffffff, x4, 1248, x5)

# rs2_val == -4398046511105, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0xfffffbffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000003, 0xfffffbffffffffff, x4, 1256, x5)

# rs2_val == -35184372088833, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xffffdfffffffffff, x4, 1264, x5)

# rs2_val == -70368744177665, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0xffffbfffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff8, 0xffffbfffffffffff, x4, 1272, x5)

# rs2_val == -140737488355329, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0xffff7fffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000200, 0xffff7fffffffffff, x4, 1280, x5)

# rs2_val == -281474976710657, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0xfffeffffffffffff, x4, 1288, x5)

# rs2_val == -562949953421313, 
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfffdffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0xfffdffffffffffff, x4, 1296, x5)

# rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808, rs1_val < 0 and rs2_val < 0, rs1_val == -4294967297
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x8000000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0x8000000000000000, x4, 1304, x5)

# rs1_val == 64, rs2_val == -34359738369
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0xfffffff7ffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000040, 0xfffffff7ffffffff, x4, 1312, x5)

# rs1_val == 128, rs2_val == 1099511627776
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0x0000010000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000080, 0x0000010000000000, x4, 1320, x5)

# rs1_val == 8388608, rs2_val == 16384
# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000004000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000800000, 0x0000000000004000, x4, 1328, x5)
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

signature_x25_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x25_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 167*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
