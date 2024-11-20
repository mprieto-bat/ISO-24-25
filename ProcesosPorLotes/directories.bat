@echo off
REM Script Entregable Directorios
REM By: Manuel Prieto Luengo
REM 20/11/24

echo 1. Fichero con Nombre a gusto de usuario.
echo 2. Tree carpeta Usuarios
echo 3. Mostrar archivos con extension .txt
echo 4. Crea los directorios alfredoff, marinapg y ramonam en tu directorio actual
echo 5. Copia tu cintenido de la carpeta Usuarios a Escritorio

set /p option="Elige: 	"

if %option% == 1 goto uno
if %option% == 2 goto dos
if %option% == 3 goto tres
if %option% == 4 goto cuatro
if %option% == 5 goto cinco

:uno
echo 1. Fichero con Nombre a gusto de usuario
set /P dir="Nombre del directorio: "
echo > %dir%.txt
pause
exit

:dos
echo 2. Tree de Usuarios
tree %USERPROFILE%
pause
exit

:tres
echo 3. Mostrar archivos con extension txt
dir > *.txt
pause 
exit

:cuatro
echo 4. Crea los directorios alfredoff, marinapg y ramonam en tu directorio actual
mkdir alfredoff
mkdir ramonam
mkdir marinapg
pause 

:cinco
echo 5. Copia tu contenido de la carpeta Usuarios a escritorio 
copy %USERPROFILE% C:\Users\Prueba\Desktop
pause
exit