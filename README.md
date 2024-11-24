# Web Application Framework

**Versão:** 1.0.0  
**Autor:** Wellington Wagner F. Sarmento  
**Licença:** GPL-3.0-or-later  



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
└── api_log_<data>.log    # Logs gerados pelo script de teste
