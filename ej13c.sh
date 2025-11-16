# Recibe como parámetro el nombre de un archivo e informa si existe o no. 
# Si existe indica si es un director o un archivo.
# Si no existe, crea un directorio con el nombre recibido como parámetro
# !/bin/bash
if [ $# -eq 1 ]; then
	if [ -e $1 ]; then
		if [ -d $1 ]; then
			echo "$1 es un directorio"
		elif [ -f $1 ]; then
			echo "$1 es un archivo"
		fi
	else
		mkdir $1
	fi

fi
exit 0

