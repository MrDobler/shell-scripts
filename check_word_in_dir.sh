#!/bin/bash

#
# Autor: Arthur M. Dobler
# Busca a palavra indicada no diretório informado
# $1: Caminho | $2: Palavra.
#

WORD=$(echo $2)

# Tem endereço?
[ -z "$1" ] && echo Informe um endereço válido. && exit 0
# Tem palavra?
[ -z "$2" ] && echo Informe um texto válido. && exit 0

if cd $1 2> /dev/null; then
    count=$(grep -r $WORD | wc -l)
    if [ $count -gt 0 ]; then
        grep -nro --color=auto $WORD
        echo "+------------------------"
        echo "|Qtde. encontrados: $(grep -nro --color=auto $WORD | wc -l)"
    else
        echo Nada encontrado.
    fi
else
    echo O endereço não existe.
fi
