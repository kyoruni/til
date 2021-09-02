# 作業メモ：EC2

## 課金を抑えるには

- 使わない間は停止しておく

- 停止して再起動すると、パブリック IPv4 DNS or パブリック IPv4 アドレス は変更される

## ssh で EC2 に接続

```bash
ssh ubuntu@XXXXX -i ~/.ssh/XXX.pem
```

- ubuntu@XXXXX

  - XXXXX … パブリック IPv4 DNS or パブリック IPv4 アドレス

  - XXX.pem … 自分の鍵ファイル