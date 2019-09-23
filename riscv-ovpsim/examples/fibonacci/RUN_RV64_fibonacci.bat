@echo off

;rem move into the Example Directory
set BATCHDIR=%~dp0%
cd /d %BATCHDIR%

..\..\bin\Windows64\riscvOVPsim.exe ^
    --program fibonacci.RISCV64.elf ^
    --variant RVB64I ^
    --override riscvOVPsim/cpu/add_Extensions=MACSU ^
    %*

if not defined calledscript ( pause )
