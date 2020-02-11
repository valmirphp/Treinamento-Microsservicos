FROM php:7.3.6-fpm-alpine3.9

EXPOSE 9000

ENTRYPOINT [ "php-fpm" ]