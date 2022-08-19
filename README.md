# my-notebooks

## 概要

- 当リポジトリには、個人的な技術的ノートを格納する。

## 公開先

- `/doc`ディレクトリ配下のファイルは、GitHub Pagesを用いて公開している。
- https://inui-yuki2947.github.io/my-notebooks/#/

## 初期設定

```bash
./init.sh
```

## 各種操作

### ローカルサーバーの起動

```bash
docsify serve docs
```

### フォーマットの自動修正

```bash
./reformat.sh docs/任意のディレクトリ
```

## 規約

### 見出し

- 見出し1は、ページ名と同じ名前の見出しで、冒頭に一つのみ記述する。
- 見出しは、見出し3まで使う。（それ以上の階層になるときは、見出し自体の分離を考える）

### ファイル・見出しの順番

1. 共通
    1. 共通
       1. インストール
    2. 具体バージョン管理ツール
2. GUI
    1. 共通
       1. インストール
3. CUI
    1. 共通
       1. インストール
    2. ヘルプ
    3. 実行
3. パッケージ管理
    1. 具体パッケージ管理ツール
4. 文法
    1. 共通
    2. 変数・定数
    3. 型
    4. 配列・ハッシュ
5. 制御構造
    1. 条件判断
    2. 条件分岐
    3. 繰り返し
    4. 例外処理
    5. 非同期処理
6. モジュール化
    1. 関数・メソッド
    2. クラス・インターフェース
7. その他
    1. 文字列処理
    2. その他

### テーブル

- 2×2以上の比較ができる事柄は、できる限りテーブルで記述する。
- テーブル内の文字列として`|`を使いたい場合は、全角の`｜`を代わりに使う。

### ショートカット

- ショートカットについて記述する際は、`キー1 キー2 ...`の形式で記述する。
- キーは以下の順で並べる。
  - `Ctrl`(Win), `Cmd`(Mac)
  - `Ctrl`(Mac)
  - `Alt`(Win), `Option`(Mac)
  - `Shift`
  - その他

### コードブロック

- コマンドのオプションは、ショートオプション・ロングオプションの順で書く。
- コードブロックは、箇条書き等のインデントと合わせる。
- 冒頭のコマンドプロンプト`$`は省略する。
- 1回の実行ごとにコードブロックを分ける。
- HTMLのコメントを記述するとmarkdownlintに引っかかってしまうため、`<!--`の代わりに`<！--`を使う。
