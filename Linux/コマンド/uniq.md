# uniq

重複行を取り除く

```bash
$ cat fuga
hoge
hoge
hoge
fuga
piyo
piyo

$ uniq fuga
hoge
fuga
piyo
```

- 離れた位置にあると重複扱いされない

```bash
$ cat fuga
hoge
hoge
fuga
piyo
piyo
hoge

$ uniq fuga
hoge
fuga
piyo
hoge
```

- このような場合、ソートしてから uniq

```bash
$ cat fuga
hoge
hoge
fuga
piyo
piyo
hoge

$ sort fuga | uniq
fuga
hoge
piyo
```

## 重複行をカウント

- `-c` オプション

```bash
$ cat fuga
hoge
hoge
hoge
fuga
piyo
piyo

$ uniq fuga
hoge
fuga
piyo

$ uniq -c fuga
   3 hoge
   1 fuga
   2 piyo

# 応用
## 出てきた回数が多い順に並べる
$ uniq -c fuga | sort -rn
   3 hoge
   2 piyo
   1 fuga
```