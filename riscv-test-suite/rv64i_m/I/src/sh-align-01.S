
#This assembly file tests the sh instruction of the RISC-V I extension for the sh-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sh-align)

RVTEST_SIGBASE( x5,signature_x5_1)

# rs1 != rs2, rs1==x16, rs2==x22, ea_align == 0 and (imm_val % 4) == 0, rs2_val == -9, imm_val == 0
# opcode: sh; op1:x16; op2:x22; op2val:0xfffffffffffffff7; immval:0; align:0
TEST_STORE(x5,x12,0,x16,x22,0xfffffffffffffff7,0,0,sh,0)

# rs1==x11, rs2==x26, ea_align == 0 and (imm_val % 4) == 1, imm_val > 0, rs2_val == 72057594037927936
# opcode: sh; op1:x11; op2:x26; op2val:0x0100000000000000; immval:1; align:0
TEST_STORE(x5,x12,0,x11,x26,0x0100000000000000,1,8,sh,0)

# rs1==x6, rs2==x11, ea_align == 0 and (imm_val % 4) == 2, imm_val < 0, rs2_val == 35184372088832
# opcode: sh; op1:x6; op2:x11; op2val:0x0000200000000000; immval:-1366; align:0
TEST_STORE(x5,x12,0,x6,x11,0x0000200000000000,-1366,16,sh,0)

# rs1==x7, rs2==x13, ea_align == 0 and (imm_val % 4) == 3, rs2_val == -513
# opcode: sh; op1:x7; op2:x13; op2val:0xfffffffffffffdff; immval:-1025; align:0
TEST_STORE(x5,x12,0,x7,x13,0xfffffffffffffdff,-1025,24,sh,0)

# rs1==x8, rs2==x21, ea_align == 2 and (imm_val % 4) == 0, rs2_val == 134217728
# opcode: sh; op1:x8; op2:x21; op2val:0x0000000008000000; immval:512; align:2
TEST_STORE(x5,x12,0,x8,x21,0x0000000008000000,512,32,sh,2)

# rs1==x1, rs2==x28, ea_align == 2 and (imm_val % 4) == 1, rs2_val == 4
# opcode: sh; op1:x1; op2:x28; op2val:0x0000000000000004; immval:-7; align:2
TEST_STORE(x5,x12,0,x1,x28,0x0000000000000004,-7,40,sh,2)

# rs1==x9, rs2==x17, ea_align == 2 and (imm_val % 4) == 2, rs2_val == 140737488355328
# opcode: sh; op1:x9; op2:x17; op2val:0x0000800000000000; immval:-10; align:2
TEST_STORE(x5,x12,0,x9,x17,0x0000800000000000,-10,48,sh,2)

# rs1==x29, rs2==x20, ea_align == 2 and (imm_val % 4) == 3, rs2_val == -16777217
# opcode: sh; op1:x29; op2:x20; op2val:0xfffffffffeffffff; immval:3; align:2
TEST_STORE(x5,x12,0,x29,x20,0xfffffffffeffffff,3,56,sh,2)

# rs1==x24, rs2==x0, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode: sh; op1:x24; op2:x0; op2val:0x8000000000000000; immval:-257; align:0
TEST_STORE(x5,x12,0,x24,x0,0x8000000000000000,-257,64,sh,0)

# rs1==x14, rs2==x7, rs2_val == 0, 
# opcode: sh; op1:x14; op2:x7; op2val:0x0000000000000000; immval:9; align:0
TEST_STORE(x5,x12,0,x14,x7,0x0000000000000000,9,72,sh,0)

# rs1==x30, rs2==x8, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807
# opcode: sh; op1:x30; op2:x8; op2val:0x7fffffffffffffff; immval:-1; align:0
TEST_STORE(x5,x12,0,x30,x8,0x7fffffffffffffff,-1,80,sh,0)

# rs1==x3, rs2==x25, rs2_val == 1, 
# opcode: sh; op1:x3; op2:x25; op2val:0x0000000000000001; immval:512; align:0
TEST_STORE(x5,x12,0,x3,x25,0x0000000000000001,512,88,sh,0)

# rs1==x18, rs2==x3, rs2_val == 2, 
# opcode: sh; op1:x18; op2:x3; op2val:0x0000000000000002; immval:-1025; align:0
TEST_STORE(x5,x12,0,x18,x3,0x0000000000000002,-1025,96,sh,0)

# rs1==x17, rs2==x4, rs2_val == 8, 
# opcode: sh; op1:x17; op2:x4; op2val:0x0000000000000008; immval:4; align:0
TEST_STORE(x5,x12,0,x17,x4,0x0000000000000008,4,104,sh,0)

# rs1==x22, rs2==x24, rs2_val == 16, 
# opcode: sh; op1:x22; op2:x24; op2val:0x0000000000000010; immval:8; align:0
TEST_STORE(x5,x12,0,x22,x24,0x0000000000000010,8,112,sh,0)

# rs1==x19, rs2==x16, rs2_val == 32, 
# opcode: sh; op1:x19; op2:x16; op2val:0x0000000000000020; immval:-2; align:0
TEST_STORE(x5,x12,0,x19,x16,0x0000000000000020,-2,120,sh,0)

# rs1==x31, rs2==x10, rs2_val == 64, 
# opcode: sh; op1:x31; op2:x10; op2val:0x0000000000000040; immval:4; align:0
TEST_STORE(x5,x12,0,x31,x10,0x0000000000000040,4,128,sh,0)

# rs1==x25, rs2==x2, rs2_val == 128, 
# opcode: sh; op1:x25; op2:x2; op2val:0x0000000000000080; immval:-257; align:0
TEST_STORE(x5,x12,0,x25,x2,0x0000000000000080,-257,136,sh,0)

# rs1==x21, rs2==x23, rs2_val == 256, 
# opcode: sh; op1:x21; op2:x23; op2val:0x0000000000000100; immval:-7; align:0
TEST_STORE(x5,x12,0,x21,x23,0x0000000000000100,-7,144,sh,0)

# rs1==x2, rs2==x6, rs2_val == 512, 
# opcode: sh; op1:x2; op2:x6; op2val:0x0000000000000200; immval:512; align:0
TEST_STORE(x5,x3,0,x2,x6,0x0000000000000200,512,152,sh,0)

# rs1==x23, rs2==x29, rs2_val == 1024, 
# opcode: sh; op1:x23; op2:x29; op2val:0x0000000000000400; immval:1; align:0
TEST_STORE(x5,x3,0,x23,x29,0x0000000000000400,1,160,sh,0)

# rs1==x26, rs2==x19, rs2_val == 2048, 
# opcode: sh; op1:x26; op2:x19; op2val:0x0000000000000800; immval:-6; align:0
TEST_STORE(x5,x3,0,x26,x19,0x0000000000000800,-6,168,sh,0)

# rs1==x28, rs2==x14, rs2_val == 4096, 
# opcode: sh; op1:x28; op2:x14; op2val:0x0000000000001000; immval:1024; align:0
TEST_STORE(x5,x3,0,x28,x14,0x0000000000001000,1024,176,sh,0)

# rs1==x13, rs2==x15, rs2_val == 8192, 
# opcode: sh; op1:x13; op2:x15; op2val:0x0000000000002000; immval:-1024; align:0
TEST_STORE(x5,x3,0,x13,x15,0x0000000000002000,-1024,184,sh,0)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x12, rs2==x1, rs2_val == 16384, 
# opcode: sh; op1:x12; op2:x1; op2val:0x0000000000004000; immval:5; align:0
TEST_STORE(x2,x3,0,x12,x1,0x0000000000004000,5,0,sh,0)

# rs1==x5, rs2==x12, rs2_val == 32768, 
# opcode: sh; op1:x5; op2:x12; op2val:0x0000000000008000; immval:-1024; align:0
TEST_STORE(x2,x3,0,x5,x12,0x0000000000008000,-1024,8,sh,0)

# rs1==x20, rs2==x31, rs2_val == 65536, 
# opcode: sh; op1:x20; op2:x31; op2val:0x0000000000010000; immval:-1; align:0
TEST_STORE(x2,x3,0,x20,x31,0x0000000000010000,-1,16,sh,0)

# rs1==x27, rs2==x5, rs2_val == 131072, 
# opcode: sh; op1:x27; op2:x5; op2val:0x0000000000020000; immval:9; align:0
TEST_STORE(x2,x3,0,x27,x5,0x0000000000020000,9,24,sh,0)

# rs1==x10, rs2==x27, rs2_val == 262144, 
# opcode: sh; op1:x10; op2:x27; op2val:0x0000000000040000; immval:-1; align:0
TEST_STORE(x2,x3,0,x10,x27,0x0000000000040000,-1,32,sh,0)

# rs1==x15, rs2==x18, rs2_val == 524288, 
# opcode: sh; op1:x15; op2:x18; op2val:0x0000000000080000; immval:3; align:0
TEST_STORE(x2,x3,0,x15,x18,0x0000000000080000,3,40,sh,0)

# rs1==x4, rs2==x30, rs2_val == 1048576, 
# opcode: sh; op1:x4; op2:x30; op2val:0x0000000000100000; immval:-5; align:0
TEST_STORE(x2,x3,0,x4,x30,0x0000000000100000,-5,48,sh,0)

# rs2==x9, rs2_val == 2097152, 
# opcode: sh; op1:x21; op2:x9; op2val:0x0000000000200000; immval:512; align:0
TEST_STORE(x2,x3,0,x21,x9,0x0000000000200000,512,56,sh,0)

# rs2_val == 4194304, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000000400000; immval:-513; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000400000,-513,64,sh,0)

# rs2_val == 8388608, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000000800000; immval:32; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000800000,32,72,sh,0)

# rs2_val == 16777216, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000001000000; immval:3; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000001000000,3,80,sh,0)

# rs2_val == 33554432, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000002000000; immval:-9; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000002000000,-9,88,sh,0)

# rs2_val == 67108864, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000004000000; immval:7; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000004000000,7,96,sh,0)

# rs2_val == 268435456, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000010000000; immval:1023; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000010000000,1023,104,sh,0)

# rs2_val == 536870912, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000020000000; immval:256; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000020000000,256,112,sh,0)

# rs2_val == 1073741824, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000040000000; immval:4; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000040000000,4,120,sh,0)

# rs2_val == 2147483648, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000080000000; immval:-1; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000080000000,-1,128,sh,0)

# rs2_val == 4294967296, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000100000000; immval:1023; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000100000000,1023,136,sh,0)

# rs2_val == 8589934592, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000200000000; immval:-2; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000200000000,-2,144,sh,0)

# rs2_val == 17179869184, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000400000000; immval:-129; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000400000000,-129,152,sh,0)

# rs2_val == 34359738368, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000000800000000; immval:-129; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000800000000,-129,160,sh,0)

# rs2_val == 68719476736, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000001000000000; immval:-3; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000001000000000,-3,168,sh,0)

# rs2_val == 137438953472, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000002000000000; immval:-5; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000002000000000,-5,176,sh,0)

# rs2_val == 274877906944, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000004000000000; immval:-513; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000004000000000,-513,184,sh,0)

# rs2_val == 549755813888, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000008000000000; immval:64; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000008000000000,64,192,sh,0)

# rs2_val == 1099511627776, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000010000000000; immval:-4; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000010000000000,-4,200,sh,0)

# rs2_val == 2199023255552, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000020000000000; immval:1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000020000000000,1024,208,sh,0)

# rs2_val == 4398046511104, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000040000000000; immval:0; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000040000000000,0,216,sh,0)

# rs2_val == 8796093022208, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000080000000000; immval:16; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000080000000000,16,224,sh,0)

# rs2_val == 17592186044416, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000100000000000; immval:2; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000100000000000,2,232,sh,0)

# rs2_val == 70368744177664, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0000400000000000; immval:1365; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000400000000000,1365,240,sh,0)

# rs2_val == 281474976710656, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0001000000000000; immval:7; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0001000000000000,7,248,sh,0)

# rs2_val == 562949953421312, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0002000000000000; immval:-10; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0002000000000000,-10,256,sh,0)

# rs2_val == 1125899906842624, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0004000000000000; immval:-33; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0004000000000000,-33,264,sh,0)

# rs2_val == 2251799813685248, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0008000000000000; immval:6; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0008000000000000,6,272,sh,0)

# rs2_val == 4503599627370496, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0010000000000000; immval:-513; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0010000000000000,-513,280,sh,0)

# rs2_val == 9007199254740992, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0020000000000000; immval:-1; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0020000000000000,-1,288,sh,0)

# rs2_val == 18014398509481984, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0040000000000000; immval:6; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0040000000000000,6,296,sh,0)

# rs2_val == 36028797018963968, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0080000000000000; immval:5; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0080000000000000,5,304,sh,0)

# rs2_val == 144115188075855872, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0200000000000000; immval:-2; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0200000000000000,-2,312,sh,0)

# rs2_val == 288230376151711744, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0400000000000000; immval:64; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0400000000000000,64,320,sh,0)

# rs2_val == 576460752303423488, 
# opcode: sh; op1:x10; op2:x11; op2val:0x0800000000000000; immval:64; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0800000000000000,64,328,sh,0)

# rs2_val == 1152921504606846976, 
# opcode: sh; op1:x10; op2:x11; op2val:0x1000000000000000; immval:-5; align:0
TEST_STORE(x2,x3,0,x10,x11,0x1000000000000000,-5,336,sh,0)

# rs2_val == 2305843009213693952, 
# opcode: sh; op1:x10; op2:x11; op2val:0x2000000000000000; immval:-1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0x2000000000000000,-1024,344,sh,0)

# rs2_val == -1125899906842625, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval:0; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffbffffffffffff,0,352,sh,0)

# rs2_val == -2251799813685249, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval:-10; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfff7ffffffffffff,-10,360,sh,0)

# rs2_val == -4503599627370497, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval:-33; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffefffffffffffff,-33,368,sh,0)

# rs2_val == -9007199254740993, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval:-17; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffdfffffffffffff,-17,376,sh,0)

# rs2_val == -18014398509481985, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval:-1; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffbfffffffffffff,-1,384,sh,0)

# rs2_val == -36028797018963969, 
# opcode: sh; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval:512; align:0
TEST_STORE(x2,x3,0,x10,x11,0xff7fffffffffffff,512,392,sh,0)

# rs2_val == -72057594037927937, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval:-9; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfeffffffffffffff,-9,400,sh,0)

# rs2_val == -144115188075855873, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval:1; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfdffffffffffffff,1,408,sh,0)

# rs2_val == -288230376151711745, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval:-1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfbffffffffffffff,-1024,416,sh,0)

# rs2_val == -576460752303423489, 
# opcode: sh; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval:7; align:0
TEST_STORE(x2,x3,0,x10,x11,0xf7ffffffffffffff,7,424,sh,0)

# rs2_val == -1152921504606846977, 
# opcode: sh; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval:32; align:0
TEST_STORE(x2,x3,0,x10,x11,0xefffffffffffffff,32,432,sh,0)

# rs2_val == -2305843009213693953, 
# opcode: sh; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval:9; align:0
TEST_STORE(x2,x3,0,x10,x11,0xdfffffffffffffff,9,440,sh,0)

# rs2_val == -4611686018427387905, 
# opcode: sh; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval:7; align:0
TEST_STORE(x2,x3,0,x10,x11,0xbfffffffffffffff,7,448,sh,0)

# rs2_val == 6148914691236517205, 
# opcode: sh; op1:x10; op2:x11; op2val:0x5555555555555555; immval:9; align:0
TEST_STORE(x2,x3,0,x10,x11,0x5555555555555555,9,456,sh,0)

# rs2_val == -6148914691236517206, 
# opcode: sh; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval:64; align:0
TEST_STORE(x2,x3,0,x10,x11,0xaaaaaaaaaaaaaaaa,64,464,sh,0)

# rs2_val == 4611686018427387904, 
# opcode: sh; op1:x10; op2:x11; op2val:0x4000000000000000; immval:-1366; align:0
TEST_STORE(x2,x3,0,x10,x11,0x4000000000000000,-1366,472,sh,0)

# rs2_val == -2, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval:5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffffe,5,480,sh,0)

# rs2_val == -3, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval:64; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffffd,64,488,sh,0)

# rs2_val == -5, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval:1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffffb,1024,496,sh,0)

# rs2_val == -17, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval:16; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffffef,16,504,sh,0)

# rs2_val == -33, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval:-1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffffdf,-1024,512,sh,0)

# rs2_val == -65, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval:-257; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffffbf,-257,520,sh,0)

# rs2_val == -129, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval:16; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffff7f,16,528,sh,0)

# rs2_val == -257, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval:1; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffeff,1,536,sh,0)

# rs2_val == -1025, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval:32; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffbff,32,544,sh,0)

# rs2_val == -2049, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval:1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffff7ff,1024,552,sh,0)

# rs2_val == -4097, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval:2; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffefff,2,560,sh,0)

# rs2_val == -8193, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval:3; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffdfff,3,568,sh,0)

# rs2_val == -16385, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval:-5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffbfff,-5,576,sh,0)

# rs2_val == -32769, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval:9; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffff7fff,9,584,sh,0)

# rs2_val == -65537, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval:-1366; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffeffff,-1366,592,sh,0)

# rs2_val == -131073, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval:256; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffdffff,256,600,sh,0)

# rs2_val == -262145, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval:-1366; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffbffff,-1366,608,sh,0)

# rs2_val == -524289, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval:-8; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffff7ffff,-8,616,sh,0)

# rs2_val == -1048577, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval:-8; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffefffff,-8,624,sh,0)

# rs2_val == -2097153, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval:7; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffdfffff,7,632,sh,0)

# rs2_val == -4194305, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval:4; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffbfffff,4,640,sh,0)

# rs2_val == -8388609, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval:-10; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffff7fffff,-10,648,sh,0)

# rs2_val == -33554433, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval:-2; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffdffffff,-2,656,sh,0)

# rs2_val == -67108865, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval:-1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffbffffff,-1024,664,sh,0)

# rs2_val == -134217729, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval:1; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffff7ffffff,1,672,sh,0)

# rs2_val == -268435457, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval:128; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffefffffff,128,680,sh,0)

# rs2_val == -536870913, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval:1023; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffdfffffff,1023,688,sh,0)

# rs2_val == -1073741825, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval:0; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffbfffffff,0,696,sh,0)

# rs2_val == -2147483649, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval:7; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffff7fffffff,7,704,sh,0)

# rs2_val == -4294967297, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval:4; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffeffffffff,4,712,sh,0)

# rs2_val == -8589934593, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval:-4; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffdffffffff,-4,720,sh,0)

# rs2_val == -17179869185, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval:-1; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffbffffffff,-1,728,sh,0)

# rs2_val == -34359738369, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval:6; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffff7ffffffff,6,736,sh,0)

# rs2_val == -68719476737, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval:-6; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffefffffffff,-6,744,sh,0)

# rs2_val == -137438953473, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval:8; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffdfffffffff,8,752,sh,0)

# rs2_val == -274877906945, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval:4; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffbfffffffff,4,760,sh,0)

# rs2_val == -549755813889, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval:9; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffff7fffffffff,9,768,sh,0)

# rs2_val == -1099511627777, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval:-1; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffeffffffffff,-1,776,sh,0)

# rs2_val == -2199023255553, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval:-5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffdffffffffff,-5,784,sh,0)

# rs2_val == -4398046511105, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval:64; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffbffffffffff,64,792,sh,0)

# rs2_val == -8796093022209, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval:2047; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffff7ffffffffff,2047,800,sh,0)

# rs2_val == -17592186044417, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval:-129; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffefffffffffff,-129,808,sh,0)

# rs2_val == -35184372088833, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval:256; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffdfffffffffff,256,816,sh,0)

# rs2_val == -70368744177665, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval:5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffbfffffffffff,5,824,sh,0)

# rs2_val == -140737488355329, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval:1; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffff7fffffffffff,1,832,sh,0)

# rs2_val == -281474976710657, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval:5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffeffffffffffff,5,840,sh,0)

# rs2_val == -562949953421313, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval:1023; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffdffffffffffff,1023,848,sh,0)

# rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode: sh; op1:x10; op2:x11; op2val:0x8000000000000000; immval:-257; align:0
TEST_STORE(x2,x3,0,x10,x11,0x8000000000000000,-257,856,sh,0)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 24*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 108*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
