
#This assembly file tests the sh instruction of the RISC-V I extension for the sh-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sh-align)

RVTEST_SIGBASE( x13,signature_x13_1)

# rs1 != rs2, rs1==x27, rs2==x8, ea_align == 0 and (imm_val % 4) == 0, imm_val > 0, rs2_val == 32
# opcode: sh; op1:x27; op2:x8; op2val:0x0000000000000020; immval:4; align:0
TEST_STORE(x13,x3,0,x27,x8,0x0000000000000020,4,0,sh,0)

# rs1==x6, rs2==x31, ea_align == 0 and (imm_val % 4) == 1, 
# opcode: sh; op1:x6; op2:x31; op2val:0x0000000000000009; immval:5; align:0
TEST_STORE(x13,x3,0,x6,x31,0x0000000000000009,5,8,sh,0)

# rs1==x21, rs2==x15, ea_align == 0 and (imm_val % 4) == 2, imm_val < 0, rs2_val == 134217728
# opcode: sh; op1:x21; op2:x15; op2val:0x0000000008000000; immval:-10; align:0
TEST_STORE(x13,x3,0,x21,x15,0x0000000008000000,-10,16,sh,0)

# rs1==x10, rs2==x2, ea_align == 0 and (imm_val % 4) == 3, rs2_val == 1099511627776
# opcode: sh; op1:x10; op2:x2; op2val:0x0000010000000000; immval:-257; align:0
TEST_STORE(x13,x3,0,x10,x2,0x0000010000000000,-257,24,sh,0)

# rs1==x4, rs2==x23, ea_align == 2 and (imm_val % 4) == 0, imm_val == 0, rs2_val == -1073741825
# opcode: sh; op1:x4; op2:x23; op2val:0xffffffffbfffffff; immval:0; align:2
TEST_STORE(x13,x3,0,x4,x23,0xffffffffbfffffff,0,32,sh,2)

# rs1==x23, rs2==x6, ea_align == 2 and (imm_val % 4) == 1, rs2_val == 576460752303423488
# opcode: sh; op1:x23; op2:x6; op2val:0x0800000000000000; immval:-7; align:2
TEST_STORE(x13,x3,0,x23,x6,0x0800000000000000,-7,40,sh,2)

# rs1==x28, rs2==x30, ea_align == 2 and (imm_val % 4) == 2, 
# opcode: sh; op1:x28; op2:x30; op2val:0xfffffffffffffff9; immval:-1366; align:2
TEST_STORE(x13,x3,0,x28,x30,0xfffffffffffffff9,-1366,48,sh,2)

# rs1==x14, rs2==x12, ea_align == 2 and (imm_val % 4) == 3, rs2_val == 8388608
# opcode: sh; op1:x14; op2:x12; op2val:0x0000000000800000; immval:-257; align:2
TEST_STORE(x13,x3,0,x14,x12,0x0000000000800000,-257,56,sh,2)

# rs1==x15, rs2==x28, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode: sh; op1:x15; op2:x28; op2val:0x8000000000000000; immval:128; align:0
TEST_STORE(x13,x3,0,x15,x28,0x8000000000000000,128,64,sh,0)

# rs1==x12, rs2==x20, rs2_val == 0, 
# opcode: sh; op1:x12; op2:x20; op2val:0x0000000000000000; immval:9; align:0
TEST_STORE(x13,x3,0,x12,x20,0x0000000000000000,9,72,sh,0)

# rs1==x16, rs2==x5, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807
# opcode: sh; op1:x16; op2:x5; op2val:0x7fffffffffffffff; immval:256; align:0
TEST_STORE(x13,x3,0,x16,x5,0x7fffffffffffffff,256,80,sh,0)

# rs1==x11, rs2==x26, rs2_val == 1, 
# opcode: sh; op1:x11; op2:x26; op2val:0x0000000000000001; immval:0; align:0
TEST_STORE(x13,x3,0,x11,x26,0x0000000000000001,0,88,sh,0)

# rs1==x1, rs2==x7, rs2_val == 2, 
# opcode: sh; op1:x1; op2:x7; op2val:0x0000000000000002; immval:-1366; align:0
TEST_STORE(x13,x3,0,x1,x7,0x0000000000000002,-1366,96,sh,0)

# rs1==x30, rs2==x25, rs2_val == 4, 
# opcode: sh; op1:x30; op2:x25; op2val:0x0000000000000004; immval:0; align:0
TEST_STORE(x13,x3,0,x30,x25,0x0000000000000004,0,104,sh,0)

# rs1==x24, rs2==x18, rs2_val == 8, 
# opcode: sh; op1:x24; op2:x18; op2val:0x0000000000000008; immval:4; align:0
TEST_STORE(x13,x3,0,x24,x18,0x0000000000000008,4,112,sh,0)

# rs1==x17, rs2==x9, rs2_val == 16, 
# opcode: sh; op1:x17; op2:x9; op2val:0x0000000000000010; immval:32; align:0
TEST_STORE(x13,x3,0,x17,x9,0x0000000000000010,32,120,sh,0)

# rs1==x19, rs2==x1, rs2_val == 64, 
# opcode: sh; op1:x19; op2:x1; op2val:0x0000000000000040; immval:-1024; align:0
TEST_STORE(x13,x3,0,x19,x1,0x0000000000000040,-1024,128,sh,0)

# rs1==x7, rs2==x4, rs2_val == 128, 
# opcode: sh; op1:x7; op2:x4; op2val:0x0000000000000080; immval:-2; align:0
TEST_STORE(x13,x6,0,x7,x4,0x0000000000000080,-2,136,sh,0)

# rs1==x5, rs2==x11, rs2_val == 256, 
# opcode: sh; op1:x5; op2:x11; op2val:0x0000000000000100; immval:-6; align:0
TEST_STORE(x13,x6,0,x5,x11,0x0000000000000100,-6,144,sh,0)

# rs1==x31, rs2==x27, rs2_val == 512, 
# opcode: sh; op1:x31; op2:x27; op2val:0x0000000000000200; immval:1024; align:0
TEST_STORE(x13,x6,0,x31,x27,0x0000000000000200,1024,152,sh,0)

# rs1==x8, rs2==x3, rs2_val == 1024, 
# opcode: sh; op1:x8; op2:x3; op2val:0x0000000000000400; immval:256; align:0
TEST_STORE(x13,x6,0,x8,x3,0x0000000000000400,256,160,sh,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x26, rs2==x14, rs2_val == 2048, 
# opcode: sh; op1:x26; op2:x14; op2val:0x0000000000000800; immval:-7; align:0
TEST_STORE(x1,x6,0,x26,x14,0x0000000000000800,-7,0,sh,0)

# rs1==x13, rs2==x0, rs2_val == 4096, 
# opcode: sh; op1:x13; op2:x0; op2val:0x0000000000001000; immval:-17; align:0
TEST_STORE(x1,x6,0,x13,x0,0x0000000000001000,-17,8,sh,0)

# rs1==x2, rs2==x13, rs2_val == 8192, 
# opcode: sh; op1:x2; op2:x13; op2val:0x0000000000002000; immval:-8; align:0
TEST_STORE(x1,x6,0,x2,x13,0x0000000000002000,-8,16,sh,0)

# rs1==x22, rs2==x17, rs2_val == 16384, 
# opcode: sh; op1:x22; op2:x17; op2val:0x0000000000004000; immval:3; align:0
TEST_STORE(x1,x6,0,x22,x17,0x0000000000004000,3,24,sh,0)

# rs1==x9, rs2==x16, rs2_val == 32768, 
# opcode: sh; op1:x9; op2:x16; op2val:0x0000000000008000; immval:7; align:0
TEST_STORE(x1,x6,0,x9,x16,0x0000000000008000,7,32,sh,0)

# rs1==x18, rs2==x10, rs2_val == 65536, 
# opcode: sh; op1:x18; op2:x10; op2val:0x0000000000010000; immval:256; align:0
TEST_STORE(x1,x6,0,x18,x10,0x0000000000010000,256,40,sh,0)

# rs1==x20, rs2==x21, rs2_val == 131072, 
# opcode: sh; op1:x20; op2:x21; op2val:0x0000000000020000; immval:256; align:0
TEST_STORE(x1,x6,0,x20,x21,0x0000000000020000,256,48,sh,0)

# rs1==x25, rs2==x19, rs2_val == 262144, 
# opcode: sh; op1:x25; op2:x19; op2val:0x0000000000040000; immval:16; align:0
TEST_STORE(x1,x6,0,x25,x19,0x0000000000040000,16,56,sh,0)

# rs1==x3, rs2==x24, rs2_val == 524288, 
# opcode: sh; op1:x3; op2:x24; op2val:0x0000000000080000; immval:-7; align:0
TEST_STORE(x1,x6,0,x3,x24,0x0000000000080000,-7,64,sh,0)

# rs1==x29, rs2==x22, rs2_val == 1048576, 
# opcode: sh; op1:x29; op2:x22; op2val:0x0000000000100000; immval:9; align:0
TEST_STORE(x1,x6,0,x29,x22,0x0000000000100000,9,72,sh,0)

# rs2==x29, rs2_val == 2097152, 
# opcode: sh; op1:x22; op2:x29; op2val:0x0000000000200000; immval:9; align:0
TEST_STORE(x1,x6,0,x22,x29,0x0000000000200000,9,80,sh,0)

# rs2_val == 4194304, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000000400000; immval:9; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000000400000,9,88,sh,0)

# rs2_val == 16777216, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000001000000; immval:-6; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000001000000,-6,96,sh,0)

# rs2_val == 33554432, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000002000000; immval:7; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000002000000,7,104,sh,0)

# rs2_val == 67108864, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000004000000; immval:2; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000004000000,2,112,sh,0)

# rs2_val == 268435456, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000010000000; immval:1; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000010000000,1,120,sh,0)

# rs2_val == 536870912, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000020000000; immval:32; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000020000000,32,128,sh,0)

# rs2_val == 1073741824, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000040000000; immval:2047; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000040000000,2047,136,sh,0)

# rs2_val == 2147483648, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000080000000; immval:-1366; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000080000000,-1366,144,sh,0)

# rs2_val == 4294967296, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000100000000; immval:-5; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000100000000,-5,152,sh,0)

# rs2_val == 8589934592, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000200000000; immval:0; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000200000000,0,160,sh,0)

# rs2_val == 17179869184, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000400000000; immval:-2; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000400000000,-2,168,sh,0)

# rs2_val == 34359738368, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000800000000; immval:-1366; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000800000000,-1366,176,sh,0)

# rs2_val == 68719476736, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000001000000000; immval:-257; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000001000000000,-257,184,sh,0)

# rs2_val == 137438953472, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000002000000000; immval:128; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000002000000000,128,192,sh,0)

# rs2_val == 274877906944, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000004000000000; immval:0; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000004000000000,0,200,sh,0)

# rs2_val == 549755813888, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000008000000000; immval:-6; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000008000000000,-6,208,sh,0)

# rs2_val == 2199023255552, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000020000000000; immval:3; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000020000000000,3,216,sh,0)

# rs2_val == 4398046511104, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000040000000000; immval:-9; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000040000000000,-9,224,sh,0)

# rs2_val == 8796093022208, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000080000000000; immval:-2048; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000080000000000,-2048,232,sh,0)

# rs2_val == 17592186044416, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000100000000000; immval:64; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000100000000000,64,240,sh,0)

# rs2_val == 35184372088832, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000200000000000; immval:-5; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000200000000000,-5,248,sh,0)

# rs2_val == 70368744177664, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000400000000000; immval:1023; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000400000000000,1023,256,sh,0)

# rs2_val == 140737488355328, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000800000000000; immval:5; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000800000000000,5,264,sh,0)

# rs2_val == 281474976710656, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0001000000000000; immval:-17; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0001000000000000,-17,272,sh,0)

# rs2_val == 562949953421312, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0002000000000000; immval:-9; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0002000000000000,-9,280,sh,0)

# rs2_val == 1125899906842624, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0004000000000000; immval:1365; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0004000000000000,1365,288,sh,0)

# rs2_val == 2251799813685248, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0008000000000000; immval:256; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0008000000000000,256,296,sh,0)

# rs2_val == 4503599627370496, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0010000000000000; immval:1024; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0010000000000000,1024,304,sh,0)

# rs2_val == 9007199254740992, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0020000000000000; immval:-1366; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0020000000000000,-1366,312,sh,0)

# rs2_val == 18014398509481984, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0040000000000000; immval:7; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0040000000000000,7,320,sh,0)

# rs2_val == 36028797018963968, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0080000000000000; immval:-1; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0080000000000000,-1,328,sh,0)

# rs2_val == 72057594037927936, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0100000000000000; immval:256; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0100000000000000,256,336,sh,0)

# rs2_val == 144115188075855872, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0200000000000000; immval:-1024; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0200000000000000,-1024,344,sh,0)

# rs2_val == 288230376151711744, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0400000000000000; immval:-17; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0400000000000000,-17,352,sh,0)

# rs2_val == 1152921504606846976, 
# opcode: sh; op1:x10; op2:x11; op2val:0x1000000000000000; immval:-1025; align:0
TEST_STORE(x1,x6,0,x10,x11,0x1000000000000000,-1025,360,sh,0)

# rs2_val == 2305843009213693952, 
# opcode: sh; op1:x10; op2:x11; op2val:0x2000000000000000; immval:-257; align:0
TEST_STORE(x1,x6,0,x10,x11,0x2000000000000000,-257,368,sh,0)

# rs2_val == 4611686018427387904, 
# opcode: sh; op1:x10; op2:x11; op2val:0x4000000000000000; immval:2; align:0
TEST_STORE(x1,x6,0,x10,x11,0x4000000000000000,2,376,sh,0)

# rs2_val == -2, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval:16; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffffffffe,16,384,sh,0)

# rs2_val == -1125899906842625, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval:-33; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffbffffffffffff,-33,392,sh,0)

# rs2_val == -2251799813685249, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval:-33; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfff7ffffffffffff,-33,400,sh,0)

# rs2_val == -4503599627370497, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval:256; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffefffffffffffff,256,408,sh,0)

# rs2_val == -9007199254740993, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval:1365; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffdfffffffffffff,1365,416,sh,0)

# rs2_val == -18014398509481985, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval:-6; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffbfffffffffffff,-6,424,sh,0)

# rs2_val == -36028797018963969, 
# opcode: sh; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval:-2048; align:0
TEST_STORE(x1,x6,0,x10,x11,0xff7fffffffffffff,-2048,432,sh,0)

# rs2_val == -72057594037927937, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval:16; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfeffffffffffffff,16,440,sh,0)

# rs2_val == -144115188075855873, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval:5; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfdffffffffffffff,5,448,sh,0)

# rs2_val == -288230376151711745, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval:128; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfbffffffffffffff,128,456,sh,0)

# rs2_val == -576460752303423489, 
# opcode: sh; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval:3; align:0
TEST_STORE(x1,x6,0,x10,x11,0xf7ffffffffffffff,3,464,sh,0)

# rs2_val == -1152921504606846977, 
# opcode: sh; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval:-5; align:0
TEST_STORE(x1,x6,0,x10,x11,0xefffffffffffffff,-5,472,sh,0)

# rs2_val == -2305843009213693953, 
# opcode: sh; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval:-6; align:0
TEST_STORE(x1,x6,0,x10,x11,0xdfffffffffffffff,-6,480,sh,0)

# rs2_val == -4611686018427387905, 
# opcode: sh; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval:-65; align:0
TEST_STORE(x1,x6,0,x10,x11,0xbfffffffffffffff,-65,488,sh,0)

# rs2_val == 6148914691236517205, 
# opcode: sh; op1:x10; op2:x11; op2val:0x5555555555555555; immval:-65; align:0
TEST_STORE(x1,x6,0,x10,x11,0x5555555555555555,-65,496,sh,0)

# rs2_val == -6148914691236517206, 
# opcode: sh; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval:-6; align:0
TEST_STORE(x1,x6,0,x10,x11,0xaaaaaaaaaaaaaaaa,-6,504,sh,0)

# rs2_val == -3, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval:-9; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffffffffd,-9,512,sh,0)

# rs2_val == -5, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval:-2048; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffffffffb,-2048,520,sh,0)

# rs2_val == -9, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval:-3; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffffffff7,-3,528,sh,0)

# rs2_val == -17, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval:6; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffffffffef,6,536,sh,0)

# rs2_val == -33, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval:-9; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffffffffdf,-9,544,sh,0)

# rs2_val == -65, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval:-33; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffffffffbf,-33,552,sh,0)

# rs2_val == -129, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval:-1024; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffffffff7f,-1024,560,sh,0)

# rs2_val == -257, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval:0; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffffffeff,0,568,sh,0)

# rs2_val == -513, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval:32; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffffffdff,32,576,sh,0)

# rs2_val == -1025, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval:-1; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffffffbff,-1,584,sh,0)

# rs2_val == -2049, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval:32; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffffff7ff,32,592,sh,0)

# rs2_val == -4097, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval:9; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffffffefff,9,600,sh,0)

# rs2_val == -8193, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval:-129; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffffffdfff,-129,608,sh,0)

# rs2_val == -16385, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval:-33; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffffffbfff,-33,616,sh,0)

# rs2_val == -32769, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval:0; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffffff7fff,0,624,sh,0)

# rs2_val == -65537, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval:-1366; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffffeffff,-1366,632,sh,0)

# rs2_val == -131073, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval:-1024; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffffdffff,-1024,640,sh,0)

# rs2_val == -262145, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval:2047; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffffbffff,2047,648,sh,0)

# rs2_val == -524289, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval:512; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffff7ffff,512,656,sh,0)

# rs2_val == -1048577, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval:1365; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffffefffff,1365,664,sh,0)

# rs2_val == -2097153, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval:-65; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffffdfffff,-65,672,sh,0)

# rs2_val == -4194305, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval:32; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffffbfffff,32,680,sh,0)

# rs2_val == -8388609, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval:4; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffff7fffff,4,688,sh,0)

# rs2_val == -16777217, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval:-2; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffeffffff,-2,696,sh,0)

# rs2_val == -33554433, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval:-6; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffdffffff,-6,704,sh,0)

# rs2_val == -67108865, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval:2047; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffffbffffff,2047,712,sh,0)

# rs2_val == -134217729, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval:-8; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffff7ffffff,-8,720,sh,0)

# rs2_val == -268435457, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval:-1024; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffefffffff,-1024,728,sh,0)

# rs2_val == -536870913, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval:1024; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffffdfffffff,1024,736,sh,0)

# rs2_val == -2147483649, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval:2; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffff7fffffff,2,744,sh,0)

# rs2_val == -4294967297, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval:-2; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffeffffffff,-2,752,sh,0)

# rs2_val == -8589934593, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval:-129; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffdffffffff,-129,760,sh,0)

# rs2_val == -17179869185, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval:-257; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffffbffffffff,-257,768,sh,0)

# rs2_val == -34359738369, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval:-2048; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffff7ffffffff,-2048,776,sh,0)

# rs2_val == -68719476737, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval:7; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffefffffffff,7,784,sh,0)

# rs2_val == -137438953473, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval:-257; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffdfffffffff,-257,792,sh,0)

# rs2_val == -274877906945, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval:2047; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffffbfffffffff,2047,800,sh,0)

# rs2_val == -549755813889, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval:-3; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffff7fffffffff,-3,808,sh,0)

# rs2_val == -1099511627777, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval:-257; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffeffffffffff,-257,816,sh,0)

# rs2_val == -2199023255553, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval:512; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffdffffffffff,512,824,sh,0)

# rs2_val == -4398046511105, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval:5; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffffbffffffffff,5,832,sh,0)

# rs2_val == -8796093022209, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval:128; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffff7ffffffffff,128,840,sh,0)

# rs2_val == -17592186044417, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval:8; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffefffffffffff,8,848,sh,0)

# rs2_val == -35184372088833, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval:-4; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffdfffffffffff,-4,856,sh,0)

# rs2_val == -70368744177665, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval:16; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffffbfffffffffff,16,864,sh,0)

# rs2_val == -140737488355329, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval:-6; align:0
TEST_STORE(x1,x6,0,x10,x11,0xffff7fffffffffff,-6,872,sh,0)

# rs2_val == -281474976710657, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval:2047; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffeffffffffffff,2047,880,sh,0)

# rs2_val == -562949953421313, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval:-17; align:0
TEST_STORE(x1,x6,0,x10,x11,0xfffdffffffffffff,-17,888,sh,0)

# rs2_val == 4096, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000000001000; immval:-17; align:0
TEST_STORE(x1,x6,0,x10,x11,0x0000000000001000,-17,896,sh,0)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x13_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 113*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
