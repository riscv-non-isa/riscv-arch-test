@echo off

;rem move into the Example Directory
set BATCHDIR=%~dp0%
cd /d %BATCHDIR%

..\..\bin\Windows64\riscvOVPsim.exe ^
    --program ../fibonacci/fibonacci.RISCV32.elf ^
    --variant RVB32I ^
    --override riscvOVPsim/cpu/add_Extensions=MACSU ^
    --cover basic --reportfile coverage_basic.log --outputfile coverage_basic.yaml ^
    --extensions RVI --showuncovered ^
    --finishafter 10000 ^
    %*

if not defined calledscript ( pause )
