
#This assembly file tests the sw instruction of the RISC-V I extension for the sw-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sw-align)

RVTEST_SIGBASE( x15,signature_x15_1)

# rs1 != rs2, rs1==x13, rs2==x22, ea_align == 0 and (imm_val % 4) == 0, rs2_val == 512, imm_val > 0
# opcode: sw; op1:x13; op2:x22; op2val:0x00000200; immval:64; align:0
TEST_STORE(x15,x9,0,x13,x22,0x00000200,64,0,sw,0)

# rs1==x26, rs2==x2, ea_align == 0 and (imm_val % 4) == 1, rs2_val == -262145, imm_val < 0
# opcode: sw; op1:x26; op2:x2; op2val:0xfffbffff; immval:-7; align:0
TEST_STORE(x15,x9,0,x26,x2,0xfffbffff,-7,4,sw,0)

# rs1==x10, rs2==x19, ea_align == 0 and (imm_val % 4) == 2, rs2_val == -65537
# opcode: sw; op1:x10; op2:x19; op2val:0xfffeffff; immval:6; align:0
TEST_STORE(x15,x9,0,x10,x19,0xfffeffff,6,8,sw,0)

# rs1==x14, rs2==x6, ea_align == 0 and (imm_val % 4) == 3, 
# opcode: sw; op1:x14; op2:x6; op2val:0xfffffffc; immval:-513; align:0
TEST_STORE(x15,x9,0,x14,x6,0xfffffffc,-513,12,sw,0)

# rs1==x24, rs2==x11, imm_val == 0, rs2_val == 1048576
# opcode: sw; op1:x24; op2:x11; op2val:0x00100000; immval:0; align:0
TEST_STORE(x15,x9,0,x24,x11,0x00100000,0,16,sw,0)

# rs1==x8, rs2==x29, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode: sw; op1:x8; op2:x29; op2val:0x80000000; immval:1024; align:0
TEST_STORE(x15,x9,0,x8,x29,0x80000000,1024,20,sw,0)

# rs1==x18, rs2==x0, rs2_val == 0, 
# opcode: sw; op1:x18; op2:x0; op2val:0x00000000; immval:32; align:0
TEST_STORE(x15,x9,0,x18,x0,0x00000000,32,24,sw,0)

# rs1==x28, rs2==x12, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647
# opcode: sw; op1:x28; op2:x12; op2val:0x7fffffff; immval:9; align:0
TEST_STORE(x15,x9,0,x28,x12,0x7fffffff,9,28,sw,0)

# rs1==x23, rs2==x13, rs2_val == 1, 
# opcode: sw; op1:x23; op2:x13; op2val:0x00000001; immval:-7; align:0
TEST_STORE(x15,x9,0,x23,x13,0x00000001,-7,32,sw,0)

# rs1==x21, rs2==x7, rs2_val == 2, 
# opcode: sw; op1:x21; op2:x7; op2val:0x00000002; immval:-2; align:0
TEST_STORE(x15,x9,0,x21,x7,0x00000002,-2,36,sw,0)

# rs1==x16, rs2==x28, rs2_val == 4, 
# opcode: sw; op1:x16; op2:x28; op2val:0x00000004; immval:-33; align:0
TEST_STORE(x15,x9,0,x16,x28,0x00000004,-33,40,sw,0)

# rs1==x17, rs2==x3, rs2_val == 8, 
# opcode: sw; op1:x17; op2:x3; op2val:0x00000008; immval:-2; align:0
TEST_STORE(x15,x9,0,x17,x3,0x00000008,-2,44,sw,0)

# rs1==x31, rs2==x30, rs2_val == 16, 
# opcode: sw; op1:x31; op2:x30; op2val:0x00000010; immval:-129; align:0
TEST_STORE(x15,x9,0,x31,x30,0x00000010,-129,48,sw,0)

# rs1==x12, rs2==x1, rs2_val == 32, 
# opcode: sw; op1:x12; op2:x1; op2val:0x00000020; immval:-9; align:0
TEST_STORE(x15,x9,0,x12,x1,0x00000020,-9,52,sw,0)

# rs1==x11, rs2==x16, rs2_val == 64, 
# opcode: sw; op1:x11; op2:x16; op2val:0x00000040; immval:1; align:0
TEST_STORE(x15,x9,0,x11,x16,0x00000040,1,56,sw,0)

# rs1==x3, rs2==x5, rs2_val == 128, 
# opcode: sw; op1:x3; op2:x5; op2val:0x00000080; immval:2047; align:0
TEST_STORE(x15,x9,0,x3,x5,0x00000080,2047,60,sw,0)

# rs1==x4, rs2==x21, rs2_val == 256, 
# opcode: sw; op1:x4; op2:x21; op2val:0x00000100; immval:-6; align:0
TEST_STORE(x15,x9,0,x4,x21,0x00000100,-6,64,sw,0)

# rs1==x30, rs2==x17, rs2_val == 1024, 
# opcode: sw; op1:x30; op2:x17; op2val:0x00000400; immval:3; align:0
TEST_STORE(x15,x9,0,x30,x17,0x00000400,3,68,sw,0)

# rs1==x19, rs2==x26, rs2_val == 2048, 
# opcode: sw; op1:x19; op2:x26; op2val:0x00000800; immval:2047; align:0
TEST_STORE(x15,x9,0,x19,x26,0x00000800,2047,72,sw,0)

# rs1==x25, rs2==x8, rs2_val == 4096, 
# opcode: sw; op1:x25; op2:x8; op2val:0x00001000; immval:6; align:0
TEST_STORE(x15,x9,0,x25,x8,0x00001000,6,76,sw,0)

# rs1==x29, rs2==x4, rs2_val == 8192, 
# opcode: sw; op1:x29; op2:x4; op2val:0x00002000; immval:-9; align:0
TEST_STORE(x15,x3,0,x29,x4,0x00002000,-9,80,sw,0)

# rs1==x1, rs2==x9, rs2_val == 16384, 
# opcode: sw; op1:x1; op2:x9; op2val:0x00004000; immval:-2048; align:0
TEST_STORE(x15,x3,0,x1,x9,0x00004000,-2048,84,sw,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x7, rs2==x18, rs2_val == 32768, 
# opcode: sw; op1:x7; op2:x18; op2val:0x00008000; immval:6; align:0
TEST_STORE(x1,x3,0,x7,x18,0x00008000,6,0,sw,0)

# rs1==x9, rs2==x23, rs2_val == 65536, 
# opcode: sw; op1:x9; op2:x23; op2val:0x00010000; immval:128; align:0
TEST_STORE(x1,x3,0,x9,x23,0x00010000,128,4,sw,0)

# rs1==x20, rs2==x15, rs2_val == 131072, 
# opcode: sw; op1:x20; op2:x15; op2val:0x00020000; immval:7; align:0
TEST_STORE(x1,x3,0,x20,x15,0x00020000,7,8,sw,0)

# rs1==x22, rs2==x10, rs2_val == 262144, 
# opcode: sw; op1:x22; op2:x10; op2val:0x00040000; immval:-33; align:0
TEST_STORE(x1,x3,0,x22,x10,0x00040000,-33,12,sw,0)

# rs1==x5, rs2==x27, rs2_val == 524288, 
# opcode: sw; op1:x5; op2:x27; op2val:0x00080000; immval:-3; align:0
TEST_STORE(x1,x3,0,x5,x27,0x00080000,-3,16,sw,0)

# rs1==x27, rs2==x31, rs2_val == 2097152, 
# opcode: sw; op1:x27; op2:x31; op2val:0x00200000; immval:1; align:0
TEST_STORE(x1,x3,0,x27,x31,0x00200000,1,20,sw,0)

# rs1==x15, rs2==x14, rs2_val == 4194304, 
# opcode: sw; op1:x15; op2:x14; op2val:0x00400000; immval:-6; align:0
TEST_STORE(x1,x3,0,x15,x14,0x00400000,-6,24,sw,0)

# rs1==x2, rs2==x20, rs2_val == 8388608, 
# opcode: sw; op1:x2; op2:x20; op2val:0x00800000; immval:-3; align:0
TEST_STORE(x1,x3,0,x2,x20,0x00800000,-3,28,sw,0)

# rs1==x6, rs2==x24, rs2_val == 16777216, 
# opcode: sw; op1:x6; op2:x24; op2val:0x01000000; immval:-2048; align:0
TEST_STORE(x1,x3,0,x6,x24,0x01000000,-2048,32,sw,0)

# rs2==x25, rs2_val == 33554432, 
# opcode: sw; op1:x22; op2:x25; op2val:0x02000000; immval:3; align:0
TEST_STORE(x1,x3,0,x22,x25,0x02000000,3,36,sw,0)

# rs2_val == 67108864, 
# opcode: sw; op1:x10; op2:x11; op2val:0x04000000; immval:7; align:0
TEST_STORE(x1,x3,0,x10,x11,0x04000000,7,40,sw,0)

# rs2_val == 134217728, 
# opcode: sw; op1:x10; op2:x11; op2val:0x08000000; immval:9; align:0
TEST_STORE(x1,x3,0,x10,x11,0x08000000,9,44,sw,0)

# rs2_val == 268435456, 
# opcode: sw; op1:x10; op2:x11; op2val:0x10000000; immval:1; align:0
TEST_STORE(x1,x3,0,x10,x11,0x10000000,1,48,sw,0)

# rs2_val == 536870912, 
# opcode: sw; op1:x10; op2:x11; op2val:0x20000000; immval:-33; align:0
TEST_STORE(x1,x3,0,x10,x11,0x20000000,-33,52,sw,0)

# rs2_val == 1073741824, 
# opcode: sw; op1:x10; op2:x11; op2val:0x40000000; immval:16; align:0
TEST_STORE(x1,x3,0,x10,x11,0x40000000,16,56,sw,0)

# rs2_val == -4194305, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffbfffff; immval:-2; align:0
TEST_STORE(x1,x3,0,x10,x11,0xffbfffff,-2,60,sw,0)

# rs2_val == -8388609, 
# opcode: sw; op1:x10; op2:x11; op2val:0xff7fffff; immval:-8; align:0
TEST_STORE(x1,x3,0,x10,x11,0xff7fffff,-8,64,sw,0)

# rs2_val == -16777217, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfeffffff; immval:-1; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfeffffff,-1,68,sw,0)

# rs2_val == -33554433, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfdffffff; immval:-9; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfdffffff,-9,72,sw,0)

# rs2_val == -67108865, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfbffffff; immval:7; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfbffffff,7,76,sw,0)

# rs2_val == -134217729, 
# opcode: sw; op1:x10; op2:x11; op2val:0xf7ffffff; immval:9; align:0
TEST_STORE(x1,x3,0,x10,x11,0xf7ffffff,9,80,sw,0)

# rs2_val == -268435457, 
# opcode: sw; op1:x10; op2:x11; op2val:0xefffffff; immval:1; align:0
TEST_STORE(x1,x3,0,x10,x11,0xefffffff,1,84,sw,0)

# rs2_val == -536870913, 
# opcode: sw; op1:x10; op2:x11; op2val:0xdfffffff; immval:7; align:0
TEST_STORE(x1,x3,0,x10,x11,0xdfffffff,7,88,sw,0)

# rs2_val == -1073741825, 
# opcode: sw; op1:x10; op2:x11; op2val:0xbfffffff; immval:2; align:0
TEST_STORE(x1,x3,0,x10,x11,0xbfffffff,2,92,sw,0)

# rs2_val == 1431655765, 
# opcode: sw; op1:x10; op2:x11; op2val:0x55555555; immval:256; align:0
TEST_STORE(x1,x3,0,x10,x11,0x55555555,256,96,sw,0)

# rs2_val == -1431655766, 
# opcode: sw; op1:x10; op2:x11; op2val:0xaaaaaaaa; immval:-65; align:0
TEST_STORE(x1,x3,0,x10,x11,0xaaaaaaaa,-65,100,sw,0)

# rs2_val == -2, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffe; immval:-65; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfffffffe,-65,104,sw,0)

# rs2_val == -3, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffd; immval:-1025; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfffffffd,-1025,108,sw,0)

# rs2_val == -5, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffb; immval:-65; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfffffffb,-65,112,sw,0)

# rs2_val == -9, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffff7; immval:128; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfffffff7,128,116,sw,0)

# rs2_val == -17, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffef; immval:1; align:0
TEST_STORE(x1,x3,0,x10,x11,0xffffffef,1,120,sw,0)

# rs2_val == -33, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffdf; immval:-33; align:0
TEST_STORE(x1,x3,0,x10,x11,0xffffffdf,-33,124,sw,0)

# rs2_val == -65, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffffbf; immval:0; align:0
TEST_STORE(x1,x3,0,x10,x11,0xffffffbf,0,128,sw,0)

# rs2_val == -129, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffff7f; immval:-5; align:0
TEST_STORE(x1,x3,0,x10,x11,0xffffff7f,-5,132,sw,0)

# rs2_val == -257, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffeff; immval:-257; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfffffeff,-257,136,sw,0)

# rs2_val == -513, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffdff; immval:-8; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfffffdff,-8,140,sw,0)

# rs2_val == -1025, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffffbff; immval:-17; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfffffbff,-17,144,sw,0)

# rs2_val == -2049, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffff7ff; immval:1024; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfffff7ff,1024,148,sw,0)

# rs2_val == -4097, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffefff; immval:256; align:0
TEST_STORE(x1,x3,0,x10,x11,0xffffefff,256,152,sw,0)

# rs2_val == -8193, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffdfff; immval:1; align:0
TEST_STORE(x1,x3,0,x10,x11,0xffffdfff,1,156,sw,0)

# rs2_val == -16385, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffffbfff; immval:512; align:0
TEST_STORE(x1,x3,0,x10,x11,0xffffbfff,512,160,sw,0)

# rs2_val == -32769, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffff7fff; immval:9; align:0
TEST_STORE(x1,x3,0,x10,x11,0xffff7fff,9,164,sw,0)

# rs2_val == -131073, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfffdffff; immval:4; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfffdffff,4,168,sw,0)

# rs2_val == -524289, 
# opcode: sw; op1:x10; op2:x11; op2val:0xfff7ffff; immval:-17; align:0
TEST_STORE(x1,x3,0,x10,x11,0xfff7ffff,-17,172,sw,0)

# rs2_val == -1048577, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffefffff; immval:32; align:0
TEST_STORE(x1,x3,0,x10,x11,0xffefffff,32,176,sw,0)

# rs2_val == -2097153, 
# opcode: sw; op1:x10; op2:x11; op2val:0xffdfffff; immval:-17; align:0
TEST_STORE(x1,x3,0,x10,x11,0xffdfffff,-17,180,sw,0)

# rs2_val == 0, 
# opcode: sw; op1:x10; op2:x11; op2val:0x00000000; immval:32; align:0
TEST_STORE(x1,x3,0,x10,x11,0x00000000,32,184,sw,0)
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

signature_x15_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 47*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
