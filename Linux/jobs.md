# jobs

## ジョブを停止させる

- `Ctrl + z`

```bash
# man を表示している間に Ctrl + z
$ man bash

[1]+  停止                  man bash

# .bashrc を編集している間に　Ctrl + z
$ vim ~/.bashrc

[2]+  停止                  vim ~/.bashrc

# 現在の job　を確認
$ jobs

[1]-  停止                  man bash
[2]+  停止                  vim ~/.bashrc

# プロセスID も見たい場合
$ jobs -l

[1]-  2982 Suspended: 18           man bash
[2]+  2996 Suspended: 18           vim ~/.bashrc
```

## 停止したジョブを再開する

```bash
fg %{ジョブ番号}
```

```bash
# 上記の man bash を再開させる
$ fg %1
```

- ジョブ番号を省略すると、 `jobs` で表示した時 `+` がついているジョブ（カレントジョブ）が再開される

## ジョブをバックグラウンドで実行する

- 完了まで時間のかかるコマンドを実行しているが、別の作業もしたいとき

  - `Ctrl + z` で一旦停止してから、 `bg %{ジョブ番号}`

- 最初からバックグラウンドで実行したいとき

  - コマンドの末尾に `&` を追加する

```bash
$ cp hoge1.txt hoge2.txt &
```

- バックグラウンドで動いているジョブを停止させる

  - `kill %{ジョブ番号}`


