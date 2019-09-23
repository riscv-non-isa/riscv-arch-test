riscvOVPsim/examples/vector/README.md
===

Introduction
---

This directory contains a number of examples executing the RISC-V vector instruction set on the RISC-V processor using the RVB64I variant with extensions MAFDCV and SU.

The vector examples are all taken from the RISC-V Vector specification

The name follows either the specific name of the example or the section number from which they were taken.  

Vector Examples
---
- memcpy
- mixed-width-mask
- 16.7
- saxpy
- 7.7
- vector-vector-add
- conditional
- 6.4

ELF Compilation
---

There is currently no standard cross compiler available to generate the provided ELF files from the C files.

These ELF files were generated using a combination of C compiler and binutils from different sources.


Running the Example
---

A script is provided RUN_RV64GC_VECTOR_EXAMPLE as both sh for Linux and bat for Windows hosts.
The script configures the RISC-V processor for the variant RVB64I, with extensions MAFDCV and SU and configures the vector extension.
When executed a list of the available ELF files to execute will be provided and a selection should be made.
By selecting an ELF file it will be loaded into the memory of the virtual platform and executed by the RISC-V processor.

For Example
 > RUN_RV64GC_VECTOR_EXAMPLE.sh
 
Tracing the Instruction Execution
---

The simulator command line allows the instructions executed to be traced.
By enabling tracing the execution of the Vector instructions can be observed.
The standard command line arguments available to do this are

  Argument | Description
  ---------|------------
  --trace             | Enable instruction tracing
  --tracechange       | Add reporting of changes to register values
  --traceafter number | Specify the instruction number from which to start the tracing
  --tracecount number | Specify the number of instructions to trace
  
For Example
 > RUN_RV64GC_VECTOR_EXAMPLE.sh --trace --tracechange
