
#This assembly file tests the sb instruction of the RISC-V I extension for the sb-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sb-align)

RVTEST_SIGBASE( x18,signature_x18_1)

# rs1 != rs2, rs1==x1, rs2==x11, ea_align == 0 and (imm_val % 4) == 0, imm_val > 0, rs2_val == 2048
# opcode: sb; op1:x1; op2:x11; op2val:0x00000800; immval:16; align:0
TEST_STORE(x18,x26,0,x1,x11,0x00000800,16,0,sb,0)

# rs1==x3, rs2==x15, ea_align == 0 and (imm_val % 4) == 1, rs2_val == -65
# opcode: sb; op1:x3; op2:x15; op2val:0xffffffbf; immval:1; align:0
TEST_STORE(x18,x26,0,x3,x15,0xffffffbf,1,4,sb,0)

# rs1==x19, rs2==x4, ea_align == 0 and (imm_val % 4) == 2, imm_val < 0, rs2_val == -8193
# opcode: sb; op1:x19; op2:x4; op2val:0xffffdfff; immval:-6; align:0
TEST_STORE(x18,x26,0,x19,x4,0xffffdfff,-6,8,sb,0)

# rs1==x29, rs2==x9, ea_align == 0 and (imm_val % 4) == 3, rs2_val == -8388609
# opcode: sb; op1:x29; op2:x9; op2val:0xff7fffff; immval:3; align:0
TEST_STORE(x18,x26,0,x29,x9,0xff7fffff,3,12,sb,0)

# rs1==x21, rs2==x27, ea_align == 2 and (imm_val % 4) == 0, rs2_val == 1048576
# opcode: sb; op1:x21; op2:x27; op2val:0x00100000; immval:512; align:2
TEST_STORE(x18,x26,0,x21,x27,0x00100000,512,16,sb,2)

# rs1==x8, rs2==x14, ea_align == 2 and (imm_val % 4) == 1, rs2_val == 512
# opcode: sb; op1:x8; op2:x14; op2val:0x00000200; immval:1; align:2
TEST_STORE(x18,x26,0,x8,x14,0x00000200,1,20,sb,2)

# rs1==x22, rs2==x23, ea_align == 2 and (imm_val % 4) == 2, 
# opcode: sb; op1:x22; op2:x23; op2val:0xc0000000; immval:-10; align:2
TEST_STORE(x18,x26,0,x22,x23,0xc0000000,-10,24,sb,2)

# rs1==x20, rs2==x12, ea_align == 2 and (imm_val % 4) == 3, rs2_val == 8
# opcode: sb; op1:x20; op2:x12; op2val:0x00000008; immval:7; align:2
TEST_STORE(x18,x26,0,x20,x12,0x00000008,7,28,sb,2)

# rs1==x4, rs2==x7, ea_align == 1 and (imm_val % 4) == 0, imm_val == 0, rs2_val == 536870912
# opcode: sb; op1:x4; op2:x7; op2val:0x20000000; immval:0; align:1
TEST_STORE(x18,x26,0,x4,x7,0x20000000,0,32,sb,1)

# rs1==x28, rs2==x2, ea_align == 1 and (imm_val % 4) == 1, rs2_val == -268435457
# opcode: sb; op1:x28; op2:x2; op2val:0xefffffff; immval:1; align:1
TEST_STORE(x18,x26,0,x28,x2,0xefffffff,1,36,sb,1)

# rs1==x5, rs2==x30, ea_align == 1 and (imm_val % 4) == 2, rs2_val == 4194304
# opcode: sb; op1:x5; op2:x30; op2val:0x00400000; immval:6; align:1
TEST_STORE(x18,x26,0,x5,x30,0x00400000,6,40,sb,1)

# rs1==x9, rs2==x24, ea_align == 1 and (imm_val % 4) == 3, 
# opcode: sb; op1:x9; op2:x24; op2val:0xffffdfff; immval:7; align:1
TEST_STORE(x18,x26,0,x9,x24,0xffffdfff,7,44,sb,1)

# rs1==x16, rs2==x20, ea_align == 3 and (imm_val % 4) == 0, rs2_val == -513
# opcode: sb; op1:x16; op2:x20; op2val:0xfffffdff; immval:4; align:3
TEST_STORE(x18,x26,0,x16,x20,0xfffffdff,4,48,sb,3)

# rs1==x12, rs2==x21, ea_align == 3 and (imm_val % 4) == 1, rs2_val == 8388608
# opcode: sb; op1:x12; op2:x21; op2val:0x00800000; immval:1365; align:3
TEST_STORE(x18,x26,0,x12,x21,0x00800000,1365,52,sb,3)

# rs1==x10, rs2==x22, ea_align == 3 and (imm_val % 4) == 2, rs2_val == -1431655766
# opcode: sb; op1:x10; op2:x22; op2val:0xaaaaaaaa; immval:-2; align:3
TEST_STORE(x18,x26,0,x10,x22,0xaaaaaaaa,-2,56,sb,3)

# rs1==x11, rs2==x10, ea_align == 3 and (imm_val % 4) == 3, rs2_val == -257
# opcode: sb; op1:x11; op2:x10; op2val:0xfffffeff; immval:-129; align:3
TEST_STORE(x18,x26,0,x11,x10,0xfffffeff,-129,60,sb,3)

# rs1==x17, rs2==x25, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode: sb; op1:x17; op2:x25; op2val:0x80000000; immval:2047; align:0
TEST_STORE(x18,x26,0,x17,x25,0x80000000,2047,64,sb,0)

# rs1==x6, rs2==x13, rs2_val == 0, 
# opcode: sb; op1:x6; op2:x13; op2val:0x00000000; immval:512; align:0
TEST_STORE(x18,x26,0,x6,x13,0x00000000,512,68,sb,0)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x15, rs2==x1, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647
# opcode: sb; op1:x15; op2:x1; op2val:0x7fffffff; immval:16; align:0
TEST_STORE(x4,x9,0,x15,x1,0x7fffffff,16,0,sb,0)

# rs1==x14, rs2==x31, rs2_val == 1, 
# opcode: sb; op1:x14; op2:x31; op2val:0x00000001; immval:-3; align:0
TEST_STORE(x4,x9,0,x14,x31,0x00000001,-3,4,sb,0)

# rs1==x24, rs2==x6, rs2_val == 2, 
# opcode: sb; op1:x24; op2:x6; op2val:0x00000002; immval:2047; align:0
TEST_STORE(x4,x9,0,x24,x6,0x00000002,2047,8,sb,0)

# rs1==x2, rs2==x19, rs2_val == 4, 
# opcode: sb; op1:x2; op2:x19; op2val:0x00000004; immval:2; align:0
TEST_STORE(x4,x9,0,x2,x19,0x00000004,2,12,sb,0)

# rs1==x7, rs2==x26, rs2_val == 16, 
# opcode: sb; op1:x7; op2:x26; op2val:0x00000010; immval:-1025; align:0
TEST_STORE(x4,x9,0,x7,x26,0x00000010,-1025,16,sb,0)

# rs1==x27, rs2==x8, rs2_val == 32, 
# opcode: sb; op1:x27; op2:x8; op2val:0x00000020; immval:64; align:0
TEST_STORE(x4,x9,0,x27,x8,0x00000020,64,20,sb,0)

# rs1==x31, rs2==x16, rs2_val == 64, 
# opcode: sb; op1:x31; op2:x16; op2val:0x00000040; immval:-7; align:0
TEST_STORE(x4,x9,0,x31,x16,0x00000040,-7,24,sb,0)

# rs1==x13, rs2==x3, rs2_val == 128, 
# opcode: sb; op1:x13; op2:x3; op2val:0x00000080; immval:9; align:0
TEST_STORE(x4,x9,0,x13,x3,0x00000080,9,28,sb,0)

# rs1==x30, rs2==x28, rs2_val == 256, 
# opcode: sb; op1:x30; op2:x28; op2val:0x00000100; immval:-2; align:0
TEST_STORE(x4,x9,0,x30,x28,0x00000100,-2,32,sb,0)

# rs1==x26, rs2==x17, rs2_val == 1024, 
# opcode: sb; op1:x26; op2:x17; op2val:0x00000400; immval:-4; align:0
TEST_STORE(x4,x9,0,x26,x17,0x00000400,-4,36,sb,0)

# rs1==x23, rs2==x29, rs2_val == 4096, 
# opcode: sb; op1:x23; op2:x29; op2val:0x00001000; immval:9; align:0
TEST_STORE(x4,x9,0,x23,x29,0x00001000,9,40,sb,0)

# rs1==x25, rs2==x0, rs2_val == 8192, 
# opcode: sb; op1:x25; op2:x0; op2val:0x00002000; immval:512; align:0
TEST_STORE(x4,x9,0,x25,x0,0x00002000,512,44,sb,0)

# rs1==x18, rs2==x5, rs2_val == 16384, 
# opcode: sb; op1:x18; op2:x5; op2val:0x00004000; immval:-1025; align:0
TEST_STORE(x4,x9,0,x18,x5,0x00004000,-1025,48,sb,0)

# rs2==x18, rs2_val == 32768, 
# opcode: sb; op1:x1; op2:x18; op2val:0x00008000; immval:9; align:0
TEST_STORE(x4,x9,0,x1,x18,0x00008000,9,52,sb,0)

# rs2_val == 65536, 
# opcode: sb; op1:x10; op2:x11; op2val:0x00010000; immval:-2; align:0
TEST_STORE(x4,x9,0,x10,x11,0x00010000,-2,56,sb,0)

# rs2_val == 131072, 
# opcode: sb; op1:x10; op2:x11; op2val:0x00020000; immval:8; align:0
TEST_STORE(x4,x9,0,x10,x11,0x00020000,8,60,sb,0)

# rs2_val == 262144, 
# opcode: sb; op1:x10; op2:x11; op2val:0x00040000; immval:7; align:0
TEST_STORE(x4,x9,0,x10,x11,0x00040000,7,64,sb,0)

# rs2_val == 524288, 
# opcode: sb; op1:x10; op2:x11; op2val:0x00080000; immval:1023; align:0
TEST_STORE(x4,x9,0,x10,x11,0x00080000,1023,68,sb,0)

# rs2_val == 2097152, 
# opcode: sb; op1:x10; op2:x11; op2val:0x00200000; immval:-17; align:0
TEST_STORE(x4,x9,0,x10,x11,0x00200000,-17,72,sb,0)

# rs2_val == 16777216, 
# opcode: sb; op1:x10; op2:x11; op2val:0x01000000; immval:2; align:0
TEST_STORE(x4,x9,0,x10,x11,0x01000000,2,76,sb,0)

# rs2_val == -1025, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffbff; immval:-10; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfffffbff,-10,80,sb,0)

# rs2_val == -2049, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffff7ff; immval:7; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfffff7ff,7,84,sb,0)

# rs2_val == -4097, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffefff; immval:32; align:0
TEST_STORE(x4,x9,0,x10,x11,0xffffefff,32,88,sb,0)

# rs2_val == -16385, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffbfff; immval:-7; align:0
TEST_STORE(x4,x9,0,x10,x11,0xffffbfff,-7,92,sb,0)

# rs2_val == -32769, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffff7fff; immval:-5; align:0
TEST_STORE(x4,x9,0,x10,x11,0xffff7fff,-5,96,sb,0)

# rs2_val == -65537, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffeffff; immval:-33; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfffeffff,-33,100,sb,0)

# rs2_val == -131073, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffdffff; immval:4; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfffdffff,4,104,sb,0)

# rs2_val == -262145, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffbffff; immval:32; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfffbffff,32,108,sb,0)

# rs2_val == -524289, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfff7ffff; immval:-2; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfff7ffff,-2,112,sb,0)

# rs2_val == -1048577, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffefffff; immval:64; align:0
TEST_STORE(x4,x9,0,x10,x11,0xffefffff,64,116,sb,0)

# rs2_val == -2097153, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffdfffff; immval:1365; align:0
TEST_STORE(x4,x9,0,x10,x11,0xffdfffff,1365,120,sb,0)

# rs2_val == -4194305, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffbfffff; immval:-1; align:0
TEST_STORE(x4,x9,0,x10,x11,0xffbfffff,-1,124,sb,0)

# rs2_val == -16777217, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfeffffff; immval:1024; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfeffffff,1024,128,sb,0)

# rs2_val == -33554433, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfdffffff; immval:8; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfdffffff,8,132,sb,0)

# rs2_val == -67108865, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfbffffff; immval:1024; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfbffffff,1024,136,sb,0)

# rs2_val == -134217729, 
# opcode: sb; op1:x10; op2:x11; op2val:0xf7ffffff; immval:-65; align:0
TEST_STORE(x4,x9,0,x10,x11,0xf7ffffff,-65,140,sb,0)

# rs2_val == -17, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffef; immval:-2048; align:0
TEST_STORE(x4,x9,0,x10,x11,0xffffffef,-2048,144,sb,0)

# rs2_val == 33554432, 
# opcode: sb; op1:x10; op2:x11; op2val:0x02000000; immval:-2; align:0
TEST_STORE(x4,x9,0,x10,x11,0x02000000,-2,148,sb,0)

# rs2_val == 67108864, 
# opcode: sb; op1:x10; op2:x11; op2val:0x04000000; immval:2; align:0
TEST_STORE(x4,x9,0,x10,x11,0x04000000,2,152,sb,0)

# rs2_val == 134217728, 
# opcode: sb; op1:x10; op2:x11; op2val:0x08000000; immval:-129; align:0
TEST_STORE(x4,x9,0,x10,x11,0x08000000,-129,156,sb,0)

# rs2_val == 268435456, 
# opcode: sb; op1:x10; op2:x11; op2val:0x10000000; immval:4; align:0
TEST_STORE(x4,x9,0,x10,x11,0x10000000,4,160,sb,0)

# rs2_val == -536870913, 
# opcode: sb; op1:x10; op2:x11; op2val:0xdfffffff; immval:64; align:0
TEST_STORE(x4,x9,0,x10,x11,0xdfffffff,64,164,sb,0)

# rs2_val == -1073741825, 
# opcode: sb; op1:x10; op2:x11; op2val:0xbfffffff; immval:-10; align:0
TEST_STORE(x4,x9,0,x10,x11,0xbfffffff,-10,168,sb,0)

# rs2_val == 1073741824, 
# opcode: sb; op1:x10; op2:x11; op2val:0x40000000; immval:1024; align:0
TEST_STORE(x4,x9,0,x10,x11,0x40000000,1024,172,sb,0)

# rs2_val == 1431655765, 
# opcode: sb; op1:x10; op2:x11; op2val:0x55555555; immval:512; align:0
TEST_STORE(x4,x9,0,x10,x11,0x55555555,512,176,sb,0)

# rs2_val == -2, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffe; immval:-5; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfffffffe,-5,180,sb,0)

# rs2_val == -3, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffd; immval:-33; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfffffffd,-33,184,sb,0)

# rs2_val == -5, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffb; immval:-2048; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfffffffb,-2048,188,sb,0)

# rs2_val == -9, 
# opcode: sb; op1:x10; op2:x11; op2val:0xfffffff7; immval:128; align:0
TEST_STORE(x4,x9,0,x10,x11,0xfffffff7,128,192,sb,0)

# rs2_val == -33, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffffdf; immval:5; align:0
TEST_STORE(x4,x9,0,x10,x11,0xffffffdf,5,196,sb,0)

# rs2_val == -129, 
# opcode: sb; op1:x10; op2:x11; op2val:0xffffff7f; immval:256; align:0
TEST_STORE(x4,x9,0,x10,x11,0xffffff7f,256,200,sb,0)

# rs2_val == 8192, 
# opcode: sb; op1:x10; op2:x11; op2val:0x00002000; immval:512; align:0
TEST_STORE(x4,x9,0,x10,x11,0x00002000,512,204,sb,0)
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

signature_x18_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x18_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 52*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
