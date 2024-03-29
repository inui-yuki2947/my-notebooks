# その他/Slack/slackcat

## 共通

### 参考資料

- [bcicen/slackcat: CLI utility to post files and command output to slack](https://github.com/bcicen/slackcat)

## インストール

### Mac

1. インストールする。

    ```bash
    brew install slackcat
    ```

2. 初期設定を行う。

    ```bash
    slackcat --configure
    ```

## slackcat

### コマンド

| コマンド                                      | 概要                                               |
| --------------------------------------------- | -------------------------------------------------- |
| `slackcat -v, --version`                      | slackcatのバージョンを表示する。                   |
| `slackcat h, help`<br />`slackcat -h, --help` | slackcatのヘルプを表示する。                       |
| `slackcat --configure`                        | slackcatの設定を行う。                             |
| `slackcat`                                    | 標準入力の内容を、ファイルにして投稿する。         |
| `slackcat ファイル名`                         | 指定したファイルの内容を、ファイルにして投稿する。 |

### オプション

| オプション                   | 概要                               |
| ---------------------------- | ---------------------------------- |
| `-c, --channel チャンネル名` | チャンネルを指定する。             |
| `-s, --stream`               | ファイルでなくテキストで投稿する。 |

### ファイル

| ファイル      | 概要                                 |
| ------------- | ------------------------------------ |
| `~/.slackcat` | slackcatの設定が記述されるファイル。 |
