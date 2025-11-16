# Solicita 2 números, los lee de entrada standard e imprime la multiplicación,
# suma, resta y cuál es el mayor de los números leídos.
# !/bin/bash
echo "Ingrese un número"
read num1
echo "Ingrese otro número"
read num2
echo "$num1 * $num2 = $(expr $num1 \* $num2)"
echo "$num1 + $num2 = $(expr $num1 + $num2)"
echo "$num1 - $num2 = $(expr $num1 - $num2)"
if [ $num1 -gt $num2 ]; then
	echo "El mayor de los números ingresados es: $num1"
else
	echo "El mayor de los números ingresados es: $num2"
fi
