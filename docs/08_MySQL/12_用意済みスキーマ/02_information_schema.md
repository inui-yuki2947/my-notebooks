# MySQL/用意済みスキーマ/information_schema

## テーブル一覧

| テーブル  | 概要                                 |
| --------- | ------------------------------------ |
| `tables`  | テーブル一覧の情報が格納されている。 |
| `columns` | カラム一覧の情報が格納されている。   |

## tablesテーブル

| カラム           | 概要                         |
| ---------------- | ---------------------------- |
| `auto_increment` | AUTO_INCREMENTの**次の**値。 |

## 参考資料

- [MySQL :: MySQL 5.6 リファレンスマニュアル :: 21 INFORMATION_SCHEMA テーブル](https://dev.mysql.com/doc/refman/5.6/ja/information-schema.html)
