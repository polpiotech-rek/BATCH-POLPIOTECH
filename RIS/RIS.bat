@echo off
Title [USIS] - RAPORT KARTY SIECIOWEJ WIFI

echo INFORMACJE: Tworzenie raportu adaptera karty sieciowej (Wi-Fi).
echo -----------------------------------------------------------------------------
echo.
echo.
netsh wlan show wlanreport
start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "C:\ProgramData\Microsoft\Windows\WlanReport\wlan-report-latest.html"