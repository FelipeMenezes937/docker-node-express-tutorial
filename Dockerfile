FROM node:16
WORKDIR /app-node
COPY . .
run npm install
ENTRYPOINT npm start