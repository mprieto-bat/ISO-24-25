#!/bin/bash
# Manuel Prieto
# Script Pares

clear

num=0

while [ "$num" -lt 101 ];do

	echo $num
	num=$(($num+2))

done

# CON RESTO

while [ $num -lt 101 ]; do
	res=$(($num%2))

if [ $res -eq 0 ];then

	echo "$num"
fi

	num=$(($num+1))







