FROM php:8.3-fpm


RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN apt-get update && apt-get install -y \
    libzip-dev \
    git \
    unzip \
    p7zip-full \
  && docker-php-ext-install -j$(nproc) zip


RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

RUN composer global require psy/psysh
ENV PATH "/root/.composer/vendor/bin:$PATH"
# COPY ./composer/init.sh /etc/profile.d/composer.sh



RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app