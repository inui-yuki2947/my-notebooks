# Python/CUI/pyenv

## 共通

### 参考資料

- [pyenv/pyenv: Simple Python version management](https://github.com/pyenv/pyenv)

## インストール

### Mac

```bash
brew install pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
```

## pyenv -v

### コマンド

| コマンド   | 概要                          |
| ---------- | ----------------------------- |
| `pyenv -v` | pyenvのバージョンを表示する。 |

## pyenv help

### コマンド

| コマンド     | 概要                      |
| ------------ | ------------------------- |
| `pyenv help` | pyenvのヘルプを表示する。 |

## pyenv install

### コマンド

| コマンド                   | 概要                                          |
| -------------------------- | --------------------------------------------- |
| `pyenv install バージョン` | pyenvの指定したバージョンをインストールする。 |
| `pyenv install -l, --list` | pyenvの使用可能なバージョン一覧を表示する。   |

## pyenv version, versions

### コマンド

| コマンド         | 概要                                                   |
| ---------------- | ------------------------------------------------------ |
| `pyenv version`  | 使用されているpythonのバージョンを表示する。           |
| `pyenv versions` | インストールされたpythonのバージョンの一覧を表示する。 |

## pyenv local, global, shell

### コマンド

| コマンド                                                     | 概要                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `pyenv local`<br />`pyenv global`<br />`pyenv shell`         | ローカル・グローバル・シェルで使用するpythonのバージョンを表示する。 |
| `pyenv local バージョン`<br />`pyenv global バージョン`<br />`pyenv shell バージョン` | ローカル・グローバル・シェルで使用するpythonのバージョンを設定する。 |
| `pyenv local --unset`<br />`pyenv shell --unset`             | ローカル・シェルで使用するpythonのバージョンをアンセットする。 |
