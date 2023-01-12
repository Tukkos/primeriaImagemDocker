# Definir ambiente para o app
# Esse ja possui o node v16, npm v7 e alphine(versão pequena do Linux)
FROM node:16

# Criar um diretórion no container
WORKDIR /app

# Copiar o package para dentro do container
COPY package*.json ./

# Executar o npm install
RUN npm install

# Copiar todos os arquivos para o container (importante ter o .dockerignore para não copiar o node_modules)
COPY . .

# Definir os envs
ENV PORT=4002

# Exportar a port da aplicação
EXPOSE 4002

# Executar a aplicação
CMD ["npm", "start"]