FROM node:fermium-alpine3.14

WORKDIR  /node-app

COPY package*.json ./

RUN npm install 

COPY . .

RUN npm install -g serve  

EXPOSE 3000

ENV MONGO_URL=localhost MONGO_PORT=27017

ENTRYPOINT ["./entrypoint.sh"]
