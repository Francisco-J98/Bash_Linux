#!/bin/bash

opcion=s

while [ $opcion == "s" ] || [ $opcion == "S" ];
do
	echo "Introduce la ruta del fichero: "
	read ruta

	FILE=$ruta

	if [ -f "$FILE" ];
	then
		var=`ls -l "$FILE" | cut -c 2-4`
		if [ $var == "r-x" ] || [ $var == "r--" ] || [ $var == "--x" ] || [ $var == "---" ] ;
		then
			echo "No es posible añadir contenido al fichero."

		else
			echo "Escribe lo que quieras añadir al fichero: "
			read mensaje
			echo $mensaje >> $ruta
		fi
	else
		echo "El fichero no existe o su ruta no ha sido introducida correctamente."
	fi
	echo "¿Seguir realizando operaciones? (únicamente 's/S' e INTRO para continuar, con cualquier otra cosa saldrá del programa.)"
	read opcion
done