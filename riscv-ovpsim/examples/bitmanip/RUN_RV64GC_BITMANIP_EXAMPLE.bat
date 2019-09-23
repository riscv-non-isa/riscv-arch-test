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
set /P c=Please Choose bit Manipulation Example: 

set app=!v%c%!
if "!app!"=="" ( goto select )

echo Selected Example %app%

; rem run example
..\..\bin\Windows64\riscvOVPsim.exe ^
    --variant RVB64I ^
    --override riscvOVPsim/cpu/add_Extensions=MAFDCBSU ^
    --program %app% ^
    --override riscvOVPsim/cpu/defaultsemihost=F ^
    --override riscvOVPsim/cpu/debugflags=6 ^
    --override riscvOVPsim/cpu/wfi_is_nop=0 ^
    --override riscvOVPsim/cpu/simulateexceptions=T ^
    --override riscvOVPsim/cpu/PMP_registers=0 ^
    --override riscvOVPsim/cpu/ASID_bits=0 ^
    --override riscvOVPsim/cpu/tval_ii_code=F ^
    --customcontrol ^
    %*

:end
pause
