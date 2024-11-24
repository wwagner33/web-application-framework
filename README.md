# Web Application Framework

**Versão:** 1.0.0  
**Autor:** Wellington Wagner F. Sarmento  
**Licença:** [GPV Version 3](LICENSE)


## Descrição
**Web Application Framework** é uma estrutura básica para construção de aplicações web simples, desenvolvida para ser utilizada na disciplina **Projeto Integrado I** do curso de **Sistemas e Mídias Digitais** da **Universidade Federal do Ceará (UFC)**.  

Esta aplicação fornece uma base para gerenciamento de usuários e objetos, com funcionalidades de autenticação, cadastro e CRUD, utilizando tecnologias modernas e boas práticas de desenvolvimento.


## Funcionalidades
- **Gerenciamento de Usuários**: Registro e autenticação com hashing de senha.
- **Gerenciamento de Objetos**: CRUD (Create, Read, Update, Delete) de objetos vinculados a usuários.
- **Autenticação JWT**: Segurança na comunicação via tokens.
- **API Restful**: Backend estruturado para comunicação com frontend.
- **Frontend básico**: Interface construída com HTML5, CSS e JavaScript.


## Tecnologias Utilizadas
- **Backend**: 
  - [Node.js](https://nodejs.org/) (v22.11.0)
  - [Express.js](https://expressjs.com/)
  - [Prisma](https://www.prisma.io/)
  - [JWT (jsonwebtoken)](https://github.com/auth0/node-jsonwebtoken)
  - [Bcrypt](https://github.com/kelektiv/node.bcrypt.js)
- **Banco de Dados**:
  - [PostgreSQL](https://www.postgresql.org/)
- **Frontend**:
  - HTML5, CSS3 e JavaScript
- **Ferramentas de Desenvolvimento**:
  - [Nodemon](https://nodemon.io/)
  - [Dotenv](https://github.com/motdotla/dotenv)
  - [CORS](https://github.com/expressjs/cors)


## Estrutura de Pastas

```bash
web-application-framework/
├── prisma/               # Configuração do Prisma
├── public/               # Frontend estático (HTML, CSS, JS)
│   ├── css/
│   ├── js/
│   └── index.html
├── src/                  # Código do backend
│   ├── controllers/      # Lógica dos endpoints
│   ├── models/           # Modelos (opcional)
│   ├── routes/           # Rotas do backend
│   ├── services/         # Serviços auxiliares (opcional)
│   └── app.js            # Arquivo principal
├── .env                  # Configurações de ambiente
├── package.json          # Dependências e scripts
├── README.md             # Documentação
└── test/
    ├── test-api.sh       # Rotina de teste da API
    └── api_log_<data>.log # Logs gerados pelo script de teste
```

 
## Configuração do `.env`

Para que a aplicação funcione corretamente, é necessário criar um arquivo `.env` na raiz do projeto com as seguintes variáveis de ambiente:

```plaintext
# String de conexão com o banco de dados PostgreSQL
DATABASE_URL="postgresql://usuario:senha@localhost:5432/nome_do_banco"

# Chave secreta para geração e verificação de tokens JWT
JWT_SECRET="sua_chave_secreta_aqui"
```

### **Exemplo:**
```plaintext
# String de conexão com o banco de dados PostgreSQL
DATABASE_URL="postgresql://dbuser:password123@localhost:5432/mydatabase"

# Chave secreta para geração e verificação de tokens JWT
JWT_SECRET="mysecretkey"
```

 

### Como configurar:
1. Substitua `dbuser`, `password123` e `mydatabase` pelos dados reais de acesso ao seu banco de dados PostgreSQL.
2. Defina `JWT_SECRET` com uma chave secreta forte. Esta chave é usada para proteger os tokens JWT gerados pela aplicação.


## Instalação e Configuração

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/web-application-framework.git
   cd web-application-framework
   ```

2. Instale as dependências:
   ```bash
   npm install
   ```

3. Configure o arquivo `.env` conforme explicado acima.

4. Configure o banco de dados:
   - Crie a base de dados no PostgreSQL:
     ```sql
     CREATE DATABASE nome_do_banco TEMPLATE template0;
     ```
   - Execute as migrações do Prisma:
     ```bash
     npx prisma migrate dev --name init
     ```

5. Inicie o servidor:
   ```bash
   npm run dev
   ```

6. Acesse a aplicação:
   - Frontend: [http://localhost:3000](http://localhost:3000)
   - API: [http://localhost:3000/users](http://localhost:3000/users)