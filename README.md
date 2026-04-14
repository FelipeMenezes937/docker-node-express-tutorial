# Como Criar uma Imagem Docker

Este projeto é um tutorial que ensina como criar uma imagem Docker para uma aplicação Node.js com Express.

## O que é Docker?

Docker é uma plataforma que permite empacotar aplicações em containers. Containers são leves e containém tudo que a aplicação precisa para rodar (código, bibliotecas, configurações).

## Pré-requisitos

- Docker instalado
- Acesso ao terminal

## Passo a Passo

### 1. Preparar o Projeto

Crie um diretório para o projeto e copie os arquivos da aplicação:

```bash
mkdir app-exemplo
cd app-exemplo
# Copie os arquivos: index.js, index.html, main.css, package.json, Dockerfile
```

### 2. Estrutura do Projeto

```
app-exemplo/
├── Dockerfile      # Receita para criar a imagem
├── index.js        # Servidor Express
├── index.html     # Página HTML
├── main.css        # Estilos CSS
└── package.json   # Dependências npm
```

### 3. Criar a Imagem Docker

Para criar a imagem, use o comando `docker build`:

```bash
sudo docker build -t FelipeMenezes937/app-node:1.0 .
```

Explicação:
- `sudo` - necessidade de permissão de administrador
- `docker build` - comando para construir a imagem
- `-t` - flag para definir a tag (nome) da imagem
- `FelipeMenezes937/app-node:1.0` - nome:tag da imagem
- `.` - contexto de build (diretório atual)

Saída esperada:
```
Successfully built d5f40705599e
Successfully tagged FelipeMenezes937/app-node:1.0
```

### 4. Listar Imagens Existentes

Para ver todas as imagens Docker disponíveis:

```bash
sudo docker images
```

Saída esperada:
```
IMAGE                           ID             DISK USAGE   CONTENT SIZE
FelipeMenezes937/app-node:1.0   d5f40705599e        913MB
node:14                        1d12470fa662        912MB
...
```

### 5. Executar o Container

Para rodar um container a partir da imagem:

```bash
sudo docker run -p 8080:3000 FelipeMenezes937/app-node:1.0
```

Explicação:
- `docker run` - comando para executar o container
- `-p 8080:3000` - mapeamento de porta (host:container)
- `FelipeMenezes937/app-node:1.0` - nome da imagem

O servidorará disponível em `http://localhost:8080`

### 6. Ver Containers em Execução

Para listar os containers que estão rodando:

```bash
sudo docker ps
```

Saída esperada:
```
CONTAINER ID   IMAGE                            COMMAND                  STATUS        PORTS                      NAMES
236a4614201a   FelipeMenezes937/app-node:1.0    "/bin/sh -c 'npm sta…"  Up 12 min    0.0.0.0:8080->3000/tcp    bold_sanderson
```

### 7. Parar um Container

Para parar um container em execução:

```bash
sudo docker stop bold_sanderson
```

Pode usar o nome do container ou o ID:
```bash
sudo docker stop 236a4614201a
```

##Entendendo o Dockerfile

O arquivo `Dockerfile` contém a receita para criar a imagem:

```dockerfile
FROM node:14          # Imagem base (Node.js versão 14)
WORKDIR /app-node     # Diretório de trabalho
COPY . .             # Copia todos os arquivos
RUN npm install      # Instala as dependências
ENTRYPOINT npm start # Comando para iniciar
```

## Comandos Úteis

| Comando | Descrição |
|---------|-----------|
| `sudo docker build -t nome:tag .` | Criar imagem |
| `sudo docker images` | Listar imagens |
| `sudo docker run -p porta:porta imagem` | Executar container |
| `sudo docker ps` | Listar containers |
| `sudo docker stop nome` | Parar container |
| `sudo docker rm nome` | Remover container |
| `sudo docker rmi imagem` | Remover imagem |

## Tecnologias

- Node.js
- Express.js
- Docker