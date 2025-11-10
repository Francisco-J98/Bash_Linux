#!/bin/bash

echo "Introduzca nombre carpeta de la que quiera contar sus elementos."
read carpeta

DIR="$carpeta"

if [ ! -d "$DIR" ];
then
	echo "Directorio ${DIR} no existe."

else
	cant =$(find ${DIR} -type f | wc -l)
fi

echo "En este directorio hay $cant elemento(s)."