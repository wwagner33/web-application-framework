#!/bin/bash

# Obter data e hora para o nome do arquivo de log
DATE=$(date +%Y-%m-%d-%H-%M)
LOGFILE="api_log_$DATE.log"

# Função para adicionar separadores no log
log_separator() {
  echo "------------------------------------------------------------" >> $LOGFILE
}

# Criar usuários
echo "Creating Users..." >> $LOGFILE
log_separator
curl -X POST http://localhost:3000/users/register -H "Content-Type: application/json" \
    -d '{"name":"John Doe", "email":"john@gmail.com", "password":"a1234567890"}' >> $LOGFILE
echo "" >> $LOGFILE  # Nova linha para separar
log_separator

curl -X POST http://localhost:3000/users/register -H "Content-Type: application/json" \
    -d '{"name":"Joan Doe", "email":"joan@gmail.com", "password":"a1234567890"}' >> $LOGFILE
echo "" >> $LOGFILE
log_separator

# Testar Login
echo "Testing Login..." >> $LOGFILE
log_separator
curl -X POST http://localhost:3000/users/login -H "Content-Type: application/json" \
    -d '{"email":"john@gmail.com", "password":"a1234567890"}' >> $LOGFILE
echo "" >> $LOGFILE
log_separator

# Criar objetos
echo "Creating Objects..." >> $LOGFILE
log_separator
curl -X POST http://localhost:3000/objects -H "Content-Type: application/json" \
    -d '{"name":"Object Test", "description":"This is a test object", "ownerId":1}' >> $LOGFILE
echo "" >> $LOGFILE
log_separator

curl -X POST http://localhost:3000/objects -H "Content-Type: application/json" \
    -d '{"name":"Object Test 2", "description":"This is a test object 2", "ownerId":1}' >> $LOGFILE
echo "" >> $LOGFILE
log_separator

curl -X POST http://localhost:3000/objects -H "Content-Type: application/json" \
    -d '{"name":"Object Test 3", "description":"This is a test object 3", "ownerId":1}' >> $LOGFILE
echo "" >> $LOGFILE
log_separator

# Listar objetos
echo "Listing Objects..." >> $LOGFILE
log_separator
curl -X GET http://localhost:3000/objects -H "Content-Type: application/json" >> $LOGFILE
echo "" >> $LOGFILE
log_separator

echo "Log saved to $LOGFILE"
