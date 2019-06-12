###############################################################################
#                       CHANGELOG.MODEL.RISCV.txt                             #
#      Copyright (c) 2005-2019 Imperas Software Ltd., www.imperas.com         #
# This CHANGELOG contains information specific to the RISCV processor model   #
###############################################################################
- Fixed bug that caused the Model Specific Documentation for the SiFive 
  U54MC model to be missing the sections under Overview.
- The vector extension is now implemented and enabled if the V bit is set in
  the misa register. Variants RV32GCV and RV64GCV have been added which enable
  this extension as standard. See the processor documentation for these variants
  for more information.
- New parameter 'add_Extensions' can be used to specify extensions to add to a
  base variant, by misa letter. For example, value "VD" specifies that vector
  and double-precision floating point extensions should be added.
- New parameter 'add_Extensions_mask' can be used to specify that bits in the
  misa register should be writable, by letter. For example, value "VD" specifies
  that vector and double-precision floating point extensions can be dynamically
  enabled.
- Newlib semihost library for RiscV processors now support the naming convention 
  for defining the start of the heap that is used by the linker scripts in
  the BSPs provided in the SiFive freedom-e-sdk.
- Semihosting of the _sbrk() function will now report an error if it is called 
  and cannot find the expected symbol that defines the start of the heap area.
- The Model Specific Information document for each variant now includes 
  information on the extensions that are supported by the model but not enabled 
  on the specific variant being documented. 
- Various changes have been made to implement conformance with Privileged
  Architecture specification 20190405-Priv-MSU-Ratification, as follows:
  - The priority order of synchronous exceptions has been modified;
  - A new parameter, xret_preserves_lr, allows specification that xRET
    instructions should preserve the current value of LR (if False, LR is
    cleared by these instructions);
  - Behavior of misa and xepc registers on systems with variable IALIGN has been
    changed to match the specification;
  - misa.I is now writable if the write mask permits it. misa.E is read only and
    always the complement of misa.I;
  - The mcountinhibit CSR has been implemented.
- Various changes have been made to implement conformance with Base Architecture
  specification 20190303-User-Ratification, as follows:
  - A new parameter, unalignedAMO, controls whether AMO instructions support
    unaligned addresses. LR/SC instructions now never support unaligned
    addresses.
  - RV32E may now be used in conjunction with other extensions. misa.E is now
    always a read-only complement of misa.I.
- The SFENCE.VMA instruction is now only supported if Supervisor mode is
  implemented.
- When Privileged Level version 1.11 is enabled (see the priv_version parameter)
  mstatus.TW is now writable if any Privilege Level other than Machine mode is
  implemented. When Privileged Level version 1.10 is enabled, this field is
  writable only if Supervisor mode is implemented.
- A bug has been fixed which caused PMP privileges to be incorrectly set in some
  cases (where a high priority unlocked region was disabled and covered the same
  address range as a lower priority locked region).
- The model has been simplified to use the built-in VMI RMM rounding mode
  support.

###############################################################################
## Date 2019-March-06                                                        ##
## Release 20190306.0                                                        ##
###############################################################################

- Relaxed the fence instruction for finer grain as per specification of values
  for imm[11:0], rs1 and rd fields
- The model now supports save and restore.
- Field mstatus.MPP has been changed from WLRL to WARL in accordance with
  version 1.11 of the Privileged Specification). When written with an illegal
  value, the previous legal value is preserved.
- RMM rounding mode is now fully implemented for all operations.
- A bug has been fixed in which some floating point convert operations were not
  causing Illegal Instruction exceptions when rounding modes 5 and 6 were
  specified in the instruction.
- A bug has been fixed which could cause permissions for locked PMP regions to
  be ignored in Machine mode in some cases.
- A bug has been fixed which would prevent instruction access faults being
  raised in some circumstances for instructions that straddle PMP region
  boundaries.
- A new parameter PMP_grain allows the grain size (G) of PMP regions to be
  specified. For example, a value of 3 indicates that the smallest implemented
  PMP region size is 32 bytes.

###############################################################################
## Date 2018-November-14                                                     ##
## Release 20181114.0                                                        ##
###############################################################################

- A bug has been fixed which allowed User mode accesses to unimplemented
  hardware performance registers irrespective of the settings in the counter
  enable registers.
- Instruction address misaligned faults are now taken on the branch or jump
  instruction instead of the target instruction.
- A bug has been fixed in which RV64 instructions like sraiw with shifts >= 32
  bits (e.g. sraiw a2,a2,0x20) did not cause an exception.
- A bug has been fixed in which compressed instructions with shifts >= 32 bits
  (e.g. srai a2,a2,0x20) did not cause an exception when RV64I is absent or
  disabled.
- Decode for compressed instructions c.addi4spn, c.addi16sp, c.lui, c.jr,
  c.addiw, c.lwsp and c.ldsp has been corrected to properly handle reserved
  cases.
- A bug has been fixed in which the source value of fmv.s instructions was not
  being checked as NaN-boxed.
- A bug has been fixed which caused sedeleg and sideleg registers to be present
  when user-level interrupts were present and supervisor mode was absent. These
  registers should be present only if both supervisor mode and user-level
  interrupts are present.

###############################################################################
## Date 2018-August-03                                                       ##
## Release 20180716.2                                                        ##
###############################################################################

###############################################################################
## Date 2018-July-16                                                         ##
## Release 20180716.0                                                        ##
###############################################################################

- The RISCV processor model has been changed to set the default initial PC at 
  simulation start to the value indicated by the processor model's reset_address
  parameter. Previously the default start address was 0x0.
  NOTE: The --startaddress command line argument or the start address from an 
  ELF file that is loaded will override this value.
  NOTE: The default value for the reset_address can vary by variant, since this
  is defined to be an implementation dependent value by the RISCV specification.
  See the Model Specific Information document to see what value is implemented 
  for a specific variant.
  
###############################################################################
## Date 2018-March-12                                                        ##
## Release 20180221.1                                                        ##
###############################################################################

###############################################################################
## Date 2018-February-21                                                     ##
## Release 20180221.0                                                        ##
###############################################################################

- The model has been extensively rewritten to implement privilege levels and
  state consistent with Privileged Architecture version 1.10, including virtual
  memory and physical memory protection registers.

###############################################################################
## Date 2017-September-19                                                    ##
## Release 20170919.0                                                        ##
###############################################################################

This is the first release of the RISC-V models. There is a generic
model that implements the RISC-V ISA variants and there are vendor specific
cores.

To see the available processor models use:
    iss.exe --showlibraryprocessors
and to see the specific variants these contain use:
    iss.exe --showvariants --processorname riscv

###############################################################################
## Date 2017-May-12                                                          ##
## Release 20170511.0                                                        ##
###############################################################################

- The model supporting variants RV32G, RV32I, RV64G and RV64I is released.
    
###############################################################################
## Date 2017-February-01                                                     ##
## Release 20170201.0                                                        ##
###############################################################################
