FROM php:8.3-fpm


RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN apt-get update && apt-get install -y \
  git

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app