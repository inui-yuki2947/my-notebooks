# Others/その他/Markdown

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
