@echo off
COLOR 0A
MODE con:cols=120 lines=60


cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo   FIX Servicio Impresiàn
echo ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎ
echo ³                                          ³
echo ³ [ 10%% ] ²²²Û°°°°°°°°°°°°°°°°°°°°°°°°°°°° ³
echo ³      Deteniendo Servicio Spooler ...     ³
echo ³                                          ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo                 [ github.com/redztonelabs ]
echo.

net stop spooler 
timeout -t 2 >> nul

cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo   FIX Servicio Impresiàn
echo ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎ
echo ³                                          ³
echo ³ [ 40%% ] ²²²²²²²²²²²²Û°°°°°°°°°°°°°°°°°°° ³
echo ³     Eliminando *.shd                     ³
echo ³                                          ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo                 [ github.com/redztonelabs ]
echo.
del /Q /F %systemroot%\\system32\\spool\\printers\\*.shd 
timeout -t 2 >> nul

cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo   FIX Servicio Impresiàn
echo ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎ
echo ³                                          ³
echo ³ [ 70%% ] ²²²²²²²²²²²²²²²²²²²²Û°°°°°°°°°°° ³
echo ³     Eliminando *.spl                     ³
echo ³                                          ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo                 [ github.com/redztonelabs ]
echo.
del /Q /F %systemroot%\\system32\\spool\\printers\\*.spl
timeout -t 2 >> nul

cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo   FIX Servicio Impresiàn
echo ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎ
echo ³                                          ³
echo ³ [ 95%% ] ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²Û°° ³
echo ³     Iniciando servicio Spooler           ³
echo ³                                          ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo                 [ github.com/redztonelabs ]
echo.
net start spooler
timeout -t 2 >> nul

