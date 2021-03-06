# base image
FROM node:9.6.1

# set working directory
RUN mkdir /usr/src/backend
WORKDIR /usr/src/backend

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/backend/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /usr/src/backend/package.json
RUN npm install

# start app
CMD ["npm", "start"]