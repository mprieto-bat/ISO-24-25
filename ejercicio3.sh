#!/bin/bash
# Script Ejercicio3
# Manuel Prieto Luengo
# 22/01/25

clear

read -p "Nombre usuario " nom
read -s -p "Contraseña " key
echo


if [ $nom == "pepe" ];then
	 if[ $key == "qwerty" ];then

	echo "Bienvenido"


else

	echo "Fallo"

fi

else 

	echo "Error. Usuario incorrecto "

fi
