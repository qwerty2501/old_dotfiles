# Installing

```console
u=https://raw.githubusercontent.com/qwerty2501/dotfiles/master/bootstrap.sh&& \
b=$(mktemp -u)&&((command -v curl&&curl -o $b $u)||(command -v wget&&wget -qO $b $u))&& \
bash $b
```

