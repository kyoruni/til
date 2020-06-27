## Railsのインストール

```
$ gem install rails
```

## プロジェクト作成

##### 作成（使用 DB は MySQL）

```
$ rails new ${プロジェクト名} -d mysql
```

##### バージョン指定して作成

```
$ rails _${バージョン}_ new ${プロジェクト名}
```

## DB作成

```
$ rake db:create
```

## ローカルサーバー立てる

- DB作成しないと立てられない

```
$ rails s
```
