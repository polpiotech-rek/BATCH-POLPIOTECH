@echo off
Title DYNAMICZNY SERWER DNS
echo ROZPOCZ¨TO AKTUALIZACJE SERWERA DNS...
echo.
Netsh Interface IP Set Address "Wi-Fi" DHCP

echo Naci˜nij dowolny klawisz, aby zamkn¥† konsole...
pause >nul
exit
