FROM php:7.2

LABEL com.github.actions.name="phpdoc-phpunit"
LABEL com.github.actions.description="run phpunit"
LABEL com.github.actions.icon="check"
LABEL com.github.actions.color="blue"

LABEL version="1.0.0"
LABEL name="phpdoc-phpunit-ga"
LABEL repository="http://github.com/phpDocumentor/quality-assurance"
LABEL homepage="http://github.com/actions"
LABEL maintainer="Jaapio <opensource@ijaap.nl>"

RUN mkdir -p /github/workspace \
    && yes | pecl install pcov \
    && echo "pcov.enabled=1" >> /usr/local/etc/php/conf.d/pcov.ini \
    && echo "pcov.directory=/github/workspace" >> /usr/local/etc/php/conf.d/pcov.ini

RUN apt-get update \
    && apt-get install -yq graphviz curl git libicu-dev libicu63 zlib1g-dev gpg \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install -j$(nproc) intl zip \
    && docker-php-ext-enable pcov

COPY --from=composer:1.8.4 /usr/bin/composer /usr/local/bin/composer

RUN composer global require phpunit/phpunit:^8.0 phpspec/prophecy-phpunit

WORKDIR "/github/workspace"

ENTRYPOINT ["/root/.composer/vendor/phpunit/phpunit/phpunit"]
