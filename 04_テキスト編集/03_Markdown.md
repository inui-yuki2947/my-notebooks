# Markdown

## 文法

### インラインコード

- インラインコードの中にバッククォートを含めたい場合は、囲うバッククォートを増やす。（例``a`a``）
- インラインコードの先頭または末尾がバッククォートである場合は、半角スペースを空ける。（例：`` `aa` ``）

### コードブロック

- （GitHubで）使用可能な言語： [linguist/languages.yml at master · github/linguist](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml)
- 言語を指定しない場合は、`text`または`plaintext`とする。

## markdownlint-cli

### 概要

- [igorshubovych/markdownlint-cli: MarkdownLint Command Line Interface](https://github.com/igorshubovych/markdownlint-cli)
- インストール

  ```bash
  brew install markdownlint-cli
  ```

### CLI

- CLIでは、`markdownlint`コマンドを使う。

  ```bash
  markdownlint [パス]
  ```

- オプション

  |オプション|概要|
  |---|---|
  |`-f, --fix`|違反箇所を自動で修正する。|

### 設定

- `.markdownlint.json`に設定を記述すると、自動で読み込まれる。

## 規約

### CSS

```css
h2 {
  border-top: 2px solid white;
  padding-top: 10px;
}
```

### 見出し

- 見出し1は、ページ名と同じ名前の見出しで、冒頭に一つのみ記述する。
- 見出しは、見出し3まで使う。（それ以上の階層になるときは、見出し自体の分離を考える）

### コードブロック

- コマンドのオプションは、ショートオプション・ロングオプションの順で書く。
- コードブロックは、箇条書き等のインデントと合わせる。
- 冒頭のコマンドプロンプト`$`は省略する。
- 1回の実行ごとにコードブロックを分ける。
