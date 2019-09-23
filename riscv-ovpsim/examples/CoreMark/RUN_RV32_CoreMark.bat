@echo off

;rem move into the Example Directory
set BATCHDIR=%~dp0%
cd /d %BATCHDIR%

..\..\bin\Windows64\riscvOVPsim.exe ^
    --program coremark.RISCV32.elf ^
    --variant RVB32I ^
    --override riscvOVPsim/cpu/add_Extensions=MACSU ^
    %* ^
    -argv 0 0 0x66

;rem validate with args
;rem 0 0 0x66
;rem and
;rem 0x3415 0x3415 0x66
;rem next argument is iterations, default 1000

if not defined calledscript ( pause )
