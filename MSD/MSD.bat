@echo off
color 9
Title Microsoft Defender
"%ProgramFiles%\Windows Defender\MpCmdRun.exe"
cls
echo            * Microsoft Defender *
echo.
echo ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
echo ±±±±±±±±±±±±±±±±±±°°°°°°°°°°±±±±±±±±±±±±±±±±
echo ±±±±±±±±±±±±±°°°°°°°°°°°°°°°°°°°±±±±±±±±±±±±
echo ±±±±±±±±±±°°°°°°°°°°°°°°°°°°°°°°°°°±±±±±±±±±
echo ±±±±±±±±°°°°°°°°°°°°°°°°°°°°°°°°°°°°°±±±±±±±
echo ±±±±±±°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°Ü°°±±±±±
echo ±±±±±°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°Û?°°±±±±
echo ±±±±°°°°°°°°°°°°°°°°°°°°°°°°°°°ÜÜÛÛÛß°°°°±±±
echo ±±±°°°°°°°°°°°°°°°°°°°°°°°°°°°ÛÛÛÛÛ°ÜÛ°°°°±±
echo ±±°°°°°°°°°°°°°°°°°°°°°°°°°°ÜÛÛÛÛÛÛÛÛß°°°°±±
echo ±±°°°°°°°°°°°°°°°°°°°°°°°°ÜÛÛÛÛÛÛÛÛÛ°°°°°°°±
echo ±°°°°°°°°°°°°°°°°°°°°°°°°°°ÜÛÛÛÛÛÛ?°°°°°°°±
echo ±°°°°°°°°°°°°°°°°°°°°°°°°ÜÛÛÛÛÛÛÛÛÛ°°°°°°°°±
echo ±°°°°°°°°°°°°°°°°°°°°°ÜÛÛÛÛÛÛÛÛÛÛÛ?°°°°°°°°?
echo ±°°°°°°°°°°°°°°°ÜÜÜÜÛÛÛÛÛÛÛÛÛÛÛÛÛÛ?°°°°°°°°?
echo ±°°°°°°°°°°°ÜÜÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ?°°°°°°°°°±
echo ±°°°°°°°°°ÜÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ?°°°°°°°°°±
echo ±°°°°°°°°ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ°°°°°°°°°°±
echo ±Û°°°°?ÛÛÛÛÛÛÛÛÛÛ?°ßßÛÛÛÛÛÛÛÛÛÛÛ°°°°°°°°°°?
echo ?ÛÛ°°°ÜÛÛÛÛÛÛÛÛÛÛ?°°°°°°°°°ßÛÛ??°°°°°°°°°±?
echo ±ÛÛÛÛÛÛ°ÛÛÛÛÛÛÛÛÛ°°°°°°°°°°°???°°°°°°°°°±?
echo ±±ßßßß°°°ÛÛÛÛÛÛß°°°°°°°°°°°°???°°°°°°°°±±?
echo ±±±±±°°°?ÛÛÛÛ?°°°°°°°°°°°°???°°°°°°°±±±?
echo ±±±±±±°°°°ÛÛÛßÛÛ°°°°°°°°°°°°°Û°Û?°°°°°°±±±±?
echo ±±±±±±±±?ÛÛ°°°ÛÛ°°°°°°°°ÜÜÛÛÛÛÛÛÛÛÜ±±±±±±±±
echo ±±±±±±±±±Û?°°°°ÛÜ°°°°°°ÜÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ±±±±±±±±?ÛÛ±±°°°ÛÛÜÜÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ±±±±±±±±±±?ÛÛ±±ÜÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ?
echo ±±±±±±±±±±ÜÜÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo.
echo --- SKANOWANIE ANTYWIRUSOWE ---
echo.
:MENU
echo [1] SZYBKIE SKANOWANIE.
echo [2] PENE SKANOWANIE.
echo [3] AKTUALIZACJA BAZY WIRUSàW.
echo [4] WYJD
echo.
echo.
echo.
set /p wybor=TWàJ WYBàR: 
cls
if %wybor%==1 goto fastscan
if %wybor%==2 goto fullscan
if %wybor%==3 goto update
if %wybor%==4 goto exit
:fastscan
echo SZYBKIE SKANOWANIE:
echo ---------------------
echo.
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
echo.
echo.
echo Naci˜nij dowolny klawisz, aby kontynuowa?..
pause >nul
cls
goto MENU
pause

:fullscan
echo PENE SKANOWANIE:
echo ---------------------
echo.
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2
echo.
echo.
echo Naci˜nij dowolny klawisz, aby kontynuowa?..
pause >nul
cls
goto MENU
pause

:update
echo AKTUALIZACJA BAZY:
echo ---------------------
echo.
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -signatureupdate
echo.
echo.
echo Naci˜nij dowolny klawisz, aby kontynuowa?..
pause >nul
cls
goto MENU
pause

:exit
exit