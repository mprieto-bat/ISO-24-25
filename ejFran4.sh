#!/bin/bash
# Autor Manuel Prieto
# Fecha 28/01/25
# Script Usuarios

clear

if [ $UID -ne 0 ]; then
	echo "No eres root"
	exit
fi

read -p "Introduce nombre de usuario " user

if grep "^$user:" /etc/passwd>/dev/null ; then

	echo "Pulsa 1 para bloquear usuario"
	echo "Pulsa 2 para desbloquear usuario"

	read -p "Escoje una opcion "	op

	case $op in 

	1)
		usermod -L $user

	;;

	2)
		usermod -U $user

	;;

	*)
		echo "Parametro no valido"
	;;

esac
	
else

	useradd $user
	echo "$user creado correctamente!"
fi
