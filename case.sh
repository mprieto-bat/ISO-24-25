#!/bin/bash
# Manuel Prieto
# 27/01/2025
# Script CASE 

clear

echo "Pulsa 1 para Crear una carpeta"
echo "Pulsa 2 si quieres borrar una carpeta"

read -p "Opcion elegida " opc

case $opc in

	1)
		read -p "Nombre Carpeta: " nom
		mkdir $nom
	;;

	2)		
		read -p "Nombre carpeta: " $rcarp
		rmdir $rcarp
	;;

	*)
		echo "Opcion no Valida"
	;;
esac


