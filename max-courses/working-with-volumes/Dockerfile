FROM node:14
# create a working directory named app
WORKDIR /app
# copy package.json to the workdir(since workdir is set we can just use .)
COPY package.json .
# run dependencies specified in package.json
RUN npm install
# copy files present in the folder to the workdir created
COPY . .
# Build the argument
ARG DEFAULT_PORT=80
# specify environment variable
ENV PORT $DEFAULT_PORT
# PORT - name of environment variable
# 80 - value of environment variable
# expose the port using Environment variable
EXPOSE $PORT
# volume instruction
# path inside container which must be mapped to outside the container
# unnamed volumes
# VOLUME ["/app/feedback"]
# specify anonymous module so node_modules in image are not oerwritten by the files in local directory
# VOLUME ["/app/node_modules"]
# specify comand to execute when contaner is started
CMD [ "node", "server.js" ]
# ///////////////////////////////
# create image -> docker build -t feedback-node .
# start container based on image 
# -> docker run -p 3000:80 -d --name feedback-app --rm feedback-node