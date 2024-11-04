FROM node:18-alpine
WORKDIR /node
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run tailwind:build:prod