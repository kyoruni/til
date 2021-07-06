# rails new

## 基本

```bash
$ rails new [project name]

# hoge という名前のプロジェクト作る
$ rails new hoge
```

## ヘルプ

```bash
$ rails new -h
```

## オプション

| オプション | 概要 | デフォルト | 使える値 | 補足 |
| :---: | :---: | :---: | :---: | :---: |
| -d | データベースの種類 | sqlite3 | mysql, postgresql, sqlite3, oracle, sqlserver ... | |
| -G | git 関連のファイルを作成しない |  |  | `.git, .gitattributes, .gitignore` が作られなくなる |
| -M | Action Mailer を使わない | | | Action Mailer：メール送信してくれる機能 [参考](https://railsguides.jp/action_mailer_basics.html) |
| -T | Test::Unit を使わない | | | RSpec 使うならいらないかも… |

## 参考URL

- [railsコマンド(rails) | Railsドキュメント](https://railsdoc.com/rails)
