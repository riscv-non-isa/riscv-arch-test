
#This assembly file tests the c.sw instruction of the RISC-V C extension for the csw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",csw)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 != rs2, rs1==x14, rs2==x10, imm_val > 0, rs2_val == 128, imm_val == 60
# opcode:c.sw; op1:x14; op2:x10; op2val:0x00000080; immval:60
TEST_STORE(x1,x2,0,x14,x10,0x00000080,60,0,c.sw,0)

# rs1==x9, rs2==x12, imm_val == 0, rs2_val == 2048
# opcode:c.sw; op1:x9; op2:x12; op2val:0x00000800; immval:0
TEST_STORE(x1,x2,0,x9,x12,0x00000800,0,4,c.sw,0)

# rs1==x10, rs2==x15, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode:c.sw; op1:x10; op2:x15; op2val:0x80000000; immval:56
TEST_STORE(x1,x2,0,x10,x15,0x80000000,56,8,c.sw,0)

# rs1==x11, rs2==x13, rs2_val == 0, 
# opcode:c.sw; op1:x11; op2:x13; op2val:0x00000000; immval:28
TEST_STORE(x1,x2,0,x11,x13,0x00000000,28,12,c.sw,0)

# rs1==x12, rs2==x9, rs2_val == (2**(xlen-1)-1), imm_val == 16, rs2_val == 2147483647
# opcode:c.sw; op1:x12; op2:x9; op2val:0x7fffffff; immval:16
TEST_STORE(x1,x2,0,x12,x9,0x7fffffff,16,16,c.sw,0)

# rs1==x15, rs2==x14, rs2_val == 1, 
# opcode:c.sw; op1:x15; op2:x14; op2val:0x00000001; immval:44
TEST_STORE(x1,x2,0,x15,x14,0x00000001,44,20,c.sw,0)

# rs1==x8, rs2==x11, imm_val == 4, 
# opcode:c.sw; op1:x8; op2:x11; op2val:0x00000080; immval:4
TEST_STORE(x1,x2,0,x8,x11,0x00000080,4,24,c.sw,0)

# rs1==x13, rs2==x8, imm_val == 8, rs2_val == -33554433
# opcode:c.sw; op1:x13; op2:x8; op2val:0xfdffffff; immval:8
TEST_STORE(x1,x2,0,x13,x8,0xfdffffff,8,28,c.sw,0)

# imm_val == 32, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffc; immval:32
TEST_STORE(x1,x2,0,x10,x11,0xfffffffc,32,32,c.sw,0)

# imm_val == 64, rs2_val == -1048577
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffefffff; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xffefffff,64,36,c.sw,0)

# imm_val == 120, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffa; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xfffffffa,120,40,c.sw,0)

# imm_val == 116, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffa; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xfffffffa,116,44,c.sw,0)

# imm_val == 108, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfdffffff; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xfdffffff,108,48,c.sw,0)

# imm_val == 92, rs2_val == 256
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000100; immval:92
TEST_STORE(x1,x2,0,x10,x11,0x00000100,92,52,c.sw,0)

# imm_val == 84, rs2_val == 32768
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00008000; immval:84
TEST_STORE(x1,x2,0,x10,x11,0x00008000,84,56,c.sw,0)

# imm_val == 40, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffff6; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xfffffff6,40,60,c.sw,0)

# rs2_val == 2, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000002; immval:92
TEST_STORE(x1,x2,0,x10,x11,0x00000002,92,64,c.sw,0)

# rs2_val == 4, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000004; immval:48
TEST_STORE(x1,x2,0,x10,x11,0x00000004,48,68,c.sw,0)

# rs2_val == 8, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000008; immval:108
TEST_STORE(x1,x2,0,x10,x11,0x00000008,108,72,c.sw,0)

# rs2_val == 16, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000010; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x00000010,60,76,c.sw,0)

# rs2_val == 32, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000020; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x00000020,40,80,c.sw,0)

# rs2_val == 64, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000040; immval:0
TEST_STORE(x1,x2,0,x10,x11,0x00000040,0,84,c.sw,0)

# rs2_val == 512, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000200; immval:4
TEST_STORE(x1,x2,0,x10,x11,0x00000200,4,88,c.sw,0)

# rs2_val == 1024, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000400; immval:12
TEST_STORE(x1,x2,0,x10,x11,0x00000400,12,92,c.sw,0)

# rs2_val == 4096, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00001000; immval:16
TEST_STORE(x1,x2,0,x10,x11,0x00001000,16,96,c.sw,0)

# rs2_val == 8192, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00002000; immval:76
TEST_STORE(x1,x2,0,x10,x11,0x00002000,76,100,c.sw,0)

# rs2_val == 16384, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00004000; immval:36
TEST_STORE(x1,x2,0,x10,x11,0x00004000,36,104,c.sw,0)

# rs2_val == 65536, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00010000; immval:72
TEST_STORE(x1,x2,0,x10,x11,0x00010000,72,108,c.sw,0)

# rs2_val == 131072, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00020000; immval:56
TEST_STORE(x1,x2,0,x10,x11,0x00020000,56,112,c.sw,0)

# rs2_val == 262144, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00040000; immval:68
TEST_STORE(x1,x2,0,x10,x11,0x00040000,68,116,c.sw,0)

# rs2_val == 524288, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00080000; immval:16
TEST_STORE(x1,x2,0,x10,x11,0x00080000,16,120,c.sw,0)

# rs2_val == 1048576, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00100000; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x00100000,40,124,c.sw,0)

# rs2_val == 2097152, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00200000; immval:4
TEST_STORE(x1,x2,0,x10,x11,0x00200000,4,128,c.sw,0)

# rs2_val == 4194304, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00400000; immval:68
TEST_STORE(x1,x2,0,x10,x11,0x00400000,68,132,c.sw,0)

# rs2_val == 8388608, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00800000; immval:116
TEST_STORE(x1,x2,0,x10,x11,0x00800000,116,136,c.sw,0)

# rs2_val == 16777216, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x01000000; immval:76
TEST_STORE(x1,x2,0,x10,x11,0x01000000,76,140,c.sw,0)

# rs2_val == 33554432, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x02000000; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x02000000,60,144,c.sw,0)

# rs2_val == 67108864, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x04000000; immval:76
TEST_STORE(x1,x2,0,x10,x11,0x04000000,76,148,c.sw,0)

# rs2_val == 134217728, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x08000000; immval:48
TEST_STORE(x1,x2,0,x10,x11,0x08000000,48,152,c.sw,0)

# rs2_val == 268435456, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x10000000; immval:64
TEST_STORE(x1,x2,0,x10,x11,0x10000000,64,156,c.sw,0)

# rs2_val == 536870912, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x20000000; immval:12
TEST_STORE(x1,x2,0,x10,x11,0x20000000,12,160,c.sw,0)

# rs2_val == 1073741824, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x40000000; immval:92
TEST_STORE(x1,x2,0,x10,x11,0x40000000,92,164,c.sw,0)

# rs2_val == -32769, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffff7fff; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xffff7fff,64,168,c.sw,0)

# rs2_val == -65537, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffeffff; immval:8
TEST_STORE(x1,x2,0,x10,x11,0xfffeffff,8,172,c.sw,0)

# rs2_val == -131073, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffdffff; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xfffdffff,120,176,c.sw,0)

# rs2_val == -262145, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffbffff; immval:68
TEST_STORE(x1,x2,0,x10,x11,0xfffbffff,68,180,c.sw,0)

# rs2_val == -524289, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfff7ffff; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffff,116,184,c.sw,0)

# rs2_val == -2097153, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffdfffff; immval:4
TEST_STORE(x1,x2,0,x10,x11,0xffdfffff,4,188,c.sw,0)

# rs2_val == -4194305, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffbfffff; immval:4
TEST_STORE(x1,x2,0,x10,x11,0xffbfffff,4,192,c.sw,0)

# rs2_val == -8388609, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xff7fffff; immval:48
TEST_STORE(x1,x2,0,x10,x11,0xff7fffff,48,196,c.sw,0)

# rs2_val == -16777217, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfeffffff; immval:20
TEST_STORE(x1,x2,0,x10,x11,0xfeffffff,20,200,c.sw,0)

# rs2_val == -67108865, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfbffffff; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xfbffffff,116,204,c.sw,0)

# rs2_val == -134217729, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xf7ffffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffff,40,208,c.sw,0)

# rs2_val == -268435457, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xefffffff; immval:124
TEST_STORE(x1,x2,0,x10,x11,0xefffffff,124,212,c.sw,0)

# rs2_val == -536870913, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xdfffffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xdfffffff,0,216,c.sw,0)

# rs2_val == -1073741825, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xbfffffff; immval:8
TEST_STORE(x1,x2,0,x10,x11,0xbfffffff,8,220,c.sw,0)

# rs2_val == 1431655765, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x55555555; immval:72
TEST_STORE(x1,x2,0,x10,x11,0x55555555,72,224,c.sw,0)

# rs2_val == -1431655766, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xaaaaaaaa; immval:52
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaa,52,228,c.sw,0)

# rs2_val == -2, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffe; immval:76
TEST_STORE(x1,x2,0,x10,x11,0xfffffffe,76,232,c.sw,0)

# rs2_val == -3, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffd; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xfffffffd,120,236,c.sw,0)

# rs2_val == -5, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffb; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xfffffffb,120,240,c.sw,0)

# rs2_val == -9, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffff7; immval:84
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7,84,244,c.sw,0)

# rs2_val == -17, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffef; immval:56
TEST_STORE(x1,x2,0,x10,x11,0xffffffef,56,248,c.sw,0)

# rs2_val == -33, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffdf; immval:56
TEST_STORE(x1,x2,0,x10,x11,0xffffffdf,56,252,c.sw,0)

# rs2_val == -65, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffbf; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xffffffbf,40,256,c.sw,0)

# rs2_val == -129, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffff7f; immval:76
TEST_STORE(x1,x2,0,x10,x11,0xffffff7f,76,260,c.sw,0)

# rs2_val == -257, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffeff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffeff,0,264,c.sw,0)

# rs2_val == -513, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffdff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xfffffdff,40,268,c.sw,0)

# rs2_val == -1025, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffbff; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xfffffbff,116,272,c.sw,0)

# rs2_val == -2049, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffff7ff; immval:44
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ff,44,276,c.sw,0)

# rs2_val == -4097, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffefff; immval:48
TEST_STORE(x1,x2,0,x10,x11,0xffffefff,48,280,c.sw,0)

# rs2_val == -8193, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffdfff; immval:52
TEST_STORE(x1,x2,0,x10,x11,0xffffdfff,52,284,c.sw,0)

# rs2_val == -16385, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffbfff; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xffffbfff,116,288,c.sw,0)
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
    .fill 73*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
