FROM node
WORKDIR /Users/edithtoubi/Desktop
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]