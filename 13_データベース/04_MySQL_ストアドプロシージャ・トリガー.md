# MySQL_ストアドプロシージャ・トリガー

## ストアドプロシージャ

### CREATE PROCEDURE

- 記法

  ```sql
  CREATE PROCEDURE プロシージャ名(引数)
  ステートメント
  ```

- 引数では、その入出力を許容するか否かに応じ、「IN, OUT, INOUT」のいずれかを指定する。

  ```sql
  CREATE PROCEDURE プロシージャ名([IN | OUT | INOUT] 引数名 型)
  ステートメント
  ```

- `ALTER PROCEDURE`ステートメントでは、**パラメータや本体を変更できない**ので、
  そうしたい場合は`DROP PROCEDURE`と`CREATE PROCEDURE`を組み合わせる。

### CREATE FUNCTION

- `RETURNS`句で戻り値の型を、`RETURN`ステートメントで実際の戻り値を指定する。

  ```sql
  CREATE FUNCTION hello (s CHAR(20))
  RETURNS CHAR(50) DETERMINISTIC
  RETURN CONCAT('Hello, ',s,'!');
  ```

### CALL

- CALLステートメントは、ストアドプロシージャを実行する。

  ```sql
  CALL ストアドプロシージャ名(引数)
  ```

## トリガー

### 概要

- [MySQL :: MySQL 5.6 リファレンスマニュアル :: 20.3 トリガーの使用](https://dev.mysql.com/doc/refman/5.6/ja/triggers.html)

### CREATE TRIGGER

- 記法

  ```mysql
  CREATE TRIGGER トリガー名
      <BEFORE|AFTER> <INSERT|UPDATE|DELETE>
      ON テーブル名
      FOR EACH ROW
      ステートメント
  ```

- 変数

| 変数           | 概要                                                         | 使用できる操作   | I/O  |
  | -------------- | ------------------------------------------------------------ | ---------------- | ---- |
| `OLD.カラム名` | 古いレコードのカラム。                                       | `UPDATE, DELETE` | O    |
| `NEW.カラム名` | 新しいレコードのカラム。<br />`AUTO INCREMENT`の値は`0`となっている。 | `INSERT, UPDATE` | I/O  |

- トリガーイベント・時間が同じトリガーは、複数定義できない。

- トリガー名は、**スキーマ内**で一意である必要がある。

- `BEFORE`トリガーが失敗した場合、その後の操作は実行されない。

- [トリガーの開発方法＆デバッグ方法 - Qiita](https://qiita.com/suin/items/269fa582e40f439d012f)

### DROP TRIGGER

- 記法

  ```mysql
  DROP TRIGGER [IF EXISTS] [スキーマ名.]トリガー名
  ```
