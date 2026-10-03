# Script de Bash que automatice la creación y eliminación de una estructura de carpetas para la Pratica 1.
# Imprime el mensaje de inicio
echo "Ejecutando script de creacion y eliminacion de una estructura de carpetas"

# Comando para moverse a la carpeta de usuario
cd ~

# Verifica si existe la carpeta Practica1 y si no existe la crea.
if [ ! -d "Practica1" ]; then
    mkdir Practica1
    echo "Se creo la carpeta Practica1."
else
    echo "La carpeta Practica1 ya existe."
fi

# Comando para entrar a la carpeta Practica1
cd Practica1

# Comando para crear la carpeta Letras y los archivos txt.
mkdir Letras
touch Letras/a.txt Letras/b.txt Letras/c.txt

# Realiza la misma funcion que el bloque anterior pero con la carpeta Integrantes.
mkdir Integrantes
touch Integrantes/DiazRomeroCarlosJoaho.txt Integrantes/FloresIzquierdoRicardo.txt Integrantes/HernandezMoralesSamuel.txt

# Comando para mostrar un diagrama de la estructura de Practica1 con sus subcarpetas y archivos.
echo "Estructura de Practica1:"
tree .

# Comandos para regresar a la carpeta de usuario y eliminar la carpeta Practica1.
cd ~
rm -r Practica1
echo "Se elimino la carpeta Practica1."
