
#!/bin/bash
# Autor : Manuel Prieto
# Ejercicio 2 Fran
# Fecha : 28/01/25

clear

if [ $# -ne 2 ]; then

	echo "Numero de parametros incorrecto"
	exit
fi

if [ : -f $2]; then

	echo "El segundo no es un fichero"
	exit

fi


head -n $1 $2 | tail -n 1



