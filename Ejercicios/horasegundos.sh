#!/bin/bash
# Autor : Manuel Prieto
# Script Segundos hasta las 14:00
# Fecha : 12/02/25

clear

while true;do

 hor=$(date "+%H")
 min=$(date "+%M")
 sleep 1
 echo 
 if [ $hor -eq 14 ] && [ $min -eq 00];then
	echo "Ya son las 14:00!" 
	break
 fi
done
