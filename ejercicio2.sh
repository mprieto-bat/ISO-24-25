#!/bin/bash
# Script Pag23 ej2
# Manuel Prieto
# 22/01/25

clear

carp=$1

if [ $# -eq 0 ]; then 

	read -p "Nombre carpeta: " carp

fi

if [ -d $carp ] && [ -w $carp ]; then

	echo "Bienvenido" > $carp/hola.txt

fi
