# cp

ファイルをコピーする

```bash
$ cp コピー元 コピー先
```

- `i` オプションを付けると、コピー先が存在するときに上書きして良いか確認が入る

```bash
$ cp -i newfile copyfile 
overwrite copyfile? (y/n [n])
```


## ファイルのコピー

```bash
# コピー前の確認
$ ls -la

drwxr-xr-x   3 kyoruni  staff    96  9 12 21:37 ./
drwxr-xr-x+ 33 kyoruni  staff  1056  9 12 21:44 ../
-rw-r--r--   1 kyoruni  staff    15  9 12 21:37 newfile

# newfile を copyfile にコピーする
$ cp newfile copyfile

# コピーされた
$ ls -la
drwxr-xr-x   4 kyoruni  staff   128  9 12 21:49 ./
drwxr-xr-x+ 33 kyoruni  staff  1056  9 12 21:44 ../
-rw-r--r--   1 kyoruni  staff    15  9 12 21:49 copyfile
-rw-r--r--   1 kyoruni  staff    15  9 12 21:37 newfile
```


## ディレクトリのコピー

- `-r` 再帰的にコピー

```bash
# コピー前の確認
$ ls -la

drwxr-xr-x 7 root root  224  5月 19 21:28 .
drwxr-xr-x 1 root root 4096  5月 19 21:12 ..
drwxr-xr-x 5 root root  160  5月 19 21:28 hoge/

# hoge の中身を fuga にコピーする
$ cp -r hoge fuga

# コピーされた
$ ls -la

drwxr-xr-x 8 root root  256  5月 19 21:29 .
drwxr-xr-x 1 root root 4096  5月 19 21:12 ..
drwxr-xr-x 5 root root  160  5月 19 21:29 fuga
drwxr-xr-x 5 root root  160  5月 19 21:28 hoge
```
