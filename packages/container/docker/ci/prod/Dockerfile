FROM node:lts-alpine as build

WORKDIR /app
COPY ./packages/container/package.json .
RUN npm install
COPY ./packages/container/ .
RUN npm run build

# production environment
FROM nginx
COPY --from=build /app/build /usr/share/nginx/html
RUN cp /app/build/index.html /usr/share/nginx/html/index.html
EXPOSE 8080
CMD ["npm", "run", "build"]