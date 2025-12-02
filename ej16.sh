# Recibe como parámetro una extensión y hace un reporte con 2 columnas, el nombre de usuario y la cantidad
# de archivos que posee con esa extensión. Se guarda el resultado en un archivo llamado reporte.txt
# $1 = recibe la extensión
#!/bin/bash
if [ $# -ne 1 ]; then
	exit 1
fi
	#usuarios= $(cat /etc/passwd | cut -d: -f1)
	for usuario in $(cat /etc/passwd | cut -d: -f1); do
		if [ -d /home/$usuario ]; then
			cant=$(find /home/$usuario -name "*$1" | wc -l)
			echo "USUARIO: $usuario | CANTIDAD: $cant" >> $HOME/reporte.txt
		else
			echo "USUARIO: $usuario | CANTIDAD: $cant" >> $HOME/reporte.txt
		fi
	done

