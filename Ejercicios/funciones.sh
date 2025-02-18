#!/bin/bash
clear

function suma() {
    res=$(($1 + $2))
    echo $res
}

function rest() {
    res=$(($1 - $2))
    echo $res
}

function mult() {
    res=$(($1 * $2))
    echo $res
}

function div() {
    if [ $2 -eq 0 ]; then
        echo "Error: División por cero no permitida."
    else
        res=$(($1 / $2))
        echo $res
    fi
}

while true; do
    echo "S = SUMA"
    echo "R = RESTA"
    echo "D = DIVISIÓN"
    echo "M = MULTIPLICACIÓN"

    read -p "Dime una opción S / R / D / M: " op
    read -p "Dime un número: " num1
    read -p "Dame otro número: " num2

    case $op in
        S)
            suma $num1 $num2
            ;;
        R)
            rest $num1 $num2
            ;;
        D)
            div $num1 $num2
            ;;
        M)
            mult $num1 $num2
            ;;
        *)
            echo "Opción incorrecta, intenta de nuevo."
            ;;
    esac
done

