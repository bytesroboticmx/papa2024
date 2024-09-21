#!/bin/bash

# Crear la carpeta raíz
mkdir Papa

# Función para generar nombres aleatorios
generate_random_name() {
    tr -dc A-Za-z0-9 </dev/urandom | head -c 8
}

# Crear 5 carpetas con nombres aleatorios dentro de "Papa"
for i in {1..5}; do
    folder_name=$(generate_random_name)
    mkdir "Papa/$folder_name"
    
    # Crear 3 subcarpetas dentro de cada carpeta generada
    for j in {1..3}; do
        subfolder_name=$(generate_random_name)
        mkdir "Papa/$folder_name/$subfolder_name"
    done
done

echo "Estructura de carpetas creada con éxito."
