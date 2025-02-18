#!/bin/bash
# Autor Manuel Prieto
# Script Parametros 2
# 28/01/25

clear

if [ $# -eq 0 ]; then

	echo "No hay parametros "
	exit
fi


if [ -d $1 ];then 

	echo "Es una carpeta"
	exit

else

	echo "No existe"
fi

if [ -f $1 ]; then

	echo "Es un fichero"
	exit
fi

