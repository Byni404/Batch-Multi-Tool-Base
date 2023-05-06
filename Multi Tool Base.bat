@echo off
title IP Lookup Tool

:menu
cls
echo 1. Ping an IP address
echo 2. Look up an IP address
echo 3. Exit

set /p choice=Enter choice:
if "%choice%"=="1" goto pingip
if "%choice%"=="2" goto lookupip
if "%choice%"=="3" exit

:pingip
cls
set /p ip=Enter IP address to ping:
ping %ip% -n 4
pause
goto menu

:lookupip
cls
set /p ip=Enter IP address to look up:
nslookup %ip%
pause
goto menu