#!/bin/bash

echo "Introduzca la ruta:"
read ruta
DIR="$ruta"
if [ -d "$DIR" ];
then

	opcion=0
	while [  $opcion -ne 4 ];
	do
	        echo "----------MENU----------"
		echo "|1) Mostrar contenido. |"
		echo "|2) Contar elementos.  |"
		echo "|3) Ampliar permisos.  |"
		echo "|4) Salir.             |"
	        echo "|______________________|"
		echo "Introduzca una opción (1~4):"
		read opcion
		if [ "$opcion" -eq 1 ];
		then
			ls "${DIR}"
		elif [ "$opcion" -eq 2 ];
		then
			var=`ls "${DIR}" | wc -l`
			echo "Esta carpeta tiene $var elemento(s)."
		elif [ "$opcion" -eq 3 ];
		then
			chmod 777 "${DIR}"
			echo "Los permisos han sido modificados."
		else
			echo "Ha salido del programa."
		fi
	done
else
	echo "El directorio no existe."
fi