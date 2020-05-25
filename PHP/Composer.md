## インストール

- [公式](https://getcomposer.org/download/)の通りに

- 最新バージョンは [ここ](https://getcomposer.org/) で確認

##### ファイルを持ってくる

```
$ php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
```

##### 持ってきたファイルが有効かチェック

- `Installer verified` と表示されればOK

```
$ php -r "if (hash_file('sha384', 'composer-setup.php') === 'e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
```

##### インストール実行

```
$ php composer-setup.php
```

##### 完了したら、インストーラーはいらないので削除

```
$ php -r "unlink('composer-setup.php');"
```

##### `composer` コマンドが使えるように移動

```
$ mv composer.phar /usr/local/bin/composer
```

##### インストール or アップデートできたかどうか確認

```
$ composer --version
```

-----

## バージョンアップするには

- もう一回上書きインストールでOK

-----

## 参考URL

- [Composer](https://getcomposer.org/)

- [Composerの導入＆使い方（初心者の復習用） - Qiita](https://qiita.com/suke/items/770bccf8a43f9247daf5)

- [CentOS7にComposerをインストールする - Qiita](https://qiita.com/inakadegaebal/items/d370bcb1627fce2b5cd1)
