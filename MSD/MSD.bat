@echo off
color 9
Title Microsoft Defender
"%ProgramFiles%\Windows Defender\MpCmdRun.exe"
cls
echo            * Microsoft Defender *
echo.
echo ��������������������������������������������
echo ��������������������������������������������
echo ��������������������������������������������
echo ��������������������������������������������
echo ��������������������������������������������
echo ������������������������������������ܰ������
echo ������������������������������������?������
echo ������������������������������������߰������
echo ����������������������������������۰�۰�����
echo �������������������������������������߰�����
echo �����������������������������������۰�������
echo ����������������������������������?��������
echo ����������������������������������۰��������
echo ����������������������������������?��������?
echo ����������������������������������?��������?
echo ��������������������������������?����������
echo ��������������������������������?����������
echo ��������������������������������۰����������
echo �۰���?����������?�������������۰���������?
echo ?�۰�������������?������������??����������?
echo ������۰��������۰����������???����������?
echo �����߰��������߰�����������???����������?
echo ��������?����?������������???����������?
echo ���������������۰������������۰�?����������?
echo ��������?�۰���۰�����������������ܱ�������
echo ����������?�����ܰ�������������������������
echo ��������?�۱�������������������������������
echo ����������?�۱�����������������������������?
echo ��������������������������������������������
echo ��������������������������������������������
echo.
echo.
echo --- SKANOWANIE ANTYWIRUSOWE ---
echo.
:MENU
echo [1] SZYBKIE SKANOWANIE.
echo [2] PE�NE SKANOWANIE.
echo [3] AKTUALIZACJA BAZY WIRUS�W.
echo [4] WYJD�
echo.
echo.
echo.
set /p wybor=TW�J WYB�R: 
cls
if %wybor%==1 goto fastscan
if %wybor%==2 goto fullscan
if %wybor%==3 goto update
if %wybor%==4 goto exit
:fastscan
echo SZYBKIE SKANOWANIE:
echo ---------------------
echo.
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
echo.
echo.
echo Naci�nij dowolny klawisz, aby kontynuowa?..
pause >nul
cls
goto MENU
pause

:fullscan
echo PE�NE SKANOWANIE:
echo ---------------------
echo.
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2
echo.
echo.
echo Naci�nij dowolny klawisz, aby kontynuowa?..
pause >nul
cls
goto MENU
pause

:update
echo AKTUALIZACJA BAZY:
echo ---------------------
echo.
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -signatureupdate
echo.
echo.
echo Naci�nij dowolny klawisz, aby kontynuowa?..
pause >nul
cls
goto MENU
pause

:exit
exit