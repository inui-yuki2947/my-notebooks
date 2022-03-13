# WSL

## 共通

### 概要

- 「WSL」（Windows Subsystem for Linux）とは、
  Linuxのバイナリ実行ファイルを、Windows 10およびWindows Server上でネイティブ実行するための互換レイヤー。

### ドキュメント

- [WSL のインストール | Microsoft Docs](https://docs.microsoft.com/ja-jp/windows/wsl/install)
- [シェルスクリプトに挑戦しよう（2）Windows 10のbashを試す！：“応用力”をつけるためのLinux再入門（22）（1/2 ページ） - ＠IT](https://atmarkit.itmedia.co.jp/ait/articles/1809/14/news015.html)

### 初期設定

- 「Windowsの機能の有効化または無効化」で、下記にチェックを入れる。（旧：Windows Subsystem for Linux）
  - Linux用Windowsサブシステム
  - 仮想マシンプラットフォーム
- Microsoft Storeで、Linuxディストリビューション（例：Ubuntu）をインストールする。

### その他

- WSL環境からWindows環境のファイルを操作することはできるが、
  Windows環境からWSL環境のファイルを操作することはできない。
- WSL環境からWindows環境で普段使用しているファイルは、`/mnt/ドライブ名`（例：`/mnt/c`）でアクセスできる。
