# zip

アーカイブと圧縮を同時に行い、zip ファイルを作成する

```bash
# hoge ディレクトリを、hoge.zip に圧縮する
$ zip -r hoge.zip hoge

  adding: hoge/ (stored 0%)
  adding: hoge/file-5.txt (stored 0%)
  adding: hoge/file-4.txt (stored 0%)
  adding: hoge/file-3.txt (stored 0%)
  adding: hoge/file-2.txt (stored 0%)
  adding: hoge/file-1.txt (stored 0%)
```

- `r` オプション … ディレクトリ配下のファイルも圧縮対象にする

  - ディレクトリだけ圧縮したいことはないと思われるので、常に付けておくぐらいの認識で良い

## zip ファイルの中身を確認する

```bash
$ zipinfo hoge.zip

Archive:  hoge.zip
Zip file size: 950 bytes, number of entries: 6
drwxr-xr-x  3.0 unx        0 bx stor 21-Sep-27 17:49 hoge/
-rw-r--r--  3.0 unx        0 bx stor 21-Sep-27 17:49 hoge/file-5.txt
-rw-r--r--  3.0 unx        0 bx stor 21-Sep-27 17:49 hoge/file-4.txt
-rw-r--r--  3.0 unx        0 bx stor 21-Sep-27 17:49 hoge/file-3.txt
-rw-r--r--  3.0 unx        0 bx stor 21-Sep-27 17:49 hoge/file-2.txt
-rw-r--r--  3.0 unx        0 bx stor 21-Sep-27 17:49 hoge/file-1.txt
6 files, 0 bytes uncompressed, 0 bytes compressed:  0.0%
```

## zip ファイルを展開する

```bash
$ unzip hoge.zip

Archive:  hoge.zip
   creating: hoge/
 extracting: hoge/file-5.txt
 extracting: hoge/file-4.txt
 extracting: hoge/file-3.txt
 extracting: hoge/file-2.txt
 extracting: hoge/file-1.txt
```

## パスワード付き zip ファイルを作成する

- `e` オプション

```bash
# hoge ディレクトリを、パスワード付きで hoge.zip に圧縮する
$ zip -er hoge.zip hoge

Enter password:
Verify password:
  adding: hoge/ (stored 0%)
  adding: hoge/file-5.txt (stored 0%)
  adding: hoge/file-4.txt (stored 0%)
  adding: hoge/file-3.txt (stored 0%)
  adding: hoge/file-2.txt (stored 0%)
  adding: hoge/file-1.txt (stored 0%)
```

展開するときに、パスワードの入力を要求される

```bash
$ unzip hoge.zip

Archive:  hoge.zip
[dir1.zip] hoge/file-5.txt password:
 extracting: hoge/file-5.txt
 extracting: hoge/file-4.txt
 extracting: hoge/file-3.txt
 extracting: hoge/file-2.txt
 extracting: hoge/file-1.txt
```