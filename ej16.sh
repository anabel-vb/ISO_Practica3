# Recibe como parámetro una extensión y hace un reporte con 2 columnas, el nombre de usuario y la cantidad
# de archivos que pos# ee con esa extensión. Se guarda el resultado en un archivo llamado reporte.txt
# $1 = recibe la extensión
#!/bin/bash
if [ $# -eq 1 ]; then
	#usuarios= $(cat /etc/passwd | cut -d: -f1)
	for usuario in $(cat /etc/passwd | cut -d: -f1); do
		cant= $(sudo find /home -user ${usuario} -name "*$1" | wc -l)
		if [ cant -ne 0 ]; then
			echo "USUARIO: $usuario | CANTIDAD: $cant" >> $HOME/reporte.txt
		fi
	done
fi
