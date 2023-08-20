@echo off
color 6
Title [USIS] - INFORMACJE O AKTUALNYM PO¤CZENIU Z APN
echo INFORMACJE: Aktualne poˆ¥czenie bezprzewodowe (Wi-Fi).
echo --------------------------------------------------------------------------------------
netsh wlan show interface
echo --------------------------------------------------------------------------------------
echo.
echo.
echo Naci˜nij dowolny klawisz na klawiaturze, aby zamkn¥† okno konsolis...
pause >nul
exit