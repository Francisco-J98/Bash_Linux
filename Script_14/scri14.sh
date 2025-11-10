#!/bin/bash

echo "Introduzca nombre de fichero: "
read texto

FILE="$texto"

if [ ! -f "$FILE" ];
then
	echo "Fichero $FILE no existe."
else
	var=`wc -l $FILE | cut -d " " -f 1`

	if [ $var -lt 25 ];
	then
		cat $FILE
	fi

fi