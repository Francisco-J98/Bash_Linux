#!/bin/bash
opcion=0
while [  $opcion -ne 4 ];
do
        echo "---------MENU---------"
        echo "|1) Mostrar doble.   |"
        echo "|2) Par o impar.     |"
        echo "|3) Mostrar cuadrado.|"
        echo "|4) Salir.           |"
        echo "|____________________|"
        echo "Introduce una opción (1~4): "
        read opcion
 
        if [ $opcion -eq 1 ];
        then
                echo "Introduce un número: "
                read num
                var=$(($num * 2))
                echo "El doble de $num es: $var."
        elif [ $opcion -eq 2 ];
        then
                echo "Introduce un número: "
                read num
                if [ $(( num % 2 )) -eq 0 ];
                then
                        echo "$num es par."
                else
                        echo "$num es impar."
                fi
        elif [ $opcion -eq 3 ];
        then
                echo "Introduce un número: "
                read num
                potencia=$(($num*$num))
                echo "$num ^2 = $potencia."
        else
                echo "Ha salido del programa."
        fi
done