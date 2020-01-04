FROM php:7.3-alpine

LABEL com.github.actions.name="phpdoc-phar"
LABEL com.github.actions.description="phar & release utils container"
LABEL com.github.actions.icon="build"
LABEL com.github.actions.color="blue"

LABEL version="1.0.0"
LABEL name="phpdoc-phar-ga"
LABEL repository="http://github.com/phpDocumentor/quality-assurance"
LABEL homepage="http://github.com/actions"
LABEL maintainer="Jaapio <opensource@ijaap.nl>"

COPY --from=composer:1.8.4 /usr/bin/composer /usr/local/bin/composer

RUN composer global require humbug/box
RUN apk add --no-cache git gnupg ncurses

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
