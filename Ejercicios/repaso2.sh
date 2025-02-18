#!/bin/bash
# Manuel Prieto
# Script Repaso 2
# Fecha : 12:04

clear

if [ $# -ne 1 ];then
	echo "Parametros incorrectos"
	exit
fi

if [ ! -f $1 ];then

	echo "$1 No es un fichero!"
	exit
fi

for i in /home/*;do

	echo $i
	if [ -d $i ];then
	cp $1 $i
        fi
done
	
