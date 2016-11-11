#
# The example php/laravel todo app.
#
FROM debian:jessie
MAINTAINER drad "drader@adercon.com"

WORKDIR /tmp

# Install php and reqs
# should not be needed: nginx php-gd php-mcrypt php-mbstring php-pdo php5-redis
RUN apt-get update -y && apt-get install -y php5-fpm php5 php5-pgsql curl \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && composer self-update \
    && apt-get remove --purge curl -y \
    && apt-get clean

RUN mkdir -p /app

# add project dir to container
ADD . /app

# PORTS
EXPOSE 3000

WORKDIR /app
# php artisan serve --port=3000
CMD [ "php", "artisan", "serve", "--port=3000" ]
