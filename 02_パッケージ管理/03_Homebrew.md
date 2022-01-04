# Homebrew

## 共通

### 用語

- フォーミュラとは、パッケージ定義のこと。

## 表示

### list

- `list`コマンドは、インストールされたフォーミュラを表示する。

  ```bash
  brew list
  ```

### search

- `search`コマンドは、フォーミュラを検索する。

  ```bash
  brew search キーワード
  ```

## インストール

### update

- `update`コマンドは、brew自体をアップデートする。

  ```bash
  brew update
  ```

### install

- `install`コマンドは、フォーミュラをインストールする。

  ```bash
  brew install フォーミュラ
  ```

### uninstall

- `uninstall`コマンドは、フォーミュラをアンインストールする。

  ```bash
  brew uninstall フォーミュラ
  ```

### upgrade

- `upgrade`コマンドは、全てのフォーミュラをアップデートする。

  ```bash
  brew upgrade
  ```

- `upgrade フォーミュラ`コマンドは、指定したフォーミュラをアップデートする。

  ```bash
  brew upgrade フォーミュラ名
  ```

## その他

### cask

- homebrew-caskは、GUIのツールをインストールできる拡張機能。
- `--cask`オプションで、GUIツールのインストールができる。
  （以前は、`cask install`としていた）
