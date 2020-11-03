
#This assembly file tests the c.sw instruction of the RISC-V C extension for the csw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",csw)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 != rs2, rs1==x9, rs2==x10, imm_val > 0, rs2_val == -1073741825
# opcode:c.sw; op1:x9; op2:x10; op2val:0xbfffffff; immval:24
TEST_STORE(x1,x2,0,x9,x10,0xbfffffff,24,0,c.sw,0)

# rs1==x12, rs2==x15, imm_val == 0, rs2_val == -513
# opcode:c.sw; op1:x12; op2:x15; op2val:0xfffffdff; immval:0
TEST_STORE(x1,x2,0,x12,x15,0xfffffdff,0,4,c.sw,0)

# rs1==x13, rs2==x12, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode:c.sw; op1:x13; op2:x12; op2val:0x80000000; immval:76
TEST_STORE(x1,x2,0,x13,x12,0x80000000,76,8,c.sw,0)

# rs1==x8, rs2==x11, rs2_val == 0, imm_val == 8
# opcode:c.sw; op1:x8; op2:x11; op2val:0x00000000; immval:8
TEST_STORE(x1,x2,0,x8,x11,0x00000000,8,12,c.sw,0)

# rs1==x10, rs2==x14, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647
# opcode:c.sw; op1:x10; op2:x14; op2val:0x7fffffff; immval:72
TEST_STORE(x1,x2,0,x10,x14,0x7fffffff,72,16,c.sw,0)

# rs1==x11, rs2==x13, rs2_val == 1, 
# opcode:c.sw; op1:x11; op2:x13; op2val:0x00000001; immval:24
TEST_STORE(x1,x2,0,x11,x13,0x00000001,24,20,c.sw,0)

# rs1==x14, rs2==x8, imm_val == 4, rs2_val == -1048577
# opcode:c.sw; op1:x14; op2:x8; op2val:0xffefffff; immval:4
TEST_STORE(x1,x2,0,x14,x8,0xffefffff,4,24,c.sw,0)

# rs1==x15, rs2==x9, imm_val == 16, 
# opcode:c.sw; op1:x15; op2:x9; op2val:0xffefffff; immval:16
TEST_STORE(x1,x2,0,x15,x9,0xffefffff,16,28,c.sw,0)

# imm_val == 32, rs2_val == 134217728
# opcode:c.sw; op1:x10; op2:x11; op2val:0x08000000; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x08000000,32,32,c.sw,0)

# imm_val == 64, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000006; immval:64
TEST_STORE(x1,x2,0,x10,x11,0x00000006,64,36,c.sw,0)

# imm_val == 120, rs2_val == 524288
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00080000; immval:120
TEST_STORE(x1,x2,0,x10,x11,0x00080000,120,40,c.sw,0)

# imm_val == 116, rs2_val == 64
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000040; immval:116
TEST_STORE(x1,x2,0,x10,x11,0x00000040,116,44,c.sw,0)

# imm_val == 108, rs2_val == 1431655765
# opcode:c.sw; op1:x10; op2:x11; op2val:0x55555555; immval:108
TEST_STORE(x1,x2,0,x10,x11,0x55555555,108,48,c.sw,0)

# imm_val == 92, rs2_val == -4097
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffefff; immval:92
TEST_STORE(x1,x2,0,x10,x11,0xffffefff,92,52,c.sw,0)

# imm_val == 60, rs2_val == -17
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffef; immval:60
TEST_STORE(x1,x2,0,x10,x11,0xffffffef,60,56,c.sw,0)

# imm_val == 84, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000009; immval:84
TEST_STORE(x1,x2,0,x10,x11,0x00000009,84,60,c.sw,0)

# imm_val == 40, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x80000000; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x80000000,40,64,c.sw,0)

# rs2_val == 2, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000002; immval:24
TEST_STORE(x1,x2,0,x10,x11,0x00000002,24,68,c.sw,0)

# rs2_val == 4, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000004; immval:76
TEST_STORE(x1,x2,0,x10,x11,0x00000004,76,72,c.sw,0)

# rs2_val == 8, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000008; immval:4
TEST_STORE(x1,x2,0,x10,x11,0x00000008,4,76,c.sw,0)

# rs2_val == 16, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000010; immval:92
TEST_STORE(x1,x2,0,x10,x11,0x00000010,92,80,c.sw,0)

# rs2_val == 32, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000020; immval:0
TEST_STORE(x1,x2,0,x10,x11,0x00000020,0,84,c.sw,0)

# rs2_val == 128, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000080; immval:84
TEST_STORE(x1,x2,0,x10,x11,0x00000080,84,88,c.sw,0)

# rs2_val == 256, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000100; immval:124
TEST_STORE(x1,x2,0,x10,x11,0x00000100,124,92,c.sw,0)

# rs2_val == 512, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000200; immval:36
TEST_STORE(x1,x2,0,x10,x11,0x00000200,36,96,c.sw,0)

# rs2_val == 1024, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000400; immval:64
TEST_STORE(x1,x2,0,x10,x11,0x00000400,64,100,c.sw,0)

# rs2_val == 2048, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00000800; immval:52
TEST_STORE(x1,x2,0,x10,x11,0x00000800,52,104,c.sw,0)

# rs2_val == 4096, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00001000; immval:8
TEST_STORE(x1,x2,0,x10,x11,0x00001000,8,108,c.sw,0)

# rs2_val == 8192, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00002000; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x00002000,40,112,c.sw,0)

# rs2_val == 16384, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00004000; immval:64
TEST_STORE(x1,x2,0,x10,x11,0x00004000,64,116,c.sw,0)

# rs2_val == 32768, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00008000; immval:12
TEST_STORE(x1,x2,0,x10,x11,0x00008000,12,120,c.sw,0)

# rs2_val == 65536, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00010000; immval:84
TEST_STORE(x1,x2,0,x10,x11,0x00010000,84,124,c.sw,0)

# rs2_val == 131072, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00020000; immval:92
TEST_STORE(x1,x2,0,x10,x11,0x00020000,92,128,c.sw,0)

# rs2_val == 262144, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00040000; immval:72
TEST_STORE(x1,x2,0,x10,x11,0x00040000,72,132,c.sw,0)

# rs2_val == 1048576, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00100000; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x00100000,32,136,c.sw,0)

# rs2_val == 2097152, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00200000; immval:36
TEST_STORE(x1,x2,0,x10,x11,0x00200000,36,140,c.sw,0)

# rs2_val == 4194304, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00400000; immval:56
TEST_STORE(x1,x2,0,x10,x11,0x00400000,56,144,c.sw,0)

# rs2_val == 8388608, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x00800000; immval:28
TEST_STORE(x1,x2,0,x10,x11,0x00800000,28,148,c.sw,0)

# rs2_val == 16777216, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x01000000; immval:36
TEST_STORE(x1,x2,0,x10,x11,0x01000000,36,152,c.sw,0)

# rs2_val == 33554432, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x02000000; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x02000000,32,156,c.sw,0)

# rs2_val == -32769, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffff7fff; immval:84
TEST_STORE(x1,x2,0,x10,x11,0xffff7fff,84,160,c.sw,0)

# rs2_val == -65537, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffeffff; immval:12
TEST_STORE(x1,x2,0,x10,x11,0xfffeffff,12,164,c.sw,0)

# rs2_val == -131073, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffdffff; immval:12
TEST_STORE(x1,x2,0,x10,x11,0xfffdffff,12,168,c.sw,0)

# rs2_val == -262145, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffbffff; immval:84
TEST_STORE(x1,x2,0,x10,x11,0xfffbffff,84,172,c.sw,0)

# rs2_val == -524289, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfff7ffff; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffff,116,176,c.sw,0)

# rs2_val == -2097153, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffdfffff; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xffdfffff,108,180,c.sw,0)

# rs2_val == -4194305, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffbfffff; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xffbfffff,108,184,c.sw,0)

# rs2_val == -8388609, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xff7fffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xff7fffff,40,188,c.sw,0)

# rs2_val == -16777217, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfeffffff; immval:28
TEST_STORE(x1,x2,0,x10,x11,0xfeffffff,28,192,c.sw,0)

# rs2_val == -33554433, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfdffffff; immval:12
TEST_STORE(x1,x2,0,x10,x11,0xfdffffff,12,196,c.sw,0)

# rs2_val == -67108865, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfbffffff; immval:92
TEST_STORE(x1,x2,0,x10,x11,0xfbffffff,92,200,c.sw,0)

# rs2_val == -134217729, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xf7ffffff; immval:92
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffff,92,204,c.sw,0)

# rs2_val == -268435457, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xefffffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xefffffff,40,208,c.sw,0)

# rs2_val == -536870913, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xdfffffff; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xdfffffff,108,212,c.sw,0)

# rs2_val == -1431655766, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xaaaaaaaa; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaa,64,216,c.sw,0)

# rs2_val == 67108864, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x04000000; immval:12
TEST_STORE(x1,x2,0,x10,x11,0x04000000,12,220,c.sw,0)

# rs2_val == 268435456, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x10000000; immval:12
TEST_STORE(x1,x2,0,x10,x11,0x10000000,12,224,c.sw,0)

# rs2_val == 536870912, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x20000000; immval:60
TEST_STORE(x1,x2,0,x10,x11,0x20000000,60,228,c.sw,0)

# rs2_val == 1073741824, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0x40000000; immval:48
TEST_STORE(x1,x2,0,x10,x11,0x40000000,48,232,c.sw,0)

# rs2_val == -2, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffe; immval:20
TEST_STORE(x1,x2,0,x10,x11,0xfffffffe,20,236,c.sw,0)

# rs2_val == -3, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffd; immval:48
TEST_STORE(x1,x2,0,x10,x11,0xfffffffd,48,240,c.sw,0)

# rs2_val == -5, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffb; immval:116
TEST_STORE(x1,x2,0,x10,x11,0xfffffffb,116,244,c.sw,0)

# rs2_val == -9, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffff7; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7,64,248,c.sw,0)

# rs2_val == -33, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffdf; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xffffffdf,64,252,c.sw,0)

# rs2_val == -65, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffbf; immval:36
TEST_STORE(x1,x2,0,x10,x11,0xffffffbf,36,256,c.sw,0)

# rs2_val == -129, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffff7f; immval:28
TEST_STORE(x1,x2,0,x10,x11,0xffffff7f,28,260,c.sw,0)

# rs2_val == -257, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffeff; immval:76
TEST_STORE(x1,x2,0,x10,x11,0xfffffeff,76,264,c.sw,0)

# rs2_val == -1025, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffbff; immval:84
TEST_STORE(x1,x2,0,x10,x11,0xfffffbff,84,268,c.sw,0)

# rs2_val == -2049, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xfffff7ff; immval:108
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ff,108,272,c.sw,0)

# rs2_val == -8193, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffdfff; immval:44
TEST_STORE(x1,x2,0,x10,x11,0xffffdfff,44,276,c.sw,0)

# rs2_val == -16385, 
# opcode:c.sw; op1:x10; op2:x11; op2val:0xffffbfff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xffffbfff,40,280,c.sw,0)
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
    .fill 71*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
