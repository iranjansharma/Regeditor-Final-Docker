# FROM node:14.16.0-alpine3.13
FROM arm64v8/node:14.5.0-alpine


RUN addgroup app && adduser -S -G app app
USER app

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 5000

CMD ["npm","run", "prod"]


