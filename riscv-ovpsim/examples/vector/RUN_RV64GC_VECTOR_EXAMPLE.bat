@echo off

;rem move into the Example Directory
set BATCHDIR=%~dp0%
cd /d %BATCHDIR%

setLocal EnableDelayedExpansion

;rem add ELF files
for %%a in (*.elf) do ( 
  set /a n+=1 
  set mu=%%~na
  set v!n!=!mu!.elf
  echo !n!: !mu!.elf
)

:select
set /P c=Please Choose Vector Example: 

set app=!v%c%!
if "!app!"=="" ( goto select )

echo Selected Example %app%

; rem run example
..\..\bin\Windows64\riscvOVPsim.exe ^
    --program %app% ^
    --variant RVB64I ^
    --override riscvOVPsim/cpu/add_Extensions=MAFDCVSU ^
    --override riscvOVPsim/cpu/vector_version=0.7.1-draft-20190605 ^
    --override riscvOVPsim/cpu/VLEN=512 ^
    --override riscvOVPsim/cpu/SLEN=64 ^
    %*

if not defined calledscript ( pause )
