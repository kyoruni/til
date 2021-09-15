# tmux

## 起動

```bash
$ tmux
```

## 抜ける（デタッチ）

- 一旦離れるだけなので、再度アタッチすると実行した内容が残っている

- デタッチの「d」

`control` + `b` → `d`

## 再接続（アタッチ）

```bash
$ tmux a
```

## ウィンドウを増やす

- create の「c」

`control` + `b` → `c`

## ウィンドウを移動

`control` + `b` → ウィンドウ番号

- ウィンドウ番号は、下に出ている数字

- アスタリスクの付いているウィンドウを今見ている

```
[0] 0:bash- 1:bash*                              "6521bf4d025e" 18:17 08- 6月-21
```

### 前のウィンドウへ移動

- prev の「p」

`control` + `b` → `p`

### 次のウィンドウへ移動

- next の「n」

`control` + `b` → `n`

## ウィンドウを閉じる

`control` + `b` → `x`

- kill-pane 0? (y/n) の確認が出てくるので、`y` で終了する

- 全部閉じると、tmux ごと終了する

## ヘルプ

`control` + `b` → `?`

- `↑` `↓` でスクロール

- `q` で閉じる