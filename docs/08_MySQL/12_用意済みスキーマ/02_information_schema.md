# MySQL/用意済みスキーマ/information_schema

## テーブル一覧

| テーブル   | 概要                                                         |
| ---------- | ------------------------------------------------------------ |
| `SCHEMA`   | スキーマの情報が格納されたテーブル。                         |
| `TABLES`   | テーブルの情報が格納されたテーブル。                         |
| `COLUMNS`  | カラムの情報が格納されたテーブル。                           |
| `ROUTINES` | ストアドプロシージャ・ストアドファンクションの情報が格納されたテーブル。 |
| `TRIGGERS` | トリガーの情報が格納されたテーブル。                         |
| `VIEWS`    | ビューの情報が格納されたテーブル。                           |

## TABLESテーブル

| カラム           | 概要                         |
| ---------------- | ---------------------------- |
| `AUTO_INCREMENT` | AUTO_INCREMENTの**次の**値。 |

## 参考資料

- [MySQL :: MySQL 5.6 リファレンスマニュアル :: 21 INFORMATION_SCHEMA テーブル](https://dev.mysql.com/doc/refman/5.6/ja/information-schema.html)
