FROM node:20.0-alpine as prod

WORKDIR /work/

COPY ./dist /work/dist

WORKDIR /work/dist/server

ENV NODE_ENV=production

CMD node server.bundle.js


# FROM node:20.0-alpine as test

# WORKDIR /work

# COPY ./dist /work/dist

# COPY ./server /work/server

# COPY ./app-server.js /work

# COPY ./package_node/package.json /work
# RUN npm install

# ENV NODE_ENV=produc

# CMD node app-server.js
