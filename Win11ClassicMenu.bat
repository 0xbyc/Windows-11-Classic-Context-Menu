@echo off

title windows 11 ��ԭ����˵�(windows 11 Classic Context Menu)
mode con cols=80 lines=20


::https://www.sordum.org/14479/windows-11-classic-context-menu-v1-1/

:MENU
echo -------------------------------------------
echo 1.��ԭwin10�ϲ˵���Restore Classic Context Menu�� & echo.
echo 2.��ԭwin11Ĭ�ϲ˵���Restore Default Context Menu�� & echo.
echo 3.������Դ��������Restart explorer.exe�� & echo.
echo 4.�˳���exit�� & echo.
echo Author�� byc  Date�� 2022-02-16 & echo.
echo -------------------------------------------



set "select="
set /p select= �������֣����س�������Type 1, 2, 3, or 4 then press ENTER�� :
if "%select%"=="1" (goto CLASSIC)
if "%select%"=="2" (goto DEFAULT)
if "%select%"=="3" (goto RESTARTEXPLORER)
if "%select%"=="4" (goto EXIT) 
cls & goto MENU


:CLASSIC
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f
goto restartExplorer

:DEFAULT
reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f


:RESTARTEXPLORER
echo ��������Դ��������ʹ������Ч���������������enter any key to restart explorer.exe let set worked��& pause>nul
taskkill /f /im explorer.exe & start explorer.exe

:EXIT
echo ��������˳� & pause > nul & exit