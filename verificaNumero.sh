#!/bin/bash

# Entrada de número
read -p "Digite um número entre 1 e 10: " num

## Verificação de valor de entrada
(( num < 1 || num > 10 )) && {
    echo "Número $num é inválido!"
    exit 1
}

