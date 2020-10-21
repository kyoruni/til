# diff

## ★ リポジトリとステージングエリアの差分

```
$ git diff --staged
```

## ★ ブランチ間の差分

```
$ git diff {old branch} {new branch}
```

##### masterとhogeを比較

```
$ git diff master hoge
```

## ★ リモートとの差分

```
$ git diff origin/{old branch} {new branch}
```

##### リモートのmasterとhogeを比較

```
$ git diff origin/master hoge
```

## ★ 参考URL

- [【git】ブランチ間の差分の取り方 - Qiita](https://qiita.com/ryuchan00/items/56c0bcf0df9b9901ff92)
