#!/bin/bash
# Autor : Manuel Prieto
# Script Contraseñas

clear

read -s -p "Introduzca contraseña: " pass
echo

read -s -p "Repita de nuevo su contraseña: " pass1
echo
	while [ $pass != $pass1 ];do
clear
		echo "El pass no coincide! Intentalo de nuevo" 

		read -s -p "Introduza contraseña: " pass
echo
		read -s -p "Repita de nuevo su contraseña: " pass1
echo

done
clear

		echo "Contraseña Correcta!"
