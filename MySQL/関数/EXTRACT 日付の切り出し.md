# EXTRACT 日付の切り出し

```
EXTRACT(切り出したい日付 FROM 切り出し対象)
```

##### 使ってみる

```sql
mysql> SELECT CURRENT_TIMESTAMP,
       EXTRACT(YEAR FROM CURRENT_TIMESTAMP)  AS year,
       EXTRACT(MONTH FROM CURRENT_TIMESTAMP) AS month,
       EXTRACT(DAY FROM CURRENT_TIMESTAMP)   AS day;

+---------------------+------+-------+------+
| CURRENT_TIMESTAMP   | year | month | day  |
+---------------------+------+-------+------+
| 2020-10-28 22:01:34 | 2020 |    10 |   28 |
+---------------------+------+-------+------+
1 row in set (0.00 sec)
```

- EXTRACT で切り出した値は、日付型ではなく **数値型** になる
