@echo off
cd C:\Driver\SDGA_140\Package\Sinmai_Data\Managed

REM Check if either of the processes is running
tasklist /fi "imagename eq inject.exe" | find /i "inject.exe" >nul
if %errorlevel% equ 0 (
    exit /b
)

tasklist /fi "imagename eq sinmai.exe" | find /i "sinmai.exe" >nul
if %errorlevel% equ 0 (
    exit /b
)

REM Check if nonquickDll no exists
if not exist "Assembly-CSharp-nonquickretry.dll" (
    exit /b
)

ren Assembly-CSharp.dll temp.dll
ren Assembly-CSharp-nonquickretry.dll Assembly-CSharp.dll
ren temp.dll Assembly-CSharp-quickretry.dll