#!/bin/bash

echo "Introduzca número: "
read num

if [ $num -gt 0 ];
then
	echo "$num es mayor que 0."

else
	echo "$num es menor o igual que 0."
fi