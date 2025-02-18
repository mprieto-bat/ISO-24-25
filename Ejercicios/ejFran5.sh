#!/bin/bash
# Manuel Prieto
# Script 
# 28/01/25

clear

read -p "Nombre fichero: " fich

if [ -s $fich ]; then

	echo "El fichero indicado existe!"
	tam=$(du -hs $fich | cut -f 1)

	echo "$tam"

if [ -r $fich ];then
	echo "Tiene permisos de Lectura"
	exit
fi
if [ -w $fich ]; then
	echo "Tiene permisos de Escritura"
	exit
fi
if [ -x $fich ];then
	echo "Tiene permisos de Ejecucion"
	exit
fi

	fecha=$(date + "%d-%m-%Y")
	mv $fich $fecha.txt
else

	echo "No existe el fichero"

fi
