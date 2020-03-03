##### Stage 1
FROM node:12-alpine as node
WORKDIR /app
COPY . .
RUN yarn
ARG env=prod
RUN yarn build -- --prod --environment $env

##### Stage 2
FROM nginx:1.17.8-alpine
VOLUME /var/cache/nginx
COPY --from=node /app/dist /usr/share/nginx/html
COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf