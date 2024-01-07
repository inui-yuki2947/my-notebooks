# Java/CUI/sdk

## 共通

### 概要

- **SDKMAN**は、Java JDKのバージョンを管理することが出来るツールである。
- [Home - SDKMAN! the Software Development Kit Manager](https://sdkman.io/)

## インストール

```bash
curl -s "https://get.sdkman.io" | bash
```

## sdk

### コマンド

| コマンド                               | 概要                                                 |
| -------------------------------------- | ---------------------------------------------------- |
| `sdk version`                          | SDKMANのバージョンを表示する。                       |
| `sdk help [サブコマンド]`              | SDKMANの（指定したサブコマンドの）ヘルプを表示する。 |
| `sdk install 対象 [バージョン] [パス]` | 指定した対象をインストールする。                     |
| `sdk uninstall 対象 バージョン`        | 指定した対象をアンインストールする。                 |
| `sdk list`                             | インストールできる対象の一覧を表示する。             |
| `sdk use 対象 バージョン`              | 指定した対象について、指定したバージョンを使用する。 |
