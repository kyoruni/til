# diff

差分を表示する

```bash
$ diff #{比較元ファイル} #{比較先ファイル}
```

```bash
# 比較元
$ cat poke
152,チコリータ,草
155,ヒノアラシ,炎
158,ワニノコ,水

# 比較先
$ cat poke2
152,チコリータ,くさ
155,ヒノアラシ,ほのお
158,ワニノコ,みず

# diff
$ diff poke poke2
1,3c1,3
< 152,チコリータ,草
< 155,ヒノアラシ,炎
< 158,ワニノコ,水
---
> 152,チコリータ,くさ
> 155,ヒノアラシ,ほのお
> 158,ワニノコ,みず
```

## ユニファイド形式

- `-u` オプション

- git っぽくて見やすい

```bash
# 比較元
$ cat poke
152,チコリータ,草
155,ヒノアラシ,炎
158,ワニノコ,水

# 比較先
$ cat poke2
152,チコリータ,くさ
155,ヒノアラシ,ほのお
158,ワニノコ,みず

# diff
$ diff -u poke poke2
--- poke	2021-09-18 20:26:17.000000000 +0900
+++ poke2	2021-09-18 20:25:28.000000000 +0900
@@ -1,3 +1,3 @@
-152,チコリータ,草
-155,ヒノアラシ,炎
-158,ワニノコ,水
+152,チコリータ,くさ
+155,ヒノアラシ,ほのお
+158,ワニノコ,みず
```