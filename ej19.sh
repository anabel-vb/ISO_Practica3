# Programa de "Menu de comandos amigable con el usuario". Al ser invocado muestra un menú con la selección
# para cada uno de los scripts creados en la práctica. Las instrucciones de como proceder se muestran junto
# con el menú. El menú permanece activo hasta que se seleccione Salir.
# !/bin/bash
select opciones in Calculadora Ej13a_Numeros_1-100 Ej13b_Menu Ej13c_Existe_archivo Ej17_May_Min Salir
do 
	case $opciones in
		"Calculadora")
			echo "Ingrese un numero"
			read valor1
			echo "Ingrese un operador"
			read operador
			echo "Ingrese otro numero"
			read valor2
			./ej12c.sh $valor1 $operador $valor2
			;;
		"Ej13a_Numeros_1-100")
			./ej13a.sh
			;;
		"Ej13b_Menu")
			./ej13b.sh
			;;
		"Ej13c_Existe_archivo")
			echo "Ingrese nombre del archivo"
			read archivo
			./ej13c.sh $archivo
			;;
		"Ej17_May_Min")
			./ej17.sh
			;;
		"Salir")
			exit 0
			;;
		esac
done
