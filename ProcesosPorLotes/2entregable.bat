@echo off
rem Script Media Numeros
rem Manuel Prieto Luengo
rem 18/11/24

set suma=%1+ %2+ %3

set /A Media=(%1 + %2 + %3)/3

echo La media de %1, %2 y %3 es %media%