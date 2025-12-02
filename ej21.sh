# Funcion productoria: multiplica todos los numeros de un arreglo
#!/bin/bash
num=(10 3 5 7 9 3 5 4)

productoria() {
	res=1
	for ((i=0; i<${#num[*]}; i++)); do
		res=$(expr $res \* "${num[i]}") 
	done
	echo $res
}

productoria

