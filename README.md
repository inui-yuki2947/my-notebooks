# my-notebooks

## 概要

- 当リポジトリには、個人的な技術的ノートを格納する。

## 公開先

- `/doc`ディレクトリ配下のファイルは、GitHub Pagesを用いて公開している。
- https://inui-yuki2947.github.io/my-notebooks/#/

## 事前準備

- 「docsify」をインストールする。
  ```bash
  npm install -g docsify-cli
  ```

- 「markdownlint-cli」をインストールする。

  ```bash
  brew install markdownlint-cli
  ```

- コミット前のGitフックを設定する。

  ```bash
  git config core.hooksPath .githooks
  ```

## 各種操作

### ローカルサーバーの起動

```bash
docsify serve docs
```

### サイドバーの生成

```bash
(cd docs && md-tree | grep -v '_sidebar\.md' > _sidebar.md)
```

### フォーマットの自動修正

```bash
markdownlint -f . && md-h1 -f && fn-update
```

## 規約

### 見出し

- 見出し1は、ページ名と同じ名前の見出しで、冒頭に一つのみ記述する。
- 見出しは、見出し3まで使う。（それ以上の階層になるときは、見出し自体の分離を考える）

### コードブロック

- コマンドのオプションは、ショートオプション・ロングオプションの順で書く。
- コードブロックは、箇条書き等のインデントと合わせる。
- 冒頭のコマンドプロンプト`$`は省略する。
- 1回の実行ごとにコードブロックを分ける。
