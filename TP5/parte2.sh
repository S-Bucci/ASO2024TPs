#! /bin/bash

echo "Ingrese un nombre para ver su edad estimada: "
read nombre
api=$(curl -s "https://api.agify.io/?name=${nombre}")
edad=$(echo $api | jq -r '.age')
if [ "$edad" = "null" ];
then
    echo "No se ingreso un nombre o no fue encontrado"
else
    echo "La edad estimada es $edad años"
fi