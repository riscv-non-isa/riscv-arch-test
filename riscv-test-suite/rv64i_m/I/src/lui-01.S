
#This assembly file tests the lui instruction of the RISC-V I extension for the lui covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lui)

RVTEST_SIGBASE( x6,signature_x6_1)

# rd==x30, imm_val == 0, 
# opcode: lui ; dest:x30; immval:0
TEST_CASE(x16, x30, 0x0, x6, 0, lui x30,0)

# rd==x24, imm_val > 0, imm_val == 256
# opcode: lui ; dest:x24; immval:256
TEST_CASE(x16, x24, 0x10000000000000, x6, 8, lui x24,256)

# rd==x5, imm_val == ((2**20)-1), 
# opcode: lui ; dest:x5; immval:1048575
TEST_CASE(x16, x5, 0xfffff00000000000, x6, 16, lui x5,1048575)

# rd==x12, imm_val == 1, 
# opcode: lui ; dest:x12; immval:1
TEST_CASE(x16, x12, 0x100000000000, x6, 24, lui x12,1)

# rd==x29, imm_val == 2, 
# opcode: lui ; dest:x29; immval:2
TEST_CASE(x16, x29, 0x200000000000, x6, 32, lui x29,2)

# rd==x1, imm_val == 4, 
# opcode: lui ; dest:x1; immval:4
TEST_CASE(x16, x1, 0x400000000000, x6, 40, lui x1,4)

# rd==x28, imm_val == 8, 
# opcode: lui ; dest:x28; immval:8
TEST_CASE(x16, x28, 0x800000000000, x6, 48, lui x28,8)

# rd==x9, imm_val == 16, 
# opcode: lui ; dest:x9; immval:16
TEST_CASE(x16, x9, 0x1000000000000, x6, 56, lui x9,16)

# rd==x27, imm_val == 32, 
# opcode: lui ; dest:x27; immval:32
TEST_CASE(x16, x27, 0x2000000000000, x6, 64, lui x27,32)

# rd==x23, imm_val == 64, 
# opcode: lui ; dest:x23; immval:64
TEST_CASE(x16, x23, 0x4000000000000, x6, 72, lui x23,64)

# rd==x7, imm_val == 128, 
# opcode: lui ; dest:x7; immval:128
TEST_CASE(x16, x7, 0x8000000000000, x6, 80, lui x7,128)

# rd==x22, imm_val == 512, 
# opcode: lui ; dest:x22; immval:512
TEST_CASE(x16, x22, 0x20000000000000, x6, 88, lui x22,512)

# rd==x2, imm_val == 1024, 
# opcode: lui ; dest:x2; immval:1024
TEST_CASE(x16, x2, 0x40000000000000, x6, 96, lui x2,1024)

# rd==x21, imm_val == 2048, 
# opcode: lui ; dest:x21; immval:2048
TEST_CASE(x16, x21, 0x80000000000000, x6, 104, lui x21,2048)

# rd==x0, imm_val == 4096, 
# opcode: lui ; dest:x0; immval:4096
TEST_CASE(x16, x0, 0x100000000000000, x6, 112, lui x0,4096)

# rd==x20, imm_val == 8192, 
# opcode: lui ; dest:x20; immval:8192
TEST_CASE(x16, x20, 0x200000000000000, x6, 120, lui x20,8192)

# rd==x15, imm_val == 16384, 
# opcode: lui ; dest:x15; immval:16384
TEST_CASE(x16, x15, 0x400000000000000, x6, 128, lui x15,16384)

# rd==x14, imm_val == 32768, 
# opcode: lui ; dest:x14; immval:32768
TEST_CASE(x16, x14, 0x800000000000000, x6, 136, lui x14,32768)

# rd==x8, imm_val == 65536, 
# opcode: lui ; dest:x8; immval:65536
TEST_CASE(x16, x8, 0x1000000000000000, x6, 144, lui x8,65536)

# rd==x11, imm_val == 131072, 
# opcode: lui ; dest:x11; immval:131072
TEST_CASE(x16, x11, 0x2000000000000000, x6, 152, lui x11,131072)

# rd==x13, imm_val == 262144, 
# opcode: lui ; dest:x13; immval:262144
TEST_CASE(x16, x13, 0x4000000000000000, x6, 160, lui x13,262144)

# rd==x18, imm_val == 524288, 
# opcode: lui ; dest:x18; immval:524288
TEST_CASE(x16, x18, 0x8000000000000000, x6, 168, lui x18,524288)

# rd==x31, imm_val == 1048574, 
# opcode: lui ; dest:x31; immval:1048574
TEST_CASE(x16, x31, 0xffffe00000000000, x6, 176, lui x31,1048574)

# rd==x4, imm_val == 1048573, 
# opcode: lui ; dest:x4; immval:1048573
TEST_CASE(x16, x4, 0xffffd00000000000, x6, 184, lui x4,1048573)

# rd==x19, imm_val == 1048571, 
# opcode: lui ; dest:x19; immval:1048571
TEST_CASE(x16, x19, 0xffffb00000000000, x6, 192, lui x19,1048571)

# rd==x10, imm_val == 1048567, 
# opcode: lui ; dest:x10; immval:1048567
TEST_CASE(x16, x10, 0xffff700000000000, x6, 200, lui x10,1048567)

# rd==x25, imm_val == 1048559, 
# opcode: lui ; dest:x25; immval:1048559
TEST_CASE(x16, x25, 0xfffef00000000000, x6, 208, lui x25,1048559)

# rd==x3, imm_val == 1048543, 
# opcode: lui ; dest:x3; immval:1048543
TEST_CASE(x16, x3, 0xfffdf00000000000, x6, 216, lui x3,1048543)

# rd==x26, imm_val == 1048511, 
# opcode: lui ; dest:x26; immval:1048511
TEST_CASE(x2, x26, 0xfffbf00000000000, x6, 224, lui x26,1048511)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x6, imm_val == 1048063, 
# opcode: lui ; dest:x6; immval:1048063
TEST_CASE(x2, x6, 0xffdff00000000000, x1, 0, lui x6,1048063)

# rd==x17, imm_val == 1047551, 
# opcode: lui ; dest:x17; immval:1047551
TEST_CASE(x2, x17, 0xffbff00000000000, x1, 8, lui x17,1047551)

# rd==x16, imm_val == 1046527, 
# opcode: lui ; dest:x16; immval:1046527
TEST_CASE(x2, x16, 0xff7ff00000000000, x1, 16, lui x16,1046527)

# imm_val == 1044479, 
# opcode: lui ; dest:x10; immval:1044479
TEST_CASE(x2, x10, 0xfefff00000000000, x1, 24, lui x10,1044479)

# imm_val == 1040383, 
# opcode: lui ; dest:x10; immval:1040383
TEST_CASE(x2, x10, 0xfdfff00000000000, x1, 32, lui x10,1040383)

# imm_val == 1032191, 
# opcode: lui ; dest:x10; immval:1032191
TEST_CASE(x2, x10, 0xfbfff00000000000, x1, 40, lui x10,1032191)

# imm_val == 1015807, 
# opcode: lui ; dest:x10; immval:1015807
TEST_CASE(x2, x10, 0xf7fff00000000000, x1, 48, lui x10,1015807)

# imm_val == 983039, 
# opcode: lui ; dest:x10; immval:983039
TEST_CASE(x2, x10, 0xeffff00000000000, x1, 56, lui x10,983039)

# imm_val == 917503, 
# opcode: lui ; dest:x10; immval:917503
TEST_CASE(x2, x10, 0xdffff00000000000, x1, 64, lui x10,917503)

# imm_val == 786431, 
# opcode: lui ; dest:x10; immval:786431
TEST_CASE(x2, x10, 0xbffff00000000000, x1, 72, lui x10,786431)

# imm_val == 524287, 
# opcode: lui ; dest:x10; immval:524287
TEST_CASE(x2, x10, 0x7ffff00000000000, x1, 80, lui x10,524287)

# imm_val == 349525, 
# opcode: lui ; dest:x10; immval:349525
TEST_CASE(x2, x10, 0x5555500000000000, x1, 88, lui x10,349525)

# imm_val == 699050, 
# opcode: lui ; dest:x10; immval:699050
TEST_CASE(x2, x10, 0xaaaaa00000000000, x1, 96, lui x10,699050)

# imm_val == 1048447, 
# opcode: lui ; dest:x10; immval:1048447
TEST_CASE(x2, x10, 0xfff7f00000000000, x1, 104, lui x10,1048447)

# imm_val == 1048319, 
# opcode: lui ; dest:x10; immval:1048319
TEST_CASE(x2, x10, 0xffeff00000000000, x1, 112, lui x10,1048319)

# imm_val == 4096, 
# opcode: lui ; dest:x10; immval:4096
TEST_CASE(x2, x10, 0x100000000000000, x1, 120, lui x10,4096)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x6_1:
    .fill 29*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 16*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
