# JavaScript/CUI/nvm

## 共通

### バージョン管理ツール

| 名称                                             | 概要           |
| ------------------------------------------------ | -------------- |
| [nvm](https://github.com/nvm-sh/nvm)             | 一番メジャー？ |
| [nodebrew](https://github.com/hokaccha/nodebrew) |                |
| [nodenv](https://github.com/nodenv/nodenv)       |                |

- [💡 Node.jsのバージョン管理ツールを改めて選定する【2021年】 - Qiita](https://qiita.com/heppokofrontend/items/5c4cc738c5239f4afe02)

### 参考資料

- [nvm-sh/nvm: Node Version Manager - POSIX-compliant bash script to manage multiple active node.js versions](https://github.com/nvm-sh/nvm)

## インストール

### 共通

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

## nvm

### コマンド

| コマンド                 | 概要                                         |
| ------------------------ | -------------------------------------------- |
| `nvm --version`          | nvmのバージョンを表示する。                  |
| `nvm --help`             | nvmのヘルプを表示する。                      |
| `nvm install node`       | 最新バージョンのnodeをインストールする。     |
| `nvm install バージョン` | 指定したバージョンのnodeをインストールする。 |
| `nvm ls`                 | インストールされたnodeの一覧を表示する。     |
| `nvm ls-remote`          | インストール可能なnodeの一覧を表示する。     |
| `nvm use バージョン`     | 指定したバージョンのnodeを使用する。         |
