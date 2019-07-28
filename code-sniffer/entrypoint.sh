#!/bin/sh -l
if [ "$1" = 'phpcbf' ]; then
    COMMAND=$(echo "${*}" | cut -c 8-)
    sh -c "/root/.composer/vendor/bin/phpcbf ${COMMAND}"
else
    sh -c "/root/.composer/vendor/bin/phpcs $*"
fi
