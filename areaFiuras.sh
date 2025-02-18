#!/bin/bash
# Autor : Manuel Prieto
# Script Geometria


echo "Menu de opciones"
echo "1 - Cicrculo"
echo "2 - Cuadrado"
echo "3 - Circulo"

read -p "Area que quieres cacular " op

case $op in

	1)
		read -p "Dime el radio " r

		pi=3
		res=$(($pi*$r*$r))
		echo "El area del circul es $res"
	;;

	2)

		read -p "Dime el lado " l
		res=$(($l*$l))
		echo "El area del cuadrado es $res"
	;;


	3)

	read -p "Dime la base " b
	read -p "Dime la altura " a
	res=$((0.5*$b*$a))
	echo  "El area del triangulo es $res"

	;;	

	*)
		echo "Opcion invalida"
	;;

esac
