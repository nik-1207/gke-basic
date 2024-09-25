# Fetching the minified node image on apline linux
FROM node:slim

# Declaring env
ENV NODE_ENV production

# Setting up the work directory
WORKDIR /app

# Copying all the files in our project
COPY ./dist /app/
COPY ./package.json /app/
COPY ./yarn.lock /app/

# Installing dependencies
RUN yarn install

# Starting our application
CMD [ "node", "index.js" ]

# Exposing server port
EXPOSE 3000