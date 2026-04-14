# Projeto Docker com Express.js

Aplicação web simples em Node.js com Express que exibe uma página HTML.

##Descrição

Este é um projeto de exemplo que demonstra como criar uma aplicação web com Node.js e Express, containerizada com Docker.

##Funcionalidades

- Servidor web com Express.js
- Página HTML estática
- Estilização CSS
- Containerização com Docker

## Pré-requisitos

- Node.js (versão 16 ou superior)
- Docker (opcional)

##Instalação Local

1. Clone o repositório
2. Instale as dependências:
```bash
npm install
```

##Executando Localmente

Inicie o servidor:
```bash
npm start
```

Acesse no navegador: `http://localhost:3000`

##Executando com Docker

### Building a imagem

```bash
docker build -t imagem-docker .
```

### Executando o container

```bash
docker run -p 3000:3000 imagem-docker
```

Acesse no navegador: `http://localhost:3000`

## Estrutura do Projeto

```
imagem_docker/
├── index.js        # Servidor Express
├── index.html      # Página HTML
├── main.css        # Estilos CSS
├── package.json   # Dependências npm
├── Dockerfile     # Configuração do container
└── .gitignore     # Arquivos ignorados pelo git
```

##Tecnologias

- Node.js
- Express.js
- HTML/CSS
- Docker