# COALESCE 最初にNULLでない値を返す

```sql
COALESCE(データ1, データ2, データ3 ...)
```

##### 使い方

```sql
mysql> SELECT column1 from hoge;

+-----------+
| column1   |
+-----------+
| ほげ      |
| ふが       |
| NULL      |
+-----------+
3 rows in set (0.00 sec)


mysql> SELECT COALESCE(column1, 'NULLですよ') AS result
    -> from hoge;
+--------------------+
| result             |
+--------------------+
| ほげ                |
| ふが                |
| NULLですよ           |
+--------------------+
3 rows in set (0.00 sec)
```

- 読み方

  - コアレス or コアリース
  
  
