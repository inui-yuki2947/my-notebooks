# MySQL_SQL

## DDL(Data Definition Language)

### 共通

- `CREATE`は作成
- `ALTER`は変更
- `DROP`は削除

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

### TABLE

- `RENAME, MODIFY, CHANGE`の違い
  - `RENAME`は、テーブル・インデックス・カラム名の変更。
  - `MODIFY`は、カラム定義の変更。
  - `CHANGE`は、カラム名と定義の変更。
- `CREATE TEMPORARY TABLE`文で、一時的なテーブルを作成できる。

  ```sql
  CREATE TEMPORARY TABLE テーブル名 SELECT ...;
  ```

### 制約

- PRIMARY制約は、UNIQUE制約をテーブルに一つしか設定できないようにしたもの
  （どちらかのみ設定すればよい）
- 以下のSQLで、一時的に外部キー制約を無効にできる。

  ```sql
  SET FOREIGN_KEY_CHECKS = 0;
  ```

### INDEX

- MySQL 8.0から、逆順インデックスがサポートされた。

### VIEW

- [MySQL :: MySQL 5.6 リファレンスマニュアル :: 20.5.2 ビュー処理アルゴリズム](https://dev.mysql.com/doc/refman/5.6/ja/view-algorithms.html)

### PROCEDURE

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

### FUNCTION

- `RETURNS`句で戻り値の型を、`RETURN`ステートメントで実際の戻り値を指定する。

  ```sql
  CREATE FUNCTION hello (s CHAR(20))
  RETURNS CHAR(50) DETERMINISTIC
  RETURN CONCAT('Hello, ',s,'!');
  ```

### TRIGGER

- [トリガーの開発方法＆デバッグ方法 - Qiita](https://qiita.com/suin/items/269fa582e40f439d012f)

### TRUNCATE

- `TRUNCATE TABLE`文は、**テーブルを削除して再作成**することにより、テーブルを完全に空にする。
- ロールバックなどはできないが、DELETE文より高速である。

## DML(Data Manipulation Language)

### CALL

- CALLステートメントは、ストアドプロシージャを実行する。

  ```sql
  CALL ストアドプロシージャ名(引数)
  ```

### SELECT

- 記述順
  - SELECT
  - FROM
  - WHERE
  - GROUP BY
  - HAVING
  - ORDER BY
  - LIMIT
- DISTINCT
  - DISTINCTを行う場合、ORDER BYするカラムはSELECTしている必要がある。
- ORDER BY
  - NULLのレコードは、**先に来る**（最小値として評価される）。（※DBMS依存）
    NULLの順番を制御したい場合は、IF関数などを使うか、先にIS NULLの判定を行う。
- UNION
  - 「UNION」は重複を除いて結合、「UNION ALL」は**重複を含めて**結合。
  - 「UNION」する場合は、型を一致させるよう注意する。（UNSIGNEDなど）

### INSERT

- 「INSERT ... ON DUPLICATE KEY UPDATE」構文を用いることで、
  レコードの重複が生じた場合、代わりにUPDATEを行うことができる。

### DELETE

- DELETE文でJOINを行いたい場合は、DELETEとFROMの間に、**削除したいテーブル名のエイリアス**を入れる

  ```sql
  DELETE t1 FROM sample_table t1 JOIN ...
  ```

## トランザクション

- 記法

  ```sql
  START TRANSACTION;
  処理
  COMMIT;
  ```

## 複合ステートメント

### 概要

- 複合ステートメント構文は、ストアドプロシージャ、ストアドファンクション、トリガー、およびイベント内で使用する。

  ```sql
  BEGIN
      処理
  END;
  ```

### IF構文

- 記法

  ```sql
  IF 判定条件1 THEN
      処理内容1
  ELSEIF 判定条件2 THEN
      処理内容2
  ELSE
      処理内容3
  END IF;
  ```

### WHILE構文

- 記法

  ```sql
  WHILE 継続条件 DO
      繰り返したい処理
  END WHILE;
  ```

### REPEAT構文

- 記法

  ```sql
  REPEAT
      繰り返したい処理
  UNTIL 終了条件 END REPEAT;
  ```
  
## データベース管理ステートメント

### SHOW

- `SHOW DATABASES`文で、データベース一覧を表示する。
- `SHOW PROCESSLIST`文で、実行されているスレッドを表示する。
  - PROCESS権限がない場合は、同ユーザーのスレッドのみを表示する。

### USE

- `USE データベース名`構文で、以降のステートメントのデフォルトのデータベースを指定する。

### KILL

- `KILL プロセスリストID`文で、スレッドを強制終了する。
