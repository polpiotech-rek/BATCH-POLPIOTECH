@echo off
Title [USIS] - SKANOWANIE UKRYTYCH PLIKàW SYSTEMU
echo Rozpocz©to skanowanie systemu Windows...
sfc /scannow
echo Rozpocz©to skanowanie dysku twardego...
chkdsk C:
pause >nul
echo Naci˜nij dowolony klawisz, aby zamkn¥† okno konsoli...
pause >nul
exit