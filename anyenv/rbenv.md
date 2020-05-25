# rbenv

## インストール済のバージョンを確認

```
$ rbenv versions
```

## インストールできるバージョンのリストを確認

```
$ rbenv install --list

2.5.8
2.6.6
2.7.1
```

## インストール

```
$ rbenv install ${version}
```

##### `2.7.1` をインストール

```
$ rbenv install 2.7.1
```


## Rubyのバージョンを変更（全体的に）

```
$ rbenv global ${version}
```

## Rubyのバージョンを変更（局所的に）

```
$ rbenv local ${version}
```

##### 挙動

- 今いるディレクトリに、 指定したバージョンを記載した `.ruby-version` ファイルを作る

- rbenvは、今いるディレクトリに `.ruby-version` ファイルがあればそのバージョンを優先する。

  - なければ、一つ上の階層の `.ruby-version` ファイルを探す
  
  - ホームディレクトリまで見つからなかったら、 `~/.rbenv/version` に書かれたバージョンを使う

-----

##### ■ インストールしたいバージョンがなかったら

- 例えば、 `2.7.1` をインストールしたいのに一覧になかった場合

- とりあえず表示されていないバージョン実行してみる

```
$ rbenv install 2.7.1
```

- バージョンアップのコマンドが出てくるので、それを実行する

```
ruby-build: definition not found: 2.7.1

See all available versions with `rbenv install --list'.

If the version you need is missing, try upgrading ruby-build:

  cd /Users/ユーザー名/.anyenv/envs/rbenv/plugins/ruby-build && git pull && cd - // <= これを実行する
```

-----

##### ■ どのバージョンをインストールするべきか

- [Ruby公式ページ](https://www.ruby-lang.org/ja/downloads/) で現在のバージョンを確認する


## 参考URL

- [rbenv/rbenv: Groom your app’s Ruby environment](https://github.com/rbenv/rbenv)

- [rbenvからRubyの最新のバージョンをインストールできなかったときやったこと - Qiita](https://qiita.com/makimoch/items/65da3ca353c53b3d9dd4)

- [rbenv | global と local と .ruby-version の微妙な関係 - Qiita](https://qiita.com/Yinaura/items/0b021984bb21ae77816d)
