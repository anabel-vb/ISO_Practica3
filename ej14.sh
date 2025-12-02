# Renombra los archivos de un directorio pasado como parámetro, agregandole
# CADENA atras o adelante.
# $1 = directorio
# $2 = -a (agrega al final) o -b (agrega al comienzo)
# $3 = cadena
# !/bin/bash
if [ ! $# -eq 3 ]; then
	exit 1
fi
if [ ! -d $1 ]; then
	exit 2
fi
if [ "$2" != "-a" ] && [ "$2" != "-b" ]; then
	exit 3
fi

for archivo in $(ls $1) ; do
	if [ -f $archivo ]; then
		if [ $2 = "-a"; then
			mv $1/$archivo "$1/$archivo$3"
			else
			mv $1/$archivo "$1/$3$archivo"
		fi
	fi
done

