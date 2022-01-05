# MySQL

## 共通

### ドキュメント

- [MySQL :: MySQL 5.6 リファレンスマニュアル](https://dev.mysql.com/doc/refman/5.6/ja/)

### インストール

- [Mac へ MySQL を Homebrew でインストールする手順 - Qiita](https://qiita.com/hkusu/items/cda3e8461e7a46ecf25d)

## MySQL プログラム

### オプションファイル・環境変数

- オプションファイルには、環境変数などを記述する。
- オプションファイルは、`/etc/my.cnf`, `~/.my.cnf`などの優先順で読み込まれる。

## CLI

### mysql

- `mysql`コマンドで、ログインができる。

  ```bash
  mysql -h ホスト名 -u ユーザー名 -pパスワード [データベース名]
  ```

- `-p`オプションとパスワードの間には、スペースを入れない。<https://dev.mysql.com/doc/refman/5.6/ja/command-line-options.html>
- デフォルトでうまく接続できない場合は、ホスト名に`127.0.0.1`を指定する。<https://qiita.com/TanukiTam/items/f6a08740d0fcda0db7be>
  - `localhost`（デフォルト）：ソケットで接続される
  - `127.0.0.1`：TCP経由で接続される。
- `-e SQL`オプションで、SQLを直接実行できる。
- `-N`オプションで、出力のカラム名を非表示にする。
- `-B`オプションで、出力で値のみ表示する。
- インタラクティブに実行されたステートメントのログは、`~/.mysql_history`に出力される。
- ログを残したくない場合は、以下のようにログインする。

  ```bash
  MYSQL_HISTFILE=/dev/null mysql ...
  ```

### mysqldump

- `mysqldump`コマンドは、dumpを標準出力に出力する。（通常はファイルにリダイレクトする）

  ```bash
  mysqldump [データベース名 [テーブル名...]]
  ```

- バージョンの違いでエラーが出た場合は、`--skip-column-statistics`オプションを付ける。
  [mysqldumpコマンドで "Unknown table 'COLUMN_STATISTICS' in information_schema (1109)" と怒られる原因と対策 - モヒカンメモ](https://blog.pinkumohikan.com/entry/mysqldump-disable-column-statistics)

## MySQL サーバーの管理

### システム変数

- システム変数は、MySQL Serverの構成方法を指示する変数。
- `SHOW VARIABLES`構文で、システム変数の一覧を表示する。
- `SET`ステートメントで、サーバーの実行中にシステム変数を動的に変更できる。

### ステータス変数

- ステータス変数は、サーバーの操作についての情報を提供する変数。
- `SHOW STATUS`構文で、ステータス変数の一覧を表示する。

## 言語構造

### リテラル値

- 文字列型は、SQLでは**シングルクォーテーション**で囲う。

### ユーザー定義変数

- ユーザー定義変数は、`@var_name`と記述する。
- 書式1

  ```sql
  SET @var_name = expr
  ```

- 書式2

  ```sql
  @t4 := @t1+@t2+@t3;
  ```

- IN句などで変数を使いたい場合は、代わりに以下のようにするとよい。

  ```sql
  WHERE FIND_IN_SET(値, @カンマ区切り文字列を格納する変数)
  ```

### コメント

- コメントの記法は以下の通り。

  ```sql
  -- コメント
  /* コメント */
  ```

## データ型

### 日時型

|項目|概要|表せる範囲|
|---|---|---|
|`datetime`型|タイムゾーンを意識しない型|`1000-01-01 00:00:00`～`9999-12-31 23:59:59`|
|`timestamp`型|タイムゾーンを意識した型|`1970-01-01 00:00:01`〜`2038-01-19 03:14:07`|

### 文字列型

- 文字列の結合は、`+`もしくは`CONCAT`で行う。
- バイト数は、非バイナリ文字列型の場合は**文字数**、バイナリ文字列型の場合は**バイト数**となる。

### CHARとVARCHAR

- `CHAR`型は、**常に指定したバイト数**を消費する。
- `VARCHAR`型は、「文字列のバイト数＋**バイト長のプリフィックス**（1バイトあるいは2バイト）」を消費する。

## 関数と演算子

### 型のキャスト

- 書式1

  ```sql
  CAST(expr AS type)
  ```

- 書式2

  ```sql
  CONVERT(expr, type)
  ```

### 文字コードの変換

- 書式

  ```sql
  CONVERT(expr USING transcoding_name)
  ```

### NULLとの比較

- NULLを比較演算子で比較しても**結果はNULLとなる**ため、`IS NULL`、`IS NOT NULL`演算子を使う。

### LIKE句

- `%`は、任意の文字列**0文字以上**。
- `_`は、任意の文字列**1文字**。

### 日付

- 日付の演算には、`INTERVAL`関数が使える。

  ```sql
  -- 今日から1ヶ月前を計算する
  SELECT NOW() - INTERVAL 1 MONTH
  ```

- 「yyyyMM」形式の数値には、`PERIOD_ADD`関数が使える。

### 照合順序

- `COLLATE`句で、照合順序をオーバーライドできる。

  ```sql
  SELECT k
  FROM t1
  ORDER BY k COLLATE latin1_german2_ci;
  ```

### delimiter

- `delimiter`コマンドで、SQLの区切り文字を変更できる。

  ```sql
  delimiter 区切り文字
  ```

- `//`を区切り文字として使うことが多い。
- ストアドプロシージャやトリガーの定義時などに使うと良い。

### 暗号化

- 暗号化には、`AES_ENCRYPT`関数を使う。

  ```sql
  AES_ENCRYPT(文字列, 暗号化鍵 [,初期化ベクトル])
  ```

### 復号

- 復号には、`AES_DECRYPT`関数を使う。

  ```sql
  AES_DECRYPT(文字列, 暗号化鍵 [,初期化ベクトル])
  ```

- 暗号化鍵が暗号化時のものと異なると、`NULL`を返す。

## MySQL WorkBench

- 主キーをWHERE条件とせずDELETEを行いたい場合は、以下のようにする。

  ```sql
  SET SQL_SAFE_UPDATES = 0;
  ```

## その他

### 経路列挙モデル

- パスの先頭・末尾にも区切り文字を入れた方が、使い勝手がよい。
