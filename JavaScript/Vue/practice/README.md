# kyoruni/til/Javascript/Vue/practice

- Vue.js お試し用プロジェクト

## 初回起動

### コンテナ起動

```
$ docker-compose up -d --build
$ docker-compose exec vue ash
```

### モジュールのインストール、ローカルホスト立ち上げ

```
$ npm install
$ npm run serve
```

## 2回目

### `Dockerfile` の、下記部分をコメントアウト

```
command: tail -f /dev/null
```

### `Dockerfile` の、下記部分のコメントアウトを解除

```
# command: npm run serve
```

### コンテナ起動＆ビルド

```
$ docker-compose up -d --build
```

## 2回目以降

### コンテナ起動

```
$ docker-compose up -d
```

## 停止方法

### コンテナ閉じる

```
$ docker-compose down
```