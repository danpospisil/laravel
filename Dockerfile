FROM php:7.1-apache
  
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client git libmagickwand-dev --no-install-recommends && pecl install imagick && docker-php-ext-enable imagick && docker-php-ext-install mcrypt pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

EXPOSE 80
