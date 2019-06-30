#!/bin/sh -l
if [[ "$1" == 'phpcbf' ]]; then
    sh -c "/root/.composer/vendor/bin/phpcbf ${*:7}"
else
    sh -c "/root/.composer/vendor/bin/phpcs $*"
fi
