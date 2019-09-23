@echo off

;rem move into the Example Directory
set BATCHDIR=%~dp0%
cd /d %BATCHDIR%

..\..\bin\Windows64\riscvOVPsim.exe ^
    --program dhrystone.RISCV32.elf ^
    --variant RVB32I ^
    --override riscvOVPsim/cpu/add_Extensions=MACSU ^
    %*

if not defined calledscript ( pause )
