# MySQL/CUI/mysqldump

## mysqldump

### コマンド

| コマンド                           | 概要              |
|--------------------------------|-----------------|
| `mysqldump データベース名 [テーブル名...]` | dumpを標準出力に出力する。 |

### オプション（接続情報系）

| オプション      | 概要                              |
|------------|---------------------------------|
| `-h ホスト名`  | ホストを指定する。                       |
| `-u ユーザー名` | ユーザー名を指定する。（未指定時は、ログインユーザー名となる） |
| `-pパスワード`  | パスワードを指定する。（間にスペースは入れない）        |

### オプション（その他）

| オプション      | 概要                               |
| --------------- | ---------------------------------- |
| `-d, --no-data` | テーブルのレコードを書き出さない。 |

### その他

- バージョンの違いのエラー（`Unknown table 'column_statistics' in information_schema`）が出た場合は、`--skip-column-statistics`オプションを付ける。
  [mysqldumpコマンドで "Unknown table 'COLUMN_STATISTICS' in information_schema (1109)" と怒られる原因と対策 - モヒカンメモ](https://blog.pinkumohikan.com/entry/mysqldump-disable-column-statistics)

- 作成したdumpファイルのインポート

  ```bash
  mysql [データベース名] < ファイル名
  ```
