#!/bin/bash

## Script imprime data atual nos formatos abaixo
# Dia/Mês/Ano:
# Dia: 
# Mês:
# Ano:

# Dia/Mês/Ano
data=$(date +%d/%m/%Y)
echo -e "\nData: $data"

## DIA
# %/* remove valores a direita da última barra (ano)
# ${_%/*} remove da saída da expansão de variáveis anterior o valor após a barra (mês) e atribui a variável dia
# Ou seja: remove ano e posteriormente o mês
: ${data%/*}; dia=${_%/*}
echo "Dia: $dia"

## MÊS
# #*/ remove valores anteriores a barra (dia)
# ${_%/*} remove da saída do comando anterior a último valor após a barra (ano) e atribui a variável mes
: ${data#*/}; mes=${_%/*}
echo "Mês: $mes"

## ANO
# #*/ remove valores antes da primeira barra (dia) e, posteriormente, com esta saída, remove o mês e joga em variável
: ${data#*/}; ano=${_#*/}
echo "Ano: $ano"

