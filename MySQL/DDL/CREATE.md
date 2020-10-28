# CREATE

## データベース作成

```sql
CREATE DATABASE ${データベース名};
```

##### hoge データベースを作る

```sql
CREATE DATABASE hoge;
```

## テーブル作成

##### users テーブルを作る

```sql
CREATE TABLE users (
  id          INT UNSIGNED NOT NULL AUTO_INCREMENT                                     COMMENT 'ID',
  name        VARCHAR(50) NOT NULL                                                     COMMENT '名前',
  created_at  DATETIME NOT NULL                                                        COMMENT '作成日時',
  updated_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ユーザー';
```
