# Calculadora que ejecuta las 4 operaciones básicas: +, -, *, /.
# Funciona recibiendo la operación y los números como parámetros.
# !/bin/bash
if [ $# -ne 3 ]; then
	exit 1
#elif [ "$2" = "*" ]; then 
#	echo "$1 $2 $3 = $(expr $1 \* $3)"
else	
	echo "$1 $2 $3 = $(expr $1 "$2" $3)"
fi
