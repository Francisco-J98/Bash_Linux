#!/bin/bash

echo "Introduzca nombre de usuario: "
read nombre
echo "el UID de $nombre es: "
id -u $nombre