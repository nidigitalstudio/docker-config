FROM php:7.3-fpm-stretch
LABEL maintainer="geo.martins7@gmail.com"

# libzip-dev: required by zip
# zlib1g-dev: required by zip
RUN apt-get update -qq \
    && apt-get install -qq --no-install-recommends \
    git \
    zip \
    unzip \
    libzip-dev \
    zlib1g-dev \
    && apt-get clean

RUN apt-get install -y libpq-dev \
    && docker-php-ext-install pgsql pdo_pgsql

RUN pecl install xdebug \
    && docker-php-ext-install \
    pdo_mysql \
    pcntl \
    zip \
    && rm -rf /tmp/*

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

RUN composer global require laravel/installer \
    && ln -s /root/.composer/vendor/bin/laravel /usr/bin/
