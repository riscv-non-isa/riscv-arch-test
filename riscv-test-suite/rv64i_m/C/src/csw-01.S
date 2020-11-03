
#This assembly file tests the c.sw instruction of the RISC-V C extension for the csw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",csw)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 != rs2, rs1==x15, rs2==x10, imm_val > 0, rs2_val == -9223372036854775808, rs2_val == (-2**(xlen-1))
# opcode:c.sw; op1:x15; op2:x10; op2val:0x8000000000000000; immval:48
TEST_STORE(x1,x2,0,x15,x10,0x8000000000000000,48,0,c.sw,0)

# rs1==x11, rs2==x9, imm_val == 0, rs2_val == -549755813889
# opcode:c.sw; op1:x11; op2:x9; op2val:0xffffff7fffffffff; immval:0
TEST_STORE(x1,x2,0,x11,x9,0xffffff7fffffffff,0,8,c.sw,0)

# rs1==x14, rs2==x12, rs2_val == 0, 
# opcode:c.sw; op1:x14; op2:x12; op2val:0x0000000000000000; immval:52
TEST_STORE(x1,x2,0,x14,x12,0x0000000000000000,52,16,c.sw,0)

# rs1==x13, rs2==x11, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807, imm_val == 64
# opcode:c.sw; op1:x13; op2:x11; op2val:0x7fffffffffffffff; immval:64
TEST_STORE(x1,x2,0,x13,x11,0x7fffffffffffffff,64,24,c.sw,0)

# rs1==x12, rs2==x8, rs2_val == 1, imm_val == 4
# opcode:c.sw; op1:x12; op2:x8; op2val:0x0000000000000001; immval:4
TEST_STORE(x1,x2,0,x12,x8,0x0000000000000001,4,32,c.sw,0)

# rs1==x9, rs2==x14, imm_val == 8, rs2_val == -17179869185
# opcode:c.sw; op1:x9; op2:x14; op2val:0xfffffffbffffffff; immval:8
TEST_STORE(x1,x2,0,x9,x14,0xfffffffbffffffff,8,40,c.sw,0)

# rs1==x8, rs2==x15, imm_val == 16, rs2_val == 288230376151711744
# opcode:c.sw; op1:x8; op2:x15; op2val:0x0400000000000000; immval:16
TEST_STORE(x1,x2,0,x8,x15,0x0400000000000000,16,48,c.sw,0)

# rs1==x10, rs2==x13, imm_val == 32, rs2_val == -268435457
# opcode:c.sw; op1:x10; op2:x13; op2val:0xffffffffefffffff; immval:32
TEST_STORE(x1,x2,0,x10,x13,0xffffffffefffffff,32,56,c.sw,0)

# imm_val == 120, rs2_val == -67108865
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffbffffff,120,64,c.sw,0)

# imm_val == 116, rs2_val == 1152921504606846976
# opcode:c.sw; op1:x10; op2:x11; op2val:0x1000000000000000; immval:116
TEST_STORE(x1,x2,0,x10,x11,0x1000000000000000,116,72,c.sw,0)

# imm_val == 108, rs2_val == -137438953473
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xffffffdfffffffff,108,80,c.sw,0)

# imm_val == 92, rs2_val == 68719476736
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000001000000000; immval:92
TEST_STORE(x1,x2,0,x10,x11,0x0000001000000000,92,88,c.sw,0)

# imm_val == 60, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000001000000000; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x0000001000000000,60,96,c.sw,0)

# imm_val == 84, rs2_val == 1024
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000400; immval:84
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000400,84,104,c.sw,0)

# imm_val == 40, rs2_val == -2147483649
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xffffffff7fffffff,40,112,c.sw,0)

# rs2_val == 2, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000002; immval:28
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000002,28,120,c.sw,0)

# rs2_val == 4, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000004; immval:76
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000004,76,128,c.sw,0)

# rs2_val == 8, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000008; immval:124
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000008,124,136,c.sw,0)

# rs2_val == 16, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000010; immval:48
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000010,48,144,c.sw,0)

# rs2_val == 32, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000020; immval:68
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000020,68,152,c.sw,0)

# rs2_val == 64, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000040; immval:120
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000040,120,160,c.sw,0)

# rs2_val == 128, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000080; immval:12
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000080,12,168,c.sw,0)

# rs2_val == 256, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000100; immval:44
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000100,44,176,c.sw,0)

# rs2_val == 512, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000200; immval:16
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000200,16,184,c.sw,0)

# rs2_val == 2048, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000800; immval:68
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000800,68,192,c.sw,0)

# rs2_val == 4096, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000001000; immval:72
TEST_STORE(x1,x2,0,x10,x11,0x0000000000001000,72,200,c.sw,0)

# rs2_val == 8192, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000002000; immval:16
TEST_STORE(x1,x2,0,x10,x11,0x0000000000002000,16,208,c.sw,0)

# rs2_val == 16384, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000004000; immval:12
TEST_STORE(x1,x2,0,x10,x11,0x0000000000004000,12,216,c.sw,0)

# rs2_val == 32768, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000008000; immval:12
TEST_STORE(x1,x2,0,x10,x11,0x0000000000008000,12,224,c.sw,0)

# rs2_val == 65536, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000010000; immval:64
TEST_STORE(x1,x2,0,x10,x11,0x0000000000010000,64,232,c.sw,0)

# rs2_val == 131072, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000020000; immval:16
TEST_STORE(x1,x2,0,x10,x11,0x0000000000020000,16,240,c.sw,0)

# rs2_val == 262144, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000040000; immval:52
TEST_STORE(x1,x2,0,x10,x11,0x0000000000040000,52,248,c.sw,0)

# rs2_val == 524288, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000080000; immval:76
TEST_STORE(x1,x2,0,x10,x11,0x0000000000080000,76,256,c.sw,0)

# rs2_val == 1048576, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000100000; immval:8
TEST_STORE(x1,x2,0,x10,x11,0x0000000000100000,8,264,c.sw,0)

# rs2_val == 2097152, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000200000; immval:20
TEST_STORE(x1,x2,0,x10,x11,0x0000000000200000,20,272,c.sw,0)

# rs2_val == 4194304, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000400000; immval:56
TEST_STORE(x1,x2,0,x10,x11,0x0000000000400000,56,280,c.sw,0)

# rs2_val == 8388608, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000800000; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x0000000000800000,40,288,c.sw,0)

# rs2_val == 16777216, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000001000000; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x0000000001000000,60,296,c.sw,0)

# rs2_val == 33554432, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000002000000; immval:92
TEST_STORE(x1,x2,0,x10,x11,0x0000000002000000,92,304,c.sw,0)

# rs2_val == 67108864, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000004000000; immval:4
TEST_STORE(x1,x2,0,x10,x11,0x0000000004000000,4,312,c.sw,0)

# rs2_val == 134217728, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000008000000; immval:108
TEST_STORE(x1,x2,0,x10,x11,0x0000000008000000,108,320,c.sw,0)

# rs2_val == 268435456, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000010000000; immval:72
TEST_STORE(x1,x2,0,x10,x11,0x0000000010000000,72,328,c.sw,0)

# rs2_val == 536870912, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000020000000; immval:68
TEST_STORE(x1,x2,0,x10,x11,0x0000000020000000,68,336,c.sw,0)

# rs2_val == 1073741824, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000040000000; immval:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000040000000,0,344,c.sw,0)

# rs2_val == 2147483648, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000080000000; immval:16
TEST_STORE(x1,x2,0,x10,x11,0x0000000080000000,16,352,c.sw,0)

# rs2_val == 4294967296, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000100000000; immval:72
TEST_STORE(x1,x2,0,x10,x11,0x0000000100000000,72,360,c.sw,0)

# rs2_val == 8589934592, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000200000000; immval:84
TEST_STORE(x1,x2,0,x10,x11,0x0000000200000000,84,368,c.sw,0)

# rs2_val == 17179869184, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000400000000; immval:92
TEST_STORE(x1,x2,0,x10,x11,0x0000000400000000,92,376,c.sw,0)

# rs2_val == 34359738368, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000800000000; immval:48
TEST_STORE(x1,x2,0,x10,x11,0x0000000800000000,48,384,c.sw,0)

# rs2_val == 137438953472, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000002000000000; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x0000002000000000,32,392,c.sw,0)

# rs2_val == 274877906944, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000004000000000; immval:64
TEST_STORE(x1,x2,0,x10,x11,0x0000004000000000,64,400,c.sw,0)

# rs2_val == 549755813888, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000008000000000; immval:72
TEST_STORE(x1,x2,0,x10,x11,0x0000008000000000,72,408,c.sw,0)

# rs2_val == 1099511627776, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000010000000000; immval:120
TEST_STORE(x1,x2,0,x10,x11,0x0000010000000000,120,416,c.sw,0)

# rs2_val == 2199023255552, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000020000000000; immval:84
TEST_STORE(x1,x2,0,x10,x11,0x0000020000000000,84,424,c.sw,0)

# rs2_val == 4398046511104, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000040000000000; immval:0
TEST_STORE(x1,x2,0,x10,x11,0x0000040000000000,0,432,c.sw,0)

# rs2_val == 8796093022208, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000080000000000; immval:84
TEST_STORE(x1,x2,0,x10,x11,0x0000080000000000,84,440,c.sw,0)

# rs2_val == 17592186044416, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000100000000000; immval:36
TEST_STORE(x1,x2,0,x10,x11,0x0000100000000000,36,448,c.sw,0)

# rs2_val == 35184372088832, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000200000000000; immval:20
TEST_STORE(x1,x2,0,x10,x11,0x0000200000000000,20,456,c.sw,0)

# rs2_val == 70368744177664, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000400000000000; immval:20
TEST_STORE(x1,x2,0,x10,x11,0x0000400000000000,20,464,c.sw,0)

# rs2_val == 140737488355328, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000800000000000; immval:48
TEST_STORE(x1,x2,0,x10,x11,0x0000800000000000,48,472,c.sw,0)

# rs2_val == 281474976710656, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0001000000000000; immval:44
TEST_STORE(x1,x2,0,x10,x11,0x0001000000000000,44,480,c.sw,0)

# rs2_val == 562949953421312, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0002000000000000; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x0002000000000000,32,488,c.sw,0)

# rs2_val == 1125899906842624, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0004000000000000; immval:124
TEST_STORE(x1,x2,0,x10,x11,0x0004000000000000,124,496,c.sw,0)

# rs2_val == 2251799813685248, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0008000000000000; immval:24
TEST_STORE(x1,x2,0,x10,x11,0x0008000000000000,24,504,c.sw,0)

# rs2_val == 4503599627370496, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0010000000000000; immval:48
TEST_STORE(x1,x2,0,x10,x11,0x0010000000000000,48,512,c.sw,0)

# rs2_val == 9007199254740992, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0020000000000000; immval:68
TEST_STORE(x1,x2,0,x10,x11,0x0020000000000000,68,520,c.sw,0)

# rs2_val == 18014398509481984, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0040000000000000; immval:76
TEST_STORE(x1,x2,0,x10,x11,0x0040000000000000,76,528,c.sw,0)

# rs2_val == 36028797018963968, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0080000000000000; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x0080000000000000,60,536,c.sw,0)

# rs2_val == 72057594037927936, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0100000000000000; immval:36
TEST_STORE(x1,x2,0,x10,x11,0x0100000000000000,36,544,c.sw,0)

# rs2_val == -140737488355329, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval:36
TEST_STORE(x1,x2,0,x10,x11,0xffff7fffffffffff,36,552,c.sw,0)

# rs2_val == -281474976710657, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval:28
TEST_STORE(x1,x2,0,x10,x11,0xfffeffffffffffff,28,560,c.sw,0)

# rs2_val == -562949953421313, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xfffdffffffffffff,116,568,c.sw,0)

# rs2_val == -1125899906842625, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval:84
TEST_STORE(x1,x2,0,x10,x11,0xfffbffffffffffff,84,576,c.sw,0)

# rs2_val == -2251799813685249, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffffffffffff,0,584,c.sw,0)

# rs2_val == -4503599627370497, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xffefffffffffffff,116,592,c.sw,0)

# rs2_val == -9007199254740993, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval:24
TEST_STORE(x1,x2,0,x10,x11,0xffdfffffffffffff,24,600,c.sw,0)

# rs2_val == -18014398509481985, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval:84
TEST_STORE(x1,x2,0,x10,x11,0xffbfffffffffffff,84,608,c.sw,0)

# rs2_val == -36028797018963969, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval:24
TEST_STORE(x1,x2,0,x10,x11,0xff7fffffffffffff,24,616,c.sw,0)

# rs2_val == -72057594037927937, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval:36
TEST_STORE(x1,x2,0,x10,x11,0xfeffffffffffffff,36,624,c.sw,0)

# rs2_val == -144115188075855873, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval:52
TEST_STORE(x1,x2,0,x10,x11,0xfdffffffffffffff,52,632,c.sw,0)

# rs2_val == -288230376151711745, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval:4
TEST_STORE(x1,x2,0,x10,x11,0xfbffffffffffffff,4,640,c.sw,0)

# rs2_val == -576460752303423489, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval:52
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffffffffffff,52,648,c.sw,0)

# rs2_val == -1152921504606846977, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval:124
TEST_STORE(x1,x2,0,x10,x11,0xefffffffffffffff,124,656,c.sw,0)

# rs2_val == -2305843009213693953, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xdfffffffffffffff,116,664,c.sw,0)

# rs2_val == -4611686018427387905, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xbfffffffffffffff,120,672,c.sw,0)

# rs2_val == 6148914691236517205, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x5555555555555555; immval:120
TEST_STORE(x1,x2,0,x10,x11,0x5555555555555555,120,680,c.sw,0)

# rs2_val == -6148914691236517206, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaaaaaaaaaa,108,688,c.sw,0)

# rs2_val == 144115188075855872, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0200000000000000; immval:64
TEST_STORE(x1,x2,0,x10,x11,0x0200000000000000,64,696,c.sw,0)

# rs2_val == 576460752303423488, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0800000000000000; immval:108
TEST_STORE(x1,x2,0,x10,x11,0x0800000000000000,108,704,c.sw,0)

# rs2_val == 2305843009213693952, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x2000000000000000; immval:8
TEST_STORE(x1,x2,0,x10,x11,0x2000000000000000,8,712,c.sw,0)

# rs2_val == 4611686018427387904, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x4000000000000000; immval:24
TEST_STORE(x1,x2,0,x10,x11,0x4000000000000000,24,720,c.sw,0)

# rs2_val == -2, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval:44
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffe,44,728,c.sw,0)

# rs2_val == -3, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval:84
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffd,84,736,c.sw,0)

# rs2_val == -5, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval:44
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffb,44,744,c.sw,0)

# rs2_val == -9, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval:28
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffff7,28,752,c.sw,0)

# rs2_val == -17, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval:60
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffef,60,760,c.sw,0)

# rs2_val == -33, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval:92
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffdf,92,768,c.sw,0)

# rs2_val == -65, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffbf,108,776,c.sw,0)

# rs2_val == -129, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval:36
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffff7f,36,784,c.sw,0)

# rs2_val == -257, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval:124
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffeff,124,792,c.sw,0)

# rs2_val == -513, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval:92
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffdff,92,800,c.sw,0)

# rs2_val == -1025, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffbff,108,808,c.sw,0)

# rs2_val == -2049, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval:92
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffff7ff,92,816,c.sw,0)

# rs2_val == -4097, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval:32
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffefff,32,824,c.sw,0)

# rs2_val == -8193, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval:72
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffdfff,72,832,c.sw,0)

# rs2_val == -16385, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval:24
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffbfff,24,840,c.sw,0)

# rs2_val == -32769, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval:92
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffff7fff,92,848,c.sw,0)

# rs2_val == -65537, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffeffff,40,856,c.sw,0)

# rs2_val == -131073, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffdffff,40,864,c.sw,0)

# rs2_val == -262145, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffbffff,40,872,c.sw,0)

# rs2_val == -524289, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffff7ffff,0,880,c.sw,0)

# rs2_val == -1048577, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffefffff,40,888,c.sw,0)

# rs2_val == -2097153, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval:4
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffdfffff,4,896,c.sw,0)

# rs2_val == -4194305, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffbfffff,0,904,c.sw,0)

# rs2_val == -8388609, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval:56
TEST_STORE(x1,x2,0,x10,x11,0xffffffffff7fffff,56,912,c.sw,0)

# rs2_val == -16777217, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval:8
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffeffffff,8,920,c.sw,0)

# rs2_val == -33554433, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval:16
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffdffffff,16,928,c.sw,0)

# rs2_val == -134217729, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval:76
TEST_STORE(x1,x2,0,x10,x11,0xfffffffff7ffffff,76,936,c.sw,0)

# rs2_val == -536870913, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval:48
TEST_STORE(x1,x2,0,x10,x11,0xffffffffdfffffff,48,944,c.sw,0)

# rs2_val == -1073741825, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval:48
TEST_STORE(x1,x2,0,x10,x11,0xffffffffbfffffff,48,952,c.sw,0)

# rs2_val == -4294967297, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval:36
TEST_STORE(x1,x2,0,x10,x11,0xfffffffeffffffff,36,960,c.sw,0)

# rs2_val == -8589934593, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xfffffffdffffffff,108,968,c.sw,0)

# rs2_val == -34359738369, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval:24
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7ffffffff,24,976,c.sw,0)

# rs2_val == -68719476737, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval:28
TEST_STORE(x1,x2,0,x10,x11,0xffffffefffffffff,28,984,c.sw,0)

# rs2_val == -274877906945, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval:76
TEST_STORE(x1,x2,0,x10,x11,0xffffffbfffffffff,76,992,c.sw,0)

# rs2_val == -1099511627777, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval:32
TEST_STORE(x1,x2,0,x10,x11,0xfffffeffffffffff,32,1000,c.sw,0)

# rs2_val == -2199023255553, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval:92
TEST_STORE(x1,x2,0,x10,x11,0xfffffdffffffffff,92,1008,c.sw,0)

# rs2_val == -4398046511105, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffbffffffffff,0,1016,c.sw,0)

# rs2_val == -8796093022209, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval:48
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ffffffffff,48,1024,c.sw,0)

# rs2_val == -17592186044417, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval:60
TEST_STORE(x1,x2,0,x10,x11,0xffffefffffffffff,60,1032,c.sw,0)

# rs2_val == -35184372088833, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval:76
TEST_STORE(x1,x2,0,x10,x11,0xffffdfffffffffff,76,1040,c.sw,0)

# rs2_val == -70368744177665, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval:56
TEST_STORE(x1,x2,0,x10,x11,0xffffbfffffffffff,56,1048,c.sw,0)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 132*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
