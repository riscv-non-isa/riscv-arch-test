
#This assembly file tests the sb instruction of the RISC-V I extension for the sb-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sb-align)

RVTEST_SIGBASE( x19,signature_x19_1)

# rs1 != rs2, rs1==x8, rs2==x2, ea_align == 0 and (imm_val % 4) == 0, imm_val > 0, rs2_val == -35184372088833
# opcode: sb; op1:x8; op2:x2; op2val:0xffffdfffffffffff; immval:256; align:0
TEST_STORE(x19,x11,0,x8,x2,0xffffdfffffffffff,256,0,sb,0)

# rs1==x17, rs2==x4, ea_align == 0 and (imm_val % 4) == 1, imm_val < 0, rs2_val == -17592186044417
# opcode: sb; op1:x17; op2:x4; op2val:0xffffefffffffffff; immval:-3; align:0
TEST_STORE(x19,x11,0,x17,x4,0xffffefffffffffff,-3,8,sb,0)

# rs1==x10, rs2==x1, ea_align == 0 and (imm_val % 4) == 2, rs2_val == 549755813888
# opcode: sb; op1:x10; op2:x1; op2val:0x0000008000000000; immval:6; align:0
TEST_STORE(x19,x11,0,x10,x1,0x0000008000000000,6,16,sb,0)

# rs1==x6, rs2==x12, ea_align == 0 and (imm_val % 4) == 3, rs2_val == -4294967297
# opcode: sb; op1:x6; op2:x12; op2val:0xfffffffeffffffff; immval:-1; align:0
TEST_STORE(x19,x11,0,x6,x12,0xfffffffeffffffff,-1,24,sb,0)

# rs1==x7, rs2==x24, ea_align == 2 and (imm_val % 4) == 0, rs2_val == -2049
# opcode: sb; op1:x7; op2:x24; op2val:0xfffffffffffff7ff; immval:64; align:2
TEST_STORE(x19,x11,0,x7,x24,0xfffffffffffff7ff,64,32,sb,2)

# rs1==x9, rs2==x5, ea_align == 2 and (imm_val % 4) == 1, rs2_val == 0
# opcode: sb; op1:x9; op2:x5; op2val:0x0000000000000000; immval:5; align:2
TEST_STORE(x19,x11,0,x9,x5,0x0000000000000000,5,40,sb,2)

# rs1==x20, rs2==x7, ea_align == 2 and (imm_val % 4) == 2, 
# opcode: sb; op1:x20; op2:x7; op2val:0x0000000000000003; immval:-6; align:2
TEST_STORE(x19,x11,0,x20,x7,0x0000000000000003,-6,48,sb,2)

# rs1==x24, rs2==x21, ea_align == 2 and (imm_val % 4) == 3, rs2_val == -2
# opcode: sb; op1:x24; op2:x21; op2val:0xfffffffffffffffe; immval:-17; align:2
TEST_STORE(x19,x11,0,x24,x21,0xfffffffffffffffe,-17,56,sb,2)

# rs1==x3, rs2==x29, ea_align == 1 and (imm_val % 4) == 0, rs2_val == 4096
# opcode: sb; op1:x3; op2:x29; op2val:0x0000000000001000; immval:128; align:1
TEST_STORE(x19,x11,0,x3,x29,0x0000000000001000,128,64,sb,1)

# rs1==x26, rs2==x31, ea_align == 1 and (imm_val % 4) == 1, rs2_val == -5
# opcode: sb; op1:x26; op2:x31; op2val:0xfffffffffffffffb; immval:-7; align:1
TEST_STORE(x19,x11,0,x26,x31,0xfffffffffffffffb,-7,72,sb,1)

# rs1==x14, rs2==x9, ea_align == 1 and (imm_val % 4) == 2, rs2_val == 16384
# opcode: sb; op1:x14; op2:x9; op2val:0x0000000000004000; immval:-1366; align:1
TEST_STORE(x19,x11,0,x14,x9,0x0000000000004000,-1366,80,sb,1)

# rs1==x15, rs2==x0, ea_align == 1 and (imm_val % 4) == 3, rs2_val == 8796093022208
# opcode: sb; op1:x15; op2:x0; op2val:0x0000080000000000; immval:3; align:1
TEST_STORE(x19,x11,0,x15,x0,0x0000080000000000,3,88,sb,1)

# rs1==x18, rs2==x13, ea_align == 3 and (imm_val % 4) == 0, rs2_val == -1048577
# opcode: sb; op1:x18; op2:x13; op2val:0xffffffffffefffff; immval:16; align:3
TEST_STORE(x19,x11,0,x18,x13,0xffffffffffefffff,16,96,sb,3)

# rs1==x31, rs2==x10, ea_align == 3 and (imm_val % 4) == 1, rs2_val == 4611686018427387904
# opcode: sb; op1:x31; op2:x10; op2val:0x4000000000000000; immval:1365; align:3
TEST_STORE(x19,x11,0,x31,x10,0x4000000000000000,1365,104,sb,3)

# rs1==x21, rs2==x26, ea_align == 3 and (imm_val % 4) == 2, rs2_val == -4503599627370497
# opcode: sb; op1:x21; op2:x26; op2val:0xffefffffffffffff; immval:-2; align:3
TEST_STORE(x19,x11,0,x21,x26,0xffefffffffffffff,-2,112,sb,3)

# rs1==x22, rs2==x16, ea_align == 3 and (imm_val % 4) == 3, rs2_val == 9007199254740992
# opcode: sb; op1:x22; op2:x16; op2val:0x0020000000000000; immval:-9; align:3
TEST_STORE(x19,x11,0,x22,x16,0x0020000000000000,-9,120,sb,3)

# rs1==x25, rs2==x28, imm_val == 0, rs2_val == -281474976710657
# opcode: sb; op1:x25; op2:x28; op2val:0xfffeffffffffffff; immval:0; align:0
TEST_STORE(x19,x11,0,x25,x28,0xfffeffffffffffff,0,128,sb,0)

# rs1==x2, rs2==x14, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode: sb; op1:x2; op2:x14; op2val:0x8000000000000000; immval:64; align:0
TEST_STORE(x19,x11,0,x2,x14,0x8000000000000000,64,136,sb,0)

# rs1==x27, rs2==x8, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807
# opcode: sb; op1:x27; op2:x8; op2val:0x7fffffffffffffff; immval:-5; align:0
TEST_STORE(x19,x11,0,x27,x8,0x7fffffffffffffff,-5,144,sb,0)

# rs1==x11, rs2==x25, rs2_val == 1, 
# opcode: sb; op1:x11; op2:x25; op2val:0x0000000000000001; immval:9; align:0
TEST_STORE(x19,x8,0,x11,x25,0x0000000000000001,9,152,sb,0)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x5, rs2==x27, rs2_val == 2, 
# opcode: sb; op1:x5; op2:x27; op2val:0x0000000000000002; immval:-33; align:0
TEST_STORE(x2,x8,0,x5,x27,0x0000000000000002,-33,0,sb,0)

# rs1==x29, rs2==x17, rs2_val == 4, 
# opcode: sb; op1:x29; op2:x17; op2val:0x0000000000000004; immval:1365; align:0
TEST_STORE(x2,x8,0,x29,x17,0x0000000000000004,1365,8,sb,0)

# rs1==x12, rs2==x11, rs2_val == 8, 
# opcode: sb; op1:x12; op2:x11; op2val:0x0000000000000008; immval:512; align:0
TEST_STORE(x2,x8,0,x12,x11,0x0000000000000008,512,16,sb,0)

# rs1==x13, rs2==x15, rs2_val == 16, 
# opcode: sb; op1:x13; op2:x15; op2val:0x0000000000000010; immval:64; align:0
TEST_STORE(x2,x8,0,x13,x15,0x0000000000000010,64,24,sb,0)

# rs1==x23, rs2==x22, rs2_val == 32, 
# opcode: sb; op1:x23; op2:x22; op2val:0x0000000000000020; immval:128; align:0
TEST_STORE(x2,x8,0,x23,x22,0x0000000000000020,128,32,sb,0)

# rs1==x4, rs2==x19, rs2_val == 64, 
# opcode: sb; op1:x4; op2:x19; op2val:0x0000000000000040; immval:3; align:0
TEST_STORE(x2,x8,0,x4,x19,0x0000000000000040,3,40,sb,0)

# rs1==x16, rs2==x3, rs2_val == 128, 
# opcode: sb; op1:x16; op2:x3; op2val:0x0000000000000080; immval:4; align:0
TEST_STORE(x2,x8,0,x16,x3,0x0000000000000080,4,48,sb,0)

# rs1==x19, rs2==x6, rs2_val == 256, 
# opcode: sb; op1:x19; op2:x6; op2val:0x0000000000000100; immval:-2; align:0
TEST_STORE(x2,x8,0,x19,x6,0x0000000000000100,-2,56,sb,0)

# rs1==x30, rs2==x23, rs2_val == 512, 
# opcode: sb; op1:x30; op2:x23; op2val:0x0000000000000200; immval:64; align:0
TEST_STORE(x2,x8,0,x30,x23,0x0000000000000200,64,64,sb,0)

# rs1==x1, rs2==x20, rs2_val == 1024, 
# opcode: sb; op1:x1; op2:x20; op2val:0x0000000000000400; immval:7; align:0
TEST_STORE(x2,x8,0,x1,x20,0x0000000000000400,7,72,sb,0)

# rs1==x28, rs2==x18, rs2_val == 2048, 
# opcode: sb; op1:x28; op2:x18; op2val:0x0000000000000800; immval:512; align:0
TEST_STORE(x2,x8,0,x28,x18,0x0000000000000800,512,80,sb,0)

# rs2==x30, rs2_val == 8192, 
# opcode: sb; op1:x7; op2:x30; op2val:0x0000000000002000; immval:512; align:0
TEST_STORE(x2,x8,0,x7,x30,0x0000000000002000,512,88,sb,0)

# rs2_val == 32768, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000008000; immval:16; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000000008000,16,96,sb,0)

# rs2_val == 65536, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000010000; immval:1; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000000010000,1,104,sb,0)

# rs2_val == 131072, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000020000; immval:0; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000000020000,0,112,sb,0)

# rs2_val == 262144, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000040000; immval:2; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000000040000,2,120,sb,0)

# rs2_val == 524288, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000080000; immval:512; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000000080000,512,128,sb,0)

# rs2_val == 1048576, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000100000; immval:-3; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000000100000,-3,136,sb,0)

# rs2_val == 2097152, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000200000; immval:9; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000000200000,9,144,sb,0)

# rs2_val == 4194304, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000400000; immval:-3; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000000400000,-3,152,sb,0)

# rs2_val == 8388608, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000800000; immval:-65; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000000800000,-65,160,sb,0)

# rs2_val == 16777216, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000001000000; immval:-3; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000001000000,-3,168,sb,0)

# rs2_val == 33554432, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000002000000; immval:3; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000002000000,3,176,sb,0)

# rs2_val == 67108864, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000004000000; immval:2047; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000004000000,2047,184,sb,0)

# rs2_val == 134217728, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000008000000; immval:-8; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000008000000,-8,192,sb,0)

# rs2_val == 268435456, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000010000000; immval:6; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000010000000,6,200,sb,0)

# rs2_val == 536870912, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000020000000; immval:-17; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000020000000,-17,208,sb,0)

# rs2_val == 1073741824, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000040000000; immval:-1025; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000040000000,-1025,216,sb,0)

# rs2_val == 2147483648, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000080000000; immval:-1024; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000080000000,-1024,224,sb,0)

# rs2_val == 4294967296, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000100000000; immval:-1025; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000100000000,-1025,232,sb,0)

# rs2_val == 8589934592, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000200000000; immval:4; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000200000000,4,240,sb,0)

# rs2_val == 17179869184, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000400000000; immval:3; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000400000000,3,248,sb,0)

# rs2_val == 34359738368, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000000800000000; immval:-4; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000000800000000,-4,256,sb,0)

# rs2_val == 68719476736, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000001000000000; immval:6; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000001000000000,6,264,sb,0)

# rs2_val == 137438953472, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000002000000000; immval:4; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000002000000000,4,272,sb,0)

# rs2_val == 274877906944, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000004000000000; immval:7; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000004000000000,7,280,sb,0)

# rs2_val == 1099511627776, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000010000000000; immval:1024; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000010000000000,1024,288,sb,0)

# rs2_val == 2199023255552, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000020000000000; immval:-5; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000020000000000,-5,296,sb,0)

# rs2_val == 4398046511104, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000040000000000; immval:-1025; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000040000000000,-1025,304,sb,0)

# rs2_val == 17592186044416, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000100000000000; immval:1023; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000100000000000,1023,312,sb,0)

# rs2_val == 35184372088832, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000200000000000; immval:-5; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000200000000000,-5,320,sb,0)

# rs2_val == 70368744177664, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000400000000000; immval:-6; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000400000000000,-6,328,sb,0)

# rs2_val == 140737488355328, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0000800000000000; immval:9; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0000800000000000,9,336,sb,0)

# rs2_val == 281474976710656, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0001000000000000; immval:32; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0001000000000000,32,344,sb,0)

# rs2_val == 562949953421312, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0002000000000000; immval:512; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0002000000000000,512,352,sb,0)

# rs2_val == 1125899906842624, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0004000000000000; immval:-10; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0004000000000000,-10,360,sb,0)

# rs2_val == 2251799813685248, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0008000000000000; immval:2047; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0008000000000000,2047,368,sb,0)

# rs2_val == 4503599627370496, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0010000000000000; immval:-1025; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0010000000000000,-1025,376,sb,0)

# rs2_val == 18014398509481984, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0040000000000000; immval:32; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0040000000000000,32,384,sb,0)

# rs2_val == -4398046511105, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval:1024; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffbffffffffff,1024,392,sb,0)

# rs2_val == -8796093022209, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval:-513; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffff7ffffffffff,-513,400,sb,0)

# rs2_val == -70368744177665, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval:-10; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffbfffffffffff,-10,408,sb,0)

# rs2_val == -140737488355329, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval:5; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffff7fffffffffff,5,416,sb,0)

# rs2_val == -562949953421313, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval:1; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffdffffffffffff,1,424,sb,0)

# rs2_val == -1125899906842625, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval:-10; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffbffffffffffff,-10,432,sb,0)

# rs2_val == -2251799813685249, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval:-513; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfff7ffffffffffff,-513,440,sb,0)

# rs2_val == -9007199254740993, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval:-257; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffdfffffffffffff,-257,448,sb,0)

# rs2_val == -18014398509481985, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval:64; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffbfffffffffffff,64,456,sb,0)

# rs2_val == -36028797018963969, 
# opcode: sb; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval:1023; align:0
TEST_STORE(x2,x8,0,x10,x11,0xff7fffffffffffff,1023,464,sb,0)

# rs2_val == -72057594037927937, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval:-4; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfeffffffffffffff,-4,472,sb,0)

# rs2_val == -144115188075855873, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval:0; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfdffffffffffffff,0,480,sb,0)

# rs2_val == -288230376151711745, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval:-257; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfbffffffffffffff,-257,488,sb,0)

# rs2_val == -576460752303423489, 
# opcode: sb; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval:-17; align:0
TEST_STORE(x2,x8,0,x10,x11,0xf7ffffffffffffff,-17,496,sb,0)

# rs2_val == -1152921504606846977, 
# opcode: sb; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval:512; align:0
TEST_STORE(x2,x8,0,x10,x11,0xefffffffffffffff,512,504,sb,0)

# rs2_val == -2305843009213693953, 
# opcode: sb; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval:1024; align:0
TEST_STORE(x2,x8,0,x10,x11,0xdfffffffffffffff,1024,512,sb,0)

# rs2_val == -4611686018427387905, 
# opcode: sb; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval:8; align:0
TEST_STORE(x2,x8,0,x10,x11,0xbfffffffffffffff,8,520,sb,0)

# rs2_val == 6148914691236517205, 
# opcode: sb; op1:x10; op2:x11; op2val:0x5555555555555555; immval:-1024; align:0
TEST_STORE(x2,x8,0,x10,x11,0x5555555555555555,-1024,528,sb,0)

# rs2_val == -6148914691236517206, 
# opcode: sb; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval:0; align:0
TEST_STORE(x2,x8,0,x10,x11,0xaaaaaaaaaaaaaaaa,0,536,sb,0)

# rs2_val == 36028797018963968, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0080000000000000; immval:-1024; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0080000000000000,-1024,544,sb,0)

# rs2_val == 72057594037927936, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0100000000000000; immval:-1366; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0100000000000000,-1366,552,sb,0)

# rs2_val == 144115188075855872, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0200000000000000; immval:32; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0200000000000000,32,560,sb,0)

# rs2_val == 288230376151711744, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0400000000000000; immval:-65; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0400000000000000,-65,568,sb,0)

# rs2_val == 576460752303423488, 
# opcode: sb; op1:x10; op2:x11; op2val:0x0800000000000000; immval:0; align:0
TEST_STORE(x2,x8,0,x10,x11,0x0800000000000000,0,576,sb,0)

# rs2_val == 1152921504606846976, 
# opcode: sb; op1:x10; op2:x11; op2val:0x1000000000000000; immval:-1366; align:0
TEST_STORE(x2,x8,0,x10,x11,0x1000000000000000,-1366,584,sb,0)

# rs2_val == 2305843009213693952, 
# opcode: sb; op1:x10; op2:x11; op2val:0x2000000000000000; immval:-4; align:0
TEST_STORE(x2,x8,0,x10,x11,0x2000000000000000,-4,592,sb,0)

# rs2_val == -3, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval:-129; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffffffffffd,-129,600,sb,0)

# rs2_val == -9, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval:2047; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffffffffff7,2047,608,sb,0)

# rs2_val == -17, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval:9; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffffffffef,9,616,sb,0)

# rs2_val == -33, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval:1365; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffffffffdf,1365,624,sb,0)

# rs2_val == -65, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval:-17; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffffffffbf,-17,632,sb,0)

# rs2_val == -129, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval:-2048; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffffffff7f,-2048,640,sb,0)

# rs2_val == -257, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval:8; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffffffffeff,8,648,sb,0)

# rs2_val == -513, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval:3; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffffffffdff,3,656,sb,0)

# rs2_val == -1025, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval:-1; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffffffffbff,-1,664,sb,0)

# rs2_val == -4097, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval:5; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffffffefff,5,672,sb,0)

# rs2_val == -8193, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval:2047; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffffffdfff,2047,680,sb,0)

# rs2_val == -16385, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval:-1; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffffffbfff,-1,688,sb,0)

# rs2_val == -32769, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval:128; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffffff7fff,128,696,sb,0)

# rs2_val == -65537, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval:4; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffffffeffff,4,704,sb,0)

# rs2_val == -131073, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval:64; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffffffdffff,64,712,sb,0)

# rs2_val == -262145, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval:-1366; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffffffbffff,-1366,720,sb,0)

# rs2_val == -524289, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval:64; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffffff7ffff,64,728,sb,0)

# rs2_val == -2097153, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval:-1025; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffffdfffff,-1025,736,sb,0)

# rs2_val == -4194305, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval:-129; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffffbfffff,-129,744,sb,0)

# rs2_val == -8388609, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval:512; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffff7fffff,512,752,sb,0)

# rs2_val == -16777217, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval:4; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffffeffffff,4,760,sb,0)

# rs2_val == -33554433, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval:-10; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffffdffffff,-10,768,sb,0)

# rs2_val == -67108865, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval:7; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffffbffffff,7,776,sb,0)

# rs2_val == -134217729, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval:1365; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffff7ffffff,1365,784,sb,0)

# rs2_val == -268435457, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval:-3; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffefffffff,-3,792,sb,0)

# rs2_val == -536870913, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval:128; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffdfffffff,128,800,sb,0)

# rs2_val == -1073741825, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval:-9; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffffbfffffff,-9,808,sb,0)

# rs2_val == -2147483649, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval:64; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffff7fffffff,64,816,sb,0)

# rs2_val == -8589934593, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval:32; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffdffffffff,32,824,sb,0)

# rs2_val == -17179869185, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval:-9; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffffbffffffff,-9,832,sb,0)

# rs2_val == -34359738369, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval:-2048; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffff7ffffffff,-2048,840,sb,0)

# rs2_val == -68719476737, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval:-65; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffefffffffff,-65,848,sb,0)

# rs2_val == -137438953473, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval:256; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffdfffffffff,256,856,sb,0)

# rs2_val == -274877906945, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval:8; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffffbfffffffff,8,864,sb,0)

# rs2_val == -549755813889, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval:-2048; align:0
TEST_STORE(x2,x8,0,x10,x11,0xffffff7fffffffff,-2048,872,sb,0)

# rs2_val == -1099511627777, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval:6; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffeffffffffff,6,880,sb,0)

# rs2_val == -2199023255553, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval:-9; align:0
TEST_STORE(x2,x8,0,x10,x11,0xfffffdffffffffff,-9,888,sb,0)

# ea_align == 1 and (imm_val % 4) == 3, rs2_val == 8796093022208
# opcode: sb; op1:x10; op2:x11; op2val:0x0000080000000000; immval:3; align:1
TEST_STORE(x2,x8,0,x10,x11,0x0000080000000000,3,896,sb,1)
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

signature_x19_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x19_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x2_0:
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
