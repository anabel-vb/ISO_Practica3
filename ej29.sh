# Mueve todos los programas del directorio actual (archivos ejecutables) hacia el subdirectorio "bin"
# del directorio HOME del usuario actualmente logueado.
# Imprime en pantalla los nombres de los que mueve e indica cuántos ha movido o que no ha movido ninguno.
# Si el directorio "bin" no existe, es creado.

# !/bin/bash

programas=$(ls)
movidos=0
mkdir -p ${HOME}/bin

for (( i=0; i < ${#programas[*]}; i++  )); do
	if [ -x ${programas[$i]} ]; then
       			mv ${programas[$i]} ${HOME}/bin	
       			echo ${programas[$i]}
			let movidos++
	fi
done
echo "Cantidad de archivos movidos: $movidos"
