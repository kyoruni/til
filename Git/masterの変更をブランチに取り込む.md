# masterの変更をブランチに取り込む

## masterブランチに移動してpull

```
$ git checkout master
$ git pull
```

## 作業中のブランチに移動してmerge

```
$ git checkout hoge
$ git merge master
```

## masterじゃなくて別のブランチを取り込む

```
aiutoブランチ取り込みたいときは
$ git merge aiueo
```

## 参考URL

- [開発用ブランチにMasterブランチの最新コードを取り込む - Beeeat’s log](https://bake0937.hatenablog.com/entry/2017/11/07/081616)