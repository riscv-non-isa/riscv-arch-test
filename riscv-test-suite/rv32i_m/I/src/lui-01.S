
#This assembly file tests the lui instruction of the RISC-V I extension for the lui covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lui)

RVTEST_SIGBASE( x1,signature_x1_1)

# rd==x10, imm_val == 0, 
# opcode: lui ; dest:x10; immval:0
TEST_CASE(x9, x10, 0x0, x1, 0, lui x10,0)

# rd==x2, imm_val > 0, 
# opcode: lui ; dest:x2; immval:11
TEST_CASE(x9, x2, 0xb000, x1, 4, lui x2,11)

# rd==x15, imm_val == ((2**20)-1), 
# opcode: lui ; dest:x15; immval:1048575
TEST_CASE(x9, x15, 0xfffff000, x1, 8, lui x15,1048575)

# rd==x23, imm_val == 1, 
# opcode: lui ; dest:x23; immval:1
TEST_CASE(x9, x23, 0x1000, x1, 12, lui x23,1)

# rd==x25, imm_val == 2, 
# opcode: lui ; dest:x25; immval:2
TEST_CASE(x9, x25, 0x2000, x1, 16, lui x25,2)

# rd==x12, imm_val == 4, 
# opcode: lui ; dest:x12; immval:4
TEST_CASE(x9, x12, 0x4000, x1, 20, lui x12,4)

# rd==x21, imm_val == 8, 
# opcode: lui ; dest:x21; immval:8
TEST_CASE(x9, x21, 0x8000, x1, 24, lui x21,8)

# rd==x28, imm_val == 16, 
# opcode: lui ; dest:x28; immval:16
TEST_CASE(x9, x28, 0x10000, x1, 28, lui x28,16)

# rd==x24, imm_val == 32, 
# opcode: lui ; dest:x24; immval:32
TEST_CASE(x9, x24, 0x20000, x1, 32, lui x24,32)

# rd==x22, imm_val == 64, 
# opcode: lui ; dest:x22; immval:64
TEST_CASE(x9, x22, 0x40000, x1, 36, lui x22,64)

# rd==x30, imm_val == 128, 
# opcode: lui ; dest:x30; immval:128
TEST_CASE(x9, x30, 0x80000, x1, 40, lui x30,128)

# rd==x20, imm_val == 256, 
# opcode: lui ; dest:x20; immval:256
TEST_CASE(x9, x20, 0x100000, x1, 44, lui x20,256)

# rd==x19, imm_val == 512, 
# opcode: lui ; dest:x19; immval:512
TEST_CASE(x9, x19, 0x200000, x1, 48, lui x19,512)

# rd==x5, imm_val == 1024, 
# opcode: lui ; dest:x5; immval:1024
TEST_CASE(x9, x5, 0x400000, x1, 52, lui x5,1024)

# rd==x17, imm_val == 2048, 
# opcode: lui ; dest:x17; immval:2048
TEST_CASE(x9, x17, 0x800000, x1, 56, lui x17,2048)

# rd==x3, imm_val == 4096, 
# opcode: lui ; dest:x3; immval:4096
TEST_CASE(x9, x3, 0x1000000, x1, 60, lui x3,4096)

# rd==x27, imm_val == 8192, 
# opcode: lui ; dest:x27; immval:8192
TEST_CASE(x9, x27, 0x2000000, x1, 64, lui x27,8192)

# rd==x14, imm_val == 16384, 
# opcode: lui ; dest:x14; immval:16384
TEST_CASE(x9, x14, 0x4000000, x1, 68, lui x14,16384)

# rd==x4, imm_val == 32768, 
# opcode: lui ; dest:x4; immval:32768
TEST_CASE(x9, x4, 0x8000000, x1, 72, lui x4,32768)

# rd==x6, imm_val == 65536, 
# opcode: lui ; dest:x6; immval:65536
TEST_CASE(x9, x6, 0x10000000, x1, 76, lui x6,65536)

# rd==x16, imm_val == 131072, 
# opcode: lui ; dest:x16; immval:131072
TEST_CASE(x9, x16, 0x20000000, x1, 80, lui x16,131072)

# rd==x13, imm_val == 262144, 
# opcode: lui ; dest:x13; immval:262144
TEST_CASE(x9, x13, 0x40000000, x1, 84, lui x13,262144)

# rd==x31, imm_val == 524288, 
# opcode: lui ; dest:x31; immval:524288
TEST_CASE(x9, x31, 0x80000000, x1, 88, lui x31,524288)

# rd==x7, imm_val == 1048574, 
# opcode: lui ; dest:x7; immval:1048574
TEST_CASE(x9, x7, 0xffffe000, x1, 92, lui x7,1048574)

# rd==x26, imm_val == 1048573, 
# opcode: lui ; dest:x26; immval:1048573
TEST_CASE(x9, x26, 0xffffd000, x1, 96, lui x26,1048573)

# rd==x8, imm_val == 1048571, 
# opcode: lui ; dest:x8; immval:1048571
TEST_CASE(x9, x8, 0xffffb000, x1, 100, lui x8,1048571)

# rd==x18, imm_val == 1048567, 
# opcode: lui ; dest:x18; immval:1048567
TEST_CASE(x9, x18, 0xffff7000, x1, 104, lui x18,1048567)

# rd==x29, imm_val == 1048559, 
# opcode: lui ; dest:x29; immval:1048559
TEST_CASE(x3, x29, 0xfffef000, x1, 108, lui x29,1048559)
RVTEST_SIGBASE( x2,signature_x2_0)

# rd==x0, imm_val == 1048543, 
# opcode: lui ; dest:x0; immval:1048543
TEST_CASE(x3, x0, 0xfffdf000, x2, 0, lui x0,1048543)

# rd==x9, imm_val == 1048511, 
# opcode: lui ; dest:x9; immval:1048511
TEST_CASE(x3, x9, 0xfffbf000, x2, 4, lui x9,1048511)

# rd==x1, imm_val == 1048063, 
# opcode: lui ; dest:x1; immval:1048063
TEST_CASE(x3, x1, 0xffdff000, x2, 8, lui x1,1048063)

# rd==x11, imm_val == 1047551, 
# opcode: lui ; dest:x11; immval:1047551
TEST_CASE(x3, x11, 0xffbff000, x2, 12, lui x11,1047551)

# imm_val == 1046527, 
# opcode: lui ; dest:x10; immval:1046527
TEST_CASE(x3, x10, 0xff7ff000, x2, 16, lui x10,1046527)

# imm_val == 1044479, 
# opcode: lui ; dest:x10; immval:1044479
TEST_CASE(x3, x10, 0xfefff000, x2, 20, lui x10,1044479)

# imm_val == 1040383, 
# opcode: lui ; dest:x10; immval:1040383
TEST_CASE(x3, x10, 0xfdfff000, x2, 24, lui x10,1040383)

# imm_val == 1032191, 
# opcode: lui ; dest:x10; immval:1032191
TEST_CASE(x3, x10, 0xfbfff000, x2, 28, lui x10,1032191)

# imm_val == 1015807, 
# opcode: lui ; dest:x10; immval:1015807
TEST_CASE(x3, x10, 0xf7fff000, x2, 32, lui x10,1015807)

# imm_val == 983039, 
# opcode: lui ; dest:x10; immval:983039
TEST_CASE(x3, x10, 0xeffff000, x2, 36, lui x10,983039)

# imm_val == 917503, 
# opcode: lui ; dest:x10; immval:917503
TEST_CASE(x3, x10, 0xdffff000, x2, 40, lui x10,917503)

# imm_val == 786431, 
# opcode: lui ; dest:x10; immval:786431
TEST_CASE(x3, x10, 0xbffff000, x2, 44, lui x10,786431)

# imm_val == 524287, 
# opcode: lui ; dest:x10; immval:524287
TEST_CASE(x3, x10, 0x7ffff000, x2, 48, lui x10,524287)

# imm_val == 349525, 
# opcode: lui ; dest:x10; immval:349525
TEST_CASE(x3, x10, 0x55555000, x2, 52, lui x10,349525)

# imm_val == 699050, 
# opcode: lui ; dest:x10; immval:699050
TEST_CASE(x3, x10, 0xaaaaa000, x2, 56, lui x10,699050)

# imm_val == 1048447, 
# opcode: lui ; dest:x10; immval:1048447
TEST_CASE(x3, x10, 0xfff7f000, x2, 60, lui x10,1048447)

# imm_val == 1048319, 
# opcode: lui ; dest:x10; immval:1048319
TEST_CASE(x3, x10, 0xffeff000, x2, 64, lui x10,1048319)

# imm_val == 1048543, 
# opcode: lui ; dest:x10; immval:1048543
TEST_CASE(x3, x10, 0xfffdf000, x2, 68, lui x10,1048543)
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
    .fill 28*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 18*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
