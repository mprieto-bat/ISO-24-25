#!/bin/bash
# Autor : Manuel Prieto L
# Script Five Or More
# Fecha : 11/02/2025

clear

if [ $# -ne 2 ]; then
    echo "Parámetros inválidos"
    exit
fi

arch=$(ls -A "$2" | wc -l)

if [ $arch -eq 0 ]; then
    echo "Directorio $2 vacío"
    exit
fi

for i in "$2"/*.txt; do
  
    lineas=$(wc -l < "$i")
    echo "$lineas"

    if [ $lineas -ge 5 ]; then
        echo "$i"
        echo "$i" >> "$1"
     
        pal=$(wc -w < "$i")
        echo "El fichero original tiene $pal palabras" > "$1.q"
        cat "$i" >> "$i.q"
    fi
done

num=$(wc -w < "$1")
echo "El fichero $1 tiene $num palabras" >> "$1"
