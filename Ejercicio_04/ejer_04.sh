#!/bin/bash

opcion=0
while [  $opcion -ne 4 ];
do
	echo "----------MENU----------"
	echo "|1) Backup Descargas.  |"
	echo "|2) Borrar contenido.  |"
	echo "|3) Recuperar backup.  |"
	echo "|4) Salir.             |"
	echo "|______________________|"
	echo "Introduzca una opción (1~4):"
	read opcion
	
	if [ "$opcion" -eq 1 ];
	then
		echo "Introduzca nombre de usuario: "
		read usuario
		DIR="/home/$usuario/"

		if [ ! -d $DIR ];
		then
			echo "La ruta que has introducido no existe o está mal escrita."
		else
			DIR="/home/$usuario/backup"
			
			if [ ! -d $DIR ];
			then
				cd
				mkdir backup
				echo "Creando carpeta copia de seguridad..."
				echo "Creando backup..."
				tar -czvf copia.tar.gz /home/$usuario/
				mv copia.tar.gz /home/$usuario/backup
				cd /home/$usuario/backup
				fecha=`date '+%Y%m%d'`
				echo $fecha
				mv copia.tar.gz descargas$fecha.tar.gz
				echo "Copia de seguridad creada satisfactoriamente."
				cd			
			else
				echo "La carpeta backup ya existe."
				echo "Creando backup..."
				tar -czvf copia.tar.gz /home/$usuario/
				mv copia.tar.gz /home/$usuario/backup
				cd /home/$usuario/backup
				fecha=`date '+%Y%m%d'`
				echo $fecha
				mv copia.tar.gz descargas$fecha.tar.gz
				echo "Copia de seguridad creada satisfactoriamente."
			fi
		fi

	elif [ "$opcion" -eq 2 ];
	then
		echo "Introduzca nombre de usuario: "
		read usuario
		DIR="/home/$usuario/"

		if [ ! -d $DIR ];
		then
			echo "La ruta que has introducido no existe o está mal escrita."
		else
			cd /home/$usuario/Descargas
			rm -r *
			echo "Borrando contenido de Descarga..."			
		fi

	elif [ "$opcion" -eq 3 ];
	then
		mes=0
		while [ $mes -lt 1 ] || [ $mes -gt 12 ];
		do
			echo "Introduzca mes (1~12): "
			read mes
		done

		if [ $mes -eq 3 ] || [ $mes -eq 6 ] || [ $mes -eq 9 ] || [ $mes -eq 11 ];
		then
			dia=0
			while [ $dia -lt 1 ] || [ $dia -gt 30 ];
			do
				echo "introduzca día (1~30): "
				read dia
			done
		elif [ $mes -eq 1 ] || [ $mes -eq 4 ] || [ $mes -eq 5 ] || [ $mes -eq 7 ] || [ $mes -eq 8 ] || [ $mes -eq 10 ] || [ $mes -eq 12 ];
		then
			dia=0
			while [ $dia -lt 1 ] || [ $dia -gt 31 ];
			do
				echo "introduzca día (1~31): "
				read dia
			done
		else
			dia=0
			while [ $dia -lt 1 ] || [ $dia -gt 28 ];
			do
				echo "introduzca día (1~28): "
				read dia
			done
		fi


		if [ $mes -eq 1 ] || [ $mes -gt 1 ] && [ $mes -lt 10 ];
		then
			mes="0$mes"
		fi

		if [ $dia -eq 1 ] || [ $dia -gt 1 ] && [ $dia -lt 10 ];
		then
			dia="0$dia"
		fi

		anio=0
		while [ $anio -lt 1 ] || [ $anio -gt 9999 ];
		do
			echo "introduzca año (1~9999): "
			read anio
		done

		if [ $anio -eq 1 ] || [ $anio -gt 1 ] && [ $anio -lt 10 ];
		then
			anio="000$anio"
		elif [ $anio -eq 10 ] || [ $anio -gt 10 ] && [ $anio -lt 99 ];
		then		
			anio="00$anio"
		elif [ $anio -eq 100 ] || [ $anio -gt 100 ] && [ $anio -lt 999 ];
		then		
			anio="0$anio"		
		fi

		fecha="descargas${anio}${mes}${dia}"

		echo "Introduzca nombre de usuario: "
		read usuario
		DIR="/home/$usuario/"

		if [ ! -d $DIR ];
		then
			echo "La ruta que has introducido no existe o está mal escrita."
		else
			cd /home/$usuario/backup
			FILE="$fecha"

			if [ ! -f $FILE ];
			then
				tar -xzvf $fecha.tar.gz
			else
				echo "No existe el archivo para descomprimir."
			fi			
		fi		

	else
		echo "Ha salido del programa."
	fi
done