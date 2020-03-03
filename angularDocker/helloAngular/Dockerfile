FROM node:12-alpine as build-step
WORKDIR /app
COPY package.json ./
RUN yarn
COPY . .
RUN yarn build

FROM nginx:1.17.8 as prod
COPY --from=build-step /app/dist/helloAngular /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
