#!/bin/bash

echo "Mostrando años bisiestos del Siglo XXI:"

for i in {2000..2099};
do

	var=$(($i%4))
	var2=$(($i%100))
	var3=$(($i%400))

	if [ $var -eq 0 ] && [ $var2 -ne 0 ] || [ $var3 -eq 0 ];
	then	
		echo "El año $i es bisiesto."
	fi
done