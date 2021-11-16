## rif-relay-sdk-dapp dockerfile
FROM node:12-alpine AS compiler
RUN apk add --no-cache build-base git
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . ./
RUN npm start


