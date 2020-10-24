# ファイルの削除とaddを同時に行う

```
$ git rm hoge.txt
```

→ `rm hoge.txt` と、 `git add hoge.txt` が同時に行われる

# ファイル名変更とaddを同時に行う

```
$ git mv hoge.txt piyo.txt
```

→ `mv hoge.txt piyo.txt` と、 `git add hoge.txt piyo.txt` が同時に行われる
