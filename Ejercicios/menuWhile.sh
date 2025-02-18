#!/bin/bash
# Manuel Prieto
# Script Menu

clear

echo "1 - Listado agenda "
echo "2 - Buscar contacto"
echo "3 - Nuevo contacto"
echo "4 - Borrar contacto"
echo "5 - Salir"

read -p "Escoja: " num

while [ $num -gt 0 ];do 

case $num in

	1)

		echo "Has pulsado 1"

	;;

	2)

		echo "Has pulsado 2"

	;;

	3)

		echo "Has pulsado 3"

	;;

	4)

		echo "Has pulsado 4"
		break
	;;


	5)
		exit
	;;
	

	*)

		echo "Parametros no Validos"
	;;

esac
done
