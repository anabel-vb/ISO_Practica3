# Agrega en un arreglo todos los nombres de los usuarios del sistema pertenecientes al grupo users. También puede recibir como parámetro:
# "-b n": retorna el elemento de la posición n del arreglo si el mismo existe. Caso contrario, un mensaje de error.
# "-l": devuelve la longitud del arreglo.
# "-i": imprime todos los elementos del arreglo en pantalla.

# !/bin/bash

buscarElem(){
	if [ ${#array[*]} -gt $1 ]; then
		echo ${array[$1]}
	else
		echo "ERROR: Posición inválida"
	fi
}

longitud(){
	echo ${#array[*]}
}

imprimir(){
	echo $array
}

if [ $# -ge 1 ]; then
	array=($(cat /etc/group | grep "users" | cut -f4 -d:))
	if [ "$1" = "-l" ]; then
		longitud
	elif [ $1 = "-i" ]; then
		imprimir
	elif [ "$1" = "-b" ]; then
		if [ $# -eq 2 ]; then
			buscarElem $2
		fi
	fi
	else
		exit 1
fi
