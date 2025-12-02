# Verifica cada 10 segundos si un usuario se ha logueado al sistema (el nombre del usuario
# será pasado por parámetro). Cuando el usuario finalmente se loguee, el programa muestra el
# mensaje 'USUARIO XXXX logueado en el sistema" y sale
#!/bin/bash
if [ $# -ne 1 ]; then
	exit 1
fi
# verificar que el usuario exista (iterar sobre el /etc/passwd)
while [ true ]; do
	if  who | grep -q "$1" ; then
		break
	fi
	sleep 10
done
echo "USUARIO $1 logueado en el sistema"

