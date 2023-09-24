@echo off
Title Konfiguracja kart sieciowych
color 6
echo.
echo.
echo ====================================================================================================
echo.
echo.
echo ___________$$$$$$$$$$$$$$$______________
echo ________$$$$______$$$$$$$$______________
echo ______$$$_____$$$$$$_$$_$$______________
echo _____$____$$$$$$$$$__$__$$______________
echo ___$$___$$$$$$$$$___$___$$______________
echo __$$__$$$$$$$$$$___$____$$______________
echo __$$$$$$$$$$$_____$$_____$$____$$$$$$___
echo $$$$$$$__________$$_______$$_$$$$$$$$$$_
echo _________$$$$$__$$$____$$__$__$$$$$$$$$_
echo ______$$$$$$$$$_$$$$$$$$$$$$$$$$$$$$$$$$
echo _____$$$$$$$$$$$$__$$$$$__$$$$$$$$$$$$$$
echo ____$$$__$$$$$$$$$$$$$$$$__$$$$$$$$$__$$
echo ____$$___$$$$$$$$$$$$$$$$$_$$$$$$$$$__$$
echo ____$$__$$$$$$$$$$$$$$$$$$_$$$$$$$$$_$$_
echo ____$$$_$$$$$$$$$$$$$$$$$$_$$$$$$$$$$$__
echo ____$$$__$$$$$$$$$$$$$$$$_$$$$$$$$$$$___
echo _____$$$$$$$$$$$$$$$$$$$__$$$$$$$$$_____
echo _____$$$$$$$$$$$$$$$$$$$________________
echo _______$$$$$$$$$$$$$$$__________________
echo __________$$$$$$$$$$____________________
echo.
echo.
echo ====================================================================================================
echo.
echo.
echo.
echo.
echo.
echo 	* USTAWIENIA STATYCZNE DLA KARTY SIECIOWEJ WI-FI:
echo.
echo Trwa zmiana adresu IPv4 na statyczny...
echo.
echo 	--- SET WIFI: IPv4 192.168.31.234 / MASKA PODSIECI 255.255.255.0 / BRAMA DOMY—LNA 192.168.31.1
Netsh Interface IP Set Address "Wi-Fi" static 192.168.31.234 255.255.255.0 192.168.31.1
echo.
echo Trwa zmiana serwera DNS (AdGuard)...
echo.
echo 	--- DNS INDEX 1 ---
Netsh Interface IP Set Dns "Wi-Fi" static 94.140.14.14
echo.
echo 	--- DNS INDEX 2 ---
Netsh interface ipv4 add dnsservers "Wi-Fi" 94.140.15.15 index=2 
echo.
echo.
echo.
echo.
echo 	* USTAWIENIA STATYCZNE DLA KARTY SIECIOWEJ ETHERNET:
echo.
echo Trwa zmiana adresu IPv4 na statyczny...
echo.
echo 	--- SET WIFI: IPv4 192.168.1.105 / MASKA PODSIECI 255.255.255.0 / BRAMA DOMY—LNA 192.168.1.1
Netsh Interface IP Set Address "Ethernet" static 192.168.1.105 255.255.255.0 192.168.1.1
echo.
echo Trwa zmiana serwera DNS (AdGuard IPv4)...
echo.
echo 	--- DNS INDEX 1 ---
Netsh Interface IP Set Dns "Ethernet" static 94.140.14.14
echo.
echo 	--- DNS INDEX 2 ---
Netsh interface ipv4 add dnsservers "Ethernet" 94.140.15.15 index=2 
echo.
echo.
echo.
echo.
echo 	* OD—WIE½ENIE PROTOKOàW KOMUNIKACJI DNS: 
echo.
:konfiguracja
echo Czy chcesz od˜wie¾y† protokoˆy komunikacji (IPv4 i DNS)? (Y/N)
set /p "konfiguracja="
if %konfiguracja%==y echo * ODNAWIANIE ADRESU IPv4 W SIECI (WLAN/LAN):
ipconfig /renew
echo.
echo * CZYSZCZENIE PAMI¨CI PODR¨CZNEJ DNS (CACHE DNS):
ipconfig /flushdns
echo.
echo * AKTUALIZACJA SERWERA DNS (ADGUARD DNS):
ipconfig /registerdns
echo.
if NOT %konfiguracja%==y goto ipcon
echo.
echo.
echo.
echo.
echo 	* INFORMACJE Z USTAWIENIAMI KART SIECIOWYCH (WLAN/LAN):
echo.
:ipcon
echo Czy chcesz sprawdzi† ustawienia kart sieciowych? (Y/N)
echo.
set /p "karta="
if %karta%==y ipconfig /all
if NOT %karta%==y exit
echo.
echo.
echo.
echo.
echo 	* ZAMKNI¨CIE SKRYPTU PO WYKONANIU:
echo.
echo   -- Naci˜nij dowolony przycisk, aby zamkn¥† konsole...
pause >nul
exit