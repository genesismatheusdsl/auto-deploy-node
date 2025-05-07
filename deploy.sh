#!/bin/bash
APP_NAME="meu-app"
REPO_URL="git@github.com:genesismatheusdsl/auto-deploy-node.git"
DIR="/var/www/$APP_NAME"
BRANCH="main"

echo "🚀 Iniciando deploy do $APP_NAME..."

if [ ! -d "$DIR" ]; then
  echo "📁 Diretório não encontrado, clonando repositório..."
  git clone -b $BRANCH $REPO_URL $DIR
else
  echo "📦 Atualizando código no diretório..."
  cd $DIR || exit 1
  git fetch origin
  git reset --hard origin/$BRANCH
fi

echo "📦 Instalando dependências..."
cd $DIR || exit 1
npm install

echo "🔄 Reiniciando aplicação com PM2..."
pm2 startOrReload ecosystem.config.js --env production

echo "✅ Deploy finalizado com sucesso!"
