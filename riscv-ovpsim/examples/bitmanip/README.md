riscvOVPsim/examples/bitmanip/README.md
===

Introduction
---

This directory contains a number of examples executing the RISC-V bit manipulation instruction set on the RISC-V processor using the RVB64I variant with MAFDC and SU extensions.
The Bit Manipulation instructions are implemented in an extension library that is loaded onto the base RISC-V processor model.


Bit Manipulation Example ELF Files
---
A few example assembler files have been provided to show the execution of some of the available Bit Manipulation instructions.

- bdep
- clz
- pcnt
- bext
- ctz

ELF Compilation
---
The Bit Manipulation examples are all compiled using the RISC-V Cross Compiler toolchain provided as the riscv.toolchain package from OVP World or Imperas.
A Makefile is provided that will build all the Bit Manipulation assembler files to ELF files.

NOTE: The RISC-V Cross Compiler does not support the Bit Manipulation instructions which are added into the assembler files as literal data values.

Running the Example
---

A script is provided RUN_RV64GC_BITMANIP_EXAMPLE as both sh for Linux and bat for Windows hosts.
The script configures the RISC-V processor for the base variant RVB64I, with extensions MAFDC and SU and other required parameters for the Bit Manipulation extension.
When executed a list of the available ELF files to execute will be provided and a selection should be made.
By selecting an ELF file it will be loaded into the memory of the virtual platform and executed by the RISC-V processor.

For Example
 > RUN_RV64GC_BITMANIP_EXAMPLE.sh
 
Tracing the Instruction Execution
---

The simulator command line allows the instructions executed to be traced.
By enabling tracing the execution of the Bit Manipulation instructions can be observed.
The standard command line arguments available to do this are

  Argument | Description
  ---------|------------
  --trace             | Enable instruction tracing
  --tracechange       | Add reporting of changes to register values
  --traceafter number | Specify the instruction number from which to start the tracing
  --tracecount number | Specify the number of instructions to trace
  
For Example
 > RUN_RV64GC_BITMANIP_EXAMPLE.sh --trace --tracechange
