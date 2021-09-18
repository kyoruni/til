# mv

## ファイル名変更

```bash
# 一覧を確認
$ ls -la

drwxr-xr-x 5 root root 160  5月 19 21:28 ./
drwxr-xr-x 8 root root 256  5月 19 21:29 ../
-rw-r--r-- 1 root root   0  5月 19 21:28 hoge1
-rw-r--r-- 1 root root   0  5月 19 21:28 hoge2
drwxr-xr-x 2 root root  64  5月 19 21:28 piyo/

# piyo を pika に変更
$ mv piyo pika

# 変更された
$ ls -la

drwxr-xr-x 5 root root 160  5月 19 21:34 ./
drwxr-xr-x 8 root root 256  5月 19 21:29 ../
-rw-r--r-- 1 root root   0  5月 19 21:28 hoge1
-rw-r--r-- 1 root root   0  5月 19 21:28 hoge2
drwxr-xr-x 2 root root  64  5月 19 21:28 pika/
```

## ファイル移動

```bash
# 変更前の確認
$ ls -la

drwxr-xr-x 5 root root 160  5月 19 21:34 ./
drwxr-xr-x 8 root root 256  5月 19 21:29 ../
-rw-r--r-- 1 root root   0  5月 19 21:28 hoge1
-rw-r--r-- 1 root root   0  5月 19 21:28 hoge2
drwxr-xr-x 2 root root  64  5月 19 21:28 pika/

# hoge1 を pika 内に移動
$ mv hoge1 pika

# 移動した
$ ls -la

drwxr-xr-x 4 root root 128  5月 19 21:35 ./
drwxr-xr-x 8 root root 256  5月 19 21:29 ../
-rw-r--r-- 1 root root   0  5月 19 21:28 hoge2
drwxr-xr-x 3 root root  96  5月 19 21:35 pika/

$ ls -la pika

drwxr-xr-x 3 root root  96  5月 19 21:35 ./
drwxr-xr-x 4 root root 128  5月 19 21:35 ../
-rw-r--r-- 1 root root   0  5月 19 21:28 hoge1
```

## メモ

- 移動先に同名のファイルがある場合、問答無用で上書きされる

  - `i` オプションを付けると、上書き前に確認が入る

```bash
$ mv -i file1 dir1
overwrite dir1/file1? (y/n [n])
```
