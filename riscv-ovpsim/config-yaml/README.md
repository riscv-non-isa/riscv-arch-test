riscvOVPsim/yaml-config/README.md
===

Introduction
---

[This is new functionality (Aug 2019) and is a work in progress...]

This directory contains a program to convert the RISC-V Foundation's device and platform yaml configuration files into a control file for OVP simulators.

It relies upon the installation of the python module riscv-config, and its dependencies defined in requirements.txt,
in order to do this execute the commands:

    cd config-yaml
	pip3 install --upgrade setuptools
    pip3 install -r requirements.txt

For information on riscv-config yaml definition and the yaml validator, look at the github repository: https://github.com/riscv/riscv-config

Converting yaml config files
---
To convert yaml files - look in the examples directory at the yaml and then look at the included Makefile

Simple validation of the yaml is done with:

    ./main.py -ispec ./examples/Ibex_RV32IMC.yaml -pspec ./examples/Ibex_RV32IMC_platform.yaml

Creating an OVP control file with:
---

    ./main.py -ispec ./examples/Ibex_RV32IMC.yaml -pspec ./examples/Ibex_RV32IMC_platform.yaml \
        --target OVPsim

These create a ./work directory with the resultant files in.

For example the resultant file will be called: Ibex_RV32IMC_riscvOVPsim.ic

Which should give the output similar to this:

    [INFO]    : Input-ISA file
    [INFO]    : Loading input file: riscv-ovpsim/config-yaml/examples/Ibex_RV32IMC.yaml
    [INFO]    : Load Schema riscv-ovpsim/riscv-config/riscv_config/schemas/schema_isa.yaml
    [INFO]    : Initiating Validation
    [INFO]    : No Syntax errors in Input ISA Yaml. :)
    [INFO]    : Dumping out Normalized Checked YAML: riscv-ovpsim/config-yaml/work/Ibex_RV32IMC_checked.yaml
    [INFO]    : Input-Platform file
    [INFO]    : Loading input file: riscv-ovpsim/config-yaml/examples/Ibex_RV32IMC_platform.yaml
    [INFO]    : Load Schema riscv-ovpsim/riscv-config/riscv_config/schemas/schema_platform.yaml
    [INFO]    : Initiating Validation
    [INFO]    : No Syntax errors in Input Platform Yaml. :)
    [INFO]    : Dumping out Normalized Checked YAML: riscv-ovpsim/config-yaml/work/Ibex_RV32IMC_platform_checked.yaml
    [INFO]    : Initiating writeOVPsim config file
    [INFO]    : Loading input file: riscv-ovpsim/config-yaml/examples/Ibex_RV32IMC.yaml
    [INFO]    : Converting YAML for OVPsim
    [INFO]    : Writing OVPsim control file: riscv-ovpsim/config-yaml/work/Ibex_RV32IMC_riscvOVPsim.ic
    [INFO]    : Finished writeOVPsim config file
    
This is used for simulation with riscvOVPsim.exe
---

    ../bin/Linux64/riscvOVPsim.exe  --controlfile ./work/Ibex_RV32IMC_riscvOVPsim.ic \
        --program ../examples/fibonacci/fibonacci.RISCV32.elf

    Imperas riscvOVPsim
    CpuManagerFixedPlatform (64-Bit) v20190802.0 Open Virtual Platform simulator from www.IMPERAS.com.
    Copyright (c) 2005-2020 Imperas Software Ltd.  Contains Imperas Proprietary Information.
    Licensed Software, All Rights Reserved.
    Visit www.IMPERAS.com for multicore debug, verification and analysis solutions.
    CpuManagerFixedPlatform started: Fri Aug  2 19:05:59 2019
    
    Info (OR_OF) Target 'riscvOVPsim/cpu' has object file read from '../examples/fibonacci/fibonacci.RISCV32.elf'
    Info (OR_PH) Program Headers:
    Info (OR_PH) Type           Offset     VirtAddr   PhysAddr   FileSiz    MemSiz     Flags Align
    Info (OR_PD) LOAD           0x00000000 0x00010000 0x00010000 0x0000f980 0x0000f980 R-E   1000
    Info (OR_PD) LOAD           0x00010000 0x00020000 0x00020000 0x000009c0 0x00000a54 RW-   1000
    starting fib(38)...
    fib(0) = 0
    fib(1) = 1
    fib(2) = 1
    fib(3) = 2
    fib(4) = 3
    ...
    fib(37) = 24157817
    finishing...
    Info 
    Info ---------------------------------------------------
    Info CPU 'riscvOVPsim/cpu' STATISTICS
    Info   Type                  : riscv (RVB32I+CM)
    Info   Nominal MIPS          : 100
    Info   Final program counter : 0x10098
    Info   Simulated instructions: 4,400,443,313
    Info   Simulated MIPS        : 1781.6
    Info ---------------------------------------------------
    Info 
    Info ---------------------------------------------------
    Info SIMULATION TIME STATISTICS
    Info   Simulated time        : 44.01 seconds
    Info   User time             : 2.47 seconds
    Info   System time           : 0.00 seconds
    Info   Elapsed time          : 2.48 seconds
    Info   Real time ratio       : 17.76x faster
    Info ---------------------------------------------------
    
    CpuManagerFixedPlatform finished: Fri Aug  2 19:06:02 2019
    CpuManagerFixedPlatform (64-Bit) v20190802.0 Open Virtual Platform simulator from www.IMPERAS.com.
    Visit www.IMPERAS.com for multicore debug, verification and analysis solutions.
    
##
    
