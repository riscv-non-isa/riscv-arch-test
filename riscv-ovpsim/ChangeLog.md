riscvOVPsim Fixed Platform Kit Change Log
===

# Changes since last release

RISCV Processor Model
-------------------------------------------------------------------------------
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
##                                                                           ##
## Date 2018-November-14                                                     ##
##                                                                           ##
## Release 20181114.0                                                        ##
##                                                                           ##
###############################################################################

RISCV Processor Model
-------------------------------------------------------------------------------
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

RISCV Processor Model Feature Usage Examples
-------------------------------------------------------------------------------
- Two examples are provided to show the use of features of the RISCV model. these
  are provided under Examples/Models/Processors/Feature_Usage as
  RISCV_SignatureDump
    Shows the use of the extension library to control the generation of a signature
    file.
  RISCV_CustomInstructionFlow
    Shows how to extend a RISCV processor with a custom instruction.

###############################################################################
##                                                                           ##
## Date 2018-August-03                                                       ##
##                                                                           ##
## Release 20180716.2                                                        ##
##                                                                           ##
###############################################################################

###############################################################################
##                                                                           ##
## Date 2018-July-16                                                         ##
##                                                                           ##
## Release 20180716.0                                                        ##
##                                                                           ##
###############################################################################

RISCV Processor Model
-------------------------------------------------------------------------------
- The RISCV processor model has been changed to set the default initial PC at 
  simulation start to the value indicated by the processor model's reset_address
  parameter. Previously the default start address was 0x0.
  NOTE: The --startaddress command line argument or the start address from an 
  ELF file that is loaded will override this value.
  NOTE: The default value for the reset_address can vary by variant, since this
  is defined to be an implementation dependent value by the RISCV specification.
  See the Model Specific Information document to see what value is implemented 
  for a specific variant.
- A new SiFive variant 'U54MC' has been added, which implements a cluster of
  U54 harts. By default 4 harts are implemented, which may be overridden using
  the numHarts parameter which allows values from 1 to 32.
  
###############################################################################
##                                                                           ##
## Date 2018-March-12                                                        ##
##                                                                           ##
## Release 20180221.1                                                        ##
##                                                                           ##
###############################################################################

###############################################################################
##                                                                           ##
## Date 2018-February-21                                                     ##
##                                                                           ##
## Release 20180221.0                                                        ##
##                                                                           ##
###############################################################################

RISCV Processor Model
-------------------------------------------------------------------------------
- The model has been extensively rewritten to implement privilege levels and
  state consistent with Privileged Architecture version 1.10, including virtual
  memory and physical memory protection registers.
- An intercept (extension) library can be loaded and a SignatureFile parameter 
  specified to set the file into which a signature, compatible with that
  generated by the Spike simulator, will be written. Load the intercept library
  by adding 
    --extlib riscv.ovpworld.org/intercept/spike/1.0
  to the command line.
- The riscv processor models for vendors Andes, SiFive and Microsemi have been 
  renamed
  To see the variants for a specific vendor you should now use
    iss.exe --showvariants --processorvendor riscv.ovpworld.org     --processorname riscv
    iss.exe --showvariants --processorvendor andes.ovpworld.org     --processorname riscv
    iss.exe --showvariants --processorvendor sifive.ovpworld.org    --processorname riscv
    iss.exe --showvariants --processorvendor microsemi.ovpworld.org --processorname riscv

###############################################################################
##                                                                           ##
## Date 2017-September-19                                                    ##
##                                                                           ##
## Release 20170919.0                                                        ##
##                                                                           ##
###############################################################################

RISC-V Processor Models
-------------------------------------------------------------------------------
This is the first release of our collection of RISC-V models. There is a generic
model that implements the RISC-V ISA variants and there are vendor specific
cores from Andes, SiFive, and Microsemi.

To see the available processor models use:
    iss.exe --showlibraryprocessors
and to see the specific variants these contain use:
    iss.exe --showvariants --processorname riscv
    iss.exe --showvariants --processorname andes_riscv
    iss.exe --showvariants --processorname sifive_riscv
    iss.exe --showvariants --processorname microsemi_riscv

###############################################################################
##                                                                           ##
## Date 2017-May-12                                                          ##
##                                                                           ##
## Release 20170511.0                                                        ##
##                                                                           ##
###############################################################################

RISCV Processor Model
-------------------------------------------------------------------------------
- The model supporting variants RV32G, RV32I, RV64G and RV64I is released.
    
###############################################################################
##                                                                           ##
## Date 2017-February-01                                                     ##
##                                                                           ##
## Release 20170201.0                                                        ##
##                                                                           ##
###############################################################################
