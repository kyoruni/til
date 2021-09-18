# wc

ファイルの行数・単語数・バイト数を数える

## 行数を数える

- `-l` オプション

- 1行に1件データが記録されているファイルの行数を数えると、データの件数が分かる

```bash
# hoge.txt は 9行ある
$ wc -l hoge.txt
       9 hoge.txt
```

## 単語数を数える

- `-w` オプション

```bash
# hoge.txt は 9単語ある
$ wc -w hoge.txt
       9 hoge.txt
```

## バイト数を数える

- `-c` オプション

```bash
# hoge.txt は 45バイトある
$ wc -c hoge.txt
      45 hoge.txt
```

