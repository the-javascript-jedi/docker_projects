# docker build -t node-util .
# alpine is a slimmer version of node
FROM node:14-alpine

WORKDIR /app

# we dont provide any CMD so that user can run any command
# we use ENTRYPOINT command so that we can restrict the commands we can run
# Difference between CMD and ENTRYPOINT
# CMD in the terminal will overwrite the CMD in Dockerfile
# ENTRYPOINT will append the command to the ENTRYPOINT in Dockerfile
ENTRYPOINT [ "npm" ]