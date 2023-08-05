# specify the python versions in tag name
FROM python:3.7
# make /app as working directory
WORKDIR /app
# copy everything in surrounding folder to the image
# second dot specifies workdir and first dot specifies all the files to be copied
COPY . . 
# specify the command to be executed when image is started
CMD ["python","bmi.py"]
# run >docker build . to create image