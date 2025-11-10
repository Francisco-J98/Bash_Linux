#!/bin/bash

if [ $# -eq 1 ];
then
	potencia=$(($1*$1))
	echo "$1 elevado a 2 = $potencia."

elif [ $# -eq 2 ];
then
	producto=$(($1*$2))
	echo "$1 x $2 = $producto."
else
	echo "número de parámetros incorrectos."
fi