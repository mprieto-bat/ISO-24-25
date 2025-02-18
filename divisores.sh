#!/bin/bash
# Autor : Manuel Prieto
# Script Divisores
# Fecha : 29/01/25

clear

num=1

	while [ $num -le $1 ];do

	res=$(($1%$num))
	if [ $res == 0 ];then
	echo $num
	fi
	num=$(($num+1))


done
