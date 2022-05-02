# JavaScript/npm,yarn/npm

## 共通

### 概要

- npm (Node Package Manager)は、公式のJavaScriptパッケージマネージャー。

### ファイル

| ファイル            | 概要                                                     |
| ------------------- | -------------------------------------------------------- |
| `package.json`      | インストールするモジュールを記載するファイル。           |
| `package-lock.json` | インストールされたモジュールが自動で記載されるファイル。 |
| `node_modules/`     | モジュールの中身が配置されるディレクトリ。               |

### 参考資料

- [npm入門 - とほほのWWW入門](https://www.tohoho-web.com/ex/npm.html)

## インストール

### WSL

- [WSL 2 上で Node.jis を設定する | Microsoft Docs](https://docs.microsoft.com/ja-jp/windows/dev-environment/javascript/nodejs-on-wsl)

## npm

### コマンド

| コマンド           | 概要                  |
| ------------------ | --------------------- |
| `npm サブコマンド` | npmの各種操作を行う。 |

### オプション

| オプション     | 概要                                                         |
| -------------- | ------------------------------------------------------------ |
| `-g, --global` | グローバルに操作を行う。（デフォルトはローカルに操作を行う） |

## npm -v

### コマンド

| コマンド            | 概要                        |
| ------------------- | --------------------------- |
| `npm -v, --version` | npmのバージョンを表示する。 |

## npm help

### コマンド

| コマンド                | 概要                                     |
| ----------------------- | ---------------------------------------- |
| `npm help`              | npmのヘルプを表示する。                  |
| `npm help サブコマンド` | 指定したサブコマンドのヘルプを表示する。 |