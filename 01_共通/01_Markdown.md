# Markdown

## 文法

### コードブロック

- （GitHubで）使用可能な言語： [linguist/languages.yml at master · github/linguist](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml)
- 言語を指定しない場合は、`text`または`plaintext`とする。

## markdownlint

- インストール

  ```bash
  brew install markdownlint-cli
  ```

- CLIでは、`markdownlint`コマンドを使う。

  ```bash
  markdownlint [パス]
  ```

- `-f, --fix`オプションで、違反箇所を自動で修正する。

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
