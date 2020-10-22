
#This assembly file tests the sllw instruction of the RISC-V i extension for the sllw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sllw)

RVTEST_SIGBASE( x8,signature_x8_1)

# rs1 == rd != rs2, rs1==x30, rs2==x29, rd==x30, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -8589934593
# opcode: sllw ; op1:x30; op2:x29; dest:x30; op1val:0xfffffffdffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x30, x30, x29, 0xffeffffffff80000, 0xfffffffdffffffff, 0x0000000000000013, x8, 0, x13)

# rs1 == rs2 != rd, rs1==x10, rs2==x10, rd==x26, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 8, rs1_val == 2147483648
# opcode: sllw ; op1:x10; op2:x10; dest:x26; op1val:0x0000000080000000;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x26, x10, x10, 0x8000000000, 0x0000000080000000, 0x0000000000000008, x8, 8, x13)

# rs2 == rd != rs1, rs1==x27, rs2==x1, rd==x1, rs1_val < 0 and rs2_val == 0, rs1_val == -9223372036854775808, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen
# opcode: sllw ; op1:x27; op2:x1; dest:x1; op1val:0x8000000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x1, x27, x1, 0x8000000000000000, 0x8000000000000000, 0x0000000000000000, x8, 16, x13)

# rs1 == rs2 == rd, rs1==x23, rs2==x23, rd==x23, rs1_val > 0 and rs2_val == 0, rs1_val == 144115188075855872
# opcode: sllw ; op1:x23; op2:x23; dest:x23; op1val:0x0200000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x23, x23, x23, 0x200000000000000, 0x0200000000000000, 0x0000000000000000, x8, 24, x13)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x14, rs2==x5, rd==x25, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 8
# opcode: sllw ; op1:x14; op2:x5; dest:x25; op1val:0x0000000000000008;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x25, x14, x5, 0x800, 0x0000000000000008, 0x0000000000000008, x8, 32, x13)

# rs1==x11, rs2==x12, rd==x19, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 15
# opcode: sllw ; op1:x11; op2:x12; dest:x19; op1val:0x0000000000000000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x19, x11, x12, 0x0, 0x0000000000000000, 0x000000000000000f, x8, 40, x13)

# rs1==x25, rs2==x26, rd==x28, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 9223372036854775807
# opcode: sllw ; op1:x25; op2:x26; dest:x28; op1val:0x7fffffffffffffff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x28, x25, x26, 0xfffffffffffe0000, 0x7fffffffffffffff, 0x0000000000000011, x8, 48, x13)

# rs1==x19, rs2==x2, rd==x18, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs1_val == 1
# opcode: sllw ; op1:x19; op2:x2; dest:x18; op1val:0x0000000000000001;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x18, x19, x2, 0x2000, 0x0000000000000001, 0x000000000000000d, x8, 56, x13)

# rs1==x24, rs2==x19, rd==x6, rs2_val == 1, rs1_val == 64
# opcode: sllw ; op1:x24; op2:x19; dest:x6; op1val:0x0000000000000040;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x6, x24, x19, 0x80, 0x0000000000000040, 0x0000000000000001, x8, 64, x13)

# rs1==x12, rs2==x28, rd==x29, rs2_val == 2, rs1_val == -5
# opcode: sllw ; op1:x12; op2:x28; dest:x29; op1val:0xfffffffffffffffb;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x29, x12, x28, 0xffffffffffffffec, 0xfffffffffffffffb, 0x0000000000000002, x8, 72, x13)

# rs1==x28, rs2==x27, rd==x15, rs2_val == 4, rs1_val == -562949953421313
# opcode: sllw ; op1:x28; op2:x27; dest:x15; op1val:0xfffdffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x15, x28, x27, 0xffdffffffffffff0, 0xfffdffffffffffff, 0x0000000000000004, x8, 80, x13)

# rs1==x3, rs2==x18, rd==x24, rs2_val == 16, 
# opcode: sllw ; op1:x3; op2:x18; dest:x24; op1val:0xfffffffffffffff6;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x24, x3, x18, 0xfffffffffff60000, 0xfffffffffffffff6, 0x0000000000000010, x8, 88, x13)

# rs1==x4, rs2==x3, rd==x27, rs2_val == 30, 
# opcode: sllw ; op1:x4; op2:x3; dest:x27; op1val:0x0000000000000040;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x27, x4, x3, 0x1000000000, 0x0000000000000040, 0x000000000000001e, x8, 96, x13)

# rs1==x26, rs2==x15, rd==x22, rs2_val == 29, rs1_val == -137438953473
# opcode: sllw ; op1:x26; op2:x15; dest:x22; op1val:0xffffffdfffffffff;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x22, x26, x15, 0xffffffffe0000000, 0xffffffdfffffffff, 0x000000000000001d, x8, 104, x13)

# rs1==x21, rs2==x20, rd==x16, rs2_val == 27, rs1_val == -9
# opcode: sllw ; op1:x21; op2:x20; dest:x16; op1val:0xfffffffffffffff7;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x16, x21, x20, 0xffffffffb8000000, 0xfffffffffffffff7, 0x000000000000001b, x8, 112, x13)

# rs1==x1, rs2==x24, rd==x2, rs2_val == 23, 
# opcode: sllw ; op1:x1; op2:x24; dest:x2; op1val:0xfffffffffffffffc;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x2, x1, x24, 0xfffffffffe000000, 0xfffffffffffffffc, 0x0000000000000017, x8, 120, x13)

# rs1==x5, rs2==x7, rd==x9, rs2_val == 21, 
# opcode: sllw ; op1:x5; op2:x7; dest:x9; op1val:0xfffffffdffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x9, x5, x7, 0xffbfffffffe00000, 0xfffffffdffffffff, 0x0000000000000015, x8, 128, x13)

# rs1==x31, rs2==x16, rd==x5, rs2_val == 10, rs1_val == -35184372088833
# opcode: sllw ; op1:x31; op2:x16; dest:x5; op1val:0xffffdfffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x5, x31, x16, 0xff7ffffffffffc00, 0xffffdfffffffffff, 0x000000000000000a, x8, 136, x19)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x6, rs2==x11, rd==x14, rs1_val == 2, 
# opcode: sllw ; op1:x6; op2:x11; dest:x14; op1val:0x0000000000000002;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x14, x6, x11, 0x2, 0x0000000000000002, 0x0000000000000000, x1, 0, x19)

# rs1==x18, rs2==x21, rd==x7, rs1_val == 4, 
# opcode: sllw ; op1:x18; op2:x21; dest:x7; op1val:0x0000000000000004;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x7, x18, x21, 0x2000000, 0x0000000000000004, 0x0000000000000017, x1, 8, x19)

# rs1==x2, rs2==x30, rd==x8, rs1_val == 16, 
# opcode: sllw ; op1:x2; op2:x30; dest:x8; op1val:0x0000000000000010;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x8, x2, x30, 0x4000, 0x0000000000000010, 0x000000000000000a, x1, 16, x19)

# rs1==x20, rs2==x22, rd==x10, rs1_val == 32, 
# opcode: sllw ; op1:x20; op2:x22; dest:x10; op1val:0x0000000000000020;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x10, x20, x22, 0x8000, 0x0000000000000020, 0x000000000000000a, x1, 24, x19)

# rs1==x8, rs2==x13, rd==x12, rs1_val == 128, 
# opcode: sllw ; op1:x8; op2:x13; dest:x12; op1val:0x0000000000000080;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x8, x13, 0x2000000000, 0x0000000000000080, 0x000000000000001e, x1, 32, x19)

# rs1==x15, rs2==x25, rd==x3, rs1_val == 256, 
# opcode: sllw ; op1:x15; op2:x25; dest:x3; op1val:0x0000000000000100;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x3, x15, x25, 0x800, 0x0000000000000100, 0x0000000000000003, x1, 40, x19)

# rs1==x22, rs2==x8, rd==x0, rs1_val == 512, 
# opcode: sllw ; op1:x22; op2:x8; dest:x0; op1val:0x0000000000000200;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x0, x22, x8, 0x4000000000, 0x0000000000000200, 0x000000000000001d, x1, 48, x19)

# rs1==x7, rs2==x17, rd==x4, rs1_val == 1024, 
# opcode: sllw ; op1:x7; op2:x17; dest:x4; op1val:0x0000000000000400;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x4, x7, x17, 0x100000, 0x0000000000000400, 0x000000000000000a, x1, 56, x19)

# rs1==x16, rs2==x6, rd==x11, rs1_val == 2048, 
# opcode: sllw ; op1:x16; op2:x6; dest:x11; op1val:0x0000000000000800;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x11, x16, x6, 0x2000, 0x0000000000000800, 0x0000000000000002, x1, 64, x19)

# rs1==x0, rs2==x9, rd==x21, rs1_val == 4096, 
# opcode: sllw ; op1:x0; op2:x9; dest:x21; op1val:0x0000000000001000;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x21, x0, x9, 0x4000, 0x0000000000001000, 0x0000000000000002, x1, 72, x19)

# rs1==x29, rs2==x0, rd==x17, rs1_val == 8192, 
# opcode: sllw ; op1:x29; op2:x0; dest:x17; op1val:0x0000000000002000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x17, x29, x0, 0x20000, 0x0000000000002000, 0x0000000000000004, x1, 80, x19)

# rs1==x9, rs2==x14, rd==x31, rs1_val == 16384, 
# opcode: sllw ; op1:x9; op2:x14; dest:x31; op1val:0x0000000000004000;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x31, x9, x14, 0x10000, 0x0000000000004000, 0x0000000000000002, x1, 88, x19)

# rs1==x17, rs2==x4, rd==x13, rs1_val == 32768, 
# opcode: sllw ; op1:x17; op2:x4; dest:x13; op1val:0x0000000000008000;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x13, x17, x4, 0x4000000, 0x0000000000008000, 0x000000000000000b, x1, 96, x19)

# rs1==x13, rs2==x31, rd==x20, rs1_val == 65536, 
# opcode: sllw ; op1:x13; op2:x31; dest:x20; op1val:0x0000000000010000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x20, x13, x31, 0x80000000, 0x0000000000010000, 0x000000000000000f, x1, 104, x19)

# rs1_val == 131072, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x12, x10, x11, 0x40000, 0x0000000000020000, 0x0000000000000001, x1, 112, x19)

# rs1_val == 262144, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0x1000000000, 0x0000000000040000, 0x0000000000000012, x1, 120, x19)

# rs1_val == 524288, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000, 0x0000000000080000, 0x000000000000000d, x1, 128, x19)

# rs1_val == 1048576, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0x20000000, 0x0000000000100000, 0x0000000000000009, x1, 136, x19)

# rs1_val == 2097152, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0x4000000, 0x0000000000200000, 0x0000000000000005, x1, 144, x19)

# rs1_val == 4194304, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0x400000000, 0x0000000000400000, 0x000000000000000c, x1, 152, x19)

# rs1_val == 8388608, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0x10000000000, 0x0000000000800000, 0x0000000000000011, x1, 160, x19)

# rs1_val == 16777216, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000, 0x0000000001000000, 0x000000000000000b, x1, 168, x19)

# rs1_val == 33554432, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x10000000, 0x0000000002000000, 0x0000000000000003, x1, 176, x19)

# rs1_val == 67108864, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000, 0x0000000004000000, 0x000000000000000d, x1, 184, x19)

# rs1_val == 134217728, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x12, x10, x11, 0x4000000000, 0x0000000008000000, 0x000000000000000b, x1, 192, x19)

# rs1_val == 268435456, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000, 0x0000000010000000, 0x0000000000000017, x1, 200, x19)

# rs1_val == 536870912, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0x4000000000000, 0x0000000020000000, 0x0000000000000015, x1, 208, x19)

# rs1_val == 1073741824, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000000, 0x0000000040000000, 0x0000000000000011, x1, 216, x19)

# rs1_val == 4294967296, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x12, x10, x11, 0x200000000, 0x0000000100000000, 0x0000000000000001, x1, 224, x19)

# rs1_val == 8589934592, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0x10000000000, 0x0000000200000000, 0x0000000000000007, x1, 232, x19)

# rs1_val == 17179869184, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0x4000000000000, 0x0000000400000000, 0x0000000000000010, x1, 240, x19)

# rs1_val == 34359738368, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0000000800000000, 0x000000000000001d, x1, 248, x19)

# rs1_val == 68719476736, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0x200000000000000, 0x0000001000000000, 0x0000000000000015, x1, 256, x19)

# rs1_val == 137438953472, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0x10000000000000, 0x0000002000000000, 0x000000000000000f, x1, 264, x19)

# rs1_val == 274877906944, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000, 0x0000004000000000, 0x0000000000000001, x1, 272, x19)

# rs1_val == 549755813888, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000, 0x0000008000000000, 0x000000000000000c, x1, 280, x19)

# rs1_val == 1099511627776, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000000000, 0x0000010000000000, 0x0000000000000010, x1, 288, x19)

# rs1_val == 2199023255552, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000000000, 0x0000020000000000, 0x000000000000000f, x1, 296, x19)

# rs1_val == 4398046511104, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0x2000000000000000, 0x0000040000000000, 0x0000000000000013, x1, 304, x19)

# rs1_val == 8796093022208, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000000000, 0x0000080000000000, 0x0000000000000010, x1, 312, x19)

# rs1_val == 17592186044416, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000000, 0x0000100000000000, 0x0000000000000003, x1, 320, x19)

# rs1_val == 35184372088832, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x12, x10, x11, 0x400000000000, 0x0000200000000000, 0x0000000000000001, x1, 328, x19)

# rs1_val == 70368744177664, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000000000, 0x0000400000000000, 0x000000000000000d, x1, 336, x19)

# rs1_val == 140737488355328, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000000000, 0x0000800000000000, 0x000000000000000c, x1, 344, x19)

# rs1_val == 281474976710656, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0x1000000000000000, 0x0001000000000000, 0x000000000000000c, x1, 352, x19)

# rs1_val == 562949953421312, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0002000000000000, 0x000000000000001f, x1, 360, x19)

# rs1_val == 1125899906842624, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x20000000000000, 0x0004000000000000, 0x0000000000000003, x1, 368, x19)

# rs1_val == 2251799813685248, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0008000000000000, 0x000000000000001f, x1, 376, x19)

# rs1_val == 4503599627370496, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0010000000000000, 0x0000000000000015, x1, 384, x19)

# rs1_val == 9007199254740992, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0020000000000000, 0x000000000000000b, x1, 392, x19)

# rs1_val == 18014398509481984, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0040000000000000, 0x000000000000000c, x1, 400, x19)

# rs1_val == 36028797018963968, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0080000000000000, 0x000000000000000a, x1, 408, x19)

# rs1_val == 72057594037927936, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0100000000000000, 0x000000000000000f, x1, 416, x19)

# rs1_val == 288230376151711744, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0400000000000000, 0x000000000000001d, x1, 424, x19)

# rs1_val == -8796093022209, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xfffff7ffffffffff, 0xfffff7ffffffffff, 0x0000000000000000, x1, 432, x19)

# rs1_val == -17592186044417, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0xffff7ffffffffff8, 0xffffefffffffffff, 0x0000000000000003, x1, 440, x19)

# rs1_val == -70368744177665, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xfffbfffffffffff0, 0xffffbfffffffffff, 0x0000000000000004, x1, 448, x19)

# rs1_val == -140737488355329, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0xffefffffffffffe0, 0xffff7fffffffffff, 0x0000000000000005, x1, 456, x19)

# rs1_val == -281474976710657, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0xeffffffffffff000, 0xfffeffffffffffff, 0x000000000000000c, x1, 464, x19)

# rs1_val == -1125899906842625, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0xbffffffffffff000, 0xfffbffffffffffff, 0x000000000000000c, x1, 472, x19)

# rs1_val == -2251799813685249, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xff7ffffffffffff0, 0xfff7ffffffffffff, 0x0000000000000004, x1, 480, x19)

# rs1_val == -4503599627370497, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffff8000000, 0xffefffffffffffff, 0x000000000000001b, x1, 488, x19)

# rs1_val == -9007199254740993, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffc000, 0xffdfffffffffffff, 0x000000000000000e, x1, 496, x19)

# rs1_val == -18014398509481985, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xffbfffffffffffff, 0xffbfffffffffffff, 0x0000000000000000, x1, 504, x19)

# rs1_val == -36028797018963969, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffe00000, 0xff7fffffffffffff, 0x0000000000000015, x1, 512, x19)

# rs1_val == -72057594037927937, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffff80000, 0xfeffffffffffffff, 0x0000000000000013, x1, 520, x19)

# rs1_val == -144115188075855873, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffff000, 0xfdffffffffffffff, 0x000000000000000c, x1, 528, x19)

# rs1_val == -288230376151711745, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffc0000000, 0xfbffffffffffffff, 0x000000000000001e, x1, 536, x19)

# rs1_val == -576460752303423489, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffffc0, 0xf7ffffffffffffff, 0x0000000000000006, x1, 544, x19)

# rs1_val == -1152921504606846977, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x7ffffffffffffff8, 0xefffffffffffffff, 0x0000000000000003, x1, 552, x19)

# rs1_val == -2305843009213693953, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xdfffffffffffffff, 0xdfffffffffffffff, 0x0000000000000000, x1, 560, x19)

# rs1_val == -4611686018427387905, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffe0000, 0xbfffffffffffffff, 0x0000000000000011, x1, 568, x19)

# rs1_val == 6148914691236517205, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x12, x10, x11, 0x5555555555555400, 0x5555555555555555, 0x000000000000000a, x1, 576, x19)

# rs1_val == -6148914691236517206, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xaaaaaaaaaaaaaa00, 0xaaaaaaaaaaaaaaaa, 0x0000000000000008, x1, 584, x19)

# rs1_val == 576460752303423488, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0800000000000000, 0x000000000000001b, x1, 592, x19)

# rs1_val == 1152921504606846976, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000000, 0x1000000000000000, 0x0000000000000003, x1, 600, x19)

# rs1_val == 2305843009213693952, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x2000000000000000, 0x000000000000000f, x1, 608, x19)

# rs1_val == 4611686018427387904, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x4000000000000000, 0x0000000000000013, x1, 616, x19)

# rs1_val == -2, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffffe00, 0xfffffffffffffffe, 0x0000000000000008, x1, 624, x19)

# rs1_val == -3, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffff4000, 0xfffffffffffffffd, 0x000000000000000e, x1, 632, x19)

# rs1_val == -17, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffef00, 0xffffffffffffffef, 0x0000000000000008, x1, 640, x19)

# rs1_val == -33, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffffbe, 0xffffffffffffffdf, 0x0000000000000001, x1, 648, x19)

# rs1_val == -65, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffbf0000, 0xffffffffffffffbf, 0x0000000000000010, x1, 656, x19)

# rs1_val == -129, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffff7f, 0xffffffffffffff7f, 0x0000000000000000, x1, 664, x19)

# rs1_val == -257, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffffbfc, 0xfffffffffffffeff, 0x0000000000000002, x1, 672, x19)

# rs1_val == -513, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffbfe00000, 0xfffffffffffffdff, 0x0000000000000015, x1, 680, x19)

# rs1_val == -1025, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffdff80, 0xfffffffffffffbff, 0x0000000000000007, x1, 688, x19)

# rs1_val == -2049, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffdffc000, 0xfffffffffffff7ff, 0x000000000000000e, x1, 696, x19)

# rs1_val == -4097, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffbffc00, 0xffffffffffffefff, 0x000000000000000a, x1, 704, x19)

# rs1_val == -8193, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffbffe0, 0xffffffffffffdfff, 0x0000000000000005, x1, 712, x19)

# rs1_val == -16385, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffdfff80, 0xffffffffffffbfff, 0x0000000000000007, x1, 720, x19)

# rs1_val == -32769, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffff7fff00, 0xffffffffffff7fff, 0x0000000000000008, x1, 728, x19)

# rs1_val == -65537, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffff7fff80000, 0xfffffffffffeffff, 0x0000000000000013, x1, 736, x19)

# rs1_val == -131073, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffbfffe00000, 0xfffffffffffdffff, 0x0000000000000015, x1, 744, x19)

# rs1_val == -262145, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffbffff0000, 0xfffffffffffbffff, 0x0000000000000010, x1, 752, x19)

# rs1_val == -524289, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffeffffe0000, 0xfffffffffff7ffff, 0x0000000000000011, x1, 760, x19)

# rs1_val == -1048577, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffbffffc, 0xffffffffffefffff, 0x0000000000000002, x1, 768, x19)

# rs1_val == -2097153, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0xfff7ffffc0000000, 0xffffffffffdfffff, 0x000000000000001e, x1, 776, x19)

# rs1_val == -4194305, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffff7ffffe00, 0xffffffffffbfffff, 0x0000000000000009, x1, 784, x19)

# rs1_val == -8388609, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0xffdfffffc0000000, 0xffffffffff7fffff, 0x000000000000001e, x1, 792, x19)

# rs1_val == -16777217, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffdfffffe0, 0xfffffffffeffffff, 0x0000000000000005, x1, 800, x19)

# rs1_val == -33554433, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffeffffff8000, 0xfffffffffdffffff, 0x000000000000000f, x1, 808, x19)

# rs1_val == -67108865, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffff7fffffe0, 0xfffffffffbffffff, 0x0000000000000005, x1, 816, x19)

# rs1_val == -134217729, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0xfeffffffe0000000, 0xfffffffff7ffffff, 0x000000000000001d, x1, 824, x19)

# rs1_val == -268435457, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffefffffff0, 0xffffffffefffffff, 0x0000000000000004, x1, 832, x19)

# rs1_val == -536870913, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffdfffffff0, 0xffffffffdfffffff, 0x0000000000000004, x1, 840, x19)

# rs1_val == -1073741825, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xffff7ffffffe0000, 0xffffffffbfffffff, 0x0000000000000011, x1, 848, x19)

# rs1_val == -2147483649, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffdfffffffc, 0xffffffff7fffffff, 0x0000000000000002, x1, 856, x19)

# rs1_val == -4294967297, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0xfffbfffffffc0000, 0xfffffffeffffffff, 0x0000000000000012, x1, 864, x19)

# rs1_val == -17179869185, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffc0000000, 0xfffffffbffffffff, 0x000000000000001e, x1, 872, x19)

# rs1_val == -34359738369, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0xfeffffffffe00000, 0xfffffff7ffffffff, 0x0000000000000015, x1, 880, x19)

# rs1_val == -68719476737, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffff80000000, 0xffffffefffffffff, 0x000000000000001f, x1, 888, x19)

# rs1_val == -274877906945, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sllw, x12, x10, x11, 0xffffefffffffffc0, 0xffffffbfffffffff, 0x0000000000000006, x1, 896, x19)

# rs1_val == -549755813889, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0xfffefffffffffe00, 0xffffff7fffffffff, 0x0000000000000009, x1, 904, x19)

# rs1_val == -1099511627777, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0xffff7fffffffff80, 0xfffffeffffffffff, 0x0000000000000007, x1, 912, x19)

# rs1_val == -2199023255553, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0xffbfffffffffe000, 0xfffffdffffffffff, 0x000000000000000d, x1, 920, x19)

# rs1_val == -4398046511105, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffff800000, 0xfffffbffffffffff, 0x0000000000000017, x1, 928, x19)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -8589934593
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0xffeffffffff80000, 0xfffffffdffffffff, 0x0000000000000013, x1, 936, x19)

# rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 8, rs1_val == 2147483648
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000, 0x0000000080000000, 0x0000000000000008, x1, 944, x19)

# rs1_val < 0 and rs2_val == 0, rs1_val == -9223372036854775808, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000000, 0x8000000000000000, 0x0000000000000000, x1, 952, x19)

# rs1_val > 0 and rs2_val == 0, rs1_val == 144115188075855872
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0x200000000000000, 0x0200000000000000, 0x0000000000000000, x1, 960, x19)

# rs1_val == 512, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0x4000000000, 0x0000000000000200, 0x000000000000001d, x1, 968, x19)

# rs1_val == 4096, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0x4000, 0x0000000000001000, 0x0000000000000002, x1, 976, x19)

# rs1_val == 8192, 
# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0x20000, 0x0000000000002000, 0x0000000000000004, x1, 984, x19)
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

signature_x8_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x8_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 124*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
