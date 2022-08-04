// This file is divided into the following sections:
//	RV Arch Test Constants
//	general test and helper macros, required,  optional, or just useful
//	   _ARGn, SIG[BASE/UPD[_F/ID]],BASE_UPD,BIT,LA[U],LI[U],RVTEST_[INIT/SAVE]_GPRS, XCSR_RENAME
//	RV ARCH Test Interrupt Macros ****FIXME:spec which regs must not be altered
//	primary macros used by handle: RVTEST_TRAP{_PROLOG/_HANDLER/_EPILOG/SAVEAREA}
//	required test format spec macros:      RVTEST_{Code)/DATA/SIG}{_BEGIN/_END}
//	macros from Andrew Waterman's risc-v test macros
//	deprecated macro name aliases, just for migration ease

//  The resulting memory layout of the trap handler is (MACRO_NAME, label [function])
//****************************************************************
//  (code section)
// RVMODEL_BOOT
//	rvtest_entry_point: [boot code]
// RVTEST_CODE_BEGIN
//	rvtest_init:	   [TRAP_PROLOG]   (m, ms, or msv)
//			   [INIT_GPRS]
//	rvtest_code_begin:
//*****************************
//********(body of tests)******
//*****************************
// RVTEST_CODE_END
//	rvtest_code_end:   [*optional* SAVE_GPRS routine]
//			   [RVTEST_GOTO_MMODE ] **FIXME** this won't work if MMU enabled unless VA=PA
//	cleanup_epilogs	   [TRAP_EPILOG	  (m, ms, or msv)] (jump to exit_cleanup)
//			   [TRAP_HANDLER  (m, ms, or msv)]
//	exit_cleanup:	   [RVMODEL_HALT macro or a branch to it.]
//
//--------------------------------this could start a new section--------------------------------
//  (Data section) - align to 4K boundary
// RVTEST_DATA_BEGIN
//**************************************
//*****(Ld/St test data is here)********
//**************************************
//
//**************************************
//*****(trap handler data is here)******
//**************************************
//
//    rvtest_trap_sig:	 [global trap signature start (shared by all modes) inited to mtrap_sigptr] **FIXME: needs VA=PA
//    RVTEST_TRAP_SAVEAREA	[handler sv area(m, ms, or msv) temp reg save), CSRs, tramp table, ptrs]
//	rvtest_data_begin: [input data	   (shared by all modes)]
//    RVTEST_DATA_END
//	rvtest_data_end:
//    RVTEST_ROOT_PG_TBL [sets up identity map (VA=PA)
//	sroot_pg_tbl:	(if smode)
//	vroot_pg_tbl:	(if hypervisor)
//--------------------------------this could start a new section--------------------------------
// RVTEST_SIG_BEGIN
//    RVMODEL_DATA_BEGIN
//	rvtest_sig_begin:  [beginning of signature, used by signature dump, can be used by tests]
//	mtrap_sigptr:	   [global trap signature start (shared by all modes)] - defined by tests
//	gpr_save:	   [gpr save area (optional, enabled if rvtest_gpr_save is defined)]
// RVTEST_SIG_END
//    rvtest_sig_end:	[global test   end signature (shared by all modes)] (shouldn't matter what RVMODEL_DATA_END does)
//    RVMODEL_DATA_END	
//--------------------------------end of test--------------------------------	

/* The following macros are optional if interrupt tests are enabled (defaulted if not defined):
	RVMODEL_SET_[M/V/S]_[SW]_INT 
	RVMODEL_CLR_[M/V/S]_[SW/TIMTER/EXT]_INT
	rvtest_[M/V/S]trap_routine
	GOTO_[M/S/U]MODE, INSTANTIATE_MODE_MACRO (prolog/handler/epilog/savearea)

   The following macro is optional, and defaults to fence.i if not defined
	RVMODEL.FENCEI

   The following variables are used	if interrupt tests are enabled (defaulted if not defined):
	 NUM_SPECD_INTCAUSES

   The following variables are optional if exception tests are enabled (defaulted if not defined):
	 DATA_REL_TVAL_MSK     CODE_REL_TVAL_MSK

   The following variables are optional:
	 rvtest_gpr_save: if defined, stores GPR contents into signature at test end (for debug)

   The following labels are required and defined by required macros:
	  rvtest_code_begin:   defined by RVTEST_CODE_BEGIN  macro (boot code can precede this)
	  rvtest_code_end:     defined by RVTEST_CODE_END    macro (trap handlers follow this)
	  rvtest_data_begin:   defined by RVTEST_DATA_BEGIN  macro
	  rvtest_data_end:     defined by RVTEST_DATA_END    macro
	  rvtest_sig_begin:    defined by RVTEST_SIG_BEGIN   macro (after  RVMODEL_DATA_BEGIN) defines signature begin
	  rvtest_sig_end:      defined by RVTEST_SIG_END     macro (before RVMODEL_DATA_END)   defines signature end
	  rvtest_sroot_pg_tbl: defined by RVTEST_PTE_IDENT_MAP macro inside RVTEST_DATA_BEGIN if  Smode implemented
	  rvtest_vroot_pg_tbl: defined by RVTEST_PTE_IDENT_MAP macro inside RVTEST_DATA_BEGIN if VSmode implemented

    labels/variables that must be defined by the DUT in model specific macros or #defines
	   mtrap_sigptr:       defined by test if traps are possible, else is defaulted

*/	
// don't put C-style macros (#define xxx) inside assembly macros; C-style is evaluated before assembly

#include "encoding.h"
#include "test_macros.h"

#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))
//#define TEST_CASE_1
#define MASK_XLEN(x) ((x) & ((1 << (__riscv_xlen - 1) << 1) - 1))
#define SEXT_IMM(x)  ((x) | (-(((x) >> 11) & 1) << 11))

//==============================================================================
// this section has RV Arch Test Constants, mostly YAML based.
// It ensures they're defined  & defaulted if necessary)
//==============================================================================

// set defaults
#ifndef	  NUM_SPECD_INTCAUSES
  #define NUM_SPECD_INTCAUSES 16
#endif

	// set defaults
#ifndef	  NUM_SPECD_EXCPTCAUSES
  #define NUM_SPECD_EXCPTCAUSES 16
#endif

#ifndef	  RVMODEL_FENCEI
  #define RVMODEL_FENCEI fence.i				// make sure ifetches get new code
#endif

//#define RVTEST_FIXED_LEN
#ifndef UNROLLSZ
  #define UNROLLSZ 5
#endif

// **Note** that this is different that previous DATA_REL_TVAL_MASK! This is the OR of Code_Rel+Data_Rel
// 0xDF0D corresponds to causes 0..7,12,13,15 (inst misalgn/illop/access,page fault,bkpt, ld/st misalgn/access/pg fault, ecall )
#ifndef TVAL_LD_MSK
 #define LD_TVAL_MSK 0xDF0D << (REGWIDTH*8-16)	
#endif

// 0xD008 corresponds to causes 0,1,3,12 (inst misalign, access,page fault, breakpt)
#ifndef CODE_REL_TVAL_MSK
  #define CODE_REL_TVAL_MSK 0xD008 << (REGWIDTH*8-16)
#endif

#ifndef GOTO_M_OP
    #define GOTO_M_OP	csrr	t4, CSR_MSTATUS
#endif
#ifndef DEADBEEF	//just in case 0xdeadbeef is legal, this allows a test to change it
    #define DEADBEEF	0xdeadbeef
#endif
//this is a valid global pte entry with all permissions. IF at the root entry, it forms an identity map.
#define RVTEST_PTE_IDENT_MAP  .fill   4096/REGWIDTH, REGWIDTH, (PTE_G | PTE_U | PTE_X | PTE_W | PTE_R | PTE_V)

//_ADDR_SZ_ is a global variable extracted from YAML; set a default if it isn't defined
// This should be the MAX(phy_addr_size, VADDR_SZ) from YAML, where VADDR_SZ is derived from SATP.mode at reset
#ifndef _ADDR_SZ_
  #if XLEN==64
    #define _ADDR_SZ_ 57
  #else
    #define _ADDR_SZ_ 32
  #endif
#endif
// define a bunch of XLEN dependent constants
#if   XLEN==32
    #define SREG sw
    #define LREG lw
    #define XLEN_WIDTH 5
#elif XLEN==64
    #define SREG sd
    #define LREG ld
    #define XLEN_WIDTH 6
#else
    #define SREG sq
    #define LREG lq
    #define XLEN_WIDTH 7
#endif

#if FLEN==32
    #define FLREG flw
    #define FSREG fsw
    #define FREGWIDTH 4
#else
    #define FLREG fld
    #define FSREG fsd
    #define FREGWIDTH 8
#endif

#define ALIGNSZ ((XLEN>>5)+2)	// log2(XLEN): 2,3,4 for XLEN 32,64,128
#if XLEN>FLEN
  #define SIGALIGN XLEN_WIDTH
#else
  #define SIGALIGN FREGWIDTH
#endif

#define REGWIDTH (XLEN>>3)	// in units of #bytes
#define MASK ((1<<(XLEN-1))-1) + (1<<(XLEN-1))	// XLEN bits of 1s
//---------------------------mode encoding definitions-----------------------------
.set MMODE_SIG,3   /* FIXME why don't the #defines work if they're evaluated first?? */
.set VMODE_SIG,2
.set SMODE_SIG,1
  //#define MMODE_SIG 3
  //#define VMODE_SIG 2
  //#define SMODE_SIG 1
	/* these macros need to be defined because mode is uppercase in mode specific macros */
	/* note that vs mode uses smode return */
#define MRET	mret
#define VRET	sret
#define SRET	sret

#define MPP_LSB	  11	//bit pos of LSB of the mstatus.MPP field
#define MPP_SMODE  (1<<MPP_LSB)
#define MPV_LSB	   7	// bit pos of prev vmod mstatush.MPV in either mstatush or upper half of mstatus

#ifndef rvtest_sig_end			/* for old tests that didn't define this, AND aren't expecting traps */
  #define rvtest_sig_end mtrap_sigptr + 6*REGWIDTH	/* ensure enough space to save a trap signature */
#endif
#define tramp_sz       ((XLEN + 3* NUM_SPECD_INTCAUSES + 17) * 4) /* 17 is #ops from Mend..Mentry */

//define a fixed offsets into the save area
#define xsatp_sv_addr	 (-56)
#define mode_rtn_inst	 (-48)
#define trampend_addr	 (-40)
#define xedeleg_sv_addr	 (-32)
#define xtvec_new_addr	 (-24)
#define xtvec_sav_addr	 (-16)
#define xscr_save_addr	 ( -8)
#define tramptbl_sv_addr ( -0)
#define trapreg_sv_sz  (8*REGWIDTH)
#define RVTEST_ISA(_STR)	//empty macro used by framework??

//==============================================================================
// this section has  general test helper macros, required,  optional, or just useful
//==============================================================================

#define _ARG5(_1ST,_2ND, _3RD,_4TH,_5TH,...) _5TH
#define _ARG4(_1ST,_2ND, _3RD,_4TH,...) _4TH
#define _ARG3(_1ST,_2ND, _3RD, ...) _3RD
#define _ARG2(_1ST,_2ND, ...) _2ND
#define _ARG1(_1ST,...) _1ST
#define NARG(...) _ARG5(__VA_OPT__(__VA_ARGS__,)4,3,2,1,0)
#define RVTEST_CASE(_PNAME,_DSTR,...)				   

//-----------------------------------------------------------------------
//Fixed length la, li macros; # of ops is ADDR_SZ dependent, not data dependent
//-----------------------------------------------------------------------

#define BIT(addr, bit) ((addr)>>bit)&1)
#define COND_INCR(incr_reg, incrval, incrpos)					;\
  .if		   ((BIT(incrval,incrpos)+0xFFF & (incrval>>(incrpos+1)))!=0)	;\
    addi reg, reg,   BIT(incrval,incrpos)+0xFFF & (incrval>>(incrpos+1))	;\
 .endif

//this generates a constant using a fixed #ops dependent on the
//the # of leading sign bits, leaving low 8-12bits clear.
//it shifts, then adds, unless the addition is zero, in which case it skips the adds
// could be optimized further by fusing contiguous shifts into a single shift.

/****NOTE: shifts must be signed, else this is broken on RV64 for negative values ****/
#define LIU(reg, val)					;\
.option push						;\
.option norvc						;\
.set _REG_SV_OFF, (val & 0xFFF)				;\
 .if    ((((val>>32)+1)>>1)==0)				;\
  lui  reg, val>>12 +BIT(val,11)			;\
.elseif  (((val>>44)+1)>>1)==0    /* 0-ext 44b val */	;\
  lui  reg, val>>24 +BIT(val,23)		        ;\
  COND_INCR(reg, val, 11)				;\
  slli reg, reg, 12					;\
.elseif  (((val>>56)+1)>>1)==0    /* 0-ext 56b val */	;\
  lui  reg, val>>36 +BIT(val,35)			;\
  COND_INCR(reg, val, 23)				;\
  slli reg, reg, 12					;\
  COND_INCR(reg, val, 11)				;\
  slli reg, reg, 12					;\
.else                            /* 0-ext 64b val */	;\
  lui  reg, val>>44 +BIT(val,43)			;\
  COND_INCR(reg, val, 31)				;\
  slli reg, reg, 12					;\
  COND_INCR(reg, val, 19)				;\
  slli reg, reg, 12					;\
   addi reg, reg,                 0xFFF & (val>> 8)	;\
  slli reg, reg,  8					;\
 .set _REG_SV_OFF,               (0xFF &  val)		;\
.endif							;\
.option pop

//this generates a PC-relative addr constant using a fixed #ops dependent on ADDR_SZ, leaving low 8-12 bits clear
/**** NOTE: shifts must be signed, else is this broken on RV64 for negative addresses ****/
  /**** FIXME - this has to change depending on whether it is a virtual or physical address! ***/

#define LAU(reg, addr)                                    \
.option push						 ;\
.option norvc						 ;\
.set _REG_SV_OFF, (addr & 0xFFF)			 ;\
 .if    (_ADDR_SZ_ <= 32)				 ;\
  auipc reg, addr>>12  +BIT(addr, 11)			 ;\
.elseif (_ADDR_SZ_ <= 44)	      			 ;\
  auipc reg, addr>>24  +BIT(addr, 23) 			 ;\
  addi reg, reg,        BIT(addr, 11)+0xFFF & (addr>>12) ;\
  slli reg, reg, 12					 ;\
.elseif (_ADDR_SZ_ <= 56)				 ;\
  auipc reg, addr>>36  +BIT(addr, 35)			 ;\
  addi reg, reg,        BIT(addr, 23)+0xFFF & (addr>>24) ;\
  slli reg, reg, 12					 ;\
  addi reg, reg,        BIT(addr, 11)+0xFFF & (addr>>12) ;\
  slli reg, reg, 12					 ;\
.else							 ;\
  auipc reg, addr>>44  +BIT(addr, 43)			 ;\
  addi reg, reg,       +BIT(addr, 31)+0xFFF & (addr>>32) ;\
  slli reg, reg, 12					 ;\
  addi reg, reg,        BIT(addr, 19)+0xFFF & (addr>>20) ;\
  slli reg, reg, 12					 ;\
  addi reg, reg,                      0xFFF & (addr>> 8) ;\
  slli reg, reg,  8					 ;\
 .set _REG_SV_OFF,                    (0xFF &  addr)	 ;\
.endif							 ;\
.option pop

#ifdef RVTEST_FIXED_LEN
/**** fixed length LA macro, uses LAU macro to fill in upper bits ****/
#define LA(  reg, addr)					 \
        LAU( reg, addr - .);  /* get PC_rel offset*/	;\
 .if (REG_SV_OFF != 0)					;\
       addi reg, reg, REG_SV_OFF			;\
	.endif

/**** fixed length LI macro, uses LIU macro to fill in upper bits ****/
#define LI(  reg, val)					 \
        LIU( reg, val)					;\
 .if (REG_SV_OFF != 0)					;\
       addi reg, reg, REG_SV_OFF			;\
 .endif

#else
    #define LI(reg,val);\
        .option push;\
        .option norvc;\
        li reg,val;\
        .option pop;

    #define LA(reg,val);\
        .option push;\
        .option norvc;\
        la reg,val;\
        .option pop;
#endif 
/*****************************************************************/
/**** initialize regs, just to make sure you catch any errors ****/
/*****************************************************************/

#define RVTEST_INIT_GPRS //INITVAL		;\
/* init regs, to ensure you catch any errors */;\
     LI (x1,  (0xFEEDBEADFEEDBEAD & MASK))	;\
     LI (x2,  (0xFF76DF56FF76DF56 & MASK))	;\
     LI (x3,  (0x7FBB6FAB7FBB6FAB & MASK))	;\
     LI (x4,  (0xBFDDB7D5BFDDB7D5 & MASK))	;\
     LA (x5,  rvtest_code_begin)		;\
     LA (x6,  rvtest_data_begin)		;\
     LI (x7,  (0xB7FBB6FAB7FBB6FA & MASK))	;\
     LI (x8,  (0x5BFDDB7D5BFDDB7D & MASK))	;\
     LI (x9,  (0xADFEEDBEADFEEDBE & MASK))	;\
     LI (x10, (0x56FF76DF56FF76DF & MASK))	;\
     LI (x11, (0xAB7FBB6FAB7FBB6F & MASK))	;\
     LI (x12, (0xD5BFDDB7D5BFDDB7 & MASK))	;\
     LI (x13, (0xEADFEEDBEADFEEDB & MASK))	;\
     LI (x14, (0xF56FF76DF56FF76D & MASK))	;\
     LI (x15, (0xFAB7FBB6FAB7FBB6 & MASK))	;\
   #ifndef RVTEST_E				;\
     LI (x16, (0x7D5BFDDB7D5BFDDB & MASK))	;\
     LI (x17, (0xBEADFEEDBEADFEED & MASK))	;\
     LI (x18, (0xDF56FF76DF56FF76 & MASK))	;\
     LI (x19, (0x6FAB7FBB6FAB7FBB & MASK))	;\
     LI (x20, (0xB7D5BFDDB7D5BFDD & MASK))	;\
     LI (x21, (0xDBEADFEEDBEADFEE & MASK))	;\
     LI (x22, (0x6DF56FF76DF56FF7 & MASK))	;\
     LI (x23, (0xB6FAB7FBB6FAB7FB & MASK))	;\
     LI (x24, (0xDB7D5BFDDB7D5BFD & MASK))	;\
     LI (x25, (0xEDBEADFEEDBEADFE & MASK))	;\
     LI (x26, (0x76DF56FF76DF56FF & MASK))	;\
     LI (x27, (0xBB6FAB7FBB6FAB7F & MASK))	;\
     LI (x28, (0xDDB7D5BFDDB7D5BF & MASK))	;\
     LI (x29, (0xEEDBEADFEEDBEADF & MASK))	;\
     LI (x30, (0xF76DF56FF76DF56F & MASK))	;\
     LI (x31, (0xFBB6FAB7FBB6FAB7 & MASK))	;\
   #endif


/******************************************************************************/
/**** this is a helper macro that conditionally instantiates the macros	   ****/
/**** PROLOG/HANDLER/EPILOG/SAVEAREA depending on test type & mode support ****/
/******************************************************************************/
.macro INSTANTIATE_MODE_MACRO MACRO_NAME
 #ifdef rvtest_mtrap_routine
  \MACRO_NAME M		// actual m-mode prolog/epilog/handler code

	#ifdef rvtest_strap_routine	
      \MACRO_NAME S	// actual s-mode prolog/epilog/handler code

	#ifdef rvtest_vtrap_routine	
	  \MACRO_NAME V // actual v-mode prolog/epilog/handler code
	#endif
    #endif
 #endif
.endm

/******************************************************************************/
/**** this is a helper macro defining int macro if the macro if undefined  ****/
/**** It builds the macro name from arguments prefix,  mode, and type	   ****/
/**** The prefix is only SET or CLEAR here, preceded by RVMODEL.	   ****/
/**** The types are the 3 types of standard interrupts: SW, EXT, & TIMER   ****/
/******************************************************************************/

.macro INIT_MODE_MACRO MACRO_NAME
 #ifndef   MACRO_NAME
 //#warning "MACRO_NAME is not defined by target. Executing this will end test"
 .macro	   \MACRO_NAME
     j cleanup_epilogs
 .endm
 #endif
.endm

/******************************************************************************/
/**** this is a helper macro that conditionally instantiates default	   ****/
/**** interrupt set/clear depending on type of test & mode support	   ****/
/******************************************************************************/

 .macro INSTANTIATE_INT_MACRO INT_MACRO_NAME
    #ifndef INT_MACRO_NAME	// actual m-mode handler code
      // #warning: "INT_MACRO_NAME  is not defined by target. Executing this will end test"
       .macro \INT_MACRO_NAME
	 j cleanup_epilogs
       .endm
    #endif
 .endm

/******************************************************************************/
/**** this is a helper macro that creates CSR aliases so code that         ****/
/**** accesses CSRs in different modes can share the code                  ****/
/******************************************************************************/

 .macro	XCSR_RENAME __MODE__		// enable CSR names to be parameterized.
    .if ((__MODE__ == S) | (__MODE__ == V))
      .set CSR_XSTATUS,	CSR_SSTATUS
      .set CSR_XEDELEG,	CSR_SEDELEG
      .set CSR_XIE,	CSR_SIE
      .set CSR_XIP,	CSR_SIP
      .set CSR_XCAUSE,	CSR_SCAUSE
      .set CSR_XEPC,	CSR_SEPC
      .set CSR_XSATP,	CSR_SSATP
      .set CSR_XSCRATCH,CSR_SSCRATCH
      .set CSR_XTVAL,	CSR_STVAL
      .set CSR_XTVEC,	CSR_STVEC
    .else
      .set CSR_XSTATUS, CSR_MSTATUS
      .set CSR_XEDELEG, CSR_MEDELEG
      .set CSR_XIE,	CSR_MIE
      .set CSR_XIP,	CSR_MIP
      .set CSR_XCAUSE,	CSR_MCAUSE
      .set CSR_XEPC,	CSR_MEPC
      .set CSR_XSATP,	CSR_SSATP
      .set CSR_XSCRATCH,CSR_MSCRATCH
      .set CSR_XTVAL,	CSR_MTVAL
      .set CSR_XTVEC,	CSR_MTVEC
    .endif
.endm

/******************************************************************************/
/**** this is a helper macro that creates CSR aliases so code that         ****/
/**** accesses CSRs when V=1in different modes can share the code          ****/
/******************************************************************************/
 .macro	XCSR_VRENAME __MODE__		// enable CSR names to be parameterized, with H/V,S aliasing
  .if (__MODE__ == S)
      .set CSR_XSTATUS, CSR_SSTATUS
      .set CSR_XEDELEG, CSR_SEDELEG
      .set CSR_XIE,	CSR_SIE
      .set CSR_XIP,	CSR_SIP
      .set CSR_XCAUSE,	CSR_SCAUSE
      .set CSR_XEPC,	CSR_SEPC
      .set CSR_XSATP,	CSR_SATP
      .set CSR_XSCRATCH,CSR_SSCRATCH
      .set CSR_XTVAL,	CSR_STVAL
      .set CSR_XTVEC,	CSR_STVEC
  .elseif (__MODE__ == V)
      .set CSR_XSTATUS, CSR_HSTATUS
      .set CSR_XEDELEG, CSR_HEDELEG
      .set CSR_XIE,	CSR_HIE
      .set CSR_XIP,	CSR_HIP
      .set CSR_XCAUSE,	CSR_VSCAUSE
      .set CSR_XEPC,	CSR_VSEPC
      .set CSR_XSATP,	CSR_VSATP
      .set CSR_XSCRATCH,CSR_VSSCRATCH
      .set CSR_XTVAL	CSR_VSTVAL
      .set CSR_XTVEC,	CSR_VSTVEC
     .else
      .set CSR_XSTATUS, CSR_MSTATUS
      .set CSR_XEDELEG, CSR_MEDELEG
      .set CSR_XIE,	CSR_MIE
      .set CSR_XIP,	CSR_MIP
      .set CSR_XCAUSE,	CSR_MCAUSE
      .set CSR_XEPC,	CSR_MEPC
      .set CSR_XSATP,	CSR_SATP
      .set CSR_XSCRATCH,CSR_MSCRATCH
      .set CSR_XTVAL,	CSR_MTVAL
      .set CSR_XTVEC,	CSR_MTVEC
    .endif
.endm

////////////////////////////////////////////////////////////////////////////////////////
//**** This is a helper macro that saves GPRs. Normally used only inside CODE_END ****//
//**** Note: this needs a temp scratch register, & there isn't anything that will ****//
//**** will work, so we always trash some register, determined by macro param	  ****//
//**** NOTE: Only be use for debug! Xregs containing addresses won't be relocated ****//
////////////////////////////////////////////////////////////////////////////////////////
.macro RVTEST_SAVE_GPRS	TMPREG REG_SV_ADDR	// optionally save GPRs
.option push
.option norvc
  .set __TMP__, \TMPREG
  __RNUM__ = 1
  LA(  x\__TMP__,  \REG_SV_ADDR)		//this destroys TMPREG, but saves rest

  .rept 31
    #if (__RV32E__ && __RNUM<16) & ( __RNUM__ != __TMP__)
	SREG x\()__RNUM__,   \__RNUM__*REGWIDTH(x\()__TMP__)
     __RNUM__ = __RNUM__+1
    #endif
  .endr
.option pop
.endm

/********************* REQUIRED FOR NEW TESTS *************************/
/**** new macro encapsulating RVMODEL_DATA_BEGIN (signature area)  ****/
/**** defining rvtest_sig_begin: label to enabling direct stores   ****/
/**** into the signature area to be properly relocated             ****/
/**********************************************************************/
#define	RVTEST_SIG_BEGIN					          ;\
.global rvtest_sig_begin	/* defines beginning of signature area */ ;\
									  ;\
    RVMODEL_DATA_BEGIN		/* model specific stuff location       */ ;\
rvtest_sig_begin:		/* start of sig region		       */ ;\
signature_begin:		/* redundant for bkwards compatibility */

// tests allocate normal signature space here, then define 
// the mtrap_sigptr: label to separate normal and trap 
// signature space, then allocate trap signature space
	
/********************* REQUIRED FOR NEW TESTS *************************/
/**** new macro encapsulating RVMODEL_DATA_END (signature area)    ****/
/**** defining rvtest_sig_end: label to enabling direct stores     ****/
/**** into the signature area to be properLY relocated             ****/
/**********************************************************************/
#define	RVTEST_SIG_END						          ;\
					       			          ;\
 .global rvtest_sig_end		/* defines end of signature area       */ ;\
.word DEADBEEF			/* add one extra word of guardband     */ ;\
rvtest_sig_end:				       			          ;\
signature_end:			/* redundant for bkwards compatibility */ ;\
    RVMODEL_DATA_END		/* model specific stuff

 //#define rvtest_sig_sz (rvtest_sig_end - rvtest_sig_begin) not currently used
/***************************************************************************************/
/**** At end of test, this code is entered. It diverts the Mmode trampoline to code ****/
/**** that follows this, executes an op illegal in any non-Mmode, then restores the ****/
/**** trampoline. This either falls through if already in Mmode, or traps to mmode  ****/
/**** because the prolog cleared all edeleg CSRs. This code makes no assumptions    ****/
/**** about the current operating mode. and assumes that xedeleg[illegal_op]==0 to  ****/
/**** prevent an infinite delegation loop. This will overwrite t1..t6	            ****/
/**** NOTE: that any test that sets xedeleg[illegal_op] must replace  mode_rtn_inst ****/
/**** with an op that causes a different exception cause that isn't delegated.      ****/
/**** NOTE: this will overwrite non-Mmode trap status CSRs			    ****/
/****FIXME - check that SATP and VSATP point to the identity map page table	    ****/
/***************************************************************************************/
//#define rvtest_strap_routine

.macro RVTEST_GOTO_MMODE
#ifdef  rvtest_mtrap_routine
.option push
.option norvc

#ifdef rvtest_strap_routine
//    LA(	 t1, Strapreg_sv)
    lw	 t2,     mode_rtn_addr(t1)	// get   jr t3 op
    LREG t3,    xtvec_new_addr(t1)	// get the  stvec value from the save area (no CSR read needed)
    lw	 t5,  0(t3)			// load trampoline head inst, pointed to by  stvec
    sw	 t2,  0(t3)			// overwrite with trap entry branch to addr in t3

  #ifdef rvtest_vtrap_routine
//      LA(  t1, Vtrapreg_sv)		//
      LREG t3,  xtvec_new_addr+Msv_area_sz(t1)	// get the vstvec value from the save area (no CSR read needed)
      lw   t6,  0(t3)			// load trampoline head inst, pointed to by vstvec
      sw   t2,  0(t3)			// overwrite with trap entry branch to addr in t3
  #endif
#endif
							     
  RVMODEL_FENCEI			// at this point, original tramp entries are in t5,t6 for S,V
  auipc	t3, 0
  addi	t3, t3, 8			// form address of GOTO_M_OP macro
					// if delegated to S or V , this will end up back here and trap again
  GOTO_M_OP				// illegal op if not in Mmode or higher, else falls through

					// fall thru to here when csrr finally succeeds
#ifdef rvtest_strap_routine
//    LA(	 t1, Strapreg_sv)	// FIXME?? can be optimized by knowing delta between trapreg_sv blocks
    LREG t3, xtvec_new_addr(t1)		// get the  stvec value from the save area (no CSR read needed)
    sw	 t5, 0(t3)			// restore old  smode trampoline head inst

  #ifdef rvtest_vtrap_routine
//      LA(  t1, Vtrapreg_sv)		//
      LREG t3, xtvec_new_addr+Msv_area_sz(t1)	// get the  stvec value from the save area (no CSR read needed)
      sw   t6, 0(t3)			// restore old vsmode trampoline head inst
  #endif
#endif
  RVMODEL_FENCEI			// ensure ifetches to tramp get new code & now fall through in Mmode
					// if you were in a mode with MMU enabled, VA better equal PA !
.option pop
#endif					// not implemented if no trap
.endm


/**** This is a helper macro that causes harts to transition from    ****/
/**** M-mode to a lower priv mode. Legal params are VS,HS,VU,HU,S,U. ****/
/**** The H,U variations leave V unchanged. This uses t4 only.       ****/
#define MPP_LSB   11	//bit pos of LSB of the mstatus.MPP field
#define MPP_SMODE  (1<<MPP_LSB)
#define MPV_LSB    7	// bit pos of prev vmod mstatush.MPV in either mstatush or upper half of mstatus
#define	VUmode	0x4
#define	VSmode	0x5
#define HUmode	0x9
#define HSmode	0xA
#define Smode	0x1
#define Umode	0x0
.macro RVTEST_GOTO_LOWER_MODE LMODE		
.option push								
.option norvc								
									
.if (XLEN==32)	
   .if     (\LMODE==VUmode | \LMODE==VSmode)					
     csrsi CSR_MSTATUS, MSTATUS_MPV	/* set V 		*/	
   .elseif (\LMODE==HUmode | \LMODE==HSmode)					
     csrci CSR_MSTATUS, MSTATUS_MPV	/* clr V 		*/	
   .endif				/* lv  V unchged for S or U */	
  LI(    t4, MSTATUS_MPP)						
  csrc   CSR_MSTATUS, t4		/* clr PP always 	*/	
  .if     ((\LMODE==VSmode) | (\LMODE==HSmode) | (\LMODE==Smode))  				
    	LI(  t4, MPP_SMODE)			/* val for Smode 	*/	
	csrs CSR_MSTATUS, t4		/* set in PP 		*/	

  .endif								
.else				/* XLEN=64, maybe 128? FIXME for 128 */	
  .if (\LMODE==Smode | \LMODE==Umode)	/* leave V unchanged for these	*/	
    LI(  t4,  MSTATUS_MPP)                 				
  .else									
    LI(  t4, (MSTATUS_MPP | MSTATUS_MPV)) 				
  .endif								
  csrc	 CSR_MSTATUS, t4	/* clr PP to umode & maybe Vmode*/	
									
  .if (!(\LMODE==HUmode| \LMODE==Umode)	/* lv pp unchged, v=0 or unchged*/	
    .if     (\LMODE==VS)		     					
      LI(  t4, (MPP_SMODE | MSTATUS_MPV)) /* val for pp & v 	*/	
    .elseif (\LMODE==HSmode | \LMODE==Smode)					
      LI(  t4, (MPP_SMODE))	/* val for pp only 		*/	
    .elseif (\LMODE==VUmode)		/* this mode needs to set MPV	*/	
      li   t4, 1		/* optimize for single bit 	*/	
      slli t4, t4, 32+MPV_LSB	/* val for v only		*/	
      csrs t4, CSR_MSTATUS 	/* set correct mode and Vbit	*/	
    .endif								
  .endif								
.endif									
	/**** mstatus MPV and PP now set up to desired mode ****/	
	/**** set MEPC to mret+4; requires an identity mapping ***/	
  auipc	t4, 0								
  addi	t4, t4, 16							
  csrrw	t4, CSR_MEPC, t4	/* set rtn addr to mret+4	*/	
  mret				/* transition to desired mode	*/	
.option pop
.endm

//==============================================================================
// Helper macro to set defaults for undefined interrupt set/clear 
// macros. This is used to populated the interrupt vector table
//==============================================================================

  #ifndef RVMODEL_SET_MSW_INT
       // #warning: "RVMODEL_SET_MSW_INT  is not defined by target. Executing this will end test"
       .macro RVMODEL_SET_MSW_INT
	 j cleanup_epilogs
       .endm
  #endif
  #ifndef RVMODEL_CLEAR_MSW_INT
       // #warning: "RVMODEL_CLEAR_MSW_INT  is not defined by target. Executing this will end test"
       .macro RVMODEL_CLEAR_MSW_INT
	 j cleanup_epilogs
       .endm
  #endif
  #ifndef RVMODEL_CLEAR_MTIMER_INT
       // #warning: "RVMODEL_CLEAR_MTIMER_INT  is not defined by target. Executing this will end test"
       .macro RVMODEL_CLEAR_MTIMER_INT
	 j cleanup_epilogs
       .endm
  #endif
  #ifndef RVMODEL_CLEAR_MEXT_INT
       // #warning: "RVMODEL_CLEAR_MEXT_INT  is not defined by target. Executing this will end test"
       .macro RVMODEL_CLEAR_MEXT_INT
	 j cleanup_epilogs
       .endm
  #endif

  #ifndef RVMODEL_SET_SSW_INT
       // #warning: "RVMODEL_SET_SSW_INT  is not defined by target. Executing this will end test"
       .macro RVMODEL_SET_SSW_INT
	 j cleanup_epilogs
       .endm
  #endif
  #ifndef RVMODEL_CLEAR_SSW_INT
       // #warning: "RVMODEL_CLEAR_SSW_INT  is not defined by target. Executing this will end test"
       .macro RVMODEL_CLEAR_SSW_INT
	 j cleanup_epilogs
       .endm
  #endif
  #ifndef RVMODEL_CLEAR_STIMER_INT
       // #warning: "RVMODEL_CLEAR_STIMER_INT  is not defined by target. Executing this will end test"
       .macro RVMODEL_CLEAR_STIMER_INT
	 j cleanup_epilogs
       .endm
  #endif
  #ifndef RVMODEL_CLEAR_SEXT_INT
       // #warning: "RVMODEL_CLEAR_SEXT_INT  is not defined by target. Executing this will end test"
       .macro RVMODEL_CLEAR_SEXT_INT
	 j cleanup_epilogs
       .endm
  #endif

    #ifndef RVMODEL_SET_VSW_INT
       // #warning: "RVMODEL_SET_VSW_INT  is not defined by target. Executing this will end test"
       .macro RVMODEL_SET_VSW_INT
	 j cleanup_epilogs
       .endm
  #endif
  #ifndef RVMODEL_CLEAR_VSW_INT
       // #warning: "RVMODEL_CLEAR_VSW_INT  is not defined by target. Executing this will end test"
       .macro RVMODEL_CLEAR_VSW_INT
	 j cleanup_epilogs
       .endm
  #endif
  #ifndef RVMODEL_CLEAR_VTIMER_INT
       // #warning: "RVMODEL_CLEAR_VTIMER_INT  is not defined by target. Executing this will end test"
       .macro RVMODEL_CLEAR_VTIMER_INT
	 j cleanup_epilogs
       .endm
  #endif
  #ifndef RVMODEL_CLEAR_VEXT_INT
       // #warning: "RVMODEL_CLEAR_VEXT_INT  is not defined by target. Executing this will end test"
       .macro RVMODEL_CLEAR_VEXT_INT
	 j cleanup_epilogs
       .endm
  #endif

//==============================================================================
// This section defines macros used by these required macros:
// RVTEST_TRAP_PROLOG, RVTEST_TRAP_HANDLER, RVTEST_TRAP_EPILOG
// These are macros instead of inline because they need to be replicated per mode
// These are passed the privmode as an argument to properly rename labels
// The helper INSTANTIATE_MODE_MACRO actually handles the replication
//==============================================================================

.macro  RVTEST_TRAP_PROLOG __MODE__
.option push
.option norvc
  /******************************************************************************/
  /**** this is a mode-configured version of the prolog, which either saves and */
  /**** replaces xtvec, or saves and replaces the code located at xtvec if it   */
  /**** it xtvec isn't arbitrarily writable. If not writable, restore & exit    */
  /******************************************************************************/

  /******************************************************************************/
  /****                 Prolog, to be run before any tests                   ****/
  /****       #include 1 copy of this per mode in rvmodel_boot code?         ****/
  /**** -------------------------------------------------------------------  ****/
  /**** if xTVEC isn't completely RW, then we need to change the code at its ****/
  /**** target. The entire trap trampoline and mtrap handler replaces the    ****/
  /**** area pointed to by mtvec, after saving its original contents first.  ****/
  /**** If it isn't possible to fully write that area, restore and fail.     ****/
  /******************************************************************************/

  // RVTEST_TRAP_PROLOG trap_handler_prolog; enter with t1..t6 available; define specific handler
  // sp will immediately point to the current mode's save area and must not be touched	
  //NOTE: this is run in M-mode, so can't use aliased S,V CSR names

.global \__MODE__\()trampoline
//.global mtrap_sigptr

	XCSR_VRENAME \__MODE__		//retarget XCSR names to this modes CSRs, separate V/S copies

  	LA(	t1, \__MODE__\()trapreg_sv)	// get pointer to save area
//----------------------------------------------------------------------
init_\__MODE__\()scratch:
  	csrrw	t3, CSR_XSCRATCH, t1 	// swap xscratch with save area ptr (will be used by handler)
  	SREG	t3, xscr_save_addr(t1)	// save old mscratch in xscratch_save
//----------------------------------------------------------------------
init_\__MODE__\()edeleg:
  	li	t2, 0			// save and clear edeleg so we can exit to Mmode
.if (\__MODE__\() == V)
	csrrw	t2, CSR_VEDELEG, t2	//special case: VS EDELEG available from Vmode
.else
	csrrw	t2, CSR_XEDELEG, t2	//this handles M and S modes
.endif
	SREG	t2, xedeleg_sv_addr(t1)	//now do the save
//----------------------------------------------------------------------
init_\__MODE__\()satp:
.if (\__MODE__\() != M)			// if S or SV mode
	LA(	t4, \__MODE__\()root_page_tbl)	// rplc xsatp w/ identity-mapped pg table **FIXME: fixed offset frm trapreg_sv?**
	csrrw	t4, CSR_XSATP
	SREG	t4, xsatp_sv_addr(t1)		
.endif
//----------------------------------------------------------------------
init_\__MODE__\()tvec:	
 	LA(	t4, \__MODE__\()trampoline)	//this is a code-relative pointer
 	SREG	t4, xtvec_new_addr(t1)	// save tramp ptr in tvec_new - overwritten if tramp is copied

  	csrrw	t2, CSR_XTVEC, t4	// swap mtvec and trap_trampoline, so trap will go to the trampoline
	SREG	t2, xtvec_sav_addr(t1)	// save orig mtvec in tvec_save (offset -16) entries before save area)
   	csrr	t3, CSR_XTVEC	 	// now read new_mtval back
#ifndef HANDLER_TESTCODE_ONLY
	beq	t3, t4, rvtest_\__MODE__\()prolog_done // if mtvec==trap_trampoline, mtvec is writable, continue
#endif
	csrw	CSR_XTVEC, t2		// xTVEC not completely writable, restore old value
 	SREG	t2, xtvec_new_addr(t1)	// and update tvect_new with orig mtvec
  	
  /*****************************************************************/
  /**** fixed mtvec, can't move it so move trampoline instead   ****/
  /**** t1=tramp sv, t2=orig tvec, t3=sv end, t4=tramp          ****/
  /*****************************************************************/

init_\__MODE__\()tramp:	/**** copy trampoline at mtvec tgt; t4->t2->t1  t3=end of save ****/

	addi	t1, t1, trapreg_sv_sz		// move ptr past rest save area to tramptbl save area
	addi	t3, t2, tramp_sz 		// calc addr past end of orig tramp area
//----------------------------------------------------------------------
	overwt_tt_\__MODE__\()loop:		// now build new tramp table w/ local offsets
  	lw	t6, 0(t2)		        //  move original mtvec target to save area
  	sw	t6, 0(t1)		       
  	lw	t5, 0(t4)		        //  move traphandler trampoline into orig mtvec target
  	sw	t5, 0(t2)		       
  	lw	t6, 0(t2)		        // rd it back to make sure it was written
  	bne	t6, t5, endcopy_\__MODE__\()tramp // table isn't fully writable, restore and give up
#ifdef HANDLER_TESTCODE_ONLY
	csrr	t5, CSR_XSCRATCH		// load trapreg_sv from scratch
	addi	t5, t5,256			// calculate some offset into the save area
	bgt	t5, t1, endcopy_\__MODE__\()tramp // and pretend if couldnt be written
#endif
  	addi	t2, t2, 4	        	// next src  inst. index
  	addi	t1, t1, 4		        // next save inst. index
  	addi	t4, t4, 4		        // next tgt  inst. index
  	bne	t3, t2, overwt_tt_\__MODE__\()loop	// haven't reached end of save area,  loop
//----------------------------------------------------------------------
  endcopy_\__MODE__\()tramp:			// vector table not writeable, restore
	RVMODEL_FENCEI				// make sure ifetches get new code
	csrr	t1, CSR_XSCRATCH		// load trapreg_sv from scratch
	sw	t2, trampend_addr(t1)		//save copy progress
 	beq 	t3,t2, rvtest_\__MODE__\()prolog_done //full loop, don't exit
	LA     (t6, exit_\__MODE__\()cleanup)	// failure to replace trampoline **FIXME:  precalculat& put into savearea?
	jalr   x0, t6				// this branch may be too far away, so longjmp

rvtest_\__MODE__\()prolog_done:

.option pop
.endm
/*******************************************************************************/
/***************                 end of prolog macro                ************/
/*******************************************************************************/

.macro RVTEST_TRAP_HANDLER __MODE__
.option push
.option rvc	// temporarily allow compress to allow c.nop alignment
.align 6	// ensure that a trampoline is on a typical cacheline boundary, just in case
.option pop

  /**********************************************************************/
  /**** This is the entry point for all x-modetraps, vectored or not.****/
  /**** xtvec should either point here, or trampoline code does and  ****/
  /**** trampoline code was copied to whereever xtvec pointed to.    ****/
  /**** At entry, xscratch will contain a pointer to a scratch area. ****/
  /**** This is an array of branches at 4B intevals that spreads out ****/
  /**** to an array of 12B xhandler stubs for specd int causes, and  ****/
  /**** to a return for anything above that (which causes a mismatch)****/
  /**********************************************************************/

  XCSR_RENAME \__MODE__			//retarget XCSR names to this modes CSRs

.global \__MODE__\()trampoline			// define the label and make it available
.global common_\__MODE__\()entry
.option push
.option norvc

\__MODE__\()trampoline:
   .set  value, 0
  .rept NUM_SPECD_INTCAUSES     		// located at each possible int vectors
 	j    trap_\__MODE__\()handler+ value	// offset < +/- 1MB
	.set value, value + 12			// length of xhandler trampoline spreader code
  .endr

  .rept XLEN-NUM_SPECD_INTCAUSES   		// fill at each impossible entry
  	j rvtest_\__MODE__\()endtest		// end test if this happens
  .endr

  /*********************************************************************/
  /**** this is spreader stub array; it saves enough info (sp &     ****/
  /**** vec-offset) to enable branch to common routine to save rest ****/
  /*********************************************************************/
  /**** !!CSR_xSCRATCH is preloaded w/ xtrapreg_sv in init_xscratch:****/

 trap_\__MODE__\()handler:			// on exit sp swapped w/ save ptr, t6 is vector addr
  .rept NUM_SPECD_INTCAUSES
        csrrw	sp, CSR_XSCRATCH, sp		// save sp, replace w/trapreg_sv regtmp save ptr
	SREG    t6, 6*REGWIDTH(sp)		// save t6 in temp save area offset 6
        jal 	t6, common_\__MODE__\()handler	// jmp to common code, saving vector in t6
  .endr

 rvtest_\__MODE__\()endtest:			// target may be too far away, so longjmp
        LA     (t1, rvtest_\__MODE__\()end)	// FIXME: must be identity mapped if its a VA
        jalr   x0, t1
  /*********************************************************************/
  /**** common code for all ints & exceptions, will fork to handle  ****/
  /**** each separately. The common handler first stores trap mode+ ****/
  /**** vector, & mcause signatures. Most traps have 4wd sigs, but  ****/
  /**** sw and timer ints only store 3 of the 4, & some hypervisor  ****/
  /**** traps will set store 6 ops                                  ****/
  /**** sig offset Exception    ExtInt       SWInt        TimerInt  ****/
  /****         0: <---------------------  Vect+mode  ---------->   ****/
  /****         4: <----------------------  xcause ------------->   ****/
  /****         8: xepc      <-------------  xip  -------------->   ****/
  /****        12: tval         IntID   <---- x ---------------->   ****/
  /****        16: tval2     <--------------  x ---------------->   ****/
  /****        20: tinst     <--------------  x ---------------->   ****/
  /*********************************************************************/
  /*   in general, CSRs loaded in t2, addresses into t3                */

	//If we can distinguish between HS and S mode, we can share S and V code.
	//except for prolog code which needs to initialize CSRs, and the save area
	//To do this, we need to read one of the CSRs (e.g. xSCRATCH) and compare
	//it to either Strapreg_sv or Vtrapreg_sv to determine which it is.

common_\__MODE__\()handler:           		// enter with vector addr in t6 (orig t6 is at offset 6*REGWIDTH)
        SREG    t5, 5*REGWIDTH(sp)		// x30  save remaining regs, starting with t5
	csrrw	t5, CSR_XSCRATCH, sp		// restore ptr to reg sv area, and get old sp
	SREG	t5, 7*REGWIDTH(sp)  		// save old sp
//	LA(	t5, common_\__MODE__\()entry)	
	auipc	t5, 0
	addi	t5, t5, 12			// quick calculation of common mode entry label
	jr	t5				// needed if trampoline gets moved elsewhere, else it's effectively is a noop

common_\__MODE__\()entry:
        SREG    t4, 4*REGWIDTH(sp)		//x29
        SREG    t3, 3*REGWIDTH(sp)		//x28
        SREG    t2, 2*REGWIDTH(sp)		//x7
        SREG    t1, 1*REGWIDTH(sp)  		//x6  save other temporaries
//------pre-update trap_sig pointer so handlers can themselves trap-----
\__MODE__\()trapsig_ptr_upd:
  .if (\__MODE__\() == M)
    .ifdef  __H_EXT__
 	li  	t2, 6*REGWIDTH			// get trap signature length ptr (max sig is 6 words)
    .else
	li  	t2, 4*REGWIDTH
    .endif
  .else
	li  	t2, 4*REGWIDTH
  .endif
	LA(     t3, rvtest_trap_sig) 		// this is where curr trap signature pointer is stored
//------this should be atomic-------------------------------------
        LREG    t1, 0(t3)			// get the trap signature pointer (initialized to mtrap_sigptr)
	add	t1, t1, t2
	SREG	t1, 0(t3)			// else update the pointer so it doesn't get corrupted
//------end atomic------------------------------------------------
	LA(	t4, rvtest_sig_end)		// exceeding this is an overrun FIXME: do we need this?
	bgt	t1, t4, cleanup_epilogs		// abort test if overrun

	csrr	t3, CSR_XSCRATCH		// load trapreg_sv from scratch
	LREG	t3, xtvec_new_addr(t3)		// get pointer to actual tramp table at offset -24
//----------------------------------------------------------------
sv_\__MODE__\()vect:
        sub     t2, t6, t3			// cvt vec-addr to an offset from top of tramp table
        addi    t2, t2, \__MODE__\()MODE_SIG   	// insert mode# into 1:0 **note: can't combine handlers if we do it this way
        SREG    t2, 0*REGWIDTH(t1)        	// save 1st sig value, (vec-offset, trapmode)
//----------------------------------------------------------------
sv_\__MODE__\()cause:	
        csrr    t2, CSR_XCAUSE
        SREG    t2, 1*REGWIDTH(t1) 		// save 2nd sig value, (mcause)
//----------------------------------------------------------------
        bltz    t2, common_\__MODE__\()int_handler // split off if this is an interrupt
 
  /********************************************************************/
  /**** This is the exceptions specific code, storing relative mepc****/
  /**** & relative tval signatures. tval is relocated by code or   ****/
  /**** data start, or 0 depending on mcause. mepc signature value ****/
  /**** is relocated by code start, and restored bumped by 2..6B   ****/
  /****  depending on op alignment so trapped op isn't re-executed ****/
  /********************************************************************/
common_\__MODE__\()excpt_handler:
        csrr  t2, CSR_XEPC
sv_\__MODE__\()epc:	
        LA(   t3, rvtest_code_begin) // test code start; compensates for different loader offsets
        sub   t4, t2, t3      	 // convert mepc to offset rel to beginning of test         
        SREG  t4, 2*REGWIDTH(t1) // save 3rd sig value, (rel mepc) into trap signature area 
adj_\__MODE__\()epc:         	 // adj mepc so there is padding after op, and its 8B aligned
	addi  t6, t2, -4       // adjust mepc to prev 4B alignment                        
        addi  t6, t6, 8     	 // adjust mepc so it skips past op, has padding & 4B aligned
        csrw  CSR_XEPC, t6	 // restore adjusted value, w/ 4B, 6B or 8B of padding

  /****WARNING needs updating when insts>48b are ratified, only 4 or 6B of padding; for 64b insts,  2B or 4B of padding   ****/
 
  /******************************************************************************/
  /* Calculate relative mtval if it’s an addr (by code_begin or data_begin amt) */
  /* Which to use is defined by model-defined bit-reversed mask values that are */
  /* indexed by xcause value (so mcause==0 bit is in MSB (bit63/31 for RV64/32) */
  /* Enter with rvtest_code_begin (which is start of actual test) in t3         */
  /* if illegal op, load opcode from mtval (if !=0) or from istream (if ==0)    */
  /******************************************************************************/

adj_\__MODE__\()tval:

	csrr	t4, CSR_XCAUSE	
	csrr	t6, CSR_XTVAL

	LI(	t5, LD_TVAL_MSK)
	sll	t5, t5, t4		// put mcause bit# in MSB   
	bge	t5, x0, no_\__MODE__\()adj 	// if MSB=0, no correction needed
code_\__MODE__\()adj:	
	LI(	t5, CODE_REL_TVAL_MSK)	// trap#s 12, 3,1,0, -- code relative traps
	sll	t5, t5, t4		// put mcause bit# in MSB
	bltz	t5, sv_\__MODE__\()tval	// if MSB=1, use code_adj in t3

  /********************************?FIXME?***************************************/
  /* FIXME?? are there multiple cases where the address must be relocated with  */
  /* different values? e.g. we already differentiate between code & data, but   */
  /*  are there different data areas that require different offsets?            */
  /******************************************************************************/

  /**** FIXME: these begin/end addresses may not match how RVMODEL_DATA_BEGIN/END set the address ****/
sigdata_\__MODE__\()adj:		// only possibilities left are illop, testdata or sigdata
//	LA(	t3, rvtest_sig_end)	//  after sig area, skip
//	bge	t6, t3, tstdata_\__MODE__\()adj	
//	LA(	t3, rvtest_sig_begin)
//	bge	t6, t3, adj_\__MODE__\()tval	// inside sig area, lv rvtest_sig_begin as adjustment amt
tstdata_\__MODE__\()adj:
	LA(	t3, rvtest_data_begin)	// adjustment assuming access is to a data region ***FIXME: not fixed relative to data!!!!!!
	addi	t4, t4, -2		// check if mcause==2 (illegal op)
	bnez	t4, sv_\__MODE__\()tval	// not illegal op, use data relative amt

  /******************************************************************************/
  /* null adjustment if exception address is neither code nor data relative; ****/
  /******************************************************************************/

ill_\__MODE__\()op:
	bnez	t6, no_\__MODE__\()adj	// ill.op and mtval!=0, no special treatment, use 0 adj amt
 .if (\__MODE__\() == M)		// make sure to do this as if you're in Smode
	LI(	t5, MSTATUS_MPRV)	// need to read opcode from istream because mtval=0
	csrrs	t5, CSR_XSTATUS, t5	// set mprv while saving the old value
 .endif
	lhu	t6, 0(t2)		// load 1st 16b of opc w/ old priv, endianess //FIXME: insts always little endian!
	andi	t4, t6,  0x3
	addi	t4, t4, -0x3		// does opcode[1:0]==0b11? (Meaning >16b op)
	beqz	t4, sv_\__MODE__\()tval	// yes, entire mtval is in t2, adj amt in t3 is zero
	lhu	t4, 2(t2)		// no, get 2nd	hwd, align it & insert it into opcode
	sll	t4, t4, 16
	or	t6, t4, t6
 .if (\__MODE__\() == M)
	csrrw	t5, CSR_XSTATUS, t5	// restore mstatus
 .endif
        mv	t3, x0                  // zero adj amt
/*******FUTURE FIXME: this will not handle 48 or 64b opcodes in an RV64) ********/

sv_\__MODE__\()tval:			// adjustment amt is in t3, tval or opcode in t2
        sub	t6, t6, t3		// perform mtval adjust by either code or data position or zero in t3
no_\__MODE__\()adj:			// For Illegal op handling or tval not loaded - opcode not address
        SREG	t6, 3*REGWIDTH(t1)	// save 4th sig value, (rel mtval) into trap signature area
  .if (\__MODE__\() == M)
    .ifdef  __H_EXT__
	csrr	t2, CSR_MTVAL2
	SREG	t2, 5*REGWIDTH(t1)	// store 5th sig value, only if mmode handler and VS mode exists
	csrr	t2, CSR_MTINST
	SREG	t2, 6*REGWIDTH(t1)	// store 6th sig value, only if mmode handler and VS mode exists
    .endif
  .endif

  /**** vector to execption special handling routines ****/
	csrr	t2, CSR_XCAUSE	
  	LA(	t3, excpt_\__MODE__\()hndlr_tbl)// load spcl except handler jump table addr
	j	spcl_\__MODE__\()handler	// jump to shared int/excpt spcl handling dispatcher

 /**** common return code for both interrupts and exceptions ****/
resto_\__MODE__\()rtn:			// restore and return
	LREG  	t1, 1*REGWIDTH(sp)
        LREG  	t2, 2*REGWIDTH(sp)
        LREG  	t3, 3*REGWIDTH(sp)
        LREG  	t4, 4*REGWIDTH(sp)
        LREG  	t5, 5*REGWIDTH(sp)
        LREG  	t6, 6*REGWIDTH(sp)
	LREG	sp, 7*REGWIDTH(sp)  	// restore temporaries

	\__MODE__\()RET			// return to test, after padding adjustment (macro to handle case)

 /***************************************************/
 /**** This is the interrupt specific code. It   ****/
 /**** clears the int and saves int-specific CSRS****/
 /***************************************************/ 
common_\__MODE__\()int_handler:    	// t1 has sig ptr, t2 has mcause
        LI(	t3, 1)
 //**FIXME** - make sure this is kept up-to-date with fast int extension and others
	andi	t2,t2,XLEN-1	// rmv extranous bits if future extensions use upper bits
        sll   	t3, t3, t2      	// create mask 1<<xcause **NOTE**: that MSB is ignored in shift amt
        csrrc 	t4, CSR_XIE, t3 	// read, then attempt to clear int enable bit??
        csrrc 	t4, CSR_XIP, t3 	// read, then attempt to clear int pend bit
sv_\__MODE__\()ip:			// note: clear has no effect on MxIP
        SREG  	t4, 2*REGWIDTH(t1) 	// save 3rd sig value, (xip)

  	LA(	t3, clrint_\__MODE__\()tbl)	// load spcl int handler dispatch table addr

  /**** enter shared special int/excp handler dispatch into table in t3, indexed by mcause ****/
spcl_\__MODE__\()handler:		// case table branch to special handler code, depending on mcause
  	slli	t2, t2, 3       	// convert cause to 8B aligned offset
  	add	t3, t3, t2      	// index into to it, load vector, then jump to it
  	LREG	t3, 0(t3)      
	jr	t3			// this defaulst to resto_\__MODE__\()rtn

/**** These are invocations of the model supplied interrupt clearing macros ****/
/**** Note there is a copy per mode, though they could all be the same code ****/
/****   !!!! This must be speced as to which registers they may touch !!!!  ****/
// **FIXME** : the spec needs to be updated with the per/mode versions, not just one
// **FIXME**: ove these outside the handler so it can copied per mode using INSTANTIATE_MODE_MACRO
	//Does this work if we recode like thks?:
	//  clr_\__MODE__\()sw_int:			         // default to just return if not defined
        //  RVMODEL_CLEAR_\__MODE__\()SW_IN
	//  j	resto_\__MODE__\()rtn

.if \__MODE__\() == M

clr_Msw_int:			         // default to just return if not defined
        RVMODEL_CLEAR_MSW_INT
        j     	resto_Mrtn

clr_Mtmr_int:		                 // default to just return
        RVMODEL_CLEAR_MTIMER_INT
        j     	resto_Mrtn  

clr_Mext_int:		                 // default to just return
        RVMODEL_CLEAR_MEXT_INT
        SREG  	t3, 3*REGWIDTH(t1)	  // save 4rd sig value, (intID)
        j     	resto_Mrtn

.elseif \__MODE__\() == S

clr_Ssw_int:			         // default to just return if not defined
        RVMODEL_CLEAR_SSW_INT
        j     	resto_Srtn

clr_Stmr_int:		                 // default to just return
        RVMODEL_CLEAR_STIMER_INT
        j     	resto_Srtn  

clr_Sext_int:		                 // default to just return
        RVMODEL_CLEAR_SEXT_INT
        SREG  	t3, 3*REGWIDTH(t1)	 // save 4rd sig value, (intID)
        j     	resto_Srtn

.else

clr_Vsw_int:			        // default to just return if not defined
        RVMODEL_CLEAR_VSW_INT
        j     	resto_Vrtn

clr_Vtmr_int:		               // default to just return
        RVMODEL_CLEAR_VTIMER_INT
        j     	resto_Vrtn  

clr_Vext_int:		               // default to just return
        RVMODEL_CLEAR_VEXT_INT
        SREG  	t3, 3*REGWIDTH(t1)	// save 4rd sig value, (intID)
        j     	resto_Vrtn

.endif

/**** this is the table of interrupt clearing routine pointers, which could include special handlers ****/
/**** They default to RVMODEL macros above, which are model supplied, then jump to rtn code          ****/

  .align ALIGNSZ	
clrint_\__MODE__\()tbl:			//this code should only touch t2..t6
  	.dword	resto_\__MODE__\()rtn	// int cause  0 is reserved, just return
#ifdef rvtest_strap_routine	
 	.dword	clr_Ssw_int		// int cause  1  Smode SW int
#else
	.dword	cleanup_epilogs		// no Smode, impossible
#endif
#ifdef rvtest_vtrap_routine	
  	.dword	clr_Vsw_int		// int cause  2  Vmode SW int#else
#else
	.dword	cleanup_epilogs		// no Smode, impossible
#endif
#ifdef rvtest_Mtrap_routine	
  	.dword	clr_Msw_int		// int cause  3  Mmode SW int#else
#else
	.dword	cleanup_epilogs		// no Smode, impossible
#endif

  	.dword	resto_\__MODE__\()rtn	// int cause  4 is reserved, just return
#ifdef rvtest_strap_routine	
  	.dword	clr_Stmr_int		// int cause  5  Smode Tmr int
#else
	.dword	cleanup_epilogs		// no Smode, impossible
#endif
#ifdef rvtest_vtrap_routine	
  	.dword	clr_Vtmr_int		// int cause  6  Vmode Tmr int
#else
	.dword	cleanup_epilogs		// no Vmode, impossible
#endif
#ifdef rvtest_mtrap_routine	
  	.dword	clr_Mtmr_int		// int cause  7  Mmode Tmr int
#else
	.dword	cleanup_epilogs		// no Mmode, impossible
#endif

 	.dword	resto_\__MODE__\()rtn	// int cause  8 is reserved, just return
#ifdef rvtest_strap_routine	
  	.dword	clr_Sext_int		// int cause  9  Smode Ext int
#else
	.dword	cleanup_epilogs		// no Smode, impossible
#endif
#ifdef rvtest_vtrap_routine	
  	.dword	clr_Vext_int		// int cause  A  Vmode Ext int
#else
	.dword	cleanup_epilogs		// no Vmode, impossible
#endif
#ifdef rvtest_mtrap_routine	
  	.dword	clr_Mext_int		// int cause  B  Mmode Ext int
#else
	.dword	cleanup_epilogs		// no Mmode, impossible
#endif

 .rept NUM_SPECD_INTCAUSES-0xC
  	.dword	resto_\__MODE__\()rtn	// int cause c..NUM_SPECD_INTCAUSES is reserved, just return
 .endr	
 .rept XLEN-NUM_SPECD_INTCAUSES
  	.dword	cleanup_epilogs		// impossible, quit test by jumping to  epilogs
 .endr

/**** this is the table of exception handling routine pointers, which ****/
/****  could include special handlers. They default to the rtn code   ****/

excpt_\__MODE__\()hndlr_tbl:		// handler code should only touch t2..t6 ****<<--must be speced!****
 .rept NUM_SPECD_EXCPTCAUSES
 	.dword	resto_\__MODE__\()rtn	// default, just return
 .endr
 .rept XLEN-NUM_SPECD_INTCAUSES
  	.dword	cleanup_epilogs		// impossible, quit test by jumping to epilogs
 .endr
.option pop
.endm

/*******************************************************************************/
/**************** cleanup code; restore xtvec or where it points to ************/
/********* Assumption: in M-mode, because GOTO_MMODE always ends tests *********/
/********* Assumption: XSCRATCH pnts to save area for appropriate mode *********/
/*******************************************************************************/

.macro RVTEST_TRAP_EPILOG __MODE__
.option push
.option norvc

	XCSR_VRENAME \__MODE__			//retarget XCSR names to this modes CSRs, no V/S aiasing

exit_\__MODE__\()cleanup:
	csrr	t1, CSR_XSCRATCH		// pointer to save area
resto_\__MODE__\()edeleg:
	LREG    t2, xedeleg_sv_addr(t1)		// get saved xedeleg at offset -32
	csrw	CSR_XEDELEG,  t2
resto_\__MODE__\()satp:
	LREG    t2, xsatp_sv_addr(t1)		// get saved xsatp  at offset -56
	csrw	CSR_XSATP,  t2
resto_\__MODE__\()scratch:
  	LREG	t5, xscr_save_addr(t1)	      	// offset -8 is xscratch_sv
  	csrw	CSR_XSCRATCH, t5		// restore mscratch
resto_\__MODE__\()xtvec:
  	LREG	t4, xtvec_sav_addr(t1)	        // load orig mtvec addr from tvec_sv
  	csrrw	t2, CSR_XTVEC, t4    		// restore mtvec (not redundant)
  	bne	t4, t2, 1f			// if saved!=mtvec, done, else need to restore tramp

resto_\__MODE__\()tramp:			// otherwise, t2 contains where to restore to
	addi	t4, t1, trapreg_sv_sz	  	// t4 now contains where to restore from
	LREG	t3, trampend_addr(t1)		// t3 tracks how much to restore

resto_\__MODE__\()loop:
  	lw	t6, 0(t4)		        // read saved tramp entry
  	sw	t6, 0(t2)		        // restore original tramp entry
  	addi	t2, t2, 4			// next tgt  index
  	addi	t4, t4, 4			// next save index
  	blt	t2, t3, resto_\__MODE__\()loop	// didn't get to end, continue
  1:
.global rvtest_\__MODE__\()end
rvtest_\__MODE__\()end:

#ifdef HANDLER_TESTCODE_ONLY
	//**fixme**: add conditional code to compare original trampoline with
	// restored trampoline and store the deltas in the trap signature region
	// must work for each mode
#endif	
 .option pop
 .endm
/*******************************************************************************/
/**************** end cleanup code; should fall into RVMODEL_HALT   ************/
/*******************************************************************************/

/*******************************************************************************/
/**** This macro defines per/mode save areas for mmode for each mode        ****/
/**** note that it is the code area, not the data area, and                 ****/
/**** must be mulitple of 8B, so multiple instantiations stay aligned       ****/
/*******************************************************************************/
.macro RVTEST_TRAP_SAVEAREA __MODE__
.align 3
.option push
.option norvc
.global \__MODE__\()trapreg_sv

\__MODE__\()satp_sv:
	.dword 0		// save area for incoming xsatp
\__MODE__\()mode_rtn:
	jr t3			// this replaces trap trampoline entry for S/Vmode
	.word 0			// dummy to keep alignment
\__MODE__\()trampend_sv:
	.dword	0		// save location of end of trampoline
\__MODE__\()edeleg_sv:
	.dword	0		// save location for edeleg CSR
\__MODE__\()tvec_new:
	.dword	0		// points to the in-use tvec, actual tramp table used
\__MODE__\()tvec_save:
	.dword	0		// save area for incoming mtvec
\__MODE__\()scratch_save:	
	.dword  0		// save area for incoming mscratch
\__MODE__\()trapreg_sv:
        .fill   8, REGWIDTH, 0xdeadbeef     // handler reg save area, 2 extra, keep dbl alignment
\__MODE__\()tramptbl_sv:	// save area of existing trampoline table
.rept ((tramp_sz>>2)+1) & -2	// align to dblwd
	j	.+0		// prototype jump instruction, offset to be filled in
 .endr
\__MODE__\()sv_area_end:	// used to clc size, which is used to avoid CSR read
.set \__MODE__\()sv_area_sz, (\__MODE__\()sv_area_end-\__MODE__\()satp_sv)

.option pop
.endm

//==============================================================================
// This section defines the required test format spec macros:
// RVTEST_[CODE/DATA/SIG]_[BEGIN/END]
//==============================================================================


/**************************** CODE BEGIN w/ TRAP HANDLER START  *********************/
/**** instantiate prologs using RVTEST_TRAP_PROLOG() if rvtests_xtrap_routine is ****/
/**** is defined, then initializes regs & defines rvtest_code_begin global label ****/
/************************************************************************************/
.macro RVTEST_CODE_BEGIN
 .align UNROLLSZ	
 .section .text.init
 .globl  rvtest_init
 .global rvtest_code_begin		//define the label and make it available

rvtest_init:				//instantiate prologs here
  INSTANTIATE_MODE_MACRO RVTEST_TRAP_PROLOG
  RVTEST_INIT_GPRS             // 0xF0E1D2C3B4A59687
rvtest_code_begin:
.endm					//end of RVTEST_CODE_BEGIN
/*********************** end of RVTEST_CODE_BEGIN ***********************************/

/************************************************************************************/
/****        The above is instantiated at the start of the actual test           ****/
/****                    So the test is here                                     ****/
/****        the below is instantiated at the end   of the actual test           ****/
/************************************************************************************/

/**************************************************************************************/
/**** RVTEST_CODE_END macro  defines end of test code: saves regs, transitions to  ****/
/**** Mmode, & instantiates epilog using RVTEST_TRAP_EPILOG() macros. Test code    ****/
/**** falls through to this else must branch to label rvtest_code_end. This must   ****/
/**** branch to a RVMODEL_HALT macro at the end. The actual trap handlers for each ****/
/**** mode are instantiated immediately following with RVTEST_TRAP_HANDLER() macro ****/	
/**************************************************************************************/

.macro RVTEST_CODE_END  	// test is ended, but in no particular mode
  .option push
  .option norvc
  .global rvtest_code_end	// define the label and make it available
  .global cleanup_epilogs	

rvtest_code_end:		// COMPLIANCE_HALT should get here
  #ifdef rvtest_gpr_save	// gpr_save area is instantiated at end of signature
    RVTEST_SAVE_GPRS  1	gpr_save
  #endif
    RVTEST_GOTO_MMODE		// if only Mmode used by tests, this has no effect
cleanup_epilogs:		// jump here to quit, will restore state for each mode
    INSTANTIATE_MODE_MACRO RVTEST_TRAP_EPILOG	//restore xTVEC, trampoline, regs for each mode

/************* test done, epolog has restored everying, jump to halt ****************/
  j	exit_cleanup		//skip around handlers, go to RVMODEL_HALT
/********************** trap handlers inserted here ***********************************/

    INSTANTIATE_MODE_MACRO RVTEST_TRAP_HANDLER

exit_cleanup:			// *** RVMODEL_HALT MUST follow this***, then data

  .option pop
.endm				// end of RVTEST_CODE_END

/************************************************************************************/
/**** RVTEST_CODE_END macros must fall thru or jump to an RVMODEL_HALT macro here ***/
/************************************************************************************/

/*===================================data section starts here========================*/

/************************************************************************************/
/**** RVTEST_DATA_BEGIN macro defines end of input data & rvtest_data_end label	 ****/
/**** this is a data area, so we instantiate trap save areas for each mode here	 ****/
/************************************************************************************/

.macro RVTEST_DATA_BEGIN
.data

.align 4	//ensure dbl alignment
/**************************************************************************************/
/**** this is the pointer to the current trap signature part of the signature area ****/
/**** it is shared by all trap modes, but shouldn't be instantiated unless at least****/
/**** 1 trap mode is defined (which is covered if m-mode trap handlers are defined ****/
/**************************************************************************************/

.global rvtest_trap_sig
rvtest_trap_sig:	
	.dword	 mtrap_sigptr

/**** now instantiate separate save areas for each modes state	   ****/
/**** strictly speaking, should only be needed for reentrant traps ****/
.align 3	//redundant?
	INSTANTIATE_MODE_MACRO RVTEST_TRAP_SAVEAREA

.align 4

/************************************************************************************/
/**************** end of RVTEST_DATA_BEGIN; input data should follow ****************/
/************************************************************************************/

.global rvtest_data_begin
rvtest_data_begin:
.endm

/************************************************************************************/
/**************** RVTEST_DATA_END macro; defines global label rvtest_data_end	 ****/
/************************************************************************************/
.macro RVTEST_DATA_END
.global rvtest_data_end
// Defining this if it's not already defined because GOTO_MMODE needs it.
#ifndef rvtest_mtrap_routine
 #ifndef mtrap_sigptr
  mtrap_sigptr:
    .fill 2,4,DEADBEEF
 #endif
#endif
rvtest_data_end:

/**** create identity mapped page tables here if mmu is present ****/
.align 12

#ifdef rvtest_strap_routine
  rvtest_sroot_pg_tbl:	
    RVTEST_PTE_IDENT_MAP

  #ifdef rvtest_vtrap_routine
    rvtest_vroot_pg_tbl:	
      RVTEST_PTE_IDENT_MAP
  #endif
#endif
.endm

	
