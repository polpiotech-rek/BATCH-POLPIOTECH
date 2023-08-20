@echo off
Title TWORZENIE NOWEGO KATALOGU

echo TWORZENIE KATALOGU:
echo ------------------------
echo.
:MENU
set /p "katalog=Podaj nazw� katalogu: "
echo.
echo [1] UTW�RZ FOLDER NA PULPICIE.
echo [2] UTW�RZ FOLDER W KATALOGU DOKUMENTY.
echo [3] UTW�RZ FOLDER W KATALOGU MICROSOFT ONEDRIVE.
echo [4] UTW�RZ KATALOG W LOKALIZACJI (WPROWAD� R�CZNIE).
echo.
set /p "wybor=Wybierz opcje: "
if %wybor%==1 goto pulpit
if %wybor%==2 goto dokumenty
if %wybor%==3 goto onedrive
if %wybor%==4 goto sciezka2

:pulpit
md "C:\Users\UserPiotrek\Desktop\%katalog%"
goto info

:dokuemnty
md "C:\Users\UserPiotrek\Documents\%katalog%"
goto info

:onedrive
md "C:\Users\UserPiotrek\OneDrive\%katalog%"
goto info

:sciezka2
set /p "sciezka=Wprowad� �cie�k�: "
md %sciezka%\%katalog%
goto info

cls

:info
echo Utworzono nowy katalog...
echo.
echo Nazwa katalogu: %katalog% 
echo Lokalizacja: %sciezka%...
echo.
echo.
echo Czy kontynuowa�?
echo -------------------

echo [1] TAK.
echo [2] NIE.
echo.
set /p wybor2=TW�J WYB�R:
echo.
echo.
echo. 
if %wybor2%==1 goto MENU
if %wybor2%==2 goto exit13
echo.
echo.
:exit13
exit
echo.
echo Naci�nij dowolny klawisz, aby zamkn�� okno konsoli...
pause >nul
