#!/bin/bash
#
#

clear

read -p " Introduce numero: " a
read -p " Introduce numero: " b

let c=$a+$b
echo SUMA $c

let d=$a-$b
echo RESTA $d

let e=$a/$b
echo DIVISION $e

let m=$a*$b
echo MULTIPLICACION $m
