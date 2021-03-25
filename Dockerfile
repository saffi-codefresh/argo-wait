FROM node:14.16.0-alpine3.13

WORKDIR /app

RUN apk upgrade

COPY package*.json .

ENV NODE_ENV production

RUN npm ci

COPY . .

RUN ln -s /app/wait /usr/local/bin/wait

ENTRYPOINT [ "wait" ]
