@echo off

;rem move into the Example Directory
set BATCHDIR=%~dp0%
cd /d %BATCHDIR%

;rem stops pause in called script
set calledscript=1

;rem To start GDB connected to the simulator we add -gdbconsole
call RUN_RV32_dhrystone.bat -gdbconsole %*

pause