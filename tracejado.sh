#!/bin/bash

## Dicas:
# %s especifica uma string de saída
# %b especifica uma string de saída e aceita escapes (exemplo: \n)
# %d espeifica um inteiro (integer)
# %f especifica um valor flutuante (float)


# Enunciado
echo -e "\nMensagem entre linhas tracejadas\n"

# Atribuicao de 13 espaços e traço em variáveis (flag -v)
printf -v espaco %13s            
printf -v traco '\e(0\x71\e(B'  # geração de traço (colocar "\n" para acrescentar espaço entre tracejado)

# Imprimindo mensagem - utilização de expansão de variáveis "${ }"
echo ${espaco// /$traco}
#echo $saudacao
printf "%s\n" "Hello Tux!!!"
echo ${espaco// /$traco}

