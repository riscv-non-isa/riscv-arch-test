
#This assembly file tests the c.swsp instruction of the RISC-V C extension for the cswsp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cswsp)

la x1,signature_x1_1

# rs2==x15, imm_val > 0, rs2_val == 2
# opcode:c.swsp; op1:x2; op2:x15; op2val:0x00000002; immval:24
TEST_STORE(x1,x6,0,x2,x15,0x00000002,24,0,c.swsp,0)

# rs2==x14, imm_val == 0, rs2_val == -4097
# opcode:c.swsp; op1:x2; op2:x14; op2val:0xffffefff; immval:0
TEST_STORE(x1,x6,0,x2,x14,0xffffefff,0,4,c.swsp,0)

# rs2==x10, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x80000000; immval:44
TEST_STORE(x1,x6,0,x2,x10,0x80000000,44,8,c.swsp,0)

# rs2==x4, rs2_val == 0, 
# opcode:c.swsp; op1:x2; op2:x4; op2val:0x00000000; immval:28
TEST_STORE(x1,x6,0,x2,x4,0x00000000,28,12,c.swsp,0)

# rs2==x29, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647, imm_val == 128
# opcode:c.swsp; op1:x2; op2:x29; op2val:0x7fffffff; immval:128
TEST_STORE(x1,x6,0,x2,x29,0x7fffffff,128,16,c.swsp,0)

# rs2==x21, rs2_val == 1, 
# opcode:c.swsp; op1:x2; op2:x21; op2val:0x00000001; immval:20
TEST_STORE(x1,x6,0,x2,x21,0x00000001,20,20,c.swsp,0)

# rs2==x25, imm_val == 4, rs2_val == 131072
# opcode:c.swsp; op1:x2; op2:x25; op2val:0x00020000; immval:4
TEST_STORE(x1,x6,0,x2,x25,0x00020000,4,24,c.swsp,0)

# rs2==x2, imm_val == 8, 
# opcode:c.swsp; op1:x2; op2:x2; op2val:0x00000003; immval:8
TEST_STORE(x1,x6,0,x2,x2,0x00000003,8,28,c.swsp,0)

# rs2==x18, imm_val == 16, rs2_val == -16385
# opcode:c.swsp; op1:x2; op2:x18; op2val:0xffffbfff; immval:16
TEST_STORE(x1,x6,0,x2,x18,0xffffbfff,16,32,c.swsp,0)

# rs2==x23, imm_val == 32, rs2_val == 536870912
# opcode:c.swsp; op1:x2; op2:x23; op2val:0x20000000; immval:32
TEST_STORE(x1,x6,0,x2,x23,0x20000000,32,36,c.swsp,0)

# rs2==x31, imm_val == 64, 
# opcode:c.swsp; op1:x2; op2:x31; op2val:0x3fffffff; immval:64
TEST_STORE(x1,x6,0,x2,x31,0x3fffffff,64,40,c.swsp,0)

# rs2==x24, imm_val == 248, rs2_val == -2097153
# opcode:c.swsp; op1:x2; op2:x24; op2val:0xffdfffff; immval:248
TEST_STORE(x1,x6,0,x2,x24,0xffdfffff,248,44,c.swsp,0)

# rs2==x9, imm_val == 244, rs2_val == -1048577
# opcode:c.swsp; op1:x2; op2:x9; op2val:0xffefffff; immval:244
TEST_STORE(x1,x6,0,x2,x9,0xffefffff,244,48,c.swsp,0)

# rs2==x28, imm_val == 236, 
# opcode:c.swsp; op1:x2; op2:x28; op2val:0x80000000; immval:236
TEST_STORE(x1,x6,0,x2,x28,0x80000000,236,52,c.swsp,0)

# rs2==x12, imm_val == 220, rs2_val == -2
# opcode:c.swsp; op1:x2; op2:x12; op2val:0xfffffffe; immval:220
TEST_STORE(x1,x6,0,x2,x12,0xfffffffe,220,56,c.swsp,0)

# rs2==x19, imm_val == 188, 
# opcode:c.swsp; op1:x2; op2:x19; op2val:0xffdfffff; immval:188
TEST_STORE(x1,x6,0,x2,x19,0xffdfffff,188,60,c.swsp,0)

# rs2==x3, imm_val == 124, 
# opcode:c.swsp; op1:x2; op2:x3; op2val:0x00000009; immval:124
TEST_STORE(x1,x6,0,x2,x3,0x00000009,124,64,c.swsp,0)

# rs2==x8, imm_val == 84, rs2_val == -1431655766
# opcode:c.swsp; op1:x2; op2:x8; op2val:0xaaaaaaaa; immval:84
TEST_STORE(x1,x6,0,x2,x8,0xaaaaaaaa,84,68,c.swsp,0)

# rs2==x16, imm_val == 168, rs2_val == -2049
# opcode:c.swsp; op1:x2; op2:x16; op2val:0xfffff7ff; immval:168
TEST_STORE(x1,x6,0,x2,x16,0xfffff7ff,168,72,c.swsp,0)

# rs2==x0, rs2_val == 4, 
# opcode:c.swsp; op1:x2; op2:x0; op2val:0x00000004; immval:128
TEST_STORE(x1,x6,0,x2,x0,0x00000004,128,76,c.swsp,0)

# rs2==x20, rs2_val == 8, 
# opcode:c.swsp; op1:x2; op2:x20; op2val:0x00000008; immval:44
TEST_STORE(x1,x6,0,x2,x20,0x00000008,44,80,c.swsp,0)

# rs2==x22, rs2_val == 16, 
# opcode:c.swsp; op1:x2; op2:x22; op2val:0x00000010; immval:84
TEST_STORE(x1,x6,0,x2,x22,0x00000010,84,84,c.swsp,0)

# rs2==x13, rs2_val == 32, 
# opcode:c.swsp; op1:x2; op2:x13; op2val:0x00000020; immval:52
TEST_STORE(x1,x6,0,x2,x13,0x00000020,52,88,c.swsp,0)

# rs2==x5, rs2_val == 64, 
# opcode:c.swsp; op1:x2; op2:x5; op2val:0x00000040; immval:220
TEST_STORE(x1,x6,0,x2,x5,0x00000040,220,92,c.swsp,0)

# rs2==x27, rs2_val == 128, 
# opcode:c.swsp; op1:x2; op2:x27; op2val:0x00000080; immval:36
TEST_STORE(x1,x6,0,x2,x27,0x00000080,36,96,c.swsp,0)

# rs2==x30, rs2_val == 256, 
# opcode:c.swsp; op1:x2; op2:x30; op2val:0x00000100; immval:244
TEST_STORE(x1,x6,0,x2,x30,0x00000100,244,100,c.swsp,0)

# rs2==x11, rs2_val == 512, 
# opcode:c.swsp; op1:x2; op2:x11; op2val:0x00000200; immval:68
TEST_STORE(x1,x6,0,x2,x11,0x00000200,68,104,c.swsp,0)

# rs2==x17, rs2_val == 1024, 
# opcode:c.swsp; op1:x2; op2:x17; op2val:0x00000400; immval:60
TEST_STORE(x1,x6,0,x2,x17,0x00000400,60,108,c.swsp,0)

# rs2==x26, rs2_val == 2048, 
# opcode:c.swsp; op1:x2; op2:x26; op2val:0x00000800; immval:32
TEST_STORE(x1,x4,0,x2,x26,0x00000800,32,112,c.swsp,0)
la x3,signature_x3_0

# rs2==x7, rs2_val == 4096, 
# opcode:c.swsp; op1:x2; op2:x7; op2val:0x00001000; immval:84
TEST_STORE(x3,x4,0,x2,x7,0x00001000,84,0,c.swsp,0)

# rs2==x1, rs2_val == 8192, 
# opcode:c.swsp; op1:x2; op2:x1; op2val:0x00002000; immval:36
TEST_STORE(x3,x4,0,x2,x1,0x00002000,36,4,c.swsp,0)

# rs2==x6, rs2_val == 16384, 
# opcode:c.swsp; op1:x2; op2:x6; op2val:0x00004000; immval:40
TEST_STORE(x3,x4,0,x2,x6,0x00004000,40,8,c.swsp,0)

# rs2_val == 32768, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x00008000; immval:72
TEST_STORE(x3,x4,0,x2,x10,0x00008000,72,12,c.swsp,0)

# rs2_val == 65536, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x00010000; immval:36
TEST_STORE(x3,x4,0,x2,x10,0x00010000,36,16,c.swsp,0)

# rs2_val == 262144, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x00040000; immval:28
TEST_STORE(x3,x4,0,x2,x10,0x00040000,28,20,c.swsp,0)

# rs2_val == 524288, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x00080000; immval:36
TEST_STORE(x3,x4,0,x2,x10,0x00080000,36,24,c.swsp,0)

# rs2_val == 1048576, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x00100000; immval:4
TEST_STORE(x3,x4,0,x2,x10,0x00100000,4,28,c.swsp,0)

# rs2_val == 2097152, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x00200000; immval:12
TEST_STORE(x3,x4,0,x2,x10,0x00200000,12,32,c.swsp,0)

# rs2_val == 4194304, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x00400000; immval:40
TEST_STORE(x3,x4,0,x2,x10,0x00400000,40,36,c.swsp,0)

# rs2_val == 8388608, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x00800000; immval:40
TEST_STORE(x3,x4,0,x2,x10,0x00800000,40,40,c.swsp,0)

# rs2_val == 16777216, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x01000000; immval:64
TEST_STORE(x3,x4,0,x2,x10,0x01000000,64,44,c.swsp,0)

# rs2_val == -8193, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffdfff; immval:0
TEST_STORE(x3,x4,0,x2,x10,0xffffdfff,0,48,c.swsp,0)

# rs2_val == -32769, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffff7fff; immval:64
TEST_STORE(x3,x4,0,x2,x10,0xffff7fff,64,52,c.swsp,0)

# rs2_val == -65537, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffeffff; immval:64
TEST_STORE(x3,x4,0,x2,x10,0xfffeffff,64,56,c.swsp,0)

# rs2_val == -131073, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffdffff; immval:52
TEST_STORE(x3,x4,0,x2,x10,0xfffdffff,52,60,c.swsp,0)

# rs2_val == -262145, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffbffff; immval:52
TEST_STORE(x3,x4,0,x2,x10,0xfffbffff,52,64,c.swsp,0)

# rs2_val == -524289, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfff7ffff; immval:4
TEST_STORE(x3,x4,0,x2,x10,0xfff7ffff,4,68,c.swsp,0)

# rs2_val == -4194305, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffbfffff; immval:128
TEST_STORE(x3,x4,0,x2,x10,0xffbfffff,128,72,c.swsp,0)

# rs2_val == -8388609, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xff7fffff; immval:168
TEST_STORE(x3,x4,0,x2,x10,0xff7fffff,168,76,c.swsp,0)

# rs2_val == -16777217, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfeffffff; immval:32
TEST_STORE(x3,x4,0,x2,x10,0xfeffffff,32,80,c.swsp,0)

# rs2_val == -33554433, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfdffffff; immval:124
TEST_STORE(x3,x4,0,x2,x10,0xfdffffff,124,84,c.swsp,0)

# rs2_val == -67108865, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfbffffff; immval:60
TEST_STORE(x3,x4,0,x2,x10,0xfbffffff,60,88,c.swsp,0)

# rs2_val == -134217729, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xf7ffffff; immval:4
TEST_STORE(x3,x4,0,x2,x10,0xf7ffffff,4,92,c.swsp,0)

# rs2_val == -268435457, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xefffffff; immval:72
TEST_STORE(x3,x4,0,x2,x10,0xefffffff,72,96,c.swsp,0)

# rs2_val == -536870913, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xdfffffff; immval:68
TEST_STORE(x3,x4,0,x2,x10,0xdfffffff,68,100,c.swsp,0)

# rs2_val == -1073741825, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xbfffffff; immval:36
TEST_STORE(x3,x4,0,x2,x10,0xbfffffff,36,104,c.swsp,0)

# rs2_val == 1431655765, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x55555555; immval:44
TEST_STORE(x3,x4,0,x2,x10,0x55555555,44,108,c.swsp,0)

# rs2_val == 33554432, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x02000000; immval:8
TEST_STORE(x3,x4,0,x2,x10,0x02000000,8,112,c.swsp,0)

# rs2_val == 67108864, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x04000000; immval:56
TEST_STORE(x3,x4,0,x2,x10,0x04000000,56,116,c.swsp,0)

# rs2_val == 134217728, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x08000000; immval:8
TEST_STORE(x3,x4,0,x2,x10,0x08000000,8,120,c.swsp,0)

# rs2_val == 268435456, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x10000000; immval:12
TEST_STORE(x3,x4,0,x2,x10,0x10000000,12,124,c.swsp,0)

# rs2_val == 1073741824, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x40000000; immval:24
TEST_STORE(x3,x4,0,x2,x10,0x40000000,24,128,c.swsp,0)

# rs2_val == -3, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffd; immval:60
TEST_STORE(x3,x4,0,x2,x10,0xfffffffd,60,132,c.swsp,0)

# rs2_val == -5, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffb; immval:248
TEST_STORE(x3,x4,0,x2,x10,0xfffffffb,248,136,c.swsp,0)

# rs2_val == -9, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffff7; immval:56
TEST_STORE(x3,x4,0,x2,x10,0xfffffff7,56,140,c.swsp,0)

# rs2_val == -17, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffef; immval:28
TEST_STORE(x3,x4,0,x2,x10,0xffffffef,28,144,c.swsp,0)

# rs2_val == -33, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffdf; immval:24
TEST_STORE(x3,x4,0,x2,x10,0xffffffdf,24,148,c.swsp,0)

# rs2_val == -65, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffbf; immval:236
TEST_STORE(x3,x4,0,x2,x10,0xffffffbf,236,152,c.swsp,0)

# rs2_val == -129, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffff7f; immval:36
TEST_STORE(x3,x4,0,x2,x10,0xffffff7f,36,156,c.swsp,0)

# rs2_val == -257, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffeff; immval:4
TEST_STORE(x3,x4,0,x2,x10,0xfffffeff,4,160,c.swsp,0)

# rs2_val == -513, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffdff; immval:60
TEST_STORE(x3,x4,0,x2,x10,0xfffffdff,60,164,c.swsp,0)

# rs2_val == -1025, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffbff; immval:220
TEST_STORE(x3,x4,0,x2,x10,0xfffffbff,220,168,c.swsp,0)

# imm_val == 8, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x00000003; immval:8
TEST_STORE(x3,x4,0,x2,x10,0x00000003,8,172,c.swsp,0)

# rs2_val == 4, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x00000004; immval:128
TEST_STORE(x3,x4,0,x2,x10,0x00000004,128,176,c.swsp,0)
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
    .fill 29*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 45*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
