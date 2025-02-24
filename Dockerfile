# Usa una imagen base de Node.js
FROM node:18

# Define el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos de la aplicación al contenedor
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia todo el código de la aplicación al contenedor
COPY . .

# Expone el puerto en el que tu app estará escuchando
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "app.js"]