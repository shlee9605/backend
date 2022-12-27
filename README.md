# backend
skeleton

# dotenv

## nodejs setting ##########
PORT=3001  
JWT_SECRET=jwtsecret  
LOGGER_LEVEL=debug  
## sequelize setting ##########
DB_HOST=localhost  
DB_PORT=3306  
DB_DATABASE=test  
DB_ID=root  
DB_PASS=root  
DB_DIALECT=mysql  

# docker compose yml
version: '1.0'  
services:  
  app:  
    build:  
      context: ./  
      dockerfile: ./Dockerfile  
    container_name: backend  
    ports:  
      - "3001:3000"  
    environment:  
      PORT: 3000  
      JWT_SECRET: jwtsecret  
      LOGGER_LEVEL: debug  
      DB_HOST: 192.168.0.106    
      DB_PORT: 3307  
      DB_DATABASE: testDB  
      DB_ID: root  
      DB_PASS: root  
      DB_DIALECT: mysql  