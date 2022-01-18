# MySQL_DDL

## データ型

### 日時型

- 型

  | 型          | 概要                       | 表せる範囲                                   |
  | ----------- | -------------------------- | -------------------------------------------- |
  | `datetime`  | タイムゾーンを意識しない型 | `1000-01-01 00:00:00`～`9999-12-31 23:59:59` |
  | `timestamp` | タイムゾーンを意識した型   | `1970-01-01 00:00:01`〜`2038-01-19 03:14:07` |

- 日付の演算には、`INTERVAL`関数が使える。

  ```sql
  SELECT NOW() - INTERVAL 1 MONTH
  ```

- `yyyyMM`形式の数値には、`PERIOD_ADD`関数が使える。

### 文字列型

- 文字列型のリテラル値は、**シングルクォーテーション**で囲う。

- 文字列の結合は、`+`もしくは`CONCAT`で行う。

- バイト数は、非バイナリ文字列型の場合は**文字数**、バイナリ文字列型の場合は**バイト数**となる。

- 型

  | 型        | 概要                                                         |
  | --------- | ------------------------------------------------------------ |
  | `CHAR`    | **常に指定したバイト数**を消費する。                         |
  | `VARCHAR` | 「文字列のバイト数＋**バイト長のプリフィックス**（1バイトあるいは2バイト）」を消費する。 |

## テーブル

### CREATE TABLE

- テーブル定義を記述する場合

  ```sql
  CREATE [TEMPORARY] TABLE [IF NOT EXISTS] テーブル名 (テーブル定義, ...)
  ```

- クエリから生成する場合

  ```sql
  CREATE [TEMPORARY] TABLE [IF NOT EXISTS] テーブル名 クエリ
  ```

- 既存テーブルを利用する場合

  ```sql
  CREATE [TEMPORARY] TABLE [IF NOT EXISTS] テーブル名 LIKE 既存テーブル名
  ```

- `RENAME, MODIFY, CHANGE`句の違い

  | 句       | 概要                                   |
  | -------- | -------------------------------------- |
  | `RENAME` | テーブル・インデックス・カラム名の変更 |
  | `MODIFY` | カラム定義の変更                       |
  | `CHANGE` | カラム名と定義の変更                   |

### AUTO_INCREMENT

- 値の確認（方法1）

  ```sql
  SELECT * FROM information_schema.tables;
  ```

- 値の確認（方法2）

  ```sql
  SHOW TABLE STATUS;
  ```

- 値の再設定（ただし、当該カラムに入っている最大値以上に変更する場合に限る）

  ```sql
  ALTER TABLE テーブル名 AUTO_INCREMENT = 再設定したい値;
  ```

### 制約

- PRIMARY制約は、UNIQUE制約をテーブルに一つしか設定できないようにしたもの
  （どちらかのみ設定すればよい）
- 以下のSQLで、一時的に外部キー制約を無効にできる。

  ```sql
  SET FOREIGN_KEY_CHECKS = 0;
  ```

### SHOW CREATE TABLE

- `SHOW CREATE TABLE`文は、指定されたテーブルを作成する `CREATE TABLE` ステートメントを表示する。

  ```sql
  SHOW CREATE TABLE テーブル名
  ```

## インデックス

### INDEX

- MySQL 8.0から、逆順インデックスがサポートされた。

## ビュー

### CREATE VIEW

- [MySQL :: MySQL 5.6 リファレンスマニュアル :: 20.5.2 ビュー処理アルゴリズム](https://dev.mysql.com/doc/refman/5.6/ja/view-algorithms.html)

## ストアドプロシージャ

### CREATE PROCEDURE

- 基本的な構文は以下の通り。

  ```sql
  CREATE PROCEDURE プロシージャ名(引数)
  SQLルーチンステートメント
  ```

- 引数では、その入出力を許容するか否かに応じ、「IN, OUT, INOUT」のいずれかを指定する。

  ```sql
  CREATE PROCEDURE プロシージャ名([IN | OUT | INOUT] 引数名 型)
  SQLルーチンステートメント
  ```

- SQLルーチンステートメントでは、単純なステートメント、あるいは複合ステートメントを指定する。

  ```sql
  CREATE PROCEDURE sample()
  INSERT ...;
  
  -- あるいは
  DELIMITER //
  CREATE PROCEDURE sample()
  BEGIN
    INSERT ...;
    INSERT ...;
  END//
  ```

- 「ALTER PROCEDURE」ステートメントでは、**パラメータや本体を変更できない**ので、
  そうしたい場合は「DROP PROCEDURE」と「CREATE PROCEDURE」を組み合わせる。

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

### CREATE TRIGGER

- [トリガーの開発方法＆デバッグ方法 - Qiita](https://qiita.com/suin/items/269fa582e40f439d012f)

## その他

### 経路列挙モデル

- パスの先頭・末尾にも区切り文字を入れた方が、使い勝手がよい。
