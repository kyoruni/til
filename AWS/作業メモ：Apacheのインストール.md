# AWS 作業メモ ： Apacheのインストール

## ssh でログイン

```bash
$ ssh -i 秘密鍵のファイル ec2-user@インスタンスのIPアドレス

# 例
$ ssh -i key.pem ec2-user@xxx.xxx.xxx.xxx
```

## Apache インストール

```bash
# -y: 確認なしでインストールする
$ sudo yum -y install httpd
```

## Apache 起動

```bash
$ sudo systemctl start httpd.service
```

### 起動しているか確認

```bash
$ systemctl status httpd.service

● httpd.service - The Apache HTTP Server
   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)
   Active: active (running) since 金 2020-12-25 06:46:42 UTC; 6min ago
```

## Apache 自動起動するように設定

このままだと、インスタンスを停止する度に 毎回手動で Apache を起動しなければならなくなる  
インスタンスの起動と同時に、自動で Apache が立ち上がるようにする

```bash
$ sudo systemctl enable httpd.service
```

### 設定できたか確認

- enabled になっていたら OK

```bash
$ sudo systemctl list-unit-files -t service | grep httpd

httpd.service                                 enabled
```

## 起動しているか確認する

### プロセスを確認する

```bash
$ ps -ax | grep httpd

 3350 ?        Ss     0:00 /usr/sbin/httpd -DFOREGROUND
 3351 ?        Sl     0:00 /usr/sbin/httpd -DFOREGROUND
 3352 ?        Sl     0:00 /usr/sbin/httpd -DFOREGROUND
 3353 ?        Sl     0:00 /usr/sbin/httpd -DFOREGROUND
 3354 ?        Sl     0:00 /usr/sbin/httpd -DFOREGROUND
 3355 ?        Sl     0:00 /usr/sbin/httpd -DFOREGROUND
 3519 pts/0    S+     0:00 grep --color=auto httpd
```

- httpd のプロセスがあることを確認する

- 先頭の数値は PID ( プロセスID ) で、 **kill** コマンドで終了させたい時などに使用する

### ネットワークの待ち受け状態を確認する

```bash
$ sudo lsof -i -n -P

httpd    3350     root    4u  IPv6  21229      0t0  TCP *:80 (LISTEN)
httpd    3351   apache    4u  IPv6  21229      0t0  TCP *:80 (LISTEN)
httpd    3352   apache    4u  IPv6  21229      0t0  TCP *:80 (LISTEN)
httpd    3353   apache    4u  IPv6  21229      0t0  TCP *:80 (LISTEN)
httpd    3354   apache    4u  IPv6  21229      0t0  TCP *:80 (LISTEN)
httpd    3355   apache    4u  IPv6  21229      0t0  TCP *:80 (LISTEN)
```

- ポート80番で、 httpd が待ち受けていることが分かる

## Apache にブラウザでアクセスしてみる

インスタンスの、パブリックIPアドレスをブラウザで開いてみる  
→ 応答がなくてアクセスできない

インスタンスのセキュリティグループ（ファイアウォール的なもの）で、80番ポートへの通信が全て弾かれているのが原因  
→ 80番ポートを開ける作業を行う

### 80番ポートの通信を通す

- ECS > セキュリティグループ > インスタンスに紐付けたセキュリティグループ

- 「インバウンドルール」タブを開く > インバウンドルールを編集

- 「ルールを追加」

  - 「カスタムTCP」を選択 > ポート範囲「80」、ソースは「カスタム」で「0.0.0.0/0」を入力

  - 「ルールを保存」で確定させる

上記の作業で、**80番ポートは全ての通信を許可する** 状態になる

ブラウザで再度アクセスすると、Apache のデフォルトページが表示される

![スクリーンショット 2020-12-25 16 22 55](https://user-images.githubusercontent.com/40832190/103125274-e3dbb980-46cd-11eb-9ccb-d202ba40e523.png)
