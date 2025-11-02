FROM php:8.3-fpm


RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app