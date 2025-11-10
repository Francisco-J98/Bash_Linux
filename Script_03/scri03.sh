#!/bin/bash
echo "Introduzca un número: "
read var1
echo "Introduzca otro número: "
read var2
echo "Introduzca un número más: "
read var3

suma=$(($var1+$var2+$var3))
producto=$(($var1*$var2*$var3))

echo "El resultado de la suma es: $suma."
echo "El resultado de la multiplicación es: $producto."