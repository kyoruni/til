# sort

行を並び替える

```bash
$ cat hoge

Sasaki
Tanaka
Hasegawa
Aikawa
Sato
Oshima

$ sort hoge

Aikawa
Hasegawa
Oshima
Sasaki
Sato
Tanaka
```

## 逆順に並び替える

- `-r` オプション

```bash
$ cat hoge

Sasaki
Tanaka
Hasegawa
Aikawa
Sato
Oshima

$ sort -r hoge
Tanaka
Sato
Sasaki
Oshima
Hasegawa
Aikawa
```

## 数値順に並び替える

- `-n` オプション

```bash
$ cat number

5
6
8
2
9
10
1
7
3
4

# そのまま sort すると、数値順にならない
$ sort number

1
10
2
3
4
5
6
7
8
9

# -n オプションを付ける → 数値順になる
$ sort -n number

1
2
3
4
5
6
7
8
9
10
```