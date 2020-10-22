
#This assembly file tests the sltiu instruction of the RISC-V I extension for the sltiu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltiu)

RVTEST_SIGBASE( x22,signature_x22_1)

# rs1 != rd, rs1==x20, rd==x6, rs1_val == imm_val and rs1_val > 0 and imm_val > 0, 
# opcode: sltiu ; op1:x20; dest:x6; op1val:0x0000000c;  immval:12
TEST_IMM_OP( sltiu, x6, x20, 0x0, 0x0000000c, 12, x22, 0, x12)

# rs1 == rd, rs1==x11, rd==x11, rs1_val != imm_val and rs1_val > 0 and imm_val > 0, rs1_val == (2**(xlen)-1), imm_val == 3071
# opcode: sltiu ; op1:x11; dest:x11; op1val:0xffffffff;  immval:3071
TEST_IMM_OP( sltiu, x11, x11, 0x0, 0xffffffff, 3071, x22, 4, x12)

# rs1==x5, rd==x27, rs1_val == 0, 
# opcode: sltiu ; op1:x5; dest:x27; op1val:0x00000000;  immval:11
TEST_IMM_OP( sltiu, x27, x5, 0x1, 0x00000000, 11, x22, 8, x12)

# rs1==x2, rd==x25, rs1_val == 1, 
# opcode: sltiu ; op1:x2; dest:x25; op1val:0x00000001;  immval:14
TEST_IMM_OP( sltiu, x25, x2, 0x1, 0x00000001, 14, x22, 12, x12)

# rs1==x10, rd==x26, imm_val == 0, rs1_val == 4293918719
# opcode: sltiu ; op1:x10; dest:x26; op1val:0xffefffff;  immval:0
TEST_IMM_OP( sltiu, x26, x10, 0x0, 0xffefffff, 0, x22, 16, x12)

# rs1==x21, rd==x5, imm_val == (2**(12)-1), rs1_val == 256
# opcode: sltiu ; op1:x21; dest:x5; op1val:0x00000100;  immval:4095
TEST_IMM_OP( sltiu, x5, x21, 0x1, 0x00000100, 4095, x22, 20, x12)

# rs1==x1, rd==x24, imm_val == 1, 
# opcode: sltiu ; op1:x1; dest:x24; op1val:0x00000005;  immval:1
TEST_IMM_OP( sltiu, x24, x1, 0x0, 0x00000005, 1, x22, 24, x12)

# rs1==x4, rd==x23, rs1_val == 2, 
# opcode: sltiu ; op1:x4; dest:x23; op1val:0x00000002;  immval:5
TEST_IMM_OP( sltiu, x23, x4, 0x1, 0x00000002, 5, x22, 28, x12)

# rs1==x29, rd==x13, rs1_val == 4, 
# opcode: sltiu ; op1:x29; dest:x13; op1val:0x00000004;  immval:17
TEST_IMM_OP( sltiu, x13, x29, 0x1, 0x00000004, 17, x22, 32, x12)

# rs1==x18, rd==x19, rs1_val == 8, imm_val == 4087
# opcode: sltiu ; op1:x18; dest:x19; op1val:0x00000008;  immval:4087
TEST_IMM_OP( sltiu, x19, x18, 0x1, 0x00000008, 4087, x22, 36, x12)

# rs1==x15, rd==x31, rs1_val == 16, imm_val == 512
# opcode: sltiu ; op1:x15; dest:x31; op1val:0x00000010;  immval:512
TEST_IMM_OP( sltiu, x31, x15, 0x1, 0x00000010, 512, x22, 40, x12)

# rs1==x23, rd==x20, rs1_val == 32, imm_val == 1024
# opcode: sltiu ; op1:x23; dest:x20; op1val:0x00000020;  immval:1024
TEST_IMM_OP( sltiu, x20, x23, 0x1, 0x00000020, 1024, x22, 44, x12)

# rs1==x8, rd==x2, rs1_val == 64, imm_val == 2047
# opcode: sltiu ; op1:x8; dest:x2; op1val:0x00000040;  immval:2047
TEST_IMM_OP( sltiu, x2, x8, 0x1, 0x00000040, 2047, x22, 48, x12)

# rs1==x27, rd==x7, rs1_val == 128, 
# opcode: sltiu ; op1:x27; dest:x7; op1val:0x00000080;  immval:15
TEST_IMM_OP( sltiu, x7, x27, 0x0, 0x00000080, 15, x22, 52, x12)

# rs1==x13, rd==x3, rs1_val == 512, 
# opcode: sltiu ; op1:x13; dest:x3; op1val:0x00000200;  immval:0
TEST_IMM_OP( sltiu, x3, x13, 0x0, 0x00000200, 0, x22, 56, x12)

# rs1==x3, rd==x10, rs1_val == 1024, imm_val == 3967
# opcode: sltiu ; op1:x3; dest:x10; op1val:0x00000400;  immval:3967
TEST_IMM_OP( sltiu, x10, x3, 0x1, 0x00000400, 3967, x22, 60, x12)

# rs1==x9, rd==x15, rs1_val == 2048, imm_val == 4
# opcode: sltiu ; op1:x9; dest:x15; op1val:0x00000800;  immval:4
TEST_IMM_OP( sltiu, x15, x9, 0x0, 0x00000800, 4, x22, 64, x12)

# rs1==x31, rd==x18, rs1_val == 4096, imm_val == 128
# opcode: sltiu ; op1:x31; dest:x18; op1val:0x00001000;  immval:128
TEST_IMM_OP( sltiu, x18, x31, 0x0, 0x00001000, 128, x22, 68, x12)

# rs1==x25, rd==x21, rs1_val == 8192, 
# opcode: sltiu ; op1:x25; dest:x21; op1val:0x00002000;  immval:15
TEST_IMM_OP( sltiu, x21, x25, 0x0, 0x00002000, 15, x22, 72, x12)

# rs1==x19, rd==x28, rs1_val == 16384, 
# opcode: sltiu ; op1:x19; dest:x28; op1val:0x00004000;  immval:15
TEST_IMM_OP( sltiu, x28, x19, 0x0, 0x00004000, 15, x22, 76, x12)

# rs1==x16, rd==x14, rs1_val == 32768, imm_val == 4094
# opcode: sltiu ; op1:x16; dest:x14; op1val:0x00008000;  immval:4094
TEST_IMM_OP( sltiu, x14, x16, 0x0, 0x00008000, 4094, x22, 80, x12)

# rs1==x24, rd==x16, rs1_val == 65536, 
# opcode: sltiu ; op1:x24; dest:x16; op1val:0x00010000;  immval:14
TEST_IMM_OP( sltiu, x16, x24, 0x0, 0x00010000, 14, x22, 84, x3)

# rs1==x12, rd==x17, rs1_val == 131072, 
# opcode: sltiu ; op1:x12; dest:x17; op1val:0x00020000;  immval:18
TEST_IMM_OP( sltiu, x17, x12, 0x0, 0x00020000, 18, x22, 88, x3)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x22, rd==x0, rs1_val == 262144, 
# opcode: sltiu ; op1:x22; dest:x0; op1val:0x00040000;  immval:4095
TEST_IMM_OP( sltiu, x0, x22, 0x0, 0x00040000, 4095, x2, 0, x3)

# rs1==x14, rd==x30, rs1_val == 524288, imm_val == 2730
# opcode: sltiu ; op1:x14; dest:x30; op1val:0x00080000;  immval:2730
TEST_IMM_OP( sltiu, x30, x14, 0x0, 0x00080000, 2730, x2, 4, x3)

# rs1==x30, rd==x8, rs1_val == 1048576, 
# opcode: sltiu ; op1:x30; dest:x8; op1val:0x00100000;  immval:512
TEST_IMM_OP( sltiu, x8, x30, 0x0, 0x00100000, 512, x2, 8, x3)

# rs1==x26, rd==x1, rs1_val == 2097152, 
# opcode: sltiu ; op1:x26; dest:x1; op1val:0x00200000;  immval:4087
TEST_IMM_OP( sltiu, x1, x26, 0x0, 0x00200000, 4087, x2, 12, x3)

# rs1==x0, rd==x12, rs1_val == 4194304, imm_val == 64
# opcode: sltiu ; op1:x0; dest:x12; op1val:0x00400000;  immval:64
TEST_IMM_OP( sltiu, x12, x0, 0x0, 0x00400000, 64, x2, 16, x3)

# rs1==x6, rd==x22, rs1_val == 8388608, 
# opcode: sltiu ; op1:x6; dest:x22; op1val:0x00800000;  immval:1024
TEST_IMM_OP( sltiu, x22, x6, 0x0, 0x00800000, 1024, x2, 20, x3)

# rs1==x7, rd==x9, rs1_val == 16777216, imm_val == 4093
# opcode: sltiu ; op1:x7; dest:x9; op1val:0x01000000;  immval:4093
TEST_IMM_OP( sltiu, x9, x7, 0x0, 0x01000000, 4093, x2, 24, x3)

# rs1==x17, rd==x4, rs1_val == 33554432, 
# opcode: sltiu ; op1:x17; dest:x4; op1val:0x02000000;  immval:11
TEST_IMM_OP( sltiu, x4, x17, 0x0, 0x02000000, 11, x2, 28, x3)

# rs1==x28, rd==x29, rs1_val == 67108864, 
# opcode: sltiu ; op1:x28; dest:x29; op1val:0x04000000;  immval:4094
TEST_IMM_OP( sltiu, x29, x28, 0x0, 0x04000000, 4094, x2, 32, x3)

# rs1_val == 134217728, imm_val == 32
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x08000000;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x08000000, 32, x2, 36, x3)

# rs1_val == 268435456, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x10000000;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x10000000, 4094, x2, 40, x3)

# rs1_val == 536870912, imm_val == 3839
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x20000000;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x20000000, 3839, x2, 44, x3)

# rs1_val == 1073741824, imm_val == 256
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x40000000;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x40000000, 256, x2, 48, x3)

# rs1_val == 2147483648, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x80000000;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x80000000, 14, x2, 52, x3)

# rs1_val == 4294967294, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffe, 13, x2, 56, x3)

# rs1_val == 4294967293, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:1
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffd, 1, x2, 60, x3)

# rs1_val == 4294967291, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffb, 18, x2, 64, x3)

# rs1_val == 4294967287, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffff7, 9, x2, 68, x3)

# rs1_val == 4294967279, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffef;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffef, 2047, x2, 72, x3)

# rs1_val == 4294967263, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffdf, 3, x2, 76, x3)

# rs1_val == 4294967231, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffbf, 3967, x2, 80, x3)

# rs1_val == 4294967167, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffff7f, 13, x2, 84, x3)

# rs1_val == 4294967039, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffeff, 512, x2, 88, x3)

# rs1_val == 4294966783, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:1
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffdff, 1, x2, 92, x3)

# rs1_val == 4294966271, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffbff, 3967, x2, 96, x3)

# rs1_val == 4294965247, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffff7ff, 2730, x2, 100, x3)

# rs1_val == 4261412863, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:128
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfdffffff, 128, x2, 104, x3)

# rs1_val == 4227858431, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfbffffff, 4095, x2, 108, x3)

# rs1_val == 4160749567, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xf7ffffff, 3839, x2, 112, x3)

# rs1_val == 4026531839, imm_val == 2048
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xefffffff;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xefffffff, 2048, x2, 116, x3)

# rs1_val == 3758096383, imm_val == 4091
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xdfffffff, 4091, x2, 120, x3)

# rs1_val == 3221225471, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xbfffffff, 7, x2, 124, x3)

# rs1_val == 2147483647, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x7fffffff;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x7fffffff, 9, x2, 128, x3)

# rs1_val == 1431655765, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x55555555;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x55555555, 4094, x2, 132, x3)

# rs1_val == 2863311530, imm_val == 1365
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xaaaaaaaa, 1365, x2, 136, x3)

# imm_val == 2, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00100000;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00100000, 2, x2, 140, x3)

# imm_val == 8, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000f;  immval:8
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000f, 8, x2, 144, x3)

# imm_val == 16, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000c;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x0000000c, 16, x2, 148, x3)

# imm_val == 4079, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00000040;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x00000040, 4079, x2, 152, x3)

# rs1_val == 4294443007, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfff7ffff, 32, x2, 156, x3)

# rs1_val == 4294705151, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffbffff, 4095, x2, 160, x3)

# rs1_val == 4294963199, imm_val == 4063
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffefff;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffefff, 4063, x2, 164, x3)

# rs1_val == 4294959103, imm_val == 3583
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffdfff, 3583, x2, 168, x3)

# rs1_val == 4290772991, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffbfffff, 6, x2, 172, x3)

# rs1_val == 4294950911, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffbfff, 0, x2, 176, x3)

# rs1_val == 4294934527, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffff7fff, 256, x2, 180, x3)

# rs1_val == 4294901759, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffeffff, 4093, x2, 184, x3)

# rs1_val == 4294836223, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffdffff, 4079, x2, 188, x3)

# imm_val == 4031, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xf7ffffff, 4031, x2, 192, x3)

# rs1_val == 4292870143, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffdfffff, 4093, x2, 196, x3)

# rs1_val == 4286578687, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xff7fffff, 7, x2, 200, x3)

# rs1_val == 4278190079, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfeffffff, 5, x2, 204, x3)

# rs1_val != imm_val and rs1_val > 0 and imm_val > 0, rs1_val == (2**(xlen)-1), imm_val == 3071
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffff;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffff, 3071, x2, 208, x3)

# rs1_val == 262144, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00040000;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00040000, 4095, x2, 212, x3)

# rs1_val == 4194304, imm_val == 64
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x00400000;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x00400000, 64, x2, 216, x3)
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

signature_x22_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x22_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 55*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
