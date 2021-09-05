# volume

## ボリューム作成

```bash
# hoge という名前のボリューム作成
$ docker volume create hoge
```

## ボリュームの詳細を確認

```bash
# mysqlvolume の詳細を確認
$ docker volume inspect mysqlvolume
[
    {
        "CreatedAt": "2021-09-05T14:18:33Z",
        "Driver": "local",
        "Labels": {},
        "Mountpoint": "/var/lib/docker/volumes/mysqlvolume/_data",
        "Name": "mysqlvolume",
        "Options": {},
        "Scope": "local"
    }
]
```

- Mountpoint … 実際にマウントされている場所
