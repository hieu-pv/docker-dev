FROM php:7.2.6-fpm

RUN apt-get update && apt-get install -y \
    mysql-server libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo_mysql
