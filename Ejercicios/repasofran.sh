#!/bin/bash

clear

if [ $# -ne 1 ]; then
    echo "Parámetro incorrecto"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Fichero no encontrado!"
    exit 1
fi

while true; do
    echo "1 - Número alumnos presentados"
    echo "2 - Número de aprobados"
    echo "3 - Número de suspensos"
    echo "4 - Pedir un nombre y mostrar resultado"
    echo "5 - Salir"
    echo "==============================================================================="
    read -p "Escoge una opción: " opt
clear
   
  case $opt in
        1)
            wc -l "$1" | cut -d " " -f 1
        ;;

        2)
   
	num=$( grep "aprobado" $1 | wc -l)
        	echo "Hay $num aprobados"
	;;
        3)
	clear
	   num=$(grep "suspenso" $1 | wc -l)
		echo "Hay $num suspensos"

        ;;
        4)
            read -p "Introduzca un nombre de usuario: " nom
	if ! grep "$nom" $1;then
	echo "$nom no encontrado"
	else
	per=$(grep "$nom" $1 | cut -d " " -f 2)	
	echo $per
	fi
        ;;
        5)
            echo "Saliendo..."
            break
        ;;
        *)
            echo "Opción no válida"
        ;;
    esac
done
