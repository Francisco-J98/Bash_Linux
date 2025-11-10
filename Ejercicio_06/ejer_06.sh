#!/bin/bash

echo "Introduzca la ruta: "
read ruta

DIR=$ruta

if [ -d ${DIR} ];
then
	cd $ruta

	for dir in $ruta/*
	do
		if [ -d $dir ];
		then
			echo "$dir es un directorio."
		else
			echo "$dir es un fichero."
		fi

	done
else
	echo "El directorio no existe o se ha introducido erróneamente."
fi