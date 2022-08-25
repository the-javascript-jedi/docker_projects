# use nodejs as base image
FROM node:14
# have certain directory in container file system
WORKDIR /app
# copy the package.json into our working directory
COPY package.json .
# run npm install
RUN npm install
# copy the rest of the code
COPY . .
# expose the port to the outside world
EXPOSE 3000
# execute the app.mjs command because we are running in a NODE environment
CMD [ "node", "app.mjs" ]