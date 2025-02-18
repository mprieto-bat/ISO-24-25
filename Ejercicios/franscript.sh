#!/bin/bash
# Script Francisco (Pedir fichero)
# Manuel Prieto L

#Pedir dichero a usuario y si existe ver tamaño

clear

read -p "Nombre fichero " f

if [ -f $f ]; then
	tam=$(du -hs $fich | cut -f 1)
	
	echo "El tamaño del fichero $fich es $tam"
else
	echo "No es un fichero"
fi
