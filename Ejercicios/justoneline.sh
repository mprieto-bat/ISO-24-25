#!/bin/bash
# Manuel Prieto

clear

#COMPROBACIONES

if [ ! -d $1 ];then
	echo "Directorio no encontrado!"
	exit
fi

if [ $# -ne 3 ];then
	echo "Numero de parametros incorrecto"
	exit
fi

if [ ! -s $1 ];then
	echo "Directorio vacio"
	exit
fi

cont=0
for i in $1/$2*;do
lineas=$(cat $i | wc -l)

if [ $lineas -eq 1 ];then
	echo $i
	cat $i 
	cont=$((cont+1))
fi

if [ $cont -eq $3 ];then
	break
fi

done

