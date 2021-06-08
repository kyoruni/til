# curl

## GET 実行

```bash
$ curl http://example.com
```

## 結果をファイルに出力

`o` オプション

```bash
$ curl -o result.txt http://example.com
# 同じ curl http://example.com > result.txt
```

- ファイル出力時、何も表示しない（進捗、エラーが出なくなる）

`s` オプション

```bash
$ curl -s -o result.txt http://example.com
```

- ファイル出力時、進捗だけ表示（エラーは出る）

`sS` オプション

```bash
$ curl -sS -o result.txt http://example.com
```