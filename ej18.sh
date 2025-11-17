# Verifica cada 10 segundos si un usuario se ha logueado al sistema (el nombre del usuario
# será pasado por parámetro). Cuando el usuario finalmente se loguee, el programa muestra el
# mensaje 'USUARIO XXXX logueado en el sistema" y sale
#!/bin/bash
if [ $# -eq 1 ]; then
	while [ who | grep -q $1 -eq 1 ]; do
		sleep 10
	done
	echo "USUARIO $1 logueado en el sistema"
fi
