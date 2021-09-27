# tar

アーカイブファイルの作成

```bash
# hoge ディレクトリの中身を、hoge.tar ファイルにまとめてアーカイブする
$ tar cf hoge.tar hoge
```

- `c` create 新しくアーカイブファイルを作る

- `f` file ファイルを引数に取る場合は必ず付ける

## アーカイブファイルの中身を確認する

```bash
# hoge.tar の中身を確認
$ tar tf hoge.tar

hoge/
hoge/file-5.txt
hoge/file-4.txt
hoge/file-3.txt
hoge/file-2.txt
hoge/file-1.txt
```

```bash
# v オプションを付けると、ファイルのパーミッション等も確認できる
$ tar tvf hoge.tar

drwxr-xr-x  0 kyoruni staff       0  9 27 17:49 hoge/
-rw-r--r--  0 kyoruni staff       0  9 27 17:49 hoge/file-5.txt
-rw-r--r--  0 kyoruni staff       0  9 27 17:49 hoge/file-4.txt
-rw-r--r--  0 kyoruni staff       0  9 27 17:49 hoge/file-3.txt
-rw-r--r--  0 kyoruni staff       0  9 27 17:49 hoge/file-2.txt
-rw-r--r--  0 kyoruni staff       0  9 27 17:49 hoge/file-1.txt
```

## アーカイブファイルを展開して、中身を取り出す

```bash
# hoge.tar を展開する
$ tar xf hoge.tar
```

展開したときに同盟のファイルがあると、上書きしてしまうので注意する

## アーカイブしたファイルを gz ファイルに圧縮する

- `z` オプション

```bash
# hoge ディレクトリの中身を、まとめてアーカイブする
# アーカイブしたファイルを、hoge.tar.gzip ファイルに圧縮する
$ tar czf hoge.tar.gz hoge
```

```bash
# 展開
$ tar xf dir1.tar.gz
```

```bash
# z オプション付けても良いけど、こちらは古い書き方らしい
$ tar xzf dir1.tar.gz
```

## メモ

- パーミッションやタイムスタンプもそのままアーカイブしてくれる

- 一般ユーザーで実行した場合、root ユーザーにしか権限のないファイルが含まれていると正しくアーカイブできない

  - root ユーザーにしか権限のないファイルをアーカイブしたいときは、root ユーザーで実行する必要がある