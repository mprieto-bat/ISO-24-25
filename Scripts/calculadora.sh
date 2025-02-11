#!/bin/bash
# Autor : Manuel Prieto
# Fecha : 04/02/25
# Script Calculadora.sh

clear

if [ $# -ne 2 ];then

	echo "Parametros invalidos"
	exit

	fi



	if [ -f $1 ];then

	echo "El fichero ya existe"
	exit

	fi

cont=0
	while [ $cont -lt $2 ] ; do 

	read -p "Operacion Op1 Op2: " op op1 op2

	case $op in


	S)
		res=$(($op1+$op2))
	echo "$op1 + $op2 = $res" 
	echo "$op | $op1 + $op2 = $res" >> $1
	cont=$(($cont+1))
	;;

	R)

		res=$(($op1-$op2))
	echo "$op1 - $op2 = $res" 
	echo "$op | $op1 + $op2 = $res" >> $1
	cont=$(($cont+1))
	;;

	M)
		res=$(($op1*$op2))
	echo "$op1 * $op2 = $res"
	echo "$op | $op1 + $op2 = $res" >> $1
	cont=$(($cont+1))
	;;

	D)

		res=$(($op1/$op2))
	echo "$op1 / $op2 = $res" 
	echo "$op | $op1 + $op2 = $res" >> $1
	cont=$(($cont+1))
	;;

	  X)
                echo "Saliendo.."
                exit
        ;;


	*)
		echo "Parametro invalido"
	;;




esac

done
	echo "Fichero: "
	cat $1
