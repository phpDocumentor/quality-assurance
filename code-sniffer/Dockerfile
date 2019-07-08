FROM php:7.3-alpine

LABEL com.github.actions.name="phpdoc-phpcs"
LABEL com.github.actions.description="check php coding standards"
LABEL com.github.actions.icon="check"
LABEL com.github.actions.color="blue"

LABEL version="2.0.0"
LABEL name="phpdoc-phpcs-ga"
LABEL repository="http://github.com/phpdocumentor/phpdoc-qa"
LABEL homepage="http://github.com/actions"
LABEL maintainer="Jaapio <opensouce@ijaap.nl>"

COPY --from=composer:1.8.4 /usr/bin/composer /usr/local/bin/composer

RUN composer global require doctrine/coding-standard:^5.0

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
