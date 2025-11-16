# Solicita 2 números, los lee de entrada standard e imprime la multiplicación,
# suma, resta y cuál es el mayor de los números leídos.
# !/bin/bash
if [ $# -ne 2 ]; then
	exit 1
else
	echo "$1 * $2 = $(expr $1 \* $2)"
	echo "$1 + $2 = $(expr $1 + $2)"
	echo "$1 - $2 = $(expr $1 - $2)"
	if [ $1 -gt $2 ]; then
		echo "El mayor de los números ingresados es: $1"
	else
		echo "El mayor de los números ingresados es: $2"
	fi
fi

