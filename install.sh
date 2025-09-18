#!/bin/bash
set -e

# Nome do repositório
REPO_NAME="configs-comuns"

echo "Iniciando instalação do repositório: $REPO_NAME"

# Função para checar comandos necessários
check_command() {
  command -v "$1" >/dev/null 2>&1 || {
    echo >&2 "Erro: '$1' não encontrado. Por favor, instale e execute novamente."
    exit 1
  }
}

# Checar dependências essenciais
echo "Verificando dependências básicas..."
check_command git
check_command node # Para linters e formatters baseados em JS
check_command npm

# Variável para modo não interativo
NONINTERACTIVE=${NONINTERACTIVE:-0}

# Instalação de componentes
install_components() {
  echo "Realizando passos de instalação para $REPO_NAME ..."
  # Exemplo: Instalar dependências de linters e formatters
  # if [ -f "linters/package.json" ]; then
  #   npm --prefix ./linters install
  # fi
  echo "Passos de instalação concluídos."
}

# Rodar instalação
install_components

echo "Instalação do repositório $REPO_NAME finalizada."
