# テキスト/XML/xmlstarlet

## インストール

### Ubuntu

```bash
sudo apt install xmlstarlet
```

## xmlstarlet

### コマンド

| コマンド                                                     | 概要                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `xmlstarlet --version`                                       | xmlstarletのバージョンを表示する。                           |
| `xmlstarlet --help`                                          | xmlstarletのヘルプを表示する。                               |
| `xmlstarlet val, validate XMLファイル`                       | 指定したXMLファイルについて、正しい形式であるかチェックする。 |
| `xmlstarlet el, elements XMLファイル`                        | 指定したXMLファイルについて、要素の構造を表示する。          |
| `xmlstarlet sel, select -t, --template テンプレートオプション1 ... XMLファイル` | 指定したXMLファイルについて、内容を抽出する。                |

### オプション

| コマンド         | オプション          | 概要                          |
| ---------------- | ------------------- | ----------------------------- |
| `xmlstarlet sel` | `-C, --comp`        | 結果でなくXSLTを出力する。    |
| `xmlstarlet sel` | `-m, --match XPath` | 指定したXPathでマッチさせる。 |

## 参考資料

- [XMLStarlet Command Line XML Toolkit: News](https://xmlstar.sourceforge.net/)
