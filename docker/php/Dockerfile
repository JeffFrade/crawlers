FROM composer:1 AS composer
FROM php:8.1-fpm

USER root
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update \
    && apt-get install -y \
        autoconf \
        git \
        zip \
        unzip \
        zlib1g-dev \
        libssl-dev \
        libzip-dev \
        net-tools \
    && useradd -m jefffrade

RUN docker-php-ext-install \
        zip

WORKDIR /crawlers

RUN chown -R jefffrade:jefffrade /crawlers
USER jefffrade
