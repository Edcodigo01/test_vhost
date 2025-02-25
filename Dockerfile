# Usa una imagen base de Node.js
FROM node:16

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia los archivos del proyecto al contenedor
COPY . .

# Instala las dependencias
RUN npm install

# Expón el puerto 3000 para que sea accesible
EXPOSE 3000

# Ejecuta la aplicación cuando se inicie el contenedor
CMD ["node", "app.js"]
