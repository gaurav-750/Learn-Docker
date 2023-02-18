# *specifying the base image on top of which of app is built
FROM node:16.14.2-alpine3.15

# RUN  addgroup app && adduser -S -G app app
# USER app

# setting the working directory:
# after this, all instructions will be executed in the working dir:
WORKDIR /app

# *effective caching:
COPY package*.json .
RUN npm install

COPY . .

ENV API_URL=http://api.myapp.com

EXPOSE 3000

CMD [ "npm", "start" ]