#ifndef _COMPLIANCE_MODEL_H
#define _COMPLIANCE_MODEL_H

#define RVMODEL_DATA_SECTION \
        .pushsection .tohost,"aw",@progbits;                            \
        .align 8; .global tohost; tohost: .dword 0;                     \
        .align 8; .global fromhost; fromhost: .dword 0;                 \
        .popsection;                                                    \
        .align 8; .global begin_regstate; begin_regstate:               \
        .word 128;                                                      \
        .align 8; .global end_regstate; end_regstate:                   \
        .word 4;


//TODO: Add code here to run after all tests have been run
// The .align 4 ensures that the signature begins at a 16-byte boundary
#define RVMODEL_HALT                                              \
  self_loop:  j self_loop;

//TODO: declare the start of your signature region here. Nothing else to be used here.
// The .align 4 ensures that the signature ends at a 16-byte boundary
#define RVMODEL_DATA_BEGIN                                              \
  .align 4; .global begin_signature; begin_signature:

//TODO: declare the end of the signature region here. Add other target specific contents here.
#define RVMODEL_DATA_END                                                      \
  .alive 4; .global end_signature; end_signature:                             \
  RVMODEL_DATA_SECTION                                                        


//RVMODEL_BOOT
//TODO:Any specific target init code should be put here or the macro can be left empty

// For code that has a split rom/ram area
// Code below will copy from the rom area to ram the 
// data.strings and .data sections to ram.
// Use linksplit.ld 
#define RVMODEL_BOOT \
.section .text.init; \
la t0, _data_strings; \
  la t1, _fstext; \
  la t2, _estext; \
1: \
  lw t3, 0(t0); \
  sw t3, 0(t1); \
  addi t0, t0, 4; \
  addi t1, t1, 4; \
  bltu t1, t2, 1b; \
  la t0, _data_lma; \
  la t1, _data; \
  la t2, _edata; \
1: \
  lw t3, 0(t0); \
  sw t3, 0(t1); \
  addi t0, t0, 4; \
  addi t1, t1, 4; \
  bltu t1, t2, 1b; \
  RVTEST_IO_INIT

// _SP = (volatile register)
//TODO: Macro to output a string to IO
#define LOCAL_IO_WRITE_STR(_STR) RVMODEL_IO_WRITE_STR(x31, _STR)
#define RVMODEL_IO_WRITE_STR(_SP, _STR)                                 \
    .section .data.string;                                              \
20001:                                                                  \
    .string _STR;                                                       \
    .section .text.init;                                                \
    la a0, 20001b;                                                      \
    jal FN_WriteStr;

#define RSIZE 4
// _SP = (volatile register)
#define LOCAL_IO_PUSH(_SP)                                              \
    la      _SP,  begin_regstate;                                       \
    sw      ra,   (1*RSIZE)(_SP);                                       \
    sw      t0,   (2*RSIZE)(_SP);                                       \
    sw      t1,   (3*RSIZE)(_SP);                                       \
    sw      t2,   (4*RSIZE)(_SP);                                       \
    sw      t3,   (5*RSIZE)(_SP);                                       \
    sw      t4,   (6*RSIZE)(_SP);                                      \
    sw      s0,   (7*RSIZE)(_SP);                                      \
    sw      a0,   (8*RSIZE)(_SP);

// _SP = (volatile register)
#define LOCAL_IO_POP(_SP)                                               \
    la      _SP,   begin_regstate;                                      \
    lw      ra,   (1*RSIZE)(_SP);                                       \
    lw      t0,   (2*RSIZE)(_SP);                                       \
    lw      t1,   (3*RSIZE)(_SP);                                       \
    lw      t2,   (4*RSIZE)(_SP);                                       \
    lw      t3,   (5*RSIZE)(_SP);                                       \
    lw      t4,   (6*RSIZE)(_SP);                                       \
    lw      s0,   (7*RSIZE)(_SP);                                       \
    lw      a0,   (8*RSIZE)(_SP);

//RVMODEL_IO_ASSERT_GPR_EQ
// _SP = (volatile register)
// _R = GPR
// _I = Immediate
// This code will check a test to see if the results 
// match the expected value.
// It can also be used to tell if a set of tests is still running or has crashed
#if 0
// Spinning | =  "I am alive" 
#define RVMODEL_IO_ASSERT_GPR_EQ(_SP, _R, _I)                                 \
    LOCAL_IO_PUSH(_SP)                                                  \
    RVMODEL_IO_WRITE_STR2("|");                                       \
    RVMODEL_IO_WRITE_STR2("\b=\b");                                       \    
    LOCAL_IO_POP(_SP)

#else

// Test to see if a specific test has passed or not.  Can assert or not.
#define RVMODEL_IO_ASSERT_GPR_EQ(_SP, _R, _I)                                 \
    LOCAL_IO_PUSH(_SP)                                                  \
    mv          s0, _R;                                                 \
    li          t5, _I;                                                 \
    beq         s0, t5, 20002f;                                         \
    RVMODEL_IO_WRITE_STR("Test Failed ");                              \
    RVMODEL_IO_WRITE_STR(": ");                                        \
    RVMODEL_IO_WRITE_STR(# _R);                                        \
    RVMODEL_IO_WRITE_STR("( ");                                        \
    mv      a0, s0;                                                     \
    jal FN_WriteNmbr;                                                   \
    RVMODEL_IO_WRITE_STR(" ) != ");                                    \
    mv      a0, t5;                                                     \
    jal FN_WriteNmbr;                                                   \
    j 20003f;                                                           \
20002:                                                                  \
    RVMODEL_IO_WRITE_STR("Test Passed ");                              \
20003:                                                                  \
    RVMODEL_IO_WRITE_STR("\n");                                        \
    LOCAL_IO_POP(_SP)
    
#endif

.section .text
// FN_WriteStr: Add code here to write a string to IO
// FN_WriteNmbr: Add code here to write a number (32/64bits) to IO
FN_WriteStr: \
    ret; \
FN_WriteNmbr: \
    ret;

//RVTEST_IO_ASSERT_SFPR_EQ
#define RVMODEL_IO_ASSERT_SFPR_EQ(_F, _R, _I)
//RVTEST_IO_ASSERT_DFPR_EQ
#define RVMODEL_IO_ASSERT_DFPR_EQ(_D, _R, _I)

// TODO: specify the routine for setting machine software interrupt
#define RVMODEL_SET_MSW_INT

// TODO: specify the routine for clearing machine software interrupt
#define RVMODEL_CLEAR_MSW_INT

// TODO: specify the routine for clearing machine timer interrupt
#define RVMODEL_CLEAR_MTIMER_INT

// TODO: specify the routine for clearing machine external interrupt
#define RVMODEL_CLEAR_MEXT_INT

#endif // _COMPLIANCE_MODEL_H

