@echo off
Title --- KONSOLA ---
:opcjaPentli
cls
echo                   ===================================
echo                   :   Czy utworzy† nowy dokument?   :
echo                   ===================================
echo                   :   -- [1] TAK!                   :
echo                   :   -- [2] NIE, WYLOGUJ!          :
echo                   :   -- [0] NIE, ZAMKNIJ PROGRAM!  :
echo                   ===================================
echo.
                
set /p opcja=TWàJ WYBàR:  

if %opcja%==1 goto menu
if %opcja%== 2 goto wyloguj
if %opcja%== 0 goto wyjscie

:menu
cd C:\Users\UserPiotrek\OneDrive\Piotrek\Projekty - Python\Projekt-016\TNPY
cls
python POLPIOTECH-WINDOWS.py
pause

:wyloguj
taskkill /IM python.exe /F
cd "C:\Users\UserPiotrek\OneDrive\Piotrek\Projekty - Python\Projekt-016"
cls
python GUI.py
pause
pause >nul

:wyjscie
taskkill /IM python.exe /F