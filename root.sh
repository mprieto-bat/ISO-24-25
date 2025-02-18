#!/bin/bash
# Script Ejercicio 1
# Manuel Prieto Luengo
# Fecha : 21/01/25

clear

if [ "$UID" -eq "0" ]; then
	echo "Usuario Root detectado"
else
	echo "No eres root"
	exit

fi

