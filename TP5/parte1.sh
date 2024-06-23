#! /bin/bash

echo "Ingrese el primer numero: "
read num1
echo "Ingrese el segundo numero: "
read num2
echo "Ingrese la operacion que desea realizar (s para suma, r para resta, m para multiplicacion o d para division): "
read op 
case $op in
    "s"|"S")
        resultado=$(( num1 + num2 ))
        echo "El resultado de la operacion es $resultado"
    ;;
    "r"|"R")
        resultado=$(( num1 - num2 ))
        echo "El resultado de la operacion es $resultado"
    ;;
    "m"|"M")
        resultado=$(( num1 * num2 ))
        echo "El resultado de la operacion es $resultado"
    ;;
    "d"|"D")
        if [ $num2 -ne 0 ];
        then 
            resultado=$(( num1 / num2 ))
            echo "El resultado de la operacion es $resultado"
        else 
            echo "La division por cero no esta definida"
        fi
    ;;
    *)
        echo "La opcion ingresada es incorrecta"
    ;;
esac
