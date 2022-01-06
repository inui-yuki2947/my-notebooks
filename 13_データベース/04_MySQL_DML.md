# MySQL_DML

## SELECT

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

## INSERT

- 「INSERT ... ON DUPLICATE KEY UPDATE」構文を用いることで、
  レコードの重複が生じた場合、代わりにUPDATEを行うことができる。

## DELETE

- DELETE文でJOINを行いたい場合は、DELETEとFROMの間に、**削除したいテーブル名のエイリアス**を入れる

  ```sql
  DELETE t1 FROM sample_table t1 JOIN ...
  ```

## TRUNCATE

- `TRUNCATE TABLE`文は、**テーブルを削除して再作成**することにより、テーブルを完全に空にする。

  ```sql
  TRUNCATE TABLE テーブル名
  ```

- ロールバックなどはできないが、DELETE文より高速である。

- 外部キー制約の影響を受けるため、必要に応じて事前に制約を無効にしておく。

## トランザクション

- 記法

  ```sql
  START TRANSACTION;
  処理
  COMMIT;
  ```
