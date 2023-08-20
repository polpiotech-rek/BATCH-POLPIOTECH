@echo off
Title Backup: POLPIOTECH
echo TWORZENIE KOPII ZAPASOWEJ MICROSOFT ONEDRIVE:
echo ----------------------------------------------
echo.
echo [MICROSOFT OneDrive]
xcopy "C:\Users\UserPiotrek\OneDrive\" "E:\Microsoft\OneDrive\" /e /d /y /c
echo.
echo PROCES ZAKOãCZONY!
echo.
echo.
echo.
echo NACI—NIJ DOWOLNY KLAWISZ, ABY ZAMKN¤ OKNO KONSOLI...
pause >nul
exit
