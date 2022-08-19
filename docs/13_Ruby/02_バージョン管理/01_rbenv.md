# Ruby/バージョン管理/rbenv

## 共通

### 参考資料

- [rbenv/rbenv: Manage your app's Ruby environment](https://github.com/rbenv/rbenv)
- [rbenvでrubyのバージョンを管理する - Qiita](https://qiita.com/hujuu/items/3d600f2b2384c145ad12)

## インストール

### Mac

```bash
brew install rbenv ruby-build
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
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

- バージョンが古い場合は、rbenv, ruby-buildをアップデートする。

  ```bash
  brew upgrade rbenv ruby-build
  ```

## rbenv local, global, shell

### コマンド

| コマンド                                                     | 概要                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `rbenv local`<br />`rbenv global`<br />`rbenv shell`         | ローカル・グローバル・シェルで使用するrubyのバージョンを表示する。 |
| `rbenv local バージョン`<br />`rbenv global バージョン`<br />`rbenv shell バージョン` | ローカル・グローバル・シェルで使用するrubyのバージョンを設定する。 |
| `rbenv local --unset`<br />`rbenv shell --unset`             | ローカル・シェルで使用するrubyのバージョンをアンセットする。 |

- ローカルで使用するバージョンは、当該ディレクトリの`.ruby-version`ファイルに記述される。
