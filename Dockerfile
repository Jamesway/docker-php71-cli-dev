FROM php:7.1-cli-alpine

MAINTAINER James <j@mesway.io>

RUN apk update \
    && apk --no-cache add git \
                          libmcrypt-dev \
                          libmcrypt \
                          mysql-client \
    && docker-php-ext-install mcrypt pdo_mysql
    # clean up

# composer
ENV COMPOSER_ALLOW_SUPERUSER 1
COPY --from=composer:1.5 /usr/bin/composer /usr/bin/composer

# from phpspec/phpspec
WORKDIR /tmp

RUN composer selfupdate \
    && composer require "phpspec/phpspec:~2.5.2" --dev \
    && ln -s /tmp/vendor/bin/phpspec /usr/local/bin/phpspec

WORKDIR /app
CMD ["/bin/sh"]
