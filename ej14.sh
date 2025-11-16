# Renombra los archivos de un directorio pasado como parámetro, agregandole
# CADENA atras o adelante.
# $1 = directorio
# $2 = -a (agrega al final) o -b (agrega al comienzo)
# $3 = cadena
# !/bin/bash
if [ &# -eq 3 ]; then
	if [ -d $1 ]; then
		if [ $2 = "-a" || $2 = "-b" ]; then	
			posActual= pwd 
			cd $1 
			archivos = 'ls'
			cantArchivos= $(#archivos[])
			for i in {1..$cantArchivos}; do
					if [ -f archivos[i] ]; then
						if [ $2 = "-a"; then
			      			mv archivos[i] "archivos[i]$3"
						else
							mv archivos[i] "$3archivos[i]"
						fi
					fi
			done
			cd $posActual
		fi
	fi
fi	
