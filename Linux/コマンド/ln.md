# シンボリックリンク

Windowsでいうところの、ショートカットを作るイメージ

## シンボリックリンクを作る

```bash
$ ln -s 参照先 リンク名
```

```bash
# project/til/README.md へのショートカットを、hoge_link という名前で作る
$ ln -s projects/til/README.md hoge_link

# hoge_link = project/til/README.mdが表示される
$ cat hoge_link
```

## メモ

- シンボリックリンクを削除するときは、普通に `rm` で削除すればよい

- ショートカットなので、シンボリックリンクを削除しても元のファイルは残っている！
