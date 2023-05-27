@echo off



:: REM DOKUMENTACJA PLIKU 

:: REM Important configs. Do not leave them blank!
set "passwordSHA256=MOJEHASLOZASZYFROWANEoooooUWAGAoMUSZAoBYCoDUZEoLITERY"
set "id=%random%"

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
    echo Prawidlowe haslo
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj
echo Twoj kod tutaj

) else (
cls
echo Error: Nieprawidlowe haslo
::del %0
ping localhost -n 8 >NUL
exit
)
pause >nul
