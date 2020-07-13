riscvOVPsim/examples/coverage/README.md
===

Introduction
---

This example uses the fibonacci example code and shows the use of instruction functional coverage.

For full documentation please read the documentation in the [riscvOVPsim user guide](../../doc/riscvOVPsim_User_Guide.pdf).

Files
---
The _.bat_ files are scripts to execute the example under Windows.  
The _.sh_ files are used when running under Linux or in an MSYS shell on Windows.

The _.elf_ and source files are in the fibonacci examples directory.

Example run under Linux
---

> $ cd examples/coverage  
> $ RUN_RV32_coverage_basic.sh
> 
> CpuManagerFixedPlatform (64-Bit) 20200703.0 Open Virtual Platform simulator from www.IMPERAS.com.   
> Copyright (c) 2005-2020 Imperas Software Ltd.  Contains Imperas Proprietary Information.  
> Licensed Software, All Rights Reserved.  
> Visit www.IMPERAS.com for multicore debug, verification and analysis solutions.  
>   
> CpuManagerFixedPlatform started: Mon Jul 13 09:42:12 2020  
>   
> Info (OR_OF) Target 'riscvOVPsim/cpu' has object file read from '../fibonacci/fibonacci.RISCV32.elf'  
> Info (OR_PH) Program Headers:  
> Info (OR_PH) Type           Offset     VirtAddr   PhysAddr   FileSiz    MemSiz     Flags Align  
> Info (OR_PD) LOAD           0x00000000 0x00010000 0x00010000 0x00016838 0x00016838 R-E   1000  
> Info (OR_PD) LOAD           0x00017000 0x00027000 0x00027000 0x000009c0 0x00000a70 RW-   1000  
> starting fib(38)...  
> fib(0) = 0  
> fib(1) = 1  
> fib(2) = 1  
> fib(3) = 2  
> ...  
> fib(16) = 987  
> fib(17) = 1597  
> fib(18) = 2584  
> fib(19) = 4181  
> Info (ICV_WCF) Writing coverage file coverage_basic.yaml  
> Info (ICV_FIN) Instruction Coverage finished  
> Info (ICV_WCR) Writing coverage report coverage_basic.log  
> Info (ICV_SUM) COVERAGE :: RVI :: threshold : 1 : instructions: seen 31/40 :  77.50%, coverage points hit: 610/2844 :  21.45%  
> Info   
> Info ---------------------------------------------------  
> Info CPU 'riscvOVPsim/cpu' STATISTICS  
> Info   Type                  : riscv (RVB32I+MACSU)  
> ...   


