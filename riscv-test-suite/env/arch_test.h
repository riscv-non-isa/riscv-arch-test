// This file is divided into the following sections:
//      RV Arch Test Constants
//      general test and helper macros, required,  optional, or just useful
//         _ARGn, SIG[BASE/UPD[_F/ID]],BASEUPD,BIT,LA ,LI,RVTEST_[INIT/SAVE]_GPRS, XCSR_RENAME
//      RV ARCH Test Interrupt Macros ****FIXME:spec which regs must not be altered
//      primary macros used by handle: RVTEST_TRAP{_PROLOG/_HANDLER/_EPILOG/SAVEAREA}
//      required test format spec macros:      RVTEST_{Code/DATA/SIG}{_BEGIN/_END}
//      macros from Andrew Waterman's risc-v test macros
//      deprecated macro name aliases, just for migration ease

//  The resulting memory layout of the trap handler is (MACRO_NAME, label [function])
//****************************************************************
//  (code section)
// RVMODEL_BOOT
//      rvtest_entry_point: [boot code]
// RVTEST_CODE_BEGIN
//      rvtest_init:       [TRAP_PROLOG]   (m, ms, or msv)
//                         [INIT_GPRS]
//      rvtest_code_begin:
//*****************************
//********(body of tests)******
//*****************************
// RVTEST_CODE_END
//      rvtest_code_end:   [*optional* SAVE_GPRS routine]
//                         [RVTEST_GOTO_MMODE ] **FIXME** this won't work if MMU enabled unless VA=PA
//      cleanup_epilogs    [TRAP_EPILOG   (m, ms, or msv)] (jump to exit_cleanup)
//                         [TRAP_HANDLER  (m, ms, or msv)]
//      exit_cleanup:      [RVMODEL_HALT macro or a branch to it.]
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
//    rvtest_trap_sig:   [global trap signature start (shared by all modes) inited to mtrap_sigptr] **FIXME: needs VA=PA
//    RVTEST_TRAP_SAVEAREA      [handler sv area(m, ms, or msv) temp reg save, CSRs, tramp table, ptrs]
//      rvtest_data_begin: [input data     (shared by all modes)]
//    RVTEST_DATA_END
//      rvtest_data_end:
//    RVTEST_ROOT_PG_TBL [sets up identity map (VA=PA)
//      sroot_pg_tbl:   (if smode)
//      vroot_pg_tbl:   (if hypervisor)
//--------------------------------this could start a new section--------------------------------
// RVTEST_SIG_BEGIN
//    RVMODEL_DATA_BEGIN
//      rvtest_sig_begin:  [beginning of signature, used by signature dump, can be used by tests]
//      mtrap_sigptr:      [global trap signature start (shared by all modes)] - defined by tests
//      gpr_save:          [gpr save area (optional, enabled if rvtest_gpr_save is defined)]
// RVTEST_SIG_END
//    rvtest_sig_end:   [global test   end signature (shared by all modes)] (shouldn't matter what RVMODEL_DATA_END does)
//    RVMODEL_DATA_END
//--------------------------------end of test--------------------------------

/* The following macros are optional if interrupt tests are enabled (defaulted if not defined):
        RVMODEL_SET_[M/V/S]_[SW]_INT
        RVMODEL_CLR_[M/V/S]_[SW/TIMTER/EXT]_INT
        rvtest_[M/V/S]trap_routine
        GOTO_[M/S/U]MODE, INSTANTIATE_MODE_MACRO (prolog/handler/epilog/savearea)
   The following macro is optional, and defaults to fence.i if not defined
        RVMODEL.FENCEI
   The following variables are used     if interrupt tests are enabled (defaulted if not defined):
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
          rvtest_Sroot_pg_tbl: defined by RVTEST_PTE_IDENT_MAP macro inside RVTEST_DATA_BEGIN if  Smode implemented
          rvtest_Vroot_pg_tbl: defined by RVTEST_PTE_IDENT_MAP macro inside RVTEST_DATA_BEGIN if VSmode implemented
    labels/variables that must be defined by the DUT in model specific macros or #defines
           mtrap_sigptr:       defined by test if traps are possible, else is defaulted
*/
// don't put C-style macros (#define xxx) inside assembly macros; C-style is evaluated before assembly

#include "encoding.h"
#include "test_macros.h"
#define RVTEST_ISA(_STR)         //empty macro used by framework

#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))
#define BIT(addr, bit) (((addr)>>(bit))&1)
#define MASK (((1<<(XLEN-1))-1) + (1<<(XLEN-1))) // XLEN bits of 1s
#define MASK_XLEN(val)  val&MASK // shortens 64b values to XLEN when XLEN==32

#define REGWIDTH   (XLEN>>3)     // in units of #bytes

#define WDSZ       32
#define WDSGN      (       WDSZ  -1)
#define WDMSK      ( (1 << WDSZ) -1)
#define SEXT_WRD(x)  ((x & WDMSK) | (-BIT((x), WRDSGN)<< WRDSZ))

#define IMMSZ      12
#define IMMSGN            (IMMSZ -1)
#define IMMMSK     ( (1 << IMMSZ)-1)
#define SEXT_IMM(x)  ((x & IMMMSK) | (-BIT((x), IMMSGN)<< IMMSZ))

#define LIMMSZ     (WDSZ - IMMSZ)
#define LIMMSGN          (LIMMSZ -1)
#define LIMMMSK    ( (1 <<LIMMSZ)-1)
#define SEXT_LIMM(x) ((x &LIMMMSK) | (-BIT((x),LIMMSGN)<<LIMMSZ))

#define WDBYTSZ    (WDSZ >> 3)  // in units of #bytes
#define WDBYTMSK         (WDBYTSZ-1)

#define ALIGNSZ ((XLEN>>5)+2)   // log2(XLEN): 2,3,4 for XLEN 32,64,128
#if XLEN>FLEN
  #define SIGALIGN REGWIDTH
#else
  #define SIGALIGN FREGWIDTH
#endif

#ifndef RVMODEL_MTVEC_ALIGN
  #define MTVEC_ALIGN 6    // ensure that a trampoline is on a typical cacheline boundary, just in case
#else
  #define MTVEC_ALIGN RVMODEL_MTVEC_ALIGN  //Let the model defined value be used for required trap handler alignment based on implemented MTVEC
#endif

//==============================================================================
// this section has RV Arch Test Constants, mostly YAML based.
// It ensures they're defined  & defaulted if necessary)
//==============================================================================

// set defaults
#ifndef   NUM_SPECD_INTCAUSES
  #define NUM_SPECD_INTCAUSES 16
  #define INT_CAUSE_MSK ((1<<4)-1)
#endif

        // set defaults
#ifndef   NUM_SPECD_EXCPTCAUSES
  #define NUM_SPECD_EXCPTCAUSES 16
  #define EXCPT_CAUSE_MSK ((1<<4)-1)
#endif

//==========================================================================================
// By default, it is defined as nop for the implementation that does not support Zifencei
// Implementations that support Zifencei may use the fence.i instruction.
// This only gets executed if xTVEC is not writable to point to the trap trampoline, 
// and if it isn't writable, the model better have the zifencei extension implemented.
//==========================================================================================

#ifndef   RVMODEL_FENCEI
  #ifndef ZIFENCE
       #define RVMODEL_FENCEI nop
  #else                            
       #define RVMODEL_FENCEI fence.i 
    #endif
#endif

#ifndef UNROLLSZ
  #define UNROLLSZ 5
#endif

// **Note** that this is different that previous DATA_REL_TVAL_MASK! This is the OR of Code_Rel+Data_Rel
// if xTVAL is set to zero for some cause, then the corresponding bit in SET_REL_TVAL_MSK should be cleared

#ifndef SET_REL_TVAL_MSK
#define SET_REL_TVAL_MSK ((1<<CAUSE_MISALIGNED_FETCH | 1<<CAUSE_FETCH_ACCESS                             | 1<<CAUSE_BREAKPOINT   | \
                           1<<CAUSE_MISALIGNED_LOAD  | 1<<CAUSE_LOAD_ACCESS  | 1<<CAUSE_MISALIGNED_STORE | 1<<CAUSE_STORE_ACCESS | \
                           1<<CAUSE_FETCH_PAGE_FAULT | 1<<CAUSE_LOAD_PAGE_FAULT                          | 1<<CAUSE_STORE_PAGE_FAULT) \
                        & 0xFFFFFFFF)
#endif

#ifndef GOTO_M_OP
    #define GOTO_M_OP   ecall
#endif

//this is a valid global pte entry with all permissions. IF at the root entry, it forms an identity map.
#define RVTEST_PTE_IDENT_MAP  .fill   4096/REGWIDTH, REGWIDTH, (PTE_G | PTE_U | PTE_X | PTE_W | PTE_R | PTE_V)
#define RVTEST_PTE_NOACC_MAP  .fill   4096/REGWIDTH, REGWIDTH, (PTE_G | PTE_U )

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
    #define LREGWU lw
#elif XLEN==64
    #define SREG sd
    #define LREG ld
    #define XLEN_WIDTH 6
    #define LREGWU lwu
#else
    #define SREG sq
    #define LREG lq
    #define XLEN_WIDTH 7
#endif

#if FLEN==32
    #define FLREG flw
    #define FSREG fsw
    #define FREGWIDTH 4
#elif FLEN==64
    #define FLREG fld
    #define FSREG fsd
    #define FREGWIDTH 8
#else
    #define FLREG flq
    #define FSREG fsq
    #define FREGWIDTH 16
#endif


#if SIGALIGN==8
  #define CANARY \
      .dword 0x6F5CA309E7D4B281
#else
  #define CANARY \
      .word 0x6F5CA309 
#endif

//---------------------------mode encoding definitions-----------------------------
.set MMODE_SIG,3   /* FIXME why don't the #defines work if they're evaluated first?? */
.set VMODE_SIG,2
.set SMODE_SIG,1
  //#define MMODE_SIG 3
  //#define VMODE_SIG 2
  //#define SMODE_SIG 1
        /* these macros need to be defined because mode is uppercase in mode specific macros */
        /* note that vs mode uses smode return */

#define MPP_LSB   11    //bit pos of LSB of the mstatus.MPP field
#define MPP_SMODE  (1<<MPP_LSB)
#define MPV_LSB    7    // bit pos of prev vmod mstatush.MPV in either mstatush or upper half of mstatus
//define sizes
#define tramp_sz        ((((XLEN + 3* NUM_SPECD_INTCAUSES + 6) * 4)+4) & -8) /* 16=common_xhandler to common_xentry, frc to dbvlwd size */
#define ptr_sv_sz           (15*8)
#define reg_sv_sz           ( 8*REGWIDTH)
#define sv_area_sz      (tramp_sz + ptr_sv_sz +reg_sv_sz)
#define int_hndlr_tblsz (XLEN*2*WDBYTSZ)
/*
//#define sv_area_sz      (Msv_area_end-Mtramptbl_sv)           //sv_area start with aligned tramp_tbl
//#define tramp_sz        (((common_Mentry-Mtrampoline)+4)& -8) // #ops from Mend..Mentry, forced to dblword size
*/
//define a fixed offsets into the save area
#define tramp_sv_off                  ( 0*8)  // (Mtramptbl_sv    -Mtrapreg_sv) algned to dblwd

#define code_bgn_off         (tramp_sz+ 0*8)  // (Mcode_bgn_ptr   -Mtrapreg_sv)
#define code_seg_siz         (tramp_sz+ 1*8)  // (Mcode_seg_siz   -Mtrapreg_sv)
#define data_bgn_off         (tramp_sz+ 2*8)  // (Mdata_bgn_ptr   -Mtrapreg_sv)
#define data_seg_siz         (tramp_sz+ 3*8)  // (Mdata_seg_siz   -Mtrapreg_sv)
#define sig_bgn_off          (tramp_sz+ 4*8)  // ( Msig_bgn_ptr   -Mtrapreg_sv)
#define sig_seg_siz          (tramp_sz+ 5*8)  // ( Msig_seg_siz   -Mtrapreg_sv)
#define vmem_bgn_off         (tramp_sz+ 6*8)  // (Mvmem_bgn_ptr   -Mtrapreg_sv)
#define vmem_seg_siz         (tramp_sz+ 7*8)  // (Mvmem_seg_siz   -Mtrapreg_sv)

#define trapsig_ptr_off      (tramp_sz+ 8*8)  //  (Mtrap_sig      -Mtrapreg_sv)
#define xsatp_sv_off         (tramp_sz+ 9*8)  //  (Msatp_sv       -Mtrapreg_sv)
#define trampend_addr        (tramp_sz+10*8)  //  (Mtrampend_sv   -Mtrapreg_sv) 
#define xedeleg_sv_off       (tramp_sz+11*8)  //  (Medeleg_sv     -Mtrapreg_sv)
#define xtvec_new_off        (tramp_sz+12*8)  //  (tvec_new       -Mtrapreg_sv)
#define xtvec_sav_off        (tramp_sz+13*8)  //  (tvec_save      -Mtrapreg_sv)
#define xscr_save_off        (tramp_sz+14*8)  //  (scratch_save   -Mtrapreg_sv)
#define trap_sv_off          (tramp_sz+15*8)  //  (trapreg_sv     -Mtrapreg_sv)

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

// this generates a constants using the standard addi or lui/addi sequences
// but also handles cases that are contiguous bit masks in any position,
// and also constants handled with the addi/lui/addi but are shifted left

/**** fixed length LI macro ****/
#if (XLEN<64)
#define LI(reg, imm)                                                            ;\
  .set immx,    (imm & MASK)    /* trim to XLEN (noeffect on RV64)      */      ;\
  .set absimm,  ((immx^(-BIT(immx,XLEN-1)))&MASK) /* cvt to posnum to simplify code */  ;\
  .set cry,     (BIT(imm, IMMSGN))                                              ;\
  .set imm12,   (SEXT_IMM(immx))                                                ;\
  .if     ((absimm>>IMMSGN)==0) /* fits 12b signed imm (properly sgnext)? */    ;\
        li   reg, imm12         /* yes, <= 12bit, will be simple li       */    ;\
  .else                                                                         ;\
        lui  reg, (((immx>>IMMSZ)+cry) & LIMMMSK) /* <= 32b, use lui/addi */    ;\
    .if   ((imm&IMMMSK)!=0)     /* but skip this if lower bits are zero   */    ;\
        addi reg, reg, imm12                                                    ;\
    .endif                                                                      ;\
 .endif
#else
#define LI(reg, imm)                                                            ;\
  .option push                                                                  ;\
  .option norvc                                                                 ;\
  .set immx,    (imm & MASK)    /* trim to XLEN (noeffect on RV64)      */      ;\
/***************** used in loop that detects bitmasks                   */      ;\
  .set edge1,   -1              /* 1st "1" bit pos scanning r to l      */      ;\
  .set edge2,   -1              /* 1st "0" bit pos scanning r to l      */      ;\
  .set imme,    ((immx^(-BIT(immx,0     )))&MASK) /* cvt to even, cvt back at end */    ;\
  .set pos,      0                                                              ;\
/***************** used in code that checks for 32b immediates          */      ;\
  .set absimm,  ((immx^(-BIT(immx,XLEN-1)))&MASK) /* cvt to posnum to simplify code */  ;\
  .set cry,     (BIT(immx, IMMSGN))                                             ;\
  .set imm12,   (SEXT_IMM(immx))                                                ;\
/***************** used in code that gnerates bitmasks                  */      ;\
  .set even,    (1-BIT(imm, 0)) /* imm has at least 1 trailing zero     */      ;\
  .set cryh,    (BIT(immx, IMMSGN+32))                                          ;\
/******** loop finding rising/falling edge fm LSB-MSB given even operand ****/  ;\
  .rept XLEN                                                                    ;\
    .if     (edge1<0)           /* looking for first edge?              */      ;\
      .if (BIT(imme,pos)==1)    /* look for falling edge[pos]           */      ;\
        .set  edge1,pos         /* fnd falling edge, don’t chk for more */      ;\
      .endif                                                                    ;\
    .elseif (edge2<0)           /* looking for second edge?             */      ;\
      .if (BIT(imme,pos)==0)    /* yes, found rising edge[pos]?         */      ;\
         .set  edge2, pos       /* fnd rising  edge, don’t chk for more */      ;\
      .endif                                                                    ;\
    .endif                                                                      ;\
    .set    pos,  pos+1         /* keep looking (even if already found) */      ;\
  .endr                                                                         ;\
/***************** used in code that generates shifted 32b values       */      ;\
  .set immxsh, (immx>>edge1)    /* *sh variables only used if positive  */      ;\
  .set imm12sh,(SEXT_IMM(immxsh))/* look @1st 12b of shifted imm val    */      ;\
  .set crysh,     (BIT(immxsh, IMMSGN))                                         ;\
  .set absimmsh, immxsh         /* pos, no inversion needed, just shift */      ;\
/*******does it fit into std li or lui+li sequence****************************/ ;\
  .if     ((absimm>>IMMSGN)==0) /* fits 12b signed imm (properly sgnext)? */    ;\
        li   reg, imm12         /* yes, <= 12bit, will be simple li       */    ;\
  .elseif ((absimm+ (cry << IMMSZ) >> WDSGN)==0)/*fits 32b sgnimm?(w/ sgnext)?*/;\
        lui  reg, (((immx>>IMMSZ)+cry) & LIMMMSK) /* <= 32b, use lui/addi */    ;\
    .if   ((imm&IMMMSK)!=0)     /* but skip this if lower bits are zero   */    ;\
        addi reg, reg, imm12                                                    ;\
    .endif                                                                      ;\
 /*********** look for  0->1->0 masks, or inverse sgl/multbit *************/    ;\
  .elseif ( even && (edge2==-1))        /* only rising  edge, so 111000   */    ;\
        li      reg, -1                                                         ;\
        slli    reg, reg, edge1         /* make 111s --> 000s mask        */    ;\
  .elseif (!even && (edge2==-1))        /* only falling edge, so 000111   */    ;\
        li      reg, -1                                                         ;\
        srli    reg, reg, XLEN-edge1    /* make 000s --> 111s mask        */    ;\
  .elseif (imme == (1<<edge1))          /* check for single bit case      */    ;\
        li      reg, 1                                                          ;\
        slli    reg, reg, edge1         /* make 0001000 sgl bit mask      */    ;\
    .if   (!even)                                                               ;\
        xori    reg, reg, -1            /* orig odd, cvt to 1110111 mask  */    ;\
    .endif                                                                      ;\
  .elseif (imme == ((1<<edge2) - (1<<edge1))) /* chk for multibit case    */    ;\
        li      reg, -1                                                         ;\
        srli    reg, reg, XLEN-(edge2-edge1) /* make multibit 1s mask     */    ;\
        slli    reg, reg, edge1         /* and put it into position       */    ;\
    .if   (!even)                                                               ;\
        xori    reg, reg, -1            /* orig odd, cvt to 1110111 mask  */    ;\
    .endif                                                                      ;\
  /************** look for 12b or 32b imms with trailing zeroes ***********/    ;\
  .elseif ((immx==imme)&&((absimmsh>>IMMSGN)==0))/* fits 12b after shift? */    ;\
        li      reg, imm12sh            /* <= 12bit, will be simple li    */    ;\
        slli    reg, reg, edge1         /* add trailing zeros             */    ;\
  .elseif ((immx==imme)&&(((absimmsh>>WDSGN)+crysh)==0)) /* fits 32 <<shft? */  ;\
        lui     reg, ((immxsh>>IMMSZ)+crysh)&LIMMMSK /* <=32b, use lui/addi */  ;\
    .if   ((imm12sh&IMMMSK)!=0)         /* but skip this if low bits ==0  */    ;\
        addi    reg, reg, imm12sh                                               ;\
    .endif                                                                      ;\
        slli    reg, reg, edge1         /* add trailing zeros             */    ;\
  .else                                 /* give up, use fixed 8op sequence*/    ;\
  /******* TBD add sp case of zero short imms, rmv add/merge shifts  ******/    ;\
        lui     reg, ((immx>>(XLEN-LIMMSZ))+cryh)&LIMMMSK /* 1st 20b (63:44) */ ;\
        addi    reg, reg, SEXT_IMM(immx>>32)            /* nxt 12b (43:32) */   ;\
        slli    reg, reg, 11    /* following are <12b, don't need SEXT     */   ;\
        addi    reg, reg, (immx>>21) & (IMMMSK>>1)      /* nxt 11b (31:21) */   ;\
        slli    reg, reg, 11                            /* mk room for 11b */   ;\
        addi    reg, reg, (immx>>10) & (IMMMSK>>1)      /* nxt 11b (20:10) */   ;\
        slli    reg, reg, 10                            /* mk room for 10b */   ;\
    .if   ((imm&(IMMMSK>>2))!=0) /* but skip this if lower bits are zero   */   ;\
        addi    reg, reg, (immx)     & (IMMMSK>>2)      /* lst 10b (09:00) */   ;\
    .endif                                                                      ;\
    .if (XLEN==32)                                                              ;\
        .warning "Should never get here for RV32"                               ;\
    .endif                                                                      ;\
 .endif                                                                         ;\
 .option pop
 #endif

/**** fixed length LA macro; alignment and rvc/norvc unknown before execution ****/
#define LA(reg,val)     ;\
        .option push    ;\
        .option rvc     ;\
        .align UNROLLSZ ;\
        .option norvc   ;\
        la reg,val      ;\
        .align UNROLLSZ ;\
        .option pop

#define ADDI(dst, src, imm) /* helper*/ ;\
#if (imm<=2048)                         ;\
        addi    dst, src, imm           ;\
#else                                   ;\
        LI(     dst, imm)               ;\
        addi    dst, src, dst           ;\
#endif

/*****************************************************************/
/**** initialize regs, just to make sure you catch any errors ****/
/*****************************************************************/

/* init regs, to ensure you catch any errors */
#define RVTEST_INIT_GPRS                        ;\
     LI (x1,  (0xFEEDBEADFEEDBEAD & MASK))      ;\
     LI (x2,  (0xFF76DF56FF76DF56 & MASK))      ;\
     LI (x3,  (0x7FBB6FAB7FBB6FAB & MASK))      ;\
     LI (x4,  (0xBFDDB7D5BFDDB7D5 & MASK))      ;\
     LA (x5,  rvtest_code_begin)                ;\
     LA (x6,  rvtest_data_begin)                ;\
     LI (x7,  (0xB7FBB6FAB7FBB6FA & MASK))      ;\
     LI (x8,  (0x5BFDDB7D5BFDDB7D & MASK))      ;\
     LI (x9,  (0xADFEEDBEADFEEDBE & MASK))      ;\
     LI (x10, (0x56FF76DF56FF76DF & MASK))      ;\
     LI (x11, (0xAB7FBB6FAB7FBB6F & MASK))      ;\
     LI (x12, (0xD5BFDDB7D5BFDDB7 & MASK))      ;\
     LI (x13, (0xEADFEEDBEADFEEDB & MASK))      ;\
     LI (x14, (0xF56FF76DF56FF76D & MASK))      ;\
     LI (x15, (0xFAB7FBB6FAB7FBB6 & MASK))      ;\
   #ifndef RVTEST_E                             ;\
     LI (x16, (0x7D5BFDDB7D5BFDDB & MASK))      ;\
     LI (x17, (0xBEADFEEDBEADFEED & MASK))      ;\
     LI (x18, (0xDF56FF76DF56FF76 & MASK))      ;\
     LI (x19, (0x6FAB7FBB6FAB7FBB & MASK))      ;\
     LI (x20, (0xB7D5BFDDB7D5BFDD & MASK))      ;\
     LI (x21, (0xDBEADFEEDBEADFEE & MASK))      ;\
     LI (x22, (0x6DF56FF76DF56FF7 & MASK))      ;\
     LI (x23, (0xB6FAB7FBB6FAB7FB & MASK))      ;\
     LI (x24, (0xDB7D5BFDDB7D5BFD & MASK))      ;\
     LI (x25, (0xEDBEADFEEDBEADFE & MASK))      ;\
     LI (x26, (0x76DF56FF76DF56FF & MASK))      ;\
     LI (x27, (0xBB6FAB7FBB6FAB7F & MASK))      ;\
     LI (x28, (0xDDB7D5BFDDB7D5BF & MASK))      ;\
     LI (x29, (0xEEDBEADFEEDBEADF & MASK))      ;\
     LI (x30, (0xF76DF56FF76DF56F & MASK))      ;\
     LI (x31, (0xFBB6FAB7FBB6FAB7 & MASK))      ;\
   #endif

/******************************************************************************/
/**** this is a helper macro that conditionally instantiates the macros    ****/
/**** PROLOG/HANDLER/EPILOG/SAVEAREA depending on test type & mode support ****/
/******************************************************************************/
.macro INSTANTIATE_MODE_MACRO MACRO_NAME
 #ifdef rvtest_mtrap_routine
  \MACRO_NAME M         // actual m-mode prolog/epilog/handler code

        #ifdef rvtest_strap_routine
      \MACRO_NAME S     // actual s-mode prolog/epilog/handler code

        #ifdef rvtest_vtrap_routine
          \MACRO_NAME V // actual v-mode prolog/epilog/handler code
        #endif
    #endif
 #endif
.endm

/**************************************************************************/
/**** this is a helper macro defaulting the int macro if its undefined ****/
/**** It builds the macro name from arguments prefix,  mode, and type  ****/
/**** The macro names are RV_MODEL_SET_[M/S/V][SW/TMR,EXT]             ****/
/****  and                RV_MODEL_CLR_[M/S/V][SW]                     ****/
/**************************************************************************/

.macro DFLT_INT_MACRO MACRO_NAME
.set      MACRO_NAME_, \MACRO_NAME
 .ifndef    MACRO_NAME_
  .warning  "MACRO_NAME_ is not defined by target. Executing this will end test."
   #define  MACRO_NAME_     j cleanup_epilogs
 .endif
.endm

/******************************************************************************/
/**** this is a helper macro that creates CSR aliases so code that         ****/
/**** accesses CSRs when V=1 in different modes can share the code         ****/
/******************************************************************************/

 .macro XCSR_RENAME __MODE__    // enable CSR names to be parameterized, V,S merged
    .if ((\__MODE__\() == S) || (\__MODE__\() == V))
      .set CSR_XSTATUS, CSR_SSTATUS
      .set CSR_XEDELEG, CSR_SEDELEG
      .set CSR_XIE,     CSR_SIE
      .set CSR_XIP,     CSR_SIP
      .set CSR_XCAUSE,  CSR_SCAUSE
      .set CSR_XEPC,    CSR_SEPC
      .set CSR_XSATP,   CSR_SATP
      .set CSR_XSCRATCH,CSR_SSCRATCH
      .set CSR_XTVAL,   CSR_STVAL
      .set CSR_XTVEC,   CSR_STVEC
    .else
      .set CSR_XSTATUS, CSR_MSTATUS
      .set CSR_XEDELEG, CSR_MEDELEG
      .set CSR_XIE,     CSR_MIE
      .set CSR_XIP,     CSR_MIP
      .set CSR_XCAUSE,  CSR_MCAUSE
      .set CSR_XEPC,    CSR_MEPC
      .set CSR_XSATP,   CSR_SATP
      .set CSR_XSCRATCH,CSR_MSCRATCH
      .set CSR_XTVAL,   CSR_MTVAL
      .set CSR_XTVEC,   CSR_MTVEC
    .endif
.endm

/******************************************************************************/
/**** this is a helper macro that creates CSR aliases so code that         ****/
/**** accesses CSRs when V=1 in different modes can share the code         ****/
/**** this verasion treats Vmodes separately as opposed to XCSR_RENAME     ****/
/******************************************************************************/
 .macro XCSR_VRENAME __MODE__   // enable CSR names to be parameterized, V,S separate 
  .if (\__MODE__\() == V)
      .set CSR_XSTATUS, CSR_HSTATUS
      .set CSR_XEDELEG, CSR_HEDELEG
      .set CSR_XIE,     CSR_HIE
      .set CSR_XIP,     CSR_HIP
      .set CSR_XCAUSE,  CSR_VSCAUSE
      .set CSR_XEPC,    CSR_VSEPC
      .set CSR_XSATP,   CSR_VSATP
      .set CSR_XSCRATCH,CSR_VSSCRATCH
      .set CSR_XTVAL,   CSR_VSTVAL
      .set CSR_XTVEC,   CSR_VSTVEC
  .else 
      XCSR_RENAME \__MODE__\()
  .endif 
.endm

////////////////////////////////////////////////////////////////////////////////////////
//**** This is a helper macro that saves GPRs. Normally used only inside CODE_END ****//
//**** Note: this needs a temp scratch register, & there isn't anything that will ****//
//**** will work, so we always trash some register, determined by macro param     ****//
//**** NOTE: Only be use for debug! Xregs containing addresses won't be relocated ****//
////////////////////////////////////////////////////////////////////////////////////////

.macro RVTEST_SAVE_GPRS BASEREG REG_SV_ADDR     // optionally save GPRs
.option push
.option norvc
.set offset,0
  LA(     \BASEREG, \REG_SV_ADDR)               //this destroys basereg, but saves rest
  SIGUPD( \BASEREG, x1)
  SIGUPD( \BASEREG, x2)
  SIGUPD( \BASEREG, x3)
  SIGUPD( \BASEREG, x4)
  SIGUPD( \BASEREG, x5)
  SIGUPD( \BASEREG, x6)
  SIGUPD( \BASEREG, x7)
  SIGUPD( \BASEREG, x8)
  SIGUPD( \BASEREG, x9)
  SIGUPD( \BASEREG, x10)
  SIGUPD( \BASEREG, x11)
  SIGUPD( \BASEREG, x12)
  SIGUPD( \BASEREG, x13)
  SIGUPD( \BASEREG, x14)
  SIGUPD( \BASEREG, x15)
#if (! __RV32E__)
  SIGUPD( \BASEREG, x16)
  SIGUPD( \BASEREG, x17)
  SIGUPD( \BASEREG, x18)
  SIGUPD( \BASEREG, x19)
  SIGUPD( \BASEREG, x20)
  SIGUPD( \BASEREG, x21)
  SIGUPD( \BASEREG, x22)
  SIGUPD( \BASEREG, x23)
  SIGUPD( \BASEREG, x24)
  SIGUPD( \BASEREG, x25)
  SIGUPD( \BASEREG, x26)
  SIGUPD( \BASEREG, x27)
  SIGUPD( \BASEREG, x28)
  SIGUPD( \BASEREG, x29)
  SIGUPD( \BASEREG, x30)
  SIGUPD( \BASEREG, x31)
#endif
.option pop
.endm

/********************* REQUIRED FOR NEW TESTS *************************/
/**** new macro encapsulating RVMODEL_DATA_BEGIN (signature area)  ****/
/**** defining rvtest_sig_begin: label to enabling direct stores   ****/
/**** into the signature area to be properly relocated             ****/
/**********************************************************************/
#define RVTEST_SIG_BEGIN                                                  ;\
.global rvtest_sig_begin        /* defines beginning of signature area */ ;\
    RVMODEL_DATA_BEGIN          /* model specific stuff                */ ;\
sig_begin_canary:                                                         ;\
CANARY                                                                    ;\
rvtest_sig_begin:

// Tests allocate normal signature space here, then define
// the mtrap_sigptr: label to separate normal and trap
// signature space, then allocate trap signature space

/********************* REQUIRED FOR NEW TESTS *************************/
/**** new macro definong start of trap signature area              ****/
/**** defining rvtest_sig_end: label to enabling direct stores     ****/
/**** into the signature area to be properLY relocated             ****/
/**********************************************************************/
#define RVTEST_TSIG_BEGIN                                                ;\
.global rvtest_tsig_begin     /* defines beginning of trap sig area   */ ;\
                                                                         ;\
tsig_begin_canary:                                                       ;\
   CANARY                                                                ;\
   mtrap_sigptr:        .fill 3*(XLEN/32),4,0xdeadbeef                   ;\
   tsig_end_canary:                                                      ;\
   CANARY

/********************* REQUIRED FOR NEW TESTS *************************/
/**** new macro encapsulating RVMODEL_SIG_END (signature area)     ****/
/**** defining rvtest_sig_end: label to enabling direct stores     ****/
/**** into the signature area to be properLY relocated             ****/
/**********************************************************************/
#define RVTEST_SIG_END                                                   ;\
.global rvtest_sig_end  /* defines beginning of trap sig area         */ ;\
                                                                         ;\
#ifdef rvtest_gpr_save                                                   ;\
gpr_save:                                                                ;\
  .fill 32*(XLEN/32),4,0xdeadbeef                                        ;\
#endif                                                                   ;\
                                                                         ;\
sig_end_canary:                                                          ;\
  CANARY                                                                 ;\
  CANARY                /* add one extra word of guardband            */ ;\
rvtest_sig_end:                                                          ;\
RVMODEL_DATA_END        /* model specific stuff */


/***********************************************************************************/
/**** At end of test, this code is entered. It sets a register x2 to 0 and by   ****/
/**** default executes an ecall.  The handler checks if the cause of the trap   ****/	
/**** was ecall, w/ x2=0, and divert a special rtn_fm_mmode handler. That code  ****/
/**** determines the caller's mode, uses it to select it's CODE_BEGIN, and uses ****/
/**** to calculate it offset from Mmode's CODE_BEGIN, adjusts MEPC by that amt  ****/	
/**** to convert it to an Mmode address, restores saved regs, and branches to   ****/
/**** the relocated addr+4, immediately following the ECALL, but now in Mmode   ****/
/**** **NOTE**: this destroys t2 and clears x2 (AKA sp)                                               ****/
/**** **NOTE**: this works from any mode but MUST not be used if                ****/
/****       medeleg[<GOTO_M_OP_cause>]==1 to prevent infinite delegation loops.   ****/
/**** **NOTE: tests that set medeleg[GOTO_M_OP_cause] must replace  GOTO_M_OP   ****/
/****  with an op that causes a different exception cause that isn't delegated. ****/
/***********************************************************************************/

.macro  RVTEST_GOTO_MMODE
.option push
.option norvc
#ifdef  rvtest_mtrap_routine    /**** this can be empty if no Umode ****/
    li   x2, 0                  /* Ecall w/x2=0 is handled specially to rtn here */
// Note that if illegal op trap is delegated , this may infinite loop
// The solution is either for test to disable delegation, or to
// redefine the GOTO_M_OP to be an op that will trap  to mmode

    GOTO_M_OP                   /* ECALL: traps always, but returns immediately to */
                                /* the next op if x2=0, else handles trap normally */

 #endif
.option pop
.endm


/**** This is a helper macro that causes harts to transition from    ****/
/**** M-mode to a lower priv mode at the instruction that follows    ****/
/**** the macro invocation. Legal params are VS,HS,VU,HU,S,U.        ****/
/**** The H,U variations leave V unchanged. This uses t4 only.       ****/
/**** NOTE: this MUST be executed in M-mode. Precede with GOTO_MMODE ****/
/**** FIXME - SATP & VSATP must point to the identity map page table ****/

#define HSmode  0x9
#define HUmode  0x8
#define VUmode  0x4
#define VSmode  0x5
#define Smode   0x1
#define Umode   0x0

.macro RVTEST_GOTO_LOWER_MODE LMODE
.option push
.option norvc

        // first, clear MSTATUS.PP (and .MPV if it will be changed_
        // then set them to the values that represent the lower mode
#if (XLEN==32)
   .if     ((\LMODE\()==VUmode) | (\LMODE\()==VSmode))
     csrsi CSR_MSTATUS, MSTATUS_MPV     /* set V                        */
   .elseif ((\LMODE\()==HUmode) | (\LMODE\()==HSmode))
     csrci CSR_MSTATUS, MSTATUS_MPV     /* clr V                        */
   .endif                               /* lv  V unchged for S or U     */

  LI(    t4, MSTATUS_MPP)
  csrc   CSR_MSTATUS, t4                /* clr PP always                */

  .if    ((\LMODE\()==VSmode) || (\LMODE\()==HSmode) || (\LMODE\()==Smode))
    LI(  t4, MPP_SMODE)                 /* val for Smode                */
    csrs CSR_MSTATUS, t4                /* set in PP                    */
  .endif
        // do the same if XLEN=64
#else                           /* XLEN=64, maybe 128? FIXME for 128    */
  .if ((\LMODE\()==Smode) || (\LMODE\()==Umode)) /* lv V unchanged here  */
    LI(  t4,  MSTATUS_MPP)      /* but always clear PP                  */
  .else
    LI(  t4, (MSTATUS_MPP | MSTATUS_MPV))       /* clr V and P          */
  .endif
  csrc   CSR_MSTATUS, t4        /* clr PP to umode & maybe Vmode        */

  .if (!((\LMODE\()==HUmode) || (\LMODE\()==Umode)))  /* lv pp unchged, v=0 or unchged   */
    .if      (\LMODE\()==VSmode)
      LI(  t4, (MPP_SMODE | MSTATUS_MPV)) /* val for pp & v             */
    .elseif ((\LMODE\()==HSmode) || (\LMODE\()==Smode))
      LI(  t4, (MPP_SMODE))     /* val for pp only                      */
    .else                       /* only VU left; set MPV only           */
      li   t4, 1                /* optimize for single bit              */
      slli t4, t4, 32+MPV_LSB   /* val for v only                       */
    .endif
    csrs CSR_MSTATUS, t4        /* set correct mode and Vbit            */
  .endif
#endif
  csrr   sp, CSR_MSCRATCH       /* ensure sp points to Mmode datae area */
        /**** mstatus MPV and PP now set up to desired mode    ****/
        /**** set MEPC to mret+4; requires relocating the pc   ****/
.if     (\LMODE\() == Vmode)     // get trapsig_ptr & init val up 2 save areas (M<-S<-V)
        LREG    t1, code_bgn_off + 2*sv_area_sz(sp)
.elseif (\LMODE\() == Smode)     // get trapsig_ptr & init val up 1 save areas (M<-S)
        LREG    t1, code_bgn_off + 1*sv_area_sz(sp)
.else                            // get trapsig ptr & init val for this Mmode, (M)
        LREG    t1, code_bgn_off + 0*sv_area_sz(sp)
.endif
        LREG    t4, code_bgn_off(sp)
  sub   t1, t1,t4               /* calc addr delta between this mode (M) and lower mode code */
  addi  t1, t1, 4*WDBYTSZ       /* bias by # ops after auipc continue executing at mret+4 */
  auipc t4, 0
  add   t4, t4, t1              /* calc addr after mret in LMODE's VM   */
  csrrw t4, CSR_MEPC, t4        /* set rtn addr to mret+4 in LMODE's VM */
  mret                          /* transition to desired mode           */
.option pop
.endm                           // end of RVTEST_GOTO_LOWER_MODE

//==============================================================================
// Helper macro to set defaults for undefined interrupt set/clear
// macros. This is used to populated the interrupt vector table
//==============================================================================
//****************************************************************
#define RVTEST_DFLT_INT_HNDLR      j cleanup_epilogs
        //Mmode interrupts
#ifndef RVMODEL_SET_MSW_INT    
        .warning "RVMODEL_SET_MSW_INT    not defined. Executing this will end test. Define an empty macro to suppress this warning"
        #define  RVMODEL_SET_MSW_INT     RVTEST_DFLT_INT_HNDLR   
#endif
#ifndef RVMODEL_CLR_MSW_INT
        .warning "RVMODEL_CLR_MSW_INT    not defined. Executing this will end test. Define an empty macro to suppress this warning" 
        #define  RVMODEL_CLR_MSW_INT     RVTEST_DFLT_INT_HNDLR   
#endif
#ifndef RVMODEL_CLR_MTIMER_INT 
        .warning "RVMODEL_CLR_MTIMER_INT not defined. Executing this will end test. Define an empty macro to suppress this warning" 
        #define  RVMODEL_CLR_MTIMER_INT  RVTEST_DFLT_INT_HNDLR   
#endif
#ifndef RVMODEL_CLR_MEXT_INT
        .warning "RVMODEL_CLR_MEXT_INT   not defined. Executing this will end test. Define an empty macro to suppress this warning"
        #define  RVMODEL_CLR_MEXT_INT     RVTEST_DFLT_INT_HNDLR   
#endif
//Smode interrupts
#ifndef RVMODEL_SET_SSW_INT
        .warning "RVMODEL_SET_SSW_INT    not defined. Executing this will end test. Define an empty macro to suppress this warning"
        #define  RVMODEL_SET_SSW_INT     RVTEST_DFLT_INT_HNDLR
#endif
#ifndef RVMODEL_CLR_SSW_INT
        .warning "RVMODEL_CLR_SSW_INT    not defined. Executing this will end test. Define an empty macro to suppress this warning"
        #define  RVMODEL_CLR_SSW_INT     RVTEST_DFLT_INT_HNDLR
#endif
#ifndef RVMODEL_CLR_STIMER_INT
        .warning "RVMODEL_CLR_STIMER_INT not defined. Executing this will end test. Define an empty macro to suppress this warning"
        #define  RVMODEL_CLR_STIMER_INT  RVTEST_DFLT_INT_HNDLR
#endif
#ifndef RVMODEL_CLR_SEXT_INT
        .warning "RVMODEL_CLR_SEXT_INT   not defined. Executing this will end test. Define an empty macro to suppress this warning"
        #define  RVMODEL_CLR_SEXT_INT  RVTEST_DFLT_INT_HNDLR
#endif
//Vmode interrupts
#ifndef RVMODEL_SET_VSW_INT
        .warning "RVMODEL_SET_VSW_INT    not defined. Executing this will end test. Define an empty macro to suppress this warning"
        #define  RVMODEL_SET_VSW_INT     RVTEST_DFLT_INT_HNDLR
#endif
#ifndef RVMODEL_CLR_VSW_INT
        .warning "RVMODEL_CLR_VSW_INT    not defined. Executing this will end test. Define an empty macro to suppress this warning"
        #define  RVMODEL_CLR_VSW_INT     RVTEST_DFLT_INT_HNDLR
#endif
#ifndef RVMODEL_CLR_VTIMER_INT
        .warning "RVMODEL_CLR_VTIMER_INT not defined. Executing this will end test. Define an empty macro to suppress this warning"
        #define  RVMODEL_CLR_VTIMER_INT  RVTEST_DFLT_INT_HNDLR
#endif
#ifndef RVMODEL_CLR_VEXT_INT
        .warning "RVMODEL_CLR_VEXT_INT   not defined. Executing this will end test. Define an empty macro to suppress this warning"
        #define  RVMODEL_CLR_VEXT_INT   RVTEST_DFLT_INT_HNDLR
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

        XCSR_VRENAME \__MODE__          //retarget XCSR names to this modes CSRs, separate V/S copies

        LA(     t1, \__MODE__\()tramptbl_sv)    // get  ptr to save area (will be stored in xSCRATCH)
//----------------------------------------------------------------------
init_\__MODE__\()scratch:
        csrrw   t3, CSR_XSCRATCH, t1    // swap xscratch with save area ptr (will be used by handler)
        SREG    t3, xscr_save_off(t1)   // save old mscratch in xscratch_save
//----------------------------------------------------------------------
init_\__MODE__\()edeleg:
        li      t2, 0                   // save and clear edeleg so we can exit to Mmode
.if     (\__MODE__\() == V)
        csrrw   t2, CSR_VEDELEG, t2     // special case: VS EDELEG available from Vmode
.elseif (\__MODE__\() == M)
  #ifdef rvtest_strap_routine
        csrrw   t2, CSR_XEDELEG, t2     // this handles M  mode save, but only if Smode exists
  #endif
.else
//FIXME: if N-extension or anything like it is implemented, uncomment the following
//      csrrw   t2, CSR_XEDELEG, t2     // this handles S mode
.endif
        SREG    t2, xedeleg_sv_off(t1)  // now do the save
//----------------------------------------------------------------------
init_\__MODE__\()satp:
.if (\__MODE__\() != M)                 // if S or VS mode **FIXME: fixed offset frm trapreg_sv?
        LA(     t4, rvtest_\__MODE__\()root_pg_tbl)     // rplc xsatp w/ identity-mapped pg table 
        csrrw   t4, CSR_XSATP, t4
        SREG    t4, xsatp_sv_off(t1)
.endif
//----------------------------------------------------------------------
init_\__MODE__\()tvec:
        LA(     t4, \__MODE__\()trampoline)     //this is a code-relative pointer
        csrr    t3, CSR_XTVEC
        SREG    t3, xtvec_sav_off(t1)    // save orig mtvec+mode in tvec_save
        andi    t2, t3, WDBYTMSK         // merge .mode & tramp ptr and store to both XTVEC, tvec_new
        or      t2, t4, t2
        SREG    t2, xtvec_new_off(t1)
        csrw    CSR_XTVEC, t2           // write xtvec with trap_trampoline+mode, so trap will go to the trampoline

        csrr    t5, CSR_XTVEC           // now read new_mtval back & make sure we could write it
#ifndef HANDLER_TESTCODE_ONLY
        beq     t5, t2, rvtest_\__MODE__\()prolog_done // if mtvec==trap_trampoline, mtvec is writable, continue
#endif
        csrw    CSR_XTVEC, t3           // xTVEC not completely writable, restore old value & exit if uninitialized
        beqz    t3, abort\__MODE__\()test
        SREG    t3, xtvec_new_off(t1)   // else update tvect_new with orig mtvec

  /*****************************************************************/
  /**** fixed mtvec, can't move it so move trampoline instead   ****/
  /**** t1=tramp sv, t2=orig tvec, t3=sv end, t4=tramp          ****/
  /*****************************************************************/

init_\__MODE__\()tramp: /**** copy trampoline at mtvec tgt; t4->t2->t1  t3=end of save ****/
        andi    t2, t3, ~WDBYTMSK               // calc bgn of orig tramp area by clring mode bits
        addi    t3, t2, tramp_sz                // calc end of orig tramp area (+4)
        addi    t1, t1, tramp_sv_off            // calc bgn of tramp save area
//----------------------------------------------------------------------
        overwt_tt_\__MODE__\()loop:             // now build new tramp table w/ local offsets
        lw      t6, 0(t2)                       //  move original mtvec target to save area
        sw      t6, 0(t1)
        lw      t5, 0(t4)                       //  move traphandler trampoline into orig mtvec target
        sw      t5, 0(t2)
        lw      t6, 0(t2)                       // rd it back to make sure it was written
        bne     t6, t5, endcopy_\__MODE__\()tramp // table isn't fully writable, restore and give up
#ifdef HANDLER_TESTCODE_ONLY
        csrr    t5, CSR_XSCRATCH                // load trapreg_sv from scratch
        addi    t5, t5,256                      // calculate some offset into the save area
        bgt     t5, t1, endcopy_\__MODE__\()tramp // and pretend if couldnt be written
#endif
        addi    t2, t2, WDBYTSZ                    // next tvec  inst. index
        addi    t1, t1, WDBYTSZ                    // next save  inst. index
        addi    t4, t4, WDBYTSZ                    // next tramp inst. index
        bne     t3, t2, overwt_tt_\__MODE__\()loop      // haven't reached end of save area,  loop
//----------------------------------------------------------------------
  endcopy_\__MODE__\()tramp:                    // vector table not writeable, restore
        RVMODEL_FENCEI                          // By default it is defined as nop. See the definition
        csrr    t1, CSR_XSCRATCH                // reload trapreg_sv from scratch
        sw      t2, trampend_addr(t1)           // save copy progress
        beq     t3,t2, rvtest_\__MODE__\()prolog_done //full loop, don't exit
abort\__MODE__\()test:
        LA(     t6, exit_\__MODE__\()cleanup)   // trampoline rplc failure **FIXME:  precalc& put into savearea?
        jalr    x0, t6                          // this branch may be too far away, so longjmp

rvtest_\__MODE__\()prolog_done:

.option pop
.endm                                           //end of PROLOG
/*******************************************************************************/
/***************                 end of prolog macro                ************/
/*******************************************************************************/

.macro RVTEST_TRAP_HANDLER __MODE__
.option push
.option rvc     // temporarily allow compress to allow c.nop alignment
.align MTVEC_ALIGN
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

  XCSR_RENAME \__MODE__                 //retarget XCSR names to this modes CSRs

.global \__MODE__\()trampoline                  // define the label and make it available
.global common_\__MODE__\()entry
.option push
.option norvc

\__MODE__\()trampoline: //****GLOBAL:*****
   .set  value, 0
  .rept NUM_SPECD_INTCAUSES                     // located at each possible int vectors
        j    trap_\__MODE__\()handler+ value    // offset < +/- 1MB
        .set value, value + 12                  // length of xhandler trampoline spreader code
  .endr

  .rept XLEN-NUM_SPECD_INTCAUSES                // fill at each impossible entry
        j rvtest_\__MODE__\()endtest            // end test if this happens
  .endr

  /*********************************************************************/
  /**** this is spreader stub array; it saves enough info (sp &     ****/
  /**** vec-offset) to enable branch to common routine to save rest ****/
  /*********************************************************************/
  /**** !!CSR_xSCRATCH is preloaded w/ xtrapreg_sv in init_xscratch:****/

 trap_\__MODE__\()handler:                      // on exit sp swapped w/ save ptr, t6 is vector addr
  .rept NUM_SPECD_INTCAUSES
        csrrw   sp, CSR_XSCRATCH, sp            // save sp, replace w/trapreg_sv regtmp save ptr
        SREG    t6, trap_sv_off+6*REGWIDTH(sp)  // save t6 in temp save area offset 6
        jal     t6, common_\__MODE__\()handler  // jmp to common code, saving vector in t6
  .endr

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
  /****        16: tval2/x * <--------------  x ---------------->   ****/
  /****        20: tinst/x * <--------------  x ---------------->   ****/
  /****  *  only loaded for Mmode traps when hypervisor implemented ****/
  /*********************************************************************/
  /*   in general, CSRs loaded in t2, addresses into t3                */

        //If we can distinguish between HS and S mode, we can share S and V code.
        //except for prolog code which needs to initialize CSRs, and the save area
        //To do this, we need to read one of the CSRs (e.g. xSCRATCH) and compare
        //it to either Strapreg_sv or Vtrapreg_sv to determine which it is.

common_\__MODE__\()handler:                     // enter with vector addr in t6 (orig t6 is at offset 6*REGWIDTH)
        SREG    t5, trap_sv_off+5*REGWIDTH(sp)  // x30  save remaining regs, starting with t5
        csrrw   t5, CSR_XSCRATCH, sp            // restore ptr to reg sv area, and get old sp
        SREG    t5, trap_sv_off+7*REGWIDTH(sp)  // save old sp
        auipc   t5, 0
        addi    t5, t5, 3*WDBYTSZ                  // quick calculation of common Xentry: label (3ops past auipc)
        jr      t5                              // needed if trampoline gets moved elsewhere, else it's effectively a noop

common_\__MODE__\()entry:
        SREG    t4, trap_sv_off+4*REGWIDTH(sp)  //x29
        SREG    t3, trap_sv_off+3*REGWIDTH(sp)  //x28
        SREG    t2, trap_sv_off+2*REGWIDTH(sp)  //x7
        SREG    t1, trap_sv_off+1*REGWIDTH(sp)  //x6  save other temporaries

//spcl case handling for ECALL in GOTO_MMODE mode,)  ****tests can't use ECALL t2=0****
spcl_\__MODE__\()2mmode_test:
        csrr    t5, CSR_XCAUSE
        addi    t4, t5, -8                      // is cause 8..11? Mmode should avoid ECALL 0
        andi    t4, t4, -4                      // NOTE: cause 10 is RSVD.  Sail will diverge, but buggy anyway  
        bnez    t4, \__MODE__\()trapsig_ptr_upd // no, not in special mode, just continue
	LREG    t2, trap_sv_off+7*REGWIDTH(sp)  // get test x2 (which is sp, which has been saved in the trap_sv area
        beqz    t2, rtn2mmode                   // spcl code 0 in t2 means spcl ECALL goto_mmode, just rtn after ECALL
//------pre-update trap_sig pointer so handlers can themselves trap-----
\__MODE__\()trapsig_ptr_upd:                    // calculate entry size based on int vs. excpt, int type, and h mode
        li      t2, 4*REGWIDTH                  // standard entry length
        bgez    t5, \__MODE__\()xcpt_sig_sv     // Keep std length if cause is an exception for now (MSB==0)
\__MODE__\()int_sig_sv:
        slli    t3, t5, 1                       // remove MSB, cause<<1
        addi    t3, t3, -(IRQ_M_TIMER)<<1       // is cause (w/o MSB) an extint or larger? ( (cause<<1) > (8<<1) )?
        bgez    t3, \__MODE__\()trap_sig_sv     // yes, keep std length
        li      t2, 3*REGWIDTH                  // no,  its a timer or swint, overrride preinc to 3*regsz
        j       \__MODE__\()trap_sig_sv

 /**********************************************************************/
  /**** FIXME: could this simply instantiate RVMODEL_HALT instead of ****/
  /**** branching to it?  might need to instantiate GOTO_MMODE here  ****/
  /**** to take care of  VM issues that RVMODEL_HALT can't deal with ****/
  /**********************************************************************/

rvtest_\__MODE__\()endtest:                     // target may be too far away, so longjmp       
        LA(     t1, rvtest_\__MODE__\()end)     // FIXME: must be identity mapped if its a VA
        jalr    x0, t1

\__MODE__\()xcpt_sig_sv:
.if (\__MODE__\() == M)                         // exception case, don't adjust if hypervisor mode disabled
        csrr    t1, CSR_MISA
        slli    t1, t1, XLEN-8                  // shift H bit into msb
        bgez    t1, \__MODE__\()trap_sig_sv     // no hypervisor mode, keep std width
        li      t2, 6*REGWIDTH                  // Hmode implemented &  Mmode trap, override prein to be 6*regsz
.endif

\__MODE__\()trap_sig_sv:
        // This replaces an LA(rvtest_trap_sig) calculating initial_Xtrap_sigptr +
        // + (Mtrap_sigptr-initial_Mtrap-sigptr) 
        // The delta between Mmode_sigptr and Xmode_sigptr are constants
        // Xtrap_sigptr (current priv mode) are in the save area ponted to by sp
        // ****FIXME - this breaks if the signature area cross a page boundary and the mapping isn't contiguous

        .set sv_area_off, (-0*sv_area_sz)       // get trapsig ptr val offset  for Mmode, (M)
.if     (\__MODE__\() == S)
        .set sv_area_off, (-1*sv_area_sz)       // get trapsig_ptr val  up 1 save areas   (M<-S)
.elseif (\__MODE__\() == V)
        .set sv_area_off, (-2*sv_area_sz)       // get trapsig ptr val  up 2 save areas,  (M<-S<-V))
.endif
//------this should be atomic-------------------------------------
        LREG    t1, sv_area_off+trapsig_ptr_off(sp)
        add     t4, t1, t2
        SREG    t4, sv_area_off+trapsig_ptr_off(sp)

//------end atomic------------------------------------------------

        LREG    t3, xtvec_new_off(sp)           // get pointer to actual tramp table
//----------------------------------------------------------------

  /*************************************************************************/
  /****   This first entry has this format.                             ****/
  /****   The #entries is useful for parsing and is really #bytes/entry ****/
  /**** +---------------+-----------+----------+------+                 ****/
  /**** | XLEN-1     16 | 15      6 | 5      2 | 1  0 |                 ****/
  /**** +---------------+-----------+----------+------+                 ****/
  /**** |   zeroes      | vector    | #entries | mode |                 ****/
  /**** +---------------+-----------+----------+------+                 ****/
  /*************************************************************************/

sv_\__MODE__\()vect:                            // **FIXME?: breaks if tramp crosses pg && MMU enabled
        sub     t6, t6, t3                      // cvt spreader-addr to vector offset fm top of tramptable 
        slli    t6, t6, 4                       // make room for 4 bits; vector is 10b max  **FIXME: broken for SV64!)
        or      t6, t6, t2                      // insert entry size into bits 5:2
        addi    t6, t6, \__MODE__\()MODE_SIG    // insert mode# into 1:0
        SREG    t6, 0*REGWIDTH(t1)              // save 1st sig value, (vec-offset, entrysz, trapmode)
//----------------------------------------------------------------
sv_\__MODE__\()cause:
        SREG    t5, 1*REGWIDTH(t1)              // save 2nd sig value, (mcause)
//----------------------------------------------------------------
        bltz    t5, common_\__MODE__\()int_handler // split off if this is an interrupt

  /*******************************************************************************/
  /**** This is exception specific code, storing relative mepc & tval sigs    ****/
  /**** The mepc sig is relocated by data or code start, depending on whether ****/
  /**** on whether it's in the data area or not, & restored bumped by 2..6B   ****/
  /**** depending op alignment so trapped op isn't re-executed                ****/
  /*******************************************************************************/

common_\__MODE__\()excpt_handler:

  //********************************************************************************
  // calculate the delta between trap mode and handler mode sv areas & add to sp
  // This code calculates this table: (X conditions not possible & are ignored )
  // +-----------+--------+--------+-----+
  // |Hndlr Mode | MPP==3 | xPV==0 | ==1 |
  // +-----------+--------+--------+-----+
  // |    M      | 0 *    | 1 *    | 2 * | sv_area_sz (prev priv can be M, S, or V)
  // | [H]S, U   | X      | 0 *    | 1 * | sv_area_sz (prev priv S or V if this is S/U)
  // |   VS,VU   | X      | X      | 0 * | sv_area_sz (prev priv is   V if this is V)  
  // +-----------+-----------------+-----+
  // lvs result in t4 to be used during relocation, (so doesn't touch sp)
  // can use t3, t6 because relocation will overwrite them
  //********************************************************************************
        mv      t4, sp                  /* default reloc offset = 0*sv_area_sz  */

  // handle row 3:if Vmode handler, this must be horiz trap, lv default value
.if (\__MODE__\() != V)                 /* skip the rest if in VS handler       */

 // handle row1,MPP==11; if this is  Mmode; can't happen in other modes
  .if (\__MODE__\() == M)               /* vert trap into Mmode, min off= *1    */
        csrr    t6, CSR_MSTATUS
        slli    t3, t6, XLEN-MPP_LSB-2  /* move mpp into msb                    */
        bltz    t3, vmem_adj_\__MODE__\()epc /* mpp!=0, lv dflt value           */
 // handle row1,MPP!=11; check MPV in either of 2 CSRs and positions
        addi    t4, t4, sv_area_sz      /* upd offset to be at least sv_area_sz */
    #if (XLEN==32)                      /* now get Vbit into correct position   */
        csrr    t6, CSR_MSTATUSH        /* get half of status with V-bit        */
    #else
        srli    t6, t6, 32		/* reposition mstatus for RV64          */
    #endif
        slli    t6, t6, WDSZ-MPV_LSB-1  /* but V into MSB ****FIXME if RV128?****/ 
        bgez    t6, vmem_adj_\__MODE__\()epc /* V==0, ~virtualized, use *0,1 off*/
        addi    t4, t4, sv_area_sz      /* upd offset to be 1,2*sv_area_sz      */
  .else                                 /* S-or-HSmode, now get spv             */
	
 // now handle row2, [H]Smode; assumes misa.H is set is hypervisor implemented
    #ifdef rvtest_vtrap_routine         /******FIXME: needs bkdoor to misa.H ****/
	csrr    t6, CSR_HSTATUS         /* HS: hstatus exists only if H-ext     */
        slli    t6, t6, WDSZ-MPV_LSB-1  /* but V into MSB ****FIXME if RV128?****/ 
        bgez    t6, vmem_adj_\__MODE__\()epc /* V==0, ~virtualized, use *0,1 off*/
        addi    t4, t4, sv_area_sz      /* upd offset to be 1,2*sv_area_sz      */
    #endif
  .endif
.endif  
  //********************************************************************************

vmem_adj_\__MODE__\()epc:          /* t4 now points to sv area of trapping mode */
        csrr    t2, CSR_XEPC

        LREG    t3, vmem_bgn_off(t4)            // see if epc is in the vmem area
        LREG    t6, vmem_seg_siz(t4)
        add     t6, t6, t3                      // construct vmem seg end
        bgeu    t2, t6, code_adj_\__MODE__\()epc// epc > rvtest_vmem_end, try data adj
        bgeu    t2, t3,      adj_\__MODE__\()epc// epc >=rvtest_vmem_begin, adj and save
        
code_adj_\__MODE__\()epc:
        LREG    t3, code_bgn_off(t4)            // see if epc is in the code area
        LREG    t6, code_seg_siz(t4)
        add     t6, t6, t3                      // construct code seg end
        bgeu    t2, t6, data_adj_\__MODE__\()epc// epc > rvtest_code_end, try data adj
        bgeu    t2, t3,      adj_\__MODE__\()epc// epc >=rvtest_code_begin, adj and save

data_adj_\__MODE__\()epc:
        LREG    t3, data_bgn_off(t4)            // see if epc is in the data area
        LREG    t6, data_seg_siz(t4)
        add     t6, t6, t3                      // construct data seg end
        bgeu    t2, t6, cleanup_epilogs         // mepc > rvtest_code_end,  (outside data seg), abort
        bltu    t2, t3, cleanup_epilogs         // mepc < rvtest_code_begin (outside data seg), abort

adj_\__MODE__\()epc:
        sub     t3, t2, t3                      // Offset adjustment

sv_\__MODE__\()epc:
        SREG    t3, 2*REGWIDTH(t1)      // save 3rd sig value, (rel mepc) into trap sig area

adj_\__MODE__\()epc_rtn:                // adj mepc so there is at least 4B of padding after op
        andi    t6, t2, ~WDBYTMSK       // adjust mepc to prev 4B alignment (if 2B aligned)
        addi    t6, t6,  2*WDBYTSZ         // adjust mepc so it skips past op, has padding & 4B aligned
        csrw    CSR_XEPC, t6            // restore adjusted value, w/ 2,4 or 6B of padding

  /****WARNING needs updating when insts>32b are ratified, only 4 or 6B of padding;
        for 64b insts,  2B or 4B of padding   ****/

  /******************************************************************************/
  /* Relocate mtval if it’s an addr (by sig, data or code regions) else by zero */
  /* error if exception address isn't inside code, data or signature segments   */
  /* Enter with rvtest_code_begin (which is start of actual test) in t3         */
  /* FUTURE FIXME: this may need to be updated to handle 48 or 64b opcodes      */
  /* This uses offset sp in t4 from epc relocation                              */
  /******************************************************************************/

        csrr    t2, CSR_XTVAL

chk_\__MODE__\()tval:
        andi    t5, t5, EXCPT_CAUSE_MSK // ensures shift amt will be within range
        LI(     t3, SET_REL_TVAL_MSK)   // now check if code or data (or sig) region adjustment
        srl     t3, t3, t5              // put mcause bit# into LSB
        slli    t3, t3, XLEN-1          // put mcause bit# into MSB
        bge     t3, x0, sv_\__MODE__\()tval     // if MSB=0, no adj, sv to ensure tval was cleared

vmem_adj_\__MODE__\()tval:         /* t4 still points to sv area of trapping mode */
        LREG    t3, vmem_bgn_off(t4)            // fetch sig_begin addr
        LREG    t6, vmem_seg_siz(t4)
        add     t6, t6, t3                      // construct vmem seg end
        bgeu    t2, t6,  sig_adj_\__MODE__\()tval// tval > rvtest_sig_end, chk code seg
        bgeu    t2, t3,      adj_\__MODE__\()tval// tval >=rvtest_sig_begin, adj & save

sig_adj_\__MODE__\()tval:
        LREG    t3, sig_bgn_off(t4)            // fetch sig_begin addr
        LREG    t6, sig_seg_siz(t4)
        add     t6, t6, t3                      // construct sig seg end
        bgeu    t2, t6, code_adj_\__MODE__\()tval// tval > rvtest_sig_end, chk code seg
        bgeu    t2, t3,      adj_\__MODE__\()tval// tval >=rvtest_sig_begin, adj & save

code_adj_\__MODE__\()tval:
        LREG    t3, code_bgn_off(t4)            // fetch code_begin addr
        LREG    t6, code_seg_siz(t4)
        add     t6, t6, t3                      // construct code seg end
        bgeu    t2, t6, data_adj_\__MODE__\()tval// tval > rvtest_code_end, chk data seg
        bgeu    t2, t3,      adj_\__MODE__\()tval// tval >=rvtest_code_begin, adj & save

data_adj_\__MODE__\()tval:
        LREG    t3, data_bgn_off(t4)            // fetch data_begin addr
        LREG    t6, data_seg_siz(t4)
        add     t6, t6, t3                      // construct data seg end
        bgeu    t2, t6, cleanup_epilogs         // tval > rvtest_data_end,  (outside data seg), abort
        bltu    t2, t3, cleanup_epilogs         // tval < rvtest_data_begin (outside data seg), abort

adj_\__MODE__\()tval:
        sub     t3, t2, t3              // perform mtval adjust by either code, data, or sig position in t3

sv_\__MODE__\()tval:
        SREG    t3, 3*REGWIDTH(t1)      // save 4th sig value, (rel tval)

skp_\__MODE__\()tval:

  .if (\__MODE__\() == M)
    .ifdef  __H_EXT__
        csrr    t2, CSR_MTVAL2          // **** FIXME: does this need reloc also? Its a guest phys addr
        SREG    t2, 4*REGWIDTH(t1)      // store 5th sig value, only if mmode handler and VS mode exists
        csrr    t2, CSR_MTINST
        SREG    t2, 5*REGWIDTH(t1)      // store 6th sig value, only if mmode handler and VS mode exists
    .endif
  .endif

chk_\__MODE__\()trapsig_overrun:        // sv_area_off is defined above at Xtrap_sig_sv:
 //This is the same code used at xtrap_sig_sv to get the shared copy of trap signature pointer
        LREG    t4, sv_area_off+trapsig_ptr_off(sp)
        LREG    t2, sv_area_off+sig_bgn_off(sp)
        LREG    t1, sv_area_off+sig_seg_siz(sp)

// now see if the pointer has overrun sig_end
        add     t1, t1, t2                      // construct segment end address
        bgtu    t4, t1, cleanup_epilogs         // abort test if pre-incremented value overruns

  /**** vector to exception special handling routines ****/
        li      t2, int_hndlr_tblsz             // offset of exception dispatch table base
        j       spcl_\__MODE__\()handler        // jump to shared int/excpt spcl handling dispatcher

 /**** common return code for both interrupts and exceptions ****/
resto_\__MODE__\()rtn:                  // restore and return
        LREG    t1, trap_sv_off+1*REGWIDTH(sp)
        LREG    t2, trap_sv_off+2*REGWIDTH(sp)
        LREG    t3, trap_sv_off+3*REGWIDTH(sp)
        LREG    t4, trap_sv_off+4*REGWIDTH(sp)
        LREG    t5, trap_sv_off+5*REGWIDTH(sp)
        LREG    t6, trap_sv_off+6*REGWIDTH(sp)
        LREG    sp, trap_sv_off+7*REGWIDTH(sp)      // restore temporaries

        \__MODE__\()RET                 // return to test, after padding adjustment (macro to handle case)

 /***************************************************/
 /**** This is the interrupt specific code. It   ****/
 /**** clears the int and saves int-specific CSRS****/
 /***************************************************/
common_\__MODE__\()int_handler:         // t1 has sig ptr, t5 has mcause, sp has save area
        li      t3, 1
 //**FIXME** - make sure this is kept up-to-date with fast int extension and others
        andi    t2, t5, INT_CAUSE_MSK   // clr INT & unarched arched bits (**NOTE expand if future extns use them)
        sll     t3, t3, t2              // create mask 1<<xcause **NOTE**: that MSB is ignored in shift amt
        csrrc   t4, CSR_XIE, t3         // read, then attempt to clear int enable bit??
        csrrc   t4, CSR_XIP, t3         // read, then attempt to clear int pend bit
sv_\__MODE__\()ip:                      // note: clear has no effect on MxIP
        SREG    t4, 2*REGWIDTH(t1)      // save 3rd sig value, (xip)

        li      t2, 0                   // index of interrupt dispatch table base

/**************************************************************/
/**** spcl int/excp dispatcher. t5 has mcause, t2          ****/
/**** holds int table (0) or excpt tbl (int_tbl_sz) offset ****/
/**** this loads an entry @ table_base+table_off+mcause<<8 ****/
/**** if entry=0, it should never be taken, error return   ****/
/**** if entry is odd, it has cause<<1,  skip disptaching  ****/
/**** otherwise if even & >0, it is the handler address    ****/
/**** There is an optional check that cause==mcause        ****/
/**************************************************************/

spcl_\__MODE__\()handler:               // case table branch to special handler code, depending on mcause
        auipc   t3, 0                   // shortcut for LA(clrint_\__MODE__\()tbl) (might be 4 too large)
        addi    t3, t3, 15*4            //shortcut to avoid LA clrint_xtbl - this is might be 4 too large
        add     t3, t3, t2              // offset into the correct int/excpt dispatch table
        slli    t2, t5, 3               // index into 8b aligned dispatch entry and jump through it
        add     t3, t3, t2
	andi	t3, t3, -8		// make sure this is dblwd aligned, correct if it is 4 too large
        LREG    t3, 0(t3)
spcl_\__MODE__\()dispatch_hndling:        
        beqz    t3, abort_tests         // if address is 0, this is an error, exit test
        slli    t2, t3, XLEN-1          // look at LSB and dispatch if even
        bge     t2, x0, spcl_\__MODE__\()dispatch
        srli    t3, t3,1                //odd entry>0, remove LSB, normalizing to cause range
        beq     t5, t3, resto_\__MODE__\()rtn // case range matches, not an error, just noop
        j       abort_tests             //FIXME: this needs to report an error somehow
        
spcl_\__MODE__\()dispatch:
        jr      t3                      // not a default, jump to handler

/**** this is the table of interrupt clearing routine pointers, which could include special handlers ****/
/**** They default to RVMODEL macros above, which are model supplied, then jump to rtn code          ****/
/**** Note that the external interrupt routines are expected to return with an interrupt ID in t3    ****/
	.align 3			//make sure this is a dblwd boundary
clrint_\__MODE__\()tbl:                 //this code should only touch t2..t6
#ifdef rvtest_vtrap_routine  //  M/S/V/U
        .dword  0                       // int cause  0 is reserved, error
        .dword  \__MODE__\()clr_Ssw_int         // int cause  1  Smode SW int
        .dword  \__MODE__\()clr_Vsw_int         // int cause  2  Vmode SW int
        .dword  \__MODE__\()clr_Msw_int         // int cause  3  Mmode SW int
//****************************************************************
        .dword  0                       // int cause  4 is reserved, error
        .dword  \__MODE__\()clr_Stmr_int                // int cause  5  Smode Tmr int
        .dword  \__MODE__\()clr_Vtmr_int                // int cause  6  Vmode Tmr int
        .dword  \__MODE__\()clr_Mtmr_int                // int cause  7  Mmode Tmr int
//****************************************************************
        .dword  0                      // int cause  8 is reserved, error
        .dword  \__MODE__\()clr_Sext_int                // int cause  9  Smode Ext int
        .dword  \__MODE__\()clr_Vext_int                // int cause  A  Vmode Ext int
        .dword  \__MODE__\()clr_Mext_int                // int cause  B  Mmode Ext int
//****************************************************************
#elseif rvtest_dtrap_routine  // M/S/U only
        .dword  0                       // int cause  0 is reserved, error
        .dword  \__MODE__\()clr_Ssw_int         // int cause  1  Smode SW int
        .dword  1                       // int cause  2  no Vmode
        .dword  \__MODE__\()clr_Msw_int         // int cause  3  Mmode SW int
//****************************************************************
        .dword  0                       // int cause  4 is reserved, error
        .dword  \__MODE__\()clr_Stmr_int                // int cause  5  Smode Tmr int
        .dword  1                       // int cause  6 no vmode
        .dword  \__MODE__\()clr_Mtmr_int                // int cause  7  Mmode Tmr int
//****************************************************************
        .dword  0                                       // int cause  8 is reserved, error
        .dword  \__MODE__\()clr_Sext_int                // int cause  9  Smode Ext int
        .dword  1                       // int cause  A no vmode
        .dword  \__MODE__\()clr_Mext_int                // int cause  B  Mmode Ext int
//****************************************************************
#else  // M(/U)mode only
        .dword  0                       // int cause  0 is reserved, error
        .dword  1                       // int cause  1  no Smode
        .dword  1                       // int cause  2  no Vmode
        .dword  \__MODE__\()clr_Msw_int         // int cause  3  Mmode SW int
//****************************************************************
        .dword  0                       // int cause  4 is reserved, error
        .dword  1                       // int cause  5 no Smode
        .dword  1                       // int cause  6 no vmode
        .dword  \__MODE__\()clr_Mtmr_int                // int cause  7  Mmode Tmr int
//****************************************************************
        .dword  0                       // int cause  8 is reserved, error
        .dword  1                       // int cause  9 no Smode
        .dword  1                       // int cause  A no vmode
        .dword  \__MODE__\()clr_Mext_int                // int cause  B  Mmode Ext int
//****************************************************************
#endif
 .rept NUM_SPECD_INTCAUSES-0xC
        .dword  1                       // int cause c..NUM_SPECD_INTCAUSES is reserved, just return
 .endr
 .rept XLEN-NUM_SPECD_INTCAUSES
        .dword  0                       // impossible, quit test by jumping to  epilogs
 .endr
//****************************************************************

/**** this is the table of exception handling routine pointers, which ****/
/****  could include special handlers. They default to the rtn code   ****/
excpt_\__MODE__\()hndlr_tbl:            // handler code should only touch t2..t6 ****<<--must be speced!****
 .set causeidx, 0
 .rept NUM_SPECD_EXCPTCAUSES
        .dword  causeidx*2+1            // default, marked by @*cause+2just return
        .set    causeidx, causeidx+1
 .endr
 .rept XLEN-NUM_SPECD_EXCPTCAUSES
        .dword  0                       // impossible, quit test by jumping to epilogs
 .endr

/**** These are invocations of the model supplied interrupt clearing macros ****/
/**** Note there is a copy per mode, though they could all be the same code ****/
/****   !!!! This must be speced as to which registers they may touch !!!!  ****/
/**** !!! Note: the ext interrupt clearing macros must leave intID in t3 !!!****/
// **FIXME** : the spec needs to be updated with the per/mode versions, not just one
// **FIXME**: move these outside the handler so it can copied per mode using INSTANTIATE_MODE_MACRO

//------------- MMode----------------
\__MODE__\()clr_Msw_int:                // int 3 default to just return if not defined
        RVMODEL_CLR_MSW_INT
        j       resto_\__MODE__\()rtn

\__MODE__\()clr_Mtmr_int:               // int 7 default to just return
        RVMODEL_CLR_MTIMER_INT
        j       resto_\__MODE__\()rtn

\__MODE__\()clr_Mext_int:               // int11 default to just return after saving IntID in t3
        RVMODEL_CLR_MEXT_INT
        SREG    t3, 3*REGWIDTH(t1)      // save 4rd sig value, (intID)
        j       resto_\__MODE__\()rtn

//------------- SMode----------------
\__MODE__\()clr_Ssw_int:                // int 1 default to just return if not defined
        RVMODEL_CLR_SSW_INT
        j       resto_\__MODE__\()rtn

\__MODE__\()clr_Stmr_int:               // int 5 default to just return
        RVMODEL_CLR_STIMER_INT
        j       resto_\__MODE__\()rtn

\__MODE__\()clr_Sext_int:               // int 9 default to just return after saving IntID in t3
        RVMODEL_CLR_SEXT_INT
        SREG    t3, 3*REGWIDTH(t1)      // save 4rd sig value, (intID)
        j       resto_\__MODE__\()rtn

//------------- VSode----------------
\__MODE__\()clr_Vsw_int:                // int 2 default to just return if not defined
        RVMODEL_CLR_VSW_INT
        j       resto_\__MODE__\()rtn

\__MODE__\()clr_Vtmr_int:               // int 6 default to just return
        RVMODEL_CLR_VTIMER_INT
        j       resto_\__MODE__\()rtn

\__MODE__\()clr_Vext_int:               // int 8 default to just return after saving IntID in t3
        RVMODEL_CLR_VEXT_INT
        SREG    t3, 3*REGWIDTH(t1)      // save 4rd sig value, (intID)
        j       resto_\__MODE__\()rtn

.if     (\__MODE__\() == M)

/***************  Spcl handler for returning from GOTO_MMODE.            ********/
/***************  Only gets executed if GOTO_MMODE not called from Mmode ********/
/***************  Executed in M-mode. Enter w/ t1=ptr to Mregsave, t2=0  ********/
/***************  NOTE: Ecall must NOT delegate when t2=0 or this fails  ********/

rtn2mmode:
        addi    t4,t5, -CAUSE_MACHINE_ECALL
        beqz    t4, rtn_fm_mmode        /* shortcut if called from Mmode        */
#if (XLEN==32)
        csrr    t2, CSR_MSTATUSH        /* find out originating mode if  RV32   */
#else
        csrr    t2, CSR_MSTATUS         /* find out originating mode if RV64/128*/
#endif
        slli    t2, t2, WDSZ-MPV_LSB-1  /* but V into MSB  ****FIXME if RV128   */ 
        LREG    t6, code_bgn_off+1*sv_area_sz(sp)    /* get U/S mode code begin */
        bgez    t2, from_u_s            /* V==0, not virtualized, *1 offset     */
from_v:
        LREG    t6, code_bgn_off+2*sv_area_sz(sp)/* get VU/VS   mode code begin */
from_u_s:                               /* get u/s modes CODE_BEGIN             */
        LREG    t4, code_bgn_off+0*sv_area_sz(sp)    /* get M   mode code begin */
        sub     t4, t4, t6              /* calc relocation amount               */
rtn_fm_mmode:
        csrr    t2, CSR_MEPC            /* get return address in orig mode's VM */
        add     t2, t2, t4              /* calc rtn_addr in Mmode VM            */

        LREG    t1, trap_sv_off+1*REGWIDTH(sp)
 //     LREG    t2, trap_sv_off+2*REGWIDTH(sp) /*this holds the return address  */
        LREG    t3, trap_sv_off+3*REGWIDTH(sp)
        LREG    t4, trap_sv_off+4*REGWIDTH(sp)
        LREG    t5, trap_sv_off+5*REGWIDTH(sp)
        LREG    t6, trap_sv_off+6*REGWIDTH(sp)
        LREG    sp, trap_sv_off+7*REGWIDTH(sp)      // restore temporaries
        jr      4(t2)                   /* return after GOTO_MMODE in M-mode    */
.endif
.option pop
.endm                                   // end of HANDLER

/*******************************************************************************/
/***************                 end of handler macro               ************/
/*******************************************************************************/
/*******************************************************************************/
/**************** cleanup code; restore xtvec or where it points to ************/
/********* Assumption: in M-mode, because GOTO_MMODE always ends tests *********/
/********* Assumption: XSCRATCH pnts to save area for appropriate mode *********/
/*******************************************************************************/

.macro RVTEST_TRAP_EPILOG __MODE__
.option push
.option norvc

        XCSR_VRENAME \__MODE__                  // retarget XCSR names to this modes CSRs, no V/S aiasing

exit_\__MODE__\()cleanup:
        csrr    t1, mscratch                // pointer to save area
        .if(\__MODE__\()==S)
                addi t1, t1, 1*sv_area_sz
        .elseif(\__MODE__\()==V)
                addi t1, t1, 2*sv_area_sz
        .endif
resto_\__MODE__\()edeleg:
        LREG    t2, xedeleg_sv_off(t1)          // get saved xedeleg at offset -32

.if     (\__MODE__\() == V)
        csrw    CSR_VEDELEG, t2 //special case: VS EDELEG available from Vmode
.elseif (\__MODE__\() == M)
#ifdef rvtest_strap_routine
        csrw    CSR_XEDELEG, t2 //this handles M  mode restore, but only if Smode exists
#endif
.else
//FIXME: if N-extension or anything like it is implemented, uncomment the following
//      csrw    CSR_XEDELEG, t2 //this handles S  mode restore
.endif
.if (\__MODE__\() != M)
resto_\__MODE__\()satp:
        LREG    t2, xsatp_sv_off(t1)            // restore saved xsatp
        csrw    CSR_XSATP,  t2
.endif
resto_\__MODE__\()scratch:
        LREG    t5, xscr_save_off(t1)           // restore saved xscratch
        csrw    CSR_XSCRATCH, t5
resto_\__MODE__\()xtvec:
        LREG    t4, xtvec_sav_off(t1)           // restore  orig xtvec addr & load current one
        csrrw   t2, CSR_XTVEC, t4
        andi    t4, t4, ~WDBYTMSK               // remove mode, so both word aligned 
        andi    t2, t2, ~WDBYTMSK
        bne     t4, t2, 1f                      // if saved!=curr mtvec, done, else need to restore tramp

resto_\__MODE__\()tramp:                        // t2 now contains where to restore to
        addi    t4, t1, tramp_sv_off            // t4 now contains where to restore from
        LREG    t3, trampend_addr(t1)           // t3 tracks how much to restore

resto_\__MODE__\()loop:
        lw      t6, 0(t4)                       // read saved tramp entry
        sw      t6, 0(t2)                       // restore original tramp entry
        addi    t2, t2, WDBYTSZ                 // next tgt  index
        addi    t4, t4, WDBYTSZ                 // next save index
        blt     t2, t3, resto_\__MODE__\()loop  // didn't get to end, continue
  1:
.global rvtest_\__MODE__\()end
rvtest_\__MODE__\()end:

#ifdef HANDLER_TESTCODE_ONLY
        //**FIXME**: add conditional code to compare original trampoline with
        // restored trampoline and store the deltas in the trap signature region
        // as an added check? must work for each mode
#endif
 .option pop
 .endm                                          //end of EPILOG
/*******************************************************************************/
/**** end epilog cleanup code; should fall from V->S->M into RVMODEL_HALT ******/
/*******************************************************************************/

/*******************************************************************************/
/**** This macro defines per/mode save areas for mmode for each mode        ****/
/**** note that it is the code area, not the data area, and                 ****/
/**** must be mulitple of 8B, so multiple instantiations stay aligned       ****/
/**** This is preceded by the current signature pointer, (@Mtrpreg_sv -64?  ****/
/*******************************************************************************/
.macro RVTEST_TRAP_SAVEAREA __MODE__

.option push
.option norvc
.global \__MODE__\()tramptbl_sv

//****ASSERT: this should be a 64B boundary******//
\__MODE__\()tramptbl_sv:        // save area of existing trampoline table,     // also stored in XSCRATCH!!!
.rept (tramp_sz>>2)             // size in words (technically, legnth of j op)
        j       .+0             // prototype jump instruction, offset to be filled in
.endr

\__MODE__\()code_bgn_ptr:
        .dword rvtest_code_begin// pointer to code bgn area using this mode's mapping trampsvend+0*8
\__MODE__\()code_end_ptr:
        .dword rvtest_code_end-rvtest_code_begin         // code seg size in any mode trampsvend+1*8
\__MODE__\()data_bgn_ptr:
        .dword rvtest_data_begin// pointer to data bgn area using this mode's mapping trampsvend+2*8
\__MODE__\()data_end_ptr:
        .dword rvtest_data_end-rvtest_data_begin         // code seg size in any mode trampsvend+3*8
\__MODE__\()sig_bgn_ptr:
        .dword rvtest_sig_begin // pointer to sig  bgn area using this mode's mapping trampsvend+4*8
\__MODE__\()sig_end_ptr:
        .dword rvtest_sig_end-rvtest_sig_begin           // code seg size in any mode trampsvend+5*8
\__MODE__\()vmem_bgn_ptr:
        .dword rvtest_data_begin// pointer to vmem bgn area using this mode's mapping trampsvend+6*8
\__MODE__\()vmem_end_ptr:
        .dword rvtest_data_end-rvtest_data_begin         // vmem seg size in any mode trampsvend+7*8

\__MODE__\()trap_sig:
        .dword  mtrap_sigptr    // pointer to next trapsig  (only Mmode version used) trampsvend+8*8
\__MODE__\()satp_sv:
        .dword 0                // save area for incoming xsatp                       trampsvend+9*8
\__MODE__\()trampend_sv:
        .dword  0               // save location of end of trampoline                 trampsvend+10*8
\__MODE__\()edeleg_sv:
        .dword  0               // save location for edeleg CSR                       trampsvend+11*8
\__MODE__\()tvec_new:
        .dword  0               // points to in-use tvec, actual tramp table used     trampsvend+12*8
\__MODE__\()tvec_save:
        .dword  0               // save area for incoming mtvec                       trampsvend+13*8
\__MODE__\()scratch_save:
        .dword  0               // save area for incoming mscratch                    trampsvend+14*8

\__MODE__\()trapreg_sv:         //****GLOBAL:*****
        .fill   8, REGWIDTH, 0xdeadbeef   // handler regsave area, t1..t6,sp +1 extra,trampsvend+15*8; keep dbl alignment

\__MODE__\()sv_area_end:        // used to calc size, which is used to avoid CSR read trampsvend+15+8

.option pop
.endm                           // end of TRAP_SAVEAREA

//==============================================================================
// This section defines the required test format spec macros:
// RVTEST_[CODE/DATA/SIG]_[BEGIN/END]
//==============================================================================


/**************************** CODE BEGIN w/ TRAP HANDLER START  *********************/
/**** instantiate prologs using RVTEST_TRAP_PROLOG() if rvtests_xtrap_routine is ****/
/**** is defined, then initializes regs & defines rvtest_code_begin global label ****/
/************************************************************************************/
.macro RVTEST_CODE_BEGIN
 .option push
 .option rvc
 .align UNROLLSZ
 .option norvc
 .section .text.init
 .globl  rvtest_init
 .global rvtest_code_begin              //define the label and make it available

rvtest_init:                            //instantiate prologs here
  INSTANTIATE_MODE_MACRO RVTEST_TRAP_PROLOG
  RVTEST_INIT_GPRS                      // 0xF0E1D2C3B4A59687
rvtest_code_begin:
 .option pop
.endm                                   //end of RVTEST_CODE_BEGIN
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

.macro RVTEST_CODE_END          // test is ended, but in no particular mode
  .option push
  .option norvc
  .global rvtest_code_end       // define the label and make it available
  .global cleanup_epilogs       // ****ALERT: tests must populate x1 with a point to the end of regular sig area

rvtest_code_end:                // RVMODEL_HALT should get here
  #ifdef rvtest_gpr_save        // gpr_save area is instantiated at end of signature
    RVTEST_SAVE_GPRS  x1        gpr_save
  #endif
    RVTEST_GOTO_MMODE           // if only Mmode used by tests, this has no effect
cleanup_epilogs:                // jump here to quit, will restore state for each mode

//restore xTVEC, trampoline, regs for each mode in opposite order that they were saved
#ifdef rvtest_mtrap_routine
    #ifdef rvtest_strap_routine
        #ifdef rvtest_vtrap_routine
          RVTEST_TRAP_EPILOG V  // actual v-mode prolog/epilog/handler code
        #endif
      RVTEST_TRAP_EPILOG S      // actual s-mode prolog/epilog/handler code
    #endif
   RVTEST_TRAP_EPILOG M         // actual m-mode prolog/epilog/handler code
#endif

/************* test done, epilog has restored everying, jump to halt ****************/
  j     exit_cleanup            //skip around handlers, go to RVMODEL_HALT

abort_tests:
  LREG    t4, sig_bgn_off(sp)   // calculate Mmode sig_end addr in handler's mode
  LREG    t1, sig_seg_siz(sp)
  add     t1, t1, t4            // construct sig seg end
  LI(     t1, 0xBAD0DAD0)       // early abort signature value at sig_end, independent of mtrap_sigptr
  SREG    t1, -4(t4)            // save into last signature canary
  j     exit_cleanup            // skip around handlers, go to RVMODEL_HALT
/********************** trap handlers inserted here ***********************************/

    INSTANTIATE_MODE_MACRO RVTEST_TRAP_HANDLER

exit_cleanup:                   // *** RVMODEL_HALT MUST follow this***, then data

  .option pop
.endm                           // end of RVTEST_CODE_END

/************************************************************************************/
/**** RVTEST_CODE_END macros must fall thru or jump to an RVMODEL_HALT macro here ***/
/************************************************************************************/

/*===================================data section starts here========================*/

/************************************************************************************/
/**** RVTEST_DATA_BEGIN macro defines end of input data & rvtest_data_end label  ****/
/**** this is a data area, so we instantiate trap save areas for each mode here  ****/
/************************************************************************************/

.macro RVTEST_DATA_BEGIN
.data

.align 4        //ensure dbl alignment
/**************************************************************************************/
/**** this is the pointer to the current trap signature part of the signature area ****/
/**** it is shared by all trap modes, but shouldn't be instantiated unless at least****/
/**** 1 trap mode is defined (which is covered if m-mode trap handlers are defined ****/
/**************************************************************************************/

/**** now instantiate separate save areas for each modes state     ****/
/**** strictly speaking, should only be needed for reentrant traps ****/

        INSTANTIATE_MODE_MACRO RVTEST_TRAP_SAVEAREA

/************************************************************************************/
/**************** end of RVTEST_DATA_BEGIN; input data should follow ****************/
/************************************************************************************/

.global rvtest_data_begin
rvtest_data_begin:
.endm

/************************************************************************************/
/**************** RVTEST_DATA_END macro; defines global label rvtest_data_end    ****/
/************************************************************************************/
.macro RVTEST_DATA_END
.global rvtest_data_end
 #ifndef rvtest_mtrap_routine
  mtrap_sigptr:
    .fill 2,4,0xdeadbeef
 #endif

/**** create identity mapped page tables here if mmu is present ****/
.align 12

#ifndef RVTEST_NO_IDENTY_MAP
  #ifdef rvtest_strap_routine
    rvtest_Sroot_pg_tbl:
      RVTEST_PTE_IDENT_MAP

    #ifdef rvtest_vtrap_routine
    rvtest_Vroot_pg_tbl:
      RVTEST_PTE_IDENT_MAP
    #endif
  #endif
#endif
rvtest_data_end:
.endm
