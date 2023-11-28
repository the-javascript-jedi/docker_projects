# use composer latest image
FROM composer:latest

WORKDIR /var/www/html

# --ignore-platform-reqs -> ensures we can run without warning or errors even if some dependencies are missing
ENTRYPOINT ["composer","--ignore-platform-reqs"]