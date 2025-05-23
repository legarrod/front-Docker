# Usa Node oficial
FROM node:20-alpine

# Directorio de trabajo
WORKDIR /app

# Copia los archivos de dependencias primero
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia el resto del código
COPY . .

# Expone el puerto de Angular
EXPOSE 4200

# Comando para iniciar Angular (modo desarrollo)
CMD ["npm", "start"]
