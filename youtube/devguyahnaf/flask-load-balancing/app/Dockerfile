FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

# bind to port 5000 of the container
# bind file(wsgi) to container and object is app
CMD gunicorn --bind 0.0.0.0:5000 wsgi:app