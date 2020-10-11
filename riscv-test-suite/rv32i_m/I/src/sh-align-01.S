
#This assembly file tests the sh instruction of the RISC-V I extension for the sh-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sh-align)

la x9,signature_x9_1

# rs1 != rs2, rs1==x19, rs2==x26, ea_align == 0 and (imm_val % 4) == 0, imm_val > 0, rs2_val == -268435457
# opcode: sh; op1:x19; op2:x26; op2val:0xefffffff; immval:16; align:0
TEST_STORE(x9,x15,0,x19,x26,0xefffffff,16,0,sh,0)

# rs1==x25, rs2==x12, ea_align == 0 and (imm_val % 4) == 1, rs2_val == 8192
# opcode: sh; op1:x25; op2:x12; op2val:0x00002000; immval:9; align:0
TEST_STORE(x9,x15,0,x25,x12,0x00002000,9,4,sh,0)

# rs1==x12, rs2==x16, ea_align == 0 and (imm_val % 4) == 2, rs2_val == -65
# opcode: sh; op1:x12; op2:x16; op2val:0xffffffbf; immval:6; align:0
TEST_STORE(x9,x15,0,x12,x16,0xffffffbf,6,8,sh,0)

# rs1==x28, rs2==x23, ea_align == 0 and (imm_val % 4) == 3, 
# opcode: sh; op1:x28; op2:x23; op2val:0x00000009; immval:3; align:0
TEST_STORE(x9,x15,0,x28,x23,0x00000009,3,12,sh,0)

# rs1==x8, rs2==x24, ea_align == 2 and (imm_val % 4) == 0, rs2_val == 4194304
# opcode: sh; op1:x8; op2:x24; op2val:0x00400000; immval:4; align:2
TEST_STORE(x9,x15,0,x8,x24,0x00400000,4,16,sh,2)

# rs1==x26, rs2==x11, ea_align == 2 and (imm_val % 4) == 1, rs2_val == -5, imm_val < 0
# opcode: sh; op1:x26; op2:x11; op2val:0xfffffffb; immval:-7; align:2
TEST_STORE(x9,x15,0,x26,x11,0xfffffffb,-7,20,sh,2)

# rs1==x10, rs2==x5, ea_align == 2 and (imm_val % 4) == 2, rs2_val == 1024
# opcode: sh; op1:x10; op2:x5; op2val:0x00000400; immval:-2; align:2
TEST_STORE(x9,x15,0,x10,x5,0x00000400,-2,24,sh,2)

# rs1==x5, rs2==x7, ea_align == 2 and (imm_val % 4) == 3, rs2_val == 8388608
# opcode: sh; op1:x5; op2:x7; op2val:0x00800000; immval:2047; align:2
TEST_STORE(x9,x15,0,x5,x7,0x00800000,2047,28,sh,2)

# rs1==x7, rs2==x29, imm_val == 0, rs2_val == -257
# opcode: sh; op1:x7; op2:x29; op2val:0xfffffeff; immval:0; align:0
TEST_STORE(x9,x15,0,x7,x29,0xfffffeff,0,32,sh,0)

# rs1==x3, rs2==x13, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode: sh; op1:x3; op2:x13; op2val:0x80000000; immval:5; align:0
TEST_STORE(x9,x15,0,x3,x13,0x80000000,5,36,sh,0)

# rs1==x11, rs2==x27, rs2_val == 0, 
# opcode: sh; op1:x11; op2:x27; op2val:0x00000000; immval:-513; align:0
TEST_STORE(x9,x15,0,x11,x27,0x00000000,-513,40,sh,0)

# rs1==x4, rs2==x8, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647
# opcode: sh; op1:x4; op2:x8; op2val:0x7fffffff; immval:3; align:0
TEST_STORE(x9,x15,0,x4,x8,0x7fffffff,3,44,sh,0)

# rs1==x24, rs2==x0, rs2_val == 1, 
# opcode: sh; op1:x24; op2:x0; op2val:0x00000001; immval:2; align:0
TEST_STORE(x9,x15,0,x24,x0,0x00000001,2,48,sh,0)

# rs1==x13, rs2==x17, rs2_val == 2, 
# opcode: sh; op1:x13; op2:x17; op2val:0x00000002; immval:-7; align:0
TEST_STORE(x9,x15,0,x13,x17,0x00000002,-7,52,sh,0)

# rs1==x29, rs2==x31, rs2_val == 4, 
# opcode: sh; op1:x29; op2:x31; op2val:0x00000004; immval:-6; align:0
TEST_STORE(x9,x15,0,x29,x31,0x00000004,-6,56,sh,0)

# rs1==x2, rs2==x20, rs2_val == 8, 
# opcode: sh; op1:x2; op2:x20; op2val:0x00000008; immval:-10; align:0
TEST_STORE(x9,x15,0,x2,x20,0x00000008,-10,60,sh,0)

# rs1==x23, rs2==x4, rs2_val == 16, 
# opcode: sh; op1:x23; op2:x4; op2val:0x00000010; immval:-1024; align:0
TEST_STORE(x9,x15,0,x23,x4,0x00000010,-1024,64,sh,0)

# rs1==x18, rs2==x6, rs2_val == 32, 
# opcode: sh; op1:x18; op2:x6; op2val:0x00000020; immval:-1366; align:0
TEST_STORE(x9,x15,0,x18,x6,0x00000020,-1366,68,sh,0)

# rs1==x22, rs2==x14, rs2_val == 64, 
# opcode: sh; op1:x22; op2:x14; op2val:0x00000040; immval:-3; align:0
TEST_STORE(x9,x15,0,x22,x14,0x00000040,-3,72,sh,0)

# rs1==x6, rs2==x1, rs2_val == 128, 
# opcode: sh; op1:x6; op2:x1; op2val:0x00000080; immval:1365; align:0
TEST_STORE(x9,x15,0,x6,x1,0x00000080,1365,76,sh,0)

# rs1==x16, rs2==x18, rs2_val == 256, 
# opcode: sh; op1:x16; op2:x18; op2val:0x00000100; immval:1365; align:0
TEST_STORE(x9,x5,0,x16,x18,0x00000100,1365,80,sh,0)

# rs1==x21, rs2==x10, rs2_val == 512, 
# opcode: sh; op1:x21; op2:x10; op2val:0x00000200; immval:1023; align:0
TEST_STORE(x9,x5,0,x21,x10,0x00000200,1023,84,sh,0)
la x4,signature_x4_0

# rs1==x20, rs2==x9, rs2_val == 2048, 
# opcode: sh; op1:x20; op2:x9; op2val:0x00000800; immval:1023; align:0
TEST_STORE(x4,x5,0,x20,x9,0x00000800,1023,0,sh,0)

# rs1==x30, rs2==x25, rs2_val == 4096, 
# opcode: sh; op1:x30; op2:x25; op2val:0x00001000; immval:-8; align:0
TEST_STORE(x4,x5,0,x30,x25,0x00001000,-8,4,sh,0)

# rs1==x1, rs2==x30, rs2_val == 16384, 
# opcode: sh; op1:x1; op2:x30; op2val:0x00004000; immval:-1025; align:0
TEST_STORE(x4,x5,0,x1,x30,0x00004000,-1025,8,sh,0)

# rs1==x27, rs2==x19, rs2_val == 32768, 
# opcode: sh; op1:x27; op2:x19; op2val:0x00008000; immval:-33; align:0
TEST_STORE(x4,x5,0,x27,x19,0x00008000,-33,12,sh,0)

# rs1==x17, rs2==x2, rs2_val == 65536, 
# opcode: sh; op1:x17; op2:x2; op2val:0x00010000; immval:-1; align:0
TEST_STORE(x4,x5,0,x17,x2,0x00010000,-1,16,sh,0)

# rs1==x15, rs2==x22, rs2_val == 131072, 
# opcode: sh; op1:x15; op2:x22; op2val:0x00020000; immval:-9; align:0
TEST_STORE(x4,x5,0,x15,x22,0x00020000,-9,20,sh,0)

# rs1==x9, rs2==x21, rs2_val == 262144, 
# opcode: sh; op1:x9; op2:x21; op2val:0x00040000; immval:-1025; align:0
TEST_STORE(x4,x5,0,x9,x21,0x00040000,-1025,24,sh,0)

# rs1==x14, rs2==x3, rs2_val == 524288, 
# opcode: sh; op1:x14; op2:x3; op2val:0x00080000; immval:8; align:0
TEST_STORE(x4,x5,0,x14,x3,0x00080000,8,28,sh,0)

# rs1==x31, rs2==x28, rs2_val == 1048576, 
# opcode: sh; op1:x31; op2:x28; op2val:0x00100000; immval:-513; align:0
TEST_STORE(x4,x5,0,x31,x28,0x00100000,-513,32,sh,0)

# rs2==x15, rs2_val == 2097152, 
# opcode: sh; op1:x21; op2:x15; op2val:0x00200000; immval:2047; align:0
TEST_STORE(x4,x5,0,x21,x15,0x00200000,2047,36,sh,0)

# rs2_val == 16777216, 
# opcode: sh; op1:x10; op2:x11; op2val:0x01000000; immval:8; align:0
TEST_STORE(x4,x5,0,x10,x11,0x01000000,8,40,sh,0)

# rs2_val == 33554432, 
# opcode: sh; op1:x10; op2:x11; op2val:0x02000000; immval:64; align:0
TEST_STORE(x4,x5,0,x10,x11,0x02000000,64,44,sh,0)

# rs2_val == 67108864, 
# opcode: sh; op1:x10; op2:x11; op2val:0x04000000; immval:-65; align:0
TEST_STORE(x4,x5,0,x10,x11,0x04000000,-65,48,sh,0)

# rs2_val == 134217728, 
# opcode: sh; op1:x10; op2:x11; op2val:0x08000000; immval:1; align:0
TEST_STORE(x4,x5,0,x10,x11,0x08000000,1,52,sh,0)

# rs2_val == 268435456, 
# opcode: sh; op1:x10; op2:x11; op2val:0x10000000; immval:4; align:0
TEST_STORE(x4,x5,0,x10,x11,0x10000000,4,56,sh,0)

# rs2_val == -262145, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffbffff; immval:2047; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfffbffff,2047,60,sh,0)

# rs2_val == -524289, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfff7ffff; immval:-33; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfff7ffff,-33,64,sh,0)

# rs2_val == -1048577, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffefffff; immval:-8; align:0
TEST_STORE(x4,x5,0,x10,x11,0xffefffff,-8,68,sh,0)

# rs2_val == -2097153, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffdfffff; immval:-2; align:0
TEST_STORE(x4,x5,0,x10,x11,0xffdfffff,-2,72,sh,0)

# rs2_val == -4194305, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffbfffff; immval:-129; align:0
TEST_STORE(x4,x5,0,x10,x11,0xffbfffff,-129,76,sh,0)

# rs2_val == -8388609, 
# opcode: sh; op1:x10; op2:x11; op2val:0xff7fffff; immval:-10; align:0
TEST_STORE(x4,x5,0,x10,x11,0xff7fffff,-10,80,sh,0)

# rs2_val == -16777217, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfeffffff; immval:-513; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfeffffff,-513,84,sh,0)

# rs2_val == -33554433, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfdffffff; immval:128; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfdffffff,128,88,sh,0)

# rs2_val == -67108865, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfbffffff; immval:7; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfbffffff,7,92,sh,0)

# rs2_val == -134217729, 
# opcode: sh; op1:x10; op2:x11; op2val:0xf7ffffff; immval:-65; align:0
TEST_STORE(x4,x5,0,x10,x11,0xf7ffffff,-65,96,sh,0)

# rs2_val == -536870913, 
# opcode: sh; op1:x10; op2:x11; op2val:0xdfffffff; immval:32; align:0
TEST_STORE(x4,x5,0,x10,x11,0xdfffffff,32,100,sh,0)

# rs2_val == -1073741825, 
# opcode: sh; op1:x10; op2:x11; op2val:0xbfffffff; immval:-129; align:0
TEST_STORE(x4,x5,0,x10,x11,0xbfffffff,-129,104,sh,0)

# rs2_val == 1431655765, 
# opcode: sh; op1:x10; op2:x11; op2val:0x55555555; immval:2047; align:0
TEST_STORE(x4,x5,0,x10,x11,0x55555555,2047,108,sh,0)

# rs2_val == -1431655766, 
# opcode: sh; op1:x10; op2:x11; op2val:0xaaaaaaaa; immval:-3; align:0
TEST_STORE(x4,x5,0,x10,x11,0xaaaaaaaa,-3,112,sh,0)

# rs2_val == 536870912, 
# opcode: sh; op1:x10; op2:x11; op2val:0x20000000; immval:-10; align:0
TEST_STORE(x4,x5,0,x10,x11,0x20000000,-10,116,sh,0)

# rs2_val == 1073741824, 
# opcode: sh; op1:x10; op2:x11; op2val:0x40000000; immval:-6; align:0
TEST_STORE(x4,x5,0,x10,x11,0x40000000,-6,120,sh,0)

# rs2_val == -2, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffe; immval:2; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfffffffe,2,124,sh,0)

# rs2_val == -3, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffd; immval:-257; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfffffffd,-257,128,sh,0)

# rs2_val == -9, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffff7; immval:32; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfffffff7,32,132,sh,0)

# rs2_val == -17, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffef; immval:-257; align:0
TEST_STORE(x4,x5,0,x10,x11,0xffffffef,-257,136,sh,0)

# rs2_val == -33, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffffdf; immval:-1366; align:0
TEST_STORE(x4,x5,0,x10,x11,0xffffffdf,-1366,140,sh,0)

# rs2_val == -129, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffff7f; immval:-1; align:0
TEST_STORE(x4,x5,0,x10,x11,0xffffff7f,-1,144,sh,0)

# rs2_val == -513, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffdff; immval:-33; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfffffdff,-33,148,sh,0)

# rs2_val == -1025, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffffbff; immval:64; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfffffbff,64,152,sh,0)

# rs2_val == -2049, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffff7ff; immval:-2; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfffff7ff,-2,156,sh,0)

# rs2_val == -4097, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffefff; immval:-1366; align:0
TEST_STORE(x4,x5,0,x10,x11,0xffffefff,-1366,160,sh,0)

# rs2_val == -8193, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffdfff; immval:4; align:0
TEST_STORE(x4,x5,0,x10,x11,0xffffdfff,4,164,sh,0)

# rs2_val == -16385, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffffbfff; immval:-2048; align:0
TEST_STORE(x4,x5,0,x10,x11,0xffffbfff,-2048,168,sh,0)

# rs2_val == -32769, 
# opcode: sh; op1:x10; op2:x11; op2val:0xffff7fff; immval:3; align:0
TEST_STORE(x4,x5,0,x10,x11,0xffff7fff,3,172,sh,0)

# rs2_val == -65537, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffeffff; immval:-17; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfffeffff,-17,176,sh,0)

# rs2_val == -131073, 
# opcode: sh; op1:x10; op2:x11; op2val:0xfffdffff; immval:1023; align:0
TEST_STORE(x4,x5,0,x10,x11,0xfffdffff,1023,180,sh,0)

# rs2_val == 1, 
# opcode: sh; op1:x10; op2:x11; op2val:0x00000001; immval:2; align:0
TEST_STORE(x4,x5,0,x10,x11,0x00000001,2,184,sh,0)
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

signature_x9_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x9_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x4_0:
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
