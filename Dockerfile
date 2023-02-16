# *specifying the base image on top of which of app is built
FROM node:16.14.2-alpine3.15

# set the working directory:
WORKDIR /app

# *copy the application files into the base image:
# they'll be copied in the /app folder
COPY . . 

# running commands:
RUN npm install

# *adding env variables:
ENV API_URL=http://api.myapp.com/