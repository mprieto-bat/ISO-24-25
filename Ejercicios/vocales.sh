#!/bin/bash
# Manuel Prieto
# Script Vocales
# 27/05/25

read -p "Introduce letra: " letra

case $letra in

	a|e|i|o|u)

	echo "Es vocal"

	*)

	echo "Es consonante"

	esac
