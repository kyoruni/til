# map

リストから順に要素を取得 & 加工して、新しいリストを作る

```python
pokemons = ['ダネ', 'ソウ', 'バナ']

result = map(lambda pokemon: 'フシギ' + pokemon, pokemons)
# mapオブジェクトで返ってくるので、表示するためにリスト型へ変換
print(list(result))
```

```python
['フシギダネ', 'フシギソウ', 'フシギバナ']
```