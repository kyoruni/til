# build

Dockerfile から、イメージをビルドする

## Dockerfile を作る

##### Dockerfile

```
FROM httpd
COPY index.html /usr/local/apache2/htdocs/
```

- httpd イメージを元にする

- カレントディレクトリにある `index.html` を、 `/usr/local/apache2/htdocs/` にコピーした状態でビルドする

## ビルドする

```bash
# hoge というイメージ名でビルドする
$ docker build -t hoge
```

- `hoge:1.0` のように、タグを指定することもできる
