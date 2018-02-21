FROM php:7.1-cli-alpine

# composer
ENV COMPOSER_ALLOW_SUPERUSER 1
COPY --from=composer:1.5 /usr/bin/composer /usr/bin/composer

# phpspec
WORKDIR /tmp

RUN composer selfupdate \
    && composer require "phpspec/phpspec:~2.5.2" --dev \
    && ln -s /tmp/vendor/bin/phpspec /usr/local/bin/phpspec

WORKDIR /app
CMD ["/bin/sh"]
