# Ruby/共通/rbenv

## 共通

### 参考資料

- [rbenv/rbenv: Manage your app's Ruby environment](https://github.com/rbenv/rbenv)
- [rbenvでrubyのバージョンを管理する - Qiita](https://qiita.com/hujuu/items/3d600f2b2384c145ad12)

## インストール

### Mac

```bash
brew install rbenv ruby-build
```

## rbenv -v

### コマンド

| コマンド              | 概要                          |
| --------------------- | ----------------------------- |
| `rbenv -v, --version` | rbenvのバージョンを表示する。 |

## rbenv -h

### コマンド

| コマンド           | 概要                      |
| ------------------ | ------------------------- |
| `rbenv -h, --help` | rbenvのヘルプを表示する。 |

## rbenv install, uninstall

### コマンド

| コマンド                       | 概要                                                         |
| ------------------------------ | ------------------------------------------------------------ |
| `rbenv install -l ,--list`     | インストール可能なrubyの**安定**バージョンの一覧を表示する。 |
| `rbenv install -L, --list-all` | インストール可能なrubyのバージョンの一覧を表示する。         |
| `rbenv install バージョン`     | 指定したバージョンのrubyをインストールする。                 |
| `rbenv uninstall バージョン`   | 指定したバージョンのrubyをアンインストールする。             |

## rbenv version, versions

### コマンド

| コマンド         | 概要                                                 |
| ---------------- | ---------------------------------------------------- |
| `rbenv version`  | 使用されているrubyのバージョンを表示する。           |
| `rbenv versions` | インストールされたrubyのバージョンの一覧を表示する。 |

## rbenv local, global, shell

### コマンド

| コマンド                                                     | 概要                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `rbenv local`<br />`rbenv global`<br />`rbenv shell`         | ローカル・グローバル・シェルで使用されているrubyのバージョンを表示する。 |
| `rbenv local バージョン`<br />`rbenv global バージョン`<br />`rbenv shell バージョン` | ローカル・グローバル・シェルで使用されているrubyのバージョンを変更する。 |
