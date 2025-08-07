FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.6ardtqj.mongodb.net
ENV MONGODB_USERNAME husseinnour24
ENV MONGODB_PASSWORD VB7Z2y9wTLL0IkuC

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]