# remote

## リモートの名前を表示

```bash
$ git remote
```

```bash
$ git remote

origin
```

## リモートの名前とURLを表示する

```bash
$ git remote -v show
```

```bash
$ git remote -v show

origin https://github.com/kyoruni/piyo.git (fetch)
origin https://github.com/kyoruni/piyo.git (push)
```

## リモートのURLを変更する

```bash
$ git remote set-url {リモート名} {newUrl}
```

```bash
$ git remote set-url origin https://github.com/kyoruni/hoge.git
```

## 参考URL

- [gitのremote urlを変更する(レポジトリ移行時) - Qiita](https://qiita.com/minoringo/items/917e325892733e0d606e)
