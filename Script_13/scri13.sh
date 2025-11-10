#!/bin/bash

var=`cat /etc/passwd | grep $1 | cut -d ":" -f 6`
if [ -d $var ] && [ ! -z $var ];
then
	echo "$1 existe como usuario."
	ls $var
	
else
	echo "$1 no existe como usuario."
fi