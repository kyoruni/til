# unicodedata

## digit

文字列を int 値に変換する

## numeric

文字列を float 値に変換する

※ 1文字ずつしか受け付けてくれないので注意

```python
import unicodedata

print('digit >>', unicodedata.digit('3'))
print('numeric >>', unicodedata.numeric('3'))
```

```python
digit >> 3
numeric >> 3.0
```
