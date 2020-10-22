
#This assembly file tests the sd instruction of the RISC-V I extension for the sd-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sd-align)

RVTEST_SIGBASE( x4,signature_x4_1)

# rs1 != rs2, rs1==x16, rs2==x11, ea_align == 0 and (imm_val % 8) == 0, imm_val > 0, rs2_val == -8193
# opcode: sd; op1:x16; op2:x11; op2val:0xffffffffffffdfff; immval:64; align:0
TEST_STORE(x4,x5,0,x16,x11,0xffffffffffffdfff,64,0,sd,0)

# rs1==x21, rs2==x23, ea_align == 0 and (imm_val % 8) == 1, rs2_val == 67108864
# opcode: sd; op1:x21; op2:x23; op2val:0x0000000004000000; immval:9; align:0
TEST_STORE(x4,x5,0,x21,x23,0x0000000004000000,9,8,sd,0)

# rs1==x14, rs2==x13, ea_align == 0 and (imm_val % 8) == 2, imm_val < 0, rs2_val == -72057594037927937
# opcode: sd; op1:x14; op2:x13; op2val:0xfeffffffffffffff; immval:-1366; align:0
TEST_STORE(x4,x5,0,x14,x13,0xfeffffffffffffff,-1366,16,sd,0)

# rs1==x26, rs2==x18, ea_align == 0 and (imm_val % 8) == 3, rs2_val == 18014398509481984
# opcode: sd; op1:x26; op2:x18; op2val:0x0040000000000000; immval:-5; align:0
TEST_STORE(x4,x5,0,x26,x18,0x0040000000000000,-5,24,sd,0)

# rs1==x11, rs2==x15, ea_align == 0 and (imm_val % 8) == 4, rs2_val == 32
# opcode: sd; op1:x11; op2:x15; op2val:0x0000000000000020; immval:4; align:0
TEST_STORE(x4,x5,0,x11,x15,0x0000000000000020,4,32,sd,0)

# rs1==x15, rs2==x21, ea_align == 0 and (imm_val % 8) == 5, rs2_val == 8796093022208
# opcode: sd; op1:x15; op2:x21; op2val:0x0000080000000000; immval:-3; align:0
TEST_STORE(x4,x5,0,x15,x21,0x0000080000000000,-3,40,sd,0)

# rs1==x8, rs2==x19, ea_align == 0 and (imm_val % 8) == 6, 
# opcode: sd; op1:x8; op2:x19; op2val:0xc000000000000000; immval:-10; align:0
TEST_STORE(x4,x5,0,x8,x19,0xc000000000000000,-10,48,sd,0)

# rs1==x12, rs2==x22, ea_align == 0 and (imm_val % 8) == 7, rs2_val == -8388609
# opcode: sd; op1:x12; op2:x22; op2val:0xffffffffff7fffff; immval:-1025; align:0
TEST_STORE(x4,x5,0,x12,x22,0xffffffffff7fffff,-1025,56,sd,0)

# rs1==x10, rs2==x1, imm_val == 0, rs2_val == 32768
# opcode: sd; op1:x10; op2:x1; op2val:0x0000000000008000; immval:0; align:0
TEST_STORE(x4,x5,0,x10,x1,0x0000000000008000,0,64,sd,0)

# rs1==x30, rs2==x24, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode: sd; op1:x30; op2:x24; op2val:0x8000000000000000; immval:-4; align:0
TEST_STORE(x4,x5,0,x30,x24,0x8000000000000000,-4,72,sd,0)

# rs1==x9, rs2==x8, rs2_val == 0, 
# opcode: sd; op1:x9; op2:x8; op2val:0x0000000000000000; immval:2; align:0
TEST_STORE(x4,x5,0,x9,x8,0x0000000000000000,2,80,sd,0)

# rs1==x23, rs2==x14, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807
# opcode: sd; op1:x23; op2:x14; op2val:0x7fffffffffffffff; immval:7; align:0
TEST_STORE(x4,x5,0,x23,x14,0x7fffffffffffffff,7,88,sd,0)

# rs1==x3, rs2==x10, rs2_val == 1, 
# opcode: sd; op1:x3; op2:x10; op2val:0x0000000000000001; immval:-4; align:0
TEST_STORE(x4,x5,0,x3,x10,0x0000000000000001,-4,96,sd,0)

# rs1==x18, rs2==x12, rs2_val == 2, 
# opcode: sd; op1:x18; op2:x12; op2val:0x0000000000000002; immval:-10; align:0
TEST_STORE(x4,x5,0,x18,x12,0x0000000000000002,-10,104,sd,0)

# rs1==x6, rs2==x3, rs2_val == 4, 
# opcode: sd; op1:x6; op2:x3; op2val:0x0000000000000004; immval:4; align:0
TEST_STORE(x4,x5,0,x6,x3,0x0000000000000004,4,112,sd,0)

# rs1==x19, rs2==x26, rs2_val == 8, 
# opcode: sd; op1:x19; op2:x26; op2val:0x0000000000000008; immval:-33; align:0
TEST_STORE(x4,x5,0,x19,x26,0x0000000000000008,-33,120,sd,0)

# rs1==x29, rs2==x17, rs2_val == 16, 
# opcode: sd; op1:x29; op2:x17; op2val:0x0000000000000010; immval:-1366; align:0
TEST_STORE(x4,x5,0,x29,x17,0x0000000000000010,-1366,128,sd,0)

# rs1==x2, rs2==x28, rs2_val == 64, 
# opcode: sd; op1:x2; op2:x28; op2val:0x0000000000000040; immval:-9; align:0
TEST_STORE(x4,x5,0,x2,x28,0x0000000000000040,-9,136,sd,0)

# rs1==x31, rs2==x16, rs2_val == 128, 
# opcode: sd; op1:x31; op2:x16; op2val:0x0000000000000080; immval:4; align:0
TEST_STORE(x4,x5,0,x31,x16,0x0000000000000080,4,144,sd,0)

# rs1==x25, rs2==x7, rs2_val == 256, 
# opcode: sd; op1:x25; op2:x7; op2val:0x0000000000000100; immval:-2; align:0
TEST_STORE(x4,x5,0,x25,x7,0x0000000000000100,-2,152,sd,0)

# rs1==x27, rs2==x20, rs2_val == 512, 
# opcode: sd; op1:x27; op2:x20; op2val:0x0000000000000200; immval:-10; align:0
TEST_STORE(x4,x8,0,x27,x20,0x0000000000000200,-10,160,sd,0)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x1, rs2==x6, rs2_val == 1024, 
# opcode: sd; op1:x1; op2:x6; op2val:0x0000000000000400; immval:-65; align:0
TEST_STORE(x3,x8,0,x1,x6,0x0000000000000400,-65,0,sd,0)

# rs1==x22, rs2==x31, rs2_val == 2048, 
# opcode: sd; op1:x22; op2:x31; op2val:0x0000000000000800; immval:1023; align:0
TEST_STORE(x3,x8,0,x22,x31,0x0000000000000800,1023,8,sd,0)

# rs1==x28, rs2==x30, rs2_val == 4096, 
# opcode: sd; op1:x28; op2:x30; op2val:0x0000000000001000; immval:-2048; align:0
TEST_STORE(x3,x8,0,x28,x30,0x0000000000001000,-2048,16,sd,0)

# rs1==x20, rs2==x4, rs2_val == 8192, 
# opcode: sd; op1:x20; op2:x4; op2val:0x0000000000002000; immval:7; align:0
TEST_STORE(x3,x8,0,x20,x4,0x0000000000002000,7,24,sd,0)

# rs1==x13, rs2==x27, rs2_val == 16384, 
# opcode: sd; op1:x13; op2:x27; op2val:0x0000000000004000; immval:-257; align:0
TEST_STORE(x3,x8,0,x13,x27,0x0000000000004000,-257,32,sd,0)

# rs1==x7, rs2==x25, rs2_val == 65536, 
# opcode: sd; op1:x7; op2:x25; op2val:0x0000000000010000; immval:-6; align:0
TEST_STORE(x3,x8,0,x7,x25,0x0000000000010000,-6,40,sd,0)

# rs1==x24, rs2==x9, rs2_val == 131072, 
# opcode: sd; op1:x24; op2:x9; op2val:0x0000000000020000; immval:512; align:0
TEST_STORE(x3,x8,0,x24,x9,0x0000000000020000,512,48,sd,0)

# rs1==x17, rs2==x5, rs2_val == 262144, 
# opcode: sd; op1:x17; op2:x5; op2val:0x0000000000040000; immval:-129; align:0
TEST_STORE(x3,x8,0,x17,x5,0x0000000000040000,-129,56,sd,0)

# rs1==x5, rs2==x2, rs2_val == 524288, 
# opcode: sd; op1:x5; op2:x2; op2val:0x0000000000080000; immval:7; align:0
TEST_STORE(x3,x8,0,x5,x2,0x0000000000080000,7,64,sd,0)

# rs1==x4, rs2==x0, rs2_val == 1048576, 
# opcode: sd; op1:x4; op2:x0; op2val:0x0000000000100000; immval:-8; align:0
TEST_STORE(x3,x8,0,x4,x0,0x0000000000100000,-8,72,sd,0)

# rs2==x29, rs2_val == 2097152, 
# opcode: sd; op1:x23; op2:x29; op2val:0x0000000000200000; immval:-1024; align:0
TEST_STORE(x3,x8,0,x23,x29,0x0000000000200000,-1024,80,sd,0)

# rs2_val == 4194304, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000400000; immval:-17; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000000400000,-17,88,sd,0)

# rs2_val == 8388608, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000800000; immval:6; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000000800000,6,96,sd,0)

# rs2_val == 16777216, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000001000000; immval:2; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000001000000,2,104,sd,0)

# rs2_val == 33554432, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000002000000; immval:-257; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000002000000,-257,112,sd,0)

# rs2_val == 134217728, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000008000000; immval:-33; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000008000000,-33,120,sd,0)

# rs2_val == 268435456, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000010000000; immval:2; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000010000000,2,128,sd,0)

# rs2_val == 536870912, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000020000000; immval:2047; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000020000000,2047,136,sd,0)

# rs2_val == 1073741824, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000040000000; immval:1024; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000040000000,1024,144,sd,0)

# rs2_val == 2147483648, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000080000000; immval:64; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000080000000,64,152,sd,0)

# rs2_val == 4294967296, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000100000000; immval:-1; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000100000000,-1,160,sd,0)

# rs2_val == 8589934592, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000200000000; immval:-10; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000200000000,-10,168,sd,0)

# rs2_val == 17179869184, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000400000000; immval:-1366; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000400000000,-1366,176,sd,0)

# rs2_val == 34359738368, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000800000000; immval:-513; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000800000000,-513,184,sd,0)

# rs2_val == 68719476736, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000001000000000; immval:-129; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000001000000000,-129,192,sd,0)

# rs2_val == 137438953472, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000002000000000; immval:-33; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000002000000000,-33,200,sd,0)

# rs2_val == 274877906944, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000004000000000; immval:-9; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000004000000000,-9,208,sd,0)

# rs2_val == 549755813888, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000008000000000; immval:-8; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000008000000000,-8,216,sd,0)

# rs2_val == 1099511627776, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000010000000000; immval:1023; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000010000000000,1023,224,sd,0)

# rs2_val == 2199023255552, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000020000000000; immval:-6; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000020000000000,-6,232,sd,0)

# rs2_val == 4398046511104, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000040000000000; immval:-4; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000040000000000,-4,240,sd,0)

# rs2_val == 17592186044416, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000100000000000; immval:-9; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000100000000000,-9,248,sd,0)

# rs2_val == 35184372088832, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000200000000000; immval:-2048; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000200000000000,-2048,256,sd,0)

# rs2_val == 70368744177664, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000400000000000; immval:-6; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000400000000000,-6,264,sd,0)

# rs2_val == 140737488355328, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000800000000000; immval:7; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000800000000000,7,272,sd,0)

# rs2_val == 281474976710656, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0001000000000000; immval:2; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0001000000000000,2,280,sd,0)

# rs2_val == 562949953421312, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0002000000000000; immval:-1024; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0002000000000000,-1024,288,sd,0)

# rs2_val == 1125899906842624, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0004000000000000; immval:-4; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0004000000000000,-4,296,sd,0)

# rs2_val == 2251799813685248, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0008000000000000; immval:-1024; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0008000000000000,-1024,304,sd,0)

# rs2_val == 4503599627370496, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0010000000000000; immval:2; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0010000000000000,2,312,sd,0)

# rs2_val == 9007199254740992, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0020000000000000; immval:2047; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0020000000000000,2047,320,sd,0)

# rs2_val == 36028797018963968, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0080000000000000; immval:-1025; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0080000000000000,-1025,328,sd,0)

# rs2_val == 72057594037927936, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0100000000000000; immval:-2048; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0100000000000000,-2048,336,sd,0)

# rs2_val == 144115188075855872, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0200000000000000; immval:-33; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0200000000000000,-33,344,sd,0)

# rs2_val == 288230376151711744, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0400000000000000; immval:-2048; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0400000000000000,-2048,352,sd,0)

# rs2_val == 576460752303423488, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0800000000000000; immval:-9; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0800000000000000,-9,360,sd,0)

# rs2_val == 1152921504606846976, 
# opcode: sd; op1:x10; op2:x11; op2val:0x1000000000000000; immval:32; align:0
TEST_STORE(x3,x8,0,x10,x11,0x1000000000000000,32,368,sd,0)

# rs2_val == 2305843009213693952, 
# opcode: sd; op1:x10; op2:x11; op2val:0x2000000000000000; immval:-10; align:0
TEST_STORE(x3,x8,0,x10,x11,0x2000000000000000,-10,376,sd,0)

# rs2_val == -1125899906842625, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval:-6; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffbffffffffffff,-6,384,sd,0)

# rs2_val == -2251799813685249, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval:-3; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfff7ffffffffffff,-3,392,sd,0)

# rs2_val == -4503599627370497, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval:-1; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffefffffffffffff,-1,400,sd,0)

# rs2_val == -9007199254740993, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval:4; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffdfffffffffffff,4,408,sd,0)

# rs2_val == -18014398509481985, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval:512; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffbfffffffffffff,512,416,sd,0)

# rs2_val == -36028797018963969, 
# opcode: sd; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval:-129; align:0
TEST_STORE(x3,x8,0,x10,x11,0xff7fffffffffffff,-129,424,sd,0)

# rs2_val == -144115188075855873, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval:0; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfdffffffffffffff,0,432,sd,0)

# rs2_val == -288230376151711745, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval:-1366; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfbffffffffffffff,-1366,440,sd,0)

# rs2_val == -576460752303423489, 
# opcode: sd; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval:-1; align:0
TEST_STORE(x3,x8,0,x10,x11,0xf7ffffffffffffff,-1,448,sd,0)

# rs2_val == -1152921504606846977, 
# opcode: sd; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval:-33; align:0
TEST_STORE(x3,x8,0,x10,x11,0xefffffffffffffff,-33,456,sd,0)

# rs2_val == -2305843009213693953, 
# opcode: sd; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval:-8; align:0
TEST_STORE(x3,x8,0,x10,x11,0xdfffffffffffffff,-8,464,sd,0)

# rs2_val == -4611686018427387905, 
# opcode: sd; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval:16; align:0
TEST_STORE(x3,x8,0,x10,x11,0xbfffffffffffffff,16,472,sd,0)

# rs2_val == 6148914691236517205, 
# opcode: sd; op1:x10; op2:x11; op2val:0x5555555555555555; immval:-33; align:0
TEST_STORE(x3,x8,0,x10,x11,0x5555555555555555,-33,480,sd,0)

# rs2_val == -6148914691236517206, 
# opcode: sd; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval:1365; align:0
TEST_STORE(x3,x8,0,x10,x11,0xaaaaaaaaaaaaaaaa,1365,488,sd,0)

# rs2_val == 4611686018427387904, 
# opcode: sd; op1:x10; op2:x11; op2val:0x4000000000000000; immval:-1024; align:0
TEST_STORE(x3,x8,0,x10,x11,0x4000000000000000,-1024,496,sd,0)

# rs2_val == -2, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval:-5; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffffffffe,-5,504,sd,0)

# rs2_val == -3, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval:9; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffffffffd,9,512,sd,0)

# rs2_val == -5, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval:1023; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffffffffb,1023,520,sd,0)

# rs2_val == -9, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval:-513; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffffffff7,-513,528,sd,0)

# rs2_val == -17, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval:-513; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffffffffef,-513,536,sd,0)

# rs2_val == -33, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval:-33; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffffffffdf,-33,544,sd,0)

# rs2_val == -65, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval:1024; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffffffffbf,1024,552,sd,0)

# rs2_val == -129, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval:64; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffffffff7f,64,560,sd,0)

# rs2_val == -257, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval:-9; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffffffeff,-9,568,sd,0)

# rs2_val == -513, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval:7; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffffffdff,7,576,sd,0)

# rs2_val == -1025, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval:-8; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffffffbff,-8,584,sd,0)

# rs2_val == -2049, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval:4; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffffff7ff,4,592,sd,0)

# rs2_val == -4097, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval:-6; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffffffefff,-6,600,sd,0)

# rs2_val == -16385, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval:-9; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffffffbfff,-9,608,sd,0)

# rs2_val == -32769, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval:64; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffffff7fff,64,616,sd,0)

# rs2_val == -65537, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval:2047; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffffeffff,2047,624,sd,0)

# rs2_val == -131073, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval:0; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffffdffff,0,632,sd,0)

# rs2_val == -262145, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval:6; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffffbffff,6,640,sd,0)

# rs2_val == -524289, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval:-7; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffff7ffff,-7,648,sd,0)

# rs2_val == -1048577, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval:-65; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffffefffff,-65,656,sd,0)

# rs2_val == -2097153, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval:-6; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffffdfffff,-6,664,sd,0)

# rs2_val == -4194305, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval:-17; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffffbfffff,-17,672,sd,0)

# rs2_val == -16777217, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval:2; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffeffffff,2,680,sd,0)

# rs2_val == -33554433, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval:-5; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffdffffff,-5,688,sd,0)

# rs2_val == -67108865, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval:-2048; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffffbffffff,-2048,696,sd,0)

# rs2_val == -134217729, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval:-4; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffff7ffffff,-4,704,sd,0)

# rs2_val == -268435457, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval:0; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffefffffff,0,712,sd,0)

# rs2_val == -536870913, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval:64; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffdfffffff,64,720,sd,0)

# rs2_val == -1073741825, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval:-129; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffffbfffffff,-129,728,sd,0)

# rs2_val == -2147483649, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval:4; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffff7fffffff,4,736,sd,0)

# rs2_val == -4294967297, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval:8; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffeffffffff,8,744,sd,0)

# rs2_val == -8589934593, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval:-1025; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffdffffffff,-1025,752,sd,0)

# rs2_val == -17179869185, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval:256; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffffbffffffff,256,760,sd,0)

# rs2_val == -34359738369, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval:-65; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffff7ffffffff,-65,768,sd,0)

# rs2_val == -68719476737, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval:-7; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffefffffffff,-7,776,sd,0)

# rs2_val == -137438953473, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval:-4; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffdfffffffff,-4,784,sd,0)

# rs2_val == -274877906945, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval:32; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffffbfffffffff,32,792,sd,0)

# rs2_val == -549755813889, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval:-33; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffff7fffffffff,-33,800,sd,0)

# rs2_val == -1099511627777, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval:128; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffeffffffffff,128,808,sd,0)

# rs2_val == -2199023255553, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval:6; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffdffffffffff,6,816,sd,0)

# rs2_val == -4398046511105, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval:-129; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffffbffffffffff,-129,824,sd,0)

# rs2_val == -8796093022209, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval:-4; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffff7ffffffffff,-4,832,sd,0)

# rs2_val == -17592186044417, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval:-257; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffefffffffffff,-257,840,sd,0)

# rs2_val == -35184372088833, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval:-6; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffdfffffffffff,-6,848,sd,0)

# rs2_val == -70368744177665, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval:-5; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffffbfffffffffff,-5,856,sd,0)

# rs2_val == -140737488355329, 
# opcode: sd; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval:1; align:0
TEST_STORE(x3,x8,0,x10,x11,0xffff7fffffffffff,1,864,sd,0)

# rs2_val == -281474976710657, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval:-9; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffeffffffffffff,-9,872,sd,0)

# rs2_val == -562949953421313, 
# opcode: sd; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval:5; align:0
TEST_STORE(x3,x8,0,x10,x11,0xfffdffffffffffff,5,880,sd,0)

# rs2_val == 1048576, 
# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000100000; immval:-8; align:0
TEST_STORE(x3,x8,0,x10,x11,0x0000000000100000,-8,888,sd,0)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 112*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
