# MySQL

## 共通

### ドキュメント

- [MySQL :: MySQL 5.6 リファレンスマニュアル](https://dev.mysql.com/doc/refman/5.6/ja/)

### インストール

- [Mac へ MySQL を Homebrew でインストールする手順 - Qiita](https://qiita.com/hkusu/items/cda3e8461e7a46ecf25d)

## CUI

### mysql

- コマンド

  |コマンド|概要|
  |---|---|
  |`mysql [データベース名]`|ログインができる。|

- 接続情報系オプション

  - オプション

  |オプション|概要|
  |---|---|
  |`-h ホスト名`|ホストを指定できる。|

  - `localhost`（デフォルト）：ソケットで接続される
  - `127.0.0.1`：TCP経由で接続される。
  - デフォルトでうまく接続できない場合は、ホスト名に`127.0.0.1`を指定する。
      [MySQLでlocalhostと127.0.0.1の違い - Qiita](https://qiita.com/TanukiTam/items/f6a08740d0fcda0db7be)

  - オプション

  |オプション|概要|
  |---|---|
  |`-u ユーザー名`|ユーザー名を指定できる。|

  - オプション

  |オプション|概要|
  |---|---|
  |`-pパスワード`|パスワードを指定できる。（間にスペースは入れない）|

    [MySQL :: MySQL 5.6 リファレンスマニュアル :: 4.2.4 コマンド行でのオプションの使用](https://dev.mysql.com/doc/refman/5.6/ja/command-line-options.html)

- その他オプション

  - オプション

  |オプション|概要|
  |---|---|
  |`-e SQL文`|SQLを直接実行できる。|

  - オプション

  |オプション|概要|
  |---|---|
  |`-N`|カラム名を出力しないようにする。|

  - オプション

  |オプション|概要|
  |---|---|
  |`-B`|値のみ出力するようにする。|

- ログ

  - CLIでインタラクティブに実行されたログは、`MYSQL_HISTFILE`（通常は`~/.mysql_history`）に出力される。

  - ログを残したくない場合は、以下のようにログインする。

    ```bash
    MYSQL_HISTFILE=/dev/null mysql ...
    ```

### mysqldump

- コマンド

  |コマンド|概要|
  |---|---|
  |`mysqldump [データベース名 [テーブル名...]]`|dumpを標準出力に出力する。（通常はファイルにリダイレクトする）|

- バージョンの違いでエラーが出た場合は、`--skip-column-statistics`オプションを付ける。
  [mysqldumpコマンドで "Unknown table 'COLUMN_STATISTICS' in information_schema (1109)" と怒られる原因と対策 - モヒカンメモ](https://blog.pinkumohikan.com/entry/mysqldump-disable-column-statistics)

## GUI

### MySQL WorkBench

- 主キーをWHERE条件とせずDELETEを行いたい場合は、以下のようにする。

  ```sql
  SET SQL_SAFE_UPDATES = 0;
  ```
