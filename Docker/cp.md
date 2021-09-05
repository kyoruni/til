# cp

Docker ホストと Docker コンテナ間でファイルをコピーする

## ホストからコンテナにコピー

```bash
# ホストの /hoge/index.html を、 web01 コンテナの /usr/local/apache2/htdocs/ にコピー
$ docker cp /hoge/index.html web01:/usr/local/apache2/htdocs/

# ホストの /hoge/hoge.html を、 web02 コンテナの /usr/local/apache2/htdocs/index.html にコピー
$ docker cp /tmp/hoge.html web02:/usr/local/apache2/htdocs/index.html
```
