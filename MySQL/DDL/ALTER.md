# ALTER

## カラム追加

```sql
ALTER TABLE ${テーブル名} ADD COLUMN ${カラム名} ${定義};
```

##### pokemons テーブルに、 type カラムを追加

```sql
ALTER TABLE pokemons ADD COLUMN type VARCHAR(50);
```

## カラム削除

```sql
ALTER TABLE ${テーブル名} DROP COLUMN ${カラム名};
```

##### pokemons テーブルから、name カラムを削除

```sql
ALTER TABLE pokemons DROP COLUMN name;
```
