@echo off
title Skorší Prístup k Bažina RolePlay
mode 50,10
chcp 65001>nul
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo [40;36m==================================================
echo                      [40;37mENTER KEY                  
echo [40;36m==================================================
    set /p anz="[40;37m Your Key: [40;36m"
    ::1UA3748KINH22
    if %anz%==kakalpes (
    goto 12345
    )

:12345
title Bažina RolePlay Discord Server
cls
echo           --Pristup na Discord Server--
echo.
echo.
echo.
echo              https://dsc.gg/bazinarp
pause>null