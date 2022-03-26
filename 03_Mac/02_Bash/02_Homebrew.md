# Mac/Bash/Homebrew

## 共通

### フォーミュラ

- フォーミュラとは、パッケージ定義のこと。

### homebrew-cask

- homebrew-caskは、GUIのツールをインストールできる拡張機能。

## brew

### コマンド

|コマンド|概要|
|---|---|
|`brew list`|インストールされたフォーミュラを表示する。|
|`brew search キーワード`|フォーミュラを検索する。|
|`brew update`|brew自体をアップデートする。|
|`brew install フォーミュラ`|フォーミュラをインストールする。|
|`brew uninstall フォーミュラ`|フォーミュラをアンインストールする。|
|`brew upgrade`|全てのフォーミュラをアップデートする。|
|`brew upgrade フォーミュラ名`|指定したフォーミュラをアップデートする。|

### オプション

|オプション|概要|
|---|---|
|`--cask`|GUIツールのインストールができる。（以前は、`cask install`としていた）|

## brew services

### コマンド

| コマンド                                  | 概要                                                   |
| ----------------------------------------- | ------------------------------------------------------ |
| `brew services`<br />`brew services list` | サービスの一覧を表示する。                             |
| `brew services start サービス`            | サービスを開始し、ログイン時にも起動させるようにする。 |
| `brew services stop サービス`             | サービスを終了し、ログイン時にも起動しないようにする。 |
| `brew services restart サービス`          | サービスを再起動する。                                 |