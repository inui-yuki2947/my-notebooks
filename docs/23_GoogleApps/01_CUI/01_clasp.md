# GoogleApps/CUI/clasp

## 共通

### 参考資料

- [google/clasp: 🔗 Command Line Apps Script Projects](https://github.com/google/clasp)
- [claspを使ってGoogle Apps Scriptの開発環境を構築してみた | DevelopersIO](https://dev.classmethod.jp/articles/vscode-clasp-setting/)
- [GAS のGoogle製CLIツール clasp - Qiita](https://qiita.com/HeRo/items/4e65dcc82783b2766c03)

## インストール

### 共通

```bash
npm i -g @google/clasp
clasp login
```

- [設定 - Apps Script](https://script.google.com/home/usersettings)で、「Google Apps Script API」をONにしておく。

## ファイル

### 概要

| ファイル          | 概要                                   |
| ----------------- | -------------------------------------- |
| `~/.clasprc.json` | claspの設定が記述される。              |
| `.clasp.json`     | 各プロジェクトの接続情報が記述される？ |
| `appsscript.json` | 各プロジェクトの設定が記述される？     |

### .clasp.json

| 項目       | 概要                                                 | デフォルト値 |
| ---------- | ---------------------------------------------------- | ------------ |
| `scriptId` | スクリプトのID。                                     |              |
| `rootDir`  | ローカルでスクリプトファイルを配置するディレクトリ。 | `.`          |
| `parentId` | 紐付くスプレッドシートなどのID。                     |              |

## clasp

### コマンド

| コマンド                                                    | 概要                                                         |
| ----------------------------------------------------------- | ------------------------------------------------------------ |
| `clasp -v, --version`                                       | claspのバージョンを表示する。                                |
| `clasp -h, --help`                                          | claspのヘルプを表示する。                                    |
| `clasp create`                                              | カレントディレクトリで、新しいプロジェクトを対話的に作成する。<br />作成されたファイルは、マイドライブ直下に配置される。<br />ファイル名は、ディレクトリ名の先頭を大文字にした名前となる。 |
| `clasp clone スクリプトID`<br />`clasp clone スクリプトURL` | カレントディレクトリで、指定したプロジェクトをクローンする。 |
| `clasp push`                                                | カレントディレクトリのプロジェクトを、リモートにプッシュする。 |
| `clasp pull`                                                | カレントディレクトリのプロジェクトを、リモートからプルする。 |
| `clasp list`                                                | リモートにあるプロジェクトの一覧を表示する。<br />（ゴミ箱の中にあるプロジェクトも表示される） |
| `clasp open`                                                | カレントディレクトリのプロジェクトを、ブラウザで開く。       |
| `clasp login`                                               | claspでログインする。                                        |
| `clasp logout`                                              | claspでログアウトする。                                      |
