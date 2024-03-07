@echo off
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )



REM Attempt to kill inject and sinmai
taskkill /f /im inject.exe
taskkill /f /im sinmai.exe
echo Please Wait....
timeout /t 5 /nobreak >nul
cls


REM Check if either of the processes is running
tasklist /fi "imagename eq inject.exe" | find /i "inject.exe" >nul
if %errorlevel% equ 0 (
    exit /B
)

tasklist /fi "imagename eq sinmai.exe" | find /i "sinmai.exe" >nul
if %errorlevel% equ 0 (
    exit /B
)

REM Start intl
echo Starting game in 5 seconds...
timeout /t 5 /nobreak
cd C:\Driver\SDGA_140\Package\
call start2.bat
exit