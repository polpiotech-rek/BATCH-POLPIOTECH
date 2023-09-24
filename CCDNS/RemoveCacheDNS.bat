@echo off
Title Czyszczenie cache DNS
echo CZYSZCZENIE PAMI¨CI PODR¨CZNEJ SERVERA DNS:
echo ---------------------------------------------------
:clean

@ipconfig /flushDNS >nul

echo Rozpocz©to proces czyszczenia...

set czas=0
:time
if %czas%==3 goto complete
set/a czas=%czas%+1
timeout 3 >nul
echo.
echo.
echo.
:complete
echo             Pami©† zostaˆa wyczyszczona!
echo --------------------------------------------------
echo ##################[ 100 proc. ]###################
echo --------------------------------------------------
echo.
echo.
echo.
echo Naci˜nij dowolny klawisz, aby zamkn¥† okno...
pause >nul
exit