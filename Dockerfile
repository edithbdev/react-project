FROM node:lts-alpine as build

WORKDIR /app
COPY ./packages/container/package.json .
RUN npm install
COPY ./packages/container/ .
RUN npm run build