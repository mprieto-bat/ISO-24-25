#!/bin/bash
# Autor : Manuel Prieto
# Script Ejercicio Fran 1
# Fecha : 27/01/25

clear

echo "1 = Ver directorio actual"
echo "2 = Carpeta"
echo "3 = Nombre fichero"
echo "4 = Letra Vocal/Consonante"
echo "5 = Salir del Menu"

read -p "Elige una opcion " opc

case $opc in

	1)
		pwd
		exit
	;;

	2)

	read -p "Nombre Carpeta: " carp
		if [ -d $carp ]; then

			ls $carp

		else
			echo "La carpeta mecionada no existe"
		fi
	;;

	3)

	read -p "Nombre archivo " arch
	if [ -d $arch ];then

	echo "Error!"
	
		else

	touch $arch.txt
	date >> $arch.txt
	
	fi
	;;

	4)
	read -p "Introduce letra " letra
	if [[ "$letra" =~ ^[aeiou]$ ]]; then
	
		echo "Vocal"

	else

		echo "Consonante"
	fi 

	;;

	5)
		exit

	;;

	*)
		echo "Error! Caracter no valido"

esac
