
#!/bin/bash
# Autor : Manuel Prieto
# Fecha : 03/02/25
# Script Agenda.sh

clear

while true;do

	echo "a) Añadir una entrada"
	echo "b) Buscar por dni"
	echo "c) Ver agenda completa"
	echo "d) Eliminar todas las entradas de la agenda"
	echo "e) Finalizar"

	read -p "Escoja una opcion: " opt


case $opt in

	a)
		clear
		read -p "Introduce un Dni: " dni

		if grep "^$dni:" agenda.txt > /dev/null;then

		echo "Usuario ya existente"
 
		else

		read -p "Introduce Dni: " adni
		read -p "Introduce Nombre" anom
		read -p "Introduce Apellidos" ape
		read -p "Intorudce tu localidad" alocal

		echo $adni:$anom:$ape:$alocal >> agenda.txt
		fi

	;;

	b)
		clear

		read -p "Introduce un dni: " edni

		if grep "^$edni:" agenda.txt > /dev/null; then

		 linea=$(grep "^$edni:" agenda.txt)
   		 nom=$(echo "$linea" | cut -d ":" -f2) 
		 apel=$(echo "$linea" | cut -d ":" -f3)
   		 loca=$(echo "$linea" | cut -d ":" -f4)

   		 echo "La persona con DNI número $edni es: $nom $apel, y vive en $loca."
		else

		echo "Error: DNI no encontrado"

		fi

	;;

	c)
		if [ -s agenda.txt ];then

		cat agenda.txt

		else

		echo "Agenda vacia"

		fi
	;;

	d)
		echo "" > agenda.txt
	;;

	e)
		echo "Saliendo...."
		break

	;;

	*)
		echo "Parametros invalidos"
	;;


	esac


done
