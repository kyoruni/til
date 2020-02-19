# kyoruni/til/Javascript/Vue/practice

- Vue.js お試し用プロジェクト

## コンテナ起動

```
$ docker-compose up -d --build
$ docker-compose exec vue ash
```

#### モジュールのインストール

```
$ cd sandbox
$ npm install
```

2回目以降は `npm install` 省略可

#### ローカルホスト立ち上げ

```
$ npm run serve
```

## 停止方法

#### コンテナ閉じる

```
$ docker-compose down
```
