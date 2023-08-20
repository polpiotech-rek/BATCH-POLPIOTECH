@echo off
title POLPIOTECH - MICROSOFT

echo ZAPIS INFORMACJI O PROCESACH DO PLIKU (.HTML)
echo ----------------------------------------------
echo.
WMIC /OUTPUT:C:\ListaProcesow.html process get Caption,Processid,Commandline /format:htable
echo PROCES ZAKO„CZONY!
echo.
exit