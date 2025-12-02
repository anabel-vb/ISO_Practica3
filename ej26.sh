# Implementa a través de funciones las operaciones básicas sobre arreglos.
#!/bin/bash

# Crea un arreglo vacío llamado array
inicializar() {
	array=()
}

# Agrega al final del arreglo el parámetro definido
agregar_elem(){
	array+=($1)
}

# Elimina del arreglo el elemento que se encuentra en la posición recibida como parámetro. Valida
# que se reciba una posición válida.
eliminar_elem(){
	if [ $1 -lt ${#array[*]} ]; then
		unset array[$1]
	fi
}

# Imprime la longitud del arreglo en pantalla
longitud() {
	echo "${#array[*]}"
}

# Imprime todos los elementos del arreglo en pantalla
imprimir() {
	echo ${array[*]}
}

# Crea un arreglo con longitud <parametro1> y en todas sus posiciones asigna el valor <parametro2>
inicializar_Con_Valores(){
	if [ $# -eq 2 ]; then
		inicializar
		for(( i=0; i < $1; i++)); do
			agregar_elem $2
		done
	fi	
}
select opciones in inicializar agregar_elem  inicializar_Con_Valores imprimir longitud eliminar_elem salir
do
	case $opciones in
		"inicializar")
		inicializar
		;;
		"agregar_elem")
		echo "Ingresar elemento a agregar"
		read elem
		agregar_elem $elem
		imprimir
		;;
		"inicializar_Con_Valores")
		echo "Ingresar longitud del arreglo"
		read long
		echo "Ingresar valor"
		read valor
		inicializar_Con_Valores $long $valor
		imprimir
		;;
		"imprimir")
		imprimir
		;;
		"longitud")
		longitud
		;;
		"eliminar_elem")
		echo "Ingresar posición del elemento a eliminar"
		read pos
		eliminar_elem $pos
		imprimir
		;;
		"salir")
		exit 0
		;;
		*)
		echo
		;;	
	esac
done
