# len

## 文字列の長さを取得する

```python
text   = 'フシギダネ'
result = len(text)
print(result)
```

```python
5
```

バイト数ではなくて文字数

```python
texts  = ['あいうえお', 'アイウエオ', 'ｱｲｳｴｵ', 'ABCDE', '12345','😀😀😀😀😀']

for text in texts:
    length = len(text)
    print(text, length)
`````

```python
あいうえお 5
アイウエオ 5
ｱｲｳｴｵ 5
ABCDE 5
12345 5
😀😀😀😀😀 5
```

## バイト数が欲しいとき

### unicodedata モジュールの、 `east_asian_width` を使う

```python
import unicodedata

texts  = ['あ', 'ア', 'ｱ', 'A', '1','😀']
# 1文字ずつしか渡せない
for text in texts:
    print(text, unicodedata.east_asian_width(text))
```

```python
あ W
ア W
ｱ H
A Na
1 Na
😀 W
```

##### east_asian_width で返ってくる分類

| 値 | バイト数 | 補足 |
| ---- | ---- | ---- |
| F  | 2 | FullWidth 全角英数 |
| W  | 2 | Wide 漢字、全角ひらがな、全角カタカナ、句読点 |
| A  | 2 | Ambiguous 特殊文字 |
| Na | 1 | Narrow 半角英数 |
| H  | 1 | Halfwidth 半角カタカナ |
| N  | 1 | Neutral その他(アラビア文字など) |

- 参考 ： [東アジアの文字幅 - Wikipedia](https://ja.wikipedia.org/wiki/%E6%9D%B1%E3%82%A2%E3%82%B8%E3%82%A2%E3%81%AE%E6%96%87%E5%AD%97%E5%B9%85)
