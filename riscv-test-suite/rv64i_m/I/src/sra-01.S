
#This assembly file tests the sra instruction of the RISC-V i extension for the sra covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sra)

RVTEST_SIGBASE( x26,signature_x26_1)

# rs1 == rs2 == rd, rs1==x12, rs2==x12, rd==x12, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -9
# opcode: sra ; op1:x12; op2:x12; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x12, x12, 0x3ffff, 0xfffffffffffffff7, 0x000000000000000e, x26, 0, x29)

# rs1 == rd != rs2, rs1==x10, rs2==x22, rd==x10, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 1125899906842624
# opcode: sra ; op1:x10; op2:x22; dest:x10; op1val:0x0004000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sra, x10, x10, x22, 0x0, 0x0004000000000000, 0x0000000000000013, x26, 8, x29)

# rs2 == rd != rs1, rs1==x23, rs2==x11, rd==x11, rs1_val < 0 and rs2_val == 0, rs1_val == -2305843009213693953
# opcode: sra ; op1:x23; op2:x11; dest:x11; op1val:0xdfffffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sra, x11, x23, x11, 0xffffffff, 0xdfffffffffffffff, 0x0000000000000000, x26, 16, x29)

# rs1 == rs2 != rd, rs1==x5, rs2==x5, rd==x6, rs1_val > 0 and rs2_val == 0, rs1_val == 1024
# opcode: sra ; op1:x5; op2:x5; dest:x6; op1val:0x0000000000000400;  op2val:0x0000000000000000
TEST_RR_OP(sra, x6, x5, x5, 0x400, 0x0000000000000400, 0x0000000000000000, x26, 24, x29)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x19, rs2==x3, rd==x5, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, 
# opcode: sra ; op1:x19; op2:x3; dest:x5; op1val:0x0000000000000009;  op2val:0x0000000000000009
TEST_RR_OP(sra, x5, x19, x3, 0x0, 0x0000000000000009, 0x0000000000000009, x26, 32, x29)

# rs1==x21, rs2==x27, rd==x15, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs1_val == -9223372036854775808
# opcode: sra ; op1:x21; op2:x27; dest:x15; op1val:0x8000000000000000;  op2val:0x0000000000000003
TEST_RR_OP(sra, x15, x21, x27, 0x0, 0x8000000000000000, 0x0000000000000003, x26, 40, x29)

# rs1==x15, rs2==x31, rd==x9, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 47
# opcode: sra ; op1:x15; op2:x31; dest:x9; op1val:0x0000000000000000;  op2val:0x000000000000002f
TEST_RR_OP(sra, x9, x15, x31, 0x0, 0x0000000000000000, 0x000000000000002f, x26, 48, x29)

# rs1==x31, rs2==x7, rd==x27, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 8, rs1_val == 9223372036854775807
# opcode: sra ; op1:x31; op2:x7; dest:x27; op1val:0x7fffffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sra, x27, x31, x7, 0xffffff, 0x7fffffffffffffff, 0x0000000000000008, x26, 56, x29)

# rs1==x18, rs2==x19, rd==x0, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs1_val == 1
# opcode: sra ; op1:x18; op2:x19; dest:x0; op1val:0x0000000000000001;  op2val:0x0000000000000005
TEST_RR_OP(sra, x0, x18, x19, 0x0, 0x0000000000000001, 0x0000000000000005, x26, 64, x29)

# rs1==x27, rs2==x17, rd==x1, rs2_val == 1, rs1_val == 281474976710656
# opcode: sra ; op1:x27; op2:x17; dest:x1; op1val:0x0001000000000000;  op2val:0x0000000000000001
TEST_RR_OP(sra, x1, x27, x17, 0x0, 0x0001000000000000, 0x0000000000000001, x26, 72, x29)

# rs1==x0, rs2==x6, rd==x24, rs2_val == 2, rs1_val == 2305843009213693952
# opcode: sra ; op1:x0; op2:x6; dest:x24; op1val:0x2000000000000000;  op2val:0x0000000000000002
TEST_RR_OP(sra, x24, x0, x6, 0x0, 0x2000000000000000, 0x0000000000000002, x26, 80, x29)

# rs1==x1, rs2==x4, rd==x20, rs2_val == 4, rs1_val == 140737488355328
# opcode: sra ; op1:x1; op2:x4; dest:x20; op1val:0x0000800000000000;  op2val:0x0000000000000004
TEST_RR_OP(sra, x20, x1, x4, 0x0, 0x0000800000000000, 0x0000000000000004, x26, 88, x29)

# rs1==x6, rs2==x28, rd==x22, rs2_val == 16, rs1_val == 2048
# opcode: sra ; op1:x6; op2:x28; dest:x22; op1val:0x0000000000000800;  op2val:0x0000000000000010
TEST_RR_OP(sra, x22, x6, x28, 0x0, 0x0000000000000800, 0x0000000000000010, x26, 96, x29)

# rs1==x14, rs2==x25, rd==x3, rs2_val == 32, rs1_val == -274877906945
# opcode: sra ; op1:x14; op2:x25; dest:x3; op1val:0xffffffbfffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sra, x3, x14, x25, 0xffffffff, 0xffffffbfffffffff, 0x0000000000000020, x26, 104, x29)

# rs1==x4, rs2==x14, rd==x31, rs2_val == 62, rs1_val == -2147483649
# opcode: sra ; op1:x4; op2:x14; dest:x31; op1val:0xffffffff7fffffff;  op2val:0x000000000000003e
TEST_RR_OP(sra, x31, x4, x14, 0x1, 0xffffffff7fffffff, 0x000000000000003e, x26, 112, x29)

# rs1==x24, rs2==x15, rd==x18, rs2_val == 61, rs1_val == -4097
# opcode: sra ; op1:x24; op2:x15; dest:x18; op1val:0xffffffffffffefff;  op2val:0x000000000000003d
TEST_RR_OP(sra, x18, x24, x15, 0x7, 0xffffffffffffefff, 0x000000000000003d, x26, 120, x29)

# rs1==x22, rs2==x8, rd==x13, rs2_val == 59, rs1_val == 288230376151711744
# opcode: sra ; op1:x22; op2:x8; dest:x13; op1val:0x0400000000000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x13, x22, x8, 0x0, 0x0400000000000000, 0x000000000000003b, x26, 128, x29)

# rs1==x3, rs2==x2, rd==x16, rs2_val == 55, rs1_val == 268435456
# opcode: sra ; op1:x3; op2:x2; dest:x16; op1val:0x0000000010000000;  op2val:0x0000000000000037
TEST_RR_OP(sra, x16, x3, x2, 0x20, 0x0000000010000000, 0x0000000000000037, x26, 136, x29)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x8, rs2==x26, rd==x7, rs2_val == 31, 
# opcode: sra ; op1:x8; op2:x26; dest:x7; op1val:0xffffffff7fffffff;  op2val:0x000000000000001f
TEST_RR_OP(sra, x7, x8, x26, 0x0, 0xffffffff7fffffff, 0x000000000000001f, x3, 0, x5)

# rs1==x28, rs2==x30, rd==x14, rs2_val == 21, rs1_val == -549755813889
# opcode: sra ; op1:x28; op2:x30; dest:x14; op1val:0xffffff7fffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sra, x14, x28, x30, 0x7ff, 0xffffff7fffffffff, 0x0000000000000015, x3, 8, x5)

# rs1==x30, rs2==x20, rd==x2, rs2_val == 42, rs1_val == 4611686018427387904
# opcode: sra ; op1:x30; op2:x20; dest:x2; op1val:0x4000000000000000;  op2val:0x000000000000002a
TEST_RR_OP(sra, x2, x30, x20, 0x0, 0x4000000000000000, 0x000000000000002a, x3, 16, x5)

# rs1==x16, rs2==x24, rd==x17, rs1_val == 2, 
# opcode: sra ; op1:x16; op2:x24; dest:x17; op1val:0x0000000000000002;  op2val:0x000000000000003e
TEST_RR_OP(sra, x17, x16, x24, 0x0, 0x0000000000000002, 0x000000000000003e, x3, 24, x5)

# rs1==x11, rs2==x23, rd==x28, rs1_val == 4, 
# opcode: sra ; op1:x11; op2:x23; dest:x28; op1val:0x0000000000000004;  op2val:0x0000000000000000
TEST_RR_OP(sra, x28, x11, x23, 0x4, 0x0000000000000004, 0x0000000000000000, x3, 32, x5)

# rs1==x13, rs2==x0, rd==x30, rs1_val == 8, 
# opcode: sra ; op1:x13; op2:x0; dest:x30; op1val:0x0000000000000008;  op2val:0x000000000000003f
TEST_RR_OP(sra, x30, x13, x0, 0x0, 0x0000000000000008, 0x000000000000003f, x3, 40, x5)

# rs1==x25, rs2==x13, rd==x21, rs1_val == 16, 
# opcode: sra ; op1:x25; op2:x13; dest:x21; op1val:0x0000000000000010;  op2val:0x000000000000000c
TEST_RR_OP(sra, x21, x25, x13, 0x0, 0x0000000000000010, 0x000000000000000c, x3, 48, x5)

# rs1==x17, rs2==x29, rd==x23, rs1_val == 32, 
# opcode: sra ; op1:x17; op2:x29; dest:x23; op1val:0x0000000000000020;  op2val:0x0000000000000015
TEST_RR_OP(sra, x23, x17, x29, 0x0, 0x0000000000000020, 0x0000000000000015, x3, 56, x5)

# rs1==x7, rs2==x1, rd==x25, rs1_val == 64, 
# opcode: sra ; op1:x7; op2:x1; dest:x25; op1val:0x0000000000000040;  op2val:0x0000000000000006
TEST_RR_OP(sra, x25, x7, x1, 0x1, 0x0000000000000040, 0x0000000000000006, x3, 64, x5)

# rs1==x9, rs2==x21, rd==x19, rs1_val == 128, 
# opcode: sra ; op1:x9; op2:x21; dest:x19; op1val:0x0000000000000080;  op2val:0x0000000000000037
TEST_RR_OP(sra, x19, x9, x21, 0x0, 0x0000000000000080, 0x0000000000000037, x3, 72, x5)

# rs1==x20, rs2==x16, rd==x29, rs1_val == 256, 
# opcode: sra ; op1:x20; op2:x16; dest:x29; op1val:0x0000000000000100;  op2val:0x000000000000001f
TEST_RR_OP(sra, x29, x20, x16, 0x0, 0x0000000000000100, 0x000000000000001f, x3, 80, x5)

# rs1==x29, rs2==x18, rd==x4, rs1_val == 512, 
# opcode: sra ; op1:x29; op2:x18; dest:x4; op1val:0x0000000000000200;  op2val:0x0000000000000010
TEST_RR_OP(sra, x4, x29, x18, 0x0, 0x0000000000000200, 0x0000000000000010, x3, 88, x5)

# rs1==x2, rs2==x9, rd==x8, rs1_val == 4096, 
# opcode: sra ; op1:x2; op2:x9; dest:x8; op1val:0x0000000000001000;  op2val:0x000000000000002f
TEST_RR_OP(sra, x8, x2, x9, 0x0, 0x0000000000001000, 0x000000000000002f, x3, 96, x5)

# rs1==x26, rs1_val == 8192, 
# opcode: sra ; op1:x26; op2:x21; dest:x2; op1val:0x0000000000002000;  op2val:0x0000000000000009
TEST_RR_OP(sra, x2, x26, x21, 0x10, 0x0000000000002000, 0x0000000000000009, x3, 104, x5)

# rs2==x10, rs1_val == 16384, 
# opcode: sra ; op1:x21; op2:x10; dest:x25; op1val:0x0000000000004000;  op2val:0x000000000000001f
TEST_RR_OP(sra, x25, x21, x10, 0x0, 0x0000000000004000, 0x000000000000001f, x3, 112, x5)

# rd==x26, rs1_val == 32768, 
# opcode: sra ; op1:x31; op2:x19; dest:x26; op1val:0x0000000000008000;  op2val:0x000000000000000d
TEST_RR_OP(sra, x26, x31, x19, 0x4, 0x0000000000008000, 0x000000000000000d, x3, 120, x5)

# rs1_val == 65536, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000010000, 0x0000000000000012, x3, 128, x5)

# rs1_val == 131072, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x800, 0x0000000000020000, 0x0000000000000006, x3, 136, x5)

# rs1_val == 262144, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000040000, 0x000000000000003f, x3, 144, x5)

# rs1_val == 524288, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x2000, 0x0000000000080000, 0x0000000000000006, x3, 152, x5)

# rs1_val == 1048576, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x20, 0x0000000000100000, 0x000000000000000f, x3, 160, x5)

# rs1_val == 2097152, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x40, 0x0000000000200000, 0x000000000000002f, x3, 168, x5)

# rs1_val == 4194304, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x10, 0x0000000000400000, 0x0000000000000012, x3, 176, x5)

# rs1_val == 8388608, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0x0000000000800000, 0x0000000000000037, x3, 184, x5)

# rs1_val == 16777216, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000001000000, 0x000000000000003b, x3, 192, x5)

# rs1_val == 33554432, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x400, 0x0000000002000000, 0x000000000000002f, x3, 200, x5)

# rs1_val == 67108864, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000004000000, 0x000000000000003b, x3, 208, x5)

# rs1_val == 134217728, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000008000000, 0x000000000000003e, x3, 216, x5)

# rs1_val == 536870912, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x10, x11, 0x8000000, 0x0000000020000000, 0x0000000000000002, x3, 224, x5)

# rs1_val == 1073741824, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x2000000, 0x0000000040000000, 0x0000000000000005, x3, 232, x5)

# rs1_val == 2147483648, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000001
TEST_RR_OP(sra, x12, x10, x11, 0x40000000, 0x0000000080000000, 0x0000000000000001, x3, 240, x5)

# rs1_val == 4294967296, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000000000000005, x3, 248, x5)

# rs1_val == 8589934592, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000200000000, 0x0000000000000000, x3, 256, x5)

# rs1_val == 17179869184, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000400000000, 0x000000000000000f, x3, 264, x5)

# rs1_val == 34359738368, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000800000000, 0x0000000000000013, x3, 272, x5)

# rs1_val == 68719476736, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000000000000006, x3, 280, x5)

# rs1_val == 137438953472, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000002000000000, 0x0000000000000008, x3, 288, x5)

# rs1_val == 274877906944, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000004000000000, 0x0000000000000006, x3, 296, x5)

# rs1_val == 549755813888, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000008000000000, 0x000000000000000d, x3, 304, x5)

# rs1_val == 1099511627776, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000010000000000, 0x0000000000000004, x3, 312, x5)

# rs1_val == 2199023255552, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000020000000000, 0x0000000000000005, x3, 320, x5)

# rs1_val == 4398046511104, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000040000000000, 0x000000000000002f, x3, 328, x5)

# rs1_val == 8796093022208, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000080000000000, 0x0000000000000015, x3, 336, x5)

# rs1_val == 17592186044416, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000100000000000, 0x0000000000000037, x3, 344, x5)

# rs1_val == 35184372088832, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000009
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000000000000009, x3, 352, x5)

# rs1_val == 70368744177664, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000400000000000, 0x0000000000000002, x3, 360, x5)

# rs1_val == 562949953421312, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0002000000000000, 0x000000000000003b, x3, 368, x5)

# rs1_val == 2251799813685248, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0008000000000000, 0x0000000000000020, x3, 376, x5)

# rs1_val == 4503599627370496, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0010000000000000, 0x000000000000000d, x3, 384, x5)

# rs1_val == 9007199254740992, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0020000000000000, 0x0000000000000037, x3, 392, x5)

# rs1_val == 18014398509481984, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0040000000000000, 0x0000000000000007, x3, 400, x5)

# rs1_val == 36028797018963968, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000009
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000009, x3, 408, x5)

# rs1_val == -2199023255553, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffff, 0xfffffdffffffffff, 0x000000000000000e, x3, 416, x5)

# rs1_val == -4398046511105, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x7ffff, 0xfffffbffffffffff, 0x000000000000000d, x3, 424, x5)

# rs1_val == -8796093022209, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x7, 0xfffff7ffffffffff, 0x000000000000003d, x3, 432, x5)

# rs1_val == -17592186044417, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xffffefffffffffff, 0x000000000000002f, x3, 440, x5)

# rs1_val == -35184372088833, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x1f, 0xffffdfffffffffff, 0x000000000000003b, x3, 448, x5)

# rs1_val == -70368744177665, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x1ffffff, 0xffffbfffffffffff, 0x0000000000000007, x3, 456, x5)

# rs1_val == -140737488355329, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0xffffffff, 0xffff7fffffffffff, 0x0000000000000000, x3, 464, x5)

# rs1_val == -281474976710657, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sra, x12, x10, x11, 0x7fffffff, 0xfffeffffffffffff, 0x0000000000000001, x3, 472, x5)

# rs1_val == -562949953421313, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xfffdffffffffffff, 0x000000000000002a, x3, 480, x5)

# rs1_val == -1125899906842625, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x3fff, 0xfffbffffffffffff, 0x0000000000000012, x3, 488, x5)

# rs1_val == -2251799813685249, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sra, x12, x10, x11, 0x1fffff, 0xfff7ffffffffffff, 0x000000000000000b, x3, 496, x5)

# rs1_val == -4503599627370497, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sra, x12, x10, x11, 0xffff, 0xffefffffffffffff, 0x0000000000000010, x3, 504, x5)

# rs1_val == -9007199254740993, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0xffffffff, 0xffdfffffffffffff, 0x0000000000000020, x3, 512, x5)

# rs1_val == -18014398509481985, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xffbfffffffffffff, 0x000000000000003f, x3, 520, x5)

# rs1_val == -36028797018963969, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0xffffff, 0xff7fffffffffffff, 0x0000000000000008, x3, 528, x5)

# rs1_val == -72057594037927937, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xfeffffffffffffff, 0x000000000000002f, x3, 536, x5)

# rs1_val == -144115188075855873, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x7ffffff, 0xfdffffffffffffff, 0x0000000000000005, x3, 544, x5)

# rs1_val == -288230376151711745, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sra, x12, x10, x11, 0x1fffff, 0xfbffffffffffffff, 0x000000000000000b, x3, 552, x5)

# rs1_val == -576460752303423489, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xf7ffffffffffffff, 0x000000000000003f, x3, 560, x5)

# rs1_val == -1152921504606846977, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x10, x11, 0x3fffffff, 0xefffffffffffffff, 0x0000000000000002, x3, 568, x5)

# rs1_val == -4611686018427387905, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sra, x12, x10, x11, 0x1fffff, 0xbfffffffffffffff, 0x000000000000000b, x3, 576, x5)

# rs1_val == 6148914691236517205, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0x55555555, 0x5555555555555555, 0x0000000000000020, x3, 584, x5)

# rs1_val == -6148914691236517206, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000001
TEST_RR_OP(sra, x12, x10, x11, 0x55555555, 0xaaaaaaaaaaaaaaaa, 0x0000000000000001, x3, 592, x5)

# rs1_val == 72057594037927936, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0100000000000000, 0x000000000000001f, x3, 600, x5)

# rs1_val == 144115188075855872, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0200000000000000, 0x0000000000000015, x3, 608, x5)

# rs1_val == 576460752303423488, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000000000002, x3, 616, x5)

# rs1_val == 1152921504606846976, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x1000000000000000, 0x000000000000003d, x3, 624, x5)

# rs1_val == -2, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000001
TEST_RR_OP(sra, x12, x10, x11, 0x7fffffff, 0xfffffffffffffffe, 0x0000000000000001, x3, 632, x5)

# rs1_val == -3, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x3fff, 0xfffffffffffffffd, 0x0000000000000012, x3, 640, x5)

# rs1_val == -5, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xfffffffffffffffb, 0x000000000000002a, x3, 648, x5)

# rs1_val == -17, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x7ffff, 0xffffffffffffffef, 0x000000000000000d, x3, 656, x5)

# rs1_val == -33, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x1f, 0xffffffffffffffdf, 0x000000000000003b, x3, 664, x5)

# rs1_val == -65, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xffffffffffffffbf, 0x000000000000000a, x3, 672, x5)

# rs1_val == -129, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0xffffff7f, 0xffffffffffffff7f, 0x0000000000000000, x3, 680, x5)

# rs1_val == -257, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x7ffff, 0xfffffffffffffeff, 0x000000000000000d, x3, 688, x5)

# rs1_val == -513, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x1fffffb, 0xfffffffffffffdff, 0x0000000000000007, x3, 696, x5)

# rs1_val == -1025, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x3ffffe, 0xfffffffffffffbff, 0x000000000000002a, x3, 704, x5)

# rs1_val == -2049, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xfffffffffffff7ff, 0x000000000000000f, x3, 712, x5)

# rs1_val == -8193, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x000000000000001f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xffffffffffffdfff, 0x000000000000001f, x3, 720, x5)

# rs1_val == -16385, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x1f, 0xffffffffffffbfff, 0x000000000000003b, x3, 728, x5)

# rs1_val == -32769, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x1fffe, 0xffffffffffff7fff, 0x000000000000002f, x3, 736, x5)

# rs1_val == -65537, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x7ff, 0xfffffffffffeffff, 0x0000000000000015, x3, 744, x5)

# rs1_val == -131073, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x7ffefff, 0xfffffffffffdffff, 0x0000000000000005, x3, 752, x5)

# rs1_val == -262145, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x3ffe, 0xfffffffffffbffff, 0x0000000000000012, x3, 760, x5)

# rs1_val == -524289, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x7ff, 0xfffffffffff7ffff, 0x0000000000000015, x3, 768, x5)

# rs1_val == -1048577, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000011
TEST_RR_OP(sra, x12, x10, x11, 0x7ff7, 0xffffffffffefffff, 0x0000000000000011, x3, 776, x5)

# rs1_val == -2097153, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x3ff7ff, 0xffffffffffdfffff, 0x000000000000002a, x3, 784, x5)

# rs1_val == -4194305, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000003
TEST_RR_OP(sra, x12, x10, x11, 0x1ff7ffff, 0xffffffffffbfffff, 0x0000000000000003, x3, 792, x5)

# rs1_val == -8388609, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0xff7fff, 0xffffffffff7fffff, 0x0000000000000008, x3, 800, x5)

# rs1_val == -16777217, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000000001
TEST_RR_OP(sra, x12, x10, x11, 0x7f7fffff, 0xfffffffffeffffff, 0x0000000000000001, x3, 808, x5)

# rs1_val == -33554433, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x10, x11, 0x3f7fffff, 0xfffffffffdffffff, 0x0000000000000002, x3, 816, x5)

# rs1_val == -67108865, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x7, 0xfffffffffbffffff, 0x000000000000003d, x3, 824, x5)

# rs1_val == -134217729, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000009
TEST_RR_OP(sra, x12, x10, x11, 0x7bffff, 0xfffffffff7ffffff, 0x0000000000000009, x3, 832, x5)

# rs1_val == -268435457, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1dfff, 0xffffffffefffffff, 0x000000000000000f, x3, 840, x5)

# rs1_val == -536870913, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x37ffff, 0xffffffffdfffffff, 0x000000000000002a, x3, 848, x5)

# rs1_val == -1073741825, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x2, 0xffffffffbfffffff, 0x000000000000003e, x3, 856, x5)

# rs1_val == -4294967297, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xfffffffeffffffff, 0x000000000000003f, x3, 864, x5)

# rs1_val == -8589934593, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x1ffffff, 0xfffffffdffffffff, 0x0000000000000007, x3, 872, x5)

# rs1_val == -17179869185, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffff, 0xfffffffbffffffff, 0x000000000000000e, x3, 880, x5)

# rs1_val == -34359738369, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xfffffff7ffffffff, 0x000000000000002a, x3, 888, x5)

# rs1_val == -68719476737, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sra, x12, x10, x11, 0x1fffffff, 0xffffffefffffffff, 0x0000000000000003, x3, 896, x5)

# rs1_val == -137438953473, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x7, 0xffffffdfffffffff, 0x000000000000003d, x3, 904, x5)

# rs1_val == -1099511627777, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffff, 0xfffffeffffffffff, 0x000000000000000e, x3, 912, x5)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -9
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffff, 0xfffffffffffffff7, 0x000000000000000e, x3, 920, x5)

# rs1_val > 0 and rs2_val == 0, rs1_val == 1024
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0x400, 0x0000000000000400, 0x0000000000000000, x3, 928, x5)

# rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs1_val == 1
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000000001, 0x0000000000000005, x3, 936, x5)

# rs2_val == 2, rs1_val == 2305843009213693952
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x2000000000000000, 0x0000000000000002, x3, 944, x5)

# rs1_val == 8, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000000008, 0x000000000000003f, x3, 952, x5)
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

signature_x26_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x26_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 120*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
