
#This assembly file tests the srl instruction of the RISC-V i extension for the srl covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srl)

RVTEST_SIGBASE( x10,signature_x10_1)

# rs1 == rs2 == rd, rs1==x26, rs2==x26, rd==x26, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 61, rs1_val == -9
# opcode: srl ; op1:x26; op2:x26; dest:x26; op1val:0xfffffffffffffff7;  op2val:0x000000000000003d
TEST_RR_OP(srl, x26, x26, x26, 0x7, 0xfffffffffffffff7, 0x000000000000003d, x10, 0, x14)

# rs1 == rd != rs2, rs1==x17, rs2==x1, rd==x17, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 17592186044416
# opcode: srl ; op1:x17; op2:x1; dest:x17; op1val:0x0000100000000000;  op2val:0x000000000000000c
TEST_RR_OP(srl, x17, x17, x1, 0x0, 0x0000100000000000, 0x000000000000000c, x10, 8, x14)

# rs2 == rd != rs1, rs1==x7, rs2==x0, rd==x0, rs1_val < 0 and rs2_val == 0, rs1_val == -4611686018427387905
# opcode: srl ; op1:x7; op2:x0; dest:x0; op1val:0xbfffffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(srl, x0, x7, x0, 0xffffffff, 0xbfffffffffffffff, 0x0000000000000000, x10, 16, x14)

# rs1 == rs2 != rd, rs1==x4, rs2==x4, rd==x7, rs1_val > 0 and rs2_val == 0, rs1_val == 4294967296
# opcode: srl ; op1:x4; op2:x4; dest:x7; op1val:0x0000000100000000;  op2val:0x0000000000000000
TEST_RR_OP(srl, x7, x4, x4, 0x0, 0x0000000100000000, 0x0000000000000000, x10, 24, x14)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x2, rs2==x30, rd==x21, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 1, rs1_val == 1
# opcode: srl ; op1:x2; op2:x30; dest:x21; op1val:0x0000000000000001;  op2val:0x0000000000000001
TEST_RR_OP(srl, x21, x2, x30, 0x0, 0x0000000000000001, 0x0000000000000001, x10, 32, x14)

# rs1==x18, rs2==x9, rd==x13, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs1_val == -9223372036854775808
# opcode: srl ; op1:x18; op2:x9; dest:x13; op1val:0x8000000000000000;  op2val:0x0000000000000005
TEST_RR_OP(srl, x13, x18, x9, 0x0, 0x8000000000000000, 0x0000000000000005, x10, 40, x14)

# rs1==x19, rs2==x5, rd==x22, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, 
# opcode: srl ; op1:x19; op2:x5; dest:x22; op1val:0x0000000000000000;  op2val:0x0000000000000003
TEST_RR_OP(srl, x22, x19, x5, 0x0, 0x0000000000000000, 0x0000000000000003, x10, 48, x14)

# rs1==x25, rs2==x29, rd==x9, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 9223372036854775807
# opcode: srl ; op1:x25; op2:x29; dest:x9; op1val:0x7fffffffffffffff;  op2val:0x000000000000003d
TEST_RR_OP(srl, x9, x25, x29, 0x7, 0x7fffffffffffffff, 0x000000000000003d, x10, 56, x14)

# rs1==x11, rs2==x15, rd==x25, rs2_val == 2, rs1_val == -524289
# opcode: srl ; op1:x11; op2:x15; dest:x25; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000002
TEST_RR_OP(srl, x25, x11, x15, 0x3ffdffff, 0xfffffffffff7ffff, 0x0000000000000002, x10, 64, x14)

# rs1==x24, rs2==x3, rd==x23, rs2_val == 4, rs1_val == 576460752303423488
# opcode: srl ; op1:x24; op2:x3; dest:x23; op1val:0x0800000000000000;  op2val:0x0000000000000004
TEST_RR_OP(srl, x23, x24, x3, 0x0, 0x0800000000000000, 0x0000000000000004, x10, 72, x14)

# rs1==x8, rs2==x6, rd==x2, rs2_val == 8, rs1_val == 8192
# opcode: srl ; op1:x8; op2:x6; dest:x2; op1val:0x0000000000002000;  op2val:0x0000000000000008
TEST_RR_OP(srl, x2, x8, x6, 0x20, 0x0000000000002000, 0x0000000000000008, x10, 80, x14)

# rs1==x27, rs2==x17, rd==x8, rs2_val == 16, rs1_val == -268435457
# opcode: srl ; op1:x27; op2:x17; dest:x8; op1val:0xffffffffefffffff;  op2val:0x0000000000000010
TEST_RR_OP(srl, x8, x27, x17, 0xefff, 0xffffffffefffffff, 0x0000000000000010, x10, 88, x14)

# rs1==x16, rs2==x20, rd==x12, rs2_val == 32, rs1_val == -33554433
# opcode: srl ; op1:x16; op2:x20; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000020
TEST_RR_OP(srl, x12, x16, x20, 0xfdffffff, 0xfffffffffdffffff, 0x0000000000000020, x10, 96, x14)

# rs1==x0, rs2==x28, rd==x19, rs2_val == 62, rs1_val == -4503599627370497
# opcode: srl ; op1:x0; op2:x28; dest:x19; op1val:0xffefffffffffffff;  op2val:0x000000000000003e
TEST_RR_OP(srl, x19, x0, x28, 0x3, 0xffefffffffffffff, 0x000000000000003e, x10, 104, x7)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x21, rs2==x22, rd==x18, rs2_val == 59, rs1_val == -1152921504606846977
# opcode: srl ; op1:x21; op2:x22; dest:x18; op1val:0xefffffffffffffff;  op2val:0x000000000000003b
TEST_RR_OP(srl, x18, x21, x22, 0x1f, 0xefffffffffffffff, 0x000000000000003b, x2, 0, x7)

# rs1==x1, rs2==x8, rd==x30, rs2_val == 55, rs1_val == -32769
# opcode: srl ; op1:x1; op2:x8; dest:x30; op1val:0xffffffffffff7fff;  op2val:0x0000000000000037
TEST_RR_OP(srl, x30, x1, x8, 0x1ff, 0xffffffffffff7fff, 0x0000000000000037, x2, 8, x7)

# rs1==x29, rs2==x12, rd==x1, rs2_val == 47, 
# opcode: srl ; op1:x29; op2:x12; dest:x1; op1val:0xfffffffffffffff8;  op2val:0x000000000000002f
TEST_RR_OP(srl, x1, x29, x12, 0x1ffff, 0xfffffffffffffff8, 0x000000000000002f, x2, 16, x7)

# rs1==x20, rs2==x16, rd==x15, rs2_val == 31, rs1_val == -17
# opcode: srl ; op1:x20; op2:x16; dest:x15; op1val:0xffffffffffffffef;  op2val:0x000000000000001f
TEST_RR_OP(srl, x15, x20, x16, 0x1, 0xffffffffffffffef, 0x000000000000001f, x2, 24, x7)

# rs1==x14, rs2==x25, rd==x3, rs2_val == 21, rs1_val == -65
# opcode: srl ; op1:x14; op2:x25; dest:x3; op1val:0xffffffffffffffbf;  op2val:0x0000000000000015
TEST_RR_OP(srl, x3, x14, x25, 0x7ff, 0xffffffffffffffbf, 0x0000000000000015, x2, 32, x7)

# rs1==x6, rs2==x14, rd==x29, rs2_val == 42, rs1_val == -281474976710657
# opcode: srl ; op1:x6; op2:x14; dest:x29; op1val:0xfffeffffffffffff;  op2val:0x000000000000002a
TEST_RR_OP(srl, x29, x6, x14, 0x3fffff, 0xfffeffffffffffff, 0x000000000000002a, x2, 40, x7)

# rs1==x23, rs2==x31, rd==x20, rs1_val == 2, 
# opcode: srl ; op1:x23; op2:x31; dest:x20; op1val:0x0000000000000002;  op2val:0x000000000000000c
TEST_RR_OP(srl, x20, x23, x31, 0x0, 0x0000000000000002, 0x000000000000000c, x2, 48, x7)

# rs1==x28, rs2==x11, rd==x10, rs1_val == 4, 
# opcode: srl ; op1:x28; op2:x11; dest:x10; op1val:0x0000000000000004;  op2val:0x000000000000002a
TEST_RR_OP(srl, x10, x28, x11, 0x0, 0x0000000000000004, 0x000000000000002a, x2, 56, x7)

# rs1==x15, rs2==x23, rd==x16, rs1_val == 8, 
# opcode: srl ; op1:x15; op2:x23; dest:x16; op1val:0x0000000000000008;  op2val:0x0000000000000008
TEST_RR_OP(srl, x16, x15, x23, 0x0, 0x0000000000000008, 0x0000000000000008, x2, 64, x7)

# rs1==x9, rs2==x13, rd==x27, rs1_val == 16, 
# opcode: srl ; op1:x9; op2:x13; dest:x27; op1val:0x0000000000000010;  op2val:0x000000000000003b
TEST_RR_OP(srl, x27, x9, x13, 0x0, 0x0000000000000010, 0x000000000000003b, x2, 72, x7)

# rs1==x30, rs2==x21, rd==x31, rs1_val == 32, 
# opcode: srl ; op1:x30; op2:x21; dest:x31; op1val:0x0000000000000020;  op2val:0x0000000000000000
TEST_RR_OP(srl, x31, x30, x21, 0x20, 0x0000000000000020, 0x0000000000000000, x2, 80, x7)

# rs1==x31, rs2==x24, rd==x5, rs1_val == 64, 
# opcode: srl ; op1:x31; op2:x24; dest:x5; op1val:0x0000000000000040;  op2val:0x0000000000000007
TEST_RR_OP(srl, x5, x31, x24, 0x0, 0x0000000000000040, 0x0000000000000007, x2, 88, x7)

# rs1==x12, rs2==x19, rd==x14, rs1_val == 128, 
# opcode: srl ; op1:x12; op2:x19; dest:x14; op1val:0x0000000000000080;  op2val:0x000000000000003d
TEST_RR_OP(srl, x14, x12, x19, 0x0, 0x0000000000000080, 0x000000000000003d, x2, 96, x7)

# rs1==x22, rs2==x18, rd==x4, rs1_val == 256, 
# opcode: srl ; op1:x22; op2:x18; dest:x4; op1val:0x0000000000000100;  op2val:0x000000000000001f
TEST_RR_OP(srl, x4, x22, x18, 0x0, 0x0000000000000100, 0x000000000000001f, x2, 104, x7)

# rs1==x3, rs2==x10, rd==x6, rs1_val == 512, 
# opcode: srl ; op1:x3; op2:x10; dest:x6; op1val:0x0000000000000200;  op2val:0x0000000000000037
TEST_RR_OP(srl, x6, x3, x10, 0x0, 0x0000000000000200, 0x0000000000000037, x2, 112, x4)

# rs1==x13, rs2==x27, rd==x28, rs1_val == 1024, 
# opcode: srl ; op1:x13; op2:x27; dest:x28; op1val:0x0000000000000400;  op2val:0x0000000000000007
TEST_RR_OP(srl, x28, x13, x27, 0x8, 0x0000000000000400, 0x0000000000000007, x2, 120, x4)

# rs1==x5, rs2==x7, rd==x11, rs1_val == 2048, 
# opcode: srl ; op1:x5; op2:x7; dest:x11; op1val:0x0000000000000800;  op2val:0x0000000000000011
TEST_RR_OP(srl, x11, x5, x7, 0x0, 0x0000000000000800, 0x0000000000000011, x2, 128, x4)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x10, rs2==x2, rd==x24, rs1_val == 4096, 
# opcode: srl ; op1:x10; op2:x2; dest:x24; op1val:0x0000000000001000;  op2val:0x0000000000000001
TEST_RR_OP(srl, x24, x10, x2, 0x800, 0x0000000000001000, 0x0000000000000001, x1, 0, x4)

# rs1_val == 16384, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0x0000000000000009
TEST_RR_OP(srl, x12, x10, x11, 0x20, 0x0000000000004000, 0x0000000000000009, x1, 8, x4)

# rs1_val == 32768, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0x0000000000000037
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000000008000, 0x0000000000000037, x1, 16, x4)

# rs1_val == 65536, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x000000000000003d
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000000010000, 0x000000000000003d, x1, 24, x4)

# rs1_val == 131072, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000000000015
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000000020000, 0x0000000000000015, x1, 32, x4)

# rs1_val == 262144, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000013
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000000040000, 0x0000000000000013, x1, 40, x4)

# rs1_val == 524288, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x000000000000000b
TEST_RR_OP(srl, x12, x10, x11, 0x100, 0x0000000000080000, 0x000000000000000b, x1, 48, x4)

# rs1_val == 1048576, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x000000000000000e
TEST_RR_OP(srl, x12, x10, x11, 0x40, 0x0000000000100000, 0x000000000000000e, x1, 56, x4)

# rs1_val == 2097152, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000000001
TEST_RR_OP(srl, x12, x10, x11, 0x100000, 0x0000000000200000, 0x0000000000000001, x1, 64, x4)

# rs1_val == 4194304, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x0000000000000003
TEST_RR_OP(srl, x12, x10, x11, 0x80000, 0x0000000000400000, 0x0000000000000003, x1, 72, x4)

# rs1_val == 8388608, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000003
TEST_RR_OP(srl, x12, x10, x11, 0x100000, 0x0000000000800000, 0x0000000000000003, x1, 80, x4)

# rs1_val == 16777216, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000008
TEST_RR_OP(srl, x12, x10, x11, 0x10000, 0x0000000001000000, 0x0000000000000008, x1, 88, x4)

# rs1_val == 33554432, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000037
TEST_RR_OP(srl, x12, x10, x11, 0x4, 0x0000000002000000, 0x0000000000000037, x1, 96, x4)

# rs1_val == 67108864, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000000000
TEST_RR_OP(srl, x12, x10, x11, 0x4000000, 0x0000000004000000, 0x0000000000000000, x1, 104, x4)

# rs1_val == 134217728, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000000
TEST_RR_OP(srl, x12, x10, x11, 0x8000000, 0x0000000008000000, 0x0000000000000000, x1, 112, x4)

# rs1_val == 268435456, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x000000000000000f
TEST_RR_OP(srl, x12, x10, x11, 0x2000, 0x0000000010000000, 0x000000000000000f, x1, 120, x4)

# rs1_val == 536870912, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x000000000000000c
TEST_RR_OP(srl, x12, x10, x11, 0x20000, 0x0000000020000000, 0x000000000000000c, x1, 128, x4)

# rs1_val == 1073741824, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x000000000000003e
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0x0000000040000000, 0x000000000000003e, x1, 136, x4)

# rs1_val == 2147483648, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000004
TEST_RR_OP(srl, x12, x10, x11, 0x8000000, 0x0000000080000000, 0x0000000000000004, x1, 144, x4)

# rs1_val == 8589934592, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x000000000000001f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000200000000, 0x000000000000001f, x1, 152, x4)

# rs1_val == 17179869184, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000012
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000400000000, 0x0000000000000012, x1, 160, x4)

# rs1_val == 34359738368, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000009
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000800000000, 0x0000000000000009, x1, 168, x4)

# rs1_val == 68719476736, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000013
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000000000000013, x1, 176, x4)

# rs1_val == 137438953472, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x000000000000003f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000002000000000, 0x000000000000003f, x1, 184, x4)

# rs1_val == 274877906944, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000003
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000004000000000, 0x0000000000000003, x1, 192, x4)

# rs1_val == 549755813888, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x000000000000001f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000008000000000, 0x000000000000001f, x1, 200, x4)

# rs1_val == 1099511627776, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x000000000000002f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000010000000000, 0x000000000000002f, x1, 208, x4)

# rs1_val == 2199023255552, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000010
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000020000000000, 0x0000000000000010, x1, 216, x4)

# rs1_val == 4398046511104, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000020
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000000000020, x1, 224, x4)

# rs1_val == 8796093022208, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x000000000000000d
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000080000000000, 0x000000000000000d, x1, 232, x4)

# rs1_val == 35184372088832, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x000000000000002a
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000200000000000, 0x000000000000002a, x1, 240, x4)

# rs1_val == 70368744177664, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x000000000000000e
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000400000000000, 0x000000000000000e, x1, 248, x4)

# rs1_val == 140737488355328, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x000000000000002f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000800000000000, 0x000000000000002f, x1, 256, x4)

# rs1_val == 281474976710656, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000000008
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0001000000000000, 0x0000000000000008, x1, 264, x4)

# rs1_val == 562949953421312, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x000000000000000e
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0002000000000000, 0x000000000000000e, x1, 272, x4)

# rs1_val == 1125899906842624, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000010
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000000000000010, x1, 280, x4)

# rs1_val == 2251799813685248, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x000000000000000d
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0008000000000000, 0x000000000000000d, x1, 288, x4)

# rs1_val == 4503599627370496, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000003
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0010000000000000, 0x0000000000000003, x1, 296, x4)

# rs1_val == -2199023255553, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x000000000000003d
TEST_RR_OP(srl, x12, x10, x11, 0x7, 0xfffffdffffffffff, 0x000000000000003d, x1, 304, x4)

# rs1_val == -4398046511105, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000011
TEST_RR_OP(srl, x12, x10, x11, 0x7fff, 0xfffffbffffffffff, 0x0000000000000011, x1, 312, x4)

# rs1_val == -8796093022209, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(srl, x12, x10, x11, 0xfffff, 0xfffff7ffffffffff, 0x000000000000000c, x1, 320, x4)

# rs1_val == -17592186044417, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x000000000000003e
TEST_RR_OP(srl, x12, x10, x11, 0x3, 0xffffefffffffffff, 0x000000000000003e, x1, 328, x4)

# rs1_val == -35184372088833, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(srl, x12, x10, x11, 0x3fffffff, 0xffffdfffffffffff, 0x0000000000000002, x1, 336, x4)

# rs1_val == -70368744177665, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(srl, x12, x10, x11, 0x7ff, 0xffffbfffffffffff, 0x0000000000000015, x1, 344, x4)

# rs1_val == -140737488355329, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(srl, x12, x10, x11, 0x1ffff, 0xffff7fffffffffff, 0x000000000000002f, x1, 352, x4)

# rs1_val == -562949953421313, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(srl, x12, x10, x11, 0x7fffffff, 0xfffdffffffffffff, 0x0000000000000001, x1, 360, x4)

# rs1_val == -1125899906842625, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(srl, x12, x10, x11, 0xffffff, 0xfffbffffffffffff, 0x0000000000000008, x1, 368, x4)

# rs1_val == -2251799813685249, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(srl, x12, x10, x11, 0xffffffff, 0xfff7ffffffffffff, 0x0000000000000000, x1, 376, x4)

# rs1_val == -9007199254740993, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000037
TEST_RR_OP(srl, x12, x10, x11, 0x1ff, 0xffdfffffffffffff, 0x0000000000000037, x1, 384, x4)

# rs1_val == -18014398509481985, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x000000000000003b
TEST_RR_OP(srl, x12, x10, x11, 0x1f, 0xffbfffffffffffff, 0x000000000000003b, x1, 392, x4)

# rs1_val == -36028797018963969, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0xff7fffffffffffff, 0x000000000000001f, x1, 400, x4)

# rs1_val == -72057594037927937, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(srl, x12, x10, x11, 0x7ffff, 0xfeffffffffffffff, 0x000000000000000d, x1, 408, x4)

# rs1_val == -144115188075855873, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(srl, x12, x10, x11, 0xffffff, 0xfdffffffffffffff, 0x0000000000000008, x1, 416, x4)

# rs1_val == -288230376151711745, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(srl, x12, x10, x11, 0x7fffffff, 0xfbffffffffffffff, 0x0000000000000001, x1, 424, x4)

# rs1_val == -576460752303423489, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(srl, x12, x10, x11, 0xffffffff, 0xf7ffffffffffffff, 0x0000000000000000, x1, 432, x4)

# rs1_val == -2305843009213693953, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(srl, x12, x10, x11, 0x7fffff, 0xdfffffffffffffff, 0x0000000000000009, x1, 440, x4)

# rs1_val == 6148914691236517205, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000005
TEST_RR_OP(srl, x12, x10, x11, 0x2aaaaaa, 0x5555555555555555, 0x0000000000000005, x1, 448, x4)

# rs1_val == -6148914691236517206, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x000000000000000e
TEST_RR_OP(srl, x12, x10, x11, 0x2aaaa, 0xaaaaaaaaaaaaaaaa, 0x000000000000000e, x1, 456, x4)

# rs1_val == 9007199254740992, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000004
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0020000000000000, 0x0000000000000004, x1, 464, x4)

# rs1_val == 18014398509481984, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000000037
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0040000000000000, 0x0000000000000037, x1, 472, x4)

# rs1_val == 36028797018963968, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x000000000000000f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0080000000000000, 0x000000000000000f, x1, 480, x4)

# rs1_val == 72057594037927936, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000008
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0100000000000000, 0x0000000000000008, x1, 488, x4)

# rs1_val == 144115188075855872, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x000000000000001f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0200000000000000, 0x000000000000001f, x1, 496, x4)

# rs1_val == 288230376151711744, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000004
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000000000000004, x1, 504, x4)

# rs1_val == 1152921504606846976, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000005
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x1000000000000000, 0x0000000000000005, x1, 512, x4)

# rs1_val == 2305843009213693952, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000011
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x2000000000000000, 0x0000000000000011, x1, 520, x4)

# rs1_val == 4611686018427387904, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x000000000000000c
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x4000000000000000, 0x000000000000000c, x1, 528, x4)

# rs1_val == -2, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x000000000000000f
TEST_RR_OP(srl, x12, x10, x11, 0x1ffff, 0xfffffffffffffffe, 0x000000000000000f, x1, 536, x4)

# rs1_val == -3, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x000000000000003b
TEST_RR_OP(srl, x12, x10, x11, 0x1f, 0xfffffffffffffffd, 0x000000000000003b, x1, 544, x4)

# rs1_val == -5, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x000000000000003e
TEST_RR_OP(srl, x12, x10, x11, 0x3, 0xfffffffffffffffb, 0x000000000000003e, x1, 552, x4)

# rs1_val == -33, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000020
TEST_RR_OP(srl, x12, x10, x11, 0xffffffdf, 0xffffffffffffffdf, 0x0000000000000020, x1, 560, x4)

# rs1_val == -129, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000007
TEST_RR_OP(srl, x12, x10, x11, 0x1fffffe, 0xffffffffffffff7f, 0x0000000000000007, x1, 568, x4)

# rs1_val == -257, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x000000000000002a
TEST_RR_OP(srl, x12, x10, x11, 0x3fffff, 0xfffffffffffffeff, 0x000000000000002a, x1, 576, x4)

# rs1_val == -513, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000015
TEST_RR_OP(srl, x12, x10, x11, 0x7ff, 0xfffffffffffffdff, 0x0000000000000015, x1, 584, x4)

# rs1_val == -1025, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000013
TEST_RR_OP(srl, x12, x10, x11, 0x1fff, 0xfffffffffffffbff, 0x0000000000000013, x1, 592, x4)

# rs1_val == -2049, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000000000005
TEST_RR_OP(srl, x12, x10, x11, 0x7ffffbf, 0xfffffffffffff7ff, 0x0000000000000005, x1, 600, x4)

# rs1_val == -4097, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x000000000000003f
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0xffffffffffffefff, 0x000000000000003f, x1, 608, x4)

# rs1_val == -8193, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x000000000000000c
TEST_RR_OP(srl, x12, x10, x11, 0xffffd, 0xffffffffffffdfff, 0x000000000000000c, x1, 616, x4)

# rs1_val == -16385, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x000000000000002f
TEST_RR_OP(srl, x12, x10, x11, 0x1ffff, 0xffffffffffffbfff, 0x000000000000002f, x1, 624, x4)

# rs1_val == -65537, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000002
TEST_RR_OP(srl, x12, x10, x11, 0x3fffbfff, 0xfffffffffffeffff, 0x0000000000000002, x1, 632, x4)

# rs1_val == -131073, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000008
TEST_RR_OP(srl, x12, x10, x11, 0xfffdff, 0xfffffffffffdffff, 0x0000000000000008, x1, 640, x4)

# rs1_val == -262145, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x000000000000000a
TEST_RR_OP(srl, x12, x10, x11, 0x3ffeff, 0xfffffffffffbffff, 0x000000000000000a, x1, 648, x4)

# rs1_val == -1048577, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000005
TEST_RR_OP(srl, x12, x10, x11, 0x7ff7fff, 0xffffffffffefffff, 0x0000000000000005, x1, 656, x4)

# rs1_val == -2097153, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x000000000000000e
TEST_RR_OP(srl, x12, x10, x11, 0x3ff7f, 0xffffffffffdfffff, 0x000000000000000e, x1, 664, x4)

# rs1_val == -4194305, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x000000000000000f
TEST_RR_OP(srl, x12, x10, x11, 0x1ff7f, 0xffffffffffbfffff, 0x000000000000000f, x1, 672, x4)

# rs1_val == -8388609, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000020
TEST_RR_OP(srl, x12, x10, x11, 0xff7fffff, 0xffffffffff7fffff, 0x0000000000000020, x1, 680, x4)

# rs1_val == -16777217, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x000000000000000d
TEST_RR_OP(srl, x12, x10, x11, 0x7f7ff, 0xfffffffffeffffff, 0x000000000000000d, x1, 688, x4)

# rs1_val == -67108865, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000000004
TEST_RR_OP(srl, x12, x10, x11, 0xfbfffff, 0xfffffffffbffffff, 0x0000000000000004, x1, 696, x4)

# rs1_val == -134217729, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x000000000000000b
TEST_RR_OP(srl, x12, x10, x11, 0x1effff, 0xfffffffff7ffffff, 0x000000000000000b, x1, 704, x4)

# rs1_val == -536870913, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000006
TEST_RR_OP(srl, x12, x10, x11, 0x37fffff, 0xffffffffdfffffff, 0x0000000000000006, x1, 712, x4)

# rs1_val == -1073741825, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x000000000000003f
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0xffffffffbfffffff, 0x000000000000003f, x1, 720, x4)

# rs1_val == -2147483649, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000000001
TEST_RR_OP(srl, x12, x10, x11, 0x3fffffff, 0xffffffff7fffffff, 0x0000000000000001, x1, 728, x4)

# rs1_val == -4294967297, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000037
TEST_RR_OP(srl, x12, x10, x11, 0x1ff, 0xfffffffeffffffff, 0x0000000000000037, x1, 736, x4)

# rs1_val == -8589934593, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000010
TEST_RR_OP(srl, x12, x10, x11, 0xffff, 0xfffffffdffffffff, 0x0000000000000010, x1, 744, x4)

# rs1_val == -17179869185, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x000000000000000c
TEST_RR_OP(srl, x12, x10, x11, 0xfffff, 0xfffffffbffffffff, 0x000000000000000c, x1, 752, x4)

# rs1_val == -34359738369, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x000000000000003d
TEST_RR_OP(srl, x12, x10, x11, 0x7, 0xfffffff7ffffffff, 0x000000000000003d, x1, 760, x4)

# rs1_val == -68719476737, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000002
TEST_RR_OP(srl, x12, x10, x11, 0x3fffffff, 0xffffffefffffffff, 0x0000000000000002, x1, 768, x4)

# rs1_val == -137438953473, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x000000000000003e
TEST_RR_OP(srl, x12, x10, x11, 0x3, 0xffffffdfffffffff, 0x000000000000003e, x1, 776, x4)

# rs1_val == -274877906945, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000000
TEST_RR_OP(srl, x12, x10, x11, 0xffffffff, 0xffffffbfffffffff, 0x0000000000000000, x1, 784, x4)

# rs1_val == -549755813889, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x000000000000003b
TEST_RR_OP(srl, x12, x10, x11, 0x1f, 0xffffff7fffffffff, 0x000000000000003b, x1, 792, x4)

# rs1_val == -1099511627777, 
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(srl, x12, x10, x11, 0x3fffff, 0xfffffeffffffffff, 0x000000000000000a, x1, 800, x4)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 61, rs1_val == -9
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x000000000000003d
TEST_RR_OP(srl, x12, x10, x11, 0x7, 0xfffffffffffffff7, 0x000000000000003d, x1, 808, x4)

# rs1_val < 0 and rs2_val == 0, rs1_val == -4611686018427387905
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(srl, x12, x10, x11, 0xffffffff, 0xbfffffffffffffff, 0x0000000000000000, x1, 816, x4)

# rs1_val > 0 and rs2_val == 0, rs1_val == 4294967296
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000000
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000000000000000, x1, 824, x4)

# rs2_val == 62, rs1_val == -4503599627370497
# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x000000000000003e
TEST_RR_OP(srl, x12, x10, x11, 0x3, 0xffefffffffffffff, 0x000000000000003e, x1, 832, x4)
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x10_1:
    .fill 14*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 105*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
