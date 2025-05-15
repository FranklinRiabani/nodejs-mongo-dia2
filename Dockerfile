FROM node:18

WORKDIR /home/node/app
COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

CMD ["nodemon", "src/index.js"]

