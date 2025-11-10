#!/bin/bash

echo "Introduzca un número: "
read num1
echo "Introduzca otro número: "
read num2

if [ $num1 -gt $num2 ];
then
	result=$(($num1+$num2))
	echo "$num1 + $num2 = $result."

elif [ $num1 -lt $num2 ];
then
	result=$(($num2-$num1))
	echo "$num2 - $num1 = $result."
else
	echo "$num1 y $num2 son iguales"
fi