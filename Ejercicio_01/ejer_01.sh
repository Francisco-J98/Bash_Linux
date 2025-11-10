#!/bin/bash
echo "Introduzca ruta del fichero: "
read ruta

FILE="$ruta"

if [ -f "$FILE" ];
then
	var=`ls -l "$FILE" | cut -c 2-4`
	
	if [ $var == "rw-" ] || [ $var == "r--" ] || [ $var == "---" ] ;
	then
		chmod 700 $FILE
		echo "Los permisos han sido modificados."

	else
		echo "Este fichero ya tiene permisos de Ejecución."
	fi

else
	echo "El fichero no existe."
fi