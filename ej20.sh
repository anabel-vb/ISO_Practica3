# Simula una pila implementando las funciones push, pop, length y print.
# !/bin/bash

# $1 es la pila
# $2 es un valor
push (){
	if [ $# -eq 2 ]; then
		$1+= $2
	fi
}

# Recibe la pila, elimina el último elemento
# $1 es la pila
pop (){
	if [ $# -eq 1 ]; then
		unset $1[${#$1[*]}]
	fi
}

# Recibe la pila y devuelve el tamaño de la pila.
# $1 es la pila
length (){
	local pila=$1
	if [ $# -eq 1 ]; then 
		echo ${#pila[*]}
	fi	
}

# Recibe la pila e imprime todos sus elementos
# $1 es la pila
print () {
	if [ $# -eq 1 ]; then
		echo ${$1[*]}
	fi
	return 0
}

pila=()

push $(pila) 5
push $(pila) 1
push $(pila) 12
push $(pila) 0
push $(pila) 8

pop $(pila)
pop $(pila)
pop $(pila)

length $(pila)
echo $?

print $(pila)

exit 0
