# Others/その他/IntelliJ

## ショートカット

### トップキーボードショートカット

| ショートカット（Windows） | ショートカット（Mac） | 概要                 |
| ------------------------- | --------------------- | -------------------- |
| Ctrl + Alt + S            | ⌘ + ,                 | 設定を開く。         |
| Alt + Insert              | ⌘ + N                 | ファイルを生成する。 |
| Ctrl + Ctrl               | ^ +                   | なんでも実行する。   |

### 複数のキャレットと選択範囲

| ショートカット（Windows） | ショートカット（Mac） | 概要                       |
| ------------------------- | --------------------- | -------------------------- |
| Alt + Shift + クリック    | ⌥ + ⇧ + クリック      | マルチカーソルを作成する。 |

### コンテキストナビゲーション

| ショートカット（Windows） | ショートカット（Mac） | 概要                   |
| ------------------------- | --------------------- | ---------------------- |
| Ctrl + Alt + ←            | ⌘ + [                 | 戻る。                 |
| Ctrl + Alt + →            | ⌘ + ]                 | 進む。                 |
| Alt + ←                   | ⌘ + ⇧ + [             | 前のタブに移動する。   |
| Alt + →                   | ⌘ + ⇧ + ]             | 後ろのタブに移動する。 |

### すべてを見つける

| ショートカット（Windows） | ショートカット（Mac） | 概要                   |
| ------------------------- | --------------------- | ---------------------- |
| Shift + Shift             | ⇧ + ⇧                 | どこでも検索を行う。   |
| Ctrl + Shift + A          | ⌘ + ⇧ + A             | アクションを検索する。 |

### リファクタリング

| ショートカット（Windows） | ショートカット（Mac） | 概要                                 |
| ------------------------- | --------------------- | ------------------------------------ |
| Ctrl + Alt + T            | ⌘ + ⌥ + T             | 選択箇所をif、while、forなどで囲む。 |
| Ctrl + Alt + V            | ⌘ + ⌥ + V             | 変数を抽出する。("V"ariable)         |
| Ctrl + Alt + C            | ⌘ + ⌥ + C             | 定数を抽出する。("C"onstant)         |
| Ctrl + Alt + F            | ⌘ + ⌥ + F             | フィールドを抽出する。("F"ield)      |
| Ctrl + Alt + P            | ⌘ + ⌥ + P             | パラメータを抽出する。("P"arameter)  |
| Ctrl + Alt + M            | ⌘ + ⌥ + M             | メソッドを切り出す。("M"ethod)       |
| Ctrl + Alt + N            | ⌘ + ⌥ + N             | インライン展開を行う。(I"n"line)     |

### ツールウィンドウ

| ショートカット（Windows） | ショートカット（Mac） | 概要                                 |
| ------------------------- | --------------------- | ------------------------------------ |
| Alt + 9                   | ⌘ + 9                 | バージョン管理ウィンドウを表示する。 |
| Alt + 0                   | ⌘ + 0                 | コミットウィンドウを表示する。       |
| Alt + F12                 | ⌥ + F12               | ターミナルウィンドウを表示する。     |

### ドキュメント

- [IntelliJ IDEA キーボードショートカット | IntelliJ IDEA](https://pleiades.io/help/idea/mastering-keyboard-shortcuts.html)
- [忙しい人のためのIntelliJ IDEAショートカット集](https://qiita.com/yoppe/items/f7cbeb825c071691d3f2)

## その他

### CLI

- 「Toolbox App」を使うと、`idea`コマンド（`open -na "IntelliJ IDEA.app"`のエイリアス）が使用できるようになる。
- [Command-line interface | IntelliJ IDEA](https://www.jetbrains.com/help/idea/working-with-the-ide-features-from-command-line.html#toolbox)

### モジュール

- TODO あとで調べる

### 設定

- 「Version Control」-> 「Git」の「enable staging area」をONにすると、Gitのステージング機能が利用できる。
- `.iml`という拡張子で、設定ファイルが生成される。

### ターミナル

- [ターミナル | IntelliJ IDEA](https://pleiades.io/help/idea/terminal-emulator.html)
- デフォルトのターミナルは、「設定」→「ツール」→「ターミナル」で、「Shell path」を`wsl.exe`などとして変更できる。
- Windowsでは、標準でターミナルの日本語が文字化けするので、以下で対処する。
  [Windows版のIntelliJ IDEAのTerminalでGit bashを起動する - Qiita](https://qiita.com/EichiSanden/items/7c735c5d7ec33c51012c)

### その他

- Updating indexex実行中はできる限り放置しておく。（コードを変更したりすると、無限にこの処理が繰り返される）
