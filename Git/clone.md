# clone.md

## 基本

```
$ git clone {クローン元}
```

##### til リポジトリのクローン

```
$ git clone https://github.com/kyoruni/til.git
```

### ■ クローン先ディレクトリ名を指定

- デフォルトだと、リポジトリと同じ名前のディレクトリにクローンする

- ローカルには別の名前で置いておきたい時

```bash
$ git clone {クローン元} {クローン先}
```

##### til リポジトリを、 hoge ディレクトリ内にクローン

```bash
$ git clone https://github.com/kyoruni/til.git hoge
```

----------

## オプション

### ■ `--depth` 指定した数のコミット数だけ持ってくる

- 履歴が長いリポジトリのクローンには時間がかかるかも

- ちょっと見てみたい時だけの時は、最新の1件だけ欲しいかも

```bash
$ git clone --depth {欲しいコミット数} {クローン元}
```

##### 最新のコミットだけ持ってくる

```bash
$ git clone --depth 1 https://github.com/kyoruni/til.git

# ディレクトリ名指定しても良いぞ
$ git clone --depth 1 https://github.com/kyoruni/til.git til_clone
```

###### 使ってみる

```bash
# 全部クローン
kyoruni: ~/projects$ git clone https://github.com/kyoruni/til.git til_clone_all
Cloning into 'til_clone_all'...
remote: Enumerating objects: 328, done.
remote: Counting objects: 100% (328/328), done.
remote: Compressing objects: 100% (307/307), done.
remote: Total 1166 (delta 189), reused 52 (delta 20), pack-reused 838
Receiving objects: 100% (1166/1166), 459.65 KiB | 462.00 KiB/s, done.
Resolving deltas: 100% (661/661), done.

# 最新1件だけクローン
kyoruni: ~/projects$ git clone --depth 1 https://github.com/kyoruni/til.git til_clone_1st
Cloning into 'til_clone_1st'...
remote: Enumerating objects: 98, done.
remote: Counting objects: 100% (98/98), done.
remote: Compressing objects: 100% (93/93), done.
remote: Total 98 (delta 0), reused 64 (delta 0), pack-reused 0
Unpacking objects: 100% (98/98), 52.80 KiB | 290.00 KiB/s, done. 
```

→ 最新1件だけの方がめちゃくちゃ早かった
