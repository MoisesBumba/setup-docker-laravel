#!/usr/bin/env bash
echo "Este script foi feito para construir uma imagem de container Docker, sem necessitar do docker-compose"

## Trocar nome_usuario pelo seu nome de usuário no Docker Hub
nome_usuario='010107'

## Trocar nome_imagem pelo nome de seu repositório no Docker Hub
nome_imagem='forma-te-imagen-docker'

## Trocar somente se for versionar a imagem do repositório Docker Hub. Default: "latest"
versao="P8.1-L10-dev"

## Na linha abaixo executa a ação de construção da imagem, o "."(ponto) remete que o Dockerfile está neste mesmo nível no diretório
docker build -t ${nome_usuario}/${nome_imagem}:${versao} .

echo "Processo concluído!"