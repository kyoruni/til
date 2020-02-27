# calcで変数を使う

- 変数展開が必要

#### NG

```
$hoge: 30px;

.piyo {
  width: calc(100px - $hoge);
}
```

#### OK

```
$hoge: 30px;

.piyo {
  width: calc(100px - #{$hoge});
}
```

## 参考
- [SCSSの変数と、CSS3のcalc()を併用するには - Qiita](https://qiita.com/mtmtkzm/items/2e3aef1b504ebcde5311)
