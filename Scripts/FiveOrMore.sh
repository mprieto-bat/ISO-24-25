#!/bin/bash
# Autor : Manuel Prieto L
# Script Five Or More
# Fehca : 11/02/2025

clear

if [ $# -ne 2 ];then

	echo "Parametros invalidos"
	exit
fi

arch=$(ls $2 | wc -l)

if [ $arch -eq 0 ];then

	echo "Directorio $2 vacío"
	exit

fi

for i in $2/*.txt;do

	lineas=$( cat $i | wc -l)
	echo "$lineas"

	if [ $lineas -ge 5 ];then
	echo $i
	echo $i >> $1
	pal=$(cat $1 | wc -w)
	echo "El fichero original tiene $pal palabras" > $1.q
	cat $i >> $i.q

	fi
done

	num=$(cat $1 | wc -w)
	echo "El fichero $1 tiene $num palabras" >> $1


