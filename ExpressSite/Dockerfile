FROM node:latest

ENV NODE_ENV=production
ENV PORT=3000

COPY . /var/www
WORKDIR /var/www

RUN yarn

EXPOSE $PORT

ENTRYPOINT ["yarn", "start"]
