#!/bin/sh -l


if [ "$1" = 'box' ]; then
    sh -c "/root/.composer/vendor/bin/box ${*:3}"
elif [ "$1" = 'gpg' ]; then
    echo "$SECRET_KEY" > keys.asc
    echo "prepare import keys"
    gpg --batch --yes --import keys.asc
    echo "$PASSPHRASE" | gpg "${*:3}"
elif [ "$1" = 'php' ]; then
    sh -c "php ${*:3}"
fi
