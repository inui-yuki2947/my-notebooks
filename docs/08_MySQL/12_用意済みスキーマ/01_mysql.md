# MySQL/用意済みスキーマ/mysql

## テーブル一覧

| テーブル     | 概要                                 |
| ------------ | ------------------------------------ |
| `user` | アカウント情報が格納されたテーブル。 |

## userテーブル

| カラム | 概要         |
| ------ | ------------ |
| `user` | ユーザー名。 |
| `host` | ホスト名。   |

### 例

```mysql
SELECT user, host FROM mysql.user;
```

## 参考資料

- [MySQL :: MySQL 8.0 リファレンスマニュアル :: 5.3 mysql システムスキーマ](https://dev.mysql.com/doc/refman/8.0/ja/system-schema.html)
