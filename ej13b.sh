# Muestra las opciones: Listar (lista el contenido del directorio actual),
# DondeEstoy (muestra la ruta del directorio donde me encuentro ubicado)
# QuienEsta (muestra los usuarios conectados al sistema)
# !/bin/bash
select opcion in Listar DondeEstoy QuienEsta Salir 
do
	case $opcion in
	"Listar")
		ls
		;;
	"DondeEstoy")
		pwd
		;;
	"QuienEsta")
		users
		;;
	"Salir")
		exit 0
		;;
	esac
done
