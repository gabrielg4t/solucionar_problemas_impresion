@echo off
COLOR 0A
MODE con:cols=120 lines=60


cls
echo ������������������������������������������ͻ
echo   FIX Servicio Impresi�n
echo ��������������������������������������������
echo �                                          �
echo � [ 10%% ] ���۰��������������������������� �
echo �      Deteniendo Servicio Spooler ...     �
echo �                                          �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]
echo.

net stop spooler 
timeout -t 2 >> nul

cls
echo ������������������������������������������ͻ
echo   FIX Servicio Impresi�n
echo ��������������������������������������������
echo �                                          �
echo � [ 40%% ] ������������۰������������������ �
echo �     Eliminando *.shd                     �
echo �                                          �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]
echo.
del /Q /F %systemroot%\\system32\\spool\\printers\\*.shd 
timeout -t 2 >> nul

cls
echo ������������������������������������������ͻ
echo   FIX Servicio Impresi�n
echo ��������������������������������������������
echo �                                          �
echo � [ 70%% ] ��������������������۰���������� �
echo �     Eliminando *.spl                     �
echo �                                          �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]
echo.
del /Q /F %systemroot%\\system32\\spool\\printers\\*.spl
timeout -t 2 >> nul

cls
echo ������������������������������������������ͻ
echo   FIX Servicio Impresi�n
echo ��������������������������������������������
echo �                                          �
echo � [ 95%% ] �����������������������������۰� �
echo �     Iniciando servicio Spooler           �
echo �                                          �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]
echo.
net start spooler
timeout -t 2 >> nul

