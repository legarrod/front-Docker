# Usa Node oficial
FROM node:20-alpine

# Instala Angular CLI globalmente
RUN npm install -g @angular/cli

# Crea el directorio de trabajo
WORKDIR /app

# Copia archivos de dependencias
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia el resto de archivos
COPY . .

# Expone el puerto
EXPOSE 4200

# Inicia la app en modo desarrollo (asegúrate de usar --host 0.0.0.0)
CMD ["npm", "start"]
