FROM node:16
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
RUN npm ci --only=production
COPY . .
EXPOSE 80
CMD [ "node", "index.js" ]
