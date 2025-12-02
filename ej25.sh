# Recibe una cantidad desconocida de parámetros al momento de su invocación (se valida que se reciba al menos uno). 
# Cada parámetro representa la ruta absoluta de un archivo o directorio en el sistema.
# Se itera por todos los parámetros recibidos, y solo para aquellos en posiciones impares se verifica si existe.imprimiendo e
# pantalla que tipo de objeto es (archivo o directorio).
# Informa la cantidad de archivos o directorios inexistentes.

# !/bin/bash

if [ $# -lt 1 ]; then
	exit 1
else
	parametros=("$@")
	inexistentes=0 
	for (( i=1; i<$#; i=i+2 )); do
		elem=${parametros[$i]}
		if [ -e $elem ]; then
			if [ -d $elem ]; then
				echo "$elem es un directorio"
			elif [ -f $elem ]; then
				echo "$elem es un archivo"
			fi
		else
			let inexistentes++
		fi
	done
	echo "Cantidad de archivos o directorios inexistentes: $inexistentes"
fi
exit 0
