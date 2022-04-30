# その他/Windows/WSL

## 共通

### 概要

- 「WSL」（Windows Subsystem for Linux）とは、
  Linuxのバイナリ実行ファイルを、Windows 10およびWindows Server上でネイティブ実行するための互換レイヤー。

### WSL1とWSL2

- WSL2は、Windows10（バージョン2004、ビルド19041以上）またはWindows11で使用できる。

### 参考資料

- [シェルスクリプトに挑戦しよう（2）Windows 10のbashを試す！：“応用力”をつけるためのLinux再入門（22）（1/2 ページ） - ＠IT](https://atmarkit.itmedia.co.jp/ait/articles/1809/14/news015.html)
- [シス管系女子BEGINS 特別編 まんがでわかるWSL - 【シス管系女子】特設サイト](https://system-admin-girl.com/comic/begins/sp-wsl/#p7)

## インストール

### 新しい手順

```powershell
wsl --install
```

### 古い手順

1. 「Windowsの機能の有効化または無効化」で、下記にチェックを入れる。（旧：Windows Subsystem for Linux）
   - Linux用Windowsサブシステム
   - 仮想マシンプラットフォーム

2. Microsoft Storeで、Linuxディストリビューション（例：Ubuntu）をインストールする。

### 参考資料

- [WSL のインストール | Microsoft Docs](https://docs.microsoft.com/ja-jp/windows/wsl/install)

## wsl

### コマンド

| コマンド | 概要            |
| -------- | --------------- |
| `wsl`    | WSLを起動する。 |

## wsl --help

### コマンド

| コマンド     | 概要                    |
| ------------ | ----------------------- |
| `wsl --help` | WSLのヘルプを表示する。 |

## wsl -l

### コマンド

| コマンド         | 概要                                                         |
| ---------------- | ------------------------------------------------------------ |
| `wsl -l, --list` | ディストリビューションの一覧を表示する。<br />（オプションの連結は不可？） |

### オプション

| オプション      | 概要                                                       |
| --------------- | ---------------------------------------------------------- |
| `-v, --verbose` | 詳細な情報を表示する。                                     |
| `-o, --online`  | インストール可能なディストリビューションの一覧を表示する。 |

## ファイルのマウント

### 概要

- WSL環境からWindows環境のファイルを操作することはできるが、
  Windows環境からWSL環境のファイルを操作することはできない。

### パス

- WSL環境からWindows環境で普段使用しているファイルは、`/mnt/ドライブ名`（例：`/mnt/c`）でアクセスできる。

- ホームディレクトリをマウントされたディレクトリに変更しておくとよい。

  ```bash
  sudo vim /etc/passwd
  ```

### メタデータ

- マウントしたファイルに対しては、通常`chmod`は効かないが、メタデータを追加すると効くようになる。
- [windows10のssh鍵を使って、wsl2からgithubへssh -T](https://zenn.dev/keijiek/scraps/b03e1804d15f99)
