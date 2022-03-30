# その他/文書テキスト形式/markdownlint-cli

## 共通

### 参考資料

- [igorshubovych/markdownlint-cli: MarkdownLint Command Line Interface](https://github.com/igorshubovych/markdownlint-cli)

### インストール

```bash
brew install markdownlint-cli
```

## markdownlint-cli

### コマンド

| コマンド              | 概要                                           |
| --------------------- | ---------------------------------------------- |
| `markdownlint [パス]` | 指定したパスについて、markdownlintを適用する。 |

### オプション

|オプション|概要|
|---|---|
|`-f, --fix`|違反箇所を自動で修正する。|

### 設定

- `.markdownlint.json`に設定を記述すると、自動で読み込まれる。
