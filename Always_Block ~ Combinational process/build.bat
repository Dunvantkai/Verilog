@echo off
setlocal enabledelayedexpansion
set "folder=%cd%"

for %%f in ("%folder%\*.v") do (
    set "filename=%%~nf"
    echo Found Verilog file: %%~nf
    goto :found
)
echo No Verilog files found:
goto :eof

:found
echo Verilog file found: !filename!
iverilog -o !filename!_tb.vvp !filename!_tb.v
vvp !filename!_tb.vvp
gtkwave !filename!_tb.vcd

endlocal
@REM pause

@REM iverilog -o and_tb.vvp and_tb.v
@REM vvp and_tb.vvp
@REM gtkwave and_tb.vcd