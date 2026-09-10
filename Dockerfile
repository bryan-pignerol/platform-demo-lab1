FROM dhi.io/node:24-alpine3.23-dev AS dev

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

RUN npm test
CMD [ "npm", "start" ]
