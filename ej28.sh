# Agrega a un arreglo todos los archivos del directorio /home que terminen en .doc.

# !/bin/bash

# Recibe el nombre de un archivo. Imprime el archivo en pantalla si se encuentra en el arreglo.
# Caso contrario imprime el mensaje de error "Archivo no encontrado" y devuelve como valor de retorno 5
verArchivo() {
	i=1
	encontrado="false"
	while [ "$encontrado" = "false" && i < ${#archivos[*]} ]; do		
		if [ ${archivos[i]} = $1 ]; then
			echo $1
			encontrado="true"
		fi
		let i++
	done
	if [ "$encontrado" = false ]; then
		echo "Archivo no encontrado"
		return 5
	fi
}

# Imprime la cantidad de archivos del /home con terminación .doc
cantidadArchivos() {
	echo "Cantidad de archivos del /home con terminación .doc: ${#archivos[*]}"
}

# Recibe el nombre de un archivo.
# Consultar al usuario si quiere eliminar el archivo lógicamente.
# Si el usuario responde SI, elimina el elemento solo del arreglo.
# Si el usuario responde NO, elimina el archivo del arreglo y también del FileSystem.
# Se valida que el archivo exista en el arreglo. En caso de no existir, imprime el mensaje de error
# "Archivo no encontrado" y devuelve como valor retorno 10.
borrarArchivo() {
	echo "Desea eliminar el archivo lógicamente? Si/No"
	read rta
	verArchivo $1
	if [ $? -eq 5]; then
		echo "Archivo no encontrado"
		return 10
	else
		i=1	
		while [ "$encontrado" = "false" && i < ${#archivos[*]} ]; do		
			if [ ${archivos[i]} = $1 ]; then				
				unset ${archivos[i]}
				encontrado="true"
				if [ "$rta" = "No" ]; then
					rm $1
				fi
			fi
			let i++
		done
	fi
}
archivos=($(find $HOME -name "*.doc"))
