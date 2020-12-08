ARG PHP_VERSION="7.4.13"
ARG TAG_NAME_ARG="latest"
FROM php:${PHP_VERSION:+${PHP_VERSION}-}fpm-alpine
LABEL maintainer="Cristian Pini"
ENV TZ=Europe/London
ENV BUILD_VERSION="${TAG_NAME_ARG}"
RUN apk update; \
apk upgrade; \
COPY --chown=www-data . /var/www/html
USER www-data