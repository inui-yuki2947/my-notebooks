# その他/GitHub/GitHub CLI

## 共通

### 概要

- GitHubのCLIとして、「GitHub CLI」がある。

### インストール

```bash
brew install gh
gh auth login
```

### ドキュメント

- [gh | GitHub CLI](https://cli.github.com/manual/gh)

### コマンド

| コマンド                   | 概要                         |
| -------------------------- | ---------------------------- |
| `gh コマンド サブコマンド` | GitHubの各種操作を実行する。 |

## pr

### コマンド

| コマンド                               | 概要                     |
| -------------------------------------- | ------------------------ |
| `gh pr list`                           | PRの一覧を表示する。     |
| `gh pr view [番号, URL, ブランチ]`     | PRの詳細を表示する。     |
| `gh pr edit [番号, URL, ブランチ]`     | PRを編集する。           |
| `gh pr checkout [番号, URL, ブランチ]` | PRをチェックアウトする。 |

### オプション

| オプション            | 概要                                                 |
| --------------------- | ---------------------------------------------------- |
| `--json フィールド`   | 指定したフィールドのみを出力する。                   |
| `-q, --jq jq表現`     | `--json`オプションを指定した後で、jq表現を適用する。 |
| `-S, --search クエリ` | クエリを指定する。                                   |

### クエリ

- [Issue およびプルリクエストを検索する - GitHub Docs](https://docs.github.com/ja/search-github/searching-on-github/searching-issues-and-pull-requests)
