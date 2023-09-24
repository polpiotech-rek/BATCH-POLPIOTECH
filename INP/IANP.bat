@echo off
Title [USIS] - IDENTYFIKACJA ZAPISANYCH PROFILI APN
echo INFORMACJE: SSID APN (nazwa sieci Wi-Fi) zapisanych w systemie MS Windows.
echo -----------------------------------------------------------------------------------------
netsh wlan show profile 
echo -----------------------------------------------------------------------------------------
echo.
echo.
echo.
echo Naci˜nij dowolny klawisz na klawiaturze, aby kontynuowa†...
pause >nul
set czas=5
:odliczanie
cls
if %czas%==0 goto koniec
set/a czas=%czas%-1
echo Okno konsoli zostanie automatycznie zamkni©te za: %czas% sekund.
timeout 1 >nul
goto odliczanie
:koniec
cls
exit

