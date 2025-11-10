#!/bin/bash

echo "Introduzca nombre de fichero: "
read texto

FILE="$texto"

if [ ! -f "$FILE" ];
then
	echo "Fichero $FILE creado."
	touch $texto
else
	echo "El fichero $FILE ya existe."
fi

echo "¿A qué carpeta lo quieres copiar?"
read carpeta

DIR="$carpeta"

if [ ! -d "$DIR" ];
then
	mkdir ${DIR}
	echo "Directorio ${DIR} creado."

else
	echo "El directorio ${DIR} ya existe."
fi

cp $FILE ${DIR}
ls $carpeta