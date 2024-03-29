# GoogleApps/CUI/skicka

## 共通

### 概要

- 「skicka」は、Google DriveのCLIツールである。

### 参考資料

- [google/skicka: Command-line utility for working with Google Drive. Join the mailing list at https://groups.google.com/forum/#!forum/skicka-users.](https://github.com/google/skicka)

## インストール

### 共通

1. Goをインストールする。

2. skickaをインストールする。

    ```bash
    go get github.com/google/skicka
    ```

3. GCPプロジェクトを作成する。

4. 「ライブラリ」で、Google Drive APIを有効化する。

5. 「認証情報」で、OAuth 2.0 クライアントを作成する。

6. 「OAuth同意画面」で、OAuth同意画面を作成する。

7. `~/.skicka.config`を作成する。

    ```bash
    skicka init
    ```

8. `~/.skicka.config`に、さきほど作成したOAuth 2.0 クライアントの情報を記載する。

### 参考資料

- [skickaの使い方 - Qiita](https://qiita.com/sekitaka_1214/items/85875d64c226b2f7ab86)

## skicka

### コマンド

| コマンド                                        | 概要                                                         |
| ----------------------------------------------- | ------------------------------------------------------------ |
| `skicka help`                                   | skickaのヘルプを表示する。                                   |
| `skicka init`                                   | 設定ファイル（`~/.skicka.config`ファイル）を作成する。       |
| `skicka ls`                                     | ドライブのファイルの一覧を表示する。                         |
| `skicka cat ドライブのパス`                     | ドライブのファイルの内容を表示する。                         |
| `skicka upload ローカルのパス ドライブのパス`   | ローカルのファイル・ディレクトリを、ドライブにアップロードする。 |
| `skicka download ドライブのパス ローカルのパス` | ドライブのファイル・ディレクトリを、ローカルにダウンロードする。 |
| `skicka df`                                     | Googleドライブの空き容量を表示する。                         |

### オプション

| オプション               | 概要                                                         |
| ------------------------ | ------------------------------------------------------------ |
| `-config 設定ファイル名` | 使用する設定ファイルを指定する。<br />（デフォルトは`~/.skicka.config`） |

### ファイル

| ファイル           | 概要                                                         |
| ------------------ | ------------------------------------------------------------ |
| `~/.skicka.config` | 設定を記述したファイル。<br />セミコロンで始まる行はコメントのようなので、値を適用したい場合はセミコロンを外す。 |
