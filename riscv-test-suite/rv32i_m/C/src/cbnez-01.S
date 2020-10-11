
#This assembly file tests the c.bnez instruction of the RISC-V C extension for the cbnez covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cbnez)

la x1,signature_x1_1

# rs1==x9, rs1_val > 0 and imm_val > 0, rs1_val == 134217728
# opcode: c.bnez; op1:x9; op1val:0x08000000; immval:6
TEST_CBRANCH_OP(c.bnez, x2, x9, 0x08000000, 6, 3f, x1, 0)

# rs1==x13, rs1_val < 0 and imm_val > 0, rs1_val == -131073
# opcode: c.bnez; op1:x13; op1val:0xfffdffff; immval:126
TEST_CBRANCH_OP(c.bnez, x2, x13, 0xfffdffff, 126, 3f, x1, 4)

# rs1==x10, rs1_val == 0 and imm_val > 0, rs1_val == 0
# opcode: c.bnez; op1:x10; op1val:0x00000000; immval:64
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000000, 64, 3f, x1, 8)

# rs1==x15, rs1_val > 0 and imm_val < 0, rs1_val == 524288
# opcode: c.bnez; op1:x15; op1val:0x00080000; immval:6
TEST_CBRANCH_OP(c.bnez, x2, x15, 0x00080000, 6, 1b, x1, 12)

# rs1==x14, rs1_val < 0 and imm_val < 0, 
# opcode: c.bnez; op1:x14; op1val:0xfffffff9; immval:14
TEST_CBRANCH_OP(c.bnez, x2, x14, 0xfffffff9, 14, 1b, x1, 16)

# rs1==x12, rs1_val == 0 and imm_val < 0, 
# opcode: c.bnez; op1:x12; op1val:0x00000000; immval:6
TEST_CBRANCH_OP(c.bnez, x2, x12, 0x00000000, 6, 1b, x1, 20)

# rs1==x8, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648
# opcode: c.bnez; op1:x8; op1val:0x80000000; immval:8
TEST_CBRANCH_OP(c.bnez, x2, x8, 0x80000000, 8, 3f, x1, 24)

# rs1==x11, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647
# opcode: c.bnez; op1:x11; op1val:0x7fffffff; immval:130
TEST_CBRANCH_OP(c.bnez, x2, x11, 0x7fffffff, 130, 1b, x1, 28)

# rs1_val == 1, 
# opcode: c.bnez; op1:x10; op1val:0x00000001; immval:12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000001, 12, 3f, x1, 32)

# rs1_val == 2, 
# opcode: c.bnez; op1:x10; op1val:0x00000002; immval:172
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000002, 172, 1b, x1, 36)

# rs1_val == 4, 
# opcode: c.bnez; op1:x10; op1val:0x00000004; immval:34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000004, 34, 1b, x1, 40)

# rs1_val == 8, 
# opcode: c.bnez; op1:x10; op1val:0x00000008; immval:130
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000008, 130, 1b, x1, 44)

# rs1_val == 16, 
# opcode: c.bnez; op1:x10; op1val:0x00000010; immval:6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000010, 6, 1b, x1, 48)

# rs1_val == 32, 
# opcode: c.bnez; op1:x10; op1val:0x00000020; immval:14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000020, 14, 1b, x1, 52)

# rs1_val == 64, 
# opcode: c.bnez; op1:x10; op1val:0x00000040; immval:16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000040, 16, 1b, x1, 56)

# rs1_val == 128, 
# opcode: c.bnez; op1:x10; op1val:0x00000080; immval:8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000080, 8, 1b, x1, 60)

# rs1_val == 256, 
# opcode: c.bnez; op1:x10; op1val:0x00000100; immval:6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000100, 6, 3f, x1, 64)

# rs1_val == 512, 
# opcode: c.bnez; op1:x10; op1val:0x00000200; immval:6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000200, 6, 1b, x1, 68)

# rs1_val == 1024, 
# opcode: c.bnez; op1:x10; op1val:0x00000400; immval:20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000400, 20, 1b, x1, 72)

# rs1_val == 2048, 
# opcode: c.bnez; op1:x10; op1val:0x00000800; immval:130
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00000800, 130, 1b, x1, 76)

# rs1_val == 4096, 
# opcode: c.bnez; op1:x10; op1val:0x00001000; immval:34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00001000, 34, 1b, x1, 80)

# rs1_val == 8192, 
# opcode: c.bnez; op1:x10; op1val:0x00002000; immval:128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00002000, 128, 3f, x1, 84)

# rs1_val == 16384, 
# opcode: c.bnez; op1:x10; op1val:0x00004000; immval:18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00004000, 18, 1b, x1, 88)

# rs1_val == 32768, 
# opcode: c.bnez; op1:x10; op1val:0x00008000; immval:12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00008000, 12, 3f, x1, 92)

# rs1_val == 65536, 
# opcode: c.bnez; op1:x10; op1val:0x00010000; immval:8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00010000, 8, 3f, x1, 96)

# rs1_val == 131072, 
# opcode: c.bnez; op1:x10; op1val:0x00020000; immval:4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00020000, 4, 3f, x1, 100)

# rs1_val == 262144, 
# opcode: c.bnez; op1:x10; op1val:0x00040000; immval:32
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00040000, 32, 3f, x1, 104)

# rs1_val == 1048576, 
# opcode: c.bnez; op1:x10; op1val:0x00100000; immval:64
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00100000, 64, 3f, x1, 108)

# rs1_val == 2097152, 
# opcode: c.bnez; op1:x10; op1val:0x00200000; immval:128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00200000, 128, 1b, x1, 112)

# rs1_val == 4194304, 
# opcode: c.bnez; op1:x10; op1val:0x00400000; immval:32
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00400000, 32, 3f, x1, 116)

# rs1_val == 8388608, 
# opcode: c.bnez; op1:x10; op1val:0x00800000; immval:8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x00800000, 8, 3f, x1, 120)

# rs1_val == 16777216, 
# opcode: c.bnez; op1:x10; op1val:0x01000000; immval:20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x01000000, 20, 1b, x1, 124)

# rs1_val == 33554432, 
# opcode: c.bnez; op1:x10; op1val:0x02000000; immval:18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x02000000, 18, 1b, x1, 128)

# rs1_val == 67108864, 
# opcode: c.bnez; op1:x10; op1val:0x04000000; immval:32
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x04000000, 32, 3f, x1, 132)

# rs1_val == 268435456, 
# opcode: c.bnez; op1:x10; op1val:0x10000000; immval:130
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x10000000, 130, 1b, x1, 136)

# rs1_val == 536870912, 
# opcode: c.bnez; op1:x10; op1val:0x20000000; immval:170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x20000000, 170, 3f, x1, 140)

# rs1_val == 1073741824, 
# opcode: c.bnez; op1:x10; op1val:0x40000000; immval:16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x40000000, 16, 3f, x1, 144)

# rs1_val == -2, 
# opcode: c.bnez; op1:x10; op1val:0xfffffffe; immval:8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffe, 8, 3f, x1, 148)

# rs1_val == -8388609, 
# opcode: c.bnez; op1:x10; op1val:0xff7fffff; immval:6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xff7fffff, 6, 3f, x1, 152)

# rs1_val == -16777217, 
# opcode: c.bnez; op1:x10; op1val:0xfeffffff; immval:64
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfeffffff, 64, 3f, x1, 156)

# rs1_val == -33554433, 
# opcode: c.bnez; op1:x10; op1val:0xfdffffff; immval:4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfdffffff, 4, 1b, x1, 160)

# rs1_val == -67108865, 
# opcode: c.bnez; op1:x10; op1val:0xfbffffff; immval:12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfbffffff, 12, 1b, x1, 164)

# rs1_val == -134217729, 
# opcode: c.bnez; op1:x10; op1val:0xf7ffffff; immval:4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xf7ffffff, 4, 3f, x1, 168)

# rs1_val == -268435457, 
# opcode: c.bnez; op1:x10; op1val:0xefffffff; immval:18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xefffffff, 18, 1b, x1, 172)

# rs1_val == -536870913, 
# opcode: c.bnez; op1:x10; op1val:0xdfffffff; immval:128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xdfffffff, 128, 3f, x1, 176)

# rs1_val == -1073741825, 
# opcode: c.bnez; op1:x10; op1val:0xbfffffff; immval:14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xbfffffff, 14, 1b, x1, 180)

# rs1_val == 1431655765, 
# opcode: c.bnez; op1:x10; op1val:0x55555555; immval:64
TEST_CBRANCH_OP(c.bnez, x2, x10, 0x55555555, 64, 3f, x1, 184)

# rs1_val == -1431655766, 
# opcode: c.bnez; op1:x10; op1val:0xaaaaaaaa; immval:172
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xaaaaaaaa, 172, 1b, x1, 188)

# rs1_val == -3, 
# opcode: c.bnez; op1:x10; op1val:0xfffffffd; immval:20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffd, 20, 1b, x1, 192)

# rs1_val == -5, 
# opcode: c.bnez; op1:x10; op1val:0xfffffffb; immval:32
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffffb, 32, 3f, x1, 196)

# rs1_val == -9, 
# opcode: c.bnez; op1:x10; op1val:0xfffffff7; immval:6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffff7, 6, 3f, x1, 200)

# rs1_val == -17, 
# opcode: c.bnez; op1:x10; op1val:0xffffffef; immval:14
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffef, 14, 3f, x1, 204)

# rs1_val == -33, 
# opcode: c.bnez; op1:x10; op1val:0xffffffdf; immval:12
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffdf, 12, 3f, x1, 208)

# rs1_val == -65, 
# opcode: c.bnez; op1:x10; op1val:0xffffffbf; immval:20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffffbf, 20, 1b, x1, 212)

# rs1_val == -129, 
# opcode: c.bnez; op1:x10; op1val:0xffffff7f; immval:34
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffff7f, 34, 1b, x1, 216)

# rs1_val == -257, 
# opcode: c.bnez; op1:x10; op1val:0xfffffeff; immval:170
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffeff, 170, 3f, x1, 220)

# rs1_val == -513, 
# opcode: c.bnez; op1:x10; op1val:0xfffffdff; immval:16
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffdff, 16, 3f, x1, 224)

# rs1_val == -1025, 
# opcode: c.bnez; op1:x10; op1val:0xfffffbff; immval:18
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffffbff, 18, 3f, x1, 228)

# rs1_val == -2049, 
# opcode: c.bnez; op1:x10; op1val:0xfffff7ff; immval:4
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffff7ff, 4, 3f, x1, 232)

# rs1_val == -4097, 
# opcode: c.bnez; op1:x10; op1val:0xffffefff; immval:6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffefff, 6, 1b, x1, 236)

# rs1_val == -8193, 
# opcode: c.bnez; op1:x10; op1val:0xffffdfff; immval:128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffdfff, 128, 3f, x1, 240)

# rs1_val == -16385, 
# opcode: c.bnez; op1:x10; op1val:0xffffbfff; immval:8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffffbfff, 8, 3f, x1, 244)

# rs1_val == -32769, 
# opcode: c.bnez; op1:x10; op1val:0xffff7fff; immval:20
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffff7fff, 20, 1b, x1, 248)

# rs1_val == -65537, 
# opcode: c.bnez; op1:x10; op1val:0xfffeffff; immval:6
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffeffff, 6, 1b, x1, 252)

# rs1_val == -262145, 
# opcode: c.bnez; op1:x10; op1val:0xfffbffff; immval:128
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfffbffff, 128, 3f, x1, 256)

# rs1_val == -524289, 
# opcode: c.bnez; op1:x10; op1val:0xfff7ffff; immval:8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xfff7ffff, 8, 3f, x1, 260)

# rs1_val == -1048577, 
# opcode: c.bnez; op1:x10; op1val:0xffefffff; immval:8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffefffff, 8, 1b, x1, 264)

# rs1_val == -2097153, 
# opcode: c.bnez; op1:x10; op1val:0xffdfffff; immval:64
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffdfffff, 64, 3f, x1, 268)

# rs1_val == -4194305, 
# opcode: c.bnez; op1:x10; op1val:0xffbfffff; immval:8
TEST_CBRANCH_OP(c.bnez, x2, x10, 0xffbfffff, 8, 3f, x1, 272)
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
    .fill 69*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
