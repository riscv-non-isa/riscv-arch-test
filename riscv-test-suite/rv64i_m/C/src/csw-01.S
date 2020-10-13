
#This assembly file tests the c.sw instruction of the RISC-V C extension for the csw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",csw)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 != rs2, rs1==x10, rs2==x12, imm_val > 0, imm_val == 84
# opcode:c.sw; op1:x10; op2:x12; op2val:0x0000000000000005; immval:84
TEST_STORE(x1,x2,0,x10,x12,0x0000000000000005,84,0,c.sw,0)

# rs1==x14, rs2==x13, imm_val == 0, rs2_val == 2097152
# opcode:c.sw; op1:x14; op2:x13; op2val:0x0000000000200000; immval:0
TEST_STORE(x1,x2,0,x14,x13,0x0000000000200000,0,8,c.sw,0)

# rs1==x11, rs2==x8, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808, imm_val == 64
# opcode:c.sw; op1:x11; op2:x8; op2val:0x8000000000000000; immval:64
TEST_STORE(x1,x2,0,x11,x8,0x8000000000000000,64,16,c.sw,0)

# rs1==x12, rs2==x11, rs2_val == 0, imm_val == 40
# opcode:c.sw; op1:x12; op2:x11; op2val:0x0000000000000000; immval:40
TEST_STORE(x1,x2,0,x12,x11,0x0000000000000000,40,24,c.sw,0)

# rs1==x13, rs2==x9, rs2_val == (2**(xlen-1)-1), imm_val == 16, rs2_val == 9223372036854775807
# opcode:c.sw; op1:x13; op2:x9; op2val:0x7fffffffffffffff; immval:16
TEST_STORE(x1,x2,0,x13,x9,0x7fffffffffffffff,16,32,c.sw,0)

# rs1==x8, rs2==x15, rs2_val == 1, 
# opcode:c.sw; op1:x8; op2:x15; op2val:0x0000000000000001; immval:68
TEST_STORE(x1,x2,0,x8,x15,0x0000000000000001,68,40,c.sw,0)

# rs1==x9, rs2==x14, imm_val == 4, rs2_val == 1024
# opcode:c.sw; op1:x9; op2:x14; op2val:0x0000000000000400; immval:4
TEST_STORE(x1,x2,0,x9,x14,0x0000000000000400,4,48,c.sw,0)

# rs1==x15, rs2==x10, imm_val == 8, rs2_val == 2199023255552
# opcode:c.sw; op1:x15; op2:x10; op2val:0x0000020000000000; immval:8
TEST_STORE(x1,x2,0,x15,x10,0x0000020000000000,8,56,c.sw,0)

# imm_val == 32, rs2_val == 35184372088832
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000200000000000; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x0000200000000000,32,64,c.sw,0)

# imm_val == 120, rs2_val == -65537
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffeffff,120,72,c.sw,0)

# imm_val == 116, rs2_val == -1073741825
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xffffffffbfffffff,116,80,c.sw,0)

# imm_val == 108, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000200000000000; immval:108
TEST_STORE(x1,x2,0,x10,x11,0x0000200000000000,108,88,c.sw,0)

# imm_val == 92, rs2_val == 36028797018963968
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0080000000000000; immval:92
TEST_STORE(x1,x2,0,x10,x11,0x0080000000000000,92,96,c.sw,0)

# imm_val == 60, rs2_val == 68719476736
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000001000000000; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x0000001000000000,60,104,c.sw,0)

# rs2_val == 2, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000002; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000002,60,112,c.sw,0)

# rs2_val == 4, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000004; immval:20
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000004,20,120,c.sw,0)

# rs2_val == 8, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000008; immval:124
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000008,124,128,c.sw,0)

# rs2_val == 16, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000010; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000010,40,136,c.sw,0)

# rs2_val == 32, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000020; immval:116
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000020,116,144,c.sw,0)

# rs2_val == 64, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000040; immval:52
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000040,52,152,c.sw,0)

# rs2_val == 128, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000080; immval:72
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000080,72,160,c.sw,0)

# rs2_val == 256, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000100; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000100,32,168,c.sw,0)

# rs2_val == 512, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000200; immval:12
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000200,12,176,c.sw,0)

# rs2_val == 2048, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000800; immval:56
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000800,56,184,c.sw,0)

# rs2_val == 4096, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000001000; immval:116
TEST_STORE(x1,x2,0,x10,x11,0x0000000000001000,116,192,c.sw,0)

# rs2_val == 8192, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000002000; immval:76
TEST_STORE(x1,x2,0,x10,x11,0x0000000000002000,76,200,c.sw,0)

# rs2_val == 16384, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000004000; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x0000000000004000,60,208,c.sw,0)

# rs2_val == 32768, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000008000; immval:56
TEST_STORE(x1,x2,0,x10,x11,0x0000000000008000,56,216,c.sw,0)

# rs2_val == 65536, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000010000; immval:28
TEST_STORE(x1,x2,0,x10,x11,0x0000000000010000,28,224,c.sw,0)

# rs2_val == 131072, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000020000; immval:44
TEST_STORE(x1,x2,0,x10,x11,0x0000000000020000,44,232,c.sw,0)

# rs2_val == 262144, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000040000; immval:48
TEST_STORE(x1,x2,0,x10,x11,0x0000000000040000,48,240,c.sw,0)

# rs2_val == 524288, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000080000; immval:12
TEST_STORE(x1,x2,0,x10,x11,0x0000000000080000,12,248,c.sw,0)

# rs2_val == 1048576, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000100000; immval:24
TEST_STORE(x1,x2,0,x10,x11,0x0000000000100000,24,256,c.sw,0)

# rs2_val == 4194304, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000400000; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x0000000000400000,40,264,c.sw,0)

# rs2_val == 8388608, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000800000; immval:36
TEST_STORE(x1,x2,0,x10,x11,0x0000000000800000,36,272,c.sw,0)

# rs2_val == 16777216, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000001000000; immval:52
TEST_STORE(x1,x2,0,x10,x11,0x0000000001000000,52,280,c.sw,0)

# rs2_val == 33554432, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000002000000; immval:24
TEST_STORE(x1,x2,0,x10,x11,0x0000000002000000,24,288,c.sw,0)

# rs2_val == 67108864, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000004000000; immval:64
TEST_STORE(x1,x2,0,x10,x11,0x0000000004000000,64,296,c.sw,0)

# rs2_val == 134217728, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000008000000; immval:52
TEST_STORE(x1,x2,0,x10,x11,0x0000000008000000,52,304,c.sw,0)

# rs2_val == 268435456, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000010000000; immval:84
TEST_STORE(x1,x2,0,x10,x11,0x0000000010000000,84,312,c.sw,0)

# rs2_val == 536870912, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000020000000; immval:8
TEST_STORE(x1,x2,0,x10,x11,0x0000000020000000,8,320,c.sw,0)

# rs2_val == 1073741824, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000040000000; immval:4
TEST_STORE(x1,x2,0,x10,x11,0x0000000040000000,4,328,c.sw,0)

# rs2_val == 2147483648, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000080000000; immval:124
TEST_STORE(x1,x2,0,x10,x11,0x0000000080000000,124,336,c.sw,0)

# rs2_val == 4294967296, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000100000000; immval:20
TEST_STORE(x1,x2,0,x10,x11,0x0000000100000000,20,344,c.sw,0)

# rs2_val == 8589934592, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000200000000; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x0000000200000000,60,352,c.sw,0)

# rs2_val == 17179869184, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000400000000; immval:84
TEST_STORE(x1,x2,0,x10,x11,0x0000000400000000,84,360,c.sw,0)

# rs2_val == 34359738368, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000800000000; immval:12
TEST_STORE(x1,x2,0,x10,x11,0x0000000800000000,12,368,c.sw,0)

# rs2_val == 137438953472, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000002000000000; immval:120
TEST_STORE(x1,x2,0,x10,x11,0x0000002000000000,120,376,c.sw,0)

# rs2_val == 274877906944, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000004000000000; immval:52
TEST_STORE(x1,x2,0,x10,x11,0x0000004000000000,52,384,c.sw,0)

# rs2_val == 549755813888, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000008000000000; immval:76
TEST_STORE(x1,x2,0,x10,x11,0x0000008000000000,76,392,c.sw,0)

# rs2_val == 1099511627776, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000010000000000; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x0000010000000000,60,400,c.sw,0)

# rs2_val == 4398046511104, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000040000000000; immval:84
TEST_STORE(x1,x2,0,x10,x11,0x0000040000000000,84,408,c.sw,0)

# rs2_val == 8796093022208, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000080000000000; immval:84
TEST_STORE(x1,x2,0,x10,x11,0x0000080000000000,84,416,c.sw,0)

# rs2_val == 17592186044416, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000100000000000; immval:108
TEST_STORE(x1,x2,0,x10,x11,0x0000100000000000,108,424,c.sw,0)

# rs2_val == 70368744177664, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000400000000000; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x0000400000000000,60,432,c.sw,0)

# rs2_val == 140737488355328, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0000800000000000; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x0000800000000000,60,440,c.sw,0)

# rs2_val == 281474976710656, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0001000000000000; immval:36
TEST_STORE(x1,x2,0,x10,x11,0x0001000000000000,36,448,c.sw,0)

# rs2_val == 562949953421312, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0002000000000000; immval:16
TEST_STORE(x1,x2,0,x10,x11,0x0002000000000000,16,456,c.sw,0)

# rs2_val == 1125899906842624, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0004000000000000; immval:56
TEST_STORE(x1,x2,0,x10,x11,0x0004000000000000,56,464,c.sw,0)

# rs2_val == 2251799813685248, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0008000000000000; immval:120
TEST_STORE(x1,x2,0,x10,x11,0x0008000000000000,120,472,c.sw,0)

# rs2_val == 4503599627370496, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0010000000000000; immval:8
TEST_STORE(x1,x2,0,x10,x11,0x0010000000000000,8,480,c.sw,0)

# rs2_val == 9007199254740992, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0020000000000000; immval:44
TEST_STORE(x1,x2,0,x10,x11,0x0020000000000000,44,488,c.sw,0)

# rs2_val == 18014398509481984, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0040000000000000; immval:8
TEST_STORE(x1,x2,0,x10,x11,0x0040000000000000,8,496,c.sw,0)

# rs2_val == 72057594037927936, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0100000000000000; immval:12
TEST_STORE(x1,x2,0,x10,x11,0x0100000000000000,12,504,c.sw,0)

# rs2_val == 144115188075855872, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0200000000000000; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x0200000000000000,40,512,c.sw,0)

# rs2_val == 288230376151711744, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0400000000000000; immval:4
TEST_STORE(x1,x2,0,x10,x11,0x0400000000000000,4,520,c.sw,0)

# rs2_val == 576460752303423488, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x0800000000000000; immval:16
TEST_STORE(x1,x2,0,x10,x11,0x0800000000000000,16,528,c.sw,0)

# rs2_val == 1152921504606846976, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x1000000000000000; immval:76
TEST_STORE(x1,x2,0,x10,x11,0x1000000000000000,76,536,c.sw,0)

# rs2_val == 2305843009213693952, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x2000000000000000; immval:28
TEST_STORE(x1,x2,0,x10,x11,0x2000000000000000,28,544,c.sw,0)

# rs2_val == 4611686018427387904, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x4000000000000000; immval:108
TEST_STORE(x1,x2,0,x10,x11,0x4000000000000000,108,552,c.sw,0)

# rs2_val == -140737488355329, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval:60
TEST_STORE(x1,x2,0,x10,x11,0xffff7fffffffffff,60,560,c.sw,0)

# rs2_val == -281474976710657, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval:20
TEST_STORE(x1,x2,0,x10,x11,0xfffeffffffffffff,20,568,c.sw,0)

# rs2_val == -562949953421313, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xfffdffffffffffff,0,576,c.sw,0)

# rs2_val == -1125899906842625, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xfffbffffffffffff,108,584,c.sw,0)

# rs2_val == -2251799813685249, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval:60
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffffffffffff,60,592,c.sw,0)

# rs2_val == -4503599627370497, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xffefffffffffffff,40,600,c.sw,0)

# rs2_val == -9007199254740993, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval:12
TEST_STORE(x1,x2,0,x10,x11,0xffdfffffffffffff,12,608,c.sw,0)

# rs2_val == -18014398509481985, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xffbfffffffffffff,108,616,c.sw,0)

# rs2_val == -36028797018963969, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval:124
TEST_STORE(x1,x2,0,x10,x11,0xff7fffffffffffff,124,624,c.sw,0)

# rs2_val == -72057594037927937, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval:92
TEST_STORE(x1,x2,0,x10,x11,0xfeffffffffffffff,92,632,c.sw,0)

# rs2_val == -144115188075855873, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval:60
TEST_STORE(x1,x2,0,x10,x11,0xfdffffffffffffff,60,640,c.sw,0)

# rs2_val == -288230376151711745, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xfbffffffffffffff,116,648,c.sw,0)

# rs2_val == -576460752303423489, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval:92
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffffffffffff,92,656,c.sw,0)

# rs2_val == -1152921504606846977, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval:48
TEST_STORE(x1,x2,0,x10,x11,0xefffffffffffffff,48,664,c.sw,0)

# rs2_val == -2305843009213693953, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval:24
TEST_STORE(x1,x2,0,x10,x11,0xdfffffffffffffff,24,672,c.sw,0)

# rs2_val == -4611686018427387905, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval:28
TEST_STORE(x1,x2,0,x10,x11,0xbfffffffffffffff,28,680,c.sw,0)

# rs2_val == 6148914691236517205, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x5555555555555555; immval:28
TEST_STORE(x1,x2,0,x10,x11,0x5555555555555555,28,688,c.sw,0)

# rs2_val == -6148914691236517206, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval:72
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaaaaaaaaaa,72,696,c.sw,0)

# rs2_val == -2, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval:24
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffe,24,704,c.sw,0)

# rs2_val == -3, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffd,0,712,c.sw,0)

# rs2_val == -5, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffb,108,720,c.sw,0)

# rs2_val == -9, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval:4
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffff7,4,728,c.sw,0)

# rs2_val == -17, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval:12
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffef,12,736,c.sw,0)

# rs2_val == -33, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval:124
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffdf,124,744,c.sw,0)

# rs2_val == -65, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffbf,64,752,c.sw,0)

# rs2_val == -129, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval:48
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffff7f,48,760,c.sw,0)

# rs2_val == -257, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval:60
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffeff,60,768,c.sw,0)

# rs2_val == -513, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval:44
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffdff,44,776,c.sw,0)

# rs2_val == -1025, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval:124
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffbff,124,784,c.sw,0)

# rs2_val == -2049, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval:52
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffff7ff,52,792,c.sw,0)

# rs2_val == -4097, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval:92
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffefff,92,800,c.sw,0)

# rs2_val == -8193, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffdfff,0,808,c.sw,0)

# rs2_val == -16385, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffbfff,116,816,c.sw,0)

# rs2_val == -32769, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval:16
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffff7fff,16,824,c.sw,0)

# rs2_val == -131073, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval:76
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffdffff,76,832,c.sw,0)

# rs2_val == -262145, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval:4
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffbffff,4,840,c.sw,0)

# rs2_val == -524289, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval:52
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffff7ffff,52,848,c.sw,0)

# rs2_val == -1048577, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval:52
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffefffff,52,856,c.sw,0)

# rs2_val == -2097153, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval:72
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffdfffff,72,864,c.sw,0)

# rs2_val == -4194305, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval:44
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffbfffff,44,872,c.sw,0)

# rs2_val == -8388609, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xffffffffff7fffff,64,880,c.sw,0)

# rs2_val == -16777217, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval:16
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffeffffff,16,888,c.sw,0)

# rs2_val == -33554433, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval:44
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffdffffff,44,896,c.sw,0)

# rs2_val == -67108865, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval:76
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffbffffff,76,904,c.sw,0)

# rs2_val == -134217729, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval:16
TEST_STORE(x1,x2,0,x10,x11,0xfffffffff7ffffff,16,912,c.sw,0)

# rs2_val == -268435457, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval:44
TEST_STORE(x1,x2,0,x10,x11,0xffffffffefffffff,44,920,c.sw,0)

# rs2_val == -536870913, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval:16
TEST_STORE(x1,x2,0,x10,x11,0xffffffffdfffffff,16,928,c.sw,0)

# rs2_val == -2147483649, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval:56
TEST_STORE(x1,x2,0,x10,x11,0xffffffff7fffffff,56,936,c.sw,0)

# rs2_val == -4294967297, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval:60
TEST_STORE(x1,x2,0,x10,x11,0xfffffffeffffffff,60,944,c.sw,0)

# rs2_val == -8589934593, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xfffffffdffffffff,64,952,c.sw,0)

# rs2_val == -17179869185, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval:124
TEST_STORE(x1,x2,0,x10,x11,0xfffffffbffffffff,124,960,c.sw,0)

# rs2_val == -34359738369, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval:76
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7ffffffff,76,968,c.sw,0)

# rs2_val == -68719476737, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval:72
TEST_STORE(x1,x2,0,x10,x11,0xffffffefffffffff,72,976,c.sw,0)

# rs2_val == -137438953473, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xffffffdfffffffff,64,984,c.sw,0)

# rs2_val == -274877906945, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval:72
TEST_STORE(x1,x2,0,x10,x11,0xffffffbfffffffff,72,992,c.sw,0)

# rs2_val == -549755813889, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval:20
TEST_STORE(x1,x2,0,x10,x11,0xffffff7fffffffff,20,1000,c.sw,0)

# rs2_val == -1099511627777, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xfffffeffffffffff,116,1008,c.sw,0)

# rs2_val == -2199023255553, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xfffffdffffffffff,64,1016,c.sw,0)

# rs2_val == -4398046511105, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval:12
TEST_STORE(x1,x2,0,x10,x11,0xfffffbffffffffff,12,1024,c.sw,0)

# rs2_val == -8796093022209, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval:124
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ffffffffff,124,1032,c.sw,0)

# rs2_val == -17592186044417, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval:52
TEST_STORE(x1,x2,0,x10,x11,0xffffefffffffffff,52,1040,c.sw,0)

# rs2_val == -35184372088833, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xffffdfffffffffff,0,1048,c.sw,0)

# rs2_val == -70368744177665, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval:24
TEST_STORE(x1,x2,0,x10,x11,0xffffbfffffffffff,24,1056,c.sw,0)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 133*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
