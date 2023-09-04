FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

ENV MONGODB_USERNAME=root

ENV MONGODB_PASSWORD=secret

# CMD ["node","app.js"]
# start script to use nodemon
CMD ["npm","start"]