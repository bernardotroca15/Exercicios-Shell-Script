#!/bin/bash
#Helpdesk - Animal Selvagem com while

roda=true

while $roda
do
    # 1. Pede o animal
    echo -n "Qual animal voce esta vendo? "
    read animal

    case $animal in
        "leao"|"tigre")
            echo "É melhor correr!"
            ;;
        "gato")
            echo "Otimo para cacar ratos!"
            ;;
        "cachorro")
            echo "Otimo amigo!"
            ;;
        "galinha"|"ganso"|"pato")
            echo "Beleza! Ovos para comer!"
            ;;
        "vaca")
            echo "Leite fresco!"
            ;;
        *)
            echo "Animal desconhecido."
            ;;
    esac

    # 2. Depois do processo do animal, pede ao usuário se quer sair ou n
    echo "Deseja continuar?[S/N]"
    read opcao

    if [ "$opcao" = "S" ] || [ "$opcao" = "s" ]; then
        roda=true
    else
        roda=false
    fi
done