# MySQL_複合ステートメント

## 共通

### 概要

- 複合ステートメント構文は、ストアドプロシージャ、ストアドファンクション、トリガー、およびイベント内で使用する。

- 記法

  ```sql
  BEGIN
      ステートメント
      ステートメント
      ...
  END
  ```

### DELIMITER

- `DELIMITER`コマンドは、SQLの区切り文字を変更する。

  ```sql
  DELIMITER 区切り文字
  ```

- `//`を区切り文字として使うことが多い。

- 例

  ```mysql
  DELIMITER //
  ...
  BEGIN
      ステートメント
      ステートメント
      ...
  END
  ...//
  DELIMITER ;
  ```

## 条件分岐

### IF

- 記法

  ```sql
  IF 条件 THEN ステートメント
  [ELSEIF 条件 THEN ステートメント] ...
  [ELSE ステートメント]
  END IF
  ```

### CASE

- 記法

  ```sql
  CASE 判断値
      WHEN 値 THEN ステートメント
      WHEN 値 THEN ステートメント
      ...
      ELSE ステートメント
  END CASE
  ```

## 繰り返し

### LOOP

- 記法

  ```sql
  LOOP
      ステートメント
  END LOOP
  ```

### WHILE

- 記法

  ```sql
  WHILE 継続条件 DO
      ステートメント
  END WHILE
  ```

### REPEAT

- 記法

  ```sql
  REPEAT
      ステートメント
  UNTIL 終了条件 END REPEAT
  ```

### ラベル

- `LOOP`, `WHILE`, `REPEAT`文には、開始・終了ラベルを付与できる。

  ```sql
  ラベル: LOOP
      ステートメント
  END LOOP ラベル
  ```

### ITERATE, LEAVE, RETURN

- `ITERATE`文は、指定したラベルのループを再び開始する。

  ```sql
  ITERATE ラベル
  ```

- `LEAVE`文は、特定のラベルを持つフロー制御構文を終了する。（最も外側の場合は、プログラムを終了する）

  ```sql
  LEAVE ラベル
  ```

- `RETURN`文は、ストアドファンクションの実行を終了し、戻り値を返す。

  ```sql
  RETURN 値
  ```

## カーソル

### DECLARE

- 記法

  | 記法                                       | 概要                                       |
  | ------------------------------------------ | ------------------------------------------ |
  | `DECLARE カーソル名 CURSOR FOR セレクト文` | カーソルを宣言し、セレクト文と関連付ける。 |

### OPEN, CLOSE

- 記法

  | 記法               | 概要               |
  | ------------------ | ------------------ |
  | `OPEN カーソル名`  | カーソルを開く。   |
  | `CLOSE カーソル名` | カーソルを閉じる。 |

### FETCH

- 記法

  | 記法                              | 概要                                                         |
  | --------------------------------- | ------------------------------------------------------------ |
  | `FETCH カーソル名 INTO 変数名...` | 開いているカーソルを次の行に進め、値を変数に代入する。<br />（変数の数は、セレクトするカラムの数と一致する必要がある） |

## 条件の処理

### 概要

- [MySQL :: MySQL 5.6 リファレンスマニュアル :: 13.6.7 条件の処理](https://dev.mysql.com/doc/refman/5.6/ja/condition-handling.html)

### DECLARE ... CONDITION, HANDLER

- `DECLARE ... CONDITION`文は、名前付きエラー条件を宣言する。

  ```mysql
  DECLARE コンディション名 CONDITION FOR コンディション値
  ```

- `DECLARE ... HANDLER`文は、1つ以上の条件を処理するハンドラを指定する。

  ```mysql
  DECLARE ハンドラアクション HANDLER FOR コンディション値, コンディション値, ...
      ステートメント
  ```
  
- ハンドラアクション

  | ハンドラアクション | 概要                                                         |
  | ------------------ | ------------------------------------------------------------ |
  | `CONTINUE`         | 現在のプログラムの実行が続行される。                         |
  | `EXIT`             | このハンドラが宣言されている`BEGIN ... END`複合ステートメントの実行が終了する。 |
  
- コンディション値

  | 記法                          | 概要                                                       | 例                 |
  | ----------------------------- | ---------------------------------------------------------- | ------------------ |
  | `MySQLエラーコード`           | 番号。<br />`0`から始まる場合は成功。                      | `1051`             |
  | `SQLSTATE [VALUE] SQLSTATE値` | 5文字の文字列リテラル。<br />`00`から始まる場合は成功。    | `SQLSTATE '42S02'` |
  | `コンディション名`            | `DECLARE ... CONDITION`文で定義した名前。                  |                    |
  | `SQLWARNING`                  | `01` で始まるSQLSTATE値のクラスの短縮形。                  |                    |
  | `NOT FOUND`                   | `02` で始まるSQLSTATE値のクラスの短縮形。                  |                    |
  | `SQLEXCEPTION`                | `00`, `01` , `02` で始まらないSQLSTATE値のクラスの短縮形。 |                    |

- 例（全ての`SQLEXCEPTION`で続行する）

  ```mysql
  DECLARE CONTINUE HANDLER
    FOR SQLWARNING
    BEGIN END
  ```

### 診断ステートメント

- 通常のステートメントは診断領域をクリアするが、診断ステートメントは診断領域をクリアしない。
- 診断ステートメント
  - `SHOW ERRORS`
  - `SHOW WARNINGS`
  - `GET DIAGNOSTICS`

### SHOW ERRORS, WARNINGS

- 記法

  | 記法                     | 概要                                                         |
  | ------------------------ | ------------------------------------------------------------ |
  | `SHOW ERRORS`            | ステートメント実行結果の、エラー情報を表示する。             |
  | `SHOW COUNT(*) ERRORS`   | ステートメント実行結果の、エラー情報**の数**を表示する。     |
  | `SHOW WARNINGS`          | ステートメント実行結果の、エラー・警告・注意情報を表示する。 |
  | `SHOW COUNT(*) WARNINGS` | ステートメント実行結果の、エラー・警告・注意情報**の数**を表示する。 |

### GET DIAGNOSTICS

- `GET DIAGNOSTICS`文は、診断情報を検査する。

- 記法1

  ```mysql
  GET [CURRENT] DIAGNOSTICS
      target = ステートメント情報, 
      target = ステートメント情報,
      ...
  ```

- 記法2

  ```mysql
  GET [CURRENT] DIAGNOSTICS CONDITION condition_number
      target = 条件情報,
      target = 条件情報,
      ...
  ```

- 例

  ```mysql
  GET DIAGNOSTICS CONDITION 1
      @p1 = RETURNED_SQLSTATE,
      @p2 = MESSAGE_TEXT
  ```

### SIGNAL, RESIGNAL

- `SIGNAL`文は、条件情報を渡す。

  ```mysql
  SIGNAL コンディション値
      [SET 条件情報 = 値, 条件情報 = 値, ...]
  ```

- `RESIGNAL`文は、条件情報を（変更してから）渡す。

  ```mysql
  RESIGNAL [コンディション値]
      [SET 条件情報 = 値, 条件情報 = 値, ...]
  ```

- `SET`句を含む場合は、エラーを変更して渡す。

- コンディション値を含む場合は、条件を現在の診断領域にプッシュする。

### 診断領域

- 診断領域には、下記の2種類の情報が含まれる。

  - ステートメント情報
  - 条件情報

- ステートメント情報

  | ステートメント情報 | 概要                                         |
  | ------------------ | -------------------------------------------- |
  | `NUMBER`           | 情報が含まれている条件領域の数。             |
  | `ROW_COUNT`        | このステートメントによって影響を受けた行数。 |

- 条件情報

  | 条件情報            | 概要                          |
  | ------------------- | ----------------------------- |
  | `RETURNED_SQLSTATE` | この条件のSQLSTATE値。        |
  | `MESSAGE_TEXT`      | この条件のエラーメッセージ。  |
  | `MYSQL_ERRNO`       | この条件のMySQLエラーコード。 |
