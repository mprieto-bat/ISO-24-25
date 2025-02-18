#!/bin/bash
# Autor : Manuel Prieto 
# Script Users.sh
# Fecha : 11/02/2025

clear

IFS=:
uids=$1
dia=$(date $x $X $Y)

if [ $# -ge 1 ];then
	num=$1
else
	num=1000
fi
count=0
while read us x uid gid d h shell;do

	if [ $uid -ge $num ];then
	count=$(($count+1))
	echo "$us - $uid"
	fi
	
done < /etc/passwd
echo "Total de usuarios: $count"
