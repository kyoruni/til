# re

- 正規表現

## 基本

- 最初にマッチした部分のみを取得

- 何もマッチしなければ、結果は `None` になる

```python
import re

text = '電話番号は080-1234-5678です！会社の携帯は090-9876-5432です！'

pattern = re.compile(r'(\d{2,4})-(\d{2,4})-(\d{2,4})')
result  = pattern.search(text)

if result := pattern.search(text):
    print('マッチした文字列', result.group(0))
    print(result.group(1))
    print(result.group(2))
    print(result.group(3))
```

```python
マッチした文字列 080-1234-5678
080
1234
5678
```

##### 名前付きキャプチャグループ

- パターンのグループに、任意の名前が付けられる

- `?P<グループ名>` で指定

- 取り出す時にもグループ名が使える → 可読性が上がる！

```python
import re

text = '電話番号は080-1234-5678です！会社の携帯は090-9876-5432です！'

pattern = re.compile(r'(?P<area>\d{2,4})-(?P<city>\d{2,4})-(?P<local>\d{2,4})')
result  = pattern.search(text)

if result := pattern.search(text):
    print('マッチした文字列', result.group(0))
    print(result.group('area'))
    print(result.group('city'))
    print(result.group('local'))
```

```python
マッチした文字列 080-1234-5678
080
1234
5678
```


## マッチした文字全てを取得

```python
import re

text = '電話番号は080-1234-5678です！会社の携帯は090-9876-5432です！'

pattern = re.compile(r'\d{2,4}-\d{2,4}-\d{2,4}')
results = pattern.findall(text)

for result in results:
    print(result)
```

```python
080-1234-5678
090-9876-5432
```

##### オブジェクトで取得したい時は、 `finditer`

```python
import re

text = '電話番号は080-1234-5678です！会社の携帯は090-9876-5432です！'

pattern = re.compile(r'(\d{2,4})-(\d{2,4})-(\d{2,4})')
results = pattern.finditer(text)

for result in results:
    print('マッチングした文字列', result.group())
    print('先頭', result.start())
    print('末尾', result.end())
    print(result.group(1))
    print(result.group(2))
    print(result.group(3))
````

```python
マッチングした文字列 080-1234-5678
先頭 5
末尾 18
080
1234
5678
マッチングした文字列 090-9876-5432
先頭 27
末尾 40
090
9876
5432
```

## 大文字、小文字を区別しない

##### re.IGNORECASE

```python
import re

text = 'hoge！HOGE！'

pattern = re.compile(r'[a-z]{4}', re.IGNORECASE)
results = pattern.findall(text)

for result in results:
    print(result)
```

```python
hoge
HOGE
```

##### `(?i)` を先頭につけても同じ結果

```python
pattern = re.compile(r'(?i)[a-z]{4}')
```

##### オプションなしの場合

```python
import re

text = 'hoge！HOGE！'

pattern = re.compile(r'[a-z]{4}')
results = pattern.findall(text)

for result in results:
    print(result)
```

```python
hoge
```

- 以下のように書けば大文字小文字区別なしにできる

- 記述が増える & 複雑なパターンの場合指定もれ等が発生しそうなので、なるべくオプションを使う

```python
pattern = re.compile(r'[a-zA-Z]{4}')
```

## パターンを複数行に分けて書く

##### re.VERBOSE

```python
import re

text = '私のメールアドレスはhoge@example.comです。弟のアドレスはfuga@example.comです。'

pattern = re.compile(r"""
    [a-z0-9.!#$%&'*+/=?^_{|}~-]+ # ローカル
    @                            # アットマーク 
    [a-z0-9-]+\.[a-z0-9-]+       # ドメイン""",
    re.VERBOSE
)
results = pattern.findall(text)

for result in results:
    print(result)
```

```python
hoge@example.com
fuga@example.com
```

##### `(?x)` を先頭につけても同じ結果

```python
pattern = re.compile(r"""(?x)
    [a-z0-9.!#$%&'*+/=?^_{|}~-]+ # ローカル
    @                            # アットマーク 
    [a-z0-9-]+\.[a-z0-9-]+       # ドメイン"""
)
```

##### オプションなしの場合

```python
pattern = re.compile(r"[a-z0-9.!#$%&'*+/=?^_{|}~-]+@[a-z0-9-]+\.[a-z0-9-]+")
```

- 複雑なパターンだと可読性が落ちるので、コメントを入れながら & パーツごとに分けて書けるのは便利

## 複数のオプションを使う

- | で区切って書く

```python
import re

text = '私のメールアドレスはhoge@example.comです。弟のアドレスはFuGa@example.comです。'

pattern = re.compile(r"""
    [a-z0-9.!#$%&'*+/=?^_{|}~-]+ # ローカル
    @                            # アットマーク 
    [a-z0-9-]+\.[a-z0-9-]+       # ドメイン""",
    re.IGNORECASE | re.VERBOSE
)
results = pattern.findall(text)

for result in results:
    print(result)
```

```python
hoge@example.com
FuGa@example.com
```

## 出来るだけ短い文字列を一致させる

- 通常の挙動では、出来るだけ長い文字列をマッチさせようとする

- 例えば、以下の場合 `<p>` 〜 `</h1>` がひとつの塊としてマッチする

```python
import re

text = '<p><strong>段落</strong></p><h1>見出し1</h1>'

pattern = re.compile(r'<.+>')
results = pattern.findall(text)

for result in results:
    print(result)
```

```python
<p><strong>段落</strong></p><h1>見出し1</h1>
```

この例でHTMLを小分けにしたい場合は `re.compile(r'<.+?>')` のように、可変長パターンの後ろに **?** を付けてあげる

```python
import re

text = '<p><strong>段落</strong></p><h1>見出し1</h1>'

pattern = re.compile(r'<.+?>')
results = pattern.findall(text)

for result in results:
    print(result)
```

HTML要素がバラバラに取れた

```python
<p>
<strong>
</strong>
</p>
<h1>
</h1>
```
