# MySQL/CUI/mysql_config_editor

## 共通

### ファイル

| ファイル         | 概要                                                         |
| ---------------- | ------------------------------------------------------------ |
| `~/.mylogin.cnf` | mysql_config_editorの設定が記述される。<br />ファイル内容は不明瞭化されている。 |

## mysql_config_editor

### コマンド

| コマンド                                    | 概要                                                         |
| ------------------------------------------- | ------------------------------------------------------------ |
| `mysql_config_editor -V, --version`         | mysql_config_editorのバージョンを表示する。                  |
| `mysql_config_editor [コマンド] -?, --help` | mysql_config_editorの（指定したコマンドの）ヘルプを表示する。 |
| `mysql_config_editor set`                   | `client`ログインパスの情報を追加する。                       |
| `mysql_config_editor remove`                | `client`ログインパスの情報を削除する。                       |
| `mysql_config_editor reset`                 | ログインパスの情報を全て削除する。                           |
| `mysql_config_editor print`                 | `client`ログインパスの情報を表示する。                       |

### オプション

| コマンド        | オプション                      | 概要                                             |
| --------------- | ------------------------------- | ------------------------------------------------ |
| `set`, `remove` | `-G, --login-path ログインパス` | ログインパスを指定する。                         |
| `set`, `remove` | `-h, --host ホスト名`           | ホストを指定する。                               |
| `set`, `remove` | `-P, --port ポート番号`         | ポート番号を指定する。                           |
| `set`, `remove` | `-u, --user ユーザー名`         | ユーザー名を指定する。                           |
| `set`, `remove` | `-p, --password`                | パスワードを指定する。（入力はプロンプトによる） |
| `print`         | `--all`                         | 全てのログインパスの情報を表示する。             |

## 参考資料

- [MySQL :: MySQL 8.0 リファレンスマニュアル :: 4.6.7 mysql_config_editor — MySQL 構成ユーティリティー](https://dev.mysql.com/doc/refman/8.0/ja/mysql-config-editor.html)
