@echo off

;rem move into the Example Directory
set BATCHDIR=%~dp0%
cd /d %BATCHDIR%

..\..\bin\Windows64\riscvOVPsim.exe ^
    --program fibonacci.RISCV64.elf ^
    --variant RVB64I ^
    --override riscvOVPsim/cpu/add_Extensions=MACSU ^
    --signaturedump ^
    --override riscvOVPsim/cpu/sigdump/SignatureFile=fib.sig.dat.txt ^
    --override riscvOVPsim/cpu/sigdump/StartSymbol="resultArray" ^
    --override riscvOVPsim/cpu/sigdump/ByteCount=48 ^
    --override riscvOVPsim/cpu/sigdump/SignatureAtEnd=T ^
    --logfile fib.sig.run.log ^
    %*

if not defined calledscript ( pause )
