# Muestra por pantalla los números 1 a 100 y sus cuadrados.
# !/bin/bash
echo Del 1 al 100:
for i  in {1..100}; do
	echo $i
done
echo Del 1 al 100 al cuadrado:
for i in {1..100}; do
	echo $(expr "$i^2" | bc)
done
