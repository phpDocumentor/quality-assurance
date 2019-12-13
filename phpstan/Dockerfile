FROM phpstan/phpstan:0.12

LABEL com.github.actions.name="phpdoc-phpstan"
LABEL com.github.actions.description="run phpstan, a php static analysis tool"
LABEL com.github.actions.icon="check"
LABEL com.github.actions.color="blue"

LABEL version="1.0.0"
LABEL name="phpdoc-phpstan-ga"
LABEL repository="http://github.com/phpdocumentor/phpdoc-qa"
LABEL homepage="http://github.com/actions"
LABEL maintainer="Jaapio <opensouce@ijaap.nl>"


RUN apk --update --progress --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.9/community add \
    php7-intl \
    php7-xsl \
    && composer global require phpstan/phpstan-phpunit \
                               phpstan/phpstan-mockery \
                               phpstan/phpstan-webmozart-assert \
                               phpstan/phpstan-php-parser \
    && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

ENTRYPOINT ["phpstan"]
