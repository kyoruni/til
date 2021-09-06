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
## 特定の項目だけに絞って確認する

```bash
# fugaコンテナの、NetworkSettings.IpAddressを確認
$ docker container inspect --format="{{.NetworkSettings.IPAddress}}" fuga
172.17.0.3
```
