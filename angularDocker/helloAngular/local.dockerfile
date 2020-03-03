FROM node:12-alpine
WORKDIR /app
COPY package.json ./
RUN yarn
COPY . .
EXPOSE 4200
RUN yarn start
