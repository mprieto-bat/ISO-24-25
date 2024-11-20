@echo off
REM Script Entregable Opciones
REM Manuel Prieto Luengo
REM 20/11/2024

set /P option="Introduzca 1 para un archivo txt, 2 para un bat: "
if %option% EQU %1 goto txt
if %option% EQU %2 goto bat

:txt
set /p nombre="Introduzca un nombre para el archivo:  "
echo >%nombre%.txt
pause
exit

:bat
set /P nombre="Introduzca un nombre para el archivo:  "
echo >%nombre%.bat
pause
exit