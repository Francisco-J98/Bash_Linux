#!/bin/bash

echo "Introduzca ruta del fichero/directorio: "
read ruta

FILE="$ruta"
DIR="$ruta"

if [ -f "$FILE" ];
then
	echo "Mostrando contenido del fichero $FILE."
	cat $FILE

elif [ -d "$DIR" ];
then
	echo "Mostrando contenido del directorio ${DIR}"
	ls ${DIR}

else
	echo "Parámetro incorrecto."
	echo "$FILE no es un fichero."
	echo "${DIR} no es un directorio."
fi