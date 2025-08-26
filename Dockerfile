### Templeate Dockerfile from your app
FROM node:18.20-alpine3.20

WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json yarn.lock ./
RUN yarn install

COPY . .
RUN yarn build

EXPOSE 3000

ENTRYPOINT yarn start
