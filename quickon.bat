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

REM Check if quickDll no exists
if not exist "Assembly-CSharp-quickretry.dll" (
    exit /b
)



ren Assembly-CSharp.dll temp.dll
ren Assembly-CSharp-quickretry.dll Assembly-CSharp.dll
ren temp.dll Assembly-CSharp-nonquickretry.dll
