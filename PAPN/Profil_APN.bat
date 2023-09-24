@echo off
Title [USIS] - GENEROWANIE PLIKU Z ZAPISANYMI PROFILAMI APN
netsh wlan export profile folder=C:\Users\UserPiotrek\OneDrive\Programy\Batch\SWAN\v1.2.3\PAPN\Raporty key=clear
set czas=5
:odliczanie
cls
if %czas%==0 goto koniec
set/a czas=%czas%-1
echo INFORMACJE: Zapis informacji o zapami©tanych profilach sieci Wi-Fi w systemie MS Windows.
echo.
echo Pobieranie danych... 
echo %czas% sekund.
timeout 1 >nul
goto odliczanie

:koniec
cls
start C:\Users\UserPiotrek\OneDrive\Programy\Batch\SWAN\v1.2.3\PAPN\Raporty
echo.
exit
