#!/bin/bash

#
# Autor: Arthur M. Dobler
# Busca a palavra indicada no diretório informado
# $1: Caminho | $2: palavra.
#
word=$(echo $2)

if cd $1
then
    count=$(grep -r $word | wc -l)
    if test $count -gt 0 
    then
        grep -nro --color=auto $word        
        echo "Qtd. de arquivos: $(grep -nro --color=auto $word | wc -l)"
    else
        echo Pode comitar!
    fi
else
    echo O caminho não existe.
fi
