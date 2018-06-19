@echo off

;rem move into the Example Directory
set BATCHDIR=%~dp0%
cd /d %BATCHDIR%

..\..\bin\Windows64\riscvOVPsim.exe --program fibonacci.RISCV32.elf -variant RV32IMAC %*

if not defined calledscript ( pause )
