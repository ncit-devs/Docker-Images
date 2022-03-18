FROM chipaau/php:7.3-apache

COPY ./docker/php.ini /usr/local/etc/php/php.ini
COPY ./docker/apache-app.conf /etc/apache2/apache.conf
COPY ./docker/apache.conf /etc/apache2/sites-enabled/000-default.conf

WORKDIR /var/www/html

COPY ./ /var/www/html

# COPY .env.example .env

# added
RUN composer install -o

# RUN php artisan key:generate

RUN php artisan storage:link

RUN sudo chgrp www-data -R storage/ bootstrap/cache/
RUN sudo chmod ug+rwx -R storage/ bootstrap/cache/

# added
EXPOSE 8080

# docker build -t testing .
# docker run -d -p 8080:8080 --name testLaravel testing
# docker container exec -it -u user  testLaravel zsh