#!/bin/bash

# Script de prueba de parametros largos y flags
# Uso: ./params.sh -n "valentina" -a 27 -g "F" -s false

while getopts n:a:g:s: flag
do
  case "${flag}" in
    n) name=${OPTARG};;
    a) age=${OPTARG};;
    g) gender=${OPTARG};;
    s) single=${OPTARG};;
  esac
done

# Si no se pasaron por argumentos, buscar en variables de entorno
name=${name:-$NAME}
age=${age:-$AGE}
gender=${gender:-$GENDER}
single=${single:-$SINGLE}

echo "Name: $name"
echo "Age: $age"
echo "Gender: $gender"
echo "Single: $single"
