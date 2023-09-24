@echo off
Title Konfigurator kart sieciowych
color 9
echo.
echo.
echo                              -- PROCES KONFIGURACJI --
echo ================================================================================
echo.
echo     INFO:
echo  *  Konfiguracja adaptera karty sieciowej "WI-FI"." 
echo        --- adres IPv4: 192.168.31.234 : WOJSKA POLSKIEGO  
echo.        
echo  *  Konfiguracja adaptera karty sieciowej "Ethernet"."
echo        --- adres IPv4: 192.168.1.105 : SIEÆ PRYWATNA   
echo.
echo  *  Konfiguracja serwera DNS: Adblock."
echo        --- server DNS Adguard: 94.140.14.14/94.140.15.15 : STATYCZNY DNS
echo.
echo ================================================================================
echo.
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
echo.


echo.
echo.
echo.
echo.
echo.





echo. USTAWIENIA KARTY SIECIOWEJ WI-FI:

echo Trwa zmiana adresu IPv4 na statyczny...
Netsh Interface IP Set Address "Wi-Fi" static 192.168.31.234 255.255.255.0 192.168.31.1

echo Trwa zmiana serwera DNS (AdGuard)...
Netsh Interface IP Set Dns "Wi-Fi" static 94.140.14.14
Netsh interface ipv4 add dnsservers "Wi-Fi" 94.140.15.15 index=2 

echo.
echo.

echo. USTAWIENIA KARTY SIECIOWEJ ETHERNET:

echo Trwa zmiana adresu IPv4 na statyczny...
Netsh Interface IP Set Address "Ethernet" static 192.168.1.105 255.255.255.0 192.168.1.1

echo Trwa zmiana serwera DNS (AdGuard)...
Netsh Interface IP Set Dns "Ethernet" static 94.140.14.14
Netsh interface ipv4 add dnsservers "Ethernet" 94.140.15.15 index=2 

echo.
echo.

echo. OD—WIE½ENIE PROTOKOàW KOMUNIKACJI DNS:
:konfiguracja
echo Czy chcesz od˜wie¾y† protokoˆy komunikacji (IPv4 i DNS)? (Y/N)

set /p "konfiguracja="
if %konfiguracja%==y ipconfig /renew
gpupdate /force
ipconfig /flushdns
ipconfig /registerdns
if NOT %konfiguracja%==y goto ip

echo.
echo.

echo. SPRAWDZENIE USTAWIEã KART SIECIOWYCH:
:ip
echo Czy chcesz sprawdzi† ustawienia kart sieciowych? (Y/N)

set /p "karta="
if %karta%==y ipconfig /all
if NOT %karta%==y exit

echo.
echo.

echo. ZAMKNI¨CIE SKRYPTU:
echo Naci˜nij dowolony przycisk, aby zamkn¥† konsole...
pause >nul
exit