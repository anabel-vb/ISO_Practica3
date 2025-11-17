# Imprime en pantalla los nombres de los archivos que se encuentran en el directorio actual,
# intercambiando minúsculas por mayúsculas, además de eliminar la letra a (mayúscula o
# minúscula)
#!/bin/bash
ls | tr -d '[Aa]' | tr '[:upper:][:lower:]' '[:lower:][:upper:]'
