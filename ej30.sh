# Implementación de la estructura de datos Set (conjunto de valores únicos). Solo almacena una vez cada valor, aún cuando
# se intente agregar el mismo valor más de una vez.

#!/bin/bash

# inicializa el set vacío
initialize (){
	set=()
}

# inicializa el set con un conjunto de valores que recibe como argumento (debe validar que se reciba al menos uno)
initialize_with () {
	if [ $# -ge 1 ]; then
		set=($*)
	fi
}

# chequea si el conjunto contiene un valor recibido como argumento. 
# Devuelve 0 si no lo contiene y 1 si lo contiene.
contains() {
	if [ $# -ne 1 ]; then
		return 2
	fi
	existe="false"
	i=0
	while [ $existe="false" && i<${#set[*]} ]; do
		if [ ${set[i]} -eq $1 ]; then
			$existe="true"
		fi
		let i++
	done
	if [ $existe="false" ]; then
		return 0
	else
		return 1
	fi
}

# agrega un valor al conjunto, el cual recibe como argumento. No agrega elementos repetidos.
add () {
	if [ $# -ne 1 ]; then
		exit 1
	fi
	contains $1
	if [ $? -eq 0 ]; then
		set+=$1
	fi
}

# elimina uno o más valores del conjunto, los cuales recibe como argumentos. Si la operación elimina al menos un valor, se 
# considera un éxito
remove () {
	if [ $# -lt 1 ]; then
		exit 1
	fi
	
}

# imprime todos los elementos del conjunto, de a uno por línea
print () {
#	for (( i=0; i<${#set[*]}; i++ )); do
#		echo "${set[i]}"
#	done
	for elem in ${set[*]}; do
		echo $elem
	done
}

# imprime los elementos del conjunto de a uno por línea y ordenados alfabéticamente.
print_sorted() {
	aux=($(print $set | sort))
	print $aux
}

select opciones in initializa initialize_with add remove contains print print_sorted salir
do
	case $opciones in
		"initialize")
		initialize
		;;
		"initialize_with")
		echo "Ingresar valor/es"
		read valor
		initialize_with $valor
		print $set
		;;
		"add")
		echo "Ingresar valor a agregar"
		read valor
		add $valor
		print $set
		;;
		"remove")
		echo "Ingresar valor a eliminar"
		read valor
		remove $valor
		print $set
		;;
		"contains")
		echo "Ingresar valor"
		read valor
		contains $valor
		;;
		"print")
		print
		;;
		"print_sorted")
		print_sorted
		;;
		"salir")
		exit 0
		;;
		*)
		;;
	esac
done
