# Recorre un arreglo compuesto por números e imprime en pantalla solo los numeros pares y cuenta los impares. 
# Al finalizar el recorrido informa en pantalla el resultado.
# !/bin/bash

procesarNum () {
	local cantImpar=0
	for n in ${num[*]}; do
		if [ $(($n % 2)) -eq 0 ]; then
			echo $n
		else
			let cantImpar++
		fi
	done
	echo "Cantidad de impares: ${cantImpar}"
}
num=(5 3 2 4 11 8)
procesarNum

