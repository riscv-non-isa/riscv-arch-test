
#This assembly file tests the sltiu instruction of the RISC-V I extension for the sltiu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltiu)

la x6,signature_x6_1

# rs1 == rd, rs1==x4, rd==x4, rs1_val == imm_val and rs1_val > 0 and imm_val > 0, rs1_val == 1, imm_val == 1
# opcode: sltiu ; op1:x4; dest:x4; op1val:0x00000001;  immval:1
TEST_IMM_OP( sltiu, x4, x4, 0x0, 0x00000001, 1, x6, 0, x8)

# rs1 != rd, rs1==x21, rd==x30, rs1_val != imm_val and rs1_val > 0 and imm_val > 0, imm_val == 1365, rs1_val == 4294965247
# opcode: sltiu ; op1:x21; dest:x30; op1val:0xfffff7ff;  immval:1365
TEST_IMM_OP( sltiu, x30, x21, 0x0, 0xfffff7ff, 1365, x6, 4, x8)

# rs1==x20, rd==x12, rs1_val == 0, imm_val == 512
# opcode: sltiu ; op1:x20; dest:x12; op1val:0x00000000;  immval:512
TEST_IMM_OP( sltiu, x12, x20, 0x1, 0x00000000, 512, x6, 8, x8)

# rs1==x23, rd==x26, rs1_val == (2**(xlen)-1), imm_val == 0
# opcode: sltiu ; op1:x23; dest:x26; op1val:0xffffffff;  immval:0
TEST_IMM_OP( sltiu, x26, x23, 0x0, 0xffffffff, 0, x6, 12, x8)

# rs1==x17, rd==x22, imm_val == (2**(12)-1), rs1_val == 2097152
# opcode: sltiu ; op1:x17; dest:x22; op1val:0x00200000;  immval:4095
TEST_IMM_OP( sltiu, x22, x17, 0x0, 0x00200000, 4095, x6, 16, x8)

# rs1==x7, rd==x14, rs1_val == 2, 
# opcode: sltiu ; op1:x7; dest:x14; op1val:0x00000002;  immval:12
TEST_IMM_OP( sltiu, x14, x7, 0x1, 0x00000002, 12, x6, 20, x8)

# rs1==x11, rd==x23, rs1_val == 4, 
# opcode: sltiu ; op1:x11; dest:x23; op1val:0x00000004;  immval:7
TEST_IMM_OP( sltiu, x23, x11, 0x1, 0x00000004, 7, x6, 24, x8)

# rs1==x15, rd==x9, rs1_val == 8, imm_val == 3071
# opcode: sltiu ; op1:x15; dest:x9; op1val:0x00000008;  immval:3071
TEST_IMM_OP( sltiu, x9, x15, 0x1, 0x00000008, 3071, x6, 28, x8)

# rs1==x27, rd==x28, rs1_val == 16, 
# opcode: sltiu ; op1:x27; dest:x28; op1val:0x00000010;  immval:13
TEST_IMM_OP( sltiu, x28, x27, 0x0, 0x00000010, 13, x6, 32, x8)

# rs1==x29, rd==x16, rs1_val == 32, imm_val == 4091
# opcode: sltiu ; op1:x29; dest:x16; op1val:0x00000020;  immval:4091
TEST_IMM_OP( sltiu, x16, x29, 0x1, 0x00000020, 4091, x6, 36, x8)

# rs1==x18, rd==x29, rs1_val == 64, 
# opcode: sltiu ; op1:x18; dest:x29; op1val:0x00000040;  immval:9
TEST_IMM_OP( sltiu, x29, x18, 0x0, 0x00000040, 9, x6, 40, x8)

# rs1==x14, rd==x13, rs1_val == 128, 
# opcode: sltiu ; op1:x14; dest:x13; op1val:0x00000080;  immval:12
TEST_IMM_OP( sltiu, x13, x14, 0x0, 0x00000080, 12, x6, 44, x8)

# rs1==x26, rd==x5, rs1_val == 256, imm_val == 3583
# opcode: sltiu ; op1:x26; dest:x5; op1val:0x00000100;  immval:3583
TEST_IMM_OP( sltiu, x5, x26, 0x1, 0x00000100, 3583, x6, 48, x8)

# rs1==x1, rd==x18, rs1_val == 512, imm_val == 2730
# opcode: sltiu ; op1:x1; dest:x18; op1val:0x00000200;  immval:2730
TEST_IMM_OP( sltiu, x18, x1, 0x1, 0x00000200, 2730, x6, 52, x8)

# rs1==x3, rd==x10, rs1_val == 1024, 
# opcode: sltiu ; op1:x3; dest:x10; op1val:0x00000400;  immval:6
TEST_IMM_OP( sltiu, x10, x3, 0x0, 0x00000400, 6, x6, 56, x8)

# rs1==x24, rd==x15, rs1_val == 2048, imm_val == 4093
# opcode: sltiu ; op1:x24; dest:x15; op1val:0x00000800;  immval:4093
TEST_IMM_OP( sltiu, x15, x24, 0x1, 0x00000800, 4093, x6, 60, x8)

# rs1==x2, rd==x25, rs1_val == 4096, imm_val == 4031
# opcode: sltiu ; op1:x2; dest:x25; op1val:0x00001000;  immval:4031
TEST_IMM_OP( sltiu, x25, x2, 0x0, 0x00001000, 4031, x6, 64, x8)

# rs1==x30, rd==x8, rs1_val == 8192, imm_val == 4094
# opcode: sltiu ; op1:x30; dest:x8; op1val:0x00002000;  immval:4094
TEST_IMM_OP( sltiu, x8, x30, 0x0, 0x00002000, 4094, x6, 68, x14)
la x4,signature_x4_0

# rs1==x9, rd==x24, rs1_val == 16384, imm_val == 32
# opcode: sltiu ; op1:x9; dest:x24; op1val:0x00004000;  immval:32
TEST_IMM_OP( sltiu, x24, x9, 0x0, 0x00004000, 32, x4, 0, x14)

# rs1==x28, rd==x19, rs1_val == 32768, imm_val == 3839
# opcode: sltiu ; op1:x28; dest:x19; op1val:0x00008000;  immval:3839
TEST_IMM_OP( sltiu, x19, x28, 0x0, 0x00008000, 3839, x4, 4, x14)

# rs1==x10, rd==x17, rs1_val == 65536, 
# opcode: sltiu ; op1:x10; dest:x17; op1val:0x00010000;  immval:17
TEST_IMM_OP( sltiu, x17, x10, 0x0, 0x00010000, 17, x4, 8, x14)

# rs1==x19, rd==x27, rs1_val == 131072, imm_val == 128
# opcode: sltiu ; op1:x19; dest:x27; op1val:0x00020000;  immval:128
TEST_IMM_OP( sltiu, x27, x19, 0x0, 0x00020000, 128, x4, 12, x14)

# rs1==x13, rd==x0, rs1_val == 262144, imm_val == 16
# opcode: sltiu ; op1:x13; dest:x0; op1val:0x00040000;  immval:16
TEST_IMM_OP( sltiu, x0, x13, 0x0, 0x00040000, 16, x4, 16, x14)

# rs1==x22, rd==x6, rs1_val == 524288, 
# opcode: sltiu ; op1:x22; dest:x6; op1val:0x00080000;  immval:1365
TEST_IMM_OP( sltiu, x6, x22, 0x0, 0x00080000, 1365, x4, 20, x14)

# rs1==x6, rd==x1, rs1_val == 1048576, 
# opcode: sltiu ; op1:x6; dest:x1; op1val:0x00100000;  immval:7
TEST_IMM_OP( sltiu, x1, x6, 0x0, 0x00100000, 7, x4, 24, x14)

# rs1==x0, rd==x11, rs1_val == 4194304, 
# opcode: sltiu ; op1:x0; dest:x11; op1val:0x00400000;  immval:4091
TEST_IMM_OP( sltiu, x11, x0, 0x0, 0x00400000, 4091, x4, 28, x14)

# rs1==x31, rd==x2, rs1_val == 8388608, imm_val == 4087
# opcode: sltiu ; op1:x31; dest:x2; op1val:0x00800000;  immval:4087
TEST_IMM_OP( sltiu, x2, x31, 0x0, 0x00800000, 4087, x4, 32, x14)

# rs1==x8, rd==x7, rs1_val == 16777216, 
# opcode: sltiu ; op1:x8; dest:x7; op1val:0x01000000;  immval:32
TEST_IMM_OP( sltiu, x7, x8, 0x0, 0x01000000, 32, x4, 36, x14)

# rs1==x12, rd==x20, rs1_val == 33554432, 
# opcode: sltiu ; op1:x12; dest:x20; op1val:0x02000000;  immval:4095
TEST_IMM_OP( sltiu, x20, x12, 0x0, 0x02000000, 4095, x4, 40, x14)

# rs1==x5, rd==x3, rs1_val == 67108864, imm_val == 2
# opcode: sltiu ; op1:x5; dest:x3; op1val:0x04000000;  immval:2
TEST_IMM_OP( sltiu, x3, x5, 0x0, 0x04000000, 2, x4, 44, x14)

# rs1==x16, rd==x21, rs1_val == 134217728, 
# opcode: sltiu ; op1:x16; dest:x21; op1val:0x08000000;  immval:10
TEST_IMM_OP( sltiu, x21, x16, 0x0, 0x08000000, 10, x4, 48, x14)

# rs1==x25, rd==x31, rs1_val == 268435456, 
# opcode: sltiu ; op1:x25; dest:x31; op1val:0x10000000;  immval:1
TEST_IMM_OP( sltiu, x31, x25, 0x0, 0x10000000, 1, x4, 52, x14)

# rs1_val == 536870912, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x20000000;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x20000000, 3071, x4, 56, x14)

# rs1_val == 1073741824, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x40000000;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x40000000, 4091, x4, 60, x14)

# rs1_val == 2147483648, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x80000000;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x80000000, 16, x4, 64, x14)

# rs1_val == 4294967294, imm_val == 64
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffe, 64, x4, 68, x14)

# rs1_val == 4294967293, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffd, 4087, x4, 72, x14)

# rs1_val == 4294967291, imm_val == 4063
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffb, 4063, x4, 76, x14)

# rs1_val == 4294967287, imm_val == 3967
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffff7, 3967, x4, 80, x14)

# rs1_val == 4294967279, imm_val == 2047
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffef;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffef, 2047, x4, 84, x14)

# rs1_val == 4294967263, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffdf, 2047, x4, 88, x14)

# rs1_val == 4294967231, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffbf, 6, x4, 92, x14)

# rs1_val == 4294967167, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffff7f, 3967, x4, 96, x14)

# rs1_val == 4261412863, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfdffffff, 14, x4, 100, x14)

# rs1_val == 4227858431, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfbffffff, 2, x4, 104, x14)

# rs1_val == 4160749567, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:15
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xf7ffffff, 15, x4, 108, x14)

# rs1_val == 4026531839, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xefffffff;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xefffffff, 4095, x4, 112, x14)

# rs1_val == 3758096383, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:12
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xdfffffff, 12, x4, 116, x14)

# rs1_val == 3221225471, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xbfffffff, 4093, x4, 120, x14)

# rs1_val == 2147483647, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x7fffffff;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x7fffffff, 5, x4, 124, x14)

# rs1_val == 1431655765, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x55555555;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x55555555, 13, x4, 128, x14)

# rs1_val == 2863311530, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xaaaaaaaa, 1365, x4, 132, x14)

# imm_val == 4, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00020000;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00020000, 4, x4, 136, x14)

# imm_val == 8, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x08000000;  immval:8
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x08000000, 8, x4, 140, x14)

# imm_val == 256, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00008000;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00008000, 256, x4, 144, x14)

# imm_val == 1024, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:1024
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffbf, 1024, x4, 148, x14)

# imm_val == 2048, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x10000000;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x10000000, 2048, x4, 152, x14)

# imm_val == 4079, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00000009;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x00000009, 4079, x4, 156, x14)

# rs1_val == 4294967039, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffeff, 32, x4, 160, x14)

# rs1_val == 4294966783, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffdff, 4079, x4, 164, x14)

# rs1_val == 4294966271, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:15
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffbff, 15, x4, 168, x14)

# rs1_val == 4294963199, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffefff;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffefff, 13, x4, 172, x14)

# rs1_val == 4294959103, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffdfff, 14, x4, 176, x14)

# rs1_val == 4294950911, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffbfff, 2, x4, 180, x14)

# rs1_val == 4294934527, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffff7fff, 0, x4, 184, x14)

# rs1_val == 4294901759, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffeffff, 4079, x4, 188, x14)

# rs1_val == 4294836223, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffdffff, 256, x4, 192, x14)

# rs1_val == 4294705151, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffbffff, 1365, x4, 196, x14)

# rs1_val == 4294443007, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfff7ffff, 3, x4, 200, x14)

# rs1_val == 4293918719, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffefffff;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffefffff, 4079, x4, 204, x14)

# rs1_val == 4292870143, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:19
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffdfffff, 19, x4, 208, x14)

# rs1_val == 4290772991, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:1
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffbfffff, 1, x4, 212, x14)

# rs1_val == 4286578687, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xff7fffff, 2730, x4, 216, x14)

# rs1_val == 4278190079, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfeffffff, 4091, x4, 220, x14)

# rs1_val == imm_val and rs1_val > 0 and imm_val > 0, rs1_val == 1, imm_val == 1
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00000001;  immval:1
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00000001, 1, x4, 224, x14)

# rs1_val == 262144, imm_val == 16
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00040000;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00040000, 16, x4, 228, x14)

# rs1_val == 4194304, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00400000;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00400000, 4091, x4, 232, x14)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x6_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 59*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
