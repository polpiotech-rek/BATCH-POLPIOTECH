@echo off
Title POLPIOTECH - MICROSOFT WINDOWS

echo ========================================================================
echo   ZARZ¤DZANIE LOKALNYMI KONTAMI U½YTKOWNIKàW SYSTEMU MICROSOFT WINDOWS
echo ========================================================================
echo.
echo.
echo                                                                  33333333                                                                                                  
echo                                                                999999999999                                      
echo                                                              9999999999999999    1 00   0   1    111   0   0  101
echo                                                             9999999      999999 0010110 11 110 010011  10 01 01001 
echo                                                            9999999        999999966666666666666666666669666633333301 
echo                                                           9999999          99999933  333 33 333 666663  33 33 33399991              
echo                                                            9999999        9999999333333333333366666666663333666666300             
echo                                                             9999999      999999                                                       
echo                                                              99999999999999999      $$$$$ - $$$$$ - $$$$$ - $$$$$    
echo                                                                9999999999999       [11011] [01110] [11001] [10001]
echo                                                                  333333333            27      14      25      17
echo                                                                                        9       5       7       8
echo.
echo.
echo                                                                               * PIOTR KAZIMIERZ BODYCH *
echo.
echo                                                                                   - MADE IN POLAND -
echo                                                                                        -(21)-
echo                                                                                     THANKS FOR ALL
echo.
echo.
echo.
:START1
echo WYBIERZ FUNKCJE:
echo =================
echo.
echo ----------------------------------------------------------------------------------
echo [1] - WSZYSCY U½YTKOWNICY SYSTEMU MICROSOFT WINDOWS. (ALL LOCAL USERS IN SYSTEM)
echo ----------------------------------------------------------------------------------
echo [2] - SZCZEGàOWE INFORMACJE O KONCIE U½YTKOWNIKA. (INFO ABOUT USER)
echo ----------------------------------------------------------------------------------
echo [3] - DODAJ NOWE KONTO U½YTKOWNIKA. (ADD NEW USER)
echo ----------------------------------------------------------------------------------
echo [4] - ZMIEã HASO DLA KONTA U½YTKOWNIKA. (RESET PASSWORD)
echo ----------------------------------------------------------------------------------
echo [5] - DODAJ GRUP¨ DO KONTA U½YTKOWNIKA. (ADD GPO)
echo ----------------------------------------------------------------------------------
echo [6] - USUã GRUP¨ Z KONTA U½YTKOWNIKA. (DEL GPO)
echo ----------------------------------------------------------------------------------
echo [7] - USUã KONTO U½YTKOWNIKA. (DEL USER ACCOUNT)
echo ----------------------------------------------------------------------------------
echo [8] - WYJD. (CLOSE WINDOWS CONSOL)
echo ----------------------------------------------------------------------------------
echo.
set /p opcja_1=TWàJ WYBàR: 

if %opcja_1%==1 goto actuser
if %opcja_1%==3 goto MENU
if %opcja_1%==4 goto resetpass
if %opcja_1%==5 goto modupruser
if %opcja_1%==6 goto delgpo
if %opcja_1%==2 goto infouser
if %opcja_1%==7 goto deluser
if %opcja_1%==8 goto exit


:MENU
echo.
echo.
echo TWORZENIE NOWEGO KONTA LOKALNEGO:
echo ==================================
echo.
set /p login=NAZWA U½YTKOWNIKA: 
set /p password0=HASO: 
set /p password1=POWTàRZ HASO: 

if %password0%==%password1% goto newuser
if %password0% neq %password1% goto badpass



:newuser
net user %login% %password% /add
goto ask


:badpass
echo.
echo B¨DNIE WPROWADZONE HASO!
echo SPRUBàJ PONOWNIE...
echo.
echo.
goto MENU


:ask
echo.
echo.
echo WYBIERZ OPCJE:
echo ===============
echo [1] - DODAJ KOLEJNE KONTO U½YTKOWNIKA
echo [2] - WRà DO GàWNEGO MENU
echo [3] - WYJD
echo.
set /p opcja=WYBIERZ OPCJE: 
echo.
echo.

if %opcja%==1 goto MENU
if %opcja%==2 goto START1
if %opcja%==3 goto exit


:actuser
echo.
echo.
net user
echo.
echo.
echo WRàCI DO MENU GàWNEGO? ([Y]-MENU GàWNE / [N]-WYJD)
echo =======================================================
echo.
set /p opcja_2=TWàJ WYBàR: 
echo.
echo.
if %opcja_2%==y goto START1
if %opcja_2%==Y goto START1
if %opcja_2%==n goto exit
if %opcja_2%==N goto exit

:modupruser
echo.
echo.
echo MODYFIKACJA UPRAWNIEã U½YTKOWNIKA LOKALNEGO:
echo =============================================
echo.
set /p user1=NAZWA U½YTKOWNIKA: 
if %user1%== goto upraw
echo.

:upraw
echo.
echo WYBIERZ UPRAWNIENIA: 
echo =====================
echo.
echo [1] - U½YTKOWNIK
echo [2] - ADMINISTRATOR
echo.
set /p rola=TWàJ WYBàR: 

if %rola%==1 net localgroup u¾ytkownicy %user1% /add
if %rola%==2 net localgroup administratorzy %user1% /add
echo.
echo.
echo WYBIERZ CO DALEJ:
echo ==================
echo.
echo [1] - MODYFIKUJ UPRAWNIENIA KOLEJNEGO U½YTKOWNIKA
echo [2] - WRà DO MENU GàWNEGO
echo [3] - WYJD
echo.
set /p wybor_2=TWàJ WYBàR: 

if %wybor_2%==1 goto modupruser
if %wybor_2%==2 goto START1
if %wybor_2%==3 exit

:infouser
echo.
echo.
echo INFORMACJE O KONCIE U½YTKOWNIKA:
echo =================================
echo.
set /p user3=NAZWA U½YTKOWNIKA: 

if %user3%== goto info

:info
echo.
echo.
net user %user3%
echo.
echo.
echo WYBIERZ CO DALEJ:
echo ==================
echo.
echo [1] - WYSZUKAJ KOLEJNEGO U½YTKOWNIKA
echo [2] - WRà DO GàWNEGO MENU
echo [3] - WYJD
echo.
set /p opcja9=TWàJ WYBàR: 
echo.
echo.
if %opcja9%==1 goto infouser
if %opcja9%==2 goto START1
if %opcja9%==3 exit


:deluser
echo.
echo.
echo USUNI¨CIE KONTA U½YTKOWNIKA:
echo =============================
echo.
set /p user4=NAZWA U½YTKOWNIKA: 
%user4%== goto pytanie
echo.
echo.

:pytanie
echo CZY NAPEWNO CHCESZ USUN¤ KONTO U½YTKOWNIKA? ([Y]-TAK / [N]-NIE)
echo =================================================================
echo.
set /p wybor7=TWàJ WYBàR: 

if %wybor7%==y goto info2
if %wybor7%==Y goto info2
if %wybor7%==n goto deluser
if %wybor7%==N goto deluser

:info2
echo.
echo.
net user %user4% /del
echo.
echo.
echo WYBIERZ CO DALEJ:
echo ==================
echo.
echo [1] - WYSZUKAJ KOLEJNEGO U½YTKOWNIKA
echo [2] - WRà DO GàWNEGO MENU
echo [3] - WYJD
echo.
set /p opcja9=TWàJ WYBàR: 
echo.
echo.
if %opcja9%==1 goto deluser
if %opcja9%==2 goto START1
if %opcja9%==3 exit

:resetpass
echo.
echo.
echo RESET HASA DLA KONTA U½YTKOWNIKA:
echo ===================================
echo.
set /p resetpass=PODAJ NAZW¨ U½YTKOWNIKA: 
set /p rpass0=NOWE HASO: 
set /p rpass1=POWTàRZ HASO: 

if %rpass0%==%rpass1% goto resetpass2
if %rpass0% neq %rpass1% goto info3
echo.
echo.

:resetpass2
net user %resetpass% %rpass0%
echo.
echo.
echo WYBIERZ CO DALEJ:
echo ==================
echo.
echo [1] - WYSZUKAJ KOLEJNEGO U½YTKOWNIKA
echo [2] - WRà DO GàWNEGO MENU
echo [3] - WYJD
echo.
set /p opcja9=TWàJ WYBàR: 
echo.
echo.
if %opcja9%==1 goto resetpass
if %opcja9%==2 goto START1
if %opcja9%==3 exit


:info3
echo WPROWADZONE HASO Rà½NI SI¨ OD SIEBIE!
echo SPRàBUJ PONOWNIE...
echo.
echo.
goto resetpass


:delgpo
echo.
echo.
echo ZMIEã TYP KONTA U½YTKOWNIKA:
echo =============================
echo.
set /p nameuser11=PODAJ NAZW¨ U½YTKOWNIKA:
goto delgpo2
echo.
echo.
:delgpo2
echo WYBIERZ GRUP¨, Z KTàREJ CHCESZ USUN¤ U½YTKOWNIKA:
echo ===================================================
echo.
echo [1] - U½YTKOWNIK
echo [2] - ADMINISTRATOR
echo.
set /p rola33=TWàJ WYBàR: 

if %rola33%==1 net localgroup u¾ytkownicy %nameuser11% /del
if %rola33%==2 net localgroup administratorzy %nameuser11% /del
echo.
echo.
echo WYBIERZ CO DALEJ:
echo ==================
echo.
echo [1] - MODYFIKUJ UPRAWNIENIA KOLEJNEGO U½YTKOWNIKA
echo [2] - WRà DO MENU GàWNEGO
echo [3] - WYJD
echo.
set /p wybor_22=TWàJ WYBàR: 

if %wybor_22%==1 goto delgpo
if %wybor_22%==2 goto START1
if %wybor_22%==3 exit



echo Naci˜nij dowolny klawisz, aby zamkn¥† okno...
pause >nul

