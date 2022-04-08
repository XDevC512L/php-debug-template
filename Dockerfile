FROM php:8.0-apache-buster
COPY ./conf/environment.conf /etc/httpd/conf.d/vhosts.conf
RUN pecl install xdebug && docker-php-ext-enable xdebug
RUN docker-php-ext-install mysqli
COPY ./conf/xdebug.ini ${PHP_INI_DIR}/conf.d/xdebug.ini
