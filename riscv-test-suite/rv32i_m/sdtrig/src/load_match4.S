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
  RVTEST_CASE(1,"//check ISA:=regex(.*I.*Zicsr.*Sdtrig.*);def TEST_CASE_1=True;",load_match4)
  RVTEST_SIGBASE(x1, signature_x1_0)
# Set mtvec to the address of the trap handler
   
    csrr t1, mstatus               # Read current mstatus
    li t0, ~(3 << 11)              # Create mask to clear mpp bits (bits 11 and 12)
    and t1, t1, t0                 # Clear the mpp bits
    li t0, (3 << 11)               # Prepare value to set mpp to 3 (Machine Mode)
     or t1, t1, t0                  # Set the mpp bits to 3
    csrw mstatus, t1               # Write back modified mstatus
    RVTEST_SIGUPD(x1,t1)
    
    csrr t0, mstatus             # Read mstatus register
    srli t1, t0, 11              # Shift right to get MPP field
    andi t1, t1, 3               # Mask to get the MPP value
    li t2, 3                     # Load value 3 (Machine mode) into t2
    beq t1, t2, setup_trap       # If in Machine mode, jump to setup_trap

    # Not in Machine mode, handle accordingly (e.g., trap, ecall, etc.)
    li a0, 1                     # Example action if not in Machine mode
    ret
setup_trap:
    la a0, trap_handler
    csrw mtvec, a0
    csrr t1, mtvec

	
   #write 0 to tselect,read back and append it to the signature
 
  li t3,0
  csrw tselect,t3
  csrr t0,tselect
  RVTEST_SIGUPD(x1, t0)
  
    # Read tinfo and append it to the signature
   csrr t6, tinfo
   RVTEST_SIGUPD(x1, t6)
  
    li a1, (CSR_TCONTROL_MTE_ENABLED  << 3)
    csrw tcontrol, a1
    csrr a2,tcontrol
    RVTEST_SIGUPD(x1,a2)

  
    # Set the value of tdata1 for address match trigger
    li t2, (CSR_TDATA1_TYPE_MCONTROL6 << 28 |\
           CSR_TDATA1_DMODE_BOTH << 27  | \
           CSR_MCONTROL6_SELECT_ADDRESS << 21|\
           CSR_MCONTROL6_SIZE_ANY << 16  |\
           CSR_MCONTROL6_CHAIN_DISABLED <<11  | \
           CSR_MCONTROL6_ACTION_BREAKPOINT <<12 |\
           CSR_MCONTROL6_MATCH_MASK_LOW <<7 | \
           CSR_MCONTROL6_M |\
           CSR_MCONTROL6_LOAD)
    csrw tdata1,t2
    RVTEST_SIGUPD(x1,t2)
    csrr a3,tdata1
    RVTEST_SIGUPD(x1,a3)
   
    
    # Set the value of tdata2 to the address to match
    la t2,0x80010001
    csrw tdata2, t2
    csrr t6,tdata2
    RVTEST_SIGUPD(x1, t6)
    
        # Execute an instruction at the matching address
        la t4,0x00010001
	lw t4, 0(t4)       # Load to trigger match (this should trigger the break)

#endif
trap_handler:
   # Save trap information
    csrr t0, mcause
    csrr t1, mepc
    addi t1, t1, 4          # Add 4 to t0 (which contains the mepc value)
    csrw mepc,t1
    csrr t6,mepc
    csrr t2, mtval
    RVTEST_SIGUPD(x1, t0)
    RVTEST_SIGUPD(x1, t6)
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

#ifdef rvtest_mtrap_routine
mtrap_sigptr:
  .fill 128*4, 4, 0xdeadbeef
#endif

#ifdef rvtest_gpr_save
gpr_save:
  .fill 32*(XLEN/32), 4, 0xdeadbeef
#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
