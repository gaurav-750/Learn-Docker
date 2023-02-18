# *specifying the base image on top of which of app is built
FROM node:16.14.2-alpine3.15

# setting the working directory:
# after this, all instructions will be executed in the working dir:
WORKDIR /app
COPY . .

RUN npm install

ENV API_URL=http://api.myapp.com

EXPOSE 3000

RUN  addgroup app && adduser -S -G app app
USER app