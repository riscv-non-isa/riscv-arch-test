/* These are macros to manage storing signatures, selecting what to save       */
/* keeping track of the hidden offset, and ensuring it doesn't overflow        */
/* They're useful across many tests, but generally for specific classes of ops */

#define RVTEST_FP_ENABLE()		;\
    LI(x2, MSTATUS_FS)			;\
    csrrs x3, mstatus,x2

/* RVTEST_SIGBASE(reg, label) initializes to label and clears offset */
#define RVTEST_SIGBASE(_R,_TAG)				;\
  LA(_R,_TAG)						;\
  .set offset,0

 /* RVTEST_BASEUPD(basereg) - updates the basereg   to basereg+hidden offset & resets hidden offset */
 /* RVTEST_BASEUPD(basereg, newbase) - sets newbase to basereg+hidden offset & resets hidden offset */
#define RVTEST_BASEUPD(_BR,...)				;\
       set corr 2048					;\
    .if offset <2048					;\
       set corr offset					;\
    .endif						;\
    .set offset, offset-corr				;\
    .if NARG(__VA_ARGS__) == 0				;\
	addi _BR,		    _BR, corr		;\
    .else						;\
	addi _ARG1(__VA_ARGS__,x0) ,_BR, corr		;\
    .endif				

/* DEPRECATE - with 1 param, this loads basereg without changing the offset */
/* with 2, it relocates it by a fixed amount without changing the offset    */
/* use SIGBASE if relocating, and SIGUPD will relocate if required.	    */
#define RVTEST_VALBASEUPD(_BR,...)			;\
  .if NARG(__VA_ARGS__) == 0				;\
      addi _BR,_BR,2040					;\
  .endif						;\
  .if NARG(__VA_ARGS__) == 1				;\
      LA(_BR,_ARG1(__VA_ARGS__,x0))			;\
   .endif

  /* DEPRECATE this is redundant with RVTEST_BASEUPD(BR,_NR),	*/
  /* except it doesn't correct for offset overflow while moving */
#define RVTEST_VALBASEMOV(_NR,_BR)			;\
  add _NR, _BR, x0;

  /* this function ensures individual sig stores don't exceed offset limits  */
  /* if they would, update the base and reduce offset by 2048 - _SZ	     */
  /* an option is to pre-incr offset if there was a previous signature store */
#define CHK_OFFSET(_BREG, _SZ, _PRE_INC)		;\
  .if (PRE_INC!=0)					;\
    .set offset, offset+_SZ				;\
  .endif						;\
  .if offset >= 2048					;\
     addi   _BREG,  _BREG,   (2048 - _SZ)		;\
     .set   offset, offset - (2048 - _SZ)		;\
  .endif

 /* automatically adjust base and offset if offset gets too big, resetting offset				 */
 /* RVTEST_SIGUPD(basereg, sigreg)	  stores sigreg at offset(basereg) and updates offset by regwidth	 */
 /* RVTEST_SIGUPD(basereg, sigreg,newoff) stores sigreg at newoff(basereg) and updates offset to regwidth+newoff */
#define RVTEST_SIGUPD(_BR,_R,...)			;\
  .if NARG(__VA_ARGS__) == 1				;\
	.set offset,_ARG1(__VA_ARGS__,0)		;\
  .endif						;\
  CHK_OFFSET(_BR, REGWIDTH, 0)				;\
  SREG _R,offset(_BR)					

/* RVTEST_SIGUPD_F(basereg, sigreg,flagreg,newoff)			 */
/* This macro is used to store the signature values of (32 & 64) F and D */
/* teats which use TEST_(FPSR_OP, FPIO_OP, FPRR_OP, FPR4_OP) opcodes	 */
/* It stores both an Xreg and an Freg, first adjusting base & offset to	 */
/* to keep offset < 2048. SIGALIGN is set to the max(FREGWIDTH, REGWIDTH)*/
/* _BR - Base Reg, _R - FReg, _F - Fstatus Xreg				 */
#define RVTEST_SIGUPD_F(_BR,_R,_F,...)			;\
  .if NARG(__VA_ARGS__) == 1				;\
  .set offset,_ARG1(__VA_ARGS__,0)			;\
  .endif						;\
  .if (offset&(SIGALIGN-1))!=0				;\
/* Throw warnings rather than modify offset to target */;\
     .warning "Incorrect Offset Alignment for signature.";\
     .set offset, offset&(SIGALIGN-1)+SIGALIGN		;\
  .endif						;\
  CHK_OFFSET(_BR, SIGALIGN, 0)				;\
  FSREG _R,offset(_BR)					;\
  CHK_OFFSET(_BR, SIGALIGN, 1)				;\
  SREG _F,offset+SIGALIGN(_BR)				;\
  .set offset,offset+SIGALIGN
 
/* RVTEST_SIGUPD_FID(basereg, sigreg,flagreg,newoff)	*/
/* This macro stores the signature values of (32 & 64)	*/
/* F and D insts which uses TEST_(FPID_OP, FCMP_OP) ops */
/* It stores two integer registers. SigReg is stored at */
/* offset[BaseReg], FlagReg at offset+Regwidth[BaseReg] */
/* It updates offset by 2*regwidth and post increments	*/
/* so repeated uses store signature values sequentially */
/*  _BR - Base Reg, _R - Signature reg, _F - Flag reg	*/
#define RVTEST_SIGUPD_FID(_BR,_R,_F,...)		;\
  .if NARG(__VA_ARGS__) == 1				;\
     .set offset,_ARG1(__VA_ARGS__,0)			;\
  .endif						;\
  CHK_OFFSET(_BR, REGWIDTH, 0)				;\
  SREG _R,offset(_BR)					;\
  CHK_OFFSET(_BR, REGWIDTH, 1)				;\
  SREG _F,offset+REGWIDTH(_BR)				;\
  .set offset,offset+REGWIDTH

// for updating signatures when 'rd' is a paired register (64-bit) in Zpsfoperand extension in RV32. **FIXME:redundant?
#define RVTEST_SIGUPD_P64(_BR,_R,_R_HI,_F,...)		;\
  rdov _F						;\
  .if NARG(__VA_ARGS__) == 1				;\
     .set offset,_ARG1(__VA_ARGS__,0)			;\
  .endif						;\
  CHK_OFFSET(_BR,   REGWIDTH, 0)			;\
  SREG _R,   offset(_BR)				;\
  CHK_OFFSET(_BR,   REGWIDTH, 1)			;\
  SREG _R_HI,offset+REGWIDTH(_BR)			;\
  CHK_OFFSET(_BR,   REGWIDTH, 1)			;\
  SREG _F,   offset+REGWIDTH(_BR)			;\
  rops.set offset,offset+REGWIDTH

//==============================================================================
// This section borrows from Andrew's from Andrew Waterman's risc-v test macros
// They are used to generate tests; some are op specific, some format specific
//==============================================================================

#define TEST_JALR_OP(tempreg, rd, rs1, imm, swreg, offset,adj);\
5:						;\
    LA(rd,5b)					;\
    .if adj & 1 == 1				;\
    LA(rs1, 3f-imm+adj-1  )			;\
    jalr rd, imm+1(rs1)				;\
    .else					;\
    LA(rs1, 3f-imm+adj)				;\
    jalr rd, imm(rs1)				;\
    .endif					;\
    nop						;\
    nop						;\
    xori rd,rd, 0x2				;\
    j 4f					;\
						;\
3:  .if adj & 2 == 2				;\
    .fill 2,1,0x00				;\
    .endif					;\
    xori rd,rd, 0x3				;\
    j 4f					;\
    .if adj&2 == 2				;\
    .fill 2,1,0x00				;\
    .endif					;\
						;\
4: LA(tempreg, 5b)				;\
   andi tempreg,tempreg,~(3)			;\
    sub rd,rd,tempreg				;\
    RVTEST_SIGUPD(swreg,rd,offset)
//SREG rd, offset(swreg);

#define TEST_JAL_OP(tempreg, rd, imm, label, swreg, offset, adj)\
5:						;\
    LA(tempreg, 2f)				;\
    jalr x0,0(tempreg)				;\
6:  LA(tempreg, 4f)				;\
    jalr x0,0(tempreg)				;\
1:  .if (adj & 2 == 2) && (label == 1b)		;\
    .fill 2,1,0x00				;\
    .endif					;\
    xori rd,rd, 0x1				;\
    beq x0,x0,6b				;\
    .if (adj & 2 == 2) && (label == 1b)		;\
    .fill 2,1,0x00				;\
    .endif					;\
    .if (imm/2) - 2 >= 0			;\
	.set num,(imm/2)-2			;\
    .else					;\
	.set num,0				;\
    .endif					;\
    .ifc label, 3f				;\
	.set num,0				;\
    .endif					;\
    .rept num					;\
    nop						;\
    .endr					;\
						;\
2:  jal rd, label+(adj)				;\
    .if adj & 2 == 2				;\
    nop						;\
    nop						;\
    .endif					;\
    xori rd,rd, 0x2				;\
    j 4f					;\
    .if (imm/2) - 3 >= 0			;\
	.set num,(imm/2)-3			;\
    .else					;\
	.set num,0				;\
    .endif					;\
    .ifc label, 1b				;\
	.set num,0				;\
    .endif					;\
    .rept num					;\
    nop						;\
    .endr					;\
3:  .if (adj & 2 == 2) && (label == 3f)		;\
    .fill 2,1,0x00				;\
    .endif					;\
    xori rd,rd, 0x3				;\
    LA(tempreg, 4f)				;\
    jalr x0,0(tempreg)				;\
    .if (adj&2 == 2) && (label == 3f)		;\
    .fill 2,1,0x00				;\
    .endif					;\
4: LA(tempreg, 5b)				;\
   andi tempreg,tempreg,~(3)			;\
    sub rd,rd,tempreg				;\
    RVTEST_SIGUPD(swreg,rd,offset)
//SREG rd, offset(swreg);

#define TEST_BRANCH_OP(inst, tempreg, reg1, reg2, val1, val2, imm, label, swreg, offset,adj);\
    LI(reg1, MASK_XLEN(val1))			;\
    LI(reg2, MASK_XLEN(val2))			;\
    addi tempreg,x0,0				;\
    j 2f					;\
						;\
1:  .if adj & 2 == 2				;\
    .fill 2,1,0x00				;\
    .endif					;\
    addi tempreg, tempreg, 0x1			;\
    j 4f					;\
    .if adj & 2 == 2				;\
    .fill 2,1,0x00				;\
    .endif					;\
    .if (imm/2) - 2 >= 0			;\
	.set num,(imm/2)-2			;\
    .else					;\
	.set num,0				;\
    .endif					;\
    .ifc label, 3f				;\
	.set num,0				;\
    .endif					;\
    .rept num					;\
    nop						;\
    .endr					;\
						;\
2:  inst reg1, reg2, label+adj			;\
    addi tempreg, tempreg,0x2			;\
    j 4f					;\
    .if (imm/4) - 3 >= 0			;\
	.set num,(imm/4)-3			;\
    .else					;\
	.set num,0				;\
    .endif					;\
    .ifc label, 1b				;\
	.set num,0				;\
    .endif					;\
    .rept num					;\
    nop						;\
    .endr					;\
						;\
3:  .if adj & 2 == 2				;\
    .fill 2,1,0x00				;\
    .endif					;\
    addi tempreg, tempreg,0x3			;\
    j 4f					;\
    .if adj&2 == 2				;\
    .fill 2,1,0x00				;\
    .endif					;\
						;\
4:   RVTEST_SIGUPD(swreg,tempreg,offset)

#define TEST_STORE(swreg,testreg,index,rs1,rs2,rs2_val,imm_val,offset,inst,adj) ;\
LI(rs2,rs2_val)					;\
addi rs1,swreg,offset+adj			;\
LI(testreg,imm_val)				;\
sub rs1,rs1,testreg				;\
inst rs2, imm_val(rs1)				;\
nop						;\
nop

#define TEST_LOAD(swreg,testreg,index,rs1,destreg,imm_val,offset,inst,adj) ;\
LA(rs1,rvtest_data+(index*4)+adj-imm_val)	;\
inst destreg, imm_val(rs1)			;\
nop						;\
nop						;\
RVTEST_SIGUPD(swreg,destreg,offset)

#define TEST_STORE_F(swreg,testreg,index,rs1,rs2,rs2_val,imm_val,offset,inst,adj,flagreg) ;\
LI(flagreg,rs2_val)				;\
fmv.w.x rs2, flagreg				;\
addi rs1,swreg,offset+adj			;\
LI(testreg,imm_val)				;\
sub rs1,rs1,testreg				;\
inst rs2, imm_val(rs1)				;\
nop						;\
nop						;\
csrrw flagreg, fflags, x0			;\
RVTEST_SIGUPD(swreg,flagreg,offset)

#define TEST_LOAD_F(swreg,testreg,index,rs1,destreg,imm_val,offset,inst,adj,flagreg) ;\
LA(rs1,rvtest_data+(index*4)+adj-imm_val)	;\
inst destreg, imm_val(rs1)			;\
nop						;\
nop						;\
csrrw flagreg, fflags, x0			;\
RVTEST_SIGUPD_F(swreg,destreg,flagreg,offset)

#define TEST_CSR_FIELD(ADDRESS,TEMP_REG,MASK_REG,NEG_MASK_REG,VAL,DEST_REG,OFFSET,BASE_REG);\
    LI(TEMP_REG,VAL)				;\
    and TEMP_REG,TEMP_REG,MASK_REG		;\
    csrr DEST_REG,ADDRESS			;\
    and DEST_REG,DEST_REG,NEG_MASK_REG		;\
    or TEMP_REG,TEMP_REG,DEST_REG		;\
    csrw ADDRESS,TEMP_REG			;\
    csrr DEST_REG,ADDRESS			;\
    RVTEST_SIGUPD(BASE_REG,DEST_REG,OFFSET)


#define TEST_CASE(testreg, destreg, correctval, swreg, offset, code... );\
    code					;\
    RVTEST_SIGUPD(swreg,destreg,offset)		;\
    RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg, correctval)

#define TEST_CASE_F(testreg, destreg, correctval, swreg, flagreg, offset, code... );\
    code						;\
    RVTEST_SIGUPD_F(swreg,destreg,flagreg,offset)	;\
    RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg, correctval)

#define TEST_CASE_FID(testreg, destreg, correctval, swreg, flagreg, offset, code... );\
    code						;\
    RVTEST_SIGUPD_FID(swreg,destreg,flagreg,offset)	;\
    RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg, correctval)

#define TEST_AUIPC(inst, destreg, correctval, imm, swreg, offset, testreg);\
    TEST_CASE(testreg, destreg, correctval, swreg, offset,	 \
      LA testreg, 1f						;\
      1:							;\
      inst destreg, imm						;\
      sub destreg, destreg, testreg				;\
      )

//Tests for instructions with register-immediate operand
#define TEST_IMM_OP( inst, destreg, reg, correctval, val, imm, swreg, offset, testreg);\
    TEST_CASE(testreg, destreg, correctval, swreg, offset,	 \
      LI(reg, MASK_XLEN(val))					;\
      inst destreg, reg, SEXT_IMM(imm)				;\
    )

//Tests for floating-point instructions with a single register operand
#define TEST_FPSR_OP( inst, destreg, freg, rm, correctval, valaddr_reg, val_offset, flagreg, swreg, offset, testreg);\
    TEST_CASE_F(testreg, destreg, correctval, swreg, flagreg, offset, \
      FLREG freg, val_offset(valaddr_reg)			;\
      csrrwi x0, frm, rm					;\
      inst destreg, freg					;\
      csrrw flagreg, fflags, x0					;\
    )

//Tests for floating-point instructions with a single register operand and integer destination register
#define TEST_FPID_OP( inst, destreg, freg, rm, correctval, valaddr_reg, val_offset, flagreg, swreg, offset, testreg);\
    TEST_CASE_FID(testreg, destreg, correctval, swreg, flagreg, offset, \
      FLREG freg, val_offset(valaddr_reg)			;\
      csrrwi x0, frm, rm					;\
      inst destreg, freg					;\
      csrrs flagreg, fflags, x0					;\
    )

//Tests for floating-point instructions with a single register operand and integer operand register
#define TEST_FPIO_OP( inst, destreg, freg, rm, correctval, valaddr_reg, val_offset, flagreg, swreg, offset, testreg);\
    TEST_CASE_F(testreg, destreg, correctval, swreg, flagreg, offset, \
      LREG freg, val_offset(valaddr_reg)			;\
      csrrwi x0, frm, rm					;\
      inst destreg, freg					;\
      csrrs flagreg, fflags, x0					;\
    )

//Tests for instructions with register-register operand
#define TEST_RI_OP(inst, destreg, reg2, imm, correctval, val1, val2, swreg, offset, testreg);\
    TEST_CASE(testreg, destreg, correctval, swreg, offset,	 \
      LI(destreg, MASK_XLEN(val1))				;\
      LI(reg2, MASK_XLEN(val2))					;\
      inst destreg, reg2, imm					;\
    )

//Tests for instructions with register-register-immediate operands
#define TEST_RRI_OP(inst, destreg, reg1, reg2, imm, correctval, val1, val2, swreg, offset, testreg);\
    TEST_CASE(testreg, destreg, correctval, swreg, offset,	 \
      LI(reg1, MASK_XLEN(val1))					;\
      LI(reg2, MASK_XLEN(val2))					;\
      inst destreg, reg1, reg2, imm				;\
    )

//Tests for instructions with a single register operand
#define TEST_R_OP( inst, destreg, reg, correctval, val, swreg, offset, testreg)	;\
    TEST_CASE(testreg, destreg, correctval, swreg, offset,	 \
      LI(reg, MASK_XLEN(val))					;\
      inst destreg, reg						;\
    )

//Tests for instructions with register-register operand
#define TEST_RR_OP(inst, destreg, reg1, reg2, correctval, val1, val2, swreg, offset, testreg);\
    TEST_CASE(testreg, destreg, correctval, swreg, offset,	 \
      LI(reg1, MASK_XLEN(val1))					;\
      LI(reg2, MASK_XLEN(val2))					;\
      inst destreg, reg1, reg2					;\
    )

//Tests for floating-point instructions with register-register operand
#define TEST_FPRR_OP(inst, destreg, freg1, freg2, rm, correctval, valaddr_reg, val_offset, flagreg, swreg, offset, testreg);\
    TEST_CASE_F(testreg, destreg, correctval, swreg, flagreg, offset, \
      FLREG freg1, val_offset(valaddr_reg)			;\
      FLREG freg2, val_offset+FREGWIDTH(valaddr_reg)		;\
      csrrwi x0, frm, rm					;\
      inst destreg, freg1, freg2				;\
      csrrw flagreg, fflags, x0					;\
    )

//Tests for floating-point CMP instructions with register-register operand
#define TEST_FCMP_OP(inst, destreg, freg1, freg2, correctval, valaddr_reg, val_offset, flagreg, swreg, offset, testreg);\
    TEST_CASE_FID(testreg, destreg, correctval, swreg, flagreg, offset, \
      FLREG freg1, val_offset(valaddr_reg)			;\
      FLREG freg2, val_offset+FREGWIDTH(valaddr_reg)		;\
      inst destreg, freg1, freg2				;\
      csrrw flagreg, fflags, x0					;\
    )

//Tests for floating-point R4 type instructions
#define TEST_FPR4_OP(inst, destreg, freg1, freg2, freg3, rm, correctval, valaddr_reg, val_offset, flagreg, swreg, offset, testreg);\
    TEST_CASE_F(testreg, destreg, correctval, swreg, flagreg, offset, \
      FLREG freg1, val_offset(valaddr_reg)			;\
      FLREG freg2, val_offset+FREGWIDTH(valaddr_reg)		;\
      FLREG freg3, val_offset+2*FREGWIDTH(valaddr_reg)		;\
      csrrwi x0, frm, rm					;\
      inst destreg, freg1, freg2, freg3				;\
      csrrw flagreg, fflags, x0					;\
    )

#if __riscv_xlen == 32
//Tests for a instruction with register pair operands for all its three operands
#define TEST_P64_PPP_OP_32(inst, destreg, destreg_hi, reg1, reg1_hi, reg2, reg2_hi, correctval, correctval_hi, val1, val1_hi, val2, val2_hi, swreg, offset, testreg);\
      LI(reg1, MASK_XLEN(val1))					;\
      LI(reg1_hi, MASK_XLEN(val1_hi))				;\
      LI(reg2, MASK_XLEN(val2))					;\
      LI(reg2_hi, MASK_XLEN(val2_hi))				;\
      inst destreg, reg1, reg2					;\
      RVTEST_SIGUPD_P64(swreg, destreg, destreg_hi, offset)	;\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg,    correctval)	;\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg_hi, correctval_hi)

#define TEST_P64_PPN_OP_32(inst, destreg, destreg_hi, reg1, reg1_hi, reg2, correctval, correctval_hi, val1, val1_hi, val2, swreg, offset, testreg);\
      LI(reg1, MASK_XLEN(val1))					;\
      LI(reg1_hi, MASK_XLEN(val1_hi))				;\
      LI(reg2, MASK_XLEN(val2))					;\
      inst destreg, reg1, reg2					;\
      RVTEST_SIGUPD_P64(swreg, destreg, destreg_hi, offset)	;\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg,    correctval)	;\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg_hi, correctval_hi)

#define TEST_P64_PNN_OP_32(inst, destreg, destreg_hi, reg1, reg2, correctval, correctval_hi, val1, val2, swreg, offset, testreg);\
      LI(reg1, MASK_XLEN(val1))					;\
      LI(reg2, MASK_XLEN(val2))					;\
      inst destreg, reg1, reg2					;\
      RVTEST_SIGUPD_P64(swreg, destreg, destreg_hi, offset)	;\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg,    correctval)	;\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg_hi, correctval_hi)

#define TEST_P64_NPN_OP_32(inst, destreg, reg1, reg1_hi, reg2, correctval, val1, val1_hi, val2, swreg, offset, testreg);\
      LI(reg1, MASK_XLEN(val1))					;\
      LI(reg1_hi, MASK_XLEN(val1_hi))				;\
      LI(reg2, MASK_XLEN(val2))					;\
      inst destreg, reg1, reg2					;\
      RVTEST_SIGUPD(swreg,destreg,offset)			;\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg, correctval)

#define TEST_P64_NP_OP_32(inst, destreg, reg1, reg1_hi, correctval, val1, val1_hi, imm_val, swreg, offset, testreg);\
      LI(reg1, MASK_XLEN(val1))					;\
      LI(reg1_hi, MASK_XLEN(val1_hi))				;\
      inst destreg, reg1, imm_val				;\
      RVTEST_SIGUPD(swreg,destreg,offset)			;\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg, correctval)

#define TEST_PK64_PPP_OP_32(inst, destreg, destreg_hi, reg1, reg1_hi, reg2, reg2_hi, correctval, correctval_hi, val1, val1_hi, val2, val2_hi, flagreg, swreg, offset, testreg);\
      LI(reg1, MASK_XLEN(val1))					;\
      LI(reg1_hi, MASK_XLEN(val1_hi))				;\
      LI(reg2, MASK_XLEN(val2))					;\
      LI(reg2_hi, MASK_XLEN(val2_hi))				;\
      inst destreg, reg1, reg2					;\
      RVTEST_SIGUPD_PK64(swreg,destreg, destreg_hi, flagreg, offset);\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg, correctval)	;\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg_hi, correctval_hi)
	
#define TEST_PK64_PNN_OP_32(inst, destreg, destreg_hi, reg1, reg2, correctval, correctval_hi, val1, val2, flagreg, swreg, offset, testreg);\
      LI(reg1, MASK_XLEN(val1))					;\
      LI(reg2, MASK_XLEN(val2))					;\
      inst destreg, reg1, reg2					;\
      RVTEST_SIGUPD_PK64(swreg, destreg, destreg_hi, flagreg, offset);\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg, correctval)	;\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg_hi, correctval_hi)

#define TEST_PK64_PPP_OP_32(inst, destreg, destreg_hi, reg1, reg1_hi, reg2, reg2_hi, correctval, correctval_hi, val1, val1_hi, val2, val2_hi, flagreg, swreg, offset, testreg);\
      LI(reg1, MASK_XLEN(val1))					;\
      LI(reg1_hi, MASK_XLEN(val1_hi))				;\
      LI(reg2, MASK_XLEN(val2))					;\
      LI(reg2_hi, MASK_XLEN(val2_hi))				;\
      inst destreg, reg1, reg2					;\
      RVTEST_SIGUPD_PK64(swreg,destreg, destreg_hi, flagreg, offset);\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg, correctval)	;\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg_hi, correctval_hi)
	
#define TEST_PK64_PNN_OP_32(inst, destreg, destreg_hi, reg1, reg2, correctval, correctval_hi, val1, val2, flagreg, swreg, offset, testreg);\
      LI(reg1, MASK_XLEN(val1))					;\
      LI(reg2, MASK_XLEN(val2))					;\
      inst destreg, reg1, reg2					;\
      RVTEST_SIGUPD_PK64(swreg, destreg, destreg_hi, flagreg, offset);\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg, correctval)	;\
      RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg_hi, correctval_hi)

//Tests for a instruction with pair register rd, pair register rs1 and pair register rs2
#define TEST_P64_PPP_OP( inst, rd, rd_hi, rs1, rs1_hi, rs2, rs2_hi, correctval, correctval_hi, rs1_val, rs1_val_hi, rs2_val, rs2_val_hi,          swreg, offset, testreg);\
    TEST_P64_PPP_OP_32(  inst, rd, rd_hi, rs1, rs1_hi, rs2, rs2_hi, correctval, correctval_hi, rs1_val, rs1_val_hi, rs2_val, rs2_val_hi,          swreg, offset, testreg)
#define TEST_PK64_PPP_OP(inst, rd, rd_hi, rs1, rs1_hi, rs2, rs2_hi, correctval, correctval_hi, rs1_val, rs1_val_hi, rs2_val, rs2_val_hi, flagreg, swreg, offset, testreg);\
    TEST_PK64_PPP_OP_32( inst, rd, rd_hi, rs1, rs1_hi, rs2, rs2_hi, correctval, correctval_hi, rs1_val, rs1_val_hi, rs2_val, rs2_val_hi, flagreg, swreg, offset, testreg)
//Tests for a instruction with pair register rd, pair register rs1 and normal register rs2
#define TEST_P64_PPN_OP( inst, rd, rd_hi, rs1, rs1_hi, rs2,         correctval, correctval_hi, rs1_val, rs1_val_hi, rs2_val,                      swreg, offset, testreg);\
    TEST_P64_PPN_OP_32(  inst, rd, rd_hi, rs1, rs1_hi, rs2,         correctval, correctval_hi, rs1_val, rs1_val_hi, rs2_val,                      swreg, offset, testreg)
//Tests for a instruction with pair register rd, normal register rs1 and normal register rs2
#define TEST_P64_PNN_OP( inst, rd, rd_hi, rs1,         rs2,         correctval, correctval_hi, rs1_val, rs2_val,                                  swreg, offset, testreg);\
    TEST_P64_PNN_OP_32(  inst, rd, rd_hi, rs1,         rs2,         correctval, correctval_hi, rs1_val, rs2_val,                                  swreg, offset, testreg)
//Tests for a instruction with pair register rd, normal register rs1 and normal register rs2
#define TEST_PK64_PNN_OP(inst, rd, rd_hi, rs1,         rs2,         correctval, correctval_hi, rs1_val, rs2_val,                         flagreg, swreg, offset, testreg);\
    TEST_PK64_PNN_OP_32( inst, rd, rd_hi, rs1,         rs2,         correctval, correctval_hi, rs1_val, rs2_val,                         flagreg, swreg, offset, testreg)
//Tests for a instruction with normal register rd, pair register rs1 and normal register rs2
#define TEST_P64_NPN_OP( inst, rd,        rs1, rs1_hi, rs2,         correctval, correctval_hi, rs1_val, rs1_val_hi, rs2_val,                      swreg, offset, testreg);\
    TEST_P64_NPN_OP_32(  inst, rd,        rs1, rs1_hi, rs2,         correctval, correctval_hi, rs1_val, rs1_val_hi, rs2_val,                      swreg, offset, testreg)
//Tests for a instruction with normal register rd, pair register rs1
#define TEST_P64_NP_OP(  inst, rd,        rs1, rs1_hi,              correctval, correctval_hi, rs1_val, rs1_val_hi, imm_val,                      swreg, offset, testreg);\
    TEST_P64_NP_OP_32(   inst, rd,        rs1, rs1_hi,              correctval, correctval_hi, rs1_val, rs1_val_hi, imm_val,                      swreg, offset, testreg)

#else

// When in rv64, there are no instructions with pair operand, so Macro is redefined to normal TEST_RR_OP
#define TEST_P64_PPP_OP( inst, rd, rd_hi, rs1, rs1_hi, rs2, rs2_hi, correctval, correctval_hi, rs1_val, rs1_val_hi, rs2_val, rs2_val_hi,          swreg, offset, testreg);\
    TEST_RR_OP(          inst, rd,        rs1,         rs2,         correctval,                rs1_val,             rs2_val,                      swreg, offset, testreg)
#define TEST_PK64_PPP_OP(inst, rd, rd_hi, rs1, rs1_hi, rs2, rs2_hi, correctval, correctval_hi, rs1_val, rs1_val_hi, rs2_val, rs2_val_hi, flagreg, swreg, offset, testreg);\
    TEST_PKRR_OP(        inst, rd,        rs1,         rs2,         correctval,                rs1_val,             rs2_val,             flagreg, swreg, offset, testreg)
#define TEST_P64_PPN_OP( inst, rd, rd_hi, rs1, rs1_hi, rs2,         correctval, correctval_hi, rs1_val, rs1_val_hi, rs2_val,                      swreg, offset, testreg);\
    TEST_RR_OP(          inst, rd,        rs1,         rs2,         correctval,                rs1_val,             rs2_val,                      swreg, offset, testreg)
#define TEST_P64_PNN_OP( inst, rd, rd_hi, rs1,         rs2,         correctval, correctval_hi, rs1_val,             rs2_val,                      swreg, offset, testreg);\
    TEST_RR_OP(          inst, rd,        rs1,         rs2,         correctval,                rs1_val,             rs2_val,                      swreg, offset, testreg)
#define TEST_PK64_PNN_OP(inst, rd, rd_hi, rs1,         rs2,         correctval, correctval_hi, rs1_val,             rs2_val,             flagreg, swreg, offset, testreg);\
    TEST_PKRR_OP(        inst, rd,        rs1,         rs2,         correctval,                rs1_val,             rs2_val,             flagreg, swreg, offset, testreg)
#define TEST_P64_NPN_OP( inst, rd,        rs1, rs1_hi, rs2,         correctval, correctval_hi, rs1_val, rs1_val_hi, rs2_val,                      swreg, offset, testreg);\
    TEST_RR_OP(          inst, rd,        rs1,         rs2,         correctval,                rs1_val,             rs2_val,                      swreg, offset, testreg)
#define TEST_P64_NP_OP(  inst, rd,        rs1, rs1_hi,              correctval, correctval_hi, rs1_val, rs1_val_hi, imm_val,                      swreg, offset, testreg);\
    TEST_IMM_OP(         inst, rd,        rs1,                      correctval,                rs1_val,             imm_val,                      swreg, offset, testreg)

#endif

//Tests for instructions with register-immediate operand and update the saturation flag
#define TEST_PKIMM_OP( inst, destreg, reg, correctval, val, imm, flagreg, swreg, offset, testreg);\
    TEST_CASE(testreg, destreg, correctval, swreg, offset,	 \
      LI(reg, MASK_XLEN(val))					;\
      inst destreg, reg, SEXT_IMM(imm)				;\
      rdov flagreg						;\
    )

//Tests for instructions with register-register operand and update the saturation flag
#define TEST_PKRR_OP(inst, destreg, reg1, reg2, correctval, val1, val2, flagreg, swreg, offset, testreg);\
    LI(reg1, MASK_XLEN(val1))					;\
    LI(reg2, MASK_XLEN(val2))					;\
    inst destreg, reg1, reg2					;\
    RVTEST_SIGUPD_PK(swreg, destreg, flagreg, offset)		;\
    RVMODEL_IO_ASSERT_GPR_EQ(testreg, destreg, correctval)

//Tests for instructions with a single register operand and update the saturation flag
#define TEST_PKR_OP( inst, destreg, reg, correctval, val, flagreg, swreg, offset, testreg);\
    TEST_CASE_FID(testreg, destreg, correctval, swreg, flagreg, offset, \
      LI(reg, MASK_XLEN(val))					;\
      inst destreg, reg						;\
      rdov flagreg						;\
    )

#define TEST_CNOP_OP( inst, testreg, imm_val, swreg, offset)	;\
    TEST_CASE(testreg, x0, 0, swreg, offset,			 \
      inst imm_val						;\
      )

#define TEST_CMV_OP( inst, destreg, reg, correctval, val2, swreg, offset, testreg);\
    TEST_CASE(testreg, destreg, correctval, swreg, offset,	 \
      LI(reg, MASK_XLEN(val2))					;\
      inst destreg, reg						;\
      )

#define TEST_CR_OP( inst, destreg, reg, correctval, val1, val2, swreg, offset, testreg);\
    TEST_CASE(testreg, destreg, correctval, swreg, offset,	 \
      LI(reg, MASK_XLEN(val2))					;\
      LI(destreg, MASK_XLEN(val1))				;\
      inst destreg, reg						;\
      )

#define TEST_CI_OP( inst, destreg, correctval, val, imm, swreg, offset, testreg);\
    TEST_CASE(testreg, destreg, correctval, swreg, offset,	 \
      LI(destreg, MASK_XLEN(val))				;\
      inst destreg, imm						;\
      )

#define TEST_CADDI4SPN_OP( inst, destreg, correctval, imm, swreg, offset, testreg);\
    TEST_CASE(testreg, destreg, correctval, swreg, offset,	 \
      LI(x2, 0)							;\
      inst destreg, x2,imm					;\
      )

//Tests for instructions with a single register operand
#define TEST_RD_OP(inst, destreg, reg1, correctval, val1, swreg, offset, testreg);\
  TEST_CMV_OP(inst, destreg, reg1, correctval, val1, swreg, offset, testreg)

#define TEST_CBRANCH_OP(inst, tempreg, reg2, val2, imm, label, swreg, offset);\
    LI(reg2, MASK_XLEN(val2))		;\
    j 2f				;\
    addi tempreg, x0,0			;\
    .option push			;\
    .option norvc			;\
1:  addi tempreg, tempreg,0x1		;\
    j 4f				;\
    .option pop				;\
    .if (imm/2) - 4 >= 0		;\
	.set num,(imm/2)-4		;\
    .else				;\
	.set num,0			;\
    .endif				;\
    .ifc label, 3f			;\
	.set num,0			;\
    .endif				;\
    .rept num				;\
    c.nop				;\
    .endr				;\
2:  inst reg2, label			;\
    .option push			;\
    .option norvc			;\
    addi tempreg, tempreg, 0x2		;\
    j 4f				;\
    .option pop				;\
    .if (imm/2) - 5 >= 0		;\
	.set num,(imm/2)-5		;\
    .else				;\
	.set num,0			;\
    .endif				;\
    .ifc label, 1b			;\
	.set num,0			;\
    .endif				;\
    .rept num				;\
    c.nop				;\
    .endr				;\
					;\
3:  addi tempreg, tempreg ,0x3		;\
					;\
4:  RVTEST_SIGUPD(swreg,tempreg,offset)

#define TEST_CJ_OP(inst, tempreg, imm, label, swreg, offset);\
    .option push			;\
    .option norvc			;\
    j 2f				;\
    addi tempreg,x0,0			;\
1:  addi tempreg, tempreg,0x1		;\
    j 4f				;\
    .option pop				;\
    .if (imm/2) - 4 >= 0		;\
	.set num,(imm/2)-4		;\
    .else				;\
	.set num,0			;\
    .endif				;\
    .ifc label, 3f			;\
	.set num,0			;\
    .endif				;\
    .rept num				;\
    c.nop				;\
    .endr				;\
2:  inst label				;\
    .option push			;\
    .option norvc			;\
    addi tempreg, tempreg, 0x2		;\
    j 4f				;\
    .option pop				;\
    .if (imm/2) - 5 >= 0		;\
	.set num,(imm/2)-5		;\
    .else				;\
	.set num,0			;\
    .endif				;\
    .ifc label, 1b			;\
	.set num,0			;\
    .endif				;\
    .rept num				;\
    c.nop				;\
    .endr				;\
					;\
3:  addi tempreg, tempreg, 0x3		;\
					;\
4:  RVTEST_SIGUPD(swreg,tempreg,offset)

#define TEST_CJAL_OP(inst, tempreg, imm, label, swreg, offset);\
5:					;\
    j 2f				;\
					;\
    .option push			;\
    .option norvc			;\
1:  xori x1,x1, 0x1			;\
    j 4f				;\
    .option pop				;\
    .if (imm/2) - 4 >= 0		;\
	.set num,(imm/2)-4		;\
    .else				;\
	.set num,0			;\
    .endif				;\
    .ifc label, 3f			;\
	.set num,0			;\
    .endif				;\
    .rept num				;\
    c.nop				;\
    .endr				;\
2:  inst label				;\
    .option push			;\
    .option norvc			;\
    xori x1,x1, 0x2			;\
    j 4f				;\
    .option pop				;\
    .if (imm/2) - 5 >= 0		;\
	.set num,(imm/2)-5		;\
    .else				;\
	.set num,0			;\
    .endif				;\
    .ifc label, 1b			;\
	.set num,0			;\
    .endif				;\
    .rept num				;\
    c.nop				;\
    .endr				;\
					;\
3:  xori x1,x1, 0x3			;\
					;\
4: LA(tempreg, 5b)			;\
   andi tempreg,tempreg,~(3)		;\
    sub x1,x1,tempreg			;\
  RVTEST_SIGUPD(swreg,x1,offset)

#define TEST_CJR_OP(tempreg, rs1, swreg, offset);\
5:					;\
    LA(rs1, 3f)				;\
					;\
2:  c.jr rs1				;\
    xori rs1,rs1, 0x2			;\
    j 4f				;\
					;\
3:  xori rs1,rs1, 0x3			;\
					;\
4: LA(tempreg, 5b)			;\
   andi tempreg,tempreg,~(3)		;\
    sub rs1,rs1,tempreg			;\
    RVTEST_SIGUPD(swreg,rs1,offset)

#define TEST_CJALR_OP(tempreg, rs1, swreg, offset);\
5:					;\
    LA(rs1, 3f)				;\
					;\
2:  c.jalr rs1				;\
    xori x1,x1, 0x2			;\
    j 4f				;\
					;\
3:  xori x1,x1, 0x3			;\
					;\
4: LA(tempreg, 5b)			;\
   andi tempreg,tempreg,~(3)		;\
    sub x1,x1,tempreg			;\
    RVTEST_SIGUPD(swreg,x1,offset)

//==============================================================================
// This section define deprecated macro name aliases, just for migration ease
//==============================================================================

#ifdef RV_COMPLIANCE_RV32M
  //#warning "RV_COMPLIANCE_RV32M macro will be deprecated."
  #define RVMODEL_BOOT	;\
    RVTEST_IO_INIT	;\
    RV_COMPLIANCE_RV32M ;\
    RV_COMPLIANCE_CODE_BEGIN
#endif

#define SWSIG(a, b)

#ifdef RV_COMPLIANCE_DATA_BEGIN
  //#warning "RV_COMPLIANCE_DATA_BEGIN macro deprecated in v3.x. Please use RVMODEL_DATA_BEGIN instead"
  #define RVMODEL_DATA_BEGIN;\
    RV_COMPLIANCE_DATA_BEGIN
#endif

#ifdef RV_COMPLIANCE_DATA_END
  //#warning "RV_COMPLIANCE_DATA_END macro deprecated in v3.x. Please use RVMODEL_DATA_END instead"
  #define RVMODEL_DATA_END;\
    RV_COMPLIANCE_DATA_END
#endif

#ifdef RV_COMPLIANCE_HALT
  //#warning "RV_COMPLIANCE_HALT macro deprecated in v3.x. Please use RVMODEL_HALT instead"
  #define RVMODEL_HALT;\
    RV_COMPLIANCE_HALT
#endif

#ifdef RVTEST_IO_ASSERT_GPR_EQ
  //#warning "RVTEST_IO_ASSERT_GPR_EQ macro deprecated in v3.x. Please use RVMODEL_IO_ASSERT_GPR_EQ instead"
  #define RVMODEL_IO_ASSERT_GPR_EQ(_SP, _R, _I);\
    RVTEST_IO_ASSERT_GPR_EQ(_SP,_R, _I)
#endif

#ifdef RVTEST_IO_WRITE_STR
  //#warning "RVTEST_IO_WRITE_STR macro deprecated in v3.x. Please use RVMODEL_IO_WRITE_STR instead"
  #define RVMODEL_IO_WRITE_STR(_SP, _STR);\
    RVTEST_IO_WRITE_STR(_SP, _STR)
#endif

#ifdef RVTEST_IO_INIT
  //#warning "RVTEST_IO_INIT is deprecated in v3.x. Please use RVMODEL_BOOT for initialization"
#endif

#ifdef RVTEST_IO_CHECK
  //#warning "RVTEST_IO_CHECK is deprecated in v3.x.
#endif
