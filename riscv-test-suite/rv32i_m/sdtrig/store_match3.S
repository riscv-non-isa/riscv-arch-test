#include "model_test.h"
#include "arch_test.h"
#include "debug_defines.h"
RVTEST_ISA("RV32IZicsr_Sdtrig")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
  RVTEST_CASE(1,"//check ISA:=regex(.*I.*Zicsr.*Sdtrig.*);def TEST_CASE_1=True;",store_match3)
  RVTEST_SIGBASE(x1, signature_x1_0)
  # Set mtvec to the address of the trap handler
    la a0, trap_handler
    csrw mtvec, a0

  # Read the misa value 
  csrr t2, misa
  RVTEST_SIGUPD(x1,t2)           
  li t1, (1 << 18)        
  and t2,t2,t1     

  bnez t2, implement_mie
  beqz t2 , implement_tcontrol

  implement_mie:                                   
    li t1,(1<<3)
    csrw mstatus, t1        
    csrr t4, mstatus        
    RVTEST_SIGUPD(x1, t4)
    li t1, 1
    j resume_code

  implement_tcontrol:   

    li t3, (1<<3)             
    csrw tcontrol, t3
    csrr t4, tcontrol
    li t1, 2
    j resume_code    

resume_code: 
 #write 0 to tselect,read back and append it to the signature
 
  li t3,0
  csrw tselect,t3
  csrr t0,tselect
  RVTEST_SIGUPD(x1, t0)
  
    # Read tinfo and append it to the signature
   csrr t6, tinfo
   RVTEST_SIGUPD(x1, t6)
  
  csrw tdata1, zero
  csrr a3, tdata1
  RVTEST_SIGUPD(x1, a3)
   
# Set the value of tdata2 to the address to match
    
    la t2,0x80001234 
    csrw tdata2, t2
    csrr t6,tdata2
    RVTEST_SIGUPD(x1, t6)
  
    # Set the value of tdata1 for address match trigger
    li t2, (CSR_TDATA1_TYPE_MCONTROL6 << 28 |\
           CSR_TDATA1_DMODE_BOTH << 27  | \
           CSR_MCONTROL6_SELECT_ADDRESS << 21|\
           CSR_MCONTROL6_SIZE_ANY << 16  |\
           CSR_MCONTROL6_CHAIN_DISABLED <<11  | \
           CSR_MCONTROL6_ACTION_BREAKPOINT <<12 |\
           CSR_MCONTROL6_MATCH_LT <<7 | \
           CSR_MCONTROL6_M |\
           CSR_MCONTROL6_STORE)
    csrw tdata1,t2
    csrr a3,tdata1
    RVTEST_SIGUPD(x1,a3)
   
      # Trigger setup complete; now perform an instruction that will hit the trigger
        la t4,0x80001233
	sw t4, 0(t4)       
        nop
        nop

#endif
trap_handler:
   # Save trap information
    csrr t0, mcause
    csrr t1, mepc
    csrr t2, mtval
    RVTEST_SIGUPD(x1, t0)
    RVTEST_SIGUPD(x1, t1)
    RVTEST_SIGUPD(x1, t2)
   
    # Check if the trigger hit bit is set (bit 25)
    csrr t3, tdata1
    RVTEST_SIGUPD(x1,t3)
end:
RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
  .align 12
   page_4k:
  .fill   4096/REGWIDTH, REGWIDTH, 0
RVTEST_DATA_END

  .align 12
rvtest_Sroot_pg_tbl:
  .fill   4096/REGWIDTH, REGWIDTH, 0
.section .data


# Output data section.
RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

signature_x1_0:
  .fill 128*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_gpr_save
gpr_save:
  .fill 32*(XLEN/32), 4, 0xdeadbeef
#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
