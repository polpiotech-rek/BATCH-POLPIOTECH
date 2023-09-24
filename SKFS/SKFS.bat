@echo off
Title [USIS] - SKANOWANIE KLUCZOWYCH FUNKCJI SYSTEMU
echo ROZPOCZ¨TO PROCES SKANOWANIA...
echo.
DISM /Online /Cleanup-Image /ScanHealth
pause >nul
pause
exit