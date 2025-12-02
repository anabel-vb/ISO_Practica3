# Definir 2 vectores del mismo tamaño e implementar la suma elemento a elemento 
# entre ambos vectores.
# !/bin/bash

sumar() {
	echo "La suma de los elementos de la posición $1 de los vectores es $((${vector1[$1]} + ${vector2[$1]}))"
}

#version de sumar que suma todas las posiciones del vector
sumarTodo(){
	vectorRes=()
	for (( i=0; i < ${#vector1[*]}; i++)); do
		vectorRes[${i}]=$(expr ${vector1[$i]} + ${vector2[$i]})	
	done
	echo "Vector de resultados: ${vectorRes[*]}"
}

# Otra versión, pero sin guardar los resultados. Imprime en cada iteración el resultado de la suma en esa posición.

sumarTodo2() {
	for (( i=0; i < ${#vector1[*]}; i++)); do
		echo "La suma de los elementos de la posición $i de los vectores es $((${vector1[i]} + ${vector2[i]}))"
	done
}
vector1=(1 80 65 35 2 )
vector2=( 5 98 3 41 8 )

sumar 4
sumarTodo
sumarTodo2
