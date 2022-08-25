# setup instructions for our image
# From is used to build our custom image from base image
FROM node
# work directory specifies all subsequent RUN commands will be executed inside the folder
WORKDIR /app
# COPY - Which files should go in the image
# first argument(Host file System) specifies from path where the files should be copied from'
# since first argument is a dot it specifies the from contents are in same folder as dockerfile excluding the dockerfile
# second argument(Image/container file system) specifies path inside of the image where the files should be stored
# COPY . /app can also be changed to COPY . ./
COPY . /app
# Run npm install to install all dependencies
# run the command in the WORKDIR
RUN npm install
# Expose a port to our local system
# exposing a port alone will not work we also need to specify a localhost port in our run command using -p <localhost port number>:<internal docker container exposed port>
EXPOSE 80
# Start our server - CMD should be the last instruction
# We should not simply put 'RUN node server.js' since we are only creating an image and only container will run the image
# we should start a server only if we start a container, because if we start multiple containers we also start multiple node servers
# CMD will only run when a container is started based on the image and NOT when the image is created
CMD ["node","server.js"]
# run below command after running docker build .
# pass the localhost port number
# docker run -p 3000:80 efac9501100432193760c16a17f16ed05f2023cc6970d006c215842b4be15741 
# this will host the server in http://localhost:3000/
# to stop the docker image find container name using docker ps
# docker stop <container-name>