
#This assembly file tests the sw instruction of the RISC-V I extension for the sw-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sw-align)

RVTEST_SIGBASE( x14,signature_x14_1)

# rs1 != rs2, rs1==x12, rs2==x3, ea_align == 0 and (imm_val % 4) == 0, rs2_val == -32769, imm_val < 0
# opcode: sw; op1:x12; op2:x3; op2val:0xffffffffffff7fff; immval:-4; align:0
TEST_STORE(x14,x11,0,x12,x3,0xffffffffffff7fff,-4,0,sw,0)

# rs1==x13, rs2==x23, ea_align == 0 and (imm_val % 4) == 1, rs2_val == -513, imm_val > 0
# opcode: sw; op1:x13; op2:x23; op2val:0xfffffffffffffdff; immval:1365; align:0
TEST_STORE(x14,x11,0,x13,x23,0xfffffffffffffdff,1365,8,sw,0)

# rs1==x28, rs2==x2, ea_align == 0 and (imm_val % 4) == 2, rs2_val == 68719476736
# opcode: sw; op1:x28; op2:x2; op2val:0x0000001000000000; immval:-6; align:0
TEST_STORE(x14,x11,0,x28,x2,0x0000001000000000,-6,16,sw,0)

# rs1==x4, rs2==x27, ea_align == 0 and (imm_val % 4) == 3, rs2_val == 2305843009213693952
# opcode: sw; op1:x4; op2:x27; op2val:0x2000000000000000; immval:-17; align:0
TEST_STORE(x14,x11,0,x4,x27,0x2000000000000000,-17,24,sw,0)

# rs1==x6, rs2==x1, imm_val == 0, rs2_val == -262145
# opcode: sw; op1:x6; op2:x1; op2val:0xfffffffffffbffff; immval:0; align:0
TEST_STORE(x14,x11,0,x6,x1,0xfffffffffffbffff,0,32,sw,0)

# rs1==x22, rs2==x26, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode: sw; op1:x22; op2:x26; op2val:0x8000000000000000; immval:256; align:0
TEST_STORE(x14,x11,0,x22,x26,0x8000000000000000,256,40,sw,0)

# rs1==x19, rs2==x31, rs2_val == 0, 
# opcode: sw; op1:x19; op2:x31; op2val:0x0000000000000000; immval:-10; align:0
TEST_STORE(x14,x11,0,x19,x31,0x0000000000000000,-10,48,sw,0)

# rs1==x21, rs2==x16, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807
# opcode: sw; op1:x21; op2:x16; op2val:0x7fffffffffffffff; immval:1023; align:0
TEST_STORE(x14,x11,0,x21,x16,0x7fffffffffffffff,1023,56,sw,0)

# rs1==x7, rs2==x20, rs2_val == 1, 
# opcode: sw; op1:x7; op2:x20; op2val:0x0000000000000001; immval:256; align:0
TEST_STORE(x14,x11,0,x7,x20,0x0000000000000001,256,64,sw,0)

# rs1==x10, rs2==x8, rs2_val == 2, 
# opcode: sw; op1:x10; op2:x8; op2val:0x0000000000000002; immval:-513; align:0
TEST_STORE(x14,x11,0,x10,x8,0x0000000000000002,-513,72,sw,0)

# rs1==x24, rs2==x9, rs2_val == 4, 
# opcode: sw; op1:x24; op2:x9; op2val:0x0000000000000004; immval:-1366; align:0
TEST_STORE(x14,x11,0,x24,x9,0x0000000000000004,-1366,80,sw,0)

# rs1==x26, rs2==x13, rs2_val == 8, 
# opcode: sw; op1:x26; op2:x13; op2val:0x0000000000000008; immval:256; align:0
TEST_STORE(x14,x11,0,x26,x13,0x0000000000000008,256,88,sw,0)

# rs1==x1, rs2==x4, rs2_val == 16, 
# opcode: sw; op1:x1; op2:x4; op2val:0x0000000000000010; immval:1; align:0
TEST_STORE(x14,x11,0,x1,x4,0x0000000000000010,1,96,sw,0)

# rs1==x2, rs2==x18, rs2_val == 32, 
# opcode: sw; op1:x2; op2:x18; op2val:0x0000000000000020; immval:-4; align:0
TEST_STORE(x14,x11,0,x2,x18,0x0000000000000020,-4,104,sw,0)

# rs1==x25, rs2==x5, rs2_val == 64, 
# opcode: sw; op1:x25; op2:x5; op2val:0x0000000000000040; immval:-1; align:0
TEST_STORE(x14,x11,0,x25,x5,0x0000000000000040,-1,112,sw,0)

# rs1==x30, rs2==x29, rs2_val == 128, 
# opcode: sw; op1:x30; op2:x29; op2val:0x0000000000000080; immval:-5; align:0
TEST_STORE(x14,x11,0,x30,x29,0x0000000000000080,-5,120,sw,0)

# rs1==x11, rs2==x17, rs2_val == 256, 
# opcode: sw; op1:x11; op2:x17; op2val:0x0000000000000100; immval:2; align:0
TEST_STORE(x14,x2,0,x11,x17,0x0000000000000100,2,128,sw,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x16, rs2==x0, rs2_val == 512, 
# opcode: sw; op1:x16; op2:x0; op2val:0x0000000000000200; immval:-65; align:0
TEST_STORE(x1,x2,0,x16,x0,0x0000000000000200,-65,0,sw,0)

# rs1==x15, rs2==x12, rs2_val == 1024, 
# opcode: sw; op1:x15; op2:x12; op2val:0x0000000000000400; immval:-1; align:0
TEST_STORE(x1,x2,0,x15,x12,0x0000000000000400,-1,8,sw,0)

# rs1==x5, rs2==x11, rs2_val == 2048, 
# opcode: sw; op1:x5; op2:x11; op2val:0x0000000000000800; immval:-4; align:0
TEST_STORE(x1,x2,0,x5,x11,0x0000000000000800,-4,16,sw,0)

# rs1==x9, rs2==x22, rs2_val == 4096, 
# opcode: sw; op1:x9; op2:x22; op2val:0x0000000000001000; immval:256; align:0
TEST_STORE(x1,x2,0,x9,x22,0x0000000000001000,256,24,sw,0)

# rs1==x31, rs2==x21, rs2_val == 8192, 
# opcode: sw; op1:x31; op2:x21; op2val:0x0000000000002000; immval:4; align:0
TEST_STORE(x1,x2,0,x31,x21,0x0000000000002000,4,32,sw,0)

# rs1==x8, rs2==x15, rs2_val == 16384, 
# opcode: sw; op1:x8; op2:x15; op2val:0x0000000000004000; immval:3; align:0
TEST_STORE(x1,x2,0,x8,x15,0x0000000000004000,3,40,sw,0)

# rs1==x17, rs2==x24, rs2_val == 32768, 
# opcode: sw; op1:x17; op2:x24; op2val:0x0000000000008000; immval:2047; align:0
TEST_STORE(x1,x2,0,x17,x24,0x0000000000008000,2047,48,sw,0)

# rs1==x18, rs2==x10, rs2_val == 65536, 
# opcode: sw; op1:x18; op2:x10; op2val:0x0000000000010000; immval:512; align:0
TEST_STORE(x1,x2,0,x18,x10,0x0000000000010000,512,56,sw,0)

# rs1==x29, rs2==x7, rs2_val == 131072, 
# opcode: sw; op1:x29; op2:x7; op2val:0x0000000000020000; immval:-5; align:0
TEST_STORE(x1,x2,0,x29,x7,0x0000000000020000,-5,64,sw,0)

# rs1==x23, rs2==x6, rs2_val == 262144, 
# opcode: sw; op1:x23; op2:x6; op2val:0x0000000000040000; immval:-4; align:0
TEST_STORE(x1,x2,0,x23,x6,0x0000000000040000,-4,72,sw,0)

# rs1==x27, rs2==x19, rs2_val == 524288, 
# opcode: sw; op1:x27; op2:x19; op2val:0x0000000000080000; immval:128; align:0
TEST_STORE(x1,x2,0,x27,x19,0x0000000000080000,128,80,sw,0)

# rs1==x3, rs2==x25, rs2_val == 1048576, 
# opcode: sw; op1:x3; op2:x25; op2val:0x0000000000100000; immval:3; align:0
TEST_STORE(x1,x2,0,x3,x25,0x0000000000100000,3,88,sw,0)

# rs1==x14, rs2==x30, rs2_val == 2097152, 
# opcode: sw; op1:x14; op2:x30; op2val:0x0000000000200000; immval:-10; align:0
TEST_STORE(x1,x2,0,x14,x30,0x0000000000200000,-10,96,sw,0)

# rs1==x20, rs2==x28, rs2_val == 4194304, 
# opcode: sw; op1:x20; op2:x28; op2val:0x0000000000400000; immval:4; align:0
TEST_STORE(x1,x2,0,x20,x28,0x0000000000400000,4,104,sw,0)

# rs2==x14, rs2_val == 8388608, 
# opcode: sw; op1:x28; op2:x14; op2val:0x0000000000800000; immval:-9; align:0
TEST_STORE(x1,x2,0,x28,x14,0x0000000000800000,-9,112,sw,0)

# rs2_val == 16777216, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000001000000; immval:-513; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000001000000,-513,120,sw,0)

# rs2_val == 33554432, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000002000000; immval:1; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000002000000,1,128,sw,0)

# rs2_val == 67108864, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000004000000; immval:7; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000004000000,7,136,sw,0)

# rs2_val == 134217728, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000008000000; immval:256; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000008000000,256,144,sw,0)

# rs2_val == 268435456, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000010000000; immval:-1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000010000000,-1024,152,sw,0)

# rs2_val == 536870912, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000020000000; immval:-1025; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000020000000,-1025,160,sw,0)

# rs2_val == 1073741824, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000040000000; immval:8; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000040000000,8,168,sw,0)

# rs2_val == 2147483648, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000080000000; immval:-2048; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000080000000,-2048,176,sw,0)

# rs2_val == 4294967296, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000100000000; immval:1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000100000000,1024,184,sw,0)

# rs2_val == 8589934592, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000200000000; immval:1023; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000200000000,1023,192,sw,0)

# rs2_val == 17179869184, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000400000000; immval:2047; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000400000000,2047,200,sw,0)

# rs2_val == 34359738368, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000800000000; immval:-1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000800000000,-1024,208,sw,0)

# rs2_val == 137438953472, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000002000000000; immval:6; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000002000000000,6,216,sw,0)

# rs2_val == 274877906944, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000004000000000; immval:512; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000004000000000,512,224,sw,0)

# rs2_val == 549755813888, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000008000000000; immval:2047; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000008000000000,2047,232,sw,0)

# rs2_val == 1099511627776, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000010000000000; immval:3; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000010000000000,3,240,sw,0)

# rs2_val == 2199023255552, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000020000000000; immval:-6; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000020000000000,-6,248,sw,0)

# rs2_val == 4398046511104, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000040000000000; immval:7; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000040000000000,7,256,sw,0)

# rs2_val == 8796093022208, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000080000000000; immval:-9; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000080000000000,-9,264,sw,0)

# rs2_val == 17592186044416, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000100000000000; immval:1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000100000000000,1024,272,sw,0)

# rs2_val == 35184372088832, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000200000000000; immval:2; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000200000000000,2,280,sw,0)

# rs2_val == 70368744177664, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000400000000000; immval:-4; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000400000000000,-4,288,sw,0)

# rs2_val == 140737488355328, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000800000000000; immval:-1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000800000000000,-1024,296,sw,0)

# rs2_val == 281474976710656, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0001000000000000; immval:1365; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0001000000000000,1365,304,sw,0)

# rs2_val == 562949953421312, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0002000000000000; immval:-513; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0002000000000000,-513,312,sw,0)

# rs2_val == 1125899906842624, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0004000000000000; immval:5; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0004000000000000,5,320,sw,0)

# rs2_val == 2251799813685248, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0008000000000000; immval:-6; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0008000000000000,-6,328,sw,0)

# rs2_val == 4503599627370496, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0010000000000000; immval:9; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0010000000000000,9,336,sw,0)

# rs2_val == 9007199254740992, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0020000000000000; immval:7; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0020000000000000,7,344,sw,0)

# rs2_val == 18014398509481984, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0040000000000000; immval:-1366; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0040000000000000,-1366,352,sw,0)

# rs2_val == 36028797018963968, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0080000000000000; immval:-5; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0080000000000000,-5,360,sw,0)

# rs2_val == 72057594037927936, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0100000000000000; immval:0; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0100000000000000,0,368,sw,0)

# rs2_val == 144115188075855872, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0200000000000000; immval:8; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0200000000000000,8,376,sw,0)

# rs2_val == 288230376151711744, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0400000000000000; immval:-17; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0400000000000000,-17,384,sw,0)

# rs2_val == 576460752303423488, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0800000000000000; immval:0; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0800000000000000,0,392,sw,0)

# rs2_val == 1152921504606846976, 
# opcode: sw; op1:x10; op2:x11; op2val:0x1000000000000000; immval:6; align:0
TEST_STORE(x1,x2,0,x10,x11,0x1000000000000000,6,400,sw,0)

# rs2_val == -18014398509481985, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval:-10; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffbfffffffffffff,-10,408,sw,0)

# rs2_val == -36028797018963969, 
# opcode: sw; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval:-6; align:0
TEST_STORE(x1,x2,0,x10,x11,0xff7fffffffffffff,-6,416,sw,0)

# rs2_val == -72057594037927937, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval:-8; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfeffffffffffffff,-8,424,sw,0)

# rs2_val == -144115188075855873, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval:-129; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfdffffffffffffff,-129,432,sw,0)

# rs2_val == -288230376151711745, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval:-1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfbffffffffffffff,-1024,440,sw,0)

# rs2_val == -576460752303423489, 
# opcode: sw; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval:-33; align:0
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffffffffffff,-33,448,sw,0)

# rs2_val == -1152921504606846977, 
# opcode: sw; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval:-8; align:0
TEST_STORE(x1,x2,0,x10,x11,0xefffffffffffffff,-8,456,sw,0)

# rs2_val == -2305843009213693953, 
# opcode: sw; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval:-2048; align:0
TEST_STORE(x1,x2,0,x10,x11,0xdfffffffffffffff,-2048,464,sw,0)

# rs2_val == -4611686018427387905, 
# opcode: sw; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval:-1; align:0
TEST_STORE(x1,x2,0,x10,x11,0xbfffffffffffffff,-1,472,sw,0)

# rs2_val == 6148914691236517205, 
# opcode: sw; op1:x10; op2:x11; op2val:0x5555555555555555; immval:-6; align:0
TEST_STORE(x1,x2,0,x10,x11,0x5555555555555555,-6,480,sw,0)

# rs2_val == -6148914691236517206, 
# opcode: sw; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval:-10; align:0
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaaaaaaaaaa,-10,488,sw,0)

# rs2_val == 4611686018427387904, 
# opcode: sw; op1:x10; op2:x11; op2val:0x4000000000000000; immval:-5; align:0
TEST_STORE(x1,x2,0,x10,x11,0x4000000000000000,-5,496,sw,0)

# rs2_val == -2, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval:1023; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffe,1023,504,sw,0)

# rs2_val == -3, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval:7; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffd,7,512,sw,0)

# rs2_val == -5, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval:2047; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffb,2047,520,sw,0)

# rs2_val == -9, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval:-3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffff7,-3,528,sw,0)

# rs2_val == -17, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval:1; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffef,1,536,sw,0)

# rs2_val == -33, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval:-513; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffdf,-513,544,sw,0)

# rs2_val == -65, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval:-4; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffbf,-4,552,sw,0)

# rs2_val == -129, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval:-33; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffff7f,-33,560,sw,0)

# rs2_val == -257, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval:3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffeff,3,568,sw,0)

# rs2_val == -1025, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval:-1025; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffbff,-1025,576,sw,0)

# rs2_val == -2049, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval:9; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffff7ff,9,584,sw,0)

# rs2_val == -4097, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval:128; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffefff,128,592,sw,0)

# rs2_val == -8193, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval:-257; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffdfff,-257,600,sw,0)

# rs2_val == -16385, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval:-2048; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffbfff,-2048,608,sw,0)

# rs2_val == -65537, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval:-3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffeffff,-3,616,sw,0)

# rs2_val == -131073, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval:-5; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffdffff,-5,624,sw,0)

# rs2_val == -524289, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval:-3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffff7ffff,-3,632,sw,0)

# rs2_val == -1048577, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval:0; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffefffff,0,640,sw,0)

# rs2_val == -2097153, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval:5; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffdfffff,5,648,sw,0)

# rs2_val == -4194305, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval:3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffbfffff,3,656,sw,0)

# rs2_val == -8388609, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval:1023; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffff7fffff,1023,664,sw,0)

# rs2_val == -16777217, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval:-3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffeffffff,-3,672,sw,0)

# rs2_val == -33554433, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval:-17; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffdffffff,-17,680,sw,0)

# rs2_val == -67108865, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval:-10; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffbffffff,-10,688,sw,0)

# rs2_val == -134217729, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval:-1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffff7ffffff,-1024,696,sw,0)

# rs2_val == -268435457, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval:-2048; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffefffffff,-2048,704,sw,0)

# rs2_val == -536870913, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval:-129; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffdfffffff,-129,712,sw,0)

# rs2_val == -1073741825, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval:-513; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffbfffffff,-513,720,sw,0)

# rs2_val == -2147483649, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval:2; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffff7fffffff,2,728,sw,0)

# rs2_val == -4294967297, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval:128; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffeffffffff,128,736,sw,0)

# rs2_val == -8589934593, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval:3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffdffffffff,3,744,sw,0)

# rs2_val == -17179869185, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval:-1366; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffbffffffff,-1366,752,sw,0)

# rs2_val == -34359738369, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval:8; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7ffffffff,8,760,sw,0)

# rs2_val == -68719476737, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval:32; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffefffffffff,32,768,sw,0)

# rs2_val == -137438953473, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval:128; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffdfffffffff,128,776,sw,0)

# rs2_val == -274877906945, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval:-17; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffbfffffffff,-17,784,sw,0)

# rs2_val == -549755813889, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval:2; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffff7fffffffff,2,792,sw,0)

# rs2_val == -1099511627777, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval:7; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffeffffffffff,7,800,sw,0)

# rs2_val == -2199023255553, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval:-1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffdffffffffff,-1024,808,sw,0)

# rs2_val == -4398046511105, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval:1365; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffbffffffffff,1365,816,sw,0)

# rs2_val == -8796093022209, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval:-3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ffffffffff,-3,824,sw,0)

# rs2_val == -17592186044417, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval:-257; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffefffffffffff,-257,832,sw,0)

# rs2_val == -35184372088833, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval:-2; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffdfffffffffff,-2,840,sw,0)

# rs2_val == -70368744177665, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval:-10; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffbfffffffffff,-10,848,sw,0)

# rs2_val == -140737488355329, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval:2047; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffff7fffffffffff,2047,856,sw,0)

# rs2_val == -281474976710657, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval:5; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffeffffffffffff,5,864,sw,0)

# rs2_val == -562949953421313, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval:1023; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffdffffffffffff,1023,872,sw,0)

# rs2_val == -1125899906842625, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval:-4; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffbffffffffffff,-4,880,sw,0)

# rs2_val == -2251799813685249, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval:-7; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffffffffffff,-7,888,sw,0)

# rs2_val == -4503599627370497, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval:1; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffefffffffffffff,1,896,sw,0)

# rs2_val == -9007199254740993, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval:128; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffdfffffffffffff,128,904,sw,0)

# rs2_val == 512, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000000000200; immval:-65; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000200,-65,912,sw,0)
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

signature_x14_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x14_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 115*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
