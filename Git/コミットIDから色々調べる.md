# コミットIDから色々調べる

## そのコミットで変更されたファイル名を調べる

```
$ git show --name-only {コミットID}
```

##### 使ってみる

```
$ git show --name-only 1234567890123456789012345678901234567890

1234567890123456789012345678901234567890
Author: kyoruni <kyoruni@example.com>
Date:   Wed Oct 28 10:30:30 2020 +0900

    テストコミットです

src/hoge.sh
src/utils/fuga.sh
```

## そのコミットで変更された箇所を調べる

```
$ git show {コミットID} {ファイル名}
```

##### 使ってみる

```
$ git show 1234567890123456789012345678901234567890 src/hoge.sh

1234567890123456789012345678901234567890
Author: kyoruni <kyoruni@example.com>
Date:   Wed Oct 28 10:30:30 2020 +0900

    テストコミットです

diff --git a/src/hoge.sh b/src/hoge.sh
index xxxxxx..xxxxxx xxxxxx
--- a/src/hoge.sh
+++ b/src/hoge.sh
@@ -1,4 +1,4 @@
 a=1
-b=0
+b=1
 let c=$a/$b
 echo $c
```
