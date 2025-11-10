#!/bin/bash

echo "Introduzca nombre de fichero: "
read texto

FILE="$texto"

if [ ! -f "$FILE" ];
then
	echo "Fichero $FILE no existe."
else
	var=`wc -l $FILE | cut -d " " -f 1`

	if [ $var -eq 0 ];
	then
		echo "Ahora no está vacío.">$FILE
		cat $FILE
	else
		cat $FILE
	fi
	
fi