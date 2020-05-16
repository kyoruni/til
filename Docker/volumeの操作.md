## volumeの操作

### 一覧を見る

```
$ docker volume ls
```

### 削除

```
$ docker volume rm ${volume name}
```

##### → 使い方

```
$ docker volume ls

DRIVER              VOLUME NAME
local               1a08ca30a3712e2d7f29394df1abf731f9ed87a14eabb3784bfcfd57282b4117

$ docker volume rm 1a08ca30a3712e2d7f29394df1abf731f9ed87a14eabb3784bfcfd57282b4117
```

### volumeの正体を確認する

```
$ docker volume inspect ${volume name}
```
