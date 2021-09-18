# which

コマンドの場所を探す

```bash
# cat の場所を探す
$ which cat
/bin/cat
```

## メモ

- 探す先は環境変数の `$PATH` に入っている

  - `:` で連結されている

```bash
# $PATH の中身は以下で確認できる
$ echo $PATH
```
