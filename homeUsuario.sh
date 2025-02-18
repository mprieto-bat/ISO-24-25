#!/bin/bash
# Script Home
# Manuel Prieto L
# 22/01/25

clear

if [ -d $HOME/"Mis Cosas" ]; then

echo "Existe"

else

	mkdir $HOME/"mis cosas"	

	echo "Carpeta creada con exito"
fi
