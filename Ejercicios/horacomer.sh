#!/bin/bash
# Manuel Prieto
# Script Hora de Comer
# Fecha : 21/01/25



hora=$(date +"%H:%M")
	echo $hora

if [ $hora -ge 14 ] && [ $hora -lt 16 ]; then
	echo "Hora de comer"
else

	echo "No es hora de comer"
fi
