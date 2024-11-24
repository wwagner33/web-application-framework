#!/bin/bash

# Verifica se a aplicação da API está rodando; se não estiver, inicia com 'npm run dev'
if ! pgrep -f "nodemon src/app.js" > /dev/null; then
  echo "Iniciando a API..."
  npm run dev &
  sleep 5
fi

# Obter data e hora para o nome do arquivo de log
LOGFILE="api_log_$(date +%Y-%m-%d-%H-%M).log"
RANDUSER="user-$(date +%Y-%m-%d-%H-%M-%S)"
RANDOBJ="object-$(date +%Y-%m-%d-%H-%M-%S)"

# Função para adicionar separadores no log
log_separator() {
  echo "------------------------------------------------------------" >> $LOGFILE
}

# Criar usuários
echo "Criando Usuários de teste..." >> $LOGFILE
log_separator
curl -X POST http://localhost:3000/users/register -H "Content-Type: application/json" -d @- >> $LOGFILE <<EOF
{
  "name": "$RANDUSER",
  "email": "$RANDUSER@gmail.com",
  "password": "a1234567890"
}
EOF
echo "" >> $LOGFILE
log_separator

# Testar Login
echo "Testa o login..." >> $LOGFILE
log_separator
curl -X POST http://localhost:3000/users/login -H "Content-Type: application/json" -d @- >> $LOGFILE <<EOF
{
  "email": "$RANDUSER@gmail.com",
  "password": "a1234567890"
}
EOF
echo "" >> $LOGFILE
log_separator

# Criar objetos
echo "Cria objetos para armazenar no banco..." >> $LOGFILE
log_separator
curl -X POST http://localhost:3000/objects -H "Content-Type: application/json" -d @- >> $LOGFILE <<EOF
{
  "name": "$RANDOBJ",
  "description": "Teste de criação de um objeto simples",
  "ownerId": 1
}
EOF
echo "" >> $LOGFILE
log_separator

curl -X POST http://localhost:3000/objects -H "Content-Type: application/json" -d @- >> $LOGFILE <<EOF
{
  "name": "$RANDOBJ",
  "description": "Teste de criação de outro objeto",
  "ownerId": 1
}
EOF
echo "" >> $LOGFILE
log_separator

# Listar objetos
echo "Lista objetos criados..." >> $LOGFILE
log_separator
curl -X GET http://localhost:3000/objects -H "Content-Type: application/json" >> $LOGFILE
echo "" >> $LOGFILE
log_separator

echo "Log salvo em $LOGFILE"
