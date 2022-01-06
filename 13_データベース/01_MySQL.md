# MySQL

## 共通

### ドキュメント

- [MySQL :: MySQL 5.6 リファレンスマニュアル](https://dev.mysql.com/doc/refman/5.6/ja/)

### インストール

- [Mac へ MySQL を Homebrew でインストールする手順 - Qiita](https://qiita.com/hkusu/items/cda3e8461e7a46ecf25d)

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

## MySQL WorkBench

- 主キーをWHERE条件とせずDELETEを行いたい場合は、以下のようにする。

  ```sql
  SET SQL_SAFE_UPDATES = 0;
  ```
