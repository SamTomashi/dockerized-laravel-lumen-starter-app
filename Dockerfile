FROM php:8.1-fpm-alpine

ENV ACCEPT_EULA=Y

RUN docker-php-ext-install pdo_mysql

WORKDIR /var/www/html/

RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

COPY . .

RUN composer install

# Install Microsoft SQL Server drivers
RUN apk update && \
    apk add --no-cache autoconf freetds freetds-dev unixodbc unixodbc-dev build-base

RUN pecl install sqlsrv pdo_sqlsrv && \
    docker-php-ext-enable sqlsrv pdo_sqlsrv

# Expose port 9000 for PHP-FPM and 1433 for MSSQL
EXPOSE 9000 1433





 
