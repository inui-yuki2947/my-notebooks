# Git/GitHub/GUI

## アカウント設定

### Emails

| 項目                                           | 概要                                                         |
| ---------------------------------------------- | ------------------------------------------------------------ |
| Keep my email addresses private                | Web上でGit操作をしたときに、<br />メールアドレスとして`<ID><GitHubアカウント名>@users.noreply.github.com`が使用される。 |
| Block command line pushes that expose my email | プライベートなメールアドレスで行ったコミットがプッシュできなくなる。 |

- [【GitHub】コミットメールアドレスをプライベート（非公開）にする【Git】 - AI can fly !!](https://ai-can-fly.hateblo.jp/entry/github-email-private)

### Personal access tokens

- Personal access tokensは、GitHub APIまたはコマンドラインを使用するときに、GitHubへの認証でパスワードの代わりに使用される。
- [個人アクセストークンを使用する - GitHub Docs](https://docs.github.com/ja/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

## リポジトリ設定

### Branches

- Branch protection rules
  
  | 項目                                         | おすすめ設定                                           |
  | -------------------------------------------- | ------------------------------------------------------ |
  | Require a pull request before merging        | Require approvals                                      |
  | Require status checks to pass before merging | Require branches to be up to date before merging       |
  | Include administrators                       | ON（ONにすると、管理者もこのルールを無視できなくなる） |

### Environments

- Environmentsを設定すると、デプロイ時に環境を切り替えることができる。
- [デプロイに環境を使用する - GitHub Docs](https://docs.github.com/ja/actions/deployment/targeting-different-environments/using-environments-for-deployment)

### Deploy keys

- デプロイキーを使用すると、GitHub.com のリポジトリからサーバーにプロジェクトを起動できる。
- [デプロイキーの管理 - GitHub Docs](https://docs.github.com/ja/authentication/connecting-to-github-with-ssh/managing-deploy-keys)

## Issue, PRの検索

### ブランチ名

| 書式              | 概要                                         |
| ----------------- | -------------------------------------------- |
| `head:ブランチ名` | 元のブランチが、指定したブランチである。     |
| `base:ブランチ名` | マージ先ブランチが、指定したブランチである。 |

### 作成日時

| 書式                   | 概要                                   |
| ---------------------- | -------------------------------------- |
| `created:<YYYY-MM-DD` | 作成日時が、指定した日付より前である。 |
| `created:>YYYY-MM-DD` | 作成日時が、指定した日付より後である。 |

### 参考資料

- [Issue およびプルリクエストを検索する - GitHub Docs](https://docs.github.com/ja/search-github/searching-on-github/searching-issues-and-pull-requests)

## CODEOWNERS

### ファイル

| ファイル                                                     | 概要                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `CODEOWNERS`<br />`.github/CODEOWNERS`<br />`docs/CODEOWNERS` | 当リポジトリでPRが開かれた際、<br />自動的に当ファイルに記載のユーザー（グループ）にレビュー依頼がなされる。 |

### 例

```text
# This is a comment.
# Each line is a file pattern followed by one or more owners.

# These owners will be the default owners for everything in
# the repo. Unless a later match takes precedence,
# @global-owner1 and @global-owner2 will be requested for
# review when someone opens a pull request.
*       @global-owner1 @global-owner2

# Order is important; the last matching pattern takes the most
# precedence. When someone opens a pull request that only
# modifies JS files, only @js-owner and not the global
# owner(s) will be requested for a review.
*.js    @js-owner #This is an inline comment.

...
```

### 参考資料

- [コードオーナーについて - GitHub Docs](https://docs.github.com/ja/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners)

## フォーク

- 「フォーク」は、リモートリポジトリを自分のアカウントの**リモートリポジトリ**にコピーすること。

## その他

### マージ方法

- [GithubでのWeb上からのマージの仕方3種とその使いどころ - Qiita](https://qiita.com/ko-he-8/items/94e872f2154829c868df)
