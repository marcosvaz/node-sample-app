# Usando o Node:Carbon
FROM node:carbon

# Diretorio de exec. da aplicacao
WORKDIR /usr/src/app

# Copiando dependencias
COPY package.json ./

# Instalando dependencias
RUN npm install

# Copiar tudo que esta no diretorio corrente para o WORKDIR
COPY . $WORKDIR

# Porta onde a aplicacao recebe conexoes
EXPOSE 8080

# Execucao da aplicacao usando CMD (Comando a ser executado pelo container)
CMD [ "npm", "start" ]