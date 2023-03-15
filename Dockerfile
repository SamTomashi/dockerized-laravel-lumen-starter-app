FROM php:8.1-fpm-alpine

ENV ACCEPT_EULA=Y

RUN docker-php-ext-install pdo_mysql

WORKDIR /var/www/html/

RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

COPY . .

RUN composer install

 
# Microsoft SQL Server Prerequisites
# RUN apt-get update \
#     && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
#     && curl https://packages.microsoft.com/config/debian/9/prod.list \
#         > /etc/apt/sources.list.d/mssql-release.list \
#     && apt-get install -y --no-install-recommends \
#         locales \
#         apt-transport-https \
#     && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
#     && locale-gen \
#     && apt-get update \
#     && apt-get -y --no-install-recommends install \
#         unixodbc-dev \
#         msodbcsql17
 
# RUN docker-php-ext-install mbstring pdo pdo_mysql \
#     && pecl install sqlsrv pdo_sqlsrv xdebug \
#     && docker-php-ext-enable sqlsrv pdo_sqlsrv xdebug
 
# COPY index.php /var/www/html/


#new scripts
# RUN apt-get update && \
#     apt-get install -y git && \
#     docker-php-ext-install pdo_mysql pdo_sqlsrv pdo_dblib && \
#     pecl install sqlsrv && \
#     pecl install pdo_sqlsrv && \
#     docker-php-ext-enable sqlsrv pdo_sqlsrv

# COPY . /var/www/html/

# RUN chown -R www-data:www-data /var/www/html/storage && \
#     chown -R www-data:www-data /var/www/html/bootstrap/cache

# RUN a2enmod rewrite