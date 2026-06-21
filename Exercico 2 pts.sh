#!/bin/bash
# Exercicio valendo 2 pontos

# vetores
declare -a vetnome
declare -a vetmedia
declare -a vetaprova

# funcao apropriada para float
media() {	
    echo "scale=2; ($1 + $2) / 2" | bc
}

# loop
aprova=""
roda=true
qtd=0

while [ "$roda" = true ]
do
    # pede o nome do aluno:
    echo -n "Digite o nome do aluno: "
    read nome

    # pede uma nota:
    echo -n "Digite a primeira nota: "
    read nota1

    # pede outra nota:
    echo -n "Digite a segunda nota: "
    read nota2

    # calculando a media
    res=$(media $nota1 $nota2)

    # Verifica se a media float é maior que 6
    if [ $(echo "$res >= 6.0" | bc) -eq 1 ]; then
        aprova="Aprovado"
    else
        aprova="Reprovado"
    fi

    # Salvando os dados em vetores
    vetnome[$qtd]=$nome
    vetmedia[$qtd]=$res
    vetaprova[$qtd]=$aprova
    
    # Incrementa a quantidade de alunos cadastrados
    ((qtd++))

    # pede ao user se deseja continuar
    echo "Deseja continuar [S/N]?"
    read opcao

    if [ "$opcao" = "s" ] || [ "$opcao" = "S" ]; then
        roda=true
    else
        roda=false
    fi
done

echo -e "\nRESULTADOS FINAIS"

# Loop para mostrar os dados guardados nos vetores
for (( i=0; i<qtd; i++ ))
do
    echo -e "Nome:  $i = ${vetnome[i]}"
    echo -e "Media: $i = ${vetmedia[i]}"
    echo -e "Situacao: $i = ${vetaprova[i]}"
done