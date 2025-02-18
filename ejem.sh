#!/bin/bash
# Script Ejemplo 
# Manuel Prieto
# 21/01/25

clear

if [ -d /home ]; then
	echo "Existe la carpeta"
fi

if [ -f /etc/passwd ]; then
	echo "Es un fichero"
fi
