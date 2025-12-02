# Recibe como parámetro el nombre de un directorio. Valida que exista y de no existir termina con código de error 4.
# Si el directorio existe, cuenta la cantidad de archivos que tiene para los cuales el usuario que ejecuta el script tiene 
# permiso de lectura y escritura e informa esos valores.
# Si tiene subdirectorios, no se procesan y no se tienen en cuenta para la suma.

# !/bin/bash

if [ $# -eq 1 && -d $1 ]; then
	cd $1
	archivos=$(ls $1)
	cant=0
	for (( i=0; i<${#archivos[*]}; i++ )); do
		if [ -r ${archivos[i]} && -w ${archivos[i]} && !-d ${archivos[i]} ]; then
			cant++
		fi
	done	
	echo 
else
	exit 4
fi	
