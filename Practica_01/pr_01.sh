#!/bin/bash

DIR=$1
palabra=$2

if [ -n "$1" ];
then
	if [ -n "$2" ] && [ -n "$3" ];
	then
		echo "Hay parámetros de más."

	elif [ -n "$2" ];
	then
		if [ -d ${DIR} ];
		then
			cd ${DIR}

			for dir in ${DIR}/*
			do
				grep -l $2 $dir
			done
		else
			echo "El directorio no existe o has introducido mal la ruta."
		fi

	else

		echo "Solo hay un parámetro."
	fi
else
	echo "Error al introducir parámetros."
fi