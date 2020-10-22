FROM node:10.16.2-alpine
WORKDIR /app
ADD package*.json ./
RUN npm install
ADD . .
EXPOSE 8000
CMD node index.js