@echo off
REM Auto-compile C files
REM Usage: compile filename.c

if "%1"=="" (
    echo Please provide a C file to compile
    exit /b
)

set filename=%~n1
gcc "%1" -o "%filename%"

if %errorlevel% equ 0 (
    echo Compilation successful: %filename%.exe created
) else (
    echo Compilation failed
)