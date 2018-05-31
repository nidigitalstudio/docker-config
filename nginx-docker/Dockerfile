FROM nginx:latest

RUN apt update && apt install openssl

RUN mkdir -p /usr/local/etc/nginx/logs \
            /usr/local/etc/nginx/sites-available \
            /usr/local/etc/nginx/sites-enabled \
            /usr/local/etc/nginx/conf.d \
            /usr/local/etc/nginx/ssl \
            /usr/local/var/www/html

RUN rm -f /usr/local/etc/nginx/nginx.conf

COPY conf/php-fpm /usr/local/etc/nginx/conf.d/php-fpm
COPY conf/default /usr/local/etc/nginx/sites-available/default
COPY conf/default-ssl /usr/local/etc/nginx/sites-available/default-ssl

RUN openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=US/ST=State/L=Town/O=Office/CN=localhost" \
    -keyout /usr/local/etc/nginx/ssl/localhost.key \
    -out /usr/local/etc/nginx/ssl/localhost.crt

RUN ln -sfv /usr/local/etc/nginx/sites-available/default /usr/local/etc/nginx/sites-enabled/default
RUN ln -sfv /usr/local/etc/nginx/sites-available/default-ssl /usr/local/etc/nginx/sites-enabled/default-ssl