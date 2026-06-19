#!/bin/bin/bash
#Exemplo de media com while

roda=true
echo $roda

while $roda
do
    #pede a nota1
    echo -n "Digite uma nota:"
    read nota1

    #pede a nota2
    echo -n "Digite outra nota:"
    read nota2

    #calcula a media
    media=$(echo "scale=2; ($nota1 + $nota2) / 2" | bc)

    if [ $(echo "$media >= 6.0" | bc) -eq 1 ]; then
        echo "Aluno Aprovado!"
    else
        echo "Aluno Reprovado!"
    fi

    #pede ao usuario se deseja continuar
    echo "Deseja continuar? [S/N]"
    read opcao

    if [ $opcao = "s" ] || [ $opcao = "S" ]; then
        roda=true
    else
        roda=false
    fi
done