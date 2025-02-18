#!/bin/bash
# Script Ips
# Manuel Prieto L
# 22/01/25

clear

read -p "Introduzca IP: " ip

	ip1=$(echo $ip | cut -d "." -f 1)
	ip2=$(echo $ip | cut -d "." -f 2)


if [ $ip1 -eq 127 ];then

	echo "Ip Local"
	exit
fi

if [ $ip1 -eq 10 ];then

	echo "Ip privada clase A"
	exit
fi

if [ $ip -eq 172 ] && [ $ip2 -ge 16 ] && [ $ip2 -le 31 ];then
	
	echo "Ip privada clase B"
	exit
fi

if [ $ip1 -eq 192 ] && [ $ip2 -eq 168 ]; then

	echo "Ip privada clase C"
 	exit
fi

if [ $ip1 -eq 169 ] && [ $ip2 -eq 254 ]; then

	echo "IP privada"
	exit
fi
