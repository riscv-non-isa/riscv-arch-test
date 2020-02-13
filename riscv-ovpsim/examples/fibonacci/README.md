riscvOVPsim/examples/fibonacci/README.md
===

Introduction
---

This example shows the execution of a fibonacci sequence generator as a bare metal application, using semihosted write(), on the RISC-V processor using either RV32IMAC or RV64IMAC variants.

Further scripts provided allow a GDB debug session to be launched or a signature file created from the execution.

RISC-V Signature File
---

Scripts are provided to configure the platform to generate a signature output after executing a test application.

To run the example, execute one of the scripts. Note that there are scripts to run 32 bit (_RV32_) and 64 bit (_RV64_) RISC-V processors.

The signature file is the content of a memory region and is written during execution.

The default usage (RISC-V compliant) is with tests built with the riscv environment that define symbols '_begin_signature_' and '_end_signature_' and is called on the call to the function '_write_tohost_'.

However, parameters can be set allowing the definition of any region and the generation of the signature file at the end of simulation.

Configuration Parameters
---

  - SignatureFile   : The name of the file created containing the signature  
  - SignatureAtEnd  : Write the signature file at the end of simulation.
  - ResultReg       : The register examined to indicate if the test passed or failed. Permitted index 3=gp, 10=a0, 28=t3 (default), 1=Pass 0=Fail

Defining the Start of memory containing signature  
  - StartAddress    : The address of the memory
  - StartSymbol     : The symbol, default 'begin_signature'  

Defining the End of memory containing signature  
  - EndAddress      : The address of the memory  
  - EndSymbol       : The symbol, default 'end_signature'  
  - ByteCount       : The size in bytes, from the StartAddress or StartSymbol

Use the command line argument _-signaturedumphelp_ to see the list of commands

NOTE:
The signature format, defined by RISCV.org, is arranged 16 bytes per line. This requires that the size of the signature memory is always on a 16-byte boundary. The size is reduced to the previous boundary if too big. By reducing the size it is possible to ensure that only data intended for the signature is included and not additional 'random' data.

Files
---
The _.bat_ files are scripts to execute the example under Windows.  
The _.sh_ files are used when running under Linux or in an MSYS shell on Windows.

The _.elf_ files are created using a standard RISC-V gcc toolchain and the source is in the _.c_ file.  

The example application is a Fibonacci generator that writes some results into memory. This memory is then dumped at the end of simulation to a file and the log.

A simulation extension library has been built for the simulator to perform the signature dumping. 
In OVP releases an extension library is provided as source allowing modification to enable any signature dumping format/approach to be performed.

Example run under Linux
---

> $ cd examples/fibonacci  
> $ RUN_RV64_fibonacci_signature_dump.sh  
> 
> CpuManagerFixedPlatform (64-Bit) 20180425.0 Open Virtual Platform simulator from [www.IMPERAS.com](http://www.imperas.com).  
> Copyright (c) 2005-2020 Imperas Software Ltd.  Contains Imperas Proprietary Information.  
> Licensed Software, All Rights Reserved.  
> Visit [www.IMPERAS.com](http://www.imperas.com) for multicore debug, verification and analysis solutions.  
>   
> CpuManagerFixedPlatform started: Wed Apr 25 17:49:14 2018  
>     
> Info (OR_OF) Target 'riscvOVPsim/cpu' has object file read from 'fibonacci.RISCV64.elf'  
> Info (OR_PH) Program Headers:  
> 
> Info (OR_PH) Type           Offset             VirtAddr           PhysAddr  
> Info (OR_PH)                FileSiz            MemSiz             Flags  Align  
> Info (OR_PD) LOAD           0x0000000000000000 0x0000000000010000 0x0000000000010000  
> Info (OR_PD)                0x000000000000da4c 0x000000000000da4c R-E    1000  
> Info (OR_PD) LOAD           0x000000000000da50 0x000000000001ea50 0x000000000001ea50  
> Info (OR_PD)                0x0000000000001148 0x0000000000001218 RW-    1000  
> Info (SIGNATURE_DUMP) Found Symbol 'resultArray' in application at 0x1fbf8  
> Info (SIGNATURE_DUMP) Signature File enabled, file 'fib.sig.dat.txt'.  
> Info (SIGNATURE_DUMP) Extracting signature from 0x1fbf8 size 48 bytes  
> Info (SIGNATURE_DUMP) Symbol 'resultArray' at 0x1fbf8  
> starting fib(38)...  
> fib(0) = 0  
> fib(1) = 1  
> fib(2) = 1  
> fib(3) = 2  
> fib(4) = 3  
> fib(5) = 5  
> fib(6) = 8  
> ...  
> fib(35) = 9227465  
> fib(36) = 14930352  
> fib(37) = 24157817  
> finishing...  
> Info     
> Info ---------------------------------------------------    
> Info CPU 'riscvOVPsim/cpu' STATISTICS  
> Info   Type                  : riscv (RV64IMAC)  
> Info   Nominal MIPS          : 100  
> Info   Final program counter : 0x100d4  
> Info   Simulated instructions: 5,219,094,034  
> Info   Simulated MIPS        : 1484.5  
> Info ---------------------------------------------------  
> Info   
> Info ---------------------------------------------------  
> Info SIMULATION TIME STATISTICS
> Info   Simulated time        : 52.19 seconds
> Info   User time             : 3.52 seconds
> Info   System time           : 0.00 seconds
> Info   Elapsed time          : 3.53 seconds
> Info   Real time ratio       : 14.78x faster
> Info ---------------------------------------------------
>    
> CpuManagerFixedPlatform finished: Wed Apr 25 17:49:20 2018  
>   
> CpuManagerFixedPlatform (64-Bit) 20180425.0 Open Virtual Platform simulator from [www.IMPERAS.com](http://www.imperas.com).  
> Visit [www.IMPERAS.com](http://www.imperas.com) for multicore debug, verification and analysis solutions.  
> 
> Info (SIGNATURE_DUMP) Destructor. Generate Signature file  
> 6279e990593722150d08050302010100  
> dd28b57342311120f12fc26d55183ddb  
> 0000000000000000000079b0c9e7e205  
>  

RISC-V Custom Instruction
---

When running basic tests on the processor without C libraries or hardware to provide character output e.g. a UART; a custom instruction can be used to provide character output in the simulation environment.
The custom instruction is added to a test using a MACRO so that the test can be compiled without the custom instruction for execution on hardware or with the custom instruction for execution on the simulator. 
Note: On hardware there is, therefore, no logging of the test execution and so only a pass/fail result can be obtained. On the simulator the logging can be used to indicate the flow of the test and where it diverges from the expected behavior.

The intercept/extension library is enabled on the virtual platform
simulation using the -customcontrol argument.

> 
> $ bin/Linux64/riscvOVPsim.exe -customcontrol  
>

If the program executes the custom instruction a character will be displayed on the simulator stdout
