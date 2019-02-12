ARG PHP5_VERSION=""
FROM php:${PHP5_VERSION:+${PHP5_VERSION}-}fpm


RUN apt-get update 

# Install imagick
RUN apt-get install -y libmagickwand-dev --no-install-recommends\ 
    && pecl install imagick \
    && docker-php-ext-enable imagick 

# Install git
RUN apt-get install git-core -y --no-install-recommends 

# Install xdebug
RUN pecl install xdebug-2.5.5 \
    && docker-php-ext-enable xdebug 

# Install mysql
RUN apt-get install mysql-server -y --no-install-recommends && docker-php-ext-install pdo_mysql 

# Install iputils
RUN apt-get install iputils-ping -y --no-install-recommends

# Install php zip extension
RUN apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*  \
    && docker-php-ext-install zip

# Install composer
RUN curl -o /usr/local/bin/composer https://getcomposer.org/composer.phar && chmod +x /usr/local/bin/composer

RUN apt-get update
RUN apt-get install gnupg2 -y --no-install-recommends

ADD ./nodejs_setup_8.x /var/
RUN chmod +x /var/nodejs_setup_8.x
RUN /var/nodejs_setup_8.x
RUN apt-get install -y nodejs -y --no-install-recommends
RUN npm install -g @vicoders/cli --unsafe
