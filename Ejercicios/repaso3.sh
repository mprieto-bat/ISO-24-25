#!/bin/bash

if [ $# -ne 2 ];then
	echo "Numero de parametros incorrecto"
	exit
fi


if [ ! -f $2 ];then
	echo "$2 No es un fichero"
	exit
fi

head -n $1 $2 | tail -1 
