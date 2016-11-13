FROM node:7.0.0

RUN npm install -g sails pm2

COPY package.json /usr/src/app/
COPY process.json /usr/src/app
ADD . /usr/src/app

WORKDIR /usr/src/app
RUN npm install
RUN pm2 start process.json
CMD sails lift

