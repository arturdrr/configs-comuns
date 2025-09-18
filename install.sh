#!/bin/bash
set -e

REPO_NAME="configs-comuns"

echo "Iniciando instalação do repositório: $REPO_NAME"

check_command() {
  command -v "$1" >/dev/null 2>&1 || {
    echo >&2 "Erro: '$1' não encontrado. Por favor, instale e execute novamente."
    exit 1
  }
}

echo "Verificando dependências básicas..."
check_command git
check_command curl

echo "Copiando configurações comuns para projetos..."

# Exemplo: copiar lints e hooks
if [ -d "./git-hooks" ]; then
  cp -r git-hooks/* ~/.git-templates/hooks/ || true
fi

echo "Instalação do $REPO_NAME concluída."