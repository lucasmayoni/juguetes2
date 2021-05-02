FROM webdevops/php-nginx-dev:7.4

RUN apt-get update \
    && apt-get install -y \ 
    vim \
    inetutils-ping

COPY logs.conf	/opt/docker/etc/nginx/vhost.common.d/logs.conf

RUN sed -i 's/xdebug.idekey = docker/xdebug.idekey = juguetesparami/g' /opt/docker/etc/php/php.webdevops.ini

WORKDIR /var/www/html/
