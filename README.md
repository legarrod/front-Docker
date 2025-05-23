# front-Docker

Proyecto de angular para un front para la materia de CI/CD POLI

# 📦 Requisitos
    Docker (versión 20 o superior recomendada)
    Docker Compose
    Node.js 20 (solo si deseas ejecutar el proyecto sin Docker)
# 🚀 Pasos para ejecutar el proyecto con Docker
    1. Clona el repositorio en tu máquina local.
    2. Abre una terminal en la carpeta del proyecto.
    3. Ejecuta el siguiente comando para construir y levantar los contenedores:
    docker compose up --build
    4. Abre tu navegador y visita http://localhost:4200 para ver la aplicación.
# ⚙️ Estructura del Dockerfile
    FROM node:20-alpine
    WORKDIR /app
    COPY package*.json ./
    RUN npm install
    COPY . .
    EXPOSE 4200
    CMD ["npm", "start"]
# 📁 docker-compose.yml
    services:
    angular-dev:
        build: .
        ports:
        - "4200:4200"
        volumes:
        - .:/app
        - /app/node_modules
        command: npm start
# 📬 Autor
    - OSCAR SANTIAGO AMADOR HERNANDEZ
    - Rodriguez Pulido German Dario
    - LUIS EVELIO GARCIA RODRIGUEZ
    - ROBERT SANTIAGO SANTANA ORTEGA
    - LUISA FERNANDA WOO GARCIA
    
# 📜 package.json - scripts
    "scripts": {
    "start": "ng serve --host 0.0.0.0"
    }
# 🛠 Solución de problemas comunes
    ❗ Error: Could not find '@angular-devkit/build-angular:dev-server':
    - Ejecuta 'npm install' para instalar todas las dependencias.

    ❗ ERR_CONNECTION_RESET al acceder al navegador:
    - Asegúrate de que el script de inicio tenga '--host 0.0.0.0'.
    - Asegúrate de que Docker esté exponiendo correctamente el puerto 4200.
    - Verifica tu firewall o bloqueadores de red.
