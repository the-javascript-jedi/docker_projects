# provide node versions
FROM node:14
# provide working directory
WORKDIR /app
# copy the package.json into our working directory (the image)
COPY package.json .
# Run will allow us to run commands during setup of the image
RUN npm install
# Copy our files from local folder(.ie) contents of node-app into our working directory
COPY . .
# expose the 3000 port so that other files can communicate with the node server
EXPOSE 3000
# set the comand to execute the node server.js when our container starts
CMD ["node","server.js"]
# run the command >docker build .