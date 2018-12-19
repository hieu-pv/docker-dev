FROM php:5.6-fpm

RUN apt-get update && apt-get install -y mysql-server libmagickwand-dev --no-install-recommends\ 
    && apt-get install git-core -y --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && pecl install xdebug-2.5.5 \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo_mysql \
    && apt-get install iputils-ping -y --no-install-recommends

RUN apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*  \
    && docker-php-ext-install zip

RUN curl -o /usr/local/bin/composer https://getcomposer.org/composer.phar && chmod +x /usr/local/bin/composer
