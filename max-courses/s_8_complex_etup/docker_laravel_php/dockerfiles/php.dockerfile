FROM php:7.4-fpm-alpine
# source code needs to be avalable in this folder, so we will use a bind mount
WORKDIR /var/www/html
# install extra dependencies
RUN docker-php-ext-install pdo_mysql