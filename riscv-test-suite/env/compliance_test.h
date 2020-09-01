// See License.incore for details.
#ifndef _COMPLIANCE_TEST_H
#define _COMPLIANCE_TEST_H

#include "encoding.h"
// TODO the following should come from the YAML.
#ifndef NUM_SPECD_INTCAUSES 
#define NUM_SPECD_INTCAUSES 16
#endif

#define TEST_CASE_1

//-----------------------------------------------------------------------
// RV Compliance Macros
//-----------------------------------------------------------------------

#if XLEN==64
  #define SREG sd
  #define LREG ld
  #define REGWIDTH 8
#else 
  #if XLEN==32
    #define SREG sw
    #define LREG lw
    #define REGWIDTH 4
  #endif
#endif
#define MMODE_SIG 3
#define RLENG (REGWIDTH<<3)

#define RVTEST_ISA(_STR)

// ----------------------------------- CODE BEGIN w/ TRAP HANDLER START ------------------------ //
.macro RVTEST_CODE_BEGIN
  .section .text.init;
  .globl rvtest_start;                                                  \
  rvtest_start:
#ifdef rvtest_mtrap_routine
    jal rvtest_trap_prolog
#endif
  .globl rvtest_code_begin
  rvtest_code_begin:
.endm

// --------------------------------- CODE BEGIN w/ TRAP HANDLER END -----------------------------//

.macro RVTEST_CODE_END
  .align 4; 
  .global rvtest_code_end
  rvtest_code_end:
#ifdef rvtest_mtrap_routine
  .option push
  .option norvc 
  j exit_cleanup

  rvtest_trap_prolog:
  /******************************************************************************/
  /****                 Prolog, to be run before any tests                   ****/
  /****       #include 1 copy of this per mode in rvmodel_boot code?         ****/
  /**** -------------------------------------------------------------------  ****/
  /**** if xTVEC isn't completely RW, then we need to change the code at its ****/
  /**** target. The entire trap trampoline and mtrap handler replaces the    ****/
  /**** area pointed to by mtvec, after saving its original contents first.  ****/
  /**** If it isn't possible to fully write that area, restore and fail.     ****/
  /******************************************************************************/

  //trap_handler_prolog; enter with t1..t6 available
  
  // TODO: The initial piece of code kept the mscratch to point to mtrap_sigptr. I have modified it to
  // point to the trapreg_sv. The first entry of the trapreg_sv holds the pointer to the mtrap_sigptr
  // + OFFSET. This allows the trapreg_sv to be outside the signature and independent of relative
  // position from the mtrap_sigptr
  init_mscratch:
  	la	t1, trapreg_sv
  	csrrw	t1, mscratch, t1	// swap old mscratch. mscratch not points to trapreg_sv
  	la	t2, mscratch_save   // TODO Lost t2 here
  	SREG	t1, 0(t2)		        // save old mscratch in mscratch_save region
    csrr t1, mscratch       // read the trapreg_sv address
    la  t2, mtrap_sigptr    // locate the start of the trap signature
    SREG  t2, 0(t1)           // save mtrap_sigptr at first location of trapreg_sv
  init_mtvec:	
  	la	t1, mtrampoline    
  	la	t4, mtvec_save
  	csrrw	t2, mtvec, t1		          // swap mtvec and trap_trampoline
  	SREG	t2, 0(t4)		              // save orig mtvec
  	csrr	t3, mtvec		              // now read new_mtval back
  	beq	t3, t1, rvtest_code_begin	  // if mtvec==trap_trampoline, mtvec is writable, continue
  	
  /****************************************************************/
  /**** fixed mtvec, can't move it so move trampoline instead  ****/
  /**** t1=trampoline, t2=oldmtvec, t3=save area, t4=save end  ****/
  /****************************************************************/
  
  init_tramp:	/**** copy trampoline at mtvec tgt ****/
  // TODO: its possible that the mtvec is at reset value and not initialized by
  // the Boot-code. But you reached here because the trampoline address does not 
  // satify the alignment constraints of the mtvec. restoring with t2 doesn't 
  // achieve anything. What could be done here is to load the mtvec with a legal 
  // value from the WARL field of the YAML.
  
  	csrw	mtvec, t2		// restore orig mtvec, will now attemp to copy trampoline to it
  	la	t3, tramptbl_sv		// addr of save area
  	addi	t4, t2, 64+NUM_SPECD_INTCAUSES*8 // end of save area
  
  overwrite_tt:			            // now build new trampoline table with offsets base from curr mtvec
  	lw	t6, 0(t2)		            // get original mtvec target
  	sw	t6, 0(t3)		            // save it
  	lw	t5, 0(t1)		            // get trampoline src
  	sw	t5, 0(t2)		            // overwrite mtvec target
  	lw	t6, 0(t2)		            // rd it back to make sure it was written
  	bne	t6, t5, resto_tramp		  // table isn't fully writable, restore and give up
  	addi	t1, t1, 4		          // next src  index
  	addi	t2, t2, 4		          // next tgt  index
  	addi	t3, t3, 4		          // next save index
  	bne	t3, t4, overwrite_tt		// not done,  loop
  	j rvtest_code_begin
  
  resto_tramp:			                      // vector table not writeable, restore
  	LREG	t4, -80-NUM_SPECD_INTCAUSES*8(t5) // load mtvec_SAVE (used as end of loop marker)
  	LREG	t1, -72-NUM_SPECD_INTCAUSES*8(t5) // load mscratch_SAVE at fixed offset from table end
  	csrw	mscratch, t1		                // restore mscratch
  
  
  resto_loop:	              // goes backwards, t2= dest vec tbl ptr, t3=src save area ptr, t4=vec tbl begin
  	lw	t6, 0(t3)		        // read saved tgt entry
  	sw	t6, 0(t2)		        // restore original tgt
  	addi	t2, t2, -4		    // prev tgt  index
  	addi	t3, t3, -4		    // prev save index
  	bne	t2, t4, resto_loop  // didn't restore to begining yet,  loop
  	
  	j	rvtest_code_end			  // failure to replace trampoline
  
  // TODO: All the above needs to be put up in a separate macro of subsumed inside the
  // RVTEST_CODE_BEGIN macro but before the rvtest_code_begin

  #define mhandler			\
    csrrw   sp, mscratch, sp;	\
    SREG      t6, 6*REGWIDTH(sp);	\
  	auipc	t6, 0;			\
  	LREG	t6, 16(t6);		\
  	jalr	t6, t6;			\
    nop; \
  	.dword	common_mhandler		\
  
  /**********************************************************************/
  /**** This is the entry point for all m-modetraps, vectored or not.****/
  /**** At entry, mscratch will contain a pointer to a scratch area. ****/
  /**** This is an array of branches at 4B intevals that spreads out ****/
  /**** to an array of 32B mhandler macros for specd int causes, and ****/
  /**** to a return for anything above that (which causes a mismatch)****/
  /**********************************************************************/
  mtrampoline:		// 64 or 32 entry table
  // TODO: Earlier routine did not iterate the way expected.
  value = 0
  .rept NUM_SPECD_INTCAUSES     	  // located at each possible int vectors
     j	mtrap_handler + 32*(value)  //offset < +/- 1MB
     value = value + 1
  .endr
  .rept RLENG-NUM_SPECD_INTCAUSES   // fill at each impossible entry
  	mret
  .endr
  
  mtrap_handler:		/* after executing, sp points to temp save area, t4 is PC */
  .rept NUM_SPECD_INTCAUSES
    mhandler
  .endr
  /*********************************************************************/
  /**** common code for all ints & exceptions, will fork to handle  ****/ 
  /**** each separately. The common handler first stores trap mode+ ****/ 
  /**** vector, and mcause signatures. All traps have 4wd sigs, but ****/
  /**** sw and timer ints only store 3 of the 4.                    ****/
  /**** sig offset Exception    ExtInt       SWInt        TimerInt  ****/
  /****         0: tval         IntID        -1           -1        ****/
  /****         4: mepc         mip          mip          mip       ****/
  /****         8: <----------------------  mcause ------------->   ****/
  /****        12: <---------------------  Vect+mode  ---------->   ****/
  /*********************************************************************/
  /*   in general, CSRs loaded in t2, addresses into t3                */
  
  common_mhandler:                 /* enter with link in t6 */
          SREG      t5, 5*REGWIDTH(sp)
          SREG      t4, 4*REGWIDTH(sp)
          SREG      t3, 3*REGWIDTH(sp)
          SREG      t2, 2*REGWIDTH(sp)
          SREG      t1, 1*REGWIDTH(sp)  /* save other temporaries */
  
          LREG      t1, 0(sp)        /* load trap sig pointer (runs backwards from DATA_END) */
          
          la      t3, mtrampoline
          sub     t2, t6, t3       /* reloc “link” to 0..63 to show which int vector was taken */
          addi    t2, t2, MMODE_SIG   /* insert mode# into 1:0  */
          SREG      t2, 0*REGWIDTH(t1)        /* save 1st sig value, (vect, trapmode) */
  sv_mcause:	
          csrr   t2, mcause
          SREG      t2, 1*REGWIDTH(t1) /* save 2nd sig value, (mcause)  */
  
          bltz    t2, common_mint_handler /* this is a interrupt, not a trap */
  
  /********************************************************************/ 
  /**** This is the exceptions specific code, storing relative mepc****/ 
  /**** & relative tval signatures. tval is relocated by code or   ****/ 
  /**** data start, or 0 depending on mcause. mepc signature value ****/ 
  /**** is relocated by code start, and restored adjusted depending****/ 
  /**** on op alignment so trapped op isn't re-executed.           ****/ 
  /********************************************************************/ 
  // TODO: the sigptr also grows downwards (i.e. increments from the previous value) just like the
  // rest of the signature.
  common_mexcpt_handler:
          csrr   t2, mepc
  sv_mepc:	
          la      t3, rvtest_code_begin /* offset to compensate for different loader offsets */
          sub     t4, t2, t3      /* convert mepc to rel offset of beginning of test*/
          SREG      t4, 2*REGWIDTH(t1) /* save 3rd sig value, (rel mepc) into trap signature area */
  adj_mepc:   		//adj mepc so there is padding after op, and its 8B aligned
        andi    t4, t2, 0x2     /* set to 2 if mepc was misaligned */
        sub     t2, t2, t4      /* adjust mepc to prev 4B alignment */
        addi    t2, t2, 0x8     /* adjust mepc, so it skips past the op, has padding & is 4B aligned */
        csrw    mepc, t2	/* restore adjusted value, has 1,2, or 3 bytes of padding */
  
  
  // TODO: skipped this since not completely convinced.
  /* calculate relative mtval if it’s an address  (by code_begin or data_begin amt)  */
  /* note that masks that determine this are implementation specific from YAML */
  
  /* masks are bit reversed, so mcause==0 bit is in MSB (so different for RV32 and RV64) */
  
  //adj_mtval:
  //      	csrr   t2, mcause  /* code begin adjustment amount already in t3 */
  //
  //        li      t4, CODE_REL_TVAL_MSK   /* trap#s 12, 3,1,0, -- adjust w/ code_begin */
  //        sll     t4, t4, t2		/* put bit# in MSB */
  //        bltz    t4, sv_mtval		/* correct adjustment is data_begin in t3 */
  //
  //        la      t3, signature_start     /* adjustment for data_begin */
  //        li      t4, DATA_REL_TVAL_MSK   /* trap#s not 14, 11..8, 2 adjust w/ data_begin */
  //        sll     t4, t4, t2		/* put bit# in MSB */
  //        bltz    t4, sv_mtval		/* correct adjustment is data_begin in t3 */
  //
  //        li      t3, 0			/* else zero adjustment amt */
  sv_mtval:
          csrr   t2, mtval
          sub     t2, t2, t3		/* perform mtval adjust by either code or data position or zero*/
          SREG      t2, 3*REGWIDTH(t1)	/* save 4th sig value, (rel mtval) into trap signature area */
  
  resto_rtn:		/* restore and return */
          addi    t1, t1,4*REGWIDTH		/* adjust trap signature ptr (traps always save 4 words) */
          SREG      t1, 0*REGWIDTH(sp) 	/* save updated trap sig pointer (pts to trap_sigptr */
  
          LREG      t1, 1*REGWIDTH(sp)
          LREG      t2, 2*REGWIDTH(sp)
          LREG      t3, 3*REGWIDTH(sp)
          LREG      t4, 4*REGWIDTH(sp)
          LREG      t5, 5*REGWIDTH(sp)
          LREG      t6, 6*REGWIDTH(sp)  /* restore temporaries */
  
          csrrw   sp, mscratch, sp /* restore sp from scratch */
          mret
  
  common_mint_handler:    /* t1 has sig ptr, t2 has mcause */
  
          li      t3, 1
          sll     t3, t3, t2      /* create mask 1<<mcause */
          csrrc   t4, mip, t3     /* read, then attempt to clear int pend bit */
          // TODO added the following to ensure the same interrupt is not taken again.
          csrrc   t4, mie, t3     /* read, then attempt to clear int pend bit */
  sv_mip:	/* note: clear has no effect on MxIP */
          SREG      t4, 2*REGWIDTH(t1) /* save 3rd sig value, (mip)  */
  
  /* case table branch to interrupt clearing code, depending on mcause */
  	slli	t2, t2, 3       /* convert mcause to 8B offset */
  	la 	t3, clrint_tbl  /* load jump table address */
  	add	t3, t3, t2      /* index into to it, load vector, then jump to it */
  	LREG	t3, 0(t3)       
  	jr	t3
  
  // TODO: do we need to add DUT specific intrrupt clearing macros ??
  clr_sw_int:
          RVMODEL_CLEAR_MSW_INT
          j       resto_rtn   
  
  clr_tmr_int:
          RVMODEL_CLEAR_MTIMER_INT
          j       resto_rtn   
  
  clr_ext_int:
          RVMODEL_CLEAR_MEXT_INT
          SREG      t3, -3*REGWIDTH(t1) /* save 4rd sig value, (intID)  */
          j       resto_rtn   
  .align 3	
  clrint_tbl:
  	.dword	resto_rtn	/* int cause 0 is reserved, just return */
  	.dword	clr_sw_int	/* int cause 1  Smode SW int            */
  	.dword	resto_rtn	/* int cause 2 is reserved, just return */
  	.dword	clr_sw_int	/* int cause 3  Mmode SW int            */
  	.dword	resto_rtn	/* int cause 4 is reserved, just return */
  	.dword	clr_tmr_int	/* int cause 5  Smode Tmr int           */
  	.dword	resto_rtn	/* int cause 6 is reserved, just return */
  	.dword	clr_tmr_int	/* int cause 7  Mmode Tmr int           */
  	.dword	resto_rtn	/* int cause 8 is reserved, just return */
  	.dword	clr_ext_int	/* int cause 9  Smode Ext int           */
  	.dword	resto_rtn	/* int cause A is reserved, just return */
  	.dword	clr_ext_int	/* int cause B  Mmode Ext int           */
  	.dword	resto_rtn	/* int cause C is reserved, just return */
  	.dword	resto_rtn	/* int cause D is reserved, just return */
  	.dword	resto_rtn	/* int cause E is reserved, just return */
  	.dword	resto_rtn	/* int cause F is reserved, just return */
  	.dword	resto_rtn	/* int cause 10 is reserved, just return */
  	.dword	resto_rtn	/* int cause 11 is reserved, just return */
  	.dword	resto_rtn	/* int cause 12 is reserved, just return */
  	.dword	resto_rtn	/* int cause 13 is reserved, just return */
  	.dword	resto_rtn	/* int cause 14 is reserved, just return */
  	.dword	resto_rtn	/* int cause 15 is reserved, just return */
  	.dword	resto_rtn	/* int cause 16 is reserved, just return */
  	.dword	resto_rtn	/* int cause 17 is reserved, just return */
  	.dword	resto_rtn	/* int cause 18 is reserved, just return */
  	.dword	resto_rtn	/* int cause 19 is reserved, just return */
  	.dword	resto_rtn	/* int cause 1A is reserved, just return */
  	.dword	resto_rtn	/* int cause 1B is reserved, just return */
  	.dword	resto_rtn	/* int cause 1C is reserved, just return */
  	.dword	resto_rtn	/* int cause 1D is reserved, just return */
  	.dword	resto_rtn	/* int cause 1E is reserved, just return */
  	.dword	resto_rtn	/* int cause 1F is reserved, just return */
  // TODO: Maybe ensure we allocate enough space for the upcoming extensions like hypervisor
  /* Note: add more entries if mcause>=16 are ratified */
  	
  1:	// xtvec_installed:
  ret

  // ----------------------------------------------------------------------------------------------
  // ----------------------------------------------------------------------------------------------
  // ----------------------------------------------------------------------------------------------
  // ----------------------------------------------------------------------------------------------

  // TODO: The following 2 labels need to be put under the RVTEST_CODE_END. Need to ensure its after
  // rvtest_code_end so that the entire test is within the rvtest_code_begin and rvtest_code_end and
  // none of the boot, trap, etc. routines are part of this region.
  exit_cleanup://COMPLIANCE_HALT should get here
  	la	t3, tramptbl_sv+ 64+NUM_SPECD_INTCAUSES*8	// end of save area
  
  	la	t5, mtvec_save
  	LREG	t1, 8(t5)
  	csrw	 mscratch, t1		        // restore mscratch
  	LREG	t4, 0(t5)		              // load orig mtvec
  	csrrw	t2, mtvec, t4		        // restore mtvec (not redundant)
  	bne	t4, t2, 1f// if saved!=mtvec, done, else need to restore
  	
  	addi	t2, t4, 64+NUM_SPECD_INTCAUSES*8  // start pt is end of vect area
  resto_vec:	                              // goes backwards, t2= dest vec tbl ptr, 
                                            // t3=src save area ptr, t4=vec tbl begin
  	lw	t6, 0(t3)		                        // read saved tgt entry
  	sw	t6, 0(t2)		                        // restore original tgt
  	addi	t2, t2, -4		                    // prev tgt  index
  	addi	t3, t3, -4		                    // prev save index
  	bne	t2, t4, resto_vec	                  // didn't get to end, continue
  1: 
  rvtest_end:
  .option pop
#endif
.endm


.macro RVTEST_DATA_BEGIN
.data
#ifdef rvtest_mtrap_routine
trapreg_sv:	
  .fill    7, REGWIDTH, 0xdeaddead     /* handler reg save area, 1 extra wd just in case */
tramptbl_sv:	// save area of existing trampoline table
.rept NUM_SPECD_INTCAUSES
	J	.+0		  /* prototype jump instruction, offset to be filled in */
.endr
mtvec_save:
	.dword	0		  /* save area for incoming mtvec */
mscratch_save:	
	.dword  0		  /* save area for incoming mscratch */
#endif

.endm

.macro RVTEST_DATA_END
.align 5;
.endm


#define RVTEST_CASE(_PNAME,_DSTR,...)                               

#define RVTEST_SIGBASE(_R,_TAG) \
  la _R,_TAG;\
  .set offset,0;

#define RVTEST_SIGUPD(_BR,_R,_TAG)\
  SREG _R,offset(_BR);\
  .set offset,offset+REGWIDTH;

#endif //_COMPLIANCE_TEST_H

//------------------------------ BORROWED FROM ANDREW's RISC-V TEST MACROS -----------------------//
#define MASK_XLEN(x) ((x) & ((1 << (__riscv_xlen - 1) << 1) - 1))

#define SEXT_IMM(x) ((x) | (-(((x) >> 11) & 1) << 11))

#define TEST_JALR_OP(tempreg, rd, rs1, imm, swreg, offset) \
5:                                            ;\
    la rs1, 3f-imm                         ;\
    j 2f                                      ;\
                                              ;\
2:  jalr rd, imm(rs1)                         ;\
    xori rd,rd, 0x2                           ;\
    j 4f                                      ;\
                                              ;\
3:  xori rd,rd, 0x3                           ;\
                                              ;\
4: la tempreg, 5b                             ;\
   andi tempreg,tempreg,~(3)                  ;\
    sub rd,rd,tempreg                          ;\
  SREG rd, offset(swreg);

#define TEST_JAL_OP(tempreg, rd, imm, label, swreg, offset) \
5:                                           ;\
    la tempreg, 2f                           ;\
    jalr x0,0(tempreg)                       ;\
1:  xori rd,rd, 0x1                           ;\
    j 4f                                      ;\
    .if (imm/2) - 2 >= 0                      ;\
        .set num,(imm/2)-2                    ;\
    .else                                     ;\
        .set num,0                            ;\
    .endif                                    ;\
     .if label == 3f                          ;\
        .set num,0                            ;\
    .endif                                    ;\
    .rept num                                 ;\
    nop                                       ;\
    .endr                                     ;\
                                              ;\
2:  jal rd, label                       ;\
    xori rd,rd, 0x2                           ;\
    j 4f                                      ;\
    .if (imm/2) - 3 >= 0                      ;\
        .set num,(imm/2)-3                    ;\
    .else                                     ;\
        .set num,0                            ;\
    .endif                                    ;\
     .if label == 1b                          ;\
        .set num,0                            ;\
    .endif                                    ;\
    .rept num                                 ;\
    nop                                       ;\
    .endr                                     ;\
                                              ;\
3:  xori rd,rd, 0x3                           ;\
                                              ;\
4: la tempreg, 5b                             ;\
   andi tempreg,tempreg,~(3)                  ;\
    sub rd,rd,tempreg                          ;\
  SREG rd, offset(swreg);

#define TEST_BRANCH_OP(inst, tempreg, reg1, reg2, val1, val2, imm, label, swreg, offset) \
    li reg1, MASK_XLEN(val1)                  ;\
    li reg2, MASK_XLEN(val2)                  ;\
    j 2f                                      ;\
                                              ;\
1:  li tempreg, 0x1                           ;\
    j 4f                                      ;\
    .if (imm/4) - 2 >= 0                      ;\
        .set num,(imm/4)-2                    ;\
    .else                                     ;\
        .set num,0                            ;\
    .endif                                    ;\
    .if label == 3f                           ;\
        .set num,0                            ;\
    .endif                                    ;\
    .rept num                                 ;\
    nop                                       ;\
    .endr                                     ;\
                                              ;\
2:  inst reg1, reg2, label                    ;\
    li tempreg, 0x2                           ;\
    j 4f                                      ;\
    .if (imm/4) - 3 >= 0                      ;\
        .set num,(imm/4)-3                    ;\
    .else                                     ;\
        .set num,0                            ;\
    .endif                                    ;\
     .if label == 1b                          ;\
        .set num,0                            ;\
    .endif                                    ;\
    .rept num                                 ;\
    nop                                       ;\
    .endr                                     ;\
                                              ;\
3:  li tempreg, 0x3                           ;\
                                              ;\
4:  SREG tempreg, offset(swreg);                

#define TEST_STORE(swreg,testreg,index,rs1,rs2,rs2_val,imm_val,offset,inst,adj)   ;\
li rs2,rs2_val                                                             ;\
addi rs1,swreg,offset+adj                                                     ;\
li testreg,imm_val                                                         ;\
sub rs1,rs1,testreg                                                          ;\
inst rs2, imm_val(rs1)                                                   

#define TEST_LOAD(swreg,testreg,index,rs1,destreg,imm_val,offset,inst,adj)   ;\
la rs1,rvtest_data+(index*4)+adj-imm_val                                      ;\
inst destreg, imm_val(rs1)                                                   ;\
SREG destreg, offset(swreg);

#define TEST_CSR_FIELD(ADDRESS,TEMP_REG,MASK_REG,NEG_MASK_REG,VAL,DEST_REG,OFFSET,BASE_REG) \
    li TEMP_REG,VAL;\
    and TEMP_REG,TEMP_REG,MASK_REG;\
    csrr DEST_REG,ADDRESS;\
    and DEST_REG,DEST_REG,NEG_MASK_REG;\
    or TEMP_REG,TEMP_REG,DEST_REG;\
    csrw ADDRESS,TEMP_REG;\
    csrr DEST_REG,ADDRESS;\
    RVTEST_SIGUPD(BASE_REG,DEST_REG,OFFSET)


#define TEST_CASE(testreg, destreg, correctval, swreg, offset, code... ) \
    code; \
    SREG destreg, offset(swreg); \
    RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg, correctval) \


#define TEST_AUIPC(inst, destreg, correctval, imm, swreg, offset, testreg) \
    TEST_CASE(testreg, destreg, correctval, swreg, offset, \
      1: \
      inst destreg, imm; \
      la testreg, 1b; \
      sub destreg, destreg, testreg; \
      )

//Tests for a instructions with register-immediate operand
#define TEST_IMM_OP( inst, destreg, reg, correctval, val, imm, swreg, offset, testreg) \
    TEST_CASE(testreg, destreg, correctval, swreg, offset, \
      li reg, MASK_XLEN(val); \
      inst destreg, reg, SEXT_IMM(imm); \
    )

//Tests for a instructions with register-register operand
#define TEST_RR_OP(inst, destreg, reg1, reg2, correctval, val1, val2, swreg, offset, testreg) \
    TEST_CASE(testreg, destreg, correctval, swreg, offset, \
      li  reg1, MASK_XLEN(val1); \
      li  reg2, MASK_XLEN(val2); \
      inst destreg, reg1, reg2; \
    )

#define TEST_CNOP_OP( inst, testreg, imm_val, swreg, offset) \
    TEST_CASE(testreg, x0, 0, swreg, offset, \
      inst imm_val; \
      )

#define TEST_CMV_OP( inst, destreg, reg, correctval, val2, swreg, offset, testreg) \
    TEST_CASE(testreg, destreg, correctval, swreg, offset, \
      li reg, MASK_XLEN(val2); \
      inst destreg, reg; \
      )

#define TEST_CR_OP( inst, destreg, reg, correctval, val1, val2, swreg, offset, testreg) \
    TEST_CASE(testreg, destreg, correctval, swreg, offset, \
      li reg, MASK_XLEN(val2); \
      li destreg, MASK_XLEN(val1); \
      inst destreg, reg; \
      )

#define TEST_CI_OP( inst, destreg, correctval, val, imm, swreg, offset, testreg) \
    TEST_CASE(testreg, destreg, correctval, swreg, offset, \
      li destreg, MASK_XLEN(val); \
      inst destreg, imm; \
      )

#define TEST_CADDI4SPN_OP( inst, destreg, correctval, imm, swreg, offset, testreg) \
    TEST_CASE(testreg, destreg, correctval, swreg, offset, \
      li x2, 0; \
      inst destreg, x2,imm; \
      )

#define TEST_CBRANCH_OP(inst, tempreg, reg2, val2, imm, label, swreg, offset) \
    li reg2, MASK_XLEN(val2)                  ;\
    j 2f                                      ;\
                                              ;\
    .option push                              ;\
    .option norvc                             ;\
1:  li tempreg, 0x1                           ;\
    j 4f                                      ;\
    .option pop                               ;\
    .if (imm/2) - 4 >= 0                      ;\
        .set num,(imm/2)-4                    ;\
    .else                                     ;\
        .set num,0                            ;\
    .endif                                    ;\
    .if label == 3f                           ;\
        .set num,0                            ;\
    .endif                                    ;\
    .rept num                                 ;\
    c.nop                                     ;\
    .endr                                     ;\
2:  inst reg2, label                          ;\
    .option push                              ;\
    .option norvc                             ;\
    li tempreg, 0x2                           ;\
    j 4f                                      ;\
    .option pop                               ;\
    .if (imm/2) - 5 >= 0                      ;\
        .set num,(imm/2)-5                    ;\
    .else                                     ;\
        .set num,0                            ;\
    .endif                                    ;\
     .if label == 1b                          ;\
        .set num,0                            ;\
    .endif                                    ;\
    .rept num                                 ;\
    c.nop                                     ;\
    .endr                                     ;\
                                              ;\
3:  li tempreg, 0x3                           ;\
                                              ;\
4:  SREG tempreg, offset(swreg);              


#define TEST_CJ_OP(inst, tempreg, imm, label, swreg, offset) \
    j 2f                                      ;\
                                              ;\
    .option push                              ;\
    .option norvc                             ;\
1:  li tempreg, 0x1                           ;\
    j 4f                                      ;\
    .option pop                               ;\
    .if (imm/2) - 4 >= 0                      ;\
        .set num,(imm/2)-4                    ;\
    .else                                     ;\
        .set num,0                            ;\
    .endif                                    ;\
    .if label == 3f                           ;\
        .set num,0                            ;\
    .endif                                    ;\
    .rept num                                 ;\
    c.nop                                     ;\
    .endr                                     ;\
2:  inst label                          ;\
    .option push                              ;\
    .option norvc                             ;\
    li tempreg, 0x2                           ;\
    j 4f                                      ;\
    .option pop                               ;\
    .if (imm/2) - 5 >= 0                      ;\
        .set num,(imm/2)-5                    ;\
    .else                                     ;\
        .set num,0                            ;\
    .endif                                    ;\
     .if label == 1b                          ;\
        .set num,0                            ;\
    .endif                                    ;\
    .rept num                                 ;\
    c.nop                                     ;\
    .endr                                     ;\
                                              ;\
3:  li tempreg, 0x3                           ;\
                                              ;\
4:  SREG tempreg, offset(swreg);

#define TEST_CJAL_OP(inst, tempreg, imm, label, swreg, offset) \
5:                                            ;\
    j 2f                                      ;\
                                              ;\
    .option push                              ;\
    .option norvc                             ;\
1:  xori x1,x1, 0x1                           ;\
    j 4f                                      ;\
    .option pop                               ;\
    .if (imm/2) - 4 >= 0                      ;\
        .set num,(imm/2)-4                    ;\
    .else                                     ;\
        .set num,0                            ;\
    .endif                                    ;\
    .if label == 3f                           ;\
        .set num,0                            ;\
    .endif                                    ;\
    .rept num                                 ;\
    c.nop                                     ;\
    .endr                                     ;\
2:  inst label                          ;\
    .option push                              ;\
    .option norvc                             ;\
    xori x1,x1, 0x2                           ;\
    j 4f                                      ;\
    .option pop                               ;\
    .if (imm/2) - 5 >= 0                      ;\
        .set num,(imm/2)-5                    ;\
    .else                                     ;\
        .set num,0                            ;\
    .endif                                    ;\
     .if label == 1b                          ;\
        .set num,0                            ;\
    .endif                                    ;\
    .rept num                                 ;\
    c.nop                                     ;\
    .endr                                     ;\
                                              ;\
3:  xori x1,x1, 0x3                           ;\
                                              ;\
4: la tempreg, 5b                             ;\
   andi tempreg,tempreg,~(3)                  ;\
    sub x1,x1,tempreg                          ;\
  SREG x1, offset(swreg);

#define TEST_CJR_OP(tempreg, rs1, swreg, offset) \
5:                                            ;\
    la rs1, 3f                                ;\
                                              ;\
2:  c.jr rs1                                  ;\
    xori rs1,rs1, 0x2                           ;\
    j 4f                                      ;\
                                              ;\
3:  xori rs1,rs1, 0x3                           ;\
                                              ;\
4: la tempreg, 5b                             ;\
   andi tempreg,tempreg,~(3)                  ;\
    sub rs1,rs1,tempreg                          ;\
  SREG rs1, offset(swreg);

#define TEST_CJALR_OP(tempreg, rs1, swreg, offset) \
5:                                            ;\
    la rs1, 3f                                ;\
                                              ;\
2:  c.jalr rs1                                  ;\
    xori x1,x1, 0x2                           ;\
    j 4f                                      ;\
                                              ;\
3:  xori x1,x1, 0x3                           ;\
                                              ;\
4: la tempreg, 5b                             ;\
   andi tempreg,tempreg,~(3)                  ;\
    sub x1,x1,tempreg                          ;\
  SREG x1, offset(swreg);
