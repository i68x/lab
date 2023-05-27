@echo off
:: REM TUTORIAL ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: REM passwordSHA256 --- Convert your password to SHA256 *** AND MAKE IT UPPERCASE ***.
:: REM ID --- An ID used to log errors.

:: REM At the end obfuscate this code or don't .

:: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:: REM Important configs. Do not leave them blank!
set "passwordSHA256=F179FC7ED6A2600390312B07482BA1C817FDE273A272774E5CCFED3D8A45BCCE"
set "id=%random%"

:: REM START OF CODE, DO NOT DELETE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:lgn
setlocal enabledelayedexpansion
set /p password=Password: [47m
echo [0m
ping localhost -n 2 >NUL
for /f %%I in ('powershell -Command "$password = '%password%'; $sha256 = [System.Security.Cryptography.SHA256]::Create(); $hash = [System.BitConverter]::ToString($sha256.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($password))).Replace('-', ''); echo $hash"') do (
    set "sha256=%%I"
)
setlocal DisableDelayedExpansion
if "%sha256%"=="%passwordSHA256%" (
    echo YOUR SCRIPT HERE [LINE 29]

) else (
cls
echo Error: Password is incorrect.
::del %0
ping localhost -n 8 >NUL
exit
)
pause >nul
