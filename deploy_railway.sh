#!/bin/bash
# Verifica se o token do Railway foi fornecido
if [ -z "$RAILWAY_TOKEN" ]; then
  echo "Erro: RAILWAY_TOKEN não está configurado."
  exit 1
fi

# Instala o Railway CLI
echo "Instalando Railway CLI..."
curl -fsSL https://railway.app/install.sh | bash

# Realiza o deploy para o Railway
echo "Iniciando deploy para o Railway..."
railway deploy --service 710715e5-182c-4a14-a001-49edc54c60f7 --detach

if [ $? -eq 0 ]; then
  echo "Deploy para o Railway concluído com sucesso!"
else
  echo "Erro: Falha no deploy para o Railway."
  exit 1
fi
