#!/bin/bash

# Caminho do diretórios
DIRETORIO=~/LFT/Ex1Script

# Verifica se o diretório já existe
if [ -d "$DIRETORIO" ]; then
    echo "Diretório já existe."
    exit 0
else
    echo "O diretório não existe."
    # Pergunta ao usuário se deseja criá-lo
    read -p "Deseja criar o diretório? (Pressione 'n' para cancelar ou qualquer outra tecla para criar): " resposta

    # Verifica a resposta do usuário
    if [ "$resposta" = "n" ] || [ "$resposta" = "N" ]; then
        echo "Execução encerrada pelo usuário."
        exit 0
    else
        # Cria o diretório (o -p garante que as pastas pais, como 'LFT', também sejam criadas se não existirem)
        mkdir -p "$DIRETORIO"
        echo "Diretório criado com sucesso em: $DIRETORIO"
    fi
fi