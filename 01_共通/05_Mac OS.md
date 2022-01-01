# Mac OS

## Homebrew

### 用語

- フォーミュラとは、パッケージ定義のこと。

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

### cask

- homebrew-caskは、GUIのツールをインストールできる拡張機能。
- `--cask`オプションで、GUIツールのインストールができる。
  （以前は、`cask install`としていた）

## 標準ツール

### Finder

- 起動は、`Command + Option + Space`あるいは`Ctrl + F3 → Enter`
- 隠しファイルの表示は、`Command + Shift + .`

## 外部ツール

### HyperSwitch

- 「HyperSwitch」は、ウィンドウの切り替えをサポートするツール。
- [HyperSwitch](https://bahoom.com/hyperswitch)

### Karabiner-Elements

- 「Karabiner-Elements」は、キーバインドを変更するツール。
- [Karabiner-Elements](https://karabiner-elements.pqrs.org/)

### KeyboardCleanTool

- 「KeyboardCleanTool」は、キーボードのロックを行うツール。
- [folivora.ai - Great Tools for your Mac!](https://folivora.ai/keyboardcleantool)

### Clipy

- 「Clipy」は、コピペ履歴を保持するツール。
- [Clipy for Mac - 無料・ダウンロード](https://clipy.softonic.jp/mac)
- 貼り付けは、`Command + Control + V`

## その他

- `/etc/hosts`ファイルで、ホスト名とIPアドレスを対応させることができる。
  [/etc/hosts」ファイル | Linux技術者認定 LinuC | LPI-Japan](https://linuc.org/study/knowledge/506/)
- 絵文字の入力は、`Command + Control + Space`
- 「システム環境設定 -> セキュリティとプライバシー -> 一般」から、不明な開発元の実行を許可できる。
- Mac OS X v10.5以前は「1KB=1024B」、以降は「1KB=1000B」で計算している。
