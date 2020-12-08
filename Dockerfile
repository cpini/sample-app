ARG PHP_VERSION="7.4.13"
ARG TAG_NAME_ARG="latest"
FROM php:${PHP_VERSION:+${PHP_VERSION}-}fpm-alpine
LABEL maintainer="Cristian Pini"
ENV TZ=Europe/London
ENV BUILD_VERSION=$TAG_NAME_ARG
ENV PHP_CP_VAR=${PHP_VERSION:+${PHP_VERSION}-}
RUN apk update; \
apk upgrade; 
USER www-data