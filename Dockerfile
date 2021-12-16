## relay-dapp dockerfile (This file is called Dockerfile) on server side. ##
FROM node:12-alpine AS compiler
RUN apk add --no-cache build-base git bash
WORKDIR /usr/src/app
COPY package*.json ./
COPY .env ./.env
RUN npm i
COPY . ./
RUN npm start

