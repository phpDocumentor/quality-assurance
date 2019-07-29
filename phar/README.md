# Phar github action

This image can be used to create gpg signed phar. 

## Usage

The example below will build the phar. You might want to add extra steps 
to prepare the environment of your project before executing box.

```
workflow "Release workflow" {
  on = "release"
  resolves = [
    "release phar"
  ]
}

action "build phar" {
  uses = "docker://phar-ga"
  args = "box compile"
}
```

### Sign a artifact

This image supports gpg signatures. The example below shows how to
use a passphase protected key. 

Please be aware that you are publishing your
secret key on a public website. So we highly recommend you to create a sub key
and do never use your primary keys in a ci like environment. 

The image will automatically import the provided `SECRET_KEY`. The `--command-fd 0` flag will
fetch the `PASSPHRASE` STDIN, which will be provided by the image when needed. 

```
action "sign phar" {
  uses = "docker://phar-ga"
  args = "gpg --command-fd 0 --pinentry-mode loopback -u abcfg --batch --detach-sign --output build/phpDocumentor.phar.asc build/phpDocumentor.phar"
  secrets = ["SECRET_KEY", "PASSPHRASE"]
  needs = ["build phar"]
}
```
