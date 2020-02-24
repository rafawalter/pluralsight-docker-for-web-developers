FROM node:latest

ENV NODE_ENV=production
ENV PORT=3000

WORKDIR /var/www
COPY ./package.json /var/www
COPY ./yarn.lock /var/www
RUN yarn

COPY . /var/www

EXPOSE $PORT

ENTRYPOINT ["yarn", "start"]
