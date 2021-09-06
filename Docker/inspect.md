# inspect

```bash
# hogeコンテナの詳細を確認
$ docker container inspect hoge

[
    {
        "Id": "45a3a69073f5010aa6cb3d34d3b08b816be923f8c6903776a18444bac4f9faf7",
        "Created": "2021-09-06T01:38:54.435541566Z",
        "Path": "httpd-foreground",
        "Args": [],
        "State": {
            "Status": "running",
            "Running": true,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 1662,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2021-09-06T01:38:55.067788288Z",
            "FinishedAt": "0001-01-01T00:00:00Z"
        },
## 以下省略
```

## ネットワークに接続されているコンテナを確認する

```bash
# ブリッジに接続されているコンテナの情報
## hogeとfugaが接続されている
$ docker network inspect bridge

## 省略
        "Containers": {
            "45a3a69073f5010aa6cb3d34d3b08b816be923f8c6903776a18444bac4f9faf7": {
                "Name": "hoge",
                "EndpointID": "fb5d6c4cbaabf2e09d8caa0deab83462f42c21252e20323b90ae6462c668faeb",
                "MacAddress": "02:42:ac:11:00:02",
                "IPv4Address": "172.17.0.2/16",
                "IPv6Address": ""
            },
            "7261a244d1202ec139ad12f59fff82863fbccd20c532a3264b9d57d160b8d9ae": {
                "Name": "fuga",
                "EndpointID": "932e2e5a40aee453064234e3240174ea8f46f42a20c055e2fa50a71d4b598475",
                "MacAddress": "02:42:ac:11:00:03",
                "IPv4Address": "172.17.0.3/16",
                "IPv6Address": ""
            }
        },
```

## 特定の項目だけに絞って確認する

```bash
# fugaコンテナの、NetworkSettings.IpAddressを確認
$ docker container inspect --format="{{.NetworkSettings.IPAddress}}" fuga
172.17.0.3
```
